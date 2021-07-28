
qrduino.elf:     file format elf32-littleriscv


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
  84:	698030ef          	jal	ra,371c <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <seed+0x10fed9bc>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <seed+0x10fed9bc>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10feda3c>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <seed+0xd9ac>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000127b7          	lui	a5,0x12
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	60a7a423          	sw	a0,1544(a5) # 12608 <start_time>
      e4:	60e7a623          	sw	a4,1548(a5)
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
     114:	6087a583          	lw	a1,1544(a5) # 12608 <start_time>
     118:	60c7a703          	lw	a4,1548(a5)
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
     150:	0ca05463          	blez	a0,218 <benchmark_body+0xc8>
     154:	fd010113          	addi	sp,sp,-48
     158:	01412c23          	sw	s4,24(sp)
     15c:	00010a37          	lui	s4,0x10
     160:	02812423          	sw	s0,40(sp)
     164:	02912223          	sw	s1,36(sp)
     168:	03212023          	sw	s2,32(sp)
     16c:	01312e23          	sw	s3,28(sp)
     170:	01512a23          	sw	s5,20(sp)
     174:	01612823          	sw	s6,16(sp)
     178:	01712623          	sw	s7,12(sp)
     17c:	02112623          	sw	ra,44(sp)
     180:	00050993          	mv	s3,a0
     184:	00000493          	li	s1,0
     188:	00012937          	lui	s2,0x12
     18c:	5d4a0a13          	addi	s4,s4,1492 # 105d4 <eccblocks+0x280>
     190:	00012437          	lui	s0,0x12
     194:	00010bb7          	lui	s7,0x10
     198:	00012b37          	lui	s6,0x12
     19c:	01600a93          	li	s5,22
     1a0:	000025b7          	lui	a1,0x2
     1a4:	604b8513          	addi	a0,s7,1540 # 10604 <heap>
     1a8:	61492a23          	sw	s4,1556(s2) # 12614 <encode>
     1ac:	61542823          	sw	s5,1552(s0) # 12610 <size>
     1b0:	769020ef          	jal	ra,3118 <init_heap_beebs>
     1b4:	61042583          	lw	a1,1552(s0)
     1b8:	00100513          	li	a0,1
     1bc:	00148493          	addi	s1,s1,1
     1c0:	5f1020ef          	jal	ra,2fb0 <initeccsize>
     1c4:	61042603          	lw	a2,1552(s0)
     1c8:	61492583          	lw	a1,1556(s2)
     1cc:	624b2503          	lw	a0,1572(s6) # 12624 <strinbuf>
     1d0:	150030ef          	jal	ra,3320 <memcpy>
     1d4:	5bd010ef          	jal	ra,1f90 <initframe>
     1d8:	3ed000ef          	jal	ra,dc4 <qrencode>
     1dc:	451020ef          	jal	ra,2e2c <freeframe>
     1e0:	6a1020ef          	jal	ra,3080 <freeecc>
     1e4:	fa999ee3          	bne	s3,s1,1a0 <benchmark_body+0x50>
     1e8:	02c12083          	lw	ra,44(sp)
     1ec:	02812403          	lw	s0,40(sp)
     1f0:	02412483          	lw	s1,36(sp)
     1f4:	02012903          	lw	s2,32(sp)
     1f8:	01c12983          	lw	s3,28(sp)
     1fc:	01812a03          	lw	s4,24(sp)
     200:	01412a83          	lw	s5,20(sp)
     204:	01012b03          	lw	s6,16(sp)
     208:	00c12b83          	lw	s7,12(sp)
     20c:	00000513          	li	a0,0
     210:	03010113          	addi	sp,sp,48
     214:	00008067          	ret
     218:	00000513          	li	a0,0
     21c:	00008067          	ret

00000220 <warm_caches>:
     220:	ff010113          	addi	sp,sp,-16
     224:	00112623          	sw	ra,12(sp)
     228:	f29ff0ef          	jal	ra,150 <benchmark_body>
     22c:	00c12083          	lw	ra,12(sp)
     230:	01010113          	addi	sp,sp,16
     234:	00008067          	ret

00000238 <benchmark>:
     238:	ff010113          	addi	sp,sp,-16
     23c:	25800513          	li	a0,600
     240:	00112623          	sw	ra,12(sp)
     244:	f0dff0ef          	jal	ra,150 <benchmark_body>
     248:	00c12083          	lw	ra,12(sp)
     24c:	01010113          	addi	sp,sp,16
     250:	00008067          	ret

00000254 <initialise_benchmark>:
     254:	00008067          	ret

00000258 <verify_benchmark>:
     258:	000107b7          	lui	a5,0x10
     25c:	5ec78793          	addi	a5,a5,1516 # 105ec <eccblocks+0x298>
     260:	00012637          	lui	a2,0x12
     264:	0007a303          	lw	t1,0(a5)
     268:	0047a883          	lw	a7,4(a5)
     26c:	0087a803          	lw	a6,8(a5)
     270:	00c7a683          	lw	a3,12(a5)
     274:	0107a703          	lw	a4,16(a5)
     278:	62462503          	lw	a0,1572(a2) # 12624 <strinbuf>
     27c:	0147d783          	lhu	a5,20(a5)
     280:	fd010113          	addi	sp,sp,-48
     284:	01600613          	li	a2,22
     288:	00810593          	addi	a1,sp,8
     28c:	00f11e23          	sh	a5,28(sp)
     290:	02112623          	sw	ra,44(sp)
     294:	00612423          	sw	t1,8(sp)
     298:	01112623          	sw	a7,12(sp)
     29c:	01012823          	sw	a6,16(sp)
     2a0:	00d12a23          	sw	a3,20(sp)
     2a4:	00e12c23          	sw	a4,24(sp)
     2a8:	7f9020ef          	jal	ra,32a0 <memcmp>
     2ac:	00050793          	mv	a5,a0
     2b0:	00000513          	li	a0,0
     2b4:	00078863          	beqz	a5,2c4 <verify_benchmark+0x6c>
     2b8:	02c12083          	lw	ra,44(sp)
     2bc:	03010113          	addi	sp,sp,48
     2c0:	00008067          	ret
     2c4:	00010537          	lui	a0,0x10
     2c8:	60450513          	addi	a0,a0,1540 # 10604 <heap>
     2cc:	66d020ef          	jal	ra,3138 <check_heap_beebs>
     2d0:	02c12083          	lw	ra,44(sp)
     2d4:	00a03533          	snez	a0,a0
     2d8:	03010113          	addi	sp,sp,48
     2dc:	00008067          	ret

000002e0 <badruns>:
     2e0:	000127b7          	lui	a5,0x12
     2e4:	62c7a603          	lw	a2,1580(a5) # 1262c <rlens>
     2e8:	00050813          	mv	a6,a0
     2ec:	00000793          	li	a5,0
     2f0:	00000513          	li	a0,0
     2f4:	00400593          	li	a1,4
     2f8:	00f60733          	add	a4,a2,a5
     2fc:	00074703          	lbu	a4,0(a4)
     300:	00178793          	addi	a5,a5,1
     304:	0ff7f793          	zext.b	a5,a5
     308:	ffe50693          	addi	a3,a0,-2
     30c:	00e5f463          	bgeu	a1,a4,314 <badruns+0x34>
     310:	00d70533          	add	a0,a4,a3
     314:	fef872e3          	bgeu	a6,a5,2f8 <badruns+0x18>
     318:	fff80893          	addi	a7,a6,-1
     31c:	00300793          	li	a5,3
     320:	0917d463          	bge	a5,a7,3a8 <badruns+0xc8>
     324:	00300313          	li	t1,3
     328:	00c0006f          	j	334 <badruns+0x54>
     32c:	00078313          	mv	t1,a5
     330:	0717dc63          	bge	a5,a7,3a8 <badruns+0xc8>
     334:	00f60733          	add	a4,a2,a5
     338:	ffe74683          	lbu	a3,-2(a4)
     33c:	00274583          	lbu	a1,2(a4)
     340:	00278793          	addi	a5,a5,2
     344:	0ff7f793          	zext.b	a5,a5
     348:	feb692e3          	bne	a3,a1,32c <badruns+0x4c>
     34c:	fff74583          	lbu	a1,-1(a4)
     350:	fcb69ee3          	bne	a3,a1,32c <badruns+0x4c>
     354:	00174583          	lbu	a1,1(a4)
     358:	fcd59ae3          	bne	a1,a3,32c <badruns+0x4c>
     35c:	00074e03          	lbu	t3,0(a4)
     360:	00159693          	slli	a3,a1,0x1
     364:	00b686b3          	add	a3,a3,a1
     368:	fdc692e3          	bne	a3,t3,32c <badruns+0x4c>
     36c:	ffd74583          	lbu	a1,-3(a4)
     370:	00230313          	addi	t1,t1,2
     374:	02058463          	beqz	a1,39c <badruns+0xbc>
     378:	00159e13          	slli	t3,a1,0x1
     37c:	00269693          	slli	a3,a3,0x2
     380:	00be0e33          	add	t3,t3,a1
     384:	01035c63          	bge	t1,a6,39c <badruns+0xbc>
     388:	00de5a63          	bge	t3,a3,39c <badruns+0xbc>
     38c:	00374583          	lbu	a1,3(a4)
     390:	00159713          	slli	a4,a1,0x1
     394:	00b70733          	add	a4,a4,a1
     398:	f8d74ae3          	blt	a4,a3,32c <badruns+0x4c>
     39c:	02850513          	addi	a0,a0,40
     3a0:	00078313          	mv	t1,a5
     3a4:	f917c8e3          	blt	a5,a7,334 <badruns+0x54>
     3a8:	00008067          	ret

000003ac <appendrs>:
     3ac:	fc010113          	addi	sp,sp,-64
     3b0:	00060e13          	mv	t3,a2
     3b4:	03412423          	sw	s4,40(sp)
     3b8:	03512223          	sw	s5,36(sp)
     3bc:	00050a13          	mv	s4,a0
     3c0:	00058a93          	mv	s5,a1
     3c4:	00068613          	mv	a2,a3
     3c8:	00000593          	li	a1,0
     3cc:	000e0513          	mv	a0,t3
     3d0:	03612023          	sw	s6,32(sp)
     3d4:	01812c23          	sw	s8,24(sp)
     3d8:	02112e23          	sw	ra,60(sp)
     3dc:	02812c23          	sw	s0,56(sp)
     3e0:	02912a23          	sw	s1,52(sp)
     3e4:	03212823          	sw	s2,48(sp)
     3e8:	03312623          	sw	s3,44(sp)
     3ec:	01712e23          	sw	s7,28(sp)
     3f0:	01912a23          	sw	s9,20(sp)
     3f4:	01a12823          	sw	s10,16(sp)
     3f8:	01b12623          	sw	s11,12(sp)
     3fc:	00068c13          	mv	s8,a3
     400:	00070b13          	mv	s6,a4
     404:	1ac030ef          	jal	ra,35b0 <memset>
     408:	0a0a8e63          	beqz	s5,4c4 <appendrs+0x118>
     40c:	fffa8a93          	addi	s5,s5,-1
     410:	ffec0993          	addi	s3,s8,-2
     414:	fffc0b93          	addi	s7,s8,-1
     418:	0ffafa93          	zext.b	s5,s5
     41c:	001a0793          	addi	a5,s4,1
     420:	00150d93          	addi	s11,a0,1
     424:	0ff9f993          	zext.b	s3,s3
     428:	000104b7          	lui	s1,0x10
     42c:	00050e13          	mv	t3,a0
     430:	01750d33          	add	s10,a0,s7
     434:	00fa8ab3          	add	s5,s5,a5
     438:	02048493          	addi	s1,s1,32 # 10020 <g0log>
     43c:	0ff00c93          	li	s9,255
     440:	00100413          	li	s0,1
     444:	0fe00913          	li	s2,254
     448:	013d89b3          	add	s3,s11,s3
     44c:	000a4783          	lbu	a5,0(s4)
     450:	000e4703          	lbu	a4,0(t3)
     454:	00e7c7b3          	xor	a5,a5,a4
     458:	00f487b3          	add	a5,s1,a5
     45c:	0007c303          	lbu	t1,0(a5)
     460:	0b930063          	beq	t1,s9,500 <appendrs+0x154>
     464:	03847e63          	bgeu	s0,s8,4a0 <appendrs+0xf4>
     468:	000e0513          	mv	a0,t3
     46c:	017b08b3          	add	a7,s6,s7
     470:	0008c783          	lbu	a5,0(a7)
     474:	00154803          	lbu	a6,1(a0)
     478:	fff88893          	addi	a7,a7,-1
     47c:	006787b3          	add	a5,a5,t1
     480:	00f95463          	bge	s2,a5,488 <appendrs+0xdc>
     484:	f0178793          	addi	a5,a5,-255
     488:	00f487b3          	add	a5,s1,a5
     48c:	1007c783          	lbu	a5,256(a5)
     490:	00150513          	addi	a0,a0,1
     494:	00f847b3          	xor	a5,a6,a5
     498:	fef50fa3          	sb	a5,-1(a0)
     49c:	fd351ae3          	bne	a0,s3,470 <appendrs+0xc4>
     4a0:	000b4783          	lbu	a5,0(s6)
     4a4:	006787b3          	add	a5,a5,t1
     4a8:	00f95463          	bge	s2,a5,4b0 <appendrs+0x104>
     4ac:	f0178793          	addi	a5,a5,-255
     4b0:	00f487b3          	add	a5,s1,a5
     4b4:	1007c783          	lbu	a5,256(a5)
     4b8:	00fd0023          	sb	a5,0(s10)
     4bc:	001a0a13          	addi	s4,s4,1
     4c0:	f94a96e3          	bne	s5,s4,44c <appendrs+0xa0>
     4c4:	03c12083          	lw	ra,60(sp)
     4c8:	03812403          	lw	s0,56(sp)
     4cc:	03412483          	lw	s1,52(sp)
     4d0:	03012903          	lw	s2,48(sp)
     4d4:	02c12983          	lw	s3,44(sp)
     4d8:	02812a03          	lw	s4,40(sp)
     4dc:	02412a83          	lw	s5,36(sp)
     4e0:	02012b03          	lw	s6,32(sp)
     4e4:	01c12b83          	lw	s7,28(sp)
     4e8:	01812c03          	lw	s8,24(sp)
     4ec:	01412c83          	lw	s9,20(sp)
     4f0:	01012d03          	lw	s10,16(sp)
     4f4:	00c12d83          	lw	s11,12(sp)
     4f8:	04010113          	addi	sp,sp,64
     4fc:	00008067          	ret
     500:	000e0513          	mv	a0,t3
     504:	000b8613          	mv	a2,s7
     508:	000d8593          	mv	a1,s11
     50c:	791020ef          	jal	ra,349c <memmove>
     510:	00050e13          	mv	t3,a0
     514:	00000793          	li	a5,0
     518:	fa1ff06f          	j	4b8 <appendrs+0x10c>

