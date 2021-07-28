
aha-mont64.elf:     file format elf32-littleriscv


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
  84:	6dd000ef          	jal	ra,f60 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
  88:	00251513          	slli	a0,a0,0x2
  8c:	110007b7          	lui	a5,0x11000
  90:	00a787b3          	add	a5,a5,a0
  94:	00b7a023          	sw	a1,0(a5) # 11000000 <in_a+0x10feffd0>
  98:	00008067          	ret

0000009c <readFromCtrl>:
  9c:	00251513          	slli	a0,a0,0x2
  a0:	110007b7          	lui	a5,0x11000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007a503          	lw	a0,0(a5) # 11000000 <in_a+0x10feffd0>
  ac:	00008067          	ret

000000b0 <setIntr>:
  b0:	110007b7          	lui	a5,0x11000
  b4:	00100713          	li	a4,1
  b8:	08e7a023          	sw	a4,128(a5) # 11000080 <in_a+0x10ff0050>
  bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
  c0:	00008067          	ret

000000c4 <start_trigger>:
  c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <in_a+0xffc0>
  c8:	01c00513          	li	a0,28
  cc:	00112623          	sw	ra,12(sp)
  d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
  d4:	00c12083          	lw	ra,12(sp)
  d8:	000107b7          	lui	a5,0x10
  dc:	41f55713          	srai	a4,a0,0x1f
  e0:	00a7ac23          	sw	a0,24(a5) # 10018 <start_time>
  e4:	00e7ae23          	sw	a4,28(a5)
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
 114:	0187a583          	lw	a1,24(a5) # 10018 <start_time>
 118:	01c7a703          	lw	a4,28(a5)
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

00000150 <mulul64>:
 150:	fd010113          	addi	sp,sp,-48
 154:	01312e23          	sw	s3,28(sp)
 158:	01412c23          	sw	s4,24(sp)
 15c:	00058993          	mv	s3,a1
 160:	00068a13          	mv	s4,a3
 164:	00000593          	li	a1,0
 168:	00000693          	li	a3,0
 16c:	02112623          	sw	ra,44(sp)
 170:	02812423          	sw	s0,40(sp)
 174:	02912223          	sw	s1,36(sp)
 178:	03212023          	sw	s2,32(sp)
 17c:	01512a23          	sw	s5,20(sp)
 180:	01612823          	sw	s6,16(sp)
 184:	01712623          	sw	s7,12(sp)
 188:	00070913          	mv	s2,a4
 18c:	00078a93          	mv	s5,a5
 190:	00050413          	mv	s0,a0
 194:	00060b93          	mv	s7,a2
 198:	515000ef          	jal	ra,eac <__muldi3>
 19c:	00050b13          	mv	s6,a0
 1a0:	000b8613          	mv	a2,s7
 1a4:	00058493          	mv	s1,a1
 1a8:	00000693          	li	a3,0
 1ac:	00098513          	mv	a0,s3
 1b0:	00000593          	li	a1,0
 1b4:	4f9000ef          	jal	ra,eac <__muldi3>
 1b8:	009504b3          	add	s1,a0,s1
 1bc:	00a4b833          	sltu	a6,s1,a0
 1c0:	00058793          	mv	a5,a1
 1c4:	000a0613          	mv	a2,s4
 1c8:	00000693          	li	a3,0
 1cc:	00040513          	mv	a0,s0
 1d0:	00000593          	li	a1,0
 1d4:	00f80433          	add	s0,a6,a5
 1d8:	4d5000ef          	jal	ra,eac <__muldi3>
 1dc:	00950833          	add	a6,a0,s1
 1e0:	00058793          	mv	a5,a1
 1e4:	00a834b3          	sltu	s1,a6,a0
 1e8:	016aa023          	sw	s6,0(s5)
 1ec:	010aa223          	sw	a6,4(s5)
 1f0:	000a0613          	mv	a2,s4
 1f4:	00000693          	li	a3,0
 1f8:	00098513          	mv	a0,s3
 1fc:	00000593          	li	a1,0
 200:	00f484b3          	add	s1,s1,a5
 204:	4a9000ef          	jal	ra,eac <__muldi3>
 208:	008507b3          	add	a5,a0,s0
 20c:	009786b3          	add	a3,a5,s1
 210:	00a7b533          	sltu	a0,a5,a0
 214:	02c12083          	lw	ra,44(sp)
 218:	02812403          	lw	s0,40(sp)
 21c:	00b50533          	add	a0,a0,a1
 220:	00f6b7b3          	sltu	a5,a3,a5
 224:	00a787b3          	add	a5,a5,a0
 228:	00d92023          	sw	a3,0(s2)
 22c:	00f92223          	sw	a5,4(s2)
 230:	02412483          	lw	s1,36(sp)
 234:	02012903          	lw	s2,32(sp)
 238:	01c12983          	lw	s3,28(sp)
 23c:	01812a03          	lw	s4,24(sp)
 240:	01412a83          	lw	s5,20(sp)
 244:	01012b03          	lw	s6,16(sp)
 248:	00c12b83          	lw	s7,12(sp)
 24c:	03010113          	addi	sp,sp,48
 250:	00008067          	ret

00000254 <modul64>:
 254:	ff010113          	addi	sp,sp,-16
 258:	00812623          	sw	s0,12(sp)
 25c:	00000e13          	li	t3,0
 260:	04000293          	li	t0,64
 264:	01f55893          	srli	a7,a0,0x1f
 268:	00159813          	slli	a6,a1,0x1
 26c:	0108e833          	or	a6,a7,a6
 270:	41f5d313          	srai	t1,a1,0x1f
 274:	01f65e93          	srli	t4,a2,0x1f
 278:	01f6df13          	srli	t5,a3,0x1f
 27c:	00169893          	slli	a7,a3,0x1
 280:	00151513          	slli	a0,a0,0x1
 284:	011ee8b3          	or	a7,t4,a7
 288:	00af6533          	or	a0,t5,a0
 28c:	01036eb3          	or	t4,t1,a6
 290:	00080593          	mv	a1,a6
 294:	001e0e13          	addi	t3,t3,1
 298:	00161613          	slli	a2,a2,0x1
 29c:	00a36333          	or	t1,t1,a0
 2a0:	00088693          	mv	a3,a7
 2a4:	02fee863          	bltu	t4,a5,2d4 <modul64+0x80>
 2a8:	40e50fb3          	sub	t6,a0,a4
 2ac:	00160f13          	addi	t5,a2,1
 2b0:	01f53433          	sltu	s0,a0,t6
 2b4:	00cf33b3          	sltu	t2,t5,a2
 2b8:	40f80833          	sub	a6,a6,a5
 2bc:	01d79463          	bne	a5,t4,2c4 <modul64+0x70>
 2c0:	00e36a63          	bltu	t1,a4,2d4 <modul64+0x80>
 2c4:	000f8513          	mv	a0,t6
 2c8:	408805b3          	sub	a1,a6,s0
 2cc:	000f0613          	mv	a2,t5
 2d0:	011386b3          	add	a3,t2,a7
 2d4:	f85e18e3          	bne	t3,t0,264 <modul64+0x10>
 2d8:	00c12403          	lw	s0,12(sp)
 2dc:	01010113          	addi	sp,sp,16
 2e0:	00008067          	ret

