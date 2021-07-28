
crc32.elf:     file format elf32-littleriscv


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
  84:	4f0000ef          	jal	ra,574 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
  88:	00251513          	slli	a0,a0,0x2
  8c:	110007b7          	lui	a5,0x11000
  90:	00a787b3          	add	a5,a5,a0
  94:	00b7a023          	sw	a1,0(a5) # 11000000 <seed+0x10fefbec>
  98:	00008067          	ret

0000009c <readFromCtrl>:
  9c:	00251513          	slli	a0,a0,0x2
  a0:	110007b7          	lui	a5,0x11000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007a503          	lw	a0,0(a5) # 11000000 <seed+0x10fefbec>
  ac:	00008067          	ret

000000b0 <setIntr>:
  b0:	110007b7          	lui	a5,0x11000
  b4:	00100713          	li	a4,1
  b8:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fefc6c>
  bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
  c0:	00008067          	ret

000000c4 <start_trigger>:
  c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <seed+0xfbdc>
  c8:	01c00513          	li	a0,28
  cc:	00112623          	sw	ra,12(sp)
  d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
  d4:	00c12083          	lw	ra,12(sp)
  d8:	000107b7          	lui	a5,0x10
  dc:	41f55713          	srai	a4,a0,0x1f
  e0:	40a7a023          	sw	a0,1024(a5) # 10400 <start_time>
  e4:	40e7a223          	sw	a4,1028(a5)
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
 114:	4007a583          	lw	a1,1024(a5) # 10400 <start_time>
 118:	4047a703          	lw	a4,1028(a5)
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

00000150 <benchmark_body>:
 150:	fe010113          	addi	sp,sp,-32
 154:	00112e23          	sw	ra,28(sp)
 158:	00812c23          	sw	s0,24(sp)
 15c:	00912a23          	sw	s1,20(sp)
 160:	01212823          	sw	s2,16(sp)
 164:	01312623          	sw	s3,12(sp)
 168:	01412423          	sw	s4,8(sp)
 16c:	04a05c63          	blez	a0,1c4 <benchmark_body+0x74>
 170:	00010937          	lui	s2,0x10
 174:	00050993          	mv	s3,a0
 178:	00000a13          	li	s4,0
 17c:	00090913          	mv	s2,s2
 180:	00000513          	li	a0,0
 184:	180000ef          	jal	ra,304 <srand_beebs>
 188:	40000493          	li	s1,1024
 18c:	fff00413          	li	s0,-1
 190:	114000ef          	jal	ra,2a4 <rand_beebs>
 194:	00a447b3          	xor	a5,s0,a0
 198:	0ff7f793          	zext.b	a5,a5
 19c:	00279793          	slli	a5,a5,0x2
 1a0:	00f907b3          	add	a5,s2,a5
 1a4:	0007a783          	lw	a5,0(a5)
 1a8:	00845413          	srli	s0,s0,0x8
 1ac:	fff48493          	addi	s1,s1,-1
 1b0:	0087c433          	xor	s0,a5,s0
 1b4:	fc049ee3          	bnez	s1,190 <benchmark_body+0x40>
 1b8:	001a0a13          	addi	s4,s4,1
 1bc:	fd4992e3          	bne	s3,s4,180 <benchmark_body+0x30>
 1c0:	fff44413          	not	s0,s0
 1c4:	01141413          	slli	s0,s0,0x11
 1c8:	01c12083          	lw	ra,28(sp)
 1cc:	01145513          	srli	a0,s0,0x11
 1d0:	01812403          	lw	s0,24(sp)
 1d4:	01412483          	lw	s1,20(sp)
 1d8:	01012903          	lw	s2,16(sp)
 1dc:	00c12983          	lw	s3,12(sp)
 1e0:	00812a03          	lw	s4,8(sp)
 1e4:	02010113          	addi	sp,sp,32
 1e8:	00008067          	ret

000001ec <crc32pseudo>:
 1ec:	ff010113          	addi	sp,sp,-16
 1f0:	01212023          	sw	s2,0(sp)
 1f4:	00010937          	lui	s2,0x10
 1f8:	00812423          	sw	s0,8(sp)
 1fc:	00912223          	sw	s1,4(sp)
 200:	00112623          	sw	ra,12(sp)
 204:	40000493          	li	s1,1024
 208:	fff00413          	li	s0,-1
 20c:	00090913          	mv	s2,s2
 210:	094000ef          	jal	ra,2a4 <rand_beebs>
 214:	00a447b3          	xor	a5,s0,a0
 218:	0ff7f793          	zext.b	a5,a5
 21c:	00279793          	slli	a5,a5,0x2
 220:	00f907b3          	add	a5,s2,a5
 224:	0007a783          	lw	a5,0(a5)
 228:	00845413          	srli	s0,s0,0x8
 22c:	fff48493          	addi	s1,s1,-1
 230:	0087c433          	xor	s0,a5,s0
 234:	fc049ee3          	bnez	s1,210 <crc32pseudo+0x24>
 238:	00c12083          	lw	ra,12(sp)
 23c:	fff44513          	not	a0,s0
 240:	00812403          	lw	s0,8(sp)
 244:	00412483          	lw	s1,4(sp)
 248:	00012903          	lw	s2,0(sp)
 24c:	01010113          	addi	sp,sp,16
 250:	00008067          	ret