0000051c <applymask>:
     51c:	00700793          	li	a5,7
     520:	0aa7e0e3          	bltu	a5,a0,dc0 <applymask+0x8a4>
     524:	00010737          	lui	a4,0x10
     528:	00251793          	slli	a5,a0,0x2
     52c:	00070713          	mv	a4,a4
     530:	00e787b3          	add	a5,a5,a4
     534:	0007a783          	lw	a5,0(a5)
     538:	fc010113          	addi	sp,sp,-64
     53c:	02812c23          	sw	s0,56(sp)
     540:	03212823          	sw	s2,48(sp)
     544:	02112e23          	sw	ra,60(sp)
     548:	02912a23          	sw	s1,52(sp)
     54c:	03312623          	sw	s3,44(sp)
     550:	03412423          	sw	s4,40(sp)
     554:	03512223          	sw	s5,36(sp)
     558:	03612023          	sw	s6,32(sp)
     55c:	01712e23          	sw	s7,28(sp)
     560:	01812c23          	sw	s8,24(sp)
     564:	01912a23          	sw	s9,20(sp)
     568:	01a12823          	sw	s10,16(sp)
     56c:	01b12623          	sw	s11,12(sp)
     570:	00050913          	mv	s2,a0
     574:	00012437          	lui	s0,0x12
     578:	00078067          	jr	a5
     57c:	62944783          	lbu	a5,1577(s0) # 12629 <WD>
     580:	00000d13          	li	s10,0
     584:	00000993          	li	s3,0
     588:	1e078463          	beqz	a5,770 <applymask+0x254>
     58c:	00300a13          	li	s4,3
     590:	00012ab7          	lui	s5,0x12
     594:	00012c37          	lui	s8,0x12
     598:	00012bb7          	lui	s7,0x12
     59c:	08000b13          	li	s6,128
     5a0:	00000913          	li	s2,0
     5a4:	00000493          	li	s1,0
     5a8:	0b00006f          	j	658 <applymask+0x13c>
     5ac:	00190713          	addi	a4,s2,1
     5b0:	0ff77713          	zext.b	a4,a4
     5b4:	0a090663          	beqz	s2,660 <applymask+0x144>
     5b8:	41390933          	sub	s2,s2,s3
     5bc:	00193913          	seqz	s2,s2
     5c0:	012787b3          	add	a5,a5,s2
     5c4:	00070913          	mv	s2,a4
     5c8:	0017f793          	andi	a5,a5,1
     5cc:	06079e63          	bnez	a5,648 <applymask+0x12c>
     5d0:	769d7063          	bgeu	s10,s1,d30 <applymask+0x814>
     5d4:	00048d93          	mv	s11,s1
     5d8:	000d0c93          	mv	s9,s10
     5dc:	000d8593          	mv	a1,s11
     5e0:	000d8513          	mv	a0,s11
     5e4:	499020ef          	jal	ra,327c <__mulsi3>
     5e8:	01b50533          	add	a0,a0,s11
     5ec:	630aa703          	lw	a4,1584(s5) # 12630 <framask>
     5f0:	00155513          	srli	a0,a0,0x1
     5f4:	00ac87b3          	add	a5,s9,a0
     5f8:	0037d693          	srli	a3,a5,0x3
     5fc:	00d70733          	add	a4,a4,a3
     600:	00074703          	lbu	a4,0(a4) # 10000 <main+0xc8e4>
     604:	fff7c793          	not	a5,a5
     608:	0077f793          	andi	a5,a5,7
     60c:	40f757b3          	sra	a5,a4,a5
     610:	0017f793          	andi	a5,a5,1
     614:	02079a63          	bnez	a5,648 <applymask+0x12c>
     618:	628bc503          	lbu	a0,1576(s7) # 12628 <WDB>
     61c:	000d0593          	mv	a1,s10
     620:	45d020ef          	jal	ra,327c <__mulsi3>
     624:	620c2703          	lw	a4,1568(s8) # 12620 <qrframe>
     628:	0034d793          	srli	a5,s1,0x3
     62c:	00f50533          	add	a0,a0,a5
     630:	00a70733          	add	a4,a4,a0
     634:	00074683          	lbu	a3,0(a4)
     638:	0074f793          	andi	a5,s1,7
     63c:	40fb57b3          	sra	a5,s6,a5
     640:	00d7c7b3          	xor	a5,a5,a3
     644:	00f70023          	sb	a5,0(a4)
     648:	62944783          	lbu	a5,1577(s0)
     64c:	00148493          	addi	s1,s1,1
     650:	0ff4f493          	zext.b	s1,s1
     654:	74f4f063          	bgeu	s1,a5,d94 <applymask+0x878>
     658:	01a4f7b3          	and	a5,s1,s10
     65c:	f54918e3          	bne	s2,s4,5ac <applymask+0x90>
     660:	00100913          	li	s2,1
     664:	f65ff06f          	j	5c8 <applymask+0xac>
     668:	62944783          	lbu	a5,1577(s0)
     66c:	00000d13          	li	s10,0
     670:	00000913          	li	s2,0
     674:	0e078e63          	beqz	a5,770 <applymask+0x254>
     678:	00300993          	li	s3,3
     67c:	00012a37          	lui	s4,0x12
     680:	00012bb7          	lui	s7,0x12
     684:	00012b37          	lui	s6,0x12
     688:	08000a93          	li	s5,128
     68c:	00000c93          	li	s9,0
     690:	00000493          	li	s1,0
     694:	673c8c63          	beq	s9,s3,d0c <applymask+0x7f0>
     698:	001c8793          	addi	a5,s9,1
     69c:	0ff7f793          	zext.b	a5,a5
     6a0:	660c8663          	beqz	s9,d0c <applymask+0x7f0>
     6a4:	412c8733          	sub	a4,s9,s2
     6a8:	00173713          	seqz	a4,a4
     6ac:	00078c93          	mv	s9,a5
     6b0:	01a487b3          	add	a5,s1,s10
     6b4:	00e787b3          	add	a5,a5,a4
     6b8:	0017f793          	andi	a5,a5,1
     6bc:	06079e63          	bnez	a5,738 <applymask+0x21c>
     6c0:	669d7e63          	bgeu	s10,s1,d3c <applymask+0x820>
     6c4:	00048d93          	mv	s11,s1
     6c8:	000d0c13          	mv	s8,s10
     6cc:	000d8593          	mv	a1,s11
     6d0:	000d8513          	mv	a0,s11
     6d4:	3a9020ef          	jal	ra,327c <__mulsi3>
     6d8:	01b50533          	add	a0,a0,s11
     6dc:	630a2703          	lw	a4,1584(s4) # 12630 <framask>
     6e0:	00155513          	srli	a0,a0,0x1
     6e4:	00ac07b3          	add	a5,s8,a0
     6e8:	0037d693          	srli	a3,a5,0x3
     6ec:	00d70733          	add	a4,a4,a3
     6f0:	00074703          	lbu	a4,0(a4)
     6f4:	fff7c793          	not	a5,a5
     6f8:	0077f793          	andi	a5,a5,7
     6fc:	40f757b3          	sra	a5,a4,a5
     700:	0017f793          	andi	a5,a5,1
     704:	02079a63          	bnez	a5,738 <applymask+0x21c>
     708:	628b4503          	lbu	a0,1576(s6) # 12628 <WDB>
     70c:	000d0593          	mv	a1,s10
     710:	36d020ef          	jal	ra,327c <__mulsi3>
     714:	620ba703          	lw	a4,1568(s7) # 12620 <qrframe>
     718:	0034d793          	srli	a5,s1,0x3
     71c:	00f50533          	add	a0,a0,a5
     720:	00a70733          	add	a4,a4,a0
     724:	00074683          	lbu	a3,0(a4)
     728:	0074f793          	andi	a5,s1,7
     72c:	40fad7b3          	sra	a5,s5,a5
     730:	00d7c7b3          	xor	a5,a5,a3
     734:	00f70023          	sb	a5,0(a4)
     738:	62944783          	lbu	a5,1577(s0)
     73c:	00148493          	addi	s1,s1,1
     740:	0ff4f493          	zext.b	s1,s1
     744:	f4f4e8e3          	bltu	s1,a5,694 <applymask+0x178>
     748:	001d0d13          	addi	s10,s10,1
     74c:	00190913          	addi	s2,s2,1
     750:	0ffd7d13          	zext.b	s10,s10
     754:	0ff97913          	zext.b	s2,s2
     758:	00fd7c63          	bgeu	s10,a5,770 <applymask+0x254>
     75c:	ffd90713          	addi	a4,s2,-3
     760:	00e03733          	snez	a4,a4
     764:	40e00733          	neg	a4,a4
     768:	00e97933          	and	s2,s2,a4
     76c:	f20790e3          	bnez	a5,68c <applymask+0x170>
     770:	03c12083          	lw	ra,60(sp)
     774:	03812403          	lw	s0,56(sp)
     778:	03412483          	lw	s1,52(sp)
     77c:	03012903          	lw	s2,48(sp)
     780:	02c12983          	lw	s3,44(sp)
     784:	02812a03          	lw	s4,40(sp)
     788:	02412a83          	lw	s5,36(sp)
     78c:	02012b03          	lw	s6,32(sp)
     790:	01c12b83          	lw	s7,28(sp)
     794:	01812c03          	lw	s8,24(sp)
     798:	01412c83          	lw	s9,20(sp)
     79c:	01012d03          	lw	s10,16(sp)
     7a0:	00c12d83          	lw	s11,12(sp)
     7a4:	04010113          	addi	sp,sp,64
     7a8:	00008067          	ret
     7ac:	62944783          	lbu	a5,1577(s0)
     7b0:	00050c13          	mv	s8,a0
     7b4:	00050493          	mv	s1,a0
     7b8:	fa078ce3          	beqz	a5,770 <applymask+0x254>
     7bc:	000129b7          	lui	s3,0x12
     7c0:	00012b37          	lui	s6,0x12
     7c4:	00012ab7          	lui	s5,0x12
     7c8:	08000a13          	li	s4,128
     7cc:	0880006f          	j	854 <applymask+0x338>
     7d0:	00048c93          	mv	s9,s1
     7d4:	000c0b93          	mv	s7,s8
     7d8:	000c8593          	mv	a1,s9
     7dc:	000c8513          	mv	a0,s9
     7e0:	29d020ef          	jal	ra,327c <__mulsi3>
     7e4:	01950533          	add	a0,a0,s9
     7e8:	6309a703          	lw	a4,1584(s3) # 12630 <framask>
     7ec:	00155513          	srli	a0,a0,0x1
     7f0:	00ab87b3          	add	a5,s7,a0
     7f4:	0037d693          	srli	a3,a5,0x3
     7f8:	00d70733          	add	a4,a4,a3
     7fc:	00074703          	lbu	a4,0(a4)
     800:	fff7c793          	not	a5,a5
     804:	0077f793          	andi	a5,a5,7
     808:	40f757b3          	sra	a5,a4,a5
     80c:	0017f793          	andi	a5,a5,1
     810:	02079a63          	bnez	a5,844 <applymask+0x328>
     814:	628ac503          	lbu	a0,1576(s5) # 12628 <WDB>
     818:	000c0593          	mv	a1,s8
     81c:	261020ef          	jal	ra,327c <__mulsi3>
     820:	620b2703          	lw	a4,1568(s6) # 12620 <qrframe>
     824:	0034d793          	srli	a5,s1,0x3
     828:	00f50533          	add	a0,a0,a5
     82c:	00a70733          	add	a4,a4,a0
     830:	00074683          	lbu	a3,0(a4)
     834:	0074f793          	andi	a5,s1,7
     838:	40fa57b3          	sra	a5,s4,a5
     83c:	00d7c7b3          	xor	a5,a5,a3
     840:	00f70023          	sb	a5,0(a4)
     844:	62944783          	lbu	a5,1577(s0)
     848:	00148493          	addi	s1,s1,1
     84c:	0ff4f493          	zext.b	s1,s1
     850:	52f4f863          	bgeu	s1,a5,d80 <applymask+0x864>
     854:	009c07b3          	add	a5,s8,s1
     858:	0017f793          	andi	a5,a5,1
     85c:	fe0794e3          	bnez	a5,844 <applymask+0x328>
     860:	f69c68e3          	bltu	s8,s1,7d0 <applymask+0x2b4>
     864:	000c0c93          	mv	s9,s8
     868:	00048b93          	mv	s7,s1
     86c:	f6dff06f          	j	7d8 <applymask+0x2bc>
     870:	62944783          	lbu	a5,1577(s0)
     874:	00000c13          	li	s8,0
     878:	00000493          	li	s1,0
     87c:	00000913          	li	s2,0
     880:	ee0788e3          	beqz	a5,770 <applymask+0x254>
     884:	000129b7          	lui	s3,0x12
     888:	00012b37          	lui	s6,0x12
     88c:	00012ab7          	lui	s5,0x12
     890:	08000a13          	li	s4,128
     894:	06091e63          	bnez	s2,910 <applymask+0x3f4>
     898:	4a9c7e63          	bgeu	s8,s1,d54 <applymask+0x838>
     89c:	00048593          	mv	a1,s1
     8a0:	00048c93          	mv	s9,s1
     8a4:	000c0b93          	mv	s7,s8
     8a8:	00058513          	mv	a0,a1
     8ac:	1d1020ef          	jal	ra,327c <__mulsi3>
     8b0:	01950533          	add	a0,a0,s9
     8b4:	6309a703          	lw	a4,1584(s3) # 12630 <framask>
     8b8:	00155513          	srli	a0,a0,0x1
     8bc:	00ab87b3          	add	a5,s7,a0
     8c0:	0037d693          	srli	a3,a5,0x3
     8c4:	00d70733          	add	a4,a4,a3
     8c8:	00074703          	lbu	a4,0(a4)
     8cc:	fff7c793          	not	a5,a5
     8d0:	0077f793          	andi	a5,a5,7
     8d4:	40f757b3          	sra	a5,a4,a5
     8d8:	0017f793          	andi	a5,a5,1
     8dc:	02079a63          	bnez	a5,910 <applymask+0x3f4>
     8e0:	628ac503          	lbu	a0,1576(s5) # 12628 <WDB>
     8e4:	000c0593          	mv	a1,s8
     8e8:	195020ef          	jal	ra,327c <__mulsi3>
     8ec:	620b2703          	lw	a4,1568(s6) # 12620 <qrframe>
     8f0:	0034d793          	srli	a5,s1,0x3
     8f4:	00f50533          	add	a0,a0,a5
     8f8:	00a70733          	add	a4,a4,a0
     8fc:	00074683          	lbu	a3,0(a4)
     900:	0074f793          	andi	a5,s1,7
     904:	40fa57b3          	sra	a5,s4,a5
     908:	00d7c7b3          	xor	a5,a5,a3
     90c:	00f70023          	sb	a5,0(a4)
     910:	62944783          	lbu	a5,1577(s0)
     914:	00148493          	addi	s1,s1,1
     918:	0ff4f493          	zext.b	s1,s1
     91c:	f6f4ece3          	bltu	s1,a5,894 <applymask+0x378>
     920:	001c0c13          	addi	s8,s8,1
     924:	0ffc7c13          	zext.b	s8,s8
     928:	e4fc74e3          	bgeu	s8,a5,770 <applymask+0x254>
     92c:	00000493          	li	s1,0
     930:	001c7913          	andi	s2,s8,1
     934:	f61ff06f          	j	894 <applymask+0x378>
     938:	62944703          	lbu	a4,1577(s0)
     93c:	00000c93          	li	s9,0
     940:	00000793          	li	a5,0
     944:	00000493          	li	s1,0
     948:	e20704e3          	beqz	a4,770 <applymask+0x254>
     94c:	00300913          	li	s2,3
     950:	000129b7          	lui	s3,0x12
     954:	00012b37          	lui	s6,0x12
     958:	00012ab7          	lui	s5,0x12
     95c:	08000a13          	li	s4,128
     960:	39278e63          	beq	a5,s2,cfc <applymask+0x7e0>
     964:	38078c63          	beqz	a5,cfc <applymask+0x7e0>
     968:	00178793          	addi	a5,a5,1
     96c:	0ff7f793          	zext.b	a5,a5
     970:	62944703          	lbu	a4,1577(s0)
     974:	00148493          	addi	s1,s1,1
     978:	0ff4f493          	zext.b	s1,s1
     97c:	fee4e2e3          	bltu	s1,a4,960 <applymask+0x444>
     980:	001c8c93          	addi	s9,s9,1
     984:	0ffcfc93          	zext.b	s9,s9
     988:	00000493          	li	s1,0
     98c:	deecf2e3          	bgeu	s9,a4,770 <applymask+0x254>
     990:	000c8c13          	mv	s8,s9
     994:	00048b93          	mv	s7,s1
     998:	000c0593          	mv	a1,s8
     99c:	000c0513          	mv	a0,s8
     9a0:	0dd020ef          	jal	ra,327c <__mulsi3>
     9a4:	01850533          	add	a0,a0,s8
     9a8:	6309a783          	lw	a5,1584(s3) # 12630 <framask>
     9ac:	00155513          	srli	a0,a0,0x1
     9b0:	00ab8733          	add	a4,s7,a0
     9b4:	00375693          	srli	a3,a4,0x3
     9b8:	00d787b3          	add	a5,a5,a3
     9bc:	0007c783          	lbu	a5,0(a5)
     9c0:	fff74713          	not	a4,a4
     9c4:	00777713          	andi	a4,a4,7
     9c8:	40e7d7b3          	sra	a5,a5,a4
     9cc:	0017f793          	andi	a5,a5,1
     9d0:	fa0790e3          	bnez	a5,970 <applymask+0x454>
     9d4:	628ac503          	lbu	a0,1576(s5) # 12628 <WDB>
     9d8:	000c8593          	mv	a1,s9
     9dc:	0a1020ef          	jal	ra,327c <__mulsi3>
     9e0:	620b2703          	lw	a4,1568(s6) # 12620 <qrframe>
     9e4:	0034d793          	srli	a5,s1,0x3
     9e8:	00f50533          	add	a0,a0,a5
     9ec:	00a70733          	add	a4,a4,a0
     9f0:	00074683          	lbu	a3,0(a4)
     9f4:	0074f793          	andi	a5,s1,7
     9f8:	40fa57b3          	sra	a5,s4,a5
     9fc:	00d7c7b3          	xor	a5,a5,a3
     a00:	00f70023          	sb	a5,0(a4)
     a04:	00100793          	li	a5,1
     a08:	f69ff06f          	j	970 <applymask+0x454>
     a0c:	62944783          	lbu	a5,1577(s0)
     a10:	d60780e3          	beqz	a5,770 <applymask+0x254>
     a14:	00000d13          	li	s10,0
     a18:	00000c13          	li	s8,0
     a1c:	00000793          	li	a5,0
     a20:	00000493          	li	s1,0
     a24:	00300a13          	li	s4,3
     a28:	000129b7          	lui	s3,0x12
     a2c:	00012bb7          	lui	s7,0x12
     a30:	00012b37          	lui	s6,0x12
     a34:	08000a93          	li	s5,128
     a38:	0d479e63          	bne	a5,s4,b14 <applymask+0x5f8>
     a3c:	0e9d7063          	bgeu	s10,s1,b1c <applymask+0x600>
     a40:	00048c93          	mv	s9,s1
     a44:	000d0913          	mv	s2,s10
     a48:	000c8593          	mv	a1,s9
     a4c:	000c8513          	mv	a0,s9
     a50:	02d020ef          	jal	ra,327c <__mulsi3>
     a54:	01950533          	add	a0,a0,s9
     a58:	6309a703          	lw	a4,1584(s3) # 12630 <framask>
     a5c:	00155513          	srli	a0,a0,0x1
     a60:	00a907b3          	add	a5,s2,a0
     a64:	0037d693          	srli	a3,a5,0x3
     a68:	00d70733          	add	a4,a4,a3
     a6c:	00074703          	lbu	a4,0(a4)
     a70:	fff7c793          	not	a5,a5
     a74:	0077f793          	andi	a5,a5,7
     a78:	40f757b3          	sra	a5,a4,a5
     a7c:	0017f793          	andi	a5,a5,1
     a80:	02079a63          	bnez	a5,ab4 <applymask+0x598>
     a84:	628b4503          	lbu	a0,1576(s6) # 12628 <WDB>
     a88:	000d0593          	mv	a1,s10
     a8c:	7f0020ef          	jal	ra,327c <__mulsi3>
     a90:	620ba703          	lw	a4,1568(s7) # 12620 <qrframe>
     a94:	0034d793          	srli	a5,s1,0x3
     a98:	00f50533          	add	a0,a0,a5
     a9c:	00a70733          	add	a4,a4,a0
     aa0:	00074683          	lbu	a3,0(a4)
     aa4:	0074f793          	andi	a5,s1,7
     aa8:	40fad7b3          	sra	a5,s5,a5
     aac:	00d7c7b3          	xor	a5,a5,a3
     ab0:	00f70023          	sb	a5,0(a4)
     ab4:	62944703          	lbu	a4,1577(s0)
     ab8:	00148493          	addi	s1,s1,1
     abc:	0ff4f493          	zext.b	s1,s1
     ac0:	00100793          	li	a5,1
     ac4:	00e4fe63          	bgeu	s1,a4,ae0 <applymask+0x5c4>
     ac8:	62944703          	lbu	a4,1577(s0)
     acc:	00148493          	addi	s1,s1,1
     ad0:	00178793          	addi	a5,a5,1
     ad4:	0ff4f493          	zext.b	s1,s1
     ad8:	0ff7f793          	zext.b	a5,a5
     adc:	f4e4eee3          	bltu	s1,a4,a38 <applymask+0x51c>
     ae0:	001d0d13          	addi	s10,s10,1
     ae4:	001c0793          	addi	a5,s8,1
     ae8:	0ffd7d13          	zext.b	s10,s10
     aec:	0ff7f793          	zext.b	a5,a5
     af0:	c8ed70e3          	bgeu	s10,a4,770 <applymask+0x254>
     af4:	ffd78693          	addi	a3,a5,-3
     af8:	00d036b3          	snez	a3,a3
     afc:	40d006b3          	neg	a3,a3
     b00:	00d7f7b3          	and	a5,a5,a3
     b04:	c60706e3          	beqz	a4,770 <applymask+0x254>
     b08:	00078c13          	mv	s8,a5
     b0c:	00000493          	li	s1,0
     b10:	f34786e3          	beq	a5,s4,a3c <applymask+0x520>
     b14:	fa079ae3          	bnez	a5,ac8 <applymask+0x5ac>
     b18:	f29d64e3          	bltu	s10,s1,a40 <applymask+0x524>
     b1c:	000d0c93          	mv	s9,s10
     b20:	00048913          	mv	s2,s1
     b24:	f25ff06f          	j	a48 <applymask+0x52c>
     b28:	62944783          	lbu	a5,1577(s0)
     b2c:	00000d13          	li	s10,0
     b30:	00000c93          	li	s9,0
     b34:	c2078ee3          	beqz	a5,770 <applymask+0x254>
     b38:	00012937          	lui	s2,0x12
     b3c:	00012ab7          	lui	s5,0x12
     b40:	00012a37          	lui	s4,0x12
     b44:	08000993          	li	s3,128
     b48:	00300493          	li	s1,3
     b4c:	00000b13          	li	s6,0
     b50:	00000c13          	li	s8,0
     b54:	060c9e63          	bnez	s9,bd0 <applymask+0x6b4>
     b58:	1f6d7863          	bgeu	s10,s6,d48 <applymask+0x82c>
     b5c:	000b0d93          	mv	s11,s6
     b60:	000d0b93          	mv	s7,s10
     b64:	000d8593          	mv	a1,s11
     b68:	000d8513          	mv	a0,s11
     b6c:	710020ef          	jal	ra,327c <__mulsi3>
     b70:	01b50533          	add	a0,a0,s11
     b74:	63092603          	lw	a2,1584(s2) # 12630 <framask>
     b78:	00155513          	srli	a0,a0,0x1
     b7c:	00ab87b3          	add	a5,s7,a0
     b80:	0037d713          	srli	a4,a5,0x3
     b84:	00e60633          	add	a2,a2,a4
     b88:	00064703          	lbu	a4,0(a2)
     b8c:	fff7c793          	not	a5,a5
     b90:	0077f793          	andi	a5,a5,7
     b94:	40f757b3          	sra	a5,a4,a5
     b98:	0017f793          	andi	a5,a5,1
     b9c:	02079a63          	bnez	a5,bd0 <applymask+0x6b4>
     ba0:	628a4503          	lbu	a0,1576(s4) # 12628 <WDB>
     ba4:	000d0593          	mv	a1,s10
     ba8:	6d4020ef          	jal	ra,327c <__mulsi3>
     bac:	620aa703          	lw	a4,1568(s5) # 12620 <qrframe>
     bb0:	003b5793          	srli	a5,s6,0x3
     bb4:	00f50533          	add	a0,a0,a5
     bb8:	00a70733          	add	a4,a4,a0
     bbc:	00074683          	lbu	a3,0(a4)
     bc0:	007b7793          	andi	a5,s6,7
     bc4:	40f9d7b3          	sra	a5,s3,a5
     bc8:	00d7c7b3          	xor	a5,a5,a3
     bcc:	00f70023          	sb	a5,0(a4)
     bd0:	62944783          	lbu	a5,1577(s0)
     bd4:	001b0693          	addi	a3,s6,1
     bd8:	001c0713          	addi	a4,s8,1
     bdc:	0ff6fb13          	zext.b	s6,a3
     be0:	0ff77c13          	zext.b	s8,a4
     be4:	18fb7063          	bgeu	s6,a5,d64 <applymask+0x848>
     be8:	f69c16e3          	bne	s8,s1,b54 <applymask+0x638>
     bec:	001ccc93          	xori	s9,s9,1
     bf0:	00000c13          	li	s8,0
     bf4:	f61ff06f          	j	b54 <applymask+0x638>
     bf8:	62944783          	lbu	a5,1577(s0)
     bfc:	00000d93          	li	s11,0
     c00:	00000993          	li	s3,0
     c04:	b60786e3          	beqz	a5,770 <applymask+0x254>
     c08:	00300913          	li	s2,3
     c0c:	00012ab7          	lui	s5,0x12
     c10:	00012c37          	lui	s8,0x12
     c14:	00012bb7          	lui	s7,0x12
     c18:	01303a33          	snez	s4,s3
     c1c:	00000c93          	li	s9,0
     c20:	00000493          	li	s1,0
     c24:	0f2c8a63          	beq	s9,s2,d18 <applymask+0x7fc>
     c28:	01903733          	snez	a4,s9
     c2c:	001c8c93          	addi	s9,s9,1
     c30:	00ea7733          	and	a4,s4,a4
     c34:	0ffcfc93          	zext.b	s9,s9
     c38:	01b4f7b3          	and	a5,s1,s11
     c3c:	0017f793          	andi	a5,a5,1
     c40:	00e787b3          	add	a5,a5,a4
     c44:	08079063          	bnez	a5,cc4 <applymask+0x7a8>
     c48:	0c9dfe63          	bgeu	s11,s1,d24 <applymask+0x808>
     c4c:	00048b13          	mv	s6,s1
     c50:	000d8d13          	mv	s10,s11
     c54:	000b0593          	mv	a1,s6
     c58:	000b0513          	mv	a0,s6
     c5c:	620020ef          	jal	ra,327c <__mulsi3>
     c60:	01650533          	add	a0,a0,s6
     c64:	630aa703          	lw	a4,1584(s5) # 12630 <framask>
     c68:	00155513          	srli	a0,a0,0x1
     c6c:	00ad07b3          	add	a5,s10,a0
     c70:	0037d693          	srli	a3,a5,0x3
     c74:	00d70733          	add	a4,a4,a3
     c78:	00074703          	lbu	a4,0(a4)
     c7c:	fff7c793          	not	a5,a5
     c80:	0077f793          	andi	a5,a5,7
     c84:	40f757b3          	sra	a5,a4,a5
     c88:	0017f793          	andi	a5,a5,1
     c8c:	02079c63          	bnez	a5,cc4 <applymask+0x7a8>
     c90:	628bc503          	lbu	a0,1576(s7) # 12628 <WDB>
     c94:	000d8593          	mv	a1,s11
     c98:	5e4020ef          	jal	ra,327c <__mulsi3>
     c9c:	620c2703          	lw	a4,1568(s8) # 12620 <qrframe>
     ca0:	0034d793          	srli	a5,s1,0x3
     ca4:	00f50533          	add	a0,a0,a5
     ca8:	00a70733          	add	a4,a4,a0
     cac:	00074683          	lbu	a3,0(a4)
     cb0:	0074f793          	andi	a5,s1,7
     cb4:	08000613          	li	a2,128
     cb8:	40f657b3          	sra	a5,a2,a5
     cbc:	00d7c7b3          	xor	a5,a5,a3
     cc0:	00f70023          	sb	a5,0(a4)
     cc4:	62944783          	lbu	a5,1577(s0)
     cc8:	00148493          	addi	s1,s1,1
     ccc:	0ff4f493          	zext.b	s1,s1
     cd0:	f4f4eae3          	bltu	s1,a5,c24 <applymask+0x708>
     cd4:	001d8d93          	addi	s11,s11,1
     cd8:	00198993          	addi	s3,s3,1
     cdc:	0ffdfd93          	zext.b	s11,s11
     ce0:	0ff9f993          	zext.b	s3,s3
     ce4:	a8fdf6e3          	bgeu	s11,a5,770 <applymask+0x254>
     ce8:	ffd98793          	addi	a5,s3,-3
     cec:	00f037b3          	snez	a5,a5
     cf0:	40f007b3          	neg	a5,a5
     cf4:	00f9f9b3          	and	s3,s3,a5
     cf8:	f21ff06f          	j	c18 <applymask+0x6fc>
     cfc:	c89cfae3          	bgeu	s9,s1,990 <applymask+0x474>
     d00:	00048c13          	mv	s8,s1
     d04:	000c8b93          	mv	s7,s9
     d08:	c91ff06f          	j	998 <applymask+0x47c>
     d0c:	00100c93          	li	s9,1
     d10:	00000713          	li	a4,0
     d14:	99dff06f          	j	6b0 <applymask+0x194>
     d18:	00100c93          	li	s9,1
     d1c:	00000713          	li	a4,0
     d20:	f19ff06f          	j	c38 <applymask+0x71c>
     d24:	000d8b13          	mv	s6,s11
     d28:	00048d13          	mv	s10,s1
     d2c:	f29ff06f          	j	c54 <applymask+0x738>
     d30:	000d0d93          	mv	s11,s10
     d34:	00048c93          	mv	s9,s1
     d38:	8a5ff06f          	j	5dc <applymask+0xc0>
     d3c:	000d0d93          	mv	s11,s10
     d40:	00048c13          	mv	s8,s1
     d44:	989ff06f          	j	6cc <applymask+0x1b0>
     d48:	000d0d93          	mv	s11,s10
     d4c:	000b0b93          	mv	s7,s6
     d50:	e15ff06f          	j	b64 <applymask+0x648>
     d54:	000c0593          	mv	a1,s8
     d58:	000c0c93          	mv	s9,s8
     d5c:	00048b93          	mv	s7,s1
     d60:	b49ff06f          	j	8a8 <applymask+0x38c>
     d64:	001d0d13          	addi	s10,s10,1
     d68:	0ffd7d13          	zext.b	s10,s10
     d6c:	a0fd72e3          	bgeu	s10,a5,770 <applymask+0x254>
     d70:	001d5c93          	srli	s9,s10,0x1
     d74:	001cfc93          	andi	s9,s9,1
     d78:	dc079ae3          	bnez	a5,b4c <applymask+0x630>
     d7c:	9f5ff06f          	j	770 <applymask+0x254>
     d80:	001c0c13          	addi	s8,s8,1
     d84:	0ffc7c13          	zext.b	s8,s8
     d88:	9efc74e3          	bgeu	s8,a5,770 <applymask+0x254>
     d8c:	00090493          	mv	s1,s2
     d90:	ac5ff06f          	j	854 <applymask+0x338>
     d94:	001d0d13          	addi	s10,s10,1
     d98:	00198993          	addi	s3,s3,1
     d9c:	0ffd7d13          	zext.b	s10,s10
     da0:	0ff9f993          	zext.b	s3,s3
     da4:	9cfd76e3          	bgeu	s10,a5,770 <applymask+0x254>
     da8:	ffd98713          	addi	a4,s3,-3
     dac:	00e03733          	snez	a4,a4
     db0:	40e00733          	neg	a4,a4
     db4:	00e9f9b3          	and	s3,s3,a4
     db8:	fe079463          	bnez	a5,5a0 <applymask+0x84>
     dbc:	9b5ff06f          	j	770 <applymask+0x254>
     dc0:	00008067          	ret

