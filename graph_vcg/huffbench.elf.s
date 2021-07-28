
huffbench.elf:     file format elf32-littleriscv


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
  84:	645000ef          	jal	ra,ec8 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
  88:	00251513          	slli	a0,a0,0x2
  8c:	110007b7          	lui	a5,0x11000
  90:	00a787b3          	add	a5,a5,a0
  94:	00b7a023          	sw	a1,0(a5) # 11000000 <seed+0x10feda0c>
  98:	00008067          	ret

0000009c <readFromCtrl>:
  9c:	00251513          	slli	a0,a0,0x2
  a0:	110007b7          	lui	a5,0x11000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007a503          	lw	a0,0(a5) # 11000000 <seed+0x10feda0c>
  ac:	00008067          	ret

000000b0 <setIntr>:
  b0:	110007b7          	lui	a5,0x11000
  b4:	00100713          	li	a4,1
  b8:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10feda8c>
  bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
  c0:	00008067          	ret

000000c4 <start_trigger>:
  c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <seed+0xd9fc>
  c8:	01c00513          	li	a0,28
  cc:	00112623          	sw	ra,12(sp)
  d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
  d4:	00c12083          	lw	ra,12(sp)
  d8:	000127b7          	lui	a5,0x12
  dc:	41f55713          	srai	a4,a0,0x1f
  e0:	5ea7a023          	sw	a0,1504(a5) # 125e0 <start_time>
  e4:	5ee7a223          	sw	a4,1508(a5)
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
 114:	5e07a583          	lw	a1,1504(a5) # 125e0 <start_time>
 118:	5e47a703          	lw	a4,1508(a5)
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

00000150 <heap_adjust>:
 150:	01f65f13          	srli	t5,a2,0x1f
 154:	ffc58593          	addi	a1,a1,-4
 158:	00269e93          	slli	t4,a3,0x2
 15c:	00cf0f33          	add	t5,t5,a2
 160:	01d587b3          	add	a5,a1,t4
 164:	401f5f13          	srai	t5,t5,0x1
 168:	0007a383          	lw	t2,0(a5)
 16c:	08df4863          	blt	t5,a3,1fc <heap_adjust+0xac>
 170:	00239293          	slli	t0,t2,0x2
 174:	005502b3          	add	t0,a0,t0
 178:	02c0006f          	j	1a4 <heap_adjust+0x54>
 17c:	000e0713          	mv	a4,t3
 180:	00068893          	mv	a7,a3
 184:	000f8813          	mv	a6,t6
 188:	0002ae03          	lw	t3,0(t0)
 18c:	00070693          	mv	a3,a4
 190:	41d787b3          	sub	a5,a5,t4
 194:	071e6463          	bltu	t3,a7,1fc <heap_adjust+0xac>
 198:	0107a023          	sw	a6,0(a5)
 19c:	06ef4463          	blt	t5,a4,204 <heap_adjust+0xb4>
 1a0:	00269e93          	slli	t4,a3,0x2
 1a4:	00369793          	slli	a5,a3,0x3
 1a8:	00f587b3          	add	a5,a1,a5
 1ac:	0007a803          	lw	a6,0(a5)
 1b0:	00169713          	slli	a4,a3,0x1
 1b4:	00170e13          	addi	t3,a4,1
 1b8:	00281693          	slli	a3,a6,0x2
 1bc:	00d506b3          	add	a3,a0,a3
 1c0:	0006a883          	lw	a7,0(a3)
 1c4:	002e1f93          	slli	t6,t3,0x2
 1c8:	00078313          	mv	t1,a5
 1cc:	fac75ee3          	bge	a4,a2,188 <heap_adjust+0x38>
 1d0:	01f58333          	add	t1,a1,t6
 1d4:	00032f83          	lw	t6,0(t1)
 1d8:	002f9693          	slli	a3,t6,0x2
 1dc:	00d506b3          	add	a3,a0,a3
 1e0:	0006a683          	lw	a3,0(a3)
 1e4:	f916ece3          	bltu	a3,a7,17c <heap_adjust+0x2c>
 1e8:	0002ae03          	lw	t3,0(t0)
 1ec:	00078313          	mv	t1,a5
 1f0:	00070693          	mv	a3,a4
 1f4:	41d787b3          	sub	a5,a5,t4
 1f8:	fb1e70e3          	bgeu	t3,a7,198 <heap_adjust+0x48>
 1fc:	0077a023          	sw	t2,0(a5)
 200:	00008067          	ret
 204:	00030793          	mv	a5,t1
 208:	0077a023          	sw	t2,0(a5)
 20c:	00008067          	ret