000002e4 <montmul>:
 2e4:	fd010113          	addi	sp,sp,-48
 2e8:	01512a23          	sw	s5,20(sp)
 2ec:	01912223          	sw	s9,4(sp)
 2f0:	00058a93          	mv	s5,a1
 2f4:	00068c93          	mv	s9,a3
 2f8:	00000593          	li	a1,0
 2fc:	00000693          	li	a3,0
 300:	02112623          	sw	ra,44(sp)
 304:	02812423          	sw	s0,40(sp)
 308:	02912223          	sw	s1,36(sp)
 30c:	00050413          	mv	s0,a0
 310:	00060493          	mv	s1,a2
 314:	03212023          	sw	s2,32(sp)
 318:	01312e23          	sw	s3,28(sp)
 31c:	00070913          	mv	s2,a4
 320:	01412c23          	sw	s4,24(sp)
 324:	01612823          	sw	s6,16(sp)
 328:	00078a13          	mv	s4,a5
 32c:	01712623          	sw	s7,12(sp)
 330:	01812423          	sw	s8,8(sp)
 334:	00088b93          	mv	s7,a7
 338:	00080c13          	mv	s8,a6
 33c:	01a12023          	sw	s10,0(sp)
 340:	36d000ef          	jal	ra,eac <__muldi3>
 344:	00050993          	mv	s3,a0
 348:	00048613          	mv	a2,s1
 34c:	00058b13          	mv	s6,a1
 350:	00000693          	li	a3,0
 354:	000a8513          	mv	a0,s5
 358:	00000593          	li	a1,0
 35c:	351000ef          	jal	ra,eac <__muldi3>
 360:	01650b33          	add	s6,a0,s6
 364:	00058793          	mv	a5,a1
 368:	00ab34b3          	sltu	s1,s6,a0
 36c:	000c8613          	mv	a2,s9
 370:	00000693          	li	a3,0
 374:	00040513          	mv	a0,s0
 378:	00000593          	li	a1,0
 37c:	00f484b3          	add	s1,s1,a5
 380:	32d000ef          	jal	ra,eac <__muldi3>
 384:	01650b33          	add	s6,a0,s6
 388:	00058793          	mv	a5,a1
 38c:	000c8613          	mv	a2,s9
 390:	00ab3433          	sltu	s0,s6,a0
 394:	00000693          	li	a3,0
 398:	000a8513          	mv	a0,s5
 39c:	00000593          	li	a1,0
 3a0:	00f40433          	add	s0,s0,a5
 3a4:	309000ef          	jal	ra,eac <__muldi3>
 3a8:	00a48ab3          	add	s5,s1,a0
 3ac:	009ab4b3          	sltu	s1,s5,s1
 3b0:	00b484b3          	add	s1,s1,a1
 3b4:	00098613          	mv	a2,s3
 3b8:	000b0693          	mv	a3,s6
 3bc:	000c0513          	mv	a0,s8
 3c0:	000b8593          	mv	a1,s7
 3c4:	2e9000ef          	jal	ra,eac <__muldi3>
 3c8:	00058d13          	mv	s10,a1
 3cc:	008a8433          	add	s0,s5,s0
 3d0:	00090613          	mv	a2,s2
 3d4:	00000693          	li	a3,0
 3d8:	00000593          	li	a1,0
 3dc:	00050c13          	mv	s8,a0
 3e0:	01543ab3          	sltu	s5,s0,s5
 3e4:	2c9000ef          	jal	ra,eac <__muldi3>
 3e8:	00050b93          	mv	s7,a0
 3ec:	009a8ab3          	add	s5,s5,s1
 3f0:	00090613          	mv	a2,s2
 3f4:	00058493          	mv	s1,a1
 3f8:	00000693          	li	a3,0
 3fc:	000d0513          	mv	a0,s10
 400:	00000593          	li	a1,0
 404:	2a9000ef          	jal	ra,eac <__muldi3>
 408:	009504b3          	add	s1,a0,s1
 40c:	00a4b7b3          	sltu	a5,s1,a0
 410:	00058c93          	mv	s9,a1
 414:	000a0613          	mv	a2,s4
 418:	00000693          	li	a3,0
 41c:	000c0513          	mv	a0,s8
 420:	00000593          	li	a1,0
 424:	01978cb3          	add	s9,a5,s9
 428:	01798c33          	add	s8,s3,s7
 42c:	281000ef          	jal	ra,eac <__muldi3>
 430:	00950733          	add	a4,a0,s1
 434:	017c3bb3          	sltu	s7,s8,s7
 438:	00a73833          	sltu	a6,a4,a0
 43c:	00058493          	mv	s1,a1
 440:	016b8bb3          	add	s7,s7,s6
 444:	000a0613          	mv	a2,s4
 448:	00000693          	li	a3,0
 44c:	000d0513          	mv	a0,s10
 450:	00000593          	li	a1,0
 454:	009804b3          	add	s1,a6,s1
 458:	00eb8bb3          	add	s7,s7,a4
 45c:	251000ef          	jal	ra,eac <__muldi3>
 460:	00850733          	add	a4,a0,s0
 464:	019707b3          	add	a5,a4,s9
 468:	00a73533          	sltu	a0,a4,a0
 46c:	015585b3          	add	a1,a1,s5
 470:	00e7b733          	sltu	a4,a5,a4
 474:	00978833          	add	a6,a5,s1
 478:	00b50533          	add	a0,a0,a1
 47c:	00a70733          	add	a4,a4,a0
 480:	00f837b3          	sltu	a5,a6,a5
 484:	00e787b3          	add	a5,a5,a4
 488:	0d6be263          	bltu	s7,s6,54c <montmul+0x268>
 48c:	00080593          	mv	a1,a6
 490:	00078693          	mv	a3,a5
 494:	0b7b0a63          	beq	s6,s7,548 <montmul+0x264>
 498:	00100713          	li	a4,1
 49c:	0156e663          	bltu	a3,s5,4a8 <montmul+0x1c4>
 4a0:	0cda8263          	beq	s5,a3,564 <montmul+0x280>
 4a4:	00000713          	li	a4,0
 4a8:	00100793          	li	a5,1
 4ac:	0946ea63          	bltu	a3,s4,540 <montmul+0x25c>
 4b0:	08da0663          	beq	s4,a3,53c <montmul+0x258>
 4b4:	0085c433          	xor	s0,a1,s0
 4b8:	0156cab3          	xor	s5,a3,s5
 4bc:	01546433          	or	s0,s0,s5
 4c0:	00f76733          	or	a4,a4,a5
 4c4:	00143413          	seqz	s0,s0
 4c8:	00100793          	li	a5,1
 4cc:	016be663          	bltu	s7,s6,4d8 <montmul+0x1f4>
 4d0:	097b0663          	beq	s6,s7,55c <montmul+0x278>
 4d4:	00000793          	li	a5,0
 4d8:	00f47433          	and	s0,s0,a5
 4dc:	00876733          	or	a4,a4,s0
 4e0:	0ff77713          	zext.b	a4,a4
 4e4:	40e00533          	neg	a0,a4
 4e8:	02c12083          	lw	ra,44(sp)
 4ec:	02812403          	lw	s0,40(sp)
 4f0:	00050713          	mv	a4,a0
 4f4:	01257533          	and	a0,a0,s2
 4f8:	40a58533          	sub	a0,a1,a0
 4fc:	014777b3          	and	a5,a4,s4
 500:	00a5b5b3          	sltu	a1,a1,a0
 504:	40f687b3          	sub	a5,a3,a5
 508:	02412483          	lw	s1,36(sp)
 50c:	02012903          	lw	s2,32(sp)
 510:	01c12983          	lw	s3,28(sp)
 514:	01812a03          	lw	s4,24(sp)
 518:	01412a83          	lw	s5,20(sp)
 51c:	01012b03          	lw	s6,16(sp)
 520:	00c12b83          	lw	s7,12(sp)
 524:	00812c03          	lw	s8,8(sp)
 528:	00412c83          	lw	s9,4(sp)
 52c:	00012d03          	lw	s10,0(sp)
 530:	40b785b3          	sub	a1,a5,a1
 534:	03010113          	addi	sp,sp,48
 538:	00008067          	ret
 53c:	f725fce3          	bgeu	a1,s2,4b4 <montmul+0x1d0>
 540:	00000793          	li	a5,0
 544:	f71ff06f          	j	4b4 <montmul+0x1d0>
 548:	f53c78e3          	bgeu	s8,s3,498 <montmul+0x1b4>
 54c:	00180593          	addi	a1,a6,1
 550:	0105b833          	sltu	a6,a1,a6
 554:	00f806b3          	add	a3,a6,a5
 558:	f41ff06f          	j	498 <montmul+0x1b4>
 55c:	f73c6ee3          	bltu	s8,s3,4d8 <montmul+0x1f4>
 560:	f75ff06f          	j	4d4 <montmul+0x1f0>
 564:	f485e2e3          	bltu	a1,s0,4a8 <montmul+0x1c4>
 568:	00000713          	li	a4,0
 56c:	f3dff06f          	j	4a8 <montmul+0x1c4>