00000dc4 <qrencode>:
     dc4:	fa010113          	addi	sp,sp,-96
     dc8:	03a12823          	sw	s10,48(sp)
     dcc:	00012d37          	lui	s10,0x12
     dd0:	04912a23          	sw	s1,84(sp)
     dd4:	624d2483          	lw	s1,1572(s10) # 12624 <strinbuf>
     dd8:	04112e23          	sw	ra,92(sp)
     ddc:	04812c23          	sw	s0,88(sp)
     de0:	00048513          	mv	a0,s1
     de4:	05312623          	sw	s3,76(sp)
     de8:	05212823          	sw	s2,80(sp)
     dec:	05412423          	sw	s4,72(sp)
     df0:	05512223          	sw	s5,68(sp)
     df4:	05612023          	sw	s6,64(sp)
     df8:	03712e23          	sw	s7,60(sp)
     dfc:	03812c23          	sw	s8,56(sp)
     e00:	03912a23          	sw	s9,52(sp)
     e04:	03b12623          	sw	s11,44(sp)
     e08:	085020ef          	jal	ra,368c <strlen>
     e0c:	000127b7          	lui	a5,0x12
     e10:	61a7c983          	lbu	s3,1562(a5) # 1261a <neccblk2>
     e14:	000127b7          	lui	a5,0x12
     e18:	00050413          	mv	s0,a0
     e1c:	61b7c503          	lbu	a0,1563(a5) # 1261b <neccblk1>
     e20:	000127b7          	lui	a5,0x12
     e24:	6197c583          	lbu	a1,1561(a5) # 12619 <datablkw>
     e28:	01350533          	add	a0,a0,s3
     e2c:	450020ef          	jal	ra,327c <__mulsi3>
     e30:	013509b3          	add	s3,a0,s3
     e34:	000125b7          	lui	a1,0x12
     e38:	ffe98793          	addi	a5,s3,-2
     e3c:	62a5c703          	lbu	a4,1578(a1) # 1262a <VERSION>
     e40:	18f46663          	bltu	s0,a5,fcc <qrencode+0x208>
     e44:	00900693          	li	a3,9
     e48:	ffd98413          	addi	s0,s3,-3
     e4c:	18e6e463          	bltu	a3,a4,fd4 <qrencode+0x210>
     e50:	00078413          	mv	s0,a5
     e54:	008484b3          	add	s1,s1,s0
     e58:	000480a3          	sb	zero,1(s1)
     e5c:	fff40793          	addi	a5,s0,-1
     e60:	fff00513          	li	a0,-1
     e64:	04040263          	beqz	s0,ea8 <qrencode+0xe4>
     e68:	624d2703          	lw	a4,1572(s10)
     e6c:	00278613          	addi	a2,a5,2
     e70:	00f706b3          	add	a3,a4,a5
     e74:	0006c683          	lbu	a3,0(a3)
     e78:	00c70733          	add	a4,a4,a2
     e7c:	00074603          	lbu	a2,0(a4)
     e80:	00469693          	slli	a3,a3,0x4
     e84:	00c6e6b3          	or	a3,a3,a2
     e88:	00d70023          	sb	a3,0(a4)
     e8c:	624d2703          	lw	a4,1572(s10)
     e90:	00f70733          	add	a4,a4,a5
     e94:	00074683          	lbu	a3,0(a4)
     e98:	fff78793          	addi	a5,a5,-1
     e9c:	0046d693          	srli	a3,a3,0x4
     ea0:	00d700a3          	sb	a3,1(a4)
     ea4:	fca792e3          	bne	a5,a0,e68 <qrencode+0xa4>
     ea8:	624d2603          	lw	a2,1572(s10)
     eac:	00441693          	slli	a3,s0,0x4
     eb0:	00445793          	srli	a5,s0,0x4
     eb4:	00164703          	lbu	a4,1(a2)
     eb8:	0407e793          	ori	a5,a5,64
     ebc:	00d76733          	or	a4,a4,a3
     ec0:	00e600a3          	sb	a4,1(a2)
     ec4:	624d2703          	lw	a4,1572(s10)
     ec8:	01100613          	li	a2,17
     ecc:	00f70023          	sb	a5,0(a4)
     ed0:	62a5c783          	lbu	a5,1578(a1)
     ed4:	fec00593          	li	a1,-20
     ed8:	00a7b793          	sltiu	a5,a5,10
     edc:	40f407b3          	sub	a5,s0,a5
     ee0:	00378793          	addi	a5,a5,3
     ee4:	1937e863          	bltu	a5,s3,1074 <qrencode+0x2b0>
     ee8:	000127b7          	lui	a5,0x12
     eec:	624d2483          	lw	s1,1572(s10)
     ef0:	6187ce83          	lbu	t4,1560(a5) # 12618 <eccblkwid>
     ef4:	00012cb7          	lui	s9,0x12
     ef8:	620cae03          	lw	t3,1568(s9) # 12620 <qrframe>
     efc:	01348933          	add	s2,s1,s3
     f00:	520e80e3          	beqz	t4,1c20 <qrencode+0xe5c>
     f04:	00010737          	lui	a4,0x10
     f08:	00100793          	li	a5,1
     f0c:	02070f93          	addi	t6,a4,32 # 10020 <g0log>
     f10:	00fe00a3          	sb	a5,1(t3)
     f14:	001e0513          	addi	a0,t3,1
     f18:	00100613          	li	a2,1
     f1c:	00000893          	li	a7,0
     f20:	00000793          	li	a5,0
     f24:	01f12e23          	sw	t6,28(sp)
     f28:	0fe00313          	li	t1,254
     f2c:	00100f13          	li	t5,1
     f30:	0ff00593          	li	a1,255
     f34:	011787b3          	add	a5,a5,a7
     f38:	00f35463          	bge	t1,a5,f40 <qrencode+0x17c>
     f3c:	f0178793          	addi	a5,a5,-255
     f40:	00ff87b3          	add	a5,t6,a5
     f44:	1007c703          	lbu	a4,256(a5)
     f48:	0ff67793          	zext.b	a5,a2
     f4c:	00ee0023          	sb	a4,0(t3)
     f50:	15d7f663          	bgeu	a5,t4,109c <qrencode+0x2d8>
     f54:	fff50813          	addi	a6,a0,-1
     f58:	01e500a3          	sb	t5,1(a0)
     f5c:	41180833          	sub	a6,a6,a7
     f60:	00050713          	mv	a4,a0
     f64:	0100006f          	j	f74 <qrencode+0x1b0>
     f68:	00d70023          	sb	a3,0(a4)
     f6c:	fff70713          	addi	a4,a4,-1
     f70:	04e80063          	beq	a6,a4,fb0 <qrencode+0x1ec>
     f74:	00074783          	lbu	a5,0(a4)
     f78:	fff74683          	lbu	a3,-1(a4)
     f7c:	fe0786e3          	beqz	a5,f68 <qrencode+0x1a4>
     f80:	00ff87b3          	add	a5,t6,a5
     f84:	0007c783          	lbu	a5,0(a5)
     f88:	00c787b3          	add	a5,a5,a2
     f8c:	00f35663          	bge	t1,a5,f98 <qrencode+0x1d4>
     f90:	f0178793          	addi	a5,a5,-255
     f94:	feb78ee3          	beq	a5,a1,f90 <qrencode+0x1cc>
     f98:	00ff87b3          	add	a5,t6,a5
     f9c:	1007c783          	lbu	a5,256(a5)
     fa0:	fff70713          	addi	a4,a4,-1
     fa4:	00f6c6b3          	xor	a3,a3,a5
     fa8:	00d700a3          	sb	a3,1(a4)
     fac:	fce814e3          	bne	a6,a4,f74 <qrencode+0x1b0>
     fb0:	000e4783          	lbu	a5,0(t3)
     fb4:	00188893          	addi	a7,a7,1
     fb8:	00150513          	addi	a0,a0,1
     fbc:	00ff87b3          	add	a5,t6,a5
     fc0:	0007c783          	lbu	a5,0(a5)
     fc4:	00160613          	addi	a2,a2,1
     fc8:	f6dff06f          	j	f34 <qrencode+0x170>
     fcc:	00900793          	li	a5,9
     fd0:	e8e7f2e3          	bgeu	a5,a4,e54 <qrencode+0x90>
     fd4:	008484b3          	add	s1,s1,s0
     fd8:	00048123          	sb	zero,2(s1)
     fdc:	fff40793          	addi	a5,s0,-1
     fe0:	fff00513          	li	a0,-1
     fe4:	04040263          	beqz	s0,1028 <qrencode+0x264>
     fe8:	624d2703          	lw	a4,1572(s10)
     fec:	00378613          	addi	a2,a5,3
     ff0:	00f706b3          	add	a3,a4,a5
     ff4:	0006c683          	lbu	a3,0(a3)
     ff8:	00c70733          	add	a4,a4,a2
     ffc:	00074603          	lbu	a2,0(a4)
    1000:	00469693          	slli	a3,a3,0x4
    1004:	00c6e6b3          	or	a3,a3,a2
    1008:	00d70023          	sb	a3,0(a4)
    100c:	624d2703          	lw	a4,1572(s10)
    1010:	00f70733          	add	a4,a4,a5
    1014:	00074683          	lbu	a3,0(a4)
    1018:	fff78793          	addi	a5,a5,-1
    101c:	0046d693          	srli	a3,a3,0x4
    1020:	00d70123          	sb	a3,2(a4)
    1024:	fca792e3          	bne	a5,a0,fe8 <qrencode+0x224>
    1028:	624d2503          	lw	a0,1572(s10)
    102c:	00441613          	slli	a2,s0,0x4
    1030:	00445713          	srli	a4,s0,0x4
    1034:	00254683          	lbu	a3,2(a0)
    1038:	00c45793          	srli	a5,s0,0xc
    103c:	0407e793          	ori	a5,a5,64
    1040:	00c6e6b3          	or	a3,a3,a2
    1044:	00d50123          	sb	a3,2(a0)
    1048:	624d2683          	lw	a3,1572(s10)
    104c:	01100613          	li	a2,17
    1050:	00e680a3          	sb	a4,1(a3)
    1054:	624d2703          	lw	a4,1572(s10)
    1058:	00f70023          	sb	a5,0(a4)
    105c:	62a5c783          	lbu	a5,1578(a1)
    1060:	fec00593          	li	a1,-20
    1064:	00a7b793          	sltiu	a5,a5,10
    1068:	40f407b3          	sub	a5,s0,a5
    106c:	00378793          	addi	a5,a5,3
    1070:	e737fce3          	bgeu	a5,s3,ee8 <qrencode+0x124>
    1074:	624d2703          	lw	a4,1572(s10)
    1078:	00178693          	addi	a3,a5,1
    107c:	00f70733          	add	a4,a4,a5
    1080:	00b70023          	sb	a1,0(a4)
    1084:	624d2703          	lw	a4,1572(s10)
    1088:	00278793          	addi	a5,a5,2
    108c:	00d70733          	add	a4,a4,a3
    1090:	00c70023          	sb	a2,0(a4)
    1094:	ff37e0e3          	bltu	a5,s3,1074 <qrencode+0x2b0>
    1098:	e51ff06f          	j	ee8 <qrencode+0x124>
    109c:	01c12603          	lw	a2,28(sp)
    10a0:	00000793          	li	a5,0
    10a4:	000e0693          	mv	a3,t3
    10a8:	0080006f          	j	10b0 <qrencode+0x2ec>
    10ac:	0006c703          	lbu	a4,0(a3)
    10b0:	00e60733          	add	a4,a2,a4
    10b4:	00074703          	lbu	a4,0(a4)
    10b8:	00178793          	addi	a5,a5,1
    10bc:	0ff7f793          	zext.b	a5,a5
    10c0:	00e68023          	sb	a4,0(a3)
    10c4:	00fe06b3          	add	a3,t3,a5
    10c8:	fefef2e3          	bgeu	t4,a5,10ac <qrencode+0x2e8>
    10cc:	000127b7          	lui	a5,0x12
    10d0:	61b7c783          	lbu	a5,1563(a5) # 1261b <neccblk1>
    10d4:	00012737          	lui	a4,0x12
    10d8:	61974a03          	lbu	s4,1561(a4) # 12619 <datablkw>
    10dc:	04078863          	beqz	a5,112c <qrencode+0x368>
    10e0:	000127b7          	lui	a5,0x12
    10e4:	6187c683          	lbu	a3,1560(a5) # 12618 <eccblkwid>
    10e8:	00000413          	li	s0,0
    10ec:	000a0593          	mv	a1,s4
    10f0:	620ca703          	lw	a4,1568(s9)
    10f4:	00090613          	mv	a2,s2
    10f8:	00048513          	mv	a0,s1
    10fc:	ab0ff0ef          	jal	ra,3ac <appendrs>
    1100:	000127b7          	lui	a5,0x12
    1104:	6197c583          	lbu	a1,1561(a5) # 12619 <datablkw>
    1108:	000127b7          	lui	a5,0x12
    110c:	6187c683          	lbu	a3,1560(a5) # 12618 <eccblkwid>
    1110:	000127b7          	lui	a5,0x12
    1114:	61b7c783          	lbu	a5,1563(a5) # 1261b <neccblk1>
    1118:	00140413          	addi	s0,s0,1
    111c:	00b484b3          	add	s1,s1,a1
    1120:	00d90933          	add	s2,s2,a3
    1124:	fcf466e3          	bltu	s0,a5,10f0 <qrencode+0x32c>
    1128:	00058a13          	mv	s4,a1
    112c:	000127b7          	lui	a5,0x12
    1130:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    1134:	620ca403          	lw	s0,1568(s9)
    1138:	2e078ee3          	beqz	a5,1c34 <qrencode+0xe70>
    113c:	000127b7          	lui	a5,0x12
    1140:	6187c683          	lbu	a3,1560(a5) # 12618 <eccblkwid>
    1144:	00000413          	li	s0,0
    1148:	001a0593          	addi	a1,s4,1
    114c:	620ca703          	lw	a4,1568(s9)
    1150:	00090613          	mv	a2,s2
    1154:	0ff5f593          	zext.b	a1,a1
    1158:	00048513          	mv	a0,s1
    115c:	a50ff0ef          	jal	ra,3ac <appendrs>
    1160:	000127b7          	lui	a5,0x12
    1164:	6197ca03          	lbu	s4,1561(a5) # 12619 <datablkw>
    1168:	000127b7          	lui	a5,0x12
    116c:	6187c683          	lbu	a3,1560(a5) # 12618 <eccblkwid>
    1170:	000127b7          	lui	a5,0x12
    1174:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    1178:	001a0593          	addi	a1,s4,1
    117c:	00140413          	addi	s0,s0,1
    1180:	00b484b3          	add	s1,s1,a1
    1184:	00d90933          	add	s2,s2,a3
    1188:	fcf462e3          	bltu	s0,a5,114c <qrencode+0x388>
    118c:	00012737          	lui	a4,0x12
    1190:	620ca403          	lw	s0,1568(s9)
    1194:	61b74483          	lbu	s1,1563(a4) # 1261b <neccblk1>
    1198:	2a0a08e3          	beqz	s4,1c48 <qrencode+0xe84>
    119c:	000127b7          	lui	a5,0x12
    11a0:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    11a4:	00000913          	li	s2,0
    11a8:	00000a93          	li	s5,0
    11ac:	04048063          	beqz	s1,11ec <qrencode+0x428>
    11b0:	000a8593          	mv	a1,s5
    11b4:	000a0513          	mv	a0,s4
    11b8:	0c4020ef          	jal	ra,327c <__mulsi3>
    11bc:	624d2783          	lw	a5,1572(s10)
    11c0:	00140413          	addi	s0,s0,1
    11c4:	001a8a93          	addi	s5,s5,1
    11c8:	012787b3          	add	a5,a5,s2
    11cc:	00a787b3          	add	a5,a5,a0
    11d0:	0007c783          	lbu	a5,0(a5)
    11d4:	fef40fa3          	sb	a5,-1(s0)
    11d8:	000127b7          	lui	a5,0x12
    11dc:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    11e0:	000127b7          	lui	a5,0x12
    11e4:	6197ca03          	lbu	s4,1561(a5) # 12619 <datablkw>
    11e8:	fc9ae4e3          	bltu	s5,s1,11b0 <qrencode+0x3ec>
    11ec:	000127b7          	lui	a5,0x12
    11f0:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    11f4:	06078c63          	beqz	a5,126c <qrencode+0x4a8>
    11f8:	00000a93          	li	s5,0
    11fc:	0140006f          	j	1210 <qrencode+0x44c>
    1200:	000127b7          	lui	a5,0x12
    1204:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    1208:	000127b7          	lui	a5,0x12
    120c:	6197ca03          	lbu	s4,1561(a5) # 12619 <datablkw>
    1210:	000a8593          	mv	a1,s5
    1214:	001a0513          	addi	a0,s4,1
    1218:	064020ef          	jal	ra,327c <__mulsi3>
    121c:	00050793          	mv	a5,a0
    1220:	000a0593          	mv	a1,s4
    1224:	00048513          	mv	a0,s1
    1228:	00078493          	mv	s1,a5
    122c:	050020ef          	jal	ra,327c <__mulsi3>
    1230:	624d2783          	lw	a5,1572(s10)
    1234:	00140413          	addi	s0,s0,1
    1238:	001a8a93          	addi	s5,s5,1
    123c:	012787b3          	add	a5,a5,s2
    1240:	009787b3          	add	a5,a5,s1
    1244:	00a787b3          	add	a5,a5,a0
    1248:	0007c783          	lbu	a5,0(a5)
    124c:	fef40fa3          	sb	a5,-1(s0)
    1250:	000127b7          	lui	a5,0x12
    1254:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    1258:	fafae4e3          	bltu	s5,a5,1200 <qrencode+0x43c>
    125c:	000127b7          	lui	a5,0x12
    1260:	6197ca03          	lbu	s4,1561(a5) # 12619 <datablkw>
    1264:	000127b7          	lui	a5,0x12
    1268:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    126c:	00190913          	addi	s2,s2,1
    1270:	f3496ce3          	bltu	s2,s4,11a8 <qrencode+0x3e4>
    1274:	000127b7          	lui	a5,0x12
    1278:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    127c:	06078663          	beqz	a5,12e8 <qrencode+0x524>
    1280:	00000a13          	li	s4,0
    1284:	00048513          	mv	a0,s1
    1288:	00c0006f          	j	1294 <qrencode+0x4d0>
    128c:	000127b7          	lui	a5,0x12
    1290:	61b7c503          	lbu	a0,1563(a5) # 1261b <neccblk1>
    1294:	000127b7          	lui	a5,0x12
    1298:	6197ca83          	lbu	s5,1561(a5) # 12619 <datablkw>
    129c:	00140413          	addi	s0,s0,1
    12a0:	000a8593          	mv	a1,s5
    12a4:	7d9010ef          	jal	ra,327c <__mulsi3>
    12a8:	00050493          	mv	s1,a0
    12ac:	000a0593          	mv	a1,s4
    12b0:	001a8513          	addi	a0,s5,1
    12b4:	7c9010ef          	jal	ra,327c <__mulsi3>
    12b8:	624d2783          	lw	a5,1572(s10)
    12bc:	001a0a13          	addi	s4,s4,1
    12c0:	012787b3          	add	a5,a5,s2
    12c4:	009787b3          	add	a5,a5,s1
    12c8:	00a787b3          	add	a5,a5,a0
    12cc:	0007c783          	lbu	a5,0(a5)
    12d0:	fef40fa3          	sb	a5,-1(s0)
    12d4:	000127b7          	lui	a5,0x12
    12d8:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    12dc:	fafa68e3          	bltu	s4,a5,128c <qrencode+0x4c8>
    12e0:	00012737          	lui	a4,0x12
    12e4:	61b74483          	lbu	s1,1563(a4) # 1261b <neccblk1>
    12e8:	00012737          	lui	a4,0x12
    12ec:	61874503          	lbu	a0,1560(a4) # 12618 <eccblkwid>
    12f0:	00000913          	li	s2,0
    12f4:	00f484b3          	add	s1,s1,a5
    12f8:	06050463          	beqz	a0,1360 <qrencode+0x59c>
    12fc:	01298ab3          	add	s5,s3,s2
    1300:	00000a13          	li	s4,0
    1304:	04048463          	beqz	s1,134c <qrencode+0x588>
    1308:	000a0593          	mv	a1,s4
    130c:	771010ef          	jal	ra,327c <__mulsi3>
    1310:	624d2783          	lw	a5,1572(s10)
    1314:	00140413          	addi	s0,s0,1
    1318:	001a0a13          	addi	s4,s4,1
    131c:	015787b3          	add	a5,a5,s5
    1320:	00a787b3          	add	a5,a5,a0
    1324:	0007c783          	lbu	a5,0(a5)
    1328:	fef40fa3          	sb	a5,-1(s0)
    132c:	000127b7          	lui	a5,0x12
    1330:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    1334:	000127b7          	lui	a5,0x12
    1338:	61a7c783          	lbu	a5,1562(a5) # 1261a <neccblk2>
    133c:	00f484b3          	add	s1,s1,a5
    1340:	000127b7          	lui	a5,0x12
    1344:	6187c503          	lbu	a0,1560(a5) # 12618 <eccblkwid>
    1348:	fc9a60e3          	bltu	s4,s1,1308 <qrencode+0x544>
    134c:	00190913          	addi	s2,s2,1
    1350:	faa966e3          	bltu	s2,a0,12fc <qrencode+0x538>
    1354:	00048593          	mv	a1,s1
    1358:	725010ef          	jal	ra,327c <__mulsi3>
    135c:	00a989b3          	add	s3,s3,a0
    1360:	620ca583          	lw	a1,1568(s9)
    1364:	624d2503          	lw	a0,1572(s10)
    1368:	00098613          	mv	a2,s3
    136c:	00012c37          	lui	s8,0x12
    1370:	7b1010ef          	jal	ra,3320 <memcpy>
    1374:	00012bb7          	lui	s7,0x12
    1378:	629c4583          	lbu	a1,1577(s8) # 12629 <WD>
    137c:	628bc503          	lbu	a0,1576(s7) # 12628 <WDB>
    1380:	620ca403          	lw	s0,1568(s9)
    1384:	6f9010ef          	jal	ra,327c <__mulsi3>
    1388:	000127b7          	lui	a5,0x12
    138c:	6347a583          	lw	a1,1588(a5) # 12634 <framebase>
    1390:	00050613          	mv	a2,a0
    1394:	00040513          	mv	a0,s0
    1398:	789010ef          	jal	ra,3320 <memcpy>
    139c:	000127b7          	lui	a5,0x12
    13a0:	61a7c483          	lbu	s1,1562(a5) # 1261a <neccblk2>
    13a4:	000127b7          	lui	a5,0x12
    13a8:	6187c503          	lbu	a0,1560(a5) # 12618 <eccblkwid>
    13ac:	00012737          	lui	a4,0x12
    13b0:	000127b7          	lui	a5,0x12
    13b4:	6197c783          	lbu	a5,1561(a5) # 12619 <datablkw>
    13b8:	61b74583          	lbu	a1,1563(a4) # 1261b <neccblk1>
    13bc:	629c4403          	lbu	s0,1577(s8)
    13c0:	00f50533          	add	a0,a0,a5
    13c4:	009585b3          	add	a1,a1,s1
    13c8:	fff40713          	addi	a4,s0,-1
    13cc:	0ff77a13          	zext.b	s4,a4
    13d0:	6ad010ef          	jal	ra,327c <__mulsi3>
    13d4:	009507b3          	add	a5,a0,s1
    13d8:	040780e3          	beqz	a5,1c18 <qrencode+0xe54>
    13dc:	000a0b13          	mv	s6,s4
    13e0:	00100d93          	li	s11,1
    13e4:	00100993          	li	s3,1
    13e8:	00012a23          	sw	zero,20(sp)
    13ec:	00800713          	li	a4,8
    13f0:	624d2783          	lw	a5,1572(s10)
    13f4:	00e12623          	sw	a4,12(sp)
    13f8:	01412703          	lw	a4,20(sp)
    13fc:	00e787b3          	add	a5,a5,a4
    1400:	0007c783          	lbu	a5,0(a5)
    1404:	00f12423          	sw	a5,8(sp)
    1408:	00810783          	lb	a5,8(sp)
    140c:	0207dc63          	bgez	a5,1444 <qrencode+0x680>
    1410:	628bc503          	lbu	a0,1576(s7)
    1414:	000a0593          	mv	a1,s4
    1418:	665010ef          	jal	ra,327c <__mulsi3>
    141c:	620ca583          	lw	a1,1568(s9)
    1420:	003b5793          	srli	a5,s6,0x3
    1424:	00f50533          	add	a0,a0,a5
    1428:	00a585b3          	add	a1,a1,a0
    142c:	0005c503          	lbu	a0,0(a1)
    1430:	007b7793          	andi	a5,s6,7
    1434:	08000713          	li	a4,128
    1438:	40f757b3          	sra	a5,a4,a5
    143c:	00a7e7b3          	or	a5,a5,a0
    1440:	00f58023          	sb	a5,0(a1)
    1444:	629c4783          	lbu	a5,1577(s8)
    1448:	00012737          	lui	a4,0x12
    144c:	63072903          	lw	s2,1584(a4) # 12630 <framask>
    1450:	00f12823          	sw	a5,16(sp)
    1454:	fff78a93          	addi	s5,a5,-1
    1458:	5a0d8a63          	beqz	s11,1a0c <qrencode+0xc48>
    145c:	fffb0713          	addi	a4,s6,-1
    1460:	0ff77b13          	zext.b	s6,a4
    1464:	000a0493          	mv	s1,s4
    1468:	000b0413          	mv	s0,s6
    146c:	001dc693          	xori	a3,s11,1
    1470:	0ff6fd93          	zext.b	s11,a3
    1474:	5d6a7463          	bgeu	s4,s6,1a3c <qrencode+0xc78>
    1478:	000b0593          	mv	a1,s6
    147c:	000b0513          	mv	a0,s6
    1480:	5fd010ef          	jal	ra,327c <__mulsi3>
    1484:	008507b3          	add	a5,a0,s0
    1488:	0017d793          	srli	a5,a5,0x1
    148c:	009787b3          	add	a5,a5,s1
    1490:	fff7c593          	not	a1,a5
    1494:	0075f593          	andi	a1,a1,7
    1498:	0037d793          	srli	a5,a5,0x3
    149c:	00f907b3          	add	a5,s2,a5
    14a0:	0007c783          	lbu	a5,0(a5)
    14a4:	40b7d7b3          	sra	a5,a5,a1
    14a8:	0017f793          	andi	a5,a5,1
    14ac:	fa0796e3          	bnez	a5,1458 <qrencode+0x694>
    14b0:	00812703          	lw	a4,8(sp)
    14b4:	00c12783          	lw	a5,12(sp)
    14b8:	00171a93          	slli	s5,a4,0x1
    14bc:	fff78793          	addi	a5,a5,-1
    14c0:	0ff7f793          	zext.b	a5,a5
    14c4:	0ffaf713          	zext.b	a4,s5
    14c8:	00f12623          	sw	a5,12(sp)
    14cc:	00e12423          	sw	a4,8(sp)
    14d0:	f2079ce3          	bnez	a5,1408 <qrencode+0x644>
    14d4:	000127b7          	lui	a5,0x12
    14d8:	61a7c403          	lbu	s0,1562(a5) # 1261a <neccblk2>
    14dc:	000127b7          	lui	a5,0x12
    14e0:	6197c503          	lbu	a0,1561(a5) # 12619 <datablkw>
    14e4:	00012737          	lui	a4,0x12
    14e8:	000127b7          	lui	a5,0x12
    14ec:	6187c783          	lbu	a5,1560(a5) # 12618 <eccblkwid>
    14f0:	61b74583          	lbu	a1,1563(a4) # 1261b <neccblk1>
    14f4:	01412703          	lw	a4,20(sp)
    14f8:	00f50533          	add	a0,a0,a5
    14fc:	008585b3          	add	a1,a1,s0
    1500:	00170493          	addi	s1,a4,1
    1504:	00912a23          	sw	s1,20(sp)
    1508:	575010ef          	jal	ra,327c <__mulsi3>
    150c:	008507b3          	add	a5,a0,s0
    1510:	ecf4cee3          	blt	s1,a5,13ec <qrencode+0x628>
    1514:	01012583          	lw	a1,16(sp)
    1518:	628bc503          	lbu	a0,1576(s7)
    151c:	624d2403          	lw	s0,1572(s10)
    1520:	ffe00a13          	li	s4,-2
    1524:	559010ef          	jal	ra,327c <__mulsi3>
    1528:	620ca583          	lw	a1,1568(s9)
    152c:	00050613          	mv	a2,a0
    1530:	00040513          	mv	a0,s0
    1534:	00012823          	sw	zero,16(sp)
    1538:	5e9010ef          	jal	ra,3320 <memcpy>
    153c:	000077b7          	lui	a5,0x7
    1540:	53078793          	addi	a5,a5,1328 # 7530 <main+0x3e14>
    1544:	00012a23          	sw	zero,20(sp)
    1548:	00f12c23          	sw	a5,24(sp)
    154c:	00012437          	lui	s0,0x12
    1550:	00100913          	li	s2,1
    1554:	01012503          	lw	a0,16(sp)
    1558:	fc5fe0ef          	jal	ra,51c <applymask>
    155c:	629c4d83          	lbu	s11,1577(s8)
    1560:	fffd8e13          	addi	t3,s11,-1
    1564:	6bc05263          	blez	t3,1c08 <qrencode+0xe44>
    1568:	620cab03          	lw	s6,1568(s9)
    156c:	628bc483          	lbu	s1,1576(s7)
    1570:	00000e93          	li	t4,0
    1574:	01b12623          	sw	s11,12(sp)
    1578:	00012423          	sw	zero,8(sp)
    157c:	00000993          	li	s3,0
    1580:	000e8d93          	mv	s11,t4
    1584:	000e0a93          	mv	s5,t3
    1588:	00098593          	mv	a1,s3
    158c:	00048513          	mv	a0,s1
    1590:	4ed010ef          	jal	ra,327c <__mulsi3>
    1594:	00050793          	mv	a5,a0
    1598:	00048593          	mv	a1,s1
    159c:	00198513          	addi	a0,s3,1
    15a0:	00078993          	mv	s3,a5
    15a4:	4d9010ef          	jal	ra,327c <__mulsi3>
    15a8:	00812e03          	lw	t3,8(sp)
    15ac:	00000713          	li	a4,0
    15b0:	00000693          	li	a3,0
    15b4:	013b0333          	add	t1,s6,s3
    15b8:	00ab0f33          	add	t5,s6,a0
    15bc:	0036d793          	srli	a5,a3,0x3
    15c0:	00fb07b3          	add	a5,s6,a5
    15c4:	00170813          	addi	a6,a4,1
    15c8:	01378633          	add	a2,a5,s3
    15cc:	40385813          	srai	a6,a6,0x3
    15d0:	00064603          	lbu	a2,0(a2)
    15d4:	010305b3          	add	a1,t1,a6
    15d8:	fff74893          	not	a7,a4
    15dc:	0005c583          	lbu	a1,0(a1)
    15e0:	0078f893          	andi	a7,a7,7
    15e4:	40ea0733          	sub	a4,s4,a4
    15e8:	00777713          	andi	a4,a4,7
    15ec:	41165633          	sra	a2,a2,a7
    15f0:	40e5d5b3          	sra	a1,a1,a4
    15f4:	00167613          	andi	a2,a2,1
    15f8:	0015f593          	andi	a1,a1,1
    15fc:	00a787b3          	add	a5,a5,a0
    1600:	46060263          	beqz	a2,1a64 <qrencode+0xca0>
    1604:	02058663          	beqz	a1,1630 <qrencode+0x86c>
    1608:	0007c783          	lbu	a5,0(a5)
    160c:	010f0833          	add	a6,t5,a6
    1610:	4117d7b3          	sra	a5,a5,a7
    1614:	0017f793          	andi	a5,a5,1
    1618:	00078c63          	beqz	a5,1630 <qrencode+0x86c>
    161c:	00084783          	lbu	a5,0(a6)
    1620:	40e7d7b3          	sra	a5,a5,a4
    1624:	0017f793          	andi	a5,a5,1
    1628:	00078463          	beqz	a5,1630 <qrencode+0x86c>
    162c:	003e0e13          	addi	t3,t3,3
    1630:	00168693          	addi	a3,a3,1
    1634:	0ff6f693          	zext.b	a3,a3
    1638:	00068713          	mv	a4,a3
    163c:	f956c0e3          	blt	a3,s5,15bc <qrencode+0x7f8>
    1640:	001d8e93          	addi	t4,s11,1
    1644:	0ffefd93          	zext.b	s11,t4
    1648:	01c12423          	sw	t3,8(sp)
    164c:	000d8993          	mv	s3,s11
    1650:	f35dcce3          	blt	s11,s5,1588 <qrencode+0x7c4>
    1654:	00c12d83          	lw	s11,12(sp)
    1658:	200d8663          	beqz	s11,1864 <qrencode+0xaa0>
    165c:	00000493          	li	s1,0
    1660:	00000993          	li	s3,0
    1664:	62c42783          	lw	a5,1580(s0) # 1262c <rlens>
    1668:	00078023          	sb	zero,0(a5)
    166c:	629c4a83          	lbu	s5,1577(s8)
    1670:	4e0a8a63          	beqz	s5,1b64 <qrencode+0xda0>
    1674:	00000d93          	li	s11,0
    1678:	00000793          	li	a5,0
    167c:	00000b13          	li	s6,0
    1680:	02c0006f          	j	16ac <qrencode+0x8e8>
    1684:	0ff6fd93          	zext.b	s11,a3
    1688:	01b70733          	add	a4,a4,s11
    168c:	01270023          	sb	s2,0(a4)
    1690:	629c4a83          	lbu	s5,1577(s8)
    1694:	00179713          	slli	a4,a5,0x1
    1698:	001b0b13          	addi	s6,s6,1
    169c:	fff70713          	addi	a4,a4,-1
    16a0:	0ffb7b13          	zext.b	s6,s6
    16a4:	00e484b3          	add	s1,s1,a4
    16a8:	075b7863          	bgeu	s6,s5,1718 <qrencode+0x954>
    16ac:	628bc503          	lbu	a0,1576(s7)
    16b0:	00098593          	mv	a1,s3
    16b4:	00078a93          	mv	s5,a5
    16b8:	3c5010ef          	jal	ra,327c <__mulsi3>
    16bc:	620ca783          	lw	a5,1568(s9)
    16c0:	003b5693          	srli	a3,s6,0x3
    16c4:	fffb4713          	not	a4,s6
    16c8:	00a787b3          	add	a5,a5,a0
    16cc:	00d787b3          	add	a5,a5,a3
    16d0:	0007c783          	lbu	a5,0(a5)
    16d4:	00777713          	andi	a4,a4,7
    16d8:	001d8693          	addi	a3,s11,1
    16dc:	40e7d7b3          	sra	a5,a5,a4
    16e0:	0017f793          	andi	a5,a5,1
    16e4:	62c42703          	lw	a4,1580(s0)
    16e8:	f9579ee3          	bne	a5,s5,1684 <qrencode+0x8c0>
    16ec:	01b70733          	add	a4,a4,s11
    16f0:	00074683          	lbu	a3,0(a4)
    16f4:	001b0b13          	addi	s6,s6,1
    16f8:	0ffb7b13          	zext.b	s6,s6
    16fc:	00168693          	addi	a3,a3,1
    1700:	00d70023          	sb	a3,0(a4)
    1704:	629c4a83          	lbu	s5,1577(s8)
    1708:	00179713          	slli	a4,a5,0x1
    170c:	fff70713          	addi	a4,a4,-1
    1710:	00e484b3          	add	s1,s1,a4
    1714:	f95b6ce3          	bltu	s6,s5,16ac <qrencode+0x8e8>
    1718:	000d8513          	mv	a0,s11
    171c:	bc5fe0ef          	jal	ra,2e0 <badruns>
    1720:	00812783          	lw	a5,8(sp)
    1724:	00198993          	addi	s3,s3,1
    1728:	0ff9f993          	zext.b	s3,s3
    172c:	00a787b3          	add	a5,a5,a0
    1730:	00f12423          	sw	a5,8(sp)
    1734:	f359e8e3          	bltu	s3,s5,1664 <qrencode+0x8a0>
    1738:	41f4d713          	srai	a4,s1,0x1f
    173c:	009747b3          	xor	a5,a4,s1
    1740:	40e787b3          	sub	a5,a5,a4
    1744:	00279493          	slli	s1,a5,0x2
    1748:	00f484b3          	add	s1,s1,a5
    174c:	000a8593          	mv	a1,s5
    1750:	000a8513          	mv	a0,s5
    1754:	329010ef          	jal	ra,327c <__mulsi3>
    1758:	00149493          	slli	s1,s1,0x1
    175c:	000a8d93          	mv	s11,s5
    1760:	00050713          	mv	a4,a0
    1764:	02957663          	bgeu	a0,s1,1790 <qrencode+0x9cc>
    1768:	00000793          	li	a5,0
    176c:	40e484b3          	sub	s1,s1,a4
    1770:	00178793          	addi	a5,a5,1
    1774:	fe976ce3          	bltu	a4,s1,176c <qrencode+0x9a8>
    1778:	00279713          	slli	a4,a5,0x2
    177c:	00f707b3          	add	a5,a4,a5
    1780:	00812703          	lw	a4,8(sp)
    1784:	00179793          	slli	a5,a5,0x1
    1788:	00f707b3          	add	a5,a4,a5
    178c:	00f12423          	sw	a5,8(sp)
    1790:	0c0d8a63          	beqz	s11,1864 <qrencode+0xaa0>
    1794:	00012623          	sw	zero,12(sp)
    1798:	62c42783          	lw	a5,1580(s0)
    179c:	00078023          	sb	zero,0(a5)
    17a0:	629c4b03          	lbu	s6,1577(s8)
    17a4:	3e0b0e63          	beqz	s6,1ba0 <qrencode+0xddc>
    17a8:	00c12783          	lw	a5,12(sp)
    17ac:	00000a93          	li	s5,0
    17b0:	00000d93          	li	s11,0
    17b4:	fff7c493          	not	s1,a5
    17b8:	0037d993          	srli	s3,a5,0x3
    17bc:	0074f493          	andi	s1,s1,7
    17c0:	00000793          	li	a5,0
    17c4:	0200006f          	j	17e4 <qrencode+0xa20>
    17c8:	0ff5fa93          	zext.b	s5,a1
    17cc:	01570733          	add	a4,a4,s5
    17d0:	01270023          	sb	s2,0(a4)
    17d4:	629c4b03          	lbu	s6,1577(s8)
    17d8:	001d8d93          	addi	s11,s11,1
    17dc:	0ffdfd93          	zext.b	s11,s11
    17e0:	056dfc63          	bgeu	s11,s6,1838 <qrencode+0xa74>
    17e4:	628bc503          	lbu	a0,1576(s7)
    17e8:	000d8593          	mv	a1,s11
    17ec:	00078b13          	mv	s6,a5
    17f0:	28d010ef          	jal	ra,327c <__mulsi3>
    17f4:	620ca783          	lw	a5,1568(s9)
    17f8:	62c42703          	lw	a4,1580(s0)
    17fc:	001a8593          	addi	a1,s5,1
    1800:	013787b3          	add	a5,a5,s3
    1804:	00a787b3          	add	a5,a5,a0
    1808:	0007c783          	lbu	a5,0(a5)
    180c:	4097d7b3          	sra	a5,a5,s1
    1810:	0017f793          	andi	a5,a5,1
    1814:	fb679ae3          	bne	a5,s6,17c8 <qrencode+0xa04>
    1818:	01570733          	add	a4,a4,s5
    181c:	00074603          	lbu	a2,0(a4)
    1820:	001d8d93          	addi	s11,s11,1
    1824:	0ffdfd93          	zext.b	s11,s11
    1828:	00160613          	addi	a2,a2,1
    182c:	00c70023          	sb	a2,0(a4)
    1830:	629c4b03          	lbu	s6,1577(s8)
    1834:	fb6de8e3          	bltu	s11,s6,17e4 <qrencode+0xa20>
    1838:	000a8513          	mv	a0,s5
    183c:	aa5fe0ef          	jal	ra,2e0 <badruns>
    1840:	00c12783          	lw	a5,12(sp)
    1844:	00812703          	lw	a4,8(sp)
    1848:	00178a93          	addi	s5,a5,1
    184c:	0ffaf793          	zext.b	a5,s5
    1850:	00a70733          	add	a4,a4,a0
    1854:	00f12623          	sw	a5,12(sp)
    1858:	00e12423          	sw	a4,8(sp)
    185c:	f367eee3          	bltu	a5,s6,1798 <qrencode+0x9d4>
    1860:	000b0d93          	mv	s11,s6
    1864:	00812783          	lw	a5,8(sp)
    1868:	01812703          	lw	a4,24(sp)
    186c:	00e7f863          	bgeu	a5,a4,187c <qrencode+0xab8>
    1870:	01012703          	lw	a4,16(sp)
    1874:	00f12c23          	sw	a5,24(sp)
    1878:	00e12a23          	sw	a4,20(sp)
    187c:	01412783          	lw	a5,20(sp)
    1880:	00700713          	li	a4,7
    1884:	38e78663          	beq	a5,a4,1c10 <qrencode+0xe4c>
    1888:	628bc503          	lbu	a0,1576(s7)
    188c:	000d8593          	mv	a1,s11
    1890:	620ca483          	lw	s1,1568(s9)
    1894:	1e9010ef          	jal	ra,327c <__mulsi3>
    1898:	624d2583          	lw	a1,1572(s10)
    189c:	00050613          	mv	a2,a0
    18a0:	00048513          	mv	a0,s1
    18a4:	27d010ef          	jal	ra,3320 <memcpy>
    18a8:	01012783          	lw	a5,16(sp)
    18ac:	00178d93          	addi	s11,a5,1
    18b0:	0ffdf793          	zext.b	a5,s11
    18b4:	00078713          	mv	a4,a5
    18b8:	00f12823          	sw	a5,16(sp)
    18bc:	00800793          	li	a5,8
    18c0:	c8f71ae3          	bne	a4,a5,1554 <qrencode+0x790>
    18c4:	01412403          	lw	s0,20(sp)
    18c8:	01412783          	lw	a5,20(sp)
    18cc:	01012703          	lw	a4,16(sp)
    18d0:	00e78663          	beq	a5,a4,18dc <qrencode+0xb18>
    18d4:	00078513          	mv	a0,a5
    18d8:	c45fe0ef          	jal	ra,51c <applymask>
    18dc:	000127b7          	lui	a5,0x12
    18e0:	61c7c783          	lbu	a5,1564(a5) # 1261c <ECCLEVEL>
    18e4:	01c12703          	lw	a4,28(sp)
    18e8:	00100a93          	li	s5,1
    18ec:	fff78793          	addi	a5,a5,-1
    18f0:	0ff7f793          	zext.b	a5,a5
    18f4:	00379793          	slli	a5,a5,0x3
    18f8:	008787b3          	add	a5,a5,s0
    18fc:	00279793          	slli	a5,a5,0x2
    1900:	00f707b3          	add	a5,a4,a5
    1904:	2007a983          	lw	s3,512(a5)
    1908:	00000a13          	li	s4,0
    190c:	00800413          	li	s0,8
    1910:	08000913          	li	s2,128
    1914:	00500493          	li	s1,5
    1918:	06c0006f          	j	1984 <qrencode+0xbc0>
    191c:	629c4783          	lbu	a5,1577(s8)
    1920:	628bc703          	lbu	a4,1576(s7)
    1924:	620ca683          	lw	a3,1568(s9)
    1928:	fff78793          	addi	a5,a5,-1
    192c:	414787b3          	sub	a5,a5,s4
    1930:	4037d613          	srai	a2,a5,0x3
    1934:	00371713          	slli	a4,a4,0x3
    1938:	00c70733          	add	a4,a4,a2
    193c:	00e68733          	add	a4,a3,a4
    1940:	00074683          	lbu	a3,0(a4)
    1944:	0077f793          	andi	a5,a5,7
    1948:	40f957b3          	sra	a5,s2,a5
    194c:	00d7e7b3          	or	a5,a5,a3
    1950:	00f70023          	sb	a5,0(a4)
    1954:	628bc503          	lbu	a0,1576(s7)
    1958:	000a0593          	mv	a1,s4
    195c:	2944e263          	bltu	s1,s4,1be0 <qrencode+0xe1c>
    1960:	11d010ef          	jal	ra,327c <__mulsi3>
    1964:	620ca783          	lw	a5,1568(s9)
    1968:	00150713          	addi	a4,a0,1
    196c:	00e787b3          	add	a5,a5,a4
    1970:	0007c703          	lbu	a4,0(a5)
    1974:	f8076713          	ori	a4,a4,-128
    1978:	00e78023          	sb	a4,0(a5)
    197c:	001a0a13          	addi	s4,s4,1
    1980:	001a8a93          	addi	s5,s5,1
    1984:	0019f793          	andi	a5,s3,1
    1988:	0019d993          	srli	s3,s3,0x1
    198c:	f80798e3          	bnez	a5,191c <qrencode+0xb58>
    1990:	fe8a96e3          	bne	s5,s0,197c <qrencode+0xbb8>
    1994:	00000413          	li	s0,0
    1998:	00600913          	li	s2,6
    199c:	08000493          	li	s1,128
    19a0:	0019f793          	andi	a5,s3,1
    19a4:	0019d993          	srli	s3,s3,0x1
    19a8:	04078c63          	beqz	a5,1a00 <qrencode+0xc3c>
    19ac:	629c4503          	lbu	a0,1577(s8)
    19b0:	628bc583          	lbu	a1,1576(s7)
    19b4:	ff950513          	addi	a0,a0,-7
    19b8:	00850533          	add	a0,a0,s0
    19bc:	0c1010ef          	jal	ra,327c <__mulsi3>
    19c0:	620ca783          	lw	a5,1568(s9)
    19c4:	00150693          	addi	a3,a0,1
    19c8:	40890733          	sub	a4,s2,s0
    19cc:	00d787b3          	add	a5,a5,a3
    19d0:	0007c683          	lbu	a3,0(a5)
    19d4:	40e4d733          	sra	a4,s1,a4
    19d8:	f806e693          	ori	a3,a3,-128
    19dc:	00d78023          	sb	a3,0(a5)
    19e0:	1c040e63          	beqz	s0,1bbc <qrencode+0xdf8>
    19e4:	628bc683          	lbu	a3,1576(s7)
    19e8:	620ca783          	lw	a5,1568(s9)
    19ec:	00369693          	slli	a3,a3,0x3
    19f0:	00d787b3          	add	a5,a5,a3
    19f4:	0007c683          	lbu	a3,0(a5)
    19f8:	00d76733          	or	a4,a4,a3
    19fc:	00e78023          	sb	a4,0(a5)
    1a00:	13240463          	beq	s0,s2,1b28 <qrencode+0xd64>
    1a04:	00140413          	addi	s0,s0,1
    1a08:	f99ff06f          	j	19a0 <qrencode+0xbdc>
    1a0c:	001b0793          	addi	a5,s6,1
    1a10:	0ff7f793          	zext.b	a5,a5
    1a14:	08098063          	beqz	s3,1a94 <qrencode+0xcd0>
    1a18:	080a0c63          	beqz	s4,1ab0 <qrencode+0xcec>
    1a1c:	fffa0613          	addi	a2,s4,-1
    1a20:	0ff67a13          	zext.b	s4,a2
    1a24:	001dc693          	xori	a3,s11,1
    1a28:	00078b13          	mv	s6,a5
    1a2c:	000a0493          	mv	s1,s4
    1a30:	00078413          	mv	s0,a5
    1a34:	0ff6fd93          	zext.b	s11,a3
    1a38:	a56a60e3          	bltu	s4,s6,1478 <qrencode+0x6b4>
    1a3c:	000a0593          	mv	a1,s4
    1a40:	000a0513          	mv	a0,s4
    1a44:	039010ef          	jal	ra,327c <__mulsi3>
    1a48:	009507b3          	add	a5,a0,s1
    1a4c:	0017d793          	srli	a5,a5,0x1
    1a50:	008787b3          	add	a5,a5,s0
    1a54:	fff7c593          	not	a1,a5
    1a58:	0075f593          	andi	a1,a1,7
    1a5c:	0037d793          	srli	a5,a5,0x3
    1a60:	a3dff06f          	j	149c <qrencode+0x6d8>
    1a64:	bc0596e3          	bnez	a1,1630 <qrencode+0x86c>
    1a68:	0007c783          	lbu	a5,0(a5)
    1a6c:	010f0833          	add	a6,t5,a6
    1a70:	4117d7b3          	sra	a5,a5,a7
    1a74:	0017f793          	andi	a5,a5,1
    1a78:	ba079ce3          	bnez	a5,1630 <qrencode+0x86c>
    1a7c:	00084783          	lbu	a5,0(a6)
    1a80:	40e7d7b3          	sra	a5,a5,a4
    1a84:	0017f793          	andi	a5,a5,1
    1a88:	ba0794e3          	bnez	a5,1630 <qrencode+0x86c>
    1a8c:	003e0e13          	addi	t3,t3,3
    1a90:	ba1ff06f          	j	1630 <qrencode+0x86c>
    1a94:	035a0e63          	beq	s4,s5,1ad0 <qrencode+0xd0c>
    1a98:	001a0613          	addi	a2,s4,1
    1a9c:	0ff67a13          	zext.b	s4,a2
    1aa0:	00078b13          	mv	s6,a5
    1aa4:	000a0493          	mv	s1,s4
    1aa8:	00078413          	mv	s0,a5
    1aac:	9c1ff06f          	j	146c <qrencode+0x6a8>
    1ab0:	fffb0713          	addi	a4,s6,-1
    1ab4:	0ff77b13          	zext.b	s6,a4
    1ab8:	00600793          	li	a5,6
    1abc:	02fb0a63          	beq	s6,a5,1af0 <qrencode+0xd2c>
    1ac0:	000b0413          	mv	s0,s6
    1ac4:	00000993          	li	s3,0
    1ac8:	00000493          	li	s1,0
    1acc:	9a1ff06f          	j	146c <qrencode+0x6a8>
    1ad0:	fffb0713          	addi	a4,s6,-1
    1ad4:	0ff77b13          	zext.b	s6,a4
    1ad8:	00600793          	li	a5,6
    1adc:	02fb0863          	beq	s6,a5,1b0c <qrencode+0xd48>
    1ae0:	000a0493          	mv	s1,s4
    1ae4:	000b0413          	mv	s0,s6
    1ae8:	00100993          	li	s3,1
    1aec:	981ff06f          	j	146c <qrencode+0x6a8>
    1af0:	00098d93          	mv	s11,s3
    1af4:	00500593          	li	a1,5
    1af8:	00000993          	li	s3,0
    1afc:	00600793          	li	a5,6
    1b00:	00900a13          	li	s4,9
    1b04:	00500b13          	li	s6,5
    1b08:	995ff06f          	j	149c <qrencode+0x6d8>
    1b0c:	ff8a0613          	addi	a2,s4,-8
    1b10:	0ff67a13          	zext.b	s4,a2
    1b14:	000a0493          	mv	s1,s4
    1b18:	00500413          	li	s0,5
    1b1c:	00100993          	li	s3,1
    1b20:	00500b13          	li	s6,5
    1b24:	949ff06f          	j	146c <qrencode+0x6a8>
    1b28:	05c12083          	lw	ra,92(sp)
    1b2c:	05812403          	lw	s0,88(sp)
    1b30:	05412483          	lw	s1,84(sp)
    1b34:	05012903          	lw	s2,80(sp)
    1b38:	04c12983          	lw	s3,76(sp)
    1b3c:	04812a03          	lw	s4,72(sp)
    1b40:	04412a83          	lw	s5,68(sp)
    1b44:	04012b03          	lw	s6,64(sp)
    1b48:	03c12b83          	lw	s7,60(sp)
    1b4c:	03812c03          	lw	s8,56(sp)
    1b50:	03412c83          	lw	s9,52(sp)
    1b54:	03012d03          	lw	s10,48(sp)
    1b58:	02c12d83          	lw	s11,44(sp)
    1b5c:	06010113          	addi	sp,sp,96
    1b60:	00008067          	ret
    1b64:	00000513          	li	a0,0
    1b68:	f78fe0ef          	jal	ra,2e0 <badruns>
    1b6c:	41f4d713          	srai	a4,s1,0x1f
    1b70:	009747b3          	xor	a5,a4,s1
    1b74:	40e787b3          	sub	a5,a5,a4
    1b78:	00279493          	slli	s1,a5,0x2
    1b7c:	00f484b3          	add	s1,s1,a5
    1b80:	00812783          	lw	a5,8(sp)
    1b84:	00149493          	slli	s1,s1,0x1
    1b88:	000a8d93          	mv	s11,s5
    1b8c:	00a787b3          	add	a5,a5,a0
    1b90:	00f12423          	sw	a5,8(sp)
    1b94:	00000713          	li	a4,0
    1b98:	bc0498e3          	bnez	s1,1768 <qrencode+0x9a4>
    1b9c:	cc9ff06f          	j	1864 <qrencode+0xaa0>
    1ba0:	00000513          	li	a0,0
    1ba4:	f3cfe0ef          	jal	ra,2e0 <badruns>
    1ba8:	00812783          	lw	a5,8(sp)
    1bac:	000b0d93          	mv	s11,s6
    1bb0:	00a787b3          	add	a5,a5,a0
    1bb4:	00f12423          	sw	a5,8(sp)
    1bb8:	cadff06f          	j	1864 <qrencode+0xaa0>
    1bbc:	628bc703          	lbu	a4,1576(s7)
    1bc0:	620ca783          	lw	a5,1568(s9)
    1bc4:	00140413          	addi	s0,s0,1
    1bc8:	00371713          	slli	a4,a4,0x3
    1bcc:	00e787b3          	add	a5,a5,a4
    1bd0:	0007c703          	lbu	a4,0(a5)
    1bd4:	00176713          	ori	a4,a4,1
    1bd8:	00e78023          	sb	a4,0(a5)
    1bdc:	dc5ff06f          	j	19a0 <qrencode+0xbdc>
    1be0:	000a8593          	mv	a1,s5
    1be4:	698010ef          	jal	ra,327c <__mulsi3>
    1be8:	620ca783          	lw	a5,1568(s9)
    1bec:	00150713          	addi	a4,a0,1
    1bf0:	00e787b3          	add	a5,a5,a4
    1bf4:	0007c703          	lbu	a4,0(a5)
    1bf8:	f8076713          	ori	a4,a4,-128
    1bfc:	00e78023          	sb	a4,0(a5)
    1c00:	d68a9ee3          	bne	s5,s0,197c <qrencode+0xbb8>
    1c04:	d91ff06f          	j	1994 <qrencode+0xbd0>
    1c08:	00012423          	sw	zero,8(sp)
    1c0c:	a4dff06f          	j	1658 <qrencode+0x894>
    1c10:	00700413          	li	s0,7
    1c14:	cb5ff06f          	j	18c8 <qrencode+0xb04>
    1c18:	00040593          	mv	a1,s0
    1c1c:	8fdff06f          	j	1518 <qrencode+0x754>
    1c20:	00010737          	lui	a4,0x10
    1c24:	02070793          	addi	a5,a4,32 # 10020 <g0log>
    1c28:	000e0023          	sb	zero,0(t3)
    1c2c:	00f12e23          	sw	a5,28(sp)
    1c30:	c9cff06f          	j	10cc <qrencode+0x308>
    1c34:	000127b7          	lui	a5,0x12
    1c38:	61b7c483          	lbu	s1,1563(a5) # 1261b <neccblk1>
    1c3c:	00000793          	li	a5,0
    1c40:	d40a1e63          	bnez	s4,119c <qrencode+0x3d8>
    1c44:	ea4ff06f          	j	12e8 <qrencode+0x524>
    1c48:	00000913          	li	s2,0
    1c4c:	e30ff06f          	j	127c <qrencode+0x4b8>