00000210 <compdecomp>:
 210:	81010113          	addi	sp,sp,-2032
 214:	fffff2b7          	lui	t0,0xfffff
 218:	9b028293          	addi	t0,t0,-1616 # ffffe9b0 <seed+0xfffec3bc>
 21c:	7d312e23          	sw	s3,2012(sp)
 220:	00158993          	addi	s3,a1,1
 224:	7e112623          	sw	ra,2028(sp)
 228:	7e812423          	sw	s0,2024(sp)
 22c:	7e912223          	sw	s1,2020(sp)
 230:	7f212023          	sw	s2,2016(sp)
 234:	7d412c23          	sw	s4,2008(sp)
 238:	7d512a23          	sw	s5,2004(sp)
 23c:	7d612823          	sw	s6,2000(sp)
 240:	7d712623          	sw	s7,1996(sp)
 244:	7d812423          	sw	s8,1992(sp)
 248:	7d912223          	sw	s9,1988(sp)
 24c:	00050913          	mv	s2,a0
 250:	00510133          	add	sp,sp,t0
 254:	00098513          	mv	a0,s3
 258:	00058413          	mv	s0,a1
 25c:	1c9000ef          	jal	ra,c24 <malloc_beebs>
 260:	00098613          	mv	a2,s3
 264:	00000593          	li	a1,0
 268:	00001bb7          	lui	s7,0x1
 26c:	00050493          	mv	s1,a0
 270:	00001ab7          	lui	s5,0x1
 274:	379000ef          	jal	ra,dec <memset>
 278:	01010793          	addi	a5,sp,16
 27c:	800a8a93          	addi	s5,s5,-2048 # 800 <compdecomp+0x5f0>
 280:	e00b8513          	addi	a0,s7,-512 # e00 <memset+0x14>
 284:	000a8613          	mv	a2,s5
 288:	00000593          	li	a1,0
 28c:	00f50533          	add	a0,a0,a5
 290:	35d000ef          	jal	ra,dec <memset>
 294:	00002b37          	lui	s6,0x2
 298:	ffffe9b7          	lui	s3,0xffffe
 29c:	40098513          	addi	a0,s3,1024 # ffffe400 <seed+0xfffebe0c>
 2a0:	e00b0793          	addi	a5,s6,-512 # 1e00 <main+0xf38>
 2a4:	01010713          	addi	a4,sp,16
 2a8:	00a787b3          	add	a5,a5,a0
 2ac:	00e78533          	add	a0,a5,a4
 2b0:	40000613          	li	a2,1024
 2b4:	00000593          	li	a1,0
 2b8:	335000ef          	jal	ra,dec <memset>
 2bc:	01010793          	addi	a5,sp,16
 2c0:	600b8513          	addi	a0,s7,1536
 2c4:	000a8613          	mv	a2,s5
 2c8:	00000593          	li	a1,0
 2cc:	00f50533          	add	a0,a0,a5
 2d0:	31d000ef          	jal	ra,dec <memset>
 2d4:	fffffa37          	lui	s4,0xfffff
 2d8:	800a0513          	addi	a0,s4,-2048 # ffffe800 <seed+0xfffec20c>
 2dc:	e00b0793          	addi	a5,s6,-512
 2e0:	00a787b3          	add	a5,a5,a0
 2e4:	01010713          	addi	a4,sp,16
 2e8:	00e78533          	add	a0,a5,a4
 2ec:	40000613          	li	a2,1024
 2f0:	00000593          	li	a1,0
 2f4:	2f9000ef          	jal	ra,dec <memset>
 2f8:	20098513          	addi	a0,s3,512
 2fc:	e00b0793          	addi	a5,s6,-512
 300:	00a787b3          	add	a5,a5,a0
 304:	01010713          	addi	a4,sp,16
 308:	10000613          	li	a2,256
 30c:	00000593          	li	a1,0
 310:	00e78533          	add	a0,a5,a4
 314:	2d9000ef          	jal	ra,dec <memset>
 318:	6c040063          	beqz	s0,9d8 <compdecomp+0x7c8>
 31c:	00890633          	add	a2,s2,s0
 320:	00090713          	mv	a4,s2
 324:	00074783          	lbu	a5,0(a4)
 328:	000016b7          	lui	a3,0x1
 32c:	e0068693          	addi	a3,a3,-512 # e00 <memset+0x14>
 330:	01010593          	addi	a1,sp,16
 334:	00b686b3          	add	a3,a3,a1
 338:	00279793          	slli	a5,a5,0x2
 33c:	00f687b3          	add	a5,a3,a5
 340:	0007a683          	lw	a3,0(a5)
 344:	00170713          	addi	a4,a4,1
 348:	00168693          	addi	a3,a3,1
 34c:	00d7a023          	sw	a3,0(a5)
 350:	fcc71ae3          	bne	a4,a2,324 <compdecomp+0x114>
 354:	000017b7          	lui	a5,0x1
 358:	e0078793          	addi	a5,a5,-512 # e00 <memset+0x14>
 35c:	00b787b3          	add	a5,a5,a1
 360:	0007a603          	lw	a2,0(a5)
 364:	00002537          	lui	a0,0x2
 368:	fffff7b7          	lui	a5,0xfffff
 36c:	e0050713          	addi	a4,a0,-512 # 1e00 <main+0xf38>
 370:	00f70733          	add	a4,a4,a5
 374:	01010793          	addi	a5,sp,16
 378:	00f707b3          	add	a5,a4,a5
 37c:	ffffe5b7          	lui	a1,0xffffe
 380:	e0050713          	addi	a4,a0,-512
 384:	00b70733          	add	a4,a4,a1
 388:	01010593          	addi	a1,sp,16
 38c:	00f12423          	sw	a5,8(sp)
 390:	00478693          	addi	a3,a5,4 # fffff004 <seed+0xfffeca10>
 394:	00000993          	li	s3,0
 398:	00000793          	li	a5,0
 39c:	00b705b3          	add	a1,a4,a1
 3a0:	10000513          	li	a0,256
 3a4:	00c0006f          	j	3b0 <compdecomp+0x1a0>
 3a8:	0006a603          	lw	a2,0(a3)
 3ac:	00468693          	addi	a3,a3,4
 3b0:	00299713          	slli	a4,s3,0x2
 3b4:	00e58733          	add	a4,a1,a4
 3b8:	00060663          	beqz	a2,3c4 <compdecomp+0x1b4>
 3bc:	40f72023          	sw	a5,1024(a4)
 3c0:	00198993          	addi	s3,s3,1
 3c4:	00178793          	addi	a5,a5,1
 3c8:	fea790e3          	bne	a5,a0,3a8 <compdecomp+0x198>
 3cc:	14098e63          	beqz	s3,528 <compdecomp+0x318>
 3d0:	00002737          	lui	a4,0x2
 3d4:	ffffec37          	lui	s8,0xffffe
 3d8:	400c0c13          	addi	s8,s8,1024 # ffffe400 <seed+0xfffebe0c>
 3dc:	e0070793          	addi	a5,a4,-512 # 1e00 <main+0xf38>
 3e0:	018787b3          	add	a5,a5,s8
 3e4:	01010693          	addi	a3,sp,16
 3e8:	00d78c33          	add	s8,a5,a3
 3ec:	e0070713          	addi	a4,a4,-512
 3f0:	fffff7b7          	lui	a5,0xfffff
 3f4:	00f70733          	add	a4,a4,a5
 3f8:	00d707b3          	add	a5,a4,a3
 3fc:	00098a13          	mv	s4,s3
 400:	00f12423          	sw	a5,8(sp)
 404:	00812503          	lw	a0,8(sp)
 408:	000a0693          	mv	a3,s4
 40c:	00098613          	mv	a2,s3
 410:	fffa0a13          	addi	s4,s4,-1
 414:	000c0593          	mv	a1,s8
 418:	d39ff0ef          	jal	ra,150 <heap_adjust>
 41c:	fe0a14e3          	bnez	s4,404 <compdecomp+0x1f4>
 420:	00100793          	li	a5,1
 424:	10f98063          	beq	s3,a5,524 <compdecomp+0x314>
 428:	00299793          	slli	a5,s3,0x2
 42c:	3fc78a93          	addi	s5,a5,1020 # fffff3fc <seed+0xfffece08>
 430:	ffc78793          	addi	a5,a5,-4
 434:	00fc0c33          	add	s8,s8,a5
 438:	00812783          	lw	a5,8(sp)
 43c:	000026b7          	lui	a3,0x2
 440:	ffffe737          	lui	a4,0xffffe
 444:	01578ab3          	add	s5,a5,s5
 448:	e0068793          	addi	a5,a3,-512 # 1e00 <main+0xf38>
 44c:	40070b93          	addi	s7,a4,1024 # ffffe400 <seed+0xfffebe0c>
 450:	00e787b3          	add	a5,a5,a4
 454:	01010713          	addi	a4,sp,16
 458:	00e787b3          	add	a5,a5,a4
 45c:	00f12623          	sw	a5,12(sp)
 460:	e0068793          	addi	a5,a3,-512
 464:	017787b3          	add	a5,a5,s7
 468:	0ff98993          	addi	s3,s3,255
 46c:	00e78bb3          	add	s7,a5,a4
 470:	10000b13          	li	s6,256
 474:	000c2783          	lw	a5,0(s8)
 478:	00c12703          	lw	a4,12(sp)
 47c:	00812503          	lw	a0,8(sp)
 480:	f0098c93          	addi	s9,s3,-256
 484:	40072a03          	lw	s4,1024(a4)
 488:	00100693          	li	a3,1
 48c:	40f72023          	sw	a5,1024(a4)
 490:	000c8613          	mv	a2,s9
 494:	000b8593          	mv	a1,s7
 498:	cb9ff0ef          	jal	ra,150 <heap_adjust>
 49c:	00c12783          	lw	a5,12(sp)
 4a0:	00812683          	lw	a3,8(sp)
 4a4:	002a1713          	slli	a4,s4,0x2
 4a8:	4007a783          	lw	a5,1024(a5)
 4ac:	00e68633          	add	a2,a3,a4
 4b0:	00002537          	lui	a0,0x2
 4b4:	00279793          	slli	a5,a5,0x2
 4b8:	00f686b3          	add	a3,a3,a5
 4bc:	0006a683          	lw	a3,0(a3)
 4c0:	00062603          	lw	a2,0(a2)
 4c4:	e0050593          	addi	a1,a0,-512 # 1e00 <main+0xf38>
 4c8:	00e585b3          	add	a1,a1,a4
 4cc:	01010713          	addi	a4,sp,16
 4d0:	00e58733          	add	a4,a1,a4
 4d4:	81372023          	sw	s3,-2048(a4)
 4d8:	00c68733          	add	a4,a3,a2
 4dc:	e0050693          	addi	a3,a0,-512
 4e0:	00f686b3          	add	a3,a3,a5
 4e4:	01010793          	addi	a5,sp,16
 4e8:	00f687b3          	add	a5,a3,a5
 4ec:	00c12683          	lw	a3,12(sp)
 4f0:	00812503          	lw	a0,8(sp)
 4f4:	41300833          	neg	a6,s3
 4f8:	4136a023          	sw	s3,1024(a3)
 4fc:	00eaa023          	sw	a4,0(s5)
 500:	00100693          	li	a3,1
 504:	000c8613          	mv	a2,s9
 508:	000b8593          	mv	a1,s7
 50c:	8107a023          	sw	a6,-2048(a5)
 510:	fff98993          	addi	s3,s3,-1
 514:	ffcc0c13          	addi	s8,s8,-4
 518:	c39ff0ef          	jal	ra,150 <heap_adjust>
 51c:	ffca8a93          	addi	s5,s5,-4
 520:	f5699ae3          	bne	s3,s6,474 <compdecomp+0x264>
 524:	10100793          	li	a5,257
 528:	00002737          	lui	a4,0x2
 52c:	00279793          	slli	a5,a5,0x2
 530:	e0070693          	addi	a3,a4,-512 # 1e00 <main+0xf38>
 534:	00f686b3          	add	a3,a3,a5
 538:	01010793          	addi	a5,sp,16
 53c:	fffff837          	lui	a6,0xfffff
 540:	00f687b3          	add	a5,a3,a5
 544:	e0070693          	addi	a3,a4,-512
 548:	01010613          	addi	a2,sp,16
 54c:	010686b3          	add	a3,a3,a6
 550:	ffffe9b7          	lui	s3,0xffffe
 554:	80080a13          	addi	s4,a6,-2048 # ffffe800 <seed+0xfffec20c>
 558:	20098993          	addi	s3,s3,512 # ffffe200 <seed+0xfffebc0c>
 55c:	00c68833          	add	a6,a3,a2
 560:	e0070693          	addi	a3,a4,-512
 564:	e0070713          	addi	a4,a4,-512
 568:	014686b3          	add	a3,a3,s4
 56c:	01370733          	add	a4,a4,s3
 570:	8007a023          	sw	zero,-2048(a5)
 574:	000017b7          	lui	a5,0x1
 578:	00c68a33          	add	s4,a3,a2
 57c:	00c709b3          	add	s3,a4,a2
 580:	60078893          	addi	a7,a5,1536 # 1600 <main+0x738>
 584:	00c888b3          	add	a7,a7,a2
 588:	40080313          	addi	t1,a6,1024
 58c:	00098513          	mv	a0,s3
 590:	000a0593          	mv	a1,s4
 594:	00000e13          	li	t3,0
 598:	00000e93          	li	t4,0
 59c:	0200006f          	j	5bc <compdecomp+0x3ac>
 5a0:	00d5a023          	sw	a3,0(a1) # ffffe000 <seed+0xfffeba0c>
 5a4:	00e50023          	sb	a4,0(a0)
 5a8:	00480813          	addi	a6,a6,4
 5ac:	00458593          	addi	a1,a1,4
 5b0:	00150513          	addi	a0,a0,1
 5b4:	00488893          	addi	a7,a7,4
 5b8:	09030463          	beq	t1,a6,640 <compdecomp+0x430>
 5bc:	00082683          	lw	a3,0(a6)
 5c0:	00000713          	li	a4,0
 5c4:	fc068ee3          	beqz	a3,5a0 <compdecomp+0x390>
 5c8:	0008a783          	lw	a5,0(a7)
 5cc:	00000693          	li	a3,0
 5d0:	fc0788e3          	beqz	a5,5a0 <compdecomp+0x390>
 5d4:	00100713          	li	a4,1
 5d8:	00000613          	li	a2,0
 5dc:	0007d663          	bgez	a5,5e8 <compdecomp+0x3d8>
 5e0:	40f007b3          	neg	a5,a5
 5e4:	00e686b3          	add	a3,a3,a4
 5e8:	00002f37          	lui	t5,0x2
 5ec:	00279793          	slli	a5,a5,0x2
 5f0:	e00f0f13          	addi	t5,t5,-512 # 1e00 <main+0xf38>
 5f4:	00ff0f33          	add	t5,t5,a5
 5f8:	01010793          	addi	a5,sp,16
 5fc:	00ff07b3          	add	a5,t5,a5
 600:	8007a783          	lw	a5,-2048(a5)
 604:	00171713          	slli	a4,a4,0x1
 608:	00160613          	addi	a2,a2,1
 60c:	fc0798e3          	bnez	a5,5dc <compdecomp+0x3cc>
 610:	00def463          	bgeu	t4,a3,618 <compdecomp+0x408>
 614:	00068e93          	mv	t4,a3
 618:	0ff67713          	zext.b	a4,a2
 61c:	f8ce72e3          	bgeu	t3,a2,5a0 <compdecomp+0x390>
 620:	00d5a023          	sw	a3,0(a1)
 624:	00e50023          	sb	a4,0(a0)
 628:	00480813          	addi	a6,a6,4
 62c:	00060e13          	mv	t3,a2
 630:	00458593          	addi	a1,a1,4
 634:	00150513          	addi	a0,a0,1
 638:	00488893          	addi	a7,a7,4
 63c:	f90310e3          	bne	t1,a6,5bc <compdecomp+0x3ac>
 640:	02000793          	li	a5,32
 644:	27c7e863          	bltu	a5,t3,8b4 <compdecomp+0x6a4>
 648:	260e8663          	beqz	t4,8b4 <compdecomp+0x6a4>
 64c:	3c040a63          	beqz	s0,a20 <compdecomp+0x810>
 650:	00002637          	lui	a2,0x2
 654:	ffffe7b7          	lui	a5,0xffffe
 658:	e0060693          	addi	a3,a2,-512 # 1e00 <main+0xf38>
 65c:	00f686b3          	add	a3,a3,a5
 660:	01010793          	addi	a5,sp,16
 664:	00f687b3          	add	a5,a3,a5
 668:	fffff8b7          	lui	a7,0xfffff
 66c:	00f12423          	sw	a5,8(sp)
 670:	e0060793          	addi	a5,a2,-512
 674:	011787b3          	add	a5,a5,a7
 678:	01010693          	addi	a3,sp,16
 67c:	00890fb3          	add	t6,s2,s0
 680:	00090e93          	mv	t4,s2
 684:	fff00593          	li	a1,-1
 688:	00000713          	li	a4,0
 68c:	00000313          	li	t1,0
 690:	00100f13          	li	t5,1
 694:	00700e13          	li	t3,7
 698:	00d788b3          	add	a7,a5,a3
 69c:	000ec503          	lbu	a0,0(t4)
 6a0:	00812783          	lw	a5,8(sp)
 6a4:	00a787b3          	add	a5,a5,a0
 6a8:	2007c783          	lbu	a5,512(a5) # ffffe200 <seed+0xfffebc0c>
 6ac:	fff78693          	addi	a3,a5,-1
 6b0:	00df16b3          	sll	a3,t5,a3
 6b4:	24078063          	beqz	a5,8f4 <compdecomp+0x6e4>
 6b8:	00000613          	li	a2,0
 6bc:	03c0006f          	j	6f8 <compdecomp+0x4e8>
 6c0:	0ff7f713          	zext.b	a4,a5
 6c4:	00158593          	addi	a1,a1,1
 6c8:	00251793          	slli	a5,a0,0x2
 6cc:	00f887b3          	add	a5,a7,a5
 6d0:	8007a783          	lw	a5,-2048(a5)
 6d4:	00812803          	lw	a6,8(sp)
 6d8:	00160613          	addi	a2,a2,1
 6dc:	00f6f7b3          	and	a5,a3,a5
 6e0:	00a80833          	add	a6,a6,a0
 6e4:	00078463          	beqz	a5,6ec <compdecomp+0x4dc>
 6e8:	00176713          	ori	a4,a4,1
 6ec:	20084783          	lbu	a5,512(a6)
 6f0:	0016d693          	srli	a3,a3,0x1
 6f4:	20f67063          	bgeu	a2,a5,8f4 <compdecomp+0x6e4>
 6f8:	00171793          	slli	a5,a4,0x1
 6fc:	fdc592e3          	bne	a1,t3,6c0 <compdecomp+0x4b0>
 700:	006487b3          	add	a5,s1,t1
 704:	00e78023          	sb	a4,0(a5)
 708:	00130313          	addi	t1,t1,1
 70c:	1a640463          	beq	s0,t1,8b4 <compdecomp+0x6a4>
 710:	000ec503          	lbu	a0,0(t4)
 714:	00000593          	li	a1,0
 718:	00000713          	li	a4,0
 71c:	fadff06f          	j	6c8 <compdecomp+0x4b8>
 720:	00002737          	lui	a4,0x2
 724:	fffffeb7          	lui	t4,0xfffff
 728:	e0070693          	addi	a3,a4,-512 # 1e00 <main+0xf38>
 72c:	01010613          	addi	a2,sp,16
 730:	01d686b3          	add	a3,a3,t4
 734:	ffffe7b7          	lui	a5,0xffffe
 738:	00c68fb3          	add	t6,a3,a2
 73c:	e0070693          	addi	a3,a4,-512
 740:	00f686b3          	add	a3,a3,a5
 744:	00c68833          	add	a6,a3,a2
 748:	e0070693          	addi	a3,a4,-512
 74c:	e0070713          	addi	a4,a4,-512
 750:	00f70733          	add	a4,a4,a5
 754:	c04f8f93          	addi	t6,t6,-1020
 758:	01d686b3          	add	a3,a3,t4
 75c:	00c707b3          	add	a5,a4,a2
 760:	30180813          	addi	a6,a6,769
 764:	000f8313          	mv	t1,t6
 768:	00100893          	li	a7,1
 76c:	00c68eb3          	add	t4,a3,a2
 770:	00f12423          	sw	a5,8(sp)
 774:	10000f13          	li	t5,256
 778:	00032503          	lw	a0,0(t1)
 77c:	00084e03          	lbu	t3,0(a6)
 780:	00080693          	mv	a3,a6
 784:	00030713          	mv	a4,t1
 788:	00088793          	mv	a5,a7
 78c:	ffc72603          	lw	a2,-4(a4)
 790:	00078593          	mv	a1,a5
 794:	fff78793          	addi	a5,a5,-1 # ffffdfff <seed+0xfffeba0b>
 798:	26c57a63          	bgeu	a0,a2,a0c <compdecomp+0x7fc>
 79c:	fff6c583          	lbu	a1,-1(a3)
 7a0:	00c72023          	sw	a2,0(a4)
 7a4:	fff68693          	addi	a3,a3,-1
 7a8:	00b680a3          	sb	a1,1(a3)
 7ac:	ffc70713          	addi	a4,a4,-4
 7b0:	fc079ee3          	bnez	a5,78c <compdecomp+0x57c>
 7b4:	00812683          	lw	a3,8(sp)
 7b8:	00279713          	slli	a4,a5,0x2
 7bc:	00ee8733          	add	a4,t4,a4
 7c0:	00f687b3          	add	a5,a3,a5
 7c4:	c0a72023          	sw	a0,-1024(a4)
 7c8:	31c78023          	sb	t3,768(a5)
 7cc:	00188893          	addi	a7,a7,1 # fffff001 <seed+0xfffeca0d>
 7d0:	00430313          	addi	t1,t1,4
 7d4:	00180813          	addi	a6,a6,1
 7d8:	fbe890e3          	bne	a7,t5,778 <compdecomp+0x568>
 7dc:	c00ea503          	lw	a0,-1024(t4) # ffffec00 <seed+0xfffec60c>
 7e0:	24051663          	bnez	a0,a2c <compdecomp+0x81c>
 7e4:	000fa783          	lw	a5,0(t6)
 7e8:	00150513          	addi	a0,a0,1
 7ec:	004f8f93          	addi	t6,t6,4
 7f0:	fe078ae3          	beqz	a5,7e4 <compdecomp+0x5d4>
 7f4:	0a040c63          	beqz	s0,8ac <compdecomp+0x69c>
 7f8:	00002737          	lui	a4,0x2
 7fc:	fffff7b7          	lui	a5,0xfffff
 800:	e0070693          	addi	a3,a4,-512 # 1e00 <main+0xf38>
 804:	c0078893          	addi	a7,a5,-1024 # ffffec00 <seed+0xfffec60c>
 808:	00f686b3          	add	a3,a3,a5
 80c:	01010793          	addi	a5,sp,16
 810:	00f687b3          	add	a5,a3,a5
 814:	00f12423          	sw	a5,8(sp)
 818:	e0070793          	addi	a5,a4,-512
 81c:	011787b3          	add	a5,a5,a7
 820:	01010693          	addi	a3,sp,16
 824:	ffffeeb7          	lui	t4,0xffffe
 828:	00d788b3          	add	a7,a5,a3
 82c:	e0070793          	addi	a5,a4,-512
 830:	01d787b3          	add	a5,a5,t4
 834:	00048e13          	mv	t3,s1
 838:	00050593          	mv	a1,a0
 83c:	00000613          	li	a2,0
 840:	08000813          	li	a6,128
 844:	00000313          	li	t1,0
 848:	00d78eb3          	add	t4,a5,a3
 84c:	00100f13          	li	t5,1
 850:	000e4783          	lbu	a5,0(t3)
 854:	0107f7b3          	and	a5,a5,a6
 858:	1a078e63          	beqz	a5,a14 <compdecomp+0x804>
 85c:	00160613          	addi	a2,a2,1
 860:	00161613          	slli	a2,a2,0x1
 864:	00812703          	lw	a4,8(sp)
 868:	00259793          	slli	a5,a1,0x2
 86c:	00f707b3          	add	a5,a4,a5
 870:	c007a683          	lw	a3,-1024(a5)
 874:	00158713          	addi	a4,a1,1
 878:	00271793          	slli	a5,a4,0x2
 87c:	00f887b3          	add	a5,a7,a5
 880:	00c6e663          	bltu	a3,a2,88c <compdecomp+0x67c>
 884:	0180006f          	j	89c <compdecomp+0x68c>
 888:	00170713          	addi	a4,a4,1
 88c:	0007a683          	lw	a3,0(a5)
 890:	00070593          	mv	a1,a4
 894:	00478793          	addi	a5,a5,4
 898:	fec6e8e3          	bltu	a3,a2,888 <compdecomp+0x678>
 89c:	14c68263          	beq	a3,a2,9e0 <compdecomp+0x7d0>
 8a0:	17e80063          	beq	a6,t5,a00 <compdecomp+0x7f0>
 8a4:	00185813          	srli	a6,a6,0x1
 8a8:	fa8364e3          	bltu	t1,s0,850 <compdecomp+0x640>
 8ac:	00048513          	mv	a0,s1
 8b0:	494000ef          	jal	ra,d44 <free_beebs>
 8b4:	000012b7          	lui	t0,0x1
 8b8:	65028293          	addi	t0,t0,1616 # 1650 <main+0x788>
 8bc:	00510133          	add	sp,sp,t0
 8c0:	7ec12083          	lw	ra,2028(sp)
 8c4:	7e812403          	lw	s0,2024(sp)
 8c8:	7e412483          	lw	s1,2020(sp)
 8cc:	7e012903          	lw	s2,2016(sp)
 8d0:	7dc12983          	lw	s3,2012(sp)
 8d4:	7d812a03          	lw	s4,2008(sp)
 8d8:	7d412a83          	lw	s5,2004(sp)
 8dc:	7d012b03          	lw	s6,2000(sp)
 8e0:	7cc12b83          	lw	s7,1996(sp)
 8e4:	7c812c03          	lw	s8,1992(sp)
 8e8:	7c412c83          	lw	s9,1988(sp)
 8ec:	7f010113          	addi	sp,sp,2032
 8f0:	00008067          	ret
 8f4:	001e8e93          	addi	t4,t4,1 # ffffe001 <seed+0xfffeba0d>
 8f8:	dbdf92e3          	bne	t6,t4,69c <compdecomp+0x48c>
 8fc:	00700793          	li	a5,7
 900:	40b787b3          	sub	a5,a5,a1
 904:	00f717b3          	sll	a5,a4,a5
 908:	0ff7f793          	zext.b	a5,a5
 90c:	00648733          	add	a4,s1,t1
 910:	00002ab7          	lui	s5,0x2
 914:	fffffe37          	lui	t3,0xfffff
 918:	c00e0e13          	addi	t3,t3,-1024 # ffffec00 <seed+0xfffec60c>
 91c:	e00a8693          	addi	a3,s5,-512 # 1e00 <main+0xf38>
 920:	01c686b3          	add	a3,a3,t3
 924:	01010613          	addi	a2,sp,16
 928:	00c68e33          	add	t3,a3,a2
 92c:	00f70023          	sb	a5,0(a4)
 930:	000e0513          	mv	a0,t3
 934:	40000613          	li	a2,1024
 938:	00000593          	li	a1,0
 93c:	4b0000ef          	jal	ra,dec <memset>
 940:	ffffe337          	lui	t1,0xffffe
 944:	30030313          	addi	t1,t1,768 # ffffe300 <seed+0xfffebd0c>
 948:	e00a8793          	addi	a5,s5,-512
 94c:	006787b3          	add	a5,a5,t1
 950:	01010713          	addi	a4,sp,16
 954:	00050e13          	mv	t3,a0
 958:	00e78333          	add	t1,a5,a4
 95c:	00000813          	li	a6,0
 960:	00100f13          	li	t5,1
 964:	10000e93          	li	t4,256
 968:	0180006f          	j	980 <compdecomp+0x770>
 96c:	00180813          	addi	a6,a6,1
 970:	004a0a13          	addi	s4,s4,4
 974:	00198993          	addi	s3,s3,1
 978:	004e0e13          	addi	t3,t3,4
 97c:	dbd802e3          	beq	a6,t4,720 <compdecomp+0x510>
 980:	000a2503          	lw	a0,0(s4)
 984:	0009c583          	lbu	a1,0(s3)
 988:	01030023          	sb	a6,0(t1)
 98c:	00130313          	addi	t1,t1,1
 990:	00b567b3          	or	a5,a0,a1
 994:	fc078ce3          	beqz	a5,96c <compdecomp+0x75c>
 998:	fff58693          	addi	a3,a1,-1
 99c:	00df16b3          	sll	a3,t5,a3
 9a0:	00000793          	li	a5,0
 9a4:	02058663          	beqz	a1,9d0 <compdecomp+0x7c0>
 9a8:	00000613          	li	a2,0
 9ac:	00179893          	slli	a7,a5,0x1
 9b0:	00d57733          	and	a4,a0,a3
 9b4:	00178793          	addi	a5,a5,1
 9b8:	00179793          	slli	a5,a5,0x1
 9bc:	00071463          	bnez	a4,9c4 <compdecomp+0x7b4>
 9c0:	00188793          	addi	a5,a7,1
 9c4:	00160613          	addi	a2,a2,1
 9c8:	0016d693          	srli	a3,a3,0x1
 9cc:	fec590e3          	bne	a1,a2,9ac <compdecomp+0x79c>
 9d0:	00fe2023          	sw	a5,0(t3)
 9d4:	f99ff06f          	j	96c <compdecomp+0x75c>
 9d8:	00000613          	li	a2,0
 9dc:	989ff06f          	j	364 <compdecomp+0x154>
 9e0:	00be85b3          	add	a1,t4,a1
 9e4:	3005c783          	lbu	a5,768(a1)
 9e8:	00190913          	addi	s2,s2,1
 9ec:	00130313          	addi	t1,t1,1
 9f0:	fef90fa3          	sb	a5,-1(s2)
 9f4:	00050593          	mv	a1,a0
 9f8:	00000613          	li	a2,0
 9fc:	ebe814e3          	bne	a6,t5,8a4 <compdecomp+0x694>
 a00:	001e0e13          	addi	t3,t3,1
 a04:	08000813          	li	a6,128
 a08:	ea1ff06f          	j	8a8 <compdecomp+0x698>
 a0c:	00058793          	mv	a5,a1
 a10:	da5ff06f          	j	7b4 <compdecomp+0x5a4>
 a14:	00161613          	slli	a2,a2,0x1
 a18:	00160613          	addi	a2,a2,1
 a1c:	e49ff06f          	j	864 <compdecomp+0x654>
 a20:	00048713          	mv	a4,s1
 a24:	00000793          	li	a5,0
 a28:	ee9ff06f          	j	910 <compdecomp+0x700>
 a2c:	00000513          	li	a0,0
 a30:	dc5ff06f          	j	7f4 <compdecomp+0x5e4>