00000570 <benchmark_body>:
 570:	f7010113          	addi	sp,sp,-144
 574:	08112623          	sw	ra,140(sp)
 578:	08812423          	sw	s0,136(sp)
 57c:	08912223          	sw	s1,132(sp)
 580:	09212023          	sw	s2,128(sp)
 584:	07312e23          	sw	s3,124(sp)
 588:	07412c23          	sw	s4,120(sp)
 58c:	07512a23          	sw	s5,116(sp)
 590:	07612823          	sw	s6,112(sp)
 594:	07712623          	sw	s7,108(sp)
 598:	07812423          	sw	s8,104(sp)
 59c:	07912223          	sw	s9,100(sp)
 5a0:	07a12023          	sw	s10,96(sp)
 5a4:	05b12e23          	sw	s11,92(sp)
 5a8:	00a12e23          	sw	a0,28(sp)
 5ac:	72a05463          	blez	a0,cd4 <benchmark_body+0x764>
 5b0:	00010737          	lui	a4,0x10
 5b4:	000107b7          	lui	a5,0x10
 5b8:	02872483          	lw	s1,40(a4) # 10028 <in_b>
 5bc:	0307aa03          	lw	s4,48(a5) # 10030 <in_a>
 5c0:	02c72b03          	lw	s6,44(a4)
 5c4:	0347aa83          	lw	s5,52(a5)
 5c8:	00048613          	mv	a2,s1
 5cc:	000107b7          	lui	a5,0x10
 5d0:	00000693          	li	a3,0
 5d4:	000a0513          	mv	a0,s4
 5d8:	00000593          	li	a1,0
 5dc:	0207ad83          	lw	s11,32(a5) # 10020 <in_m>
 5e0:	0247a403          	lw	s0,36(a5)
 5e4:	02912223          	sw	s1,36(sp)
 5e8:	03412623          	sw	s4,44(sp)
 5ec:	03512823          	sw	s5,48(sp)
 5f0:	03612423          	sw	s6,40(sp)
 5f4:	0b9000ef          	jal	ra,eac <__muldi3>
 5f8:	00050993          	mv	s3,a0
 5fc:	00048613          	mv	a2,s1
 600:	00058913          	mv	s2,a1
 604:	00000693          	li	a3,0
 608:	000a8513          	mv	a0,s5
 60c:	00000593          	li	a1,0
 610:	09d000ef          	jal	ra,eac <__muldi3>
 614:	01250933          	add	s2,a0,s2
 618:	00a937b3          	sltu	a5,s2,a0
 61c:	00058493          	mv	s1,a1
 620:	000b0613          	mv	a2,s6
 624:	00000693          	li	a3,0
 628:	000a0513          	mv	a0,s4
 62c:	00000593          	li	a1,0
 630:	009784b3          	add	s1,a5,s1
 634:	079000ef          	jal	ra,eac <__muldi3>
 638:	01250733          	add	a4,a0,s2
 63c:	00a737b3          	sltu	a5,a4,a0
 640:	00058913          	mv	s2,a1
 644:	000b0613          	mv	a2,s6
 648:	00000693          	li	a3,0
 64c:	000a8513          	mv	a0,s5
 650:	00000593          	li	a1,0
 654:	01278933          	add	s2,a5,s2
 658:	02e12c23          	sw	a4,56(sp)
 65c:	051000ef          	jal	ra,eac <__muldi3>
 660:	00a487b3          	add	a5,s1,a0
 664:	0097b4b3          	sltu	s1,a5,s1
 668:	01278733          	add	a4,a5,s2
 66c:	00b484b3          	add	s1,s1,a1
 670:	00f737b3          	sltu	a5,a4,a5
 674:	009787b3          	add	a5,a5,s1
 678:	03312a23          	sw	s3,52(sp)
 67c:	02e12e23          	sw	a4,60(sp)
 680:	02f12023          	sw	a5,32(sp)
 684:	00000d13          	li	s10,0
 688:	04000993          	li	s3,64
 68c:	80000cb7          	lui	s9,0x80000
 690:	03412703          	lw	a4,52(sp)
 694:	03812583          	lw	a1,56(sp)
 698:	03c12483          	lw	s1,60(sp)
 69c:	02012903          	lw	s2,32(sp)
 6a0:	00000513          	li	a0,0
 6a4:	01f4d693          	srli	a3,s1,0x1f
 6a8:	00191793          	slli	a5,s2,0x1
 6ac:	00f6e7b3          	or	a5,a3,a5
 6b0:	41f95613          	srai	a2,s2,0x1f
 6b4:	01f75813          	srli	a6,a4,0x1f
 6b8:	01f5d893          	srli	a7,a1,0x1f
 6bc:	00159693          	slli	a3,a1,0x1
 6c0:	00149493          	slli	s1,s1,0x1
 6c4:	00d866b3          	or	a3,a6,a3
 6c8:	0098e4b3          	or	s1,a7,s1
 6cc:	00f66833          	or	a6,a2,a5
 6d0:	00078913          	mv	s2,a5
 6d4:	00150513          	addi	a0,a0,1
 6d8:	00171713          	slli	a4,a4,0x1
 6dc:	00966633          	or	a2,a2,s1
 6e0:	00068593          	mv	a1,a3
 6e4:	02886863          	bltu	a6,s0,714 <benchmark_body+0x1a4>
 6e8:	41b48333          	sub	t1,s1,s11
 6ec:	00170893          	addi	a7,a4,1
 6f0:	0064beb3          	sltu	t4,s1,t1
 6f4:	00e8be33          	sltu	t3,a7,a4
 6f8:	408787b3          	sub	a5,a5,s0
 6fc:	01041463          	bne	s0,a6,704 <benchmark_body+0x194>
 700:	01b66a63          	bltu	a2,s11,714 <benchmark_body+0x1a4>
 704:	00030493          	mv	s1,t1
 708:	41d78933          	sub	s2,a5,t4
 70c:	00088713          	mv	a4,a7
 710:	00de05b3          	add	a1,t3,a3
 714:	f93518e3          	bne	a0,s3,6a4 <benchmark_body+0x134>
 718:	00048613          	mv	a2,s1
 71c:	00000693          	li	a3,0
 720:	00048513          	mv	a0,s1
 724:	00000593          	li	a1,0
 728:	784000ef          	jal	ra,eac <__muldi3>
 72c:	00058793          	mv	a5,a1
 730:	00048613          	mv	a2,s1
 734:	00050a93          	mv	s5,a0
 738:	00000693          	li	a3,0
 73c:	00090513          	mv	a0,s2
 740:	00000593          	li	a1,0
 744:	00078493          	mv	s1,a5
 748:	764000ef          	jal	ra,eac <__muldi3>
 74c:	00a487b3          	add	a5,s1,a0
 750:	00a78a33          	add	s4,a5,a0
 754:	00058813          	mv	a6,a1
 758:	00aa3733          	sltu	a4,s4,a0
 75c:	0097b7b3          	sltu	a5,a5,s1
 760:	00090613          	mv	a2,s2
 764:	00090513          	mv	a0,s2
 768:	00000693          	li	a3,0
 76c:	00000593          	li	a1,0
 770:	01070933          	add	s2,a4,a6
 774:	010784b3          	add	s1,a5,a6
 778:	734000ef          	jal	ra,eac <__muldi3>
 77c:	009507b3          	add	a5,a0,s1
 780:	00a7b733          	sltu	a4,a5,a0
 784:	012784b3          	add	s1,a5,s2
 788:	00b70733          	add	a4,a4,a1
 78c:	00f4b7b3          	sltu	a5,s1,a5
 790:	000a8513          	mv	a0,s5
 794:	00e78933          	add	s2,a5,a4
 798:	00000613          	li	a2,0
 79c:	01f4d713          	srli	a4,s1,0x1f
 7a0:	00191793          	slli	a5,s2,0x1
 7a4:	00f767b3          	or	a5,a4,a5
 7a8:	41f95693          	srai	a3,s2,0x1f
 7ac:	01f55593          	srli	a1,a0,0x1f
 7b0:	01fa5813          	srli	a6,s4,0x1f
 7b4:	001a1713          	slli	a4,s4,0x1
 7b8:	00149493          	slli	s1,s1,0x1
 7bc:	00e5e733          	or	a4,a1,a4
 7c0:	009864b3          	or	s1,a6,s1
 7c4:	00f6e5b3          	or	a1,a3,a5
 7c8:	00078913          	mv	s2,a5
 7cc:	00160613          	addi	a2,a2,1
 7d0:	00151513          	slli	a0,a0,0x1
 7d4:	0096e6b3          	or	a3,a3,s1
 7d8:	00070a13          	mv	s4,a4
 7dc:	0285e863          	bltu	a1,s0,80c <benchmark_body+0x29c>
 7e0:	41b488b3          	sub	a7,s1,s11
 7e4:	00150813          	addi	a6,a0,1
 7e8:	0114be33          	sltu	t3,s1,a7
 7ec:	00a83333          	sltu	t1,a6,a0
 7f0:	408787b3          	sub	a5,a5,s0
 7f4:	00b41463          	bne	s0,a1,7fc <benchmark_body+0x28c>
 7f8:	01b6ea63          	bltu	a3,s11,80c <benchmark_body+0x29c>
 7fc:	00088493          	mv	s1,a7
 800:	41c78933          	sub	s2,a5,t3
 804:	00080513          	mv	a0,a6
 808:	00e30a33          	add	s4,t1,a4
 80c:	f93618e3          	bne	a2,s3,79c <benchmark_body+0x22c>
 810:	00048613          	mv	a2,s1
 814:	00000693          	li	a3,0
 818:	00048513          	mv	a0,s1
 81c:	00000593          	li	a1,0
 820:	68c000ef          	jal	ra,eac <__muldi3>
 824:	00058793          	mv	a5,a1
 828:	00048613          	mv	a2,s1
 82c:	00050a93          	mv	s5,a0
 830:	00000693          	li	a3,0
 834:	00090513          	mv	a0,s2
 838:	00000593          	li	a1,0
 83c:	00078493          	mv	s1,a5
 840:	66c000ef          	jal	ra,eac <__muldi3>
 844:	009507b3          	add	a5,a0,s1
 848:	00a78a33          	add	s4,a5,a0
 84c:	00058813          	mv	a6,a1
 850:	00aa3733          	sltu	a4,s4,a0
 854:	0097b7b3          	sltu	a5,a5,s1
 858:	00090613          	mv	a2,s2
 85c:	00090513          	mv	a0,s2
 860:	00000693          	li	a3,0
 864:	00000593          	li	a1,0
 868:	01070933          	add	s2,a4,a6
 86c:	010784b3          	add	s1,a5,a6
 870:	63c000ef          	jal	ra,eac <__muldi3>
 874:	009507b3          	add	a5,a0,s1
 878:	00a7b533          	sltu	a0,a5,a0
 87c:	012784b3          	add	s1,a5,s2
 880:	00b50733          	add	a4,a0,a1
 884:	00f4b7b3          	sltu	a5,s1,a5
 888:	000a8513          	mv	a0,s5
 88c:	00e78c33          	add	s8,a5,a4
 890:	00000913          	li	s2,0
 894:	01f4d713          	srli	a4,s1,0x1f
 898:	001c1793          	slli	a5,s8,0x1
 89c:	00f767b3          	or	a5,a4,a5
 8a0:	41fc5693          	srai	a3,s8,0x1f
 8a4:	01f55613          	srli	a2,a0,0x1f
 8a8:	01fa5593          	srli	a1,s4,0x1f
 8ac:	001a1713          	slli	a4,s4,0x1
 8b0:	00149493          	slli	s1,s1,0x1
 8b4:	00e66733          	or	a4,a2,a4
 8b8:	0095e4b3          	or	s1,a1,s1
 8bc:	00f6e633          	or	a2,a3,a5
 8c0:	00078c13          	mv	s8,a5
 8c4:	00190913          	addi	s2,s2,1
 8c8:	00151513          	slli	a0,a0,0x1
 8cc:	0096e6b3          	or	a3,a3,s1
 8d0:	00070a13          	mv	s4,a4
 8d4:	02866863          	bltu	a2,s0,904 <benchmark_body+0x394>
 8d8:	41b48833          	sub	a6,s1,s11
 8dc:	00150593          	addi	a1,a0,1
 8e0:	0104b333          	sltu	t1,s1,a6
 8e4:	00a5b8b3          	sltu	a7,a1,a0
 8e8:	408787b3          	sub	a5,a5,s0
 8ec:	00c41463          	bne	s0,a2,8f4 <benchmark_body+0x384>
 8f0:	01b6ea63          	bltu	a3,s11,904 <benchmark_body+0x394>
 8f4:	00080493          	mv	s1,a6
 8f8:	40678c33          	sub	s8,a5,t1
 8fc:	00058513          	mv	a0,a1
 900:	00e88a33          	add	s4,a7,a4
 904:	f93918e3          	bne	s2,s3,894 <benchmark_body+0x324>
 908:	00000613          	li	a2,0
 90c:	00000693          	li	a3,0
 910:	00100713          	li	a4,1
 914:	00000793          	li	a5,0
 918:	0140006f          	j	92c <benchmark_body+0x3bc>
 91c:	fff90913          	addi	s2,s2,-1
 920:	01efe733          	or	a4,t6,t5
 924:	000e8793          	mv	a5,t4
 928:	06090863          	beqz	s2,998 <benchmark_body+0x428>
 92c:	00f44533          	xor	a0,s0,a5
 930:	00edc5b3          	xor	a1,s11,a4
 934:	01f51813          	slli	a6,a0,0x1f
 938:	0015d593          	srli	a1,a1,0x1
 93c:	00b865b3          	or	a1,a6,a1
 940:	00edf833          	and	a6,s11,a4
 944:	01f69f13          	slli	t5,a3,0x1f
 948:	0016d313          	srli	t1,a3,0x1
 94c:	00165e93          	srli	t4,a2,0x1
 950:	00f47e33          	and	t3,s0,a5
 954:	01058833          	add	a6,a1,a6
 958:	00155513          	srli	a0,a0,0x1
 95c:	00177893          	andi	a7,a4,1
 960:	01df6633          	or	a2,t5,t4
 964:	00030693          	mv	a3,t1
 968:	0017de93          	srli	t4,a5,0x1
 96c:	01f79f93          	slli	t6,a5,0x1f
 970:	00175f13          	srli	t5,a4,0x1
 974:	00b835b3          	sltu	a1,a6,a1
 978:	01c50533          	add	a0,a0,t3
 97c:	01930333          	add	t1,t1,s9
 980:	f8088ee3          	beqz	a7,91c <benchmark_body+0x3ac>
 984:	fff90913          	addi	s2,s2,-1
 988:	00080713          	mv	a4,a6
 98c:	00a587b3          	add	a5,a1,a0
 990:	00030693          	mv	a3,t1
 994:	f8091ce3          	bnez	s2,92c <benchmark_body+0x3bc>
 998:	04e12023          	sw	a4,64(sp)
 99c:	04f12223          	sw	a5,68(sp)
 9a0:	04c12423          	sw	a2,72(sp)
 9a4:	04d12623          	sw	a3,76(sp)
 9a8:	04012703          	lw	a4,64(sp)
 9ac:	04412783          	lw	a5,68(sp)
 9b0:	04812783          	lw	a5,72(sp)
 9b4:	04c12803          	lw	a6,76(sp)
 9b8:	02c12503          	lw	a0,44(sp)
 9bc:	03012583          	lw	a1,48(sp)
 9c0:	01012a23          	sw	a6,20(sp)
 9c4:	00f12823          	sw	a5,16(sp)
 9c8:	00000893          	li	a7,0
 9cc:	00000713          	li	a4,0
 9d0:	00000813          	li	a6,0
 9d4:	01f55693          	srli	a3,a0,0x1f
 9d8:	00159793          	slli	a5,a1,0x1
 9dc:	00f6e7b3          	or	a5,a3,a5
 9e0:	41f5d613          	srai	a2,a1,0x1f
 9e4:	01f75313          	srli	t1,a4,0x1f
 9e8:	01f85e13          	srli	t3,a6,0x1f
 9ec:	00181693          	slli	a3,a6,0x1
 9f0:	00151513          	slli	a0,a0,0x1
 9f4:	00d366b3          	or	a3,t1,a3
 9f8:	00ae6533          	or	a0,t3,a0
 9fc:	00f66333          	or	t1,a2,a5
 a00:	00078593          	mv	a1,a5
 a04:	00188893          	addi	a7,a7,1
 a08:	00171713          	slli	a4,a4,0x1
 a0c:	00a66633          	or	a2,a2,a0
 a10:	00068813          	mv	a6,a3
 a14:	02836863          	bltu	t1,s0,a44 <benchmark_body+0x4d4>
 a18:	41b50eb3          	sub	t4,a0,s11
 a1c:	00170e13          	addi	t3,a4,1
 a20:	01d53fb3          	sltu	t6,a0,t4
 a24:	00ee3f33          	sltu	t5,t3,a4
 a28:	408787b3          	sub	a5,a5,s0
 a2c:	00641463          	bne	s0,t1,a34 <benchmark_body+0x4c4>
 a30:	01b66a63          	bltu	a2,s11,a44 <benchmark_body+0x4d4>
 a34:	000e8513          	mv	a0,t4
 a38:	41f785b3          	sub	a1,a5,t6
 a3c:	000e0713          	mv	a4,t3
 a40:	00df0833          	add	a6,t5,a3
 a44:	f93898e3          	bne	a7,s3,9d4 <benchmark_body+0x464>
 a48:	02412603          	lw	a2,36(sp)
 a4c:	02812683          	lw	a3,40(sp)
 a50:	00000e13          	li	t3,0
 a54:	00000713          	li	a4,0
 a58:	00000313          	li	t1,0
 a5c:	01f65813          	srli	a6,a2,0x1f
 a60:	00169793          	slli	a5,a3,0x1
 a64:	00f867b3          	or	a5,a6,a5
 a68:	41f6d893          	srai	a7,a3,0x1f
 a6c:	01f75e93          	srli	t4,a4,0x1f
 a70:	01f35f13          	srli	t5,t1,0x1f
 a74:	00131813          	slli	a6,t1,0x1
 a78:	00161613          	slli	a2,a2,0x1
 a7c:	010ee833          	or	a6,t4,a6
 a80:	00cf6633          	or	a2,t5,a2
 a84:	00f8eeb3          	or	t4,a7,a5
 a88:	00078693          	mv	a3,a5
 a8c:	001e0e13          	addi	t3,t3,1
 a90:	00171713          	slli	a4,a4,0x1
 a94:	00c8e8b3          	or	a7,a7,a2
 a98:	00080313          	mv	t1,a6
 a9c:	028ee863          	bltu	t4,s0,acc <benchmark_body+0x55c>
 aa0:	41b60fb3          	sub	t6,a2,s11
 aa4:	00170f13          	addi	t5,a4,1
 aa8:	01f633b3          	sltu	t2,a2,t6
 aac:	00ef32b3          	sltu	t0,t5,a4
 ab0:	408787b3          	sub	a5,a5,s0
 ab4:	01d41463          	bne	s0,t4,abc <benchmark_body+0x54c>
 ab8:	01b8ea63          	bltu	a7,s11,acc <benchmark_body+0x55c>
 abc:	000f8613          	mv	a2,t6
 ac0:	407786b3          	sub	a3,a5,t2
 ac4:	000f0713          	mv	a4,t5
 ac8:	01028333          	add	t1,t0,a6
 acc:	f93e18e3          	bne	t3,s3,a5c <benchmark_body+0x4ec>
 ad0:	04812803          	lw	a6,72(sp)
 ad4:	04c12883          	lw	a7,76(sp)
 ad8:	000d8713          	mv	a4,s11
 adc:	00040793          	mv	a5,s0
 ae0:	805ff0ef          	jal	ra,2e4 <montmul>
 ae4:	04812803          	lw	a6,72(sp)
 ae8:	04c12883          	lw	a7,76(sp)
 aec:	00050613          	mv	a2,a0
 af0:	00058693          	mv	a3,a1
 af4:	000d8713          	mv	a4,s11
 af8:	00040793          	mv	a5,s0
 afc:	fe8ff0ef          	jal	ra,2e4 <montmul>
 b00:	04812803          	lw	a6,72(sp)
 b04:	04c12883          	lw	a7,76(sp)
 b08:	000d8713          	mv	a4,s11
 b0c:	00050613          	mv	a2,a0
 b10:	00058693          	mv	a3,a1
 b14:	00040793          	mv	a5,s0
 b18:	fccff0ef          	jal	ra,2e4 <montmul>
 b1c:	04012a03          	lw	s4,64(sp)
 b20:	00050793          	mv	a5,a0
 b24:	00058b13          	mv	s6,a1
 b28:	000a0613          	mv	a2,s4
 b2c:	04412a83          	lw	s5,68(sp)
 b30:	00000693          	li	a3,0
 b34:	00000593          	li	a1,0
 b38:	00f12c23          	sw	a5,24(sp)
 b3c:	370000ef          	jal	ra,eac <__muldi3>
 b40:	00050893          	mv	a7,a0
 b44:	00058713          	mv	a4,a1
 b48:	000a0613          	mv	a2,s4
 b4c:	00000693          	li	a3,0
 b50:	000b0513          	mv	a0,s6
 b54:	00000593          	li	a1,0
 b58:	01112623          	sw	a7,12(sp)
 b5c:	01412023          	sw	s4,0(sp)
 b60:	01512223          	sw	s5,4(sp)
 b64:	00070a13          	mv	s4,a4
 b68:	344000ef          	jal	ra,eac <__muldi3>
 b6c:	01812783          	lw	a5,24(sp)
 b70:	00412603          	lw	a2,4(sp)
 b74:	01450a33          	add	s4,a0,s4
 b78:	00aa3733          	sltu	a4,s4,a0
 b7c:	00058b93          	mv	s7,a1
 b80:	00000693          	li	a3,0
 b84:	00078513          	mv	a0,a5
 b88:	00000593          	li	a1,0
 b8c:	01770bb3          	add	s7,a4,s7
 b90:	31c000ef          	jal	ra,eac <__muldi3>
 b94:	00412603          	lw	a2,4(sp)
 b98:	01450a33          	add	s4,a0,s4
 b9c:	00aa37b3          	sltu	a5,s4,a0
 ba0:	00058313          	mv	t1,a1
 ba4:	00000693          	li	a3,0
 ba8:	000b0513          	mv	a0,s6
 bac:	00000593          	li	a1,0
 bb0:	00678ab3          	add	s5,a5,t1
 bb4:	2f8000ef          	jal	ra,eac <__muldi3>
 bb8:	00ab86b3          	add	a3,s7,a0
 bbc:	00c12803          	lw	a6,12(sp)
 bc0:	0176b733          	sltu	a4,a3,s7
 bc4:	015687b3          	add	a5,a3,s5
 bc8:	00b70733          	add	a4,a4,a1
 bcc:	00d7b6b3          	sltu	a3,a5,a3
 bd0:	00080513          	mv	a0,a6
 bd4:	00e686b3          	add	a3,a3,a4
 bd8:	01f7d613          	srli	a2,a5,0x1f
 bdc:	00169713          	slli	a4,a3,0x1
 be0:	00e66733          	or	a4,a2,a4
 be4:	41f6d593          	srai	a1,a3,0x1f
 be8:	01f55813          	srli	a6,a0,0x1f
 bec:	01fa5893          	srli	a7,s4,0x1f
 bf0:	001a1613          	slli	a2,s4,0x1
 bf4:	00179793          	slli	a5,a5,0x1
 bf8:	00c86633          	or	a2,a6,a2
 bfc:	00f8e7b3          	or	a5,a7,a5
 c00:	00e5e833          	or	a6,a1,a4
 c04:	00070693          	mv	a3,a4
 c08:	00190913          	addi	s2,s2,1
 c0c:	00151513          	slli	a0,a0,0x1
 c10:	00f5e5b3          	or	a1,a1,a5
 c14:	00060a13          	mv	s4,a2
 c18:	02886863          	bltu	a6,s0,c48 <benchmark_body+0x6d8>
 c1c:	41b78333          	sub	t1,a5,s11
 c20:	00150893          	addi	a7,a0,1
 c24:	0067beb3          	sltu	t4,a5,t1
 c28:	00a8be33          	sltu	t3,a7,a0
 c2c:	40870733          	sub	a4,a4,s0
 c30:	01041463          	bne	s0,a6,c38 <benchmark_body+0x6c8>
 c34:	01b5ea63          	bltu	a1,s11,c48 <benchmark_body+0x6d8>
 c38:	00030793          	mv	a5,t1
 c3c:	41d706b3          	sub	a3,a4,t4
 c40:	00088513          	mv	a0,a7
 c44:	00ce0a33          	add	s4,t3,a2
 c48:	f93918e3          	bne	s2,s3,bd8 <benchmark_body+0x668>
 c4c:	04f48863          	beq	s1,a5,c9c <benchmark_body+0x72c>
 c50:	00100513          	li	a0,1
 c54:	01c12783          	lw	a5,28(sp)
 c58:	001d0d13          	addi	s10,s10,1
 c5c:	a3a79ae3          	bne	a5,s10,690 <benchmark_body+0x120>
 c60:	08c12083          	lw	ra,140(sp)
 c64:	08812403          	lw	s0,136(sp)
 c68:	08412483          	lw	s1,132(sp)
 c6c:	08012903          	lw	s2,128(sp)
 c70:	07c12983          	lw	s3,124(sp)
 c74:	07812a03          	lw	s4,120(sp)
 c78:	07412a83          	lw	s5,116(sp)
 c7c:	07012b03          	lw	s6,112(sp)
 c80:	06c12b83          	lw	s7,108(sp)
 c84:	06812c03          	lw	s8,104(sp)
 c88:	06412c83          	lw	s9,100(sp)
 c8c:	06012d03          	lw	s10,96(sp)
 c90:	05c12d83          	lw	s11,92(sp)
 c94:	09010113          	addi	sp,sp,144
 c98:	00008067          	ret
 c9c:	fadc1ae3          	bne	s8,a3,c50 <benchmark_body+0x6e0>
 ca0:	01012503          	lw	a0,16(sp)
 ca4:	01412583          	lw	a1,20(sp)
 ca8:	000d8613          	mv	a2,s11
 cac:	00040693          	mv	a3,s0
 cb0:	1fc000ef          	jal	ra,eac <__muldi3>
 cb4:	40a007b3          	neg	a5,a0
 cb8:	40b00733          	neg	a4,a1
 cbc:	00a03533          	snez	a0,a0
 cc0:	40a70733          	sub	a4,a4,a0
 cc4:	0017c513          	xori	a0,a5,1
 cc8:	00e56533          	or	a0,a0,a4
 ccc:	00a03533          	snez	a0,a0
 cd0:	f85ff06f          	j	c54 <benchmark_body+0x6e4>
 cd4:	00000513          	li	a0,0
 cd8:	f89ff06f          	j	c60 <benchmark_body+0x6f0>