00001c50 <putalign>:
    1c50:	fb010113          	addi	sp,sp,-80
    1c54:	05212023          	sw	s2,64(sp)
    1c58:	00012937          	lui	s2,0x12
    1c5c:	04812423          	sw	s0,72(sp)
    1c60:	00050413          	mv	s0,a0
    1c64:	62894503          	lbu	a0,1576(s2) # 12628 <WDB>
    1c68:	04912223          	sw	s1,68(sp)
    1c6c:	03312e23          	sw	s3,60(sp)
    1c70:	03412c23          	sw	s4,56(sp)
    1c74:	00058993          	mv	s3,a1
    1c78:	03512a23          	sw	s5,52(sp)
    1c7c:	03612823          	sw	s6,48(sp)
    1c80:	03712623          	sw	s7,44(sp)
    1c84:	03812423          	sw	s8,40(sp)
    1c88:	03912223          	sw	s9,36(sp)
    1c8c:	03a12023          	sw	s10,32(sp)
    1c90:	01b12e23          	sw	s11,28(sp)
    1c94:	00b12623          	sw	a1,12(sp)
    1c98:	04112623          	sw	ra,76(sp)
    1c9c:	00012c37          	lui	s8,0x12
    1ca0:	5dc010ef          	jal	ra,327c <__mulsi3>
    1ca4:	634c2583          	lw	a1,1588(s8) # 12634 <framebase>
    1ca8:	40345793          	srai	a5,s0,0x3
    1cac:	00f50533          	add	a0,a0,a5
    1cb0:	00a585b3          	add	a1,a1,a0
    1cb4:	ffe40793          	addi	a5,s0,-2
    1cb8:	0005c803          	lbu	a6,0(a1)
    1cbc:	00240b13          	addi	s6,s0,2
    1cc0:	08000713          	li	a4,128
    1cc4:	00747613          	andi	a2,s0,7
    1cc8:	0077f493          	andi	s1,a5,7
    1ccc:	007b7513          	andi	a0,s6,7
    1cd0:	40c75633          	sra	a2,a4,a2
    1cd4:	40975bb3          	sra	s7,a4,s1
    1cd8:	40a75733          	sra	a4,a4,a0
    1cdc:	01066633          	or	a2,a2,a6
    1ce0:	4037da13          	srai	s4,a5,0x3
    1ce4:	403b5693          	srai	a3,s6,0x3
    1ce8:	0ff77713          	zext.b	a4,a4
    1cec:	ffe98d13          	addi	s10,s3,-2
    1cf0:	00298c93          	addi	s9,s3,2
    1cf4:	01412023          	sw	s4,0(sp)
    1cf8:	00c58023          	sb	a2,0(a1)
    1cfc:	0ffbfb93          	zext.b	s7,s7
    1d00:	00d12223          	sw	a3,4(sp)
    1d04:	00e12423          	sw	a4,8(sp)
    1d08:	00078d93          	mv	s11,a5
    1d0c:	fff98993          	addi	s3,s3,-1
    1d10:	08000a93          	li	s5,128
    1d14:	62894503          	lbu	a0,1576(s2)
    1d18:	000d0593          	mv	a1,s10
    1d1c:	409ad4b3          	sra	s1,s5,s1
    1d20:	55c010ef          	jal	ra,327c <__mulsi3>
    1d24:	634c2703          	lw	a4,1588(s8)
    1d28:	01450533          	add	a0,a0,s4
    1d2c:	00098593          	mv	a1,s3
    1d30:	00a70733          	add	a4,a4,a0
    1d34:	00074603          	lbu	a2,0(a4)
    1d38:	001d8d93          	addi	s11,s11,1
    1d3c:	403dda13          	srai	s4,s11,0x3
    1d40:	00c4e4b3          	or	s1,s1,a2
    1d44:	00970023          	sb	s1,0(a4)
    1d48:	62894503          	lbu	a0,1576(s2)
    1d4c:	007df493          	andi	s1,s11,7
    1d50:	52c010ef          	jal	ra,327c <__mulsi3>
    1d54:	00012783          	lw	a5,0(sp)
    1d58:	634c2703          	lw	a4,1588(s8)
    1d5c:	fff98593          	addi	a1,s3,-1
    1d60:	00f50533          	add	a0,a0,a5
    1d64:	00a70733          	add	a4,a4,a0
    1d68:	00074603          	lbu	a2,0(a4)
    1d6c:	00198993          	addi	s3,s3,1
    1d70:	00cbe633          	or	a2,s7,a2
    1d74:	00c70023          	sb	a2,0(a4)
    1d78:	62894503          	lbu	a0,1576(s2)
    1d7c:	500010ef          	jal	ra,327c <__mulsi3>
    1d80:	00412783          	lw	a5,4(sp)
    1d84:	634c2703          	lw	a4,1588(s8)
    1d88:	000c8593          	mv	a1,s9
    1d8c:	00f50533          	add	a0,a0,a5
    1d90:	00a70733          	add	a4,a4,a0
    1d94:	00074603          	lbu	a2,0(a4)
    1d98:	00812783          	lw	a5,8(sp)
    1d9c:	00c7e633          	or	a2,a5,a2
    1da0:	00c70023          	sb	a2,0(a4)
    1da4:	62894503          	lbu	a0,1576(s2)
    1da8:	4d4010ef          	jal	ra,327c <__mulsi3>
    1dac:	634c2703          	lw	a4,1588(s8)
    1db0:	01450533          	add	a0,a0,s4
    1db4:	409ad633          	sra	a2,s5,s1
    1db8:	00a70733          	add	a4,a4,a0
    1dbc:	00074583          	lbu	a1,0(a4)
    1dc0:	00b66633          	or	a2,a2,a1
    1dc4:	00c70023          	sb	a2,0(a4)
    1dc8:	f5bb16e3          	bne	s6,s11,1d14 <putalign+0xc4>
    1dcc:	00c14783          	lbu	a5,12(sp)
    1dd0:	0ff47413          	zext.b	s0,s0
    1dd4:	fff40a93          	addi	s5,s0,-1
    1dd8:	00278b13          	addi	s6,a5,2
    1ddc:	0ffb7713          	zext.b	a4,s6
    1de0:	00140d13          	addi	s10,s0,1
    1de4:	fff78a13          	addi	s4,a5,-1
    1de8:	00178c13          	addi	s8,a5,1
    1dec:	0ffafa93          	zext.b	s5,s5
    1df0:	00e12023          	sw	a4,0(sp)
    1df4:	0ffd7c93          	zext.b	s9,s10
    1df8:	0ffa7a13          	zext.b	s4,s4
    1dfc:	0ffc7b93          	zext.b	s7,s8
    1e00:	00078913          	mv	s2,a5
    1e04:	00040493          	mv	s1,s0
    1e08:	00012b37          	lui	s6,0x12
    1e0c:	08000993          	li	s3,128
    1e10:	1357f063          	bgeu	a5,s5,1f30 <putalign+0x2e0>
    1e14:	000a8593          	mv	a1,s5
    1e18:	00078d93          	mv	s11,a5
    1e1c:	00158513          	addi	a0,a1,1
    1e20:	45c010ef          	jal	ra,327c <__mulsi3>
    1e24:	630b2683          	lw	a3,1584(s6) # 12630 <framask>
    1e28:	00155513          	srli	a0,a0,0x1
    1e2c:	00ad87b3          	add	a5,s11,a0
    1e30:	0037d613          	srli	a2,a5,0x3
    1e34:	00c686b3          	add	a3,a3,a2
    1e38:	0006c603          	lbu	a2,0(a3)
    1e3c:	0077f793          	andi	a5,a5,7
    1e40:	40f9d7b3          	sra	a5,s3,a5
    1e44:	00c7e7b3          	or	a5,a5,a2
    1e48:	00f68023          	sb	a5,0(a3)
    1e4c:	13997c63          	bgeu	s2,s9,1f84 <putalign+0x334>
    1e50:	000c8593          	mv	a1,s9
    1e54:	00090d93          	mv	s11,s2
    1e58:	00158513          	addi	a0,a1,1
    1e5c:	420010ef          	jal	ra,327c <__mulsi3>
    1e60:	630b2683          	lw	a3,1584(s6)
    1e64:	00155513          	srli	a0,a0,0x1
    1e68:	00ad87b3          	add	a5,s11,a0
    1e6c:	0037d613          	srli	a2,a5,0x3
    1e70:	00c686b3          	add	a3,a3,a2
    1e74:	0006c603          	lbu	a2,0(a3)
    1e78:	0077f793          	andi	a5,a5,7
    1e7c:	40f9d7b3          	sra	a5,s3,a5
    1e80:	00c7e7b3          	or	a5,a5,a2
    1e84:	00f68023          	sb	a5,0(a3)
    1e88:	0a9a7a63          	bgeu	s4,s1,1f3c <putalign+0x2ec>
    1e8c:	00048593          	mv	a1,s1
    1e90:	000a0d93          	mv	s11,s4
    1e94:	00158513          	addi	a0,a1,1
    1e98:	3e4010ef          	jal	ra,327c <__mulsi3>
    1e9c:	630b2683          	lw	a3,1584(s6)
    1ea0:	00155513          	srli	a0,a0,0x1
    1ea4:	00ad87b3          	add	a5,s11,a0
    1ea8:	0037d613          	srli	a2,a5,0x3
    1eac:	00c686b3          	add	a3,a3,a2
    1eb0:	0006c603          	lbu	a2,0(a3)
    1eb4:	0077f793          	andi	a5,a5,7
    1eb8:	40f9d7b3          	sra	a5,s3,a5
    1ebc:	00c7e7b3          	or	a5,a5,a2
    1ec0:	00f68023          	sb	a5,0(a3)
    1ec4:	000b8593          	mv	a1,s7
    1ec8:	008bf663          	bgeu	s7,s0,1ed4 <putalign+0x284>
    1ecc:	00040593          	mv	a1,s0
    1ed0:	000b8413          	mv	s0,s7
    1ed4:	00158513          	addi	a0,a1,1
    1ed8:	3a4010ef          	jal	ra,327c <__mulsi3>
    1edc:	630b2783          	lw	a5,1584(s6)
    1ee0:	00155513          	srli	a0,a0,0x1
    1ee4:	00a40433          	add	s0,s0,a0
    1ee8:	00345693          	srli	a3,s0,0x3
    1eec:	00d787b3          	add	a5,a5,a3
    1ef0:	0007c683          	lbu	a3,0(a5)
    1ef4:	00747413          	andi	s0,s0,7
    1ef8:	4089d433          	sra	s0,s3,s0
    1efc:	00012703          	lw	a4,0(sp)
    1f00:	00d46433          	or	s0,s0,a3
    1f04:	00878023          	sb	s0,0(a5)
    1f08:	fff48493          	addi	s1,s1,-1
    1f0c:	fff90913          	addi	s2,s2,-1
    1f10:	0ffc7793          	zext.b	a5,s8
    1f14:	0ffd7413          	zext.b	s0,s10
    1f18:	0ff4f493          	zext.b	s1,s1
    1f1c:	0ff97913          	zext.b	s2,s2
    1f20:	02f70463          	beq	a4,a5,1f48 <putalign+0x2f8>
    1f24:	00140d13          	addi	s10,s0,1
    1f28:	00178c13          	addi	s8,a5,1
    1f2c:	ef57e4e3          	bltu	a5,s5,1e14 <putalign+0x1c4>
    1f30:	00078593          	mv	a1,a5
    1f34:	000a8d93          	mv	s11,s5
    1f38:	ee5ff06f          	j	1e1c <putalign+0x1cc>
    1f3c:	000a0593          	mv	a1,s4
    1f40:	00048d93          	mv	s11,s1
    1f44:	f51ff06f          	j	1e94 <putalign+0x244>
    1f48:	04c12083          	lw	ra,76(sp)
    1f4c:	04812403          	lw	s0,72(sp)
    1f50:	04412483          	lw	s1,68(sp)
    1f54:	04012903          	lw	s2,64(sp)
    1f58:	03c12983          	lw	s3,60(sp)
    1f5c:	03812a03          	lw	s4,56(sp)
    1f60:	03412a83          	lw	s5,52(sp)
    1f64:	03012b03          	lw	s6,48(sp)
    1f68:	02c12b83          	lw	s7,44(sp)
    1f6c:	02812c03          	lw	s8,40(sp)
    1f70:	02412c83          	lw	s9,36(sp)
    1f74:	02012d03          	lw	s10,32(sp)
    1f78:	01c12d83          	lw	s11,28(sp)
    1f7c:	05010113          	addi	sp,sp,80
    1f80:	00008067          	ret
    1f84:	00090593          	mv	a1,s2
    1f88:	000c8d93          	mv	s11,s9
    1f8c:	ecdff06f          	j	1e58 <putalign+0x208>