00000254 <initialise_benchmark>:
 254:	00008067          	ret

00000258 <warm_caches>:
 258:	ff010113          	addi	sp,sp,-16
 25c:	00112623          	sw	ra,12(sp)
 260:	ef1ff0ef          	jal	ra,150 <benchmark_body>
 264:	00c12083          	lw	ra,12(sp)
 268:	01010113          	addi	sp,sp,16
 26c:	00008067          	ret

00000270 <benchmark>:
 270:	00004537          	lui	a0,0x4
 274:	ff010113          	addi	sp,sp,-16
 278:	8a450513          	addi	a0,a0,-1884 # 38a4 <main+0x3330>
 27c:	00112623          	sw	ra,12(sp)
 280:	ed1ff0ef          	jal	ra,150 <benchmark_body>
 284:	00c12083          	lw	ra,12(sp)
 288:	01010113          	addi	sp,sp,16
 28c:	00008067          	ret

00000290 <verify_benchmark>:
 290:	ffffd7b7          	lui	a5,0xffffd
 294:	35778793          	addi	a5,a5,855 # ffffd357 <seed+0xfffecf43>
 298:	00f50533          	add	a0,a0,a5
 29c:	00153513          	seqz	a0,a0
 2a0:	00008067          	ret

000002a4 <rand_beebs>:
 2a4:	000106b7          	lui	a3,0x10
 2a8:	4146a703          	lw	a4,1044(a3) # 10414 <seed>
 2ac:	00871793          	slli	a5,a4,0x8
 2b0:	40e787b3          	sub	a5,a5,a4
 2b4:	00379793          	slli	a5,a5,0x3
 2b8:	00e787b3          	add	a5,a5,a4
 2bc:	00779793          	slli	a5,a5,0x7
 2c0:	00e787b3          	add	a5,a5,a4
 2c4:	00379793          	slli	a5,a5,0x3
 2c8:	40e787b3          	sub	a5,a5,a4
 2cc:	00579613          	slli	a2,a5,0x5
 2d0:	00c78533          	add	a0,a5,a2
 2d4:	00251513          	slli	a0,a0,0x2
 2d8:	40e50533          	sub	a0,a0,a4
 2dc:	00251513          	slli	a0,a0,0x2
 2e0:	000037b7          	lui	a5,0x3
 2e4:	00e50533          	add	a0,a0,a4
 2e8:	03978793          	addi	a5,a5,57 # 3039 <main+0x2ac5>
 2ec:	00f50533          	add	a0,a0,a5
 2f0:	00151513          	slli	a0,a0,0x1
 2f4:	00155513          	srli	a0,a0,0x1
 2f8:	40a6aa23          	sw	a0,1044(a3)
 2fc:	01055513          	srli	a0,a0,0x10
 300:	00008067          	ret

00000304 <srand_beebs>:
 304:	000107b7          	lui	a5,0x10
 308:	40a7aa23          	sw	a0,1044(a5) # 10414 <seed>
 30c:	00008067          	ret

00000310 <init_heap_beebs>:
 310:	000107b7          	lui	a5,0x10
 314:	00b505b3          	add	a1,a0,a1
 318:	40a7a823          	sw	a0,1040(a5) # 10410 <heap_ptr>
 31c:	000107b7          	lui	a5,0x10
 320:	40b7a623          	sw	a1,1036(a5) # 1040c <heap_end>
 324:	000107b7          	lui	a5,0x10
 328:	4007a423          	sw	zero,1032(a5) # 10408 <heap_requested>
 32c:	00008067          	ret

00000330 <check_heap_beebs>:
 330:	000107b7          	lui	a5,0x10
 334:	4087a703          	lw	a4,1032(a5) # 10408 <heap_requested>
 338:	000107b7          	lui	a5,0x10
 33c:	40c7a783          	lw	a5,1036(a5) # 1040c <heap_end>
 340:	00e50533          	add	a0,a0,a4
 344:	00a7b533          	sltu	a0,a5,a0
 348:	00154513          	xori	a0,a0,1
 34c:	00008067          	ret