00000a34 <benchmark_body>:
 a34:	0ca05a63          	blez	a0,b08 <benchmark_body+0xd4>
 a38:	fe010113          	addi	sp,sp,-32
 a3c:	01212823          	sw	s2,16(sp)
 a40:	01312623          	sw	s3,12(sp)
 a44:	01412423          	sw	s4,8(sp)
 a48:	000109b7          	lui	s3,0x10
 a4c:	00010a37          	lui	s4,0x10
 a50:	00010937          	lui	s2,0x10
 a54:	00812c23          	sw	s0,24(sp)
 a58:	00912a23          	sw	s1,20(sp)
 a5c:	01512223          	sw	s5,4(sp)
 a60:	01612023          	sw	s6,0(sp)
 a64:	00112e23          	sw	ra,28(sp)
 a68:	00050493          	mv	s1,a0
 a6c:	00000413          	li	s0,0
 a70:	00010b37          	lui	s6,0x10
 a74:	1f498993          	addi	s3,s3,500 # 101f4 <orig_data+0x1f4>
 a78:	3eca0a93          	addi	s5,s4,1004 # 103ec <test_data>
 a7c:	3e890913          	addi	s2,s2,1000 # 103e8 <orig_data+0x3e8>
 a80:	000025b7          	lui	a1,0x2
 a84:	5e0b0513          	addi	a0,s6,1504 # 105e0 <heap>
 a88:	15c000ef          	jal	ra,be4 <init_heap_beebs>
 a8c:	00098793          	mv	a5,s3
 a90:	000a8713          	mv	a4,s5
 a94:	0007a803          	lw	a6,0(a5)
 a98:	0047a503          	lw	a0,4(a5)
 a9c:	0087a583          	lw	a1,8(a5)
 aa0:	00c7a603          	lw	a2,12(a5)
 aa4:	0107a683          	lw	a3,16(a5)
 aa8:	01072023          	sw	a6,0(a4)
 aac:	00a72223          	sw	a0,4(a4)
 ab0:	00b72423          	sw	a1,8(a4)
 ab4:	00c72623          	sw	a2,12(a4)
 ab8:	00d72823          	sw	a3,16(a4)
 abc:	01478793          	addi	a5,a5,20
 ac0:	01470713          	addi	a4,a4,20
 ac4:	fd2798e3          	bne	a5,s2,a94 <benchmark_body+0x60>
 ac8:	00140413          	addi	s0,s0,1
 acc:	1f400593          	li	a1,500
 ad0:	3eca0513          	addi	a0,s4,1004
 ad4:	f3cff0ef          	jal	ra,210 <compdecomp>
 ad8:	fa8494e3          	bne	s1,s0,a80 <benchmark_body+0x4c>
 adc:	01c12083          	lw	ra,28(sp)
 ae0:	01812403          	lw	s0,24(sp)
 ae4:	01412483          	lw	s1,20(sp)
 ae8:	01012903          	lw	s2,16(sp)
 aec:	00c12983          	lw	s3,12(sp)
 af0:	00812a03          	lw	s4,8(sp)
 af4:	00412a83          	lw	s5,4(sp)
 af8:	00012b03          	lw	s6,0(sp)
 afc:	00000513          	li	a0,0
 b00:	02010113          	addi	sp,sp,32
 b04:	00008067          	ret
 b08:	00000513          	li	a0,0
 b0c:	00008067          	ret