00001f90 <initframe>:
    1f90:	f6010113          	addi	sp,sp,-160
    1f94:	08812c23          	sw	s0,152(sp)
    1f98:	07912a23          	sw	s9,116(sp)
    1f9c:	00012437          	lui	s0,0x12
    1fa0:	00012cb7          	lui	s9,0x12
    1fa4:	62944583          	lbu	a1,1577(s0) # 12629 <WD>
    1fa8:	628cc503          	lbu	a0,1576(s9) # 12628 <WDB>
    1fac:	08112e23          	sw	ra,156(sp)
    1fb0:	09512223          	sw	s5,132(sp)
    1fb4:	07812c23          	sw	s8,120(sp)
    1fb8:	07a12823          	sw	s10,112(sp)
    1fbc:	08912a23          	sw	s1,148(sp)
    1fc0:	09212823          	sw	s2,144(sp)
    1fc4:	09312623          	sw	s3,140(sp)
    1fc8:	09412423          	sw	s4,136(sp)
    1fcc:	09612023          	sw	s6,128(sp)
    1fd0:	07712e23          	sw	s7,124(sp)
    1fd4:	07b12623          	sw	s11,108(sp)
    1fd8:	2a4010ef          	jal	ra,327c <__mulsi3>
    1fdc:	00100593          	li	a1,1
    1fe0:	1bc010ef          	jal	ra,319c <calloc_beebs>
    1fe4:	62944583          	lbu	a1,1577(s0)
    1fe8:	00012d37          	lui	s10,0x12
    1fec:	62ad2a23          	sw	a0,1588(s10) # 12634 <framebase>
    1ff0:	00158513          	addi	a0,a1,1
    1ff4:	02012423          	sw	zero,40(sp)
    1ff8:	284010ef          	jal	ra,327c <__mulsi3>
    1ffc:	40155513          	srai	a0,a0,0x1
    2000:	00750513          	addi	a0,a0,7
    2004:	00100593          	li	a1,1
    2008:	40355513          	srai	a0,a0,0x3
    200c:	190010ef          	jal	ra,319c <calloc_beebs>
    2010:	62944783          	lbu	a5,1577(s0)
    2014:	00012c37          	lui	s8,0x12
    2018:	62ac2823          	sw	a0,1584(s8) # 12630 <framask>
    201c:	00178513          	addi	a0,a5,1
    2020:	138010ef          	jal	ra,3158 <malloc_beebs>
    2024:	000127b7          	lui	a5,0x12
    2028:	62a7a623          	sw	a0,1580(a5) # 1262c <rlens>
    202c:	08000a93          	li	s5,128
    2030:	02812783          	lw	a5,40(sp)
    2034:	00100713          	li	a4,1
    2038:	52e786e3          	beq	a5,a4,2d64 <initframe+0xdd4>
    203c:	02812783          	lw	a5,40(sp)
    2040:	00200713          	li	a4,2
    2044:	42e784e3          	beq	a5,a4,2c6c <initframe+0xcdc>
    2048:	00100793          	li	a5,1
    204c:	02f12223          	sw	a5,36(sp)
    2050:	04f12c23          	sw	a5,88(sp)
    2054:	00500793          	li	a5,5
    2058:	04f12a23          	sw	a5,84(sp)
    205c:	04f12823          	sw	a5,80(sp)
    2060:	00400793          	li	a5,4
    2064:	04f12623          	sw	a5,76(sp)
    2068:	00800793          	li	a5,8
    206c:	02f12a23          	sw	a5,52(sp)
    2070:	02000793          	li	a5,32
    2074:	02f12823          	sw	a5,48(sp)
    2078:	00200793          	li	a5,2
    207c:	04f12223          	sw	a5,68(sp)
    2080:	00500793          	li	a5,5
    2084:	02f12023          	sw	a5,32(sp)
    2088:	00f12e23          	sw	a5,28(sp)
    208c:	00100793          	li	a5,1
    2090:	00f12c23          	sw	a5,24(sp)
    2094:	00f12a23          	sw	a5,20(sp)
    2098:	08000793          	li	a5,128
    209c:	00f12423          	sw	a5,8(sp)
    20a0:	00200793          	li	a5,2
    20a4:	04012423          	sw	zero,72(sp)
    20a8:	02012623          	sw	zero,44(sp)
    20ac:	00600d93          	li	s11,6
    20b0:	00200913          	li	s2,2
    20b4:	00000993          	li	s3,0
    20b8:	00012223          	sw	zero,4(sp)
    20bc:	01000a13          	li	s4,16
    20c0:	00300593          	li	a1,3
    20c4:	00000413          	li	s0,0
    20c8:	00000493          	li	s1,0
    20cc:	02012e23          	sw	zero,60(sp)
    20d0:	04012023          	sw	zero,64(sp)
    20d4:	02012c23          	sw	zero,56(sp)
    20d8:	04f12e23          	sw	a5,92(sp)
    20dc:	628cc503          	lbu	a0,1576(s9)
    20e0:	00640b93          	addi	s7,s0,6
    20e4:	198010ef          	jal	ra,327c <__mulsi3>
    20e8:	634d2783          	lw	a5,1588(s10)
    20ec:	00950533          	add	a0,a0,s1
    20f0:	03c12703          	lw	a4,60(sp)
    20f4:	00a787b3          	add	a5,a5,a0
    20f8:	0007c683          	lbu	a3,0(a5)
    20fc:	00170493          	addi	s1,a4,1
    2100:	40870733          	sub	a4,a4,s0
    2104:	00da6a33          	or	s4,s4,a3
    2108:	01478023          	sb	s4,0(a5)
    210c:	03812783          	lw	a5,56(sp)
    2110:	00e12823          	sw	a4,16(sp)
    2114:	408484b3          	sub	s1,s1,s0
    2118:	408787b3          	sub	a5,a5,s0
    211c:	00f12623          	sw	a5,12(sp)
    2120:	00040a13          	mv	s4,s0
    2124:	01012783          	lw	a5,16(sp)
    2128:	628cc503          	lbu	a0,1576(s9)
    212c:	00040593          	mv	a1,s0
    2130:	014787b3          	add	a5,a5,s4
    2134:	4037db13          	srai	s6,a5,0x3
    2138:	144010ef          	jal	ra,327c <__mulsi3>
    213c:	634d2683          	lw	a3,1588(s10)
    2140:	00c12783          	lw	a5,12(sp)
    2144:	00ab0533          	add	a0,s6,a0
    2148:	00a686b3          	add	a3,a3,a0
    214c:	0006c603          	lbu	a2,0(a3)
    2150:	014787b3          	add	a5,a5,s4
    2154:	0077f793          	andi	a5,a5,7
    2158:	40fad7b3          	sra	a5,s5,a5
    215c:	00c7e7b3          	or	a5,a5,a2
    2160:	00f68023          	sb	a5,0(a3)
    2164:	628cc503          	lbu	a0,1576(s9)
    2168:	000a0b13          	mv	s6,s4
    216c:	001a0a13          	addi	s4,s4,1
    2170:	000a0593          	mv	a1,s4
    2174:	108010ef          	jal	ra,327c <__mulsi3>
    2178:	00412783          	lw	a5,4(sp)
    217c:	634d2683          	lw	a3,1588(s10)
    2180:	000b0593          	mv	a1,s6
    2184:	00f50533          	add	a0,a0,a5
    2188:	00a686b3          	add	a3,a3,a0
    218c:	0006c603          	lbu	a2,0(a3)
    2190:	00812783          	lw	a5,8(sp)
    2194:	01648b33          	add	s6,s1,s6
    2198:	00c7e633          	or	a2,a5,a2
    219c:	00c68023          	sb	a2,0(a3)
    21a0:	628cc503          	lbu	a0,1576(s9)
    21a4:	0d8010ef          	jal	ra,327c <__mulsi3>
    21a8:	634d2683          	lw	a3,1588(s10)
    21ac:	01350533          	add	a0,a0,s3
    21b0:	000d8593          	mv	a1,s11
    21b4:	00a686b3          	add	a3,a3,a0
    21b8:	0006c603          	lbu	a2,0(a3)
    21bc:	00c96633          	or	a2,s2,a2
    21c0:	00c68023          	sb	a2,0(a3)
    21c4:	628cc503          	lbu	a0,1576(s9)
    21c8:	0b4010ef          	jal	ra,327c <__mulsi3>
    21cc:	634d2683          	lw	a3,1588(s10)
    21d0:	403b5613          	srai	a2,s6,0x3
    21d4:	00c50533          	add	a0,a0,a2
    21d8:	00a686b3          	add	a3,a3,a0
    21dc:	0006c603          	lbu	a2,0(a3)
    21e0:	007b7793          	andi	a5,s6,7
    21e4:	40fad7b3          	sra	a5,s5,a5
    21e8:	00c7e7b3          	or	a5,a5,a2
    21ec:	00f68023          	sb	a5,0(a3)
    21f0:	f34b9ae3          	bne	s7,s4,2124 <initframe+0x194>
    21f4:	03812783          	lw	a5,56(sp)
    21f8:	04012703          	lw	a4,64(sp)
    21fc:	05012b03          	lw	s6,80(sp)
    2200:	00178a13          	addi	s4,a5,1
    2204:	00578993          	addi	s3,a5,5
    2208:	05412b83          	lw	s7,84(sp)
    220c:	05812d83          	lw	s11,88(sp)
    2210:	0ffa7a13          	zext.b	s4,s4
    2214:	00170493          	addi	s1,a4,1
    2218:	0ff9f993          	zext.b	s3,s3
    221c:	00812223          	sw	s0,4(sp)
    2220:	0ff4f493          	zext.b	s1,s1
    2224:	000a0413          	mv	s0,s4
    2228:	00098a13          	mv	s4,s3
    222c:	02412783          	lw	a5,36(sp)
    2230:	01412703          	lw	a4,20(sp)
    2234:	00048913          	mv	s2,s1
    2238:	00040993          	mv	s3,s0
    223c:	00078593          	mv	a1,a5
    2240:	00877663          	bgeu	a4,s0,224c <initframe+0x2bc>
    2244:	00040593          	mv	a1,s0
    2248:	00078993          	mv	s3,a5
    224c:	00158513          	addi	a0,a1,1
    2250:	02c010ef          	jal	ra,327c <__mulsi3>
    2254:	630c2703          	lw	a4,1584(s8)
    2258:	00155513          	srli	a0,a0,0x1
    225c:	01350533          	add	a0,a0,s3
    2260:	00355693          	srli	a3,a0,0x3
    2264:	00d70733          	add	a4,a4,a3
    2268:	00074683          	lbu	a3,0(a4)
    226c:	00757513          	andi	a0,a0,7
    2270:	40aad533          	sra	a0,s5,a0
    2274:	01812783          	lw	a5,24(sp)
    2278:	00d56533          	or	a0,a0,a3
    227c:	00148493          	addi	s1,s1,1
    2280:	0ff4f493          	zext.b	s1,s1
    2284:	00a70023          	sb	a0,0(a4)
    2288:	00048593          	mv	a1,s1
    228c:	000d8993          	mv	s3,s11
    2290:	00f4f663          	bgeu	s1,a5,229c <initframe+0x30c>
    2294:	000d8593          	mv	a1,s11
    2298:	00048993          	mv	s3,s1
    229c:	00158513          	addi	a0,a1,1
    22a0:	7dd000ef          	jal	ra,327c <__mulsi3>
    22a4:	630c2703          	lw	a4,1584(s8)
    22a8:	00155513          	srli	a0,a0,0x1
    22ac:	01350533          	add	a0,a0,s3
    22b0:	00355693          	srli	a3,a0,0x3
    22b4:	00d70733          	add	a4,a4,a3
    22b8:	00074683          	lbu	a3,0(a4)
    22bc:	00757513          	andi	a0,a0,7
    22c0:	40aad533          	sra	a0,s5,a0
    22c4:	01c12783          	lw	a5,28(sp)
    22c8:	00d56533          	or	a0,a0,a3
    22cc:	00a70023          	sb	a0,0(a4)
    22d0:	000b8593          	mv	a1,s7
    22d4:	00f96663          	bltu	s2,a5,22e0 <initframe+0x350>
    22d8:	00090593          	mv	a1,s2
    22dc:	000b8913          	mv	s2,s7
    22e0:	00158513          	addi	a0,a1,1
    22e4:	799000ef          	jal	ra,327c <__mulsi3>
    22e8:	630c2703          	lw	a4,1584(s8)
    22ec:	00155513          	srli	a0,a0,0x1
    22f0:	01250533          	add	a0,a0,s2
    22f4:	00355693          	srli	a3,a0,0x3
    22f8:	00d70733          	add	a4,a4,a3
    22fc:	00074683          	lbu	a3,0(a4)
    2300:	00140793          	addi	a5,s0,1
    2304:	00757513          	andi	a0,a0,7
    2308:	0ff7f413          	zext.b	s0,a5
    230c:	40aad533          	sra	a0,s5,a0
    2310:	02012783          	lw	a5,32(sp)
    2314:	00d56533          	or	a0,a0,a3
    2318:	00a70023          	sb	a0,0(a4)
    231c:	000b0593          	mv	a1,s6
    2320:	00040913          	mv	s2,s0
    2324:	0087f663          	bgeu	a5,s0,2330 <initframe+0x3a0>
    2328:	00040593          	mv	a1,s0
    232c:	000b0913          	mv	s2,s6
    2330:	00158513          	addi	a0,a1,1
    2334:	749000ef          	jal	ra,327c <__mulsi3>
    2338:	630c2703          	lw	a4,1584(s8)
    233c:	00155513          	srli	a0,a0,0x1
    2340:	01250533          	add	a0,a0,s2
    2344:	00355693          	srli	a3,a0,0x3
    2348:	00d70733          	add	a4,a4,a3
    234c:	00074683          	lbu	a3,0(a4)
    2350:	00757513          	andi	a0,a0,7
    2354:	40aad533          	sra	a0,s5,a0
    2358:	00d56533          	or	a0,a0,a3
    235c:	00a70023          	sb	a0,0(a4)
    2360:	ed4416e3          	bne	s0,s4,222c <initframe+0x29c>
    2364:	00412403          	lw	s0,4(sp)
    2368:	03c12783          	lw	a5,60(sp)
    236c:	05c14483          	lbu	s1,92(sp)
    2370:	00340993          	addi	s3,s0,3
    2374:	00278a13          	addi	s4,a5,2
    2378:	403a5913          	srai	s2,s4,0x3
    237c:	00098b93          	mv	s7,s3
    2380:	04412b03          	lw	s6,68(sp)
    2384:	000a0993          	mv	s3,s4
    2388:	04812d83          	lw	s11,72(sp)
    238c:	04c12a03          	lw	s4,76(sp)
    2390:	00540413          	addi	s0,s0,5
    2394:	628cc503          	lbu	a0,1576(s9)
    2398:	000b0593          	mv	a1,s6
    239c:	00198993          	addi	s3,s3,1
    23a0:	6dd000ef          	jal	ra,327c <__mulsi3>
    23a4:	634d2683          	lw	a3,1588(s10)
    23a8:	01250533          	add	a0,a0,s2
    23ac:	0074f793          	andi	a5,s1,7
    23b0:	00a686b3          	add	a3,a3,a0
    23b4:	0006c503          	lbu	a0,0(a3)
    23b8:	40fad7b3          	sra	a5,s5,a5
    23bc:	000b8593          	mv	a1,s7
    23c0:	00a7e7b3          	or	a5,a5,a0
    23c4:	00f68023          	sb	a5,0(a3)
    23c8:	628cc503          	lbu	a0,1576(s9)
    23cc:	4039d913          	srai	s2,s3,0x3
    23d0:	00148493          	addi	s1,s1,1
    23d4:	6a9000ef          	jal	ra,327c <__mulsi3>
    23d8:	02c12703          	lw	a4,44(sp)
    23dc:	634d2783          	lw	a5,1588(s10)
    23e0:	fffb8593          	addi	a1,s7,-1
    23e4:	00e50533          	add	a0,a0,a4
    23e8:	00a787b3          	add	a5,a5,a0
    23ec:	0007c683          	lbu	a3,0(a5)
    23f0:	03012703          	lw	a4,48(sp)
    23f4:	001b8b93          	addi	s7,s7,1
    23f8:	0ff4f493          	zext.b	s1,s1
    23fc:	00d766b3          	or	a3,a4,a3
    2400:	00d78023          	sb	a3,0(a5)
    2404:	628cc503          	lbu	a0,1576(s9)
    2408:	675000ef          	jal	ra,327c <__mulsi3>
    240c:	634d2783          	lw	a5,1588(s10)
    2410:	01b50533          	add	a0,a0,s11
    2414:	03412703          	lw	a4,52(sp)
    2418:	00a787b3          	add	a5,a5,a0
    241c:	0007c683          	lbu	a3,0(a5)
    2420:	000a0593          	mv	a1,s4
    2424:	00d766b3          	or	a3,a4,a3
    2428:	00d78023          	sb	a3,0(a5)
    242c:	628cc503          	lbu	a0,1576(s9)
    2430:	64d000ef          	jal	ra,327c <__mulsi3>
    2434:	634d2683          	lw	a3,1588(s10)
    2438:	01250533          	add	a0,a0,s2
    243c:	0079f793          	andi	a5,s3,7
    2440:	00a686b3          	add	a3,a3,a0
    2444:	0006c583          	lbu	a1,0(a3)
    2448:	40fad7b3          	sra	a5,s5,a5
    244c:	00b7e7b3          	or	a5,a5,a1
    2450:	00f68023          	sb	a5,0(a3)
    2454:	f57410e3          	bne	s0,s7,2394 <initframe+0x404>
    2458:	02812783          	lw	a5,40(sp)
    245c:	00300713          	li	a4,3
    2460:	00178793          	addi	a5,a5,1
    2464:	0ff7f793          	zext.b	a5,a5
    2468:	02f12423          	sw	a5,40(sp)
    246c:	bce792e3          	bne	a5,a4,2030 <initframe+0xa0>
    2470:	00012a37          	lui	s4,0x12
    2474:	62aa4703          	lbu	a4,1578(s4) # 1262a <VERSION>
    2478:	00100793          	li	a5,1
    247c:	08e7f463          	bgeu	a5,a4,2504 <initframe+0x574>
    2480:	000127b7          	lui	a5,0x12
    2484:	6297c403          	lbu	s0,1577(a5) # 12629 <WD>
    2488:	000107b7          	lui	a5,0x10
    248c:	2a078793          	addi	a5,a5,672 # 102a0 <adelta>
    2490:	00e787b3          	add	a5,a5,a4
    2494:	0007c483          	lbu	s1,0(a5)
    2498:	ff940413          	addi	s0,s0,-7
    249c:	0ff47913          	zext.b	s2,s0
    24a0:	00948a93          	addi	s5,s1,9
    24a4:	ffd48993          	addi	s3,s1,-3
    24a8:	0ff47413          	zext.b	s0,s0
    24ac:	0089e863          	bltu	s3,s0,24bc <initframe+0x52c>
    24b0:	0200006f          	j	24d0 <initframe+0x540>
    24b4:	0ff7f413          	zext.b	s0,a5
    24b8:	0089fc63          	bgeu	s3,s0,24d0 <initframe+0x540>
    24bc:	00040513          	mv	a0,s0
    24c0:	00090593          	mv	a1,s2
    24c4:	f8cff0ef          	jal	ra,1c50 <putalign>
    24c8:	409407b3          	sub	a5,s0,s1
    24cc:	fe9474e3          	bgeu	s0,s1,24b4 <initframe+0x524>
    24d0:	032afa63          	bgeu	s5,s2,2504 <initframe+0x574>
    24d4:	40990933          	sub	s2,s2,s1
    24d8:	0ff97913          	zext.b	s2,s2
    24dc:	00090593          	mv	a1,s2
    24e0:	00600513          	li	a0,6
    24e4:	f6cff0ef          	jal	ra,1c50 <putalign>
    24e8:	00600593          	li	a1,6
    24ec:	00090513          	mv	a0,s2
    24f0:	f60ff0ef          	jal	ra,1c50 <putalign>
    24f4:	000127b7          	lui	a5,0x12
    24f8:	6297c403          	lbu	s0,1577(a5) # 12629 <WD>
    24fc:	ff940413          	addi	s0,s0,-7
    2500:	fa9ff06f          	j	24a8 <initframe+0x518>
    2504:	000127b7          	lui	a5,0x12
    2508:	6297c503          	lbu	a0,1577(a5) # 12629 <WD>
    250c:	628cc583          	lbu	a1,1576(s9)
    2510:	01c00a93          	li	s5,28
    2514:	ff850513          	addi	a0,a0,-8
    2518:	565000ef          	jal	ra,327c <__mulsi3>
    251c:	634d2783          	lw	a5,1588(s10)
    2520:	00150713          	addi	a4,a0,1
    2524:	00000993          	li	s3,0
    2528:	00e787b3          	add	a5,a5,a4
    252c:	0007c703          	lbu	a4,0(a5)
    2530:	08000b13          	li	s6,128
    2534:	00600493          	li	s1,6
    2538:	f8076713          	ori	a4,a4,-128
    253c:	00e78023          	sb	a4,0(a5)
    2540:	00700413          	li	s0,7
    2544:	0940006f          	j	25d8 <initframe+0x648>
    2548:	00078593          	mv	a1,a5
    254c:	00158513          	addi	a0,a1,1
    2550:	52d000ef          	jal	ra,327c <__mulsi3>
    2554:	630c2783          	lw	a5,1584(s8)
    2558:	00155513          	srli	a0,a0,0x1
    255c:	01750533          	add	a0,a0,s7
    2560:	00355713          	srli	a4,a0,0x3
    2564:	00e787b3          	add	a5,a5,a4
    2568:	0007c703          	lbu	a4,0(a5)
    256c:	00757513          	andi	a0,a0,7
    2570:	40ab5533          	sra	a0,s6,a0
    2574:	00e56533          	or	a0,a0,a4
    2578:	00a78023          	sb	a0,0(a5)
    257c:	000127b7          	lui	a5,0x12
    2580:	6297c703          	lbu	a4,1577(a5) # 12629 <WD>
    2584:	01c00793          	li	a5,28
    2588:	ff970713          	addi	a4,a4,-7
    258c:	00e905b3          	add	a1,s2,a4
    2590:	0ff5f593          	zext.b	a1,a1
    2594:	00158513          	addi	a0,a1,1
    2598:	00b4f863          	bgeu	s1,a1,25a8 <initframe+0x618>
    259c:	4e1000ef          	jal	ra,327c <__mulsi3>
    25a0:	00155793          	srli	a5,a0,0x1
    25a4:	00700593          	li	a1,7
    25a8:	630c2703          	lw	a4,1584(s8)
    25ac:	00b78533          	add	a0,a5,a1
    25b0:	00355793          	srli	a5,a0,0x3
    25b4:	00f707b3          	add	a5,a4,a5
    25b8:	0007c703          	lbu	a4,0(a5)
    25bc:	00757513          	andi	a0,a0,7
    25c0:	40ab5533          	sra	a0,s6,a0
    25c4:	00e56533          	or	a0,a0,a4
    25c8:	00a78023          	sb	a0,0(a5)
    25cc:	00198993          	addi	s3,s3,1
    25d0:	001a8a93          	addi	s5,s5,1
    25d4:	04898663          	beq	s3,s0,2620 <initframe+0x690>
    25d8:	630c2703          	lw	a4,1584(s8)
    25dc:	003ad693          	srli	a3,s5,0x3
    25e0:	007af793          	andi	a5,s5,7
    25e4:	00d70733          	add	a4,a4,a3
    25e8:	00074683          	lbu	a3,0(a4)
    25ec:	40fb57b3          	sra	a5,s6,a5
    25f0:	0ff9f913          	zext.b	s2,s3
    25f4:	00d7e7b3          	or	a5,a5,a3
    25f8:	00f70023          	sb	a5,0(a4)
    25fc:	000127b7          	lui	a5,0x12
    2600:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    2604:	00098593          	mv	a1,s3
    2608:	00098b93          	mv	s7,s3
    260c:	ff878793          	addi	a5,a5,-8
    2610:	0ff7f793          	zext.b	a5,a5
    2614:	f2f96ae3          	bltu	s2,a5,2548 <initframe+0x5b8>
    2618:	00078b93          	mv	s7,a5
    261c:	f31ff06f          	j	254c <initframe+0x5bc>
    2620:	01c00a93          	li	s5,28
    2624:	00000913          	li	s2,0
    2628:	08000b13          	li	s6,128
    262c:	00700493          	li	s1,7
    2630:	00800413          	li	s0,8
    2634:	0440006f          	j	2678 <initframe+0x6e8>
    2638:	00078d93          	mv	s11,a5
    263c:	00158513          	addi	a0,a1,1
    2640:	43d000ef          	jal	ra,327c <__mulsi3>
    2644:	630c2783          	lw	a5,1584(s8)
    2648:	00155513          	srli	a0,a0,0x1
    264c:	01b50533          	add	a0,a0,s11
    2650:	00355713          	srli	a4,a0,0x3
    2654:	00e787b3          	add	a5,a5,a4
    2658:	0007c703          	lbu	a4,0(a5)
    265c:	00757513          	andi	a0,a0,7
    2660:	40ab5533          	sra	a0,s6,a0
    2664:	00e56533          	or	a0,a0,a4
    2668:	00a78023          	sb	a0,0(a5)
    266c:	00190913          	addi	s2,s2,1
    2670:	001a8a93          	addi	s5,s5,1
    2674:	08890e63          	beq	s2,s0,2710 <initframe+0x780>
    2678:	630c2703          	lw	a4,1584(s8)
    267c:	003ad693          	srli	a3,s5,0x3
    2680:	007af793          	andi	a5,s5,7
    2684:	00d70733          	add	a4,a4,a3
    2688:	00074683          	lbu	a3,0(a4)
    268c:	40fb57b3          	sra	a5,s6,a5
    2690:	0ff97b93          	zext.b	s7,s2
    2694:	00d7e7b3          	or	a5,a5,a3
    2698:	00f70023          	sb	a5,0(a4)
    269c:	000127b7          	lui	a5,0x12
    26a0:	6297c583          	lbu	a1,1577(a5) # 12629 <WD>
    26a4:	01c00793          	li	a5,28
    26a8:	ff858593          	addi	a1,a1,-8
    26ac:	00bb85b3          	add	a1,s7,a1
    26b0:	0ff5f593          	zext.b	a1,a1
    26b4:	00158513          	addi	a0,a1,1
    26b8:	00b4f863          	bgeu	s1,a1,26c8 <initframe+0x738>
    26bc:	3c1000ef          	jal	ra,327c <__mulsi3>
    26c0:	00155793          	srli	a5,a0,0x1
    26c4:	00098593          	mv	a1,s3
    26c8:	630c2703          	lw	a4,1584(s8)
    26cc:	00b78533          	add	a0,a5,a1
    26d0:	00355793          	srli	a5,a0,0x3
    26d4:	00f707b3          	add	a5,a4,a5
    26d8:	0007c703          	lbu	a4,0(a5)
    26dc:	00757513          	andi	a0,a0,7
    26e0:	40ab5533          	sra	a0,s6,a0
    26e4:	00e56533          	or	a0,a0,a4
    26e8:	00a78023          	sb	a0,0(a5)
    26ec:	000127b7          	lui	a5,0x12
    26f0:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    26f4:	00090d93          	mv	s11,s2
    26f8:	00090593          	mv	a1,s2
    26fc:	ff878793          	addi	a5,a5,-8
    2700:	0ff7f793          	zext.b	a5,a5
    2704:	f377eae3          	bltu	a5,s7,2638 <initframe+0x6a8>
    2708:	00078593          	mv	a1,a5
    270c:	f31ff06f          	j	263c <initframe+0x6ac>
    2710:	02400713          	li	a4,36
    2714:	08000513          	li	a0,128
    2718:	02d00593          	li	a1,45
    271c:	630c2683          	lw	a3,1584(s8)
    2720:	00375613          	srli	a2,a4,0x3
    2724:	00777793          	andi	a5,a4,7
    2728:	00c686b3          	add	a3,a3,a2
    272c:	0006c603          	lbu	a2,0(a3)
    2730:	40f557b3          	sra	a5,a0,a5
    2734:	00170713          	addi	a4,a4,1
    2738:	00c7e7b3          	or	a5,a5,a2
    273c:	00f68023          	sb	a5,0(a3)
    2740:	fcb71ee3          	bne	a4,a1,271c <initframe+0x78c>
    2744:	02400413          	li	s0,36
    2748:	00800a93          	li	s5,8
    274c:	08000493          	li	s1,128
    2750:	02c00993          	li	s3,44
    2754:	000127b7          	lui	a5,0x12
    2758:	6297c583          	lbu	a1,1577(a5) # 12629 <WD>
    275c:	0ff47b13          	zext.b	s6,s0
    2760:	02400793          	li	a5,36
    2764:	00bb05b3          	add	a1,s6,a1
    2768:	fd458593          	addi	a1,a1,-44
    276c:	0ff5f593          	zext.b	a1,a1
    2770:	00158513          	addi	a0,a1,1
    2774:	00baf863          	bgeu	s5,a1,2784 <initframe+0x7f4>
    2778:	305000ef          	jal	ra,327c <__mulsi3>
    277c:	00155793          	srli	a5,a0,0x1
    2780:	00090593          	mv	a1,s2
    2784:	630c2703          	lw	a4,1584(s8)
    2788:	00b785b3          	add	a1,a5,a1
    278c:	0035d793          	srli	a5,a1,0x3
    2790:	00f707b3          	add	a5,a4,a5
    2794:	0007c703          	lbu	a4,0(a5)
    2798:	0075f593          	andi	a1,a1,7
    279c:	40b4d5b3          	sra	a1,s1,a1
    27a0:	00e5e5b3          	or	a1,a1,a4
    27a4:	00b78023          	sb	a1,0(a5)
    27a8:	630c2783          	lw	a5,1584(s8)
    27ac:	00345713          	srli	a4,s0,0x3
    27b0:	007b7b13          	andi	s6,s6,7
    27b4:	00e787b3          	add	a5,a5,a4
    27b8:	0007c703          	lbu	a4,0(a5)
    27bc:	4164db33          	sra	s6,s1,s6
    27c0:	00140413          	addi	s0,s0,1
    27c4:	00eb6b33          	or	s6,s6,a4
    27c8:	01678023          	sb	s6,0(a5)
    27cc:	f93414e3          	bne	s0,s3,2754 <initframe+0x7c4>
    27d0:	00000413          	li	s0,0
    27d4:	00700493          	li	s1,7
    27d8:	08000993          	li	s3,128
    27dc:	000127b7          	lui	a5,0x12
    27e0:	6297c583          	lbu	a1,1577(a5) # 12629 <WD>
    27e4:	02400793          	li	a5,36
    27e8:	ff958593          	addi	a1,a1,-7
    27ec:	008585b3          	add	a1,a1,s0
    27f0:	0ff5f593          	zext.b	a1,a1
    27f4:	00158513          	addi	a0,a1,1
    27f8:	00140413          	addi	s0,s0,1
    27fc:	00b4f863          	bgeu	s1,a1,280c <initframe+0x87c>
    2800:	27d000ef          	jal	ra,327c <__mulsi3>
    2804:	00155793          	srli	a5,a0,0x1
    2808:	00090593          	mv	a1,s2
    280c:	630c2703          	lw	a4,1584(s8)
    2810:	00b785b3          	add	a1,a5,a1
    2814:	0035d793          	srli	a5,a1,0x3
    2818:	00f707b3          	add	a5,a4,a5
    281c:	0007c703          	lbu	a4,0(a5)
    2820:	0075f593          	andi	a1,a1,7
    2824:	40b9d5b3          	sra	a1,s3,a1
    2828:	00e5e5b3          	or	a1,a1,a4
    282c:	00b78023          	sb	a1,0(a5)
    2830:	fa9416e3          	bne	s0,s1,27dc <initframe+0x84c>
    2834:	000127b7          	lui	a5,0x12
    2838:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    283c:	00e00713          	li	a4,14
    2840:	5ce78a63          	beq	a5,a4,2e14 <initframe+0xe84>
    2844:	00000993          	li	s3,0
    2848:	08000413          	li	s0,128
    284c:	00600493          	li	s1,6
    2850:	0600006f          	j	28b0 <initframe+0x920>
    2854:	628cc603          	lbu	a2,1576(s9)
    2858:	634d2683          	lw	a3,1588(s10)
    285c:	00198993          	addi	s3,s3,1
    2860:	00161793          	slli	a5,a2,0x1
    2864:	00c787b3          	add	a5,a5,a2
    2868:	00179793          	slli	a5,a5,0x1
    286c:	00a787b3          	add	a5,a5,a0
    2870:	00f686b3          	add	a3,a3,a5
    2874:	0006c783          	lbu	a5,0(a3)
    2878:	00190913          	addi	s2,s2,1
    287c:	00f767b3          	or	a5,a4,a5
    2880:	00f68023          	sb	a5,0(a3)
    2884:	628cc503          	lbu	a0,1576(s9)
    2888:	1f5000ef          	jal	ra,327c <__mulsi3>
    288c:	634d2783          	lw	a5,1588(s10)
    2890:	00a78533          	add	a0,a5,a0
    2894:	00054783          	lbu	a5,0(a0)
    2898:	0027e793          	ori	a5,a5,2
    289c:	00f50023          	sb	a5,0(a0)
    28a0:	000127b7          	lui	a5,0x12
    28a4:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    28a8:	ff278713          	addi	a4,a5,-14
    28ac:	0ce9f063          	bgeu	s3,a4,296c <initframe+0x9dc>
    28b0:	0079f793          	andi	a5,s3,7
    28b4:	40f45733          	sra	a4,s0,a5
    28b8:	0019f793          	andi	a5,s3,1
    28bc:	00395513          	srli	a0,s2,0x3
    28c0:	00090593          	mv	a1,s2
    28c4:	f80788e3          	beqz	a5,2854 <initframe+0x8c4>
    28c8:	0ff97a93          	zext.b	s5,s2
    28cc:	015a8793          	addi	a5,s5,21
    28d0:	001a8b13          	addi	s6,s5,1
    28d4:	0037d813          	srli	a6,a5,0x3
    28d8:	0ff97693          	zext.b	a3,s2
    28dc:	0077f793          	andi	a5,a5,7
    28e0:	000a8593          	mv	a1,s5
    28e4:	000b0513          	mv	a0,s6
    28e8:	40f45733          	sra	a4,s0,a5
    28ec:	28d4f463          	bgeu	s1,a3,2b74 <initframe+0xbe4>
    28f0:	18d000ef          	jal	ra,327c <__mulsi3>
    28f4:	630c2703          	lw	a4,1584(s8)
    28f8:	00155793          	srli	a5,a0,0x1
    28fc:	00678793          	addi	a5,a5,6
    2900:	0037d693          	srli	a3,a5,0x3
    2904:	00d70733          	add	a4,a4,a3
    2908:	00074683          	lbu	a3,0(a4)
    290c:	0077f793          	andi	a5,a5,7
    2910:	40f457b3          	sra	a5,s0,a5
    2914:	00d7e7b3          	or	a5,a5,a3
    2918:	00f70023          	sb	a5,0(a4)
    291c:	000a8593          	mv	a1,s5
    2920:	000b0513          	mv	a0,s6
    2924:	159000ef          	jal	ra,327c <__mulsi3>
    2928:	00155793          	srli	a5,a0,0x1
    292c:	00600a93          	li	s5,6
    2930:	630c2703          	lw	a4,1584(s8)
    2934:	015787b3          	add	a5,a5,s5
    2938:	0037d693          	srli	a3,a5,0x3
    293c:	00d70733          	add	a4,a4,a3
    2940:	00074683          	lbu	a3,0(a4)
    2944:	0077f793          	andi	a5,a5,7
    2948:	40f457b3          	sra	a5,s0,a5
    294c:	00d7e7b3          	or	a5,a5,a3
    2950:	00f70023          	sb	a5,0(a4)
    2954:	000127b7          	lui	a5,0x12
    2958:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    295c:	00198993          	addi	s3,s3,1
    2960:	00190913          	addi	s2,s2,1
    2964:	ff278713          	addi	a4,a5,-14
    2968:	f4e9e4e3          	bltu	s3,a4,28b0 <initframe+0x920>
    296c:	62aa4703          	lbu	a4,1578(s4)
    2970:	00070693          	mv	a3,a4
    2974:	00e12823          	sw	a4,16(sp)
    2978:	00600713          	li	a4,6
    297c:	10d77463          	bgeu	a4,a3,2a84 <initframe+0xaf4>
    2980:	01012703          	lw	a4,16(sp)
    2984:	00500413          	li	s0,5
    2988:	01100493          	li	s1,17
    298c:	ff970693          	addi	a3,a4,-7
    2990:	00010737          	lui	a4,0x10
    2994:	00269693          	slli	a3,a3,0x2
    2998:	2a070713          	addi	a4,a4,672 # 102a0 <adelta>
    299c:	00d70733          	add	a4,a4,a3
    29a0:	02c72703          	lw	a4,44(a4)
    29a4:	08000993          	li	s3,128
    29a8:	00b00b13          	li	s6,11
    29ac:	00e12a23          	sw	a4,20(sp)
    29b0:	4089dab3          	sra	s5,s3,s0
    29b4:	0ffaf713          	zext.b	a4,s5
    29b8:	00e12223          	sw	a4,4(sp)
    29bc:	00048d93          	mv	s11,s1
    29c0:	00000b93          	li	s7,0
    29c4:	0ff47a13          	zext.b	s4,s0
    29c8:	0ffbf813          	zext.b	a6,s7
    29cc:	1dbb7c63          	bgeu	s6,s11,2ba4 <initframe+0xc14>
    29d0:	01012703          	lw	a4,16(sp)
    29d4:	ff4d8613          	addi	a2,s11,-12
    29d8:	00c75633          	srl	a2,a4,a2
    29dc:	00167613          	andi	a2,a2,1
    29e0:	1c060a63          	beqz	a2,2bb4 <initframe+0xc24>
    29e4:	00200713          	li	a4,2
    29e8:	628cc583          	lbu	a1,1576(s9)
    29ec:	41770ab3          	sub	s5,a4,s7
    29f0:	01578533          	add	a0,a5,s5
    29f4:	ff550513          	addi	a0,a0,-11
    29f8:	085000ef          	jal	ra,327c <__mulsi3>
    29fc:	634d2783          	lw	a5,1588(s10)
    2a00:	00412703          	lw	a4,4(sp)
    2a04:	00040593          	mv	a1,s0
    2a08:	00a78533          	add	a0,a5,a0
    2a0c:	00054783          	lbu	a5,0(a0)
    2a10:	00f767b3          	or	a5,a4,a5
    2a14:	00f50023          	sb	a5,0(a0)
    2a18:	000127b7          	lui	a5,0x12
    2a1c:	6297c903          	lbu	s2,1577(a5) # 12629 <WD>
    2a20:	628cc503          	lbu	a0,1576(s9)
    2a24:	01590933          	add	s2,s2,s5
    2a28:	055000ef          	jal	ra,327c <__mulsi3>
    2a2c:	634d2783          	lw	a5,1588(s10)
    2a30:	ff590913          	addi	s2,s2,-11
    2a34:	40395613          	srai	a2,s2,0x3
    2a38:	00c50533          	add	a0,a0,a2
    2a3c:	00a787b3          	add	a5,a5,a0
    2a40:	0007c603          	lbu	a2,0(a5)
    2a44:	00797913          	andi	s2,s2,7
    2a48:	4129d933          	sra	s2,s3,s2
    2a4c:	00c96933          	or	s2,s2,a2
    2a50:	01278023          	sb	s2,0(a5)
    2a54:	fffd8713          	addi	a4,s11,-1
    2a58:	000127b7          	lui	a5,0x12
    2a5c:	0ff77d93          	zext.b	s11,a4
    2a60:	001b8b93          	addi	s7,s7,1
    2a64:	00300713          	li	a4,3
    2a68:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    2a6c:	f4eb9ee3          	bne	s7,a4,29c8 <initframe+0xa38>
    2a70:	ffd48493          	addi	s1,s1,-3
    2a74:	0ff4f493          	zext.b	s1,s1
    2a78:	0ff00713          	li	a4,255
    2a7c:	fff40413          	addi	s0,s0,-1
    2a80:	f2e498e3          	bne	s1,a4,29b0 <initframe+0xa20>
    2a84:	0a078a63          	beqz	a5,2b38 <initframe+0xba8>
    2a88:	00100493          	li	s1,1
    2a8c:	00000413          	li	s0,0
    2a90:	08000993          	li	s3,128
    2a94:	00000a13          	li	s4,0
    2a98:	0ff47913          	zext.b	s2,s0
    2a9c:	00c0006f          	j	2aa8 <initframe+0xb18>
    2aa0:	001a0a13          	addi	s4,s4,1
    2aa4:	089a0063          	beq	s4,s1,2b24 <initframe+0xb94>
    2aa8:	628cc503          	lbu	a0,1576(s9)
    2aac:	00040593          	mv	a1,s0
    2ab0:	7cc000ef          	jal	ra,327c <__mulsi3>
    2ab4:	634d2783          	lw	a5,1588(s10)
    2ab8:	003a5693          	srli	a3,s4,0x3
    2abc:	fffa4713          	not	a4,s4
    2ac0:	00a787b3          	add	a5,a5,a0
    2ac4:	00d787b3          	add	a5,a5,a3
    2ac8:	0007c783          	lbu	a5,0(a5)
    2acc:	00777713          	andi	a4,a4,7
    2ad0:	40e7d7b3          	sra	a5,a5,a4
    2ad4:	0017f793          	andi	a5,a5,1
    2ad8:	fc0784e3          	beqz	a5,2aa0 <initframe+0xb10>
    2adc:	0ffa7793          	zext.b	a5,s4
    2ae0:	0af96c63          	bltu	s2,a5,2b98 <initframe+0xc08>
    2ae4:	000a0a93          	mv	s5,s4
    2ae8:	00040593          	mv	a1,s0
    2aec:	00158513          	addi	a0,a1,1
    2af0:	78c000ef          	jal	ra,327c <__mulsi3>
    2af4:	630c2783          	lw	a5,1584(s8)
    2af8:	00155513          	srli	a0,a0,0x1
    2afc:	01550533          	add	a0,a0,s5
    2b00:	00355713          	srli	a4,a0,0x3
    2b04:	00e787b3          	add	a5,a5,a4
    2b08:	0007c703          	lbu	a4,0(a5)
    2b0c:	00757513          	andi	a0,a0,7
    2b10:	40a9d533          	sra	a0,s3,a0
    2b14:	00e56533          	or	a0,a0,a4
    2b18:	00a78023          	sb	a0,0(a5)
    2b1c:	001a0a13          	addi	s4,s4,1
    2b20:	f89a14e3          	bne	s4,s1,2aa8 <initframe+0xb18>
    2b24:	000127b7          	lui	a5,0x12
    2b28:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    2b2c:	00140413          	addi	s0,s0,1
    2b30:	00148493          	addi	s1,s1,1
    2b34:	f6f460e3          	bltu	s0,a5,2a94 <initframe+0xb04>
    2b38:	09c12083          	lw	ra,156(sp)
    2b3c:	09812403          	lw	s0,152(sp)
    2b40:	09412483          	lw	s1,148(sp)
    2b44:	09012903          	lw	s2,144(sp)
    2b48:	08c12983          	lw	s3,140(sp)
    2b4c:	08812a03          	lw	s4,136(sp)
    2b50:	08412a83          	lw	s5,132(sp)
    2b54:	08012b03          	lw	s6,128(sp)
    2b58:	07c12b83          	lw	s7,124(sp)
    2b5c:	07812c03          	lw	s8,120(sp)
    2b60:	07412c83          	lw	s9,116(sp)
    2b64:	07012d03          	lw	s10,112(sp)
    2b68:	06c12d83          	lw	s11,108(sp)
    2b6c:	0a010113          	addi	sp,sp,160
    2b70:	00008067          	ret
    2b74:	630c2603          	lw	a2,1584(s8)
    2b78:	01500793          	li	a5,21
    2b7c:	01060633          	add	a2,a2,a6
    2b80:	00064583          	lbu	a1,0(a2)
    2b84:	00b76733          	or	a4,a4,a1
    2b88:	00e60023          	sb	a4,0(a2)
    2b8c:	da9692e3          	bne	a3,s1,2930 <initframe+0x9a0>
    2b90:	001a8b13          	addi	s6,s5,1
    2b94:	d89ff06f          	j	291c <initframe+0x98c>
    2b98:	000a0593          	mv	a1,s4
    2b9c:	00040a93          	mv	s5,s0
    2ba0:	f4dff06f          	j	2aec <initframe+0xb5c>
    2ba4:	01412703          	lw	a4,20(sp)
    2ba8:	01b75633          	srl	a2,a4,s11
    2bac:	00167613          	andi	a2,a2,1
    2bb0:	e2061ae3          	bnez	a2,29e4 <initframe+0xa54>
    2bb4:	ff778593          	addi	a1,a5,-9
    2bb8:	410585b3          	sub	a1,a1,a6
    2bbc:	0ff5f593          	zext.b	a1,a1
    2bc0:	000a0613          	mv	a2,s4
    2bc4:	000a0913          	mv	s2,s4
    2bc8:	0145f663          	bgeu	a1,s4,2bd4 <initframe+0xc44>
    2bcc:	00058913          	mv	s2,a1
    2bd0:	000a0593          	mv	a1,s4
    2bd4:	00158513          	addi	a0,a1,1
    2bd8:	01012623          	sw	a6,12(sp)
    2bdc:	00c12423          	sw	a2,8(sp)
    2be0:	69c000ef          	jal	ra,327c <__mulsi3>
    2be4:	630c2583          	lw	a1,1584(s8)
    2be8:	00155513          	srli	a0,a0,0x1
    2bec:	00a907b3          	add	a5,s2,a0
    2bf0:	0037d513          	srli	a0,a5,0x3
    2bf4:	00a585b3          	add	a1,a1,a0
    2bf8:	0005c503          	lbu	a0,0(a1)
    2bfc:	0077f793          	andi	a5,a5,7
    2c00:	40f9d7b3          	sra	a5,s3,a5
    2c04:	00a7e7b3          	or	a5,a5,a0
    2c08:	00f58023          	sb	a5,0(a1)
    2c0c:	000127b7          	lui	a5,0x12
    2c10:	6297c903          	lbu	s2,1577(a5) # 12629 <WD>
    2c14:	00c12803          	lw	a6,12(sp)
    2c18:	00812603          	lw	a2,8(sp)
    2c1c:	ff790913          	addi	s2,s2,-9
    2c20:	41090933          	sub	s2,s2,a6
    2c24:	0ff97913          	zext.b	s2,s2
    2c28:	012a7663          	bgeu	s4,s2,2c34 <initframe+0xca4>
    2c2c:	00090613          	mv	a2,s2
    2c30:	000a0913          	mv	s2,s4
    2c34:	00060593          	mv	a1,a2
    2c38:	00160513          	addi	a0,a2,1
    2c3c:	640000ef          	jal	ra,327c <__mulsi3>
    2c40:	630c2603          	lw	a2,1584(s8)
    2c44:	00155513          	srli	a0,a0,0x1
    2c48:	00a90933          	add	s2,s2,a0
    2c4c:	00395793          	srli	a5,s2,0x3
    2c50:	00f60633          	add	a2,a2,a5
    2c54:	00064583          	lbu	a1,0(a2)
    2c58:	00797913          	andi	s2,s2,7
    2c5c:	4129d7b3          	sra	a5,s3,s2
    2c60:	00b7e7b3          	or	a5,a5,a1
    2c64:	00f60023          	sb	a5,0(a2)
    2c68:	dedff06f          	j	2a54 <initframe+0xac4>
    2c6c:	000127b7          	lui	a5,0x12
    2c70:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    2c74:	00100713          	li	a4,1
    2c78:	02e12223          	sw	a4,36(sp)
    2c7c:	00500713          	li	a4,5
    2c80:	04e12823          	sw	a4,80(sp)
    2c84:	ff978713          	addi	a4,a5,-7
    2c88:	0ff77813          	zext.b	a6,a4
    2c8c:	00480593          	addi	a1,a6,4
    2c90:	0075f713          	andi	a4,a1,7
    2c94:	ffa78513          	addi	a0,a5,-6
    2c98:	ffe78793          	addi	a5,a5,-2
    2c9c:	0ff7f313          	zext.b	t1,a5
    2ca0:	00787613          	andi	a2,a6,7
    2ca4:	40ead7b3          	sra	a5,s5,a4
    2ca8:	00280893          	addi	a7,a6,2
    2cac:	00385713          	srli	a4,a6,0x3
    2cb0:	0ff7f793          	zext.b	a5,a5
    2cb4:	40cad633          	sra	a2,s5,a2
    2cb8:	0078f693          	andi	a3,a7,7
    2cbc:	00e12223          	sw	a4,4(sp)
    2cc0:	02f12a23          	sw	a5,52(sp)
    2cc4:	0ff67713          	zext.b	a4,a2
    2cc8:	00400793          	li	a5,4
    2ccc:	00380493          	addi	s1,a6,3
    2cd0:	00680993          	addi	s3,a6,6
    2cd4:	40dad6b3          	sra	a3,s5,a3
    2cd8:	00e12423          	sw	a4,8(sp)
    2cdc:	04f12623          	sw	a5,76(sp)
    2ce0:	4038d713          	srai	a4,a7,0x3
    2ce4:	00200793          	li	a5,2
    2ce8:	0074fa13          	andi	s4,s1,7
    2cec:	0079f913          	andi	s2,s3,7
    2cf0:	02e12623          	sw	a4,44(sp)
    2cf4:	04f12223          	sw	a5,68(sp)
    2cf8:	0ff6f713          	zext.b	a4,a3
    2cfc:	00500793          	li	a5,5
    2d00:	0ff57513          	zext.b	a0,a0
    2d04:	414ada33          	sra	s4,s5,s4
    2d08:	412ad933          	sra	s2,s5,s2
    2d0c:	02e12823          	sw	a4,48(sp)
    2d10:	02f12023          	sw	a5,32(sp)
    2d14:	4035d713          	srai	a4,a1,0x3
    2d18:	00100793          	li	a5,1
    2d1c:	03012c23          	sw	a6,56(sp)
    2d20:	05112e23          	sw	a7,92(sp)
    2d24:	00a12c23          	sw	a0,24(sp)
    2d28:	00612e23          	sw	t1,28(sp)
    2d2c:	03012e23          	sw	a6,60(sp)
    2d30:	4034d493          	srai	s1,s1,0x3
    2d34:	0ffa7a13          	zext.b	s4,s4
    2d38:	4039d993          	srai	s3,s3,0x3
    2d3c:	0ff97913          	zext.b	s2,s2
    2d40:	04e12423          	sw	a4,72(sp)
    2d44:	04612a23          	sw	t1,84(sp)
    2d48:	04a12c23          	sw	a0,88(sp)
    2d4c:	00f12a23          	sw	a5,20(sp)
    2d50:	00600d93          	li	s11,6
    2d54:	00300593          	li	a1,3
    2d58:	00000413          	li	s0,0
    2d5c:	04012023          	sw	zero,64(sp)
    2d60:	b7cff06f          	j	20dc <initframe+0x14c>
    2d64:	000127b7          	lui	a5,0x12
    2d68:	6297c783          	lbu	a5,1577(a5) # 12629 <WD>
    2d6c:	00e12c23          	sw	a4,24(sp)
    2d70:	04e12c23          	sw	a4,88(sp)
    2d74:	ff978693          	addi	a3,a5,-7
    2d78:	ffa78713          	addi	a4,a5,-6
    2d7c:	ffe78793          	addi	a5,a5,-2
    2d80:	0ff7f793          	zext.b	a5,a5
    2d84:	02f12023          	sw	a5,32(sp)
    2d88:	04f12823          	sw	a5,80(sp)
    2d8c:	00500793          	li	a5,5
    2d90:	04f12a23          	sw	a5,84(sp)
    2d94:	00800793          	li	a5,8
    2d98:	02f12a23          	sw	a5,52(sp)
    2d9c:	02000793          	li	a5,32
    2da0:	02f12823          	sw	a5,48(sp)
    2da4:	00500793          	li	a5,5
    2da8:	0ff6f693          	zext.b	a3,a3
    2dac:	00f12e23          	sw	a5,28(sp)
    2db0:	08000793          	li	a5,128
    2db4:	0ff77713          	zext.b	a4,a4
    2db8:	00268613          	addi	a2,a3,2
    2dbc:	04d12023          	sw	a3,64(sp)
    2dc0:	00068413          	mv	s0,a3
    2dc4:	00368593          	addi	a1,a3,3
    2dc8:	00668d93          	addi	s11,a3,6
    2dcc:	00f12423          	sw	a5,8(sp)
    2dd0:	00468693          	addi	a3,a3,4
    2dd4:	00200793          	li	a5,2
    2dd8:	00e12a23          	sw	a4,20(sp)
    2ddc:	04c12223          	sw	a2,68(sp)
    2de0:	04d12623          	sw	a3,76(sp)
    2de4:	02e12223          	sw	a4,36(sp)
    2de8:	04012423          	sw	zero,72(sp)
    2dec:	02012623          	sw	zero,44(sp)
    2df0:	00200913          	li	s2,2
    2df4:	00000993          	li	s3,0
    2df8:	00012223          	sw	zero,4(sp)
    2dfc:	01000a13          	li	s4,16
    2e00:	00000493          	li	s1,0
    2e04:	02012e23          	sw	zero,60(sp)
    2e08:	02012c23          	sw	zero,56(sp)
    2e0c:	04f12e23          	sw	a5,92(sp)
    2e10:	accff06f          	j	20dc <initframe+0x14c>
    2e14:	62aa4703          	lbu	a4,1578(s4)
    2e18:	00070693          	mv	a3,a4
    2e1c:	00e12823          	sw	a4,16(sp)
    2e20:	00600713          	li	a4,6
    2e24:	b4d76ee3          	bltu	a4,a3,2980 <initframe+0x9f0>
    2e28:	c61ff06f          	j	2a88 <initframe+0xaf8>