00000cdc <xbinGCD>:
 cdc:	00b56833          	or	a6,a0,a1
 ce0:	12080263          	beqz	a6,e04 <xbinGCD+0x128>
 ce4:	fd010113          	addi	sp,sp,-48
 ce8:	02812623          	sw	s0,44(sp)
 cec:	02912423          	sw	s1,40(sp)
 cf0:	03212223          	sw	s2,36(sp)
 cf4:	03312023          	sw	s3,32(sp)
 cf8:	01412e23          	sw	s4,28(sp)
 cfc:	01512c23          	sw	s5,24(sp)
 d00:	01612a23          	sw	s6,20(sp)
 d04:	01712823          	sw	s7,16(sp)
 d08:	01812623          	sw	s8,12(sp)
 d0c:	00050413          	mv	s0,a0
 d10:	00058493          	mv	s1,a1
 d14:	00000313          	li	t1,0
 d18:	00000393          	li	t2,0
 d1c:	00100813          	li	a6,1
 d20:	00000893          	li	a7,0
 d24:	0140006f          	j	d38 <xbinGCD+0x5c>
 d28:	01e9ee33          	or	t3,s3,t5
 d2c:	016be833          	or	a6,s7,s6
 d30:	000a8893          	mv	a7,s5
 d34:	080e0a63          	beqz	t3,dc8 <xbinGCD+0xec>
 d38:	0116ceb3          	xor	t4,a3,a7
 d3c:	01064e33          	xor	t3,a2,a6
 d40:	01fe9f13          	slli	t5,t4,0x1f
 d44:	001e5e13          	srli	t3,t3,0x1
 d48:	01cf6e33          	or	t3,t5,t3
 d4c:	00145993          	srli	s3,s0,0x1
 d50:	01f49f13          	slli	t5,s1,0x1f
 d54:	01f39913          	slli	s2,t2,0x1f
 d58:	01067fb3          	and	t6,a2,a6
 d5c:	013f69b3          	or	s3,t5,s3
 d60:	0014df13          	srli	t5,s1,0x1
 d64:	00135493          	srli	s1,t1,0x1
 d68:	00996333          	or	t1,s2,s1
 d6c:	01fe0a33          	add	s4,t3,t6
 d70:	0013df93          	srli	t6,t2,0x1
 d74:	0116f433          	and	s0,a3,a7
 d78:	000f8393          	mv	t2,t6
 d7c:	001ede93          	srli	t4,t4,0x1
 d80:	00a30fb3          	add	t6,t1,a0
 d84:	00187293          	andi	t0,a6,1
 d88:	008e8eb3          	add	t4,t4,s0
 d8c:	0018da93          	srli	s5,a7,0x1
 d90:	01f89b93          	slli	s7,a7,0x1f
 d94:	00185b13          	srli	s6,a6,0x1
 d98:	01ca3e33          	sltu	t3,s4,t3
 d9c:	006fbc33          	sltu	s8,t6,t1
 da0:	00b38933          	add	s2,t2,a1
 da4:	00098413          	mv	s0,s3
 da8:	000f0493          	mv	s1,t5
 dac:	f6028ee3          	beqz	t0,d28 <xbinGCD+0x4c>
 db0:	01de08b3          	add	a7,t3,t4
 db4:	01e9ee33          	or	t3,s3,t5
 db8:	000a0813          	mv	a6,s4
 dbc:	000f8313          	mv	t1,t6
 dc0:	012c03b3          	add	t2,s8,s2
 dc4:	f60e1ae3          	bnez	t3,d38 <xbinGCD+0x5c>
 dc8:	01072023          	sw	a6,0(a4)
 dcc:	01172223          	sw	a7,4(a4)
 dd0:	02c12403          	lw	s0,44(sp)
 dd4:	0067a023          	sw	t1,0(a5)
 dd8:	0077a223          	sw	t2,4(a5)
 ddc:	02812483          	lw	s1,40(sp)
 de0:	02412903          	lw	s2,36(sp)
 de4:	02012983          	lw	s3,32(sp)
 de8:	01c12a03          	lw	s4,28(sp)
 dec:	01812a83          	lw	s5,24(sp)
 df0:	01412b03          	lw	s6,20(sp)
 df4:	01012b83          	lw	s7,16(sp)
 df8:	00c12c03          	lw	s8,12(sp)
 dfc:	03010113          	addi	sp,sp,48
 e00:	00008067          	ret
 e04:	00100813          	li	a6,1
 e08:	01072023          	sw	a6,0(a4)
 e0c:	00000893          	li	a7,0
 e10:	01172223          	sw	a7,4(a4)
 e14:	00a7a023          	sw	a0,0(a5)
 e18:	00b7a223          	sw	a1,4(a5)
 e1c:	00008067          	ret