00000b10 <verify_benchmark>:
 b10:	000105b7          	lui	a1,0x10
 b14:	00010537          	lui	a0,0x10
 b18:	ff010113          	addi	sp,sp,-16
 b1c:	1f400613          	li	a2,500
 b20:	00058593          	mv	a1,a1
 b24:	3ec50513          	addi	a0,a0,1004 # 103ec <test_data>
 b28:	00112623          	sw	ra,12(sp)
 b2c:	240000ef          	jal	ra,d6c <memcmp>
 b30:	00c12083          	lw	ra,12(sp)
 b34:	00153513          	seqz	a0,a0
 b38:	01010113          	addi	sp,sp,16
 b3c:	00008067          	ret

00000b40 <initialise_benchmark>:
 b40:	00008067          	ret

00000b44 <warm_caches>:
 b44:	ff010113          	addi	sp,sp,-16
 b48:	00112623          	sw	ra,12(sp)
 b4c:	ee9ff0ef          	jal	ra,a34 <benchmark_body>
 b50:	00c12083          	lw	ra,12(sp)
 b54:	01010113          	addi	sp,sp,16
 b58:	00008067          	ret

00000b5c <benchmark>:
 b5c:	ff010113          	addi	sp,sp,-16
 b60:	4b000513          	li	a0,1200
 b64:	00112623          	sw	ra,12(sp)
 b68:	ecdff0ef          	jal	ra,a34 <benchmark_body>
 b6c:	00c12083          	lw	ra,12(sp)
 b70:	01010113          	addi	sp,sp,16
 b74:	00008067          	ret