00002e2c <freeframe>:
    2e2c:	000127b7          	lui	a5,0x12
    2e30:	6347a503          	lw	a0,1588(a5) # 12634 <framebase>
    2e34:	ff010113          	addi	sp,sp,-16
    2e38:	00112623          	sw	ra,12(sp)
    2e3c:	43c000ef          	jal	ra,3278 <free_beebs>
    2e40:	000127b7          	lui	a5,0x12
    2e44:	6307a503          	lw	a0,1584(a5) # 12630 <framask>
    2e48:	430000ef          	jal	ra,3278 <free_beebs>
    2e4c:	000127b7          	lui	a5,0x12
    2e50:	62c7a503          	lw	a0,1580(a5) # 1262c <rlens>
    2e54:	424000ef          	jal	ra,3278 <free_beebs>
    2e58:	00c12083          	lw	ra,12(sp)
    2e5c:	01010113          	addi	sp,sp,16
    2e60:	00008067          	ret

00002e64 <initecc>:
    2e64:	00259793          	slli	a5,a1,0x2
    2e68:	fe010113          	addi	sp,sp,-32
    2e6c:	01178793          	addi	a5,a5,17
    2e70:	0ff7f793          	zext.b	a5,a5
    2e74:	00812c23          	sw	s0,24(sp)
    2e78:	00012737          	lui	a4,0x12
    2e7c:	00058413          	mv	s0,a1
    2e80:	62870523          	sb	s0,1578(a4) # 1262a <VERSION>
    2e84:	00778593          	addi	a1,a5,7
    2e88:	00012737          	lui	a4,0x12
    2e8c:	01212823          	sw	s2,16(sp)
    2e90:	4035d593          	srai	a1,a1,0x3
    2e94:	62f704a3          	sb	a5,1577(a4) # 12629 <WD>
    2e98:	00050913          	mv	s2,a0
    2e9c:	00078513          	mv	a0,a5
    2ea0:	000127b7          	lui	a5,0x12
    2ea4:	00912a23          	sw	s1,20(sp)
    2ea8:	62b78423          	sb	a1,1576(a5) # 12628 <WDB>
    2eac:	00112e23          	sw	ra,28(sp)
    2eb0:	01312623          	sw	s3,12(sp)
    2eb4:	01412423          	sw	s4,8(sp)
    2eb8:	01512223          	sw	s5,4(sp)
    2ebc:	01612023          	sw	s6,0(sp)
    2ec0:	3bc000ef          	jal	ra,327c <__mulsi3>
    2ec4:	30000793          	li	a5,768
    2ec8:	30000493          	li	s1,768
    2ecc:	00f56463          	bltu	a0,a5,2ed4 <initecc+0x70>
    2ed0:	00050493          	mv	s1,a0
    2ed4:	00048513          	mv	a0,s1
    2ed8:	280000ef          	jal	ra,3158 <malloc_beebs>
    2edc:	fff40413          	addi	s0,s0,-1
    2ee0:	fff90793          	addi	a5,s2,-1
    2ee4:	00241413          	slli	s0,s0,0x2
    2ee8:	00f40433          	add	s0,s0,a5
    2eec:	000107b7          	lui	a5,0x10
    2ef0:	00241413          	slli	s0,s0,0x2
    2ef4:	2a078793          	addi	a5,a5,672 # 102a0 <adelta>
    2ef8:	008787b3          	add	a5,a5,s0
    2efc:	0b57c403          	lbu	s0,181(a5)
    2f00:	0b67c983          	lbu	s3,182(a5)
    2f04:	0b47c703          	lbu	a4,180(a5)
    2f08:	0b77c783          	lbu	a5,183(a5)
    2f0c:	00050613          	mv	a2,a0
    2f10:	000126b7          	lui	a3,0x12
    2f14:	00012ab7          	lui	s5,0x12
    2f18:	008705b3          	add	a1,a4,s0
    2f1c:	01378533          	add	a0,a5,s3
    2f20:	62c6a023          	sw	a2,1568(a3) # 12620 <qrframe>
    2f24:	60ea8da3          	sb	a4,1563(s5) # 1261b <neccblk1>
    2f28:	000126b7          	lui	a3,0x12
    2f2c:	00012737          	lui	a4,0x12
    2f30:	00012b37          	lui	s6,0x12
    2f34:	00012a37          	lui	s4,0x12
    2f38:	60f70c23          	sb	a5,1560(a4) # 12618 <eccblkwid>
    2f3c:	61268e23          	sb	s2,1564(a3) # 1261c <ECCLEVEL>
    2f40:	608b0d23          	sb	s0,1562(s6) # 1261a <neccblk2>
    2f44:	613a0ca3          	sb	s3,1561(s4) # 12619 <datablkw>
    2f48:	334000ef          	jal	ra,327c <__mulsi3>
    2f4c:	013507b3          	add	a5,a0,s3
    2f50:	00878533          	add	a0,a5,s0
    2f54:	00957463          	bgeu	a0,s1,2f5c <initecc+0xf8>
    2f58:	00048513          	mv	a0,s1
    2f5c:	1fc000ef          	jal	ra,3158 <malloc_beebs>
    2f60:	00050713          	mv	a4,a0
    2f64:	61ab4403          	lbu	s0,1562(s6)
    2f68:	61bac503          	lbu	a0,1563(s5)
    2f6c:	619a4583          	lbu	a1,1561(s4)
    2f70:	000127b7          	lui	a5,0x12
    2f74:	00850533          	add	a0,a0,s0
    2f78:	62e7a223          	sw	a4,1572(a5) # 12624 <strinbuf>
    2f7c:	300000ef          	jal	ra,327c <__mulsi3>
    2f80:	01c12083          	lw	ra,28(sp)
    2f84:	00850533          	add	a0,a0,s0
    2f88:	01812403          	lw	s0,24(sp)
    2f8c:	01412483          	lw	s1,20(sp)
    2f90:	01012903          	lw	s2,16(sp)
    2f94:	00c12983          	lw	s3,12(sp)
    2f98:	00812a03          	lw	s4,8(sp)
    2f9c:	00412a83          	lw	s5,4(sp)
    2fa0:	00012b03          	lw	s6,0(sp)
    2fa4:	ffd50513          	addi	a0,a0,-3
    2fa8:	02010113          	addi	sp,sp,32
    2fac:	00008067          	ret