00000350 <malloc_beebs>:
 350:	000106b7          	lui	a3,0x10
 354:	4086a783          	lw	a5,1032(a3) # 10408 <heap_requested>
 358:	00010637          	lui	a2,0x10
 35c:	41062703          	lw	a4,1040(a2) # 10410 <heap_ptr>
 360:	000105b7          	lui	a1,0x10
 364:	40c5a583          	lw	a1,1036(a1) # 1040c <heap_end>
 368:	00a787b3          	add	a5,a5,a0
 36c:	40f6a423          	sw	a5,1032(a3)
 370:	00a707b3          	add	a5,a4,a0
 374:	00f5ea63          	bltu	a1,a5,388 <malloc_beebs+0x38>
 378:	00050863          	beqz	a0,388 <malloc_beebs+0x38>
 37c:	40f62823          	sw	a5,1040(a2)
 380:	00070513          	mv	a0,a4
 384:	00008067          	ret
 388:	00000713          	li	a4,0
 38c:	00070513          	mv	a0,a4
 390:	00008067          	ret

00000394 <calloc_beebs>:
 394:	ff010113          	addi	sp,sp,-16
 398:	00112623          	sw	ra,12(sp)
 39c:	0d8000ef          	jal	ra,474 <__mulsi3>
 3a0:	000106b7          	lui	a3,0x10
 3a4:	4086a703          	lw	a4,1032(a3) # 10408 <heap_requested>
 3a8:	000105b7          	lui	a1,0x10
 3ac:	00050613          	mv	a2,a0
 3b0:	4105a783          	lw	a5,1040(a1) # 10410 <heap_ptr>
 3b4:	00010537          	lui	a0,0x10
 3b8:	40c52503          	lw	a0,1036(a0) # 1040c <heap_end>
 3bc:	00c70733          	add	a4,a4,a2
 3c0:	40e6a423          	sw	a4,1032(a3)
 3c4:	00c78733          	add	a4,a5,a2
 3c8:	02e56863          	bltu	a0,a4,3f8 <calloc_beebs+0x64>
 3cc:	02060663          	beqz	a2,3f8 <calloc_beebs+0x64>
 3d0:	40e5a823          	sw	a4,1040(a1)
 3d4:	00078a63          	beqz	a5,3e8 <calloc_beebs+0x54>
 3d8:	00078513          	mv	a0,a5
 3dc:	00000593          	li	a1,0
 3e0:	0b8000ef          	jal	ra,498 <memset>
 3e4:	00050793          	mv	a5,a0
 3e8:	00c12083          	lw	ra,12(sp)
 3ec:	00078513          	mv	a0,a5
 3f0:	01010113          	addi	sp,sp,16
 3f4:	00008067          	ret
 3f8:	00c12083          	lw	ra,12(sp)
 3fc:	00000793          	li	a5,0
 400:	00078513          	mv	a0,a5
 404:	01010113          	addi	sp,sp,16
 408:	00008067          	ret

0000040c <realloc_beebs>:
 40c:	00010737          	lui	a4,0x10
 410:	40872783          	lw	a5,1032(a4) # 10408 <heap_requested>
 414:	00010637          	lui	a2,0x10
 418:	41062683          	lw	a3,1040(a2) # 10410 <heap_ptr>
 41c:	00010837          	lui	a6,0x10
 420:	40c82803          	lw	a6,1036(a6) # 1040c <heap_end>
 424:	00b787b3          	add	a5,a5,a1
 428:	40f72423          	sw	a5,1032(a4)
 42c:	00b687b3          	add	a5,a3,a1
 430:	02f86a63          	bltu	a6,a5,464 <realloc_beebs+0x58>
 434:	02058863          	beqz	a1,464 <realloc_beebs+0x58>
 438:	40f62823          	sw	a5,1040(a2)
 43c:	02050063          	beqz	a0,45c <realloc_beebs+0x50>
 440:	00068793          	mv	a5,a3
 444:	00b505b3          	add	a1,a0,a1
 448:	00054703          	lbu	a4,0(a0)
 44c:	00150513          	addi	a0,a0,1
 450:	00178793          	addi	a5,a5,1
 454:	fee78fa3          	sb	a4,-1(a5)
 458:	feb518e3          	bne	a0,a1,448 <realloc_beebs+0x3c>
 45c:	00068513          	mv	a0,a3
 460:	00008067          	ret
 464:	00000693          	li	a3,0
 468:	00068513          	mv	a0,a3
 46c:	00008067          	ret

00000470 <free_beebs>:
 470:	00008067          	ret

00000474 <__mulsi3>:
 474:	00050613          	mv	a2,a0
 478:	00000513          	li	a0,0
 47c:	0015f693          	andi	a3,a1,1
 480:	00068463          	beqz	a3,488 <__mulsi3+0x14>
 484:	00c50533          	add	a0,a0,a2
 488:	0015d593          	srli	a1,a1,0x1
 48c:	00161613          	slli	a2,a2,0x1
 490:	fe0596e3          	bnez	a1,47c <__mulsi3+0x8>
 494:	00008067          	ret