00000b78 <rand_beebs>:
 b78:	000126b7          	lui	a3,0x12
 b7c:	5f46a703          	lw	a4,1524(a3) # 125f4 <seed>
 b80:	00871793          	slli	a5,a4,0x8
 b84:	40e787b3          	sub	a5,a5,a4
 b88:	00379793          	slli	a5,a5,0x3
 b8c:	00e787b3          	add	a5,a5,a4
 b90:	00779793          	slli	a5,a5,0x7
 b94:	00e787b3          	add	a5,a5,a4
 b98:	00379793          	slli	a5,a5,0x3
 b9c:	40e787b3          	sub	a5,a5,a4
 ba0:	00579613          	slli	a2,a5,0x5
 ba4:	00c78533          	add	a0,a5,a2
 ba8:	00251513          	slli	a0,a0,0x2
 bac:	40e50533          	sub	a0,a0,a4
 bb0:	00251513          	slli	a0,a0,0x2
 bb4:	000037b7          	lui	a5,0x3
 bb8:	00e50533          	add	a0,a0,a4
 bbc:	03978793          	addi	a5,a5,57 # 3039 <main+0x2171>
 bc0:	00f50533          	add	a0,a0,a5
 bc4:	00151513          	slli	a0,a0,0x1
 bc8:	00155513          	srli	a0,a0,0x1
 bcc:	5ea6aa23          	sw	a0,1524(a3)
 bd0:	01055513          	srli	a0,a0,0x10
 bd4:	00008067          	ret