00002fb0 <initeccsize>:
    2fb0:	fd010113          	addi	sp,sp,-48
    2fb4:	02812423          	sw	s0,40(sp)
    2fb8:	00010437          	lui	s0,0x10
    2fbc:	00251793          	slli	a5,a0,0x2
    2fc0:	35440413          	addi	s0,s0,852 # 10354 <eccblocks>
    2fc4:	03212023          	sw	s2,32(sp)
    2fc8:	01512a23          	sw	s5,20(sp)
    2fcc:	01612823          	sw	s6,16(sp)
    2fd0:	01712623          	sw	s7,12(sp)
    2fd4:	02112623          	sw	ra,44(sp)
    2fd8:	02912223          	sw	s1,36(sp)
    2fdc:	01312e23          	sw	s3,28(sp)
    2fe0:	01412c23          	sw	s4,24(sp)
    2fe4:	00050b13          	mv	s6,a0
    2fe8:	00058a93          	mv	s5,a1
    2fec:	00f40433          	add	s0,s0,a5
    2ff0:	00100913          	li	s2,1
    2ff4:	02800b93          	li	s7,40
    2ff8:	00c0006f          	j	3004 <initeccsize+0x54>
    2ffc:	0ff77913          	zext.b	s2,a4
    3000:	03790863          	beq	s2,s7,3030 <initeccsize+0x80>
    3004:	ffd44483          	lbu	s1,-3(s0)
    3008:	ffc44a03          	lbu	s4,-4(s0)
    300c:	ffe44983          	lbu	s3,-2(s0)
    3010:	01040413          	addi	s0,s0,16
    3014:	009a0533          	add	a0,s4,s1
    3018:	00098593          	mv	a1,s3
    301c:	260000ef          	jal	ra,327c <__mulsi3>
    3020:	009507b3          	add	a5,a0,s1
    3024:	ffd78793          	addi	a5,a5,-3
    3028:	00190713          	addi	a4,s2,1
    302c:	fcfaf8e3          	bgeu	s5,a5,2ffc <initeccsize+0x4c>
    3030:	000127b7          	lui	a5,0x12
    3034:	61478da3          	sb	s4,1563(a5) # 1261b <neccblk1>
    3038:	000127b7          	lui	a5,0x12
    303c:	60978d23          	sb	s1,1562(a5) # 1261a <neccblk2>
    3040:	00090593          	mv	a1,s2
    3044:	000b0513          	mv	a0,s6
    3048:	000127b7          	lui	a5,0x12
    304c:	61378ca3          	sb	s3,1561(a5) # 12619 <datablkw>
    3050:	e15ff0ef          	jal	ra,2e64 <initecc>
    3054:	02c12083          	lw	ra,44(sp)
    3058:	02812403          	lw	s0,40(sp)
    305c:	02412483          	lw	s1,36(sp)
    3060:	02012903          	lw	s2,32(sp)
    3064:	01c12983          	lw	s3,28(sp)
    3068:	01812a03          	lw	s4,24(sp)
    306c:	01412a83          	lw	s5,20(sp)
    3070:	01012b03          	lw	s6,16(sp)
    3074:	00c12b83          	lw	s7,12(sp)
    3078:	03010113          	addi	sp,sp,48
    307c:	00008067          	ret

00003080 <freeecc>:
    3080:	000127b7          	lui	a5,0x12
    3084:	6207a503          	lw	a0,1568(a5) # 12620 <qrframe>
    3088:	ff010113          	addi	sp,sp,-16
    308c:	00112623          	sw	ra,12(sp)
    3090:	1e8000ef          	jal	ra,3278 <free_beebs>
    3094:	000127b7          	lui	a5,0x12
    3098:	6247a503          	lw	a0,1572(a5) # 12624 <strinbuf>
    309c:	1dc000ef          	jal	ra,3278 <free_beebs>
    30a0:	00c12083          	lw	ra,12(sp)
    30a4:	01010113          	addi	sp,sp,16
    30a8:	00008067          	ret