00000498 <memset>:
 498:	00f00313          	li	t1,15
 49c:	00050713          	mv	a4,a0
 4a0:	02c37e63          	bgeu	t1,a2,4dc <memset+0x44>
 4a4:	00f77793          	andi	a5,a4,15
 4a8:	0a079063          	bnez	a5,548 <memset+0xb0>
 4ac:	08059263          	bnez	a1,530 <memset+0x98>
 4b0:	ff067693          	andi	a3,a2,-16
 4b4:	00f67613          	andi	a2,a2,15
 4b8:	00e686b3          	add	a3,a3,a4
 4bc:	00b72023          	sw	a1,0(a4)
 4c0:	00b72223          	sw	a1,4(a4)
 4c4:	00b72423          	sw	a1,8(a4)
 4c8:	00b72623          	sw	a1,12(a4)
 4cc:	01070713          	addi	a4,a4,16
 4d0:	fed766e3          	bltu	a4,a3,4bc <memset+0x24>
 4d4:	00061463          	bnez	a2,4dc <memset+0x44>
 4d8:	00008067          	ret
 4dc:	40c306b3          	sub	a3,t1,a2
 4e0:	00269693          	slli	a3,a3,0x2
 4e4:	00000297          	auipc	t0,0x0
 4e8:	005686b3          	add	a3,a3,t0
 4ec:	00c68067          	jr	12(a3)
 4f0:	00b70723          	sb	a1,14(a4)
 4f4:	00b706a3          	sb	a1,13(a4)
 4f8:	00b70623          	sb	a1,12(a4)
 4fc:	00b705a3          	sb	a1,11(a4)
 500:	00b70523          	sb	a1,10(a4)
 504:	00b704a3          	sb	a1,9(a4)
 508:	00b70423          	sb	a1,8(a4)
 50c:	00b703a3          	sb	a1,7(a4)
 510:	00b70323          	sb	a1,6(a4)
 514:	00b702a3          	sb	a1,5(a4)
 518:	00b70223          	sb	a1,4(a4)
 51c:	00b701a3          	sb	a1,3(a4)
 520:	00b70123          	sb	a1,2(a4)
 524:	00b700a3          	sb	a1,1(a4)
 528:	00b70023          	sb	a1,0(a4)
 52c:	00008067          	ret
 530:	0ff5f593          	zext.b	a1,a1
 534:	00859693          	slli	a3,a1,0x8
 538:	00d5e5b3          	or	a1,a1,a3
 53c:	01059693          	slli	a3,a1,0x10
 540:	00d5e5b3          	or	a1,a1,a3
 544:	f6dff06f          	j	4b0 <memset+0x18>
 548:	00279693          	slli	a3,a5,0x2
 54c:	00000297          	auipc	t0,0x0
 550:	005686b3          	add	a3,a3,t0
 554:	00008293          	mv	t0,ra
 558:	fa0680e7          	jalr	-96(a3)
 55c:	00028093          	mv	ra,t0
 560:	ff078793          	addi	a5,a5,-16
 564:	40f70733          	sub	a4,a4,a5
 568:	00f60633          	add	a2,a2,a5
 56c:	f6c378e3          	bgeu	t1,a2,4dc <memset+0x44>
 570:	f3dff06f          	j	4ac <memset+0x14>

Disassembly of section .text.startup:

00000574 <main>:
 574:	fe010113          	addi	sp,sp,-32
 578:	00112e23          	sw	ra,28(sp)
 57c:	b45ff0ef          	jal	ra,c0 <initialise_board>
 580:	cd5ff0ef          	jal	ra,254 <initialise_benchmark>
 584:	00100513          	li	a0,1
 588:	cd1ff0ef          	jal	ra,258 <warm_caches>
 58c:	b39ff0ef          	jal	ra,c4 <start_trigger>
 590:	ce1ff0ef          	jal	ra,270 <benchmark>
 594:	00a12623          	sw	a0,12(sp)
 598:	b59ff0ef          	jal	ra,f0 <stop_trigger>
 59c:	00c12503          	lw	a0,12(sp)
 5a0:	cf1ff0ef          	jal	ra,290 <verify_benchmark>
 5a4:	00051a63          	bnez	a0,5b8 <main+0x44>
 5a8:	110007b7          	lui	a5,0x11000
 5ac:	fff00713          	li	a4,-1
 5b0:	00e7a823          	sw	a4,16(a5) # 11000010 <seed+0x10fefbfc>
 5b4:	00e7aa23          	sw	a4,20(a5)
 5b8:	110007b7          	lui	a5,0x11000
 5bc:	00100713          	li	a4,1
 5c0:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fefc6c>
 5c4:	0000006f          	j	5c4 <main+0x50>