00000bd8 <srand_beebs>:
 bd8:	000127b7          	lui	a5,0x12
 bdc:	5ea7aa23          	sw	a0,1524(a5) # 125f4 <seed>
 be0:	00008067          	ret

00000be4 <init_heap_beebs>:
 be4:	000127b7          	lui	a5,0x12
 be8:	00b505b3          	add	a1,a0,a1
 bec:	5ea7a823          	sw	a0,1520(a5) # 125f0 <heap_ptr>
 bf0:	000127b7          	lui	a5,0x12
 bf4:	5eb7a623          	sw	a1,1516(a5) # 125ec <heap_end>
 bf8:	000127b7          	lui	a5,0x12
 bfc:	5e07a423          	sw	zero,1512(a5) # 125e8 <heap_requested>
 c00:	00008067          	ret

00000c04 <check_heap_beebs>:
 c04:	000127b7          	lui	a5,0x12
 c08:	5e87a703          	lw	a4,1512(a5) # 125e8 <heap_requested>
 c0c:	000127b7          	lui	a5,0x12
 c10:	5ec7a783          	lw	a5,1516(a5) # 125ec <heap_end>
 c14:	00e50533          	add	a0,a0,a4
 c18:	00a7b533          	sltu	a0,a5,a0
 c1c:	00154513          	xori	a0,a0,1
 c20:	00008067          	ret