000030ac <rand_beebs>:
    30ac:	000126b7          	lui	a3,0x12
    30b0:	6446a703          	lw	a4,1604(a3) # 12644 <seed>
    30b4:	00871793          	slli	a5,a4,0x8
    30b8:	40e787b3          	sub	a5,a5,a4
    30bc:	00379793          	slli	a5,a5,0x3
    30c0:	00e787b3          	add	a5,a5,a4
    30c4:	00779793          	slli	a5,a5,0x7
    30c8:	00e787b3          	add	a5,a5,a4
    30cc:	00379793          	slli	a5,a5,0x3
    30d0:	40e787b3          	sub	a5,a5,a4
    30d4:	00579613          	slli	a2,a5,0x5
    30d8:	00c78533          	add	a0,a5,a2
    30dc:	00251513          	slli	a0,a0,0x2
    30e0:	40e50533          	sub	a0,a0,a4
    30e4:	00251513          	slli	a0,a0,0x2
    30e8:	000037b7          	lui	a5,0x3
    30ec:	00e50533          	add	a0,a0,a4
    30f0:	03978793          	addi	a5,a5,57 # 3039 <initeccsize+0x89>
    30f4:	00f50533          	add	a0,a0,a5
    30f8:	00151513          	slli	a0,a0,0x1
    30fc:	00155513          	srli	a0,a0,0x1
    3100:	64a6a223          	sw	a0,1604(a3)
    3104:	01055513          	srli	a0,a0,0x10
    3108:	00008067          	ret

0000310c <srand_beebs>:
    310c:	000127b7          	lui	a5,0x12
    3110:	64a7a223          	sw	a0,1604(a5) # 12644 <seed>
    3114:	00008067          	ret

00003118 <init_heap_beebs>:
    3118:	000127b7          	lui	a5,0x12
    311c:	00b505b3          	add	a1,a0,a1
    3120:	64a7a023          	sw	a0,1600(a5) # 12640 <heap_ptr>
    3124:	000127b7          	lui	a5,0x12
    3128:	62b7ae23          	sw	a1,1596(a5) # 1263c <heap_end>
    312c:	000127b7          	lui	a5,0x12
    3130:	6207ac23          	sw	zero,1592(a5) # 12638 <heap_requested>
    3134:	00008067          	ret

00003138 <check_heap_beebs>:
    3138:	000127b7          	lui	a5,0x12
    313c:	6387a703          	lw	a4,1592(a5) # 12638 <heap_requested>
    3140:	000127b7          	lui	a5,0x12
    3144:	63c7a783          	lw	a5,1596(a5) # 1263c <heap_end>
    3148:	00e50533          	add	a0,a0,a4
    314c:	00a7b533          	sltu	a0,a5,a0
    3150:	00154513          	xori	a0,a0,1
    3154:	00008067          	ret

00003158 <malloc_beebs>:
    3158:	000126b7          	lui	a3,0x12
    315c:	6386a783          	lw	a5,1592(a3) # 12638 <heap_requested>
    3160:	00012637          	lui	a2,0x12
    3164:	64062703          	lw	a4,1600(a2) # 12640 <heap_ptr>
    3168:	000125b7          	lui	a1,0x12
    316c:	63c5a583          	lw	a1,1596(a1) # 1263c <heap_end>
    3170:	00a787b3          	add	a5,a5,a0
    3174:	62f6ac23          	sw	a5,1592(a3)
    3178:	00a707b3          	add	a5,a4,a0
    317c:	00f5ea63          	bltu	a1,a5,3190 <malloc_beebs+0x38>
    3180:	00050863          	beqz	a0,3190 <malloc_beebs+0x38>
    3184:	64f62023          	sw	a5,1600(a2)
    3188:	00070513          	mv	a0,a4
    318c:	00008067          	ret
    3190:	00000713          	li	a4,0
    3194:	00070513          	mv	a0,a4
    3198:	00008067          	ret

0000319c <calloc_beebs>:
    319c:	ff010113          	addi	sp,sp,-16
    31a0:	00112623          	sw	ra,12(sp)
    31a4:	0d8000ef          	jal	ra,327c <__mulsi3>
    31a8:	000126b7          	lui	a3,0x12
    31ac:	6386a703          	lw	a4,1592(a3) # 12638 <heap_requested>
    31b0:	000125b7          	lui	a1,0x12
    31b4:	00050613          	mv	a2,a0
    31b8:	6405a783          	lw	a5,1600(a1) # 12640 <heap_ptr>
    31bc:	00012537          	lui	a0,0x12
    31c0:	63c52503          	lw	a0,1596(a0) # 1263c <heap_end>
    31c4:	00c70733          	add	a4,a4,a2
    31c8:	62e6ac23          	sw	a4,1592(a3)
    31cc:	00c78733          	add	a4,a5,a2
    31d0:	02e56863          	bltu	a0,a4,3200 <calloc_beebs+0x64>
    31d4:	02060663          	beqz	a2,3200 <calloc_beebs+0x64>
    31d8:	64e5a023          	sw	a4,1600(a1)
    31dc:	00078a63          	beqz	a5,31f0 <calloc_beebs+0x54>
    31e0:	00078513          	mv	a0,a5
    31e4:	00000593          	li	a1,0
    31e8:	3c8000ef          	jal	ra,35b0 <memset>
    31ec:	00050793          	mv	a5,a0
    31f0:	00c12083          	lw	ra,12(sp)
    31f4:	00078513          	mv	a0,a5
    31f8:	01010113          	addi	sp,sp,16
    31fc:	00008067          	ret
    3200:	00c12083          	lw	ra,12(sp)
    3204:	00000793          	li	a5,0
    3208:	00078513          	mv	a0,a5
    320c:	01010113          	addi	sp,sp,16
    3210:	00008067          	ret

00003214 <realloc_beebs>:
    3214:	00012737          	lui	a4,0x12
    3218:	63872783          	lw	a5,1592(a4) # 12638 <heap_requested>
    321c:	00012637          	lui	a2,0x12
    3220:	64062683          	lw	a3,1600(a2) # 12640 <heap_ptr>
    3224:	00012837          	lui	a6,0x12
    3228:	63c82803          	lw	a6,1596(a6) # 1263c <heap_end>
    322c:	00b787b3          	add	a5,a5,a1
    3230:	62f72c23          	sw	a5,1592(a4)
    3234:	00b687b3          	add	a5,a3,a1
    3238:	02f86a63          	bltu	a6,a5,326c <realloc_beebs+0x58>
    323c:	02058863          	beqz	a1,326c <realloc_beebs+0x58>
    3240:	64f62023          	sw	a5,1600(a2)
    3244:	02050063          	beqz	a0,3264 <realloc_beebs+0x50>
    3248:	00068793          	mv	a5,a3
    324c:	00b505b3          	add	a1,a0,a1
    3250:	00054703          	lbu	a4,0(a0)
    3254:	00150513          	addi	a0,a0,1
    3258:	00178793          	addi	a5,a5,1
    325c:	fee78fa3          	sb	a4,-1(a5)
    3260:	feb518e3          	bne	a0,a1,3250 <realloc_beebs+0x3c>
    3264:	00068513          	mv	a0,a3
    3268:	00008067          	ret
    326c:	00000693          	li	a3,0
    3270:	00068513          	mv	a0,a3
    3274:	00008067          	ret

00003278 <free_beebs>:
    3278:	00008067          	ret

0000327c <__mulsi3>:
    327c:	00050613          	mv	a2,a0
    3280:	00000513          	li	a0,0
    3284:	0015f693          	andi	a3,a1,1
    3288:	00068463          	beqz	a3,3290 <__mulsi3+0x14>
    328c:	00c50533          	add	a0,a0,a2
    3290:	0015d593          	srli	a1,a1,0x1
    3294:	00161613          	slli	a2,a2,0x1
    3298:	fe0596e3          	bnez	a1,3284 <__mulsi3+0x8>
    329c:	00008067          	ret

000032a0 <memcmp>:
    32a0:	00300793          	li	a5,3
    32a4:	04c7f063          	bgeu	a5,a2,32e4 <memcmp+0x44>
    32a8:	00b567b3          	or	a5,a0,a1
    32ac:	0037f793          	andi	a5,a5,3
    32b0:	00300693          	li	a3,3
    32b4:	00078a63          	beqz	a5,32c8 <memcmp+0x28>
    32b8:	fff60713          	addi	a4,a2,-1
    32bc:	0300006f          	j	32ec <memcmp+0x4c>
    32c0:	00000513          	li	a0,0
    32c4:	00008067          	ret
    32c8:	00052703          	lw	a4,0(a0)
    32cc:	0005a783          	lw	a5,0(a1)
    32d0:	00f71a63          	bne	a4,a5,32e4 <memcmp+0x44>
    32d4:	00450513          	addi	a0,a0,4
    32d8:	00458593          	addi	a1,a1,4
    32dc:	ffc60613          	addi	a2,a2,-4
    32e0:	fec6e4e3          	bltu	a3,a2,32c8 <memcmp+0x28>
    32e4:	fff60713          	addi	a4,a2,-1
    32e8:	fc060ce3          	beqz	a2,32c0 <memcmp+0x20>
    32ec:	00050793          	mv	a5,a0
    32f0:	00170713          	addi	a4,a4,1
    32f4:	00e50533          	add	a0,a0,a4
    32f8:	0007c703          	lbu	a4,0(a5)
    32fc:	0005c683          	lbu	a3,0(a1)
    3300:	00d71c63          	bne	a4,a3,3318 <memcmp+0x78>
    3304:	00178793          	addi	a5,a5,1
    3308:	00158593          	addi	a1,a1,1
    330c:	fea796e3          	bne	a5,a0,32f8 <memcmp+0x58>
    3310:	00000513          	li	a0,0
    3314:	00008067          	ret
    3318:	40d70533          	sub	a0,a4,a3
    331c:	00008067          	ret

00003320 <memcpy>:
    3320:	00c50333          	add	t1,a0,a2
    3324:	00b547b3          	xor	a5,a0,a1
    3328:	0037f793          	andi	a5,a5,3
    332c:	06079663          	bnez	a5,3398 <memcpy+0x78>
    3330:	00300793          	li	a5,3
    3334:	06c7f263          	bgeu	a5,a2,3398 <memcpy+0x78>
    3338:	00357793          	andi	a5,a0,3
    333c:	00050713          	mv	a4,a0
    3340:	08079863          	bnez	a5,33d0 <memcpy+0xb0>
    3344:	ffc37813          	andi	a6,t1,-4
    3348:	00080893          	mv	a7,a6
    334c:	40e806b3          	sub	a3,a6,a4
    3350:	02000793          	li	a5,32
    3354:	08d7cc63          	blt	a5,a3,33ec <memcpy+0xcc>
    3358:	00058693          	mv	a3,a1
    335c:	00070793          	mv	a5,a4
    3360:	03077863          	bgeu	a4,a6,3390 <memcpy+0x70>
    3364:	0006a603          	lw	a2,0(a3)
    3368:	00478793          	addi	a5,a5,4
    336c:	00468693          	addi	a3,a3,4
    3370:	fec7ae23          	sw	a2,-4(a5)
    3374:	ff17e8e3          	bltu	a5,a7,3364 <memcpy+0x44>
    3378:	fff80793          	addi	a5,a6,-1
    337c:	40e787b3          	sub	a5,a5,a4
    3380:	ffc7f793          	andi	a5,a5,-4
    3384:	00478793          	addi	a5,a5,4
    3388:	00f70733          	add	a4,a4,a5
    338c:	00f585b3          	add	a1,a1,a5
    3390:	00676863          	bltu	a4,t1,33a0 <memcpy+0x80>
    3394:	00008067          	ret
    3398:	10657063          	bgeu	a0,t1,3498 <memcpy+0x178>
    339c:	00050713          	mv	a4,a0
    33a0:	0005c783          	lbu	a5,0(a1)
    33a4:	00170713          	addi	a4,a4,1
    33a8:	00158593          	addi	a1,a1,1
    33ac:	fef70fa3          	sb	a5,-1(a4)
    33b0:	fee318e3          	bne	t1,a4,33a0 <memcpy+0x80>
    33b4:	00008067          	ret
    33b8:	0005c783          	lbu	a5,0(a1)
    33bc:	00170713          	addi	a4,a4,1
    33c0:	00158593          	addi	a1,a1,1
    33c4:	fef70fa3          	sb	a5,-1(a4)
    33c8:	fee318e3          	bne	t1,a4,33b8 <memcpy+0x98>
    33cc:	0c00006f          	j	348c <memcpy+0x16c>
    33d0:	0005c783          	lbu	a5,0(a1)
    33d4:	00170713          	addi	a4,a4,1
    33d8:	00158593          	addi	a1,a1,1
    33dc:	fef70fa3          	sb	a5,-1(a4)
    33e0:	00377793          	andi	a5,a4,3
    33e4:	fe0796e3          	bnez	a5,33d0 <memcpy+0xb0>
    33e8:	f5dff06f          	j	3344 <memcpy+0x24>
    33ec:	ff010113          	addi	sp,sp,-16
    33f0:	00812623          	sw	s0,12(sp)
    33f4:	02000413          	li	s0,32
    33f8:	0005a383          	lw	t2,0(a1)
    33fc:	0045a283          	lw	t0,4(a1)
    3400:	0085af83          	lw	t6,8(a1)
    3404:	00c5af03          	lw	t5,12(a1)
    3408:	0105ae83          	lw	t4,16(a1)
    340c:	0145ae03          	lw	t3,20(a1)
    3410:	0185a603          	lw	a2,24(a1)
    3414:	01c5a683          	lw	a3,28(a1)
    3418:	02458593          	addi	a1,a1,36
    341c:	ffc5a783          	lw	a5,-4(a1)
    3420:	00772023          	sw	t2,0(a4)
    3424:	00572223          	sw	t0,4(a4)
    3428:	01f72423          	sw	t6,8(a4)
    342c:	01e72623          	sw	t5,12(a4)
    3430:	01d72823          	sw	t4,16(a4)
    3434:	01c72a23          	sw	t3,20(a4)
    3438:	00c72c23          	sw	a2,24(a4)
    343c:	00d72e23          	sw	a3,28(a4)
    3440:	02470713          	addi	a4,a4,36
    3444:	fef72e23          	sw	a5,-4(a4)
    3448:	40e807b3          	sub	a5,a6,a4
    344c:	faf446e3          	blt	s0,a5,33f8 <memcpy+0xd8>
    3450:	00058693          	mv	a3,a1
    3454:	00070793          	mv	a5,a4
    3458:	03177863          	bgeu	a4,a7,3488 <memcpy+0x168>
    345c:	0006a603          	lw	a2,0(a3)
    3460:	00478793          	addi	a5,a5,4
    3464:	00468693          	addi	a3,a3,4
    3468:	fec7ae23          	sw	a2,-4(a5)
    346c:	ff17e8e3          	bltu	a5,a7,345c <memcpy+0x13c>
    3470:	fff80793          	addi	a5,a6,-1
    3474:	40e787b3          	sub	a5,a5,a4
    3478:	ffc7f793          	andi	a5,a5,-4
    347c:	00478793          	addi	a5,a5,4
    3480:	00f70733          	add	a4,a4,a5
    3484:	00f585b3          	add	a1,a1,a5
    3488:	f26768e3          	bltu	a4,t1,33b8 <memcpy+0x98>
    348c:	00c12403          	lw	s0,12(sp)
    3490:	01010113          	addi	sp,sp,16
    3494:	00008067          	ret
    3498:	00008067          	ret

0000349c <memmove>:
    349c:	02a5f663          	bgeu	a1,a0,34c8 <memmove+0x2c>
    34a0:	00c58733          	add	a4,a1,a2
    34a4:	02e57263          	bgeu	a0,a4,34c8 <memmove+0x2c>
    34a8:	00c507b3          	add	a5,a0,a2
    34ac:	10060063          	beqz	a2,35ac <memmove+0x110>
    34b0:	fff70713          	addi	a4,a4,-1
    34b4:	fff78793          	addi	a5,a5,-1
    34b8:	00074683          	lbu	a3,0(a4)
    34bc:	00d78023          	sb	a3,0(a5)
    34c0:	fef518e3          	bne	a0,a5,34b0 <memmove+0x14>
    34c4:	00008067          	ret
    34c8:	00f00793          	li	a5,15
    34cc:	00c7fe63          	bgeu	a5,a2,34e8 <memmove+0x4c>
    34d0:	00b567b3          	or	a5,a0,a1
    34d4:	0037f793          	andi	a5,a5,3
    34d8:	04078663          	beqz	a5,3524 <memmove+0x88>
    34dc:	fff60693          	addi	a3,a2,-1
    34e0:	00050793          	mv	a5,a0
    34e4:	0100006f          	j	34f4 <memmove+0x58>
    34e8:	00050793          	mv	a5,a0
    34ec:	fff60693          	addi	a3,a2,-1
    34f0:	02060863          	beqz	a2,3520 <memmove+0x84>
    34f4:	00168693          	addi	a3,a3,1
    34f8:	00d786b3          	add	a3,a5,a3
    34fc:	00158593          	addi	a1,a1,1
    3500:	00178793          	addi	a5,a5,1
    3504:	fff5c703          	lbu	a4,-1(a1)
    3508:	fee78fa3          	sb	a4,-1(a5)
    350c:	fed798e3          	bne	a5,a3,34fc <memmove+0x60>
    3510:	00008067          	ret
    3514:	00070793          	mv	a5,a4
    3518:	00068613          	mv	a2,a3
    351c:	fd1ff06f          	j	34ec <memmove+0x50>
    3520:	00008067          	ret
    3524:	ff060893          	addi	a7,a2,-16
    3528:	ff08f893          	andi	a7,a7,-16
    352c:	01088893          	addi	a7,a7,16
    3530:	01150833          	add	a6,a0,a7
    3534:	00058793          	mv	a5,a1
    3538:	00050713          	mv	a4,a0
    353c:	0007a683          	lw	a3,0(a5)
    3540:	00d72023          	sw	a3,0(a4)
    3544:	0047a683          	lw	a3,4(a5)
    3548:	00d72223          	sw	a3,4(a4)
    354c:	0087a683          	lw	a3,8(a5)
    3550:	00d72423          	sw	a3,8(a4)
    3554:	01078793          	addi	a5,a5,16
    3558:	01070713          	addi	a4,a4,16
    355c:	ffc7a683          	lw	a3,-4(a5)
    3560:	fed72e23          	sw	a3,-4(a4)
    3564:	fce81ce3          	bne	a6,a4,353c <memmove+0xa0>
    3568:	011585b3          	add	a1,a1,a7
    356c:	00f67693          	andi	a3,a2,15
    3570:	00c67793          	andi	a5,a2,12
    3574:	fa0780e3          	beqz	a5,3514 <memmove+0x78>
    3578:	ffc68813          	addi	a6,a3,-4
    357c:	ffc87813          	andi	a6,a6,-4
    3580:	00480813          	addi	a6,a6,4
    3584:	010707b3          	add	a5,a4,a6
    3588:	00058693          	mv	a3,a1
    358c:	00468693          	addi	a3,a3,4
    3590:	00470713          	addi	a4,a4,4
    3594:	ffc6a883          	lw	a7,-4(a3)
    3598:	ff172e23          	sw	a7,-4(a4)
    359c:	fef718e3          	bne	a4,a5,358c <memmove+0xf0>
    35a0:	010585b3          	add	a1,a1,a6
    35a4:	00367613          	andi	a2,a2,3
    35a8:	f45ff06f          	j	34ec <memmove+0x50>
    35ac:	00008067          	ret

000035b0 <memset>:
    35b0:	00f00313          	li	t1,15
    35b4:	00050713          	mv	a4,a0
    35b8:	02c37e63          	bgeu	t1,a2,35f4 <memset+0x44>
    35bc:	00f77793          	andi	a5,a4,15
    35c0:	0a079063          	bnez	a5,3660 <memset+0xb0>
    35c4:	08059263          	bnez	a1,3648 <memset+0x98>
    35c8:	ff067693          	andi	a3,a2,-16
    35cc:	00f67613          	andi	a2,a2,15
    35d0:	00e686b3          	add	a3,a3,a4
    35d4:	00b72023          	sw	a1,0(a4)
    35d8:	00b72223          	sw	a1,4(a4)
    35dc:	00b72423          	sw	a1,8(a4)
    35e0:	00b72623          	sw	a1,12(a4)
    35e4:	01070713          	addi	a4,a4,16
    35e8:	fed766e3          	bltu	a4,a3,35d4 <memset+0x24>
    35ec:	00061463          	bnez	a2,35f4 <memset+0x44>
    35f0:	00008067          	ret
    35f4:	40c306b3          	sub	a3,t1,a2
    35f8:	00269693          	slli	a3,a3,0x2
    35fc:	00000297          	auipc	t0,0x0
    3600:	005686b3          	add	a3,a3,t0
    3604:	00c68067          	jr	12(a3)
    3608:	00b70723          	sb	a1,14(a4)
    360c:	00b706a3          	sb	a1,13(a4)
    3610:	00b70623          	sb	a1,12(a4)
    3614:	00b705a3          	sb	a1,11(a4)
    3618:	00b70523          	sb	a1,10(a4)
    361c:	00b704a3          	sb	a1,9(a4)
    3620:	00b70423          	sb	a1,8(a4)
    3624:	00b703a3          	sb	a1,7(a4)
    3628:	00b70323          	sb	a1,6(a4)
    362c:	00b702a3          	sb	a1,5(a4)
    3630:	00b70223          	sb	a1,4(a4)
    3634:	00b701a3          	sb	a1,3(a4)
    3638:	00b70123          	sb	a1,2(a4)
    363c:	00b700a3          	sb	a1,1(a4)
    3640:	00b70023          	sb	a1,0(a4)
    3644:	00008067          	ret
    3648:	0ff5f593          	zext.b	a1,a1
    364c:	00859693          	slli	a3,a1,0x8
    3650:	00d5e5b3          	or	a1,a1,a3
    3654:	01059693          	slli	a3,a1,0x10
    3658:	00d5e5b3          	or	a1,a1,a3
    365c:	f6dff06f          	j	35c8 <memset+0x18>
    3660:	00279693          	slli	a3,a5,0x2
    3664:	00000297          	auipc	t0,0x0
    3668:	005686b3          	add	a3,a3,t0
    366c:	00008293          	mv	t0,ra
    3670:	fa0680e7          	jalr	-96(a3)
    3674:	00028093          	mv	ra,t0
    3678:	ff078793          	addi	a5,a5,-16
    367c:	40f70733          	sub	a4,a4,a5
    3680:	00f60633          	add	a2,a2,a5
    3684:	f6c378e3          	bgeu	t1,a2,35f4 <memset+0x44>
    3688:	f3dff06f          	j	35c4 <memset+0x14>

0000368c <strlen>:
    368c:	00357793          	andi	a5,a0,3
    3690:	00050713          	mv	a4,a0
    3694:	04079a63          	bnez	a5,36e8 <strlen+0x5c>
    3698:	7f7f86b7          	lui	a3,0x7f7f8
    369c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <seed+0x7f7e593b>
    36a0:	fff00593          	li	a1,-1
    36a4:	00470713          	addi	a4,a4,4
    36a8:	ffc72603          	lw	a2,-4(a4)
    36ac:	00d677b3          	and	a5,a2,a3
    36b0:	00d787b3          	add	a5,a5,a3
    36b4:	00c7e7b3          	or	a5,a5,a2
    36b8:	00d7e7b3          	or	a5,a5,a3
    36bc:	feb784e3          	beq	a5,a1,36a4 <strlen+0x18>
    36c0:	40a707b3          	sub	a5,a4,a0
    36c4:	ffc74683          	lbu	a3,-4(a4)
    36c8:	04068263          	beqz	a3,370c <strlen+0x80>
    36cc:	ffd74683          	lbu	a3,-3(a4)
    36d0:	04068263          	beqz	a3,3714 <strlen+0x88>
    36d4:	ffe74503          	lbu	a0,-2(a4)
    36d8:	00a03533          	snez	a0,a0
    36dc:	00f50533          	add	a0,a0,a5
    36e0:	ffe50513          	addi	a0,a0,-2
    36e4:	00008067          	ret
    36e8:	00074783          	lbu	a5,0(a4)
    36ec:	00170713          	addi	a4,a4,1
    36f0:	00078863          	beqz	a5,3700 <strlen+0x74>
    36f4:	00377793          	andi	a5,a4,3
    36f8:	fe0798e3          	bnez	a5,36e8 <strlen+0x5c>
    36fc:	f9dff06f          	j	3698 <strlen+0xc>
    3700:	40a70733          	sub	a4,a4,a0
    3704:	fff70513          	addi	a0,a4,-1
    3708:	00008067          	ret
    370c:	ffc78513          	addi	a0,a5,-4
    3710:	00008067          	ret
    3714:	ffd78513          	addi	a0,a5,-3
    3718:	00008067          	ret

Disassembly of section .text.startup:

0000371c <main>:
    371c:	fe010113          	addi	sp,sp,-32
    3720:	00112e23          	sw	ra,28(sp)
    3724:	99dfc0ef          	jal	ra,c0 <initialise_board>
    3728:	b2dfc0ef          	jal	ra,254 <initialise_benchmark>
    372c:	00100513          	li	a0,1
    3730:	af1fc0ef          	jal	ra,220 <warm_caches>
    3734:	991fc0ef          	jal	ra,c4 <start_trigger>
    3738:	b01fc0ef          	jal	ra,238 <benchmark>
    373c:	00a12623          	sw	a0,12(sp)
    3740:	9b1fc0ef          	jal	ra,f0 <stop_trigger>
    3744:	00c12503          	lw	a0,12(sp)
    3748:	b11fc0ef          	jal	ra,258 <verify_benchmark>
    374c:	00051a63          	bnez	a0,3760 <main+0x44>
    3750:	110007b7          	lui	a5,0x11000
    3754:	fff00713          	li	a4,-1
    3758:	00e7a823          	sw	a4,16(a5) # 11000010 <seed+0x10fed9cc>
    375c:	00e7aa23          	sw	a4,20(a5)
    3760:	110007b7          	lui	a5,0x11000
    3764:	00100713          	li	a4,1
    3768:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10feda3c>
    376c:	0000006f          	j	376c <main+0x50>