00000e20 <warm_caches>:
 e20:	ff010113          	addi	sp,sp,-16
 e24:	00112623          	sw	ra,12(sp)
 e28:	f48ff0ef          	jal	ra,570 <benchmark_body>
 e2c:	00c12083          	lw	ra,12(sp)
 e30:	01010113          	addi	sp,sp,16
 e34:	00008067          	ret

00000e38 <benchmark>:
 e38:	00008537          	lui	a0,0x8
 e3c:	ff010113          	addi	sp,sp,-16
 e40:	b7050513          	addi	a0,a0,-1168 # 7b70 <main+0x6c10>
 e44:	00112623          	sw	ra,12(sp)
 e48:	f28ff0ef          	jal	ra,570 <benchmark_body>
 e4c:	00c12083          	lw	ra,12(sp)
 e50:	01010113          	addi	sp,sp,16
 e54:	00008067          	ret

00000e58 <initialise_benchmark>:
 e58:	00010637          	lui	a2,0x10
 e5c:	00062503          	lw	a0,0(a2) # 10000 <main+0xf0a0>
 e60:	00462583          	lw	a1,4(a2)
 e64:	000106b7          	lui	a3,0x10
 e68:	0086a603          	lw	a2,8(a3) # 10008 <main+0xf0a8>
 e6c:	00c6a683          	lw	a3,12(a3)
 e70:	000107b7          	lui	a5,0x10
 e74:	00010737          	lui	a4,0x10
 e78:	02a7a023          	sw	a0,32(a5) # 10020 <in_m>
 e7c:	02b7a223          	sw	a1,36(a5)
 e80:	000107b7          	lui	a5,0x10
 e84:	02c7a423          	sw	a2,40(a5) # 10028 <in_b>
 e88:	02d7a623          	sw	a3,44(a5)
 e8c:	01072603          	lw	a2,16(a4) # 10010 <main+0xf0b0>
 e90:	01472683          	lw	a3,20(a4)
 e94:	000107b7          	lui	a5,0x10
 e98:	02c7a823          	sw	a2,48(a5) # 10030 <in_a>
 e9c:	02d7aa23          	sw	a3,52(a5)
 ea0:	00008067          	ret