00000c24 <malloc_beebs>:
 c24:	000126b7          	lui	a3,0x12
 c28:	5e86a783          	lw	a5,1512(a3) # 125e8 <heap_requested>
 c2c:	00012637          	lui	a2,0x12
 c30:	5f062703          	lw	a4,1520(a2) # 125f0 <heap_ptr>
 c34:	000125b7          	lui	a1,0x12
 c38:	5ec5a583          	lw	a1,1516(a1) # 125ec <heap_end>
 c3c:	00a787b3          	add	a5,a5,a0
 c40:	5ef6a423          	sw	a5,1512(a3)
 c44:	00a707b3          	add	a5,a4,a0
 c48:	00f5ea63          	bltu	a1,a5,c5c <malloc_beebs+0x38>
 c4c:	00050863          	beqz	a0,c5c <malloc_beebs+0x38>
 c50:	5ef62823          	sw	a5,1520(a2)
 c54:	00070513          	mv	a0,a4
 c58:	00008067          	ret
 c5c:	00000713          	li	a4,0
 c60:	00070513          	mv	a0,a4
 c64:	00008067          	ret

00000c68 <calloc_beebs>:
 c68:	ff010113          	addi	sp,sp,-16
 c6c:	00112623          	sw	ra,12(sp)
 c70:	0d8000ef          	jal	ra,d48 <__mulsi3>
 c74:	000126b7          	lui	a3,0x12
 c78:	5e86a703          	lw	a4,1512(a3) # 125e8 <heap_requested>
 c7c:	000125b7          	lui	a1,0x12
 c80:	00050613          	mv	a2,a0
 c84:	5f05a783          	lw	a5,1520(a1) # 125f0 <heap_ptr>
 c88:	00012537          	lui	a0,0x12
 c8c:	5ec52503          	lw	a0,1516(a0) # 125ec <heap_end>
 c90:	00c70733          	add	a4,a4,a2
 c94:	5ee6a423          	sw	a4,1512(a3)
 c98:	00c78733          	add	a4,a5,a2
 c9c:	02e56863          	bltu	a0,a4,ccc <calloc_beebs+0x64>
 ca0:	02060663          	beqz	a2,ccc <calloc_beebs+0x64>
 ca4:	5ee5a823          	sw	a4,1520(a1)
 ca8:	00078a63          	beqz	a5,cbc <calloc_beebs+0x54>
 cac:	00078513          	mv	a0,a5
 cb0:	00000593          	li	a1,0
 cb4:	138000ef          	jal	ra,dec <memset>
 cb8:	00050793          	mv	a5,a0
 cbc:	00c12083          	lw	ra,12(sp)
 cc0:	00078513          	mv	a0,a5
 cc4:	01010113          	addi	sp,sp,16
 cc8:	00008067          	ret
 ccc:	00c12083          	lw	ra,12(sp)
 cd0:	00000793          	li	a5,0
 cd4:	00078513          	mv	a0,a5
 cd8:	01010113          	addi	sp,sp,16
 cdc:	00008067          	ret

00000ce0 <realloc_beebs>:
 ce0:	00012737          	lui	a4,0x12
 ce4:	5e872783          	lw	a5,1512(a4) # 125e8 <heap_requested>
 ce8:	00012637          	lui	a2,0x12
 cec:	5f062683          	lw	a3,1520(a2) # 125f0 <heap_ptr>
 cf0:	00012837          	lui	a6,0x12
 cf4:	5ec82803          	lw	a6,1516(a6) # 125ec <heap_end>
 cf8:	00b787b3          	add	a5,a5,a1
 cfc:	5ef72423          	sw	a5,1512(a4)
 d00:	00b687b3          	add	a5,a3,a1
 d04:	02f86a63          	bltu	a6,a5,d38 <realloc_beebs+0x58>
 d08:	02058863          	beqz	a1,d38 <realloc_beebs+0x58>
 d0c:	5ef62823          	sw	a5,1520(a2)
 d10:	02050063          	beqz	a0,d30 <realloc_beebs+0x50>
 d14:	00068793          	mv	a5,a3
 d18:	00b505b3          	add	a1,a0,a1
 d1c:	00054703          	lbu	a4,0(a0)
 d20:	00150513          	addi	a0,a0,1
 d24:	00178793          	addi	a5,a5,1
 d28:	fee78fa3          	sb	a4,-1(a5)
 d2c:	feb518e3          	bne	a0,a1,d1c <realloc_beebs+0x3c>
 d30:	00068513          	mv	a0,a3
 d34:	00008067          	ret
 d38:	00000693          	li	a3,0
 d3c:	00068513          	mv	a0,a3
 d40:	00008067          	ret

00000d44 <free_beebs>:
 d44:	00008067          	ret

00000d48 <__mulsi3>:
 d48:	00050613          	mv	a2,a0
 d4c:	00000513          	li	a0,0
 d50:	0015f693          	andi	a3,a1,1
 d54:	00068463          	beqz	a3,d5c <__mulsi3+0x14>
 d58:	00c50533          	add	a0,a0,a2
 d5c:	0015d593          	srli	a1,a1,0x1
 d60:	00161613          	slli	a2,a2,0x1
 d64:	fe0596e3          	bnez	a1,d50 <__mulsi3+0x8>
 d68:	00008067          	ret

00000d6c <memcmp>:
 d6c:	00300793          	li	a5,3
 d70:	04c7f063          	bgeu	a5,a2,db0 <memcmp+0x44>
 d74:	00b567b3          	or	a5,a0,a1
 d78:	0037f793          	andi	a5,a5,3
 d7c:	00300693          	li	a3,3
 d80:	00078a63          	beqz	a5,d94 <memcmp+0x28>
 d84:	fff60713          	addi	a4,a2,-1
 d88:	0300006f          	j	db8 <memcmp+0x4c>
 d8c:	00000513          	li	a0,0
 d90:	00008067          	ret
 d94:	00052703          	lw	a4,0(a0)
 d98:	0005a783          	lw	a5,0(a1)
 d9c:	00f71a63          	bne	a4,a5,db0 <memcmp+0x44>
 da0:	00450513          	addi	a0,a0,4
 da4:	00458593          	addi	a1,a1,4
 da8:	ffc60613          	addi	a2,a2,-4
 dac:	fec6e4e3          	bltu	a3,a2,d94 <memcmp+0x28>
 db0:	fff60713          	addi	a4,a2,-1
 db4:	fc060ce3          	beqz	a2,d8c <memcmp+0x20>
 db8:	00050793          	mv	a5,a0
 dbc:	00170713          	addi	a4,a4,1
 dc0:	00e50533          	add	a0,a0,a4
 dc4:	0007c703          	lbu	a4,0(a5)
 dc8:	0005c683          	lbu	a3,0(a1)
 dcc:	00d71c63          	bne	a4,a3,de4 <memcmp+0x78>
 dd0:	00178793          	addi	a5,a5,1
 dd4:	00158593          	addi	a1,a1,1
 dd8:	fea796e3          	bne	a5,a0,dc4 <memcmp+0x58>
 ddc:	00000513          	li	a0,0
 de0:	00008067          	ret
 de4:	40d70533          	sub	a0,a4,a3
 de8:	00008067          	ret

00000dec <memset>:
 dec:	00f00313          	li	t1,15
 df0:	00050713          	mv	a4,a0
 df4:	02c37e63          	bgeu	t1,a2,e30 <memset+0x44>
 df8:	00f77793          	andi	a5,a4,15
 dfc:	0a079063          	bnez	a5,e9c <memset+0xb0>
 e00:	08059263          	bnez	a1,e84 <memset+0x98>
 e04:	ff067693          	andi	a3,a2,-16
 e08:	00f67613          	andi	a2,a2,15
 e0c:	00e686b3          	add	a3,a3,a4
 e10:	00b72023          	sw	a1,0(a4)
 e14:	00b72223          	sw	a1,4(a4)
 e18:	00b72423          	sw	a1,8(a4)
 e1c:	00b72623          	sw	a1,12(a4)
 e20:	01070713          	addi	a4,a4,16
 e24:	fed766e3          	bltu	a4,a3,e10 <memset+0x24>
 e28:	00061463          	bnez	a2,e30 <memset+0x44>
 e2c:	00008067          	ret
 e30:	40c306b3          	sub	a3,t1,a2
 e34:	00269693          	slli	a3,a3,0x2
 e38:	00000297          	auipc	t0,0x0
 e3c:	005686b3          	add	a3,a3,t0
 e40:	00c68067          	jr	12(a3)
 e44:	00b70723          	sb	a1,14(a4)
 e48:	00b706a3          	sb	a1,13(a4)
 e4c:	00b70623          	sb	a1,12(a4)
 e50:	00b705a3          	sb	a1,11(a4)
 e54:	00b70523          	sb	a1,10(a4)
 e58:	00b704a3          	sb	a1,9(a4)
 e5c:	00b70423          	sb	a1,8(a4)
 e60:	00b703a3          	sb	a1,7(a4)
 e64:	00b70323          	sb	a1,6(a4)
 e68:	00b702a3          	sb	a1,5(a4)
 e6c:	00b70223          	sb	a1,4(a4)
 e70:	00b701a3          	sb	a1,3(a4)
 e74:	00b70123          	sb	a1,2(a4)
 e78:	00b700a3          	sb	a1,1(a4)
 e7c:	00b70023          	sb	a1,0(a4)
 e80:	00008067          	ret
 e84:	0ff5f593          	zext.b	a1,a1
 e88:	00859693          	slli	a3,a1,0x8
 e8c:	00d5e5b3          	or	a1,a1,a3
 e90:	01059693          	slli	a3,a1,0x10
 e94:	00d5e5b3          	or	a1,a1,a3
 e98:	f6dff06f          	j	e04 <memset+0x18>
 e9c:	00279693          	slli	a3,a5,0x2
 ea0:	00000297          	auipc	t0,0x0
 ea4:	005686b3          	add	a3,a3,t0
 ea8:	00008293          	mv	t0,ra
 eac:	fa0680e7          	jalr	-96(a3)
 eb0:	00028093          	mv	ra,t0
 eb4:	ff078793          	addi	a5,a5,-16
 eb8:	40f70733          	sub	a4,a4,a5
 ebc:	00f60633          	add	a2,a2,a5
 ec0:	f6c378e3          	bgeu	t1,a2,e30 <memset+0x44>
 ec4:	f3dff06f          	j	e00 <memset+0x14>

Disassembly of section .text.startup:

00000ec8 <main>:
 ec8:	fe010113          	addi	sp,sp,-32
 ecc:	00112e23          	sw	ra,28(sp)
 ed0:	9f0ff0ef          	jal	ra,c0 <initialise_board>
 ed4:	c6dff0ef          	jal	ra,b40 <initialise_benchmark>
 ed8:	00100513          	li	a0,1
 edc:	c69ff0ef          	jal	ra,b44 <warm_caches>
 ee0:	9e4ff0ef          	jal	ra,c4 <start_trigger>
 ee4:	c79ff0ef          	jal	ra,b5c <benchmark>
 ee8:	00a12623          	sw	a0,12(sp)
 eec:	a04ff0ef          	jal	ra,f0 <stop_trigger>
 ef0:	00c12503          	lw	a0,12(sp)
 ef4:	c1dff0ef          	jal	ra,b10 <verify_benchmark>
 ef8:	00051a63          	bnez	a0,f0c <main+0x44>
 efc:	110007b7          	lui	a5,0x11000
 f00:	fff00713          	li	a4,-1
 f04:	00e7a823          	sw	a4,16(a5) # 11000010 <seed+0x10feda1c>
 f08:	00e7aa23          	sw	a4,20(a5)
 f0c:	110007b7          	lui	a5,0x11000
 f10:	00100713          	li	a4,1
 f14:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10feda8c>
 f18:	0000006f          	j	f18 <main+0x50>