00000ea4 <verify_benchmark>:
 ea4:	00153513          	seqz	a0,a0
 ea8:	00008067          	ret

00000eac <__muldi3>:
 eac:	00050313          	mv	t1,a0
 eb0:	ff010113          	addi	sp,sp,-16
 eb4:	00060513          	mv	a0,a2
 eb8:	00068893          	mv	a7,a3
 ebc:	00112623          	sw	ra,12(sp)
 ec0:	00030613          	mv	a2,t1
 ec4:	00050693          	mv	a3,a0
 ec8:	00000713          	li	a4,0
 ecc:	00000793          	li	a5,0
 ed0:	00000813          	li	a6,0
 ed4:	0016fe13          	andi	t3,a3,1
 ed8:	00171e93          	slli	t4,a4,0x1
 edc:	000e0c63          	beqz	t3,ef4 <__muldi3+0x48>
 ee0:	01060e33          	add	t3,a2,a6
 ee4:	010e3833          	sltu	a6,t3,a6
 ee8:	00e787b3          	add	a5,a5,a4
 eec:	00f807b3          	add	a5,a6,a5
 ef0:	000e0813          	mv	a6,t3
 ef4:	01f65713          	srli	a4,a2,0x1f
 ef8:	0016d693          	srli	a3,a3,0x1
 efc:	00eee733          	or	a4,t4,a4
 f00:	00161613          	slli	a2,a2,0x1
 f04:	fc0698e3          	bnez	a3,ed4 <__muldi3+0x28>
 f08:	00058663          	beqz	a1,f14 <__muldi3+0x68>
 f0c:	030000ef          	jal	ra,f3c <__mulsi3>
 f10:	00a787b3          	add	a5,a5,a0
 f14:	00088a63          	beqz	a7,f28 <__muldi3+0x7c>
 f18:	00030513          	mv	a0,t1
 f1c:	00088593          	mv	a1,a7
 f20:	01c000ef          	jal	ra,f3c <__mulsi3>
 f24:	00f507b3          	add	a5,a0,a5
 f28:	00c12083          	lw	ra,12(sp)
 f2c:	00080513          	mv	a0,a6
 f30:	00078593          	mv	a1,a5
 f34:	01010113          	addi	sp,sp,16
 f38:	00008067          	ret

00000f3c <__mulsi3>:
 f3c:	00050613          	mv	a2,a0
 f40:	00000513          	li	a0,0
 f44:	0015f693          	andi	a3,a1,1
 f48:	00068463          	beqz	a3,f50 <__mulsi3+0x14>
 f4c:	00c50533          	add	a0,a0,a2
 f50:	0015d593          	srli	a1,a1,0x1
 f54:	00161613          	slli	a2,a2,0x1
 f58:	fe0596e3          	bnez	a1,f44 <__mulsi3+0x8>
 f5c:	00008067          	ret

Disassembly of section .text.startup:

00000f60 <main>:
 f60:	fe010113          	addi	sp,sp,-32
 f64:	00112e23          	sw	ra,28(sp)
 f68:	958ff0ef          	jal	ra,c0 <initialise_board>
 f6c:	eedff0ef          	jal	ra,e58 <initialise_benchmark>
 f70:	00100513          	li	a0,1
 f74:	eadff0ef          	jal	ra,e20 <warm_caches>
 f78:	94cff0ef          	jal	ra,c4 <start_trigger>
 f7c:	ebdff0ef          	jal	ra,e38 <benchmark>
 f80:	00a12623          	sw	a0,12(sp)
 f84:	96cff0ef          	jal	ra,f0 <stop_trigger>
 f88:	00c12503          	lw	a0,12(sp)
 f8c:	f19ff0ef          	jal	ra,ea4 <verify_benchmark>
 f90:	00051a63          	bnez	a0,fa4 <main+0x44>
 f94:	110007b7          	lui	a5,0x11000
 f98:	fff00713          	li	a4,-1
 f9c:	00e7a823          	sw	a4,16(a5) # 11000010 <in_a+0x10feffe0>
 fa0:	00e7aa23          	sw	a4,20(a5)
 fa4:	110007b7          	lui	a5,0x11000
 fa8:	00100713          	li	a4,1
 fac:	08e7a023          	sw	a4,128(a5) # 11000080 <in_a+0x10ff0050>
 fb0:	0000006f          	j	fb0 <main+0x50>
