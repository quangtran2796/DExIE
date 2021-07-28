
ud.elf:     file format elf32-littleriscv


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
  84:	110010ef          	jal	ra,1194 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <chkerr+0x10fef7c8>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <chkerr+0x10fef7c8>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <chkerr+0x10fef848>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <chkerr+0xf7b8>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	82a7a823          	sw	a0,-2000(a5) # 10830 <start_time>
      e4:	82e7aa23          	sw	a4,-1996(a5)
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
     114:	8307a583          	lw	a1,-2000(a5) # 10830 <start_time>
     118:	8347a703          	lw	a4,-1996(a5)
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

00000150 <verify_benchmark>:
     150:	000107b7          	lui	a5,0x10
     154:	fa010113          	addi	sp,sp,-96
     158:	00078793          	mv	a5,a5
     15c:	04812c23          	sw	s0,88(sp)
     160:	04112e23          	sw	ra,92(sp)
     164:	00050413          	mv	s0,a0
     168:	00010713          	mv	a4,sp
     16c:	05078693          	addi	a3,a5,80 # 10050 <__clz_tab>
     170:	0007a803          	lw	a6,0(a5)
     174:	0047a503          	lw	a0,4(a5)
     178:	0087a583          	lw	a1,8(a5)
     17c:	00c7a603          	lw	a2,12(a5)
     180:	01072023          	sw	a6,0(a4)
     184:	00a72223          	sw	a0,4(a4)
     188:	00b72423          	sw	a1,8(a4)
     18c:	00c72623          	sw	a2,12(a4)
     190:	01078793          	addi	a5,a5,16
     194:	01070713          	addi	a4,a4,16
     198:	fcd79ce3          	bne	a5,a3,170 <verify_benchmark+0x20>
     19c:	00010537          	lui	a0,0x10
     1a0:	00010593          	mv	a1,sp
     1a4:	05000613          	li	a2,80
     1a8:	15050513          	addi	a0,a0,336 # 10150 <x>
     1ac:	769000ef          	jal	ra,1114 <memcmp>
     1b0:	05c12083          	lw	ra,92(sp)
     1b4:	00856533          	or	a0,a0,s0
     1b8:	05812403          	lw	s0,88(sp)
     1bc:	00153513          	seqz	a0,a0
     1c0:	06010113          	addi	sp,sp,96
     1c4:	00008067          	ret

000001c8 <initialise_benchmark>:
     1c8:	00008067          	ret

000001cc <ludcmp>:
     1cc:	000107b7          	lui	a5,0x10
     1d0:	15078713          	addi	a4,a5,336 # 10150 <x>
     1d4:	05072783          	lw	a5,80(a4)
     1d8:	e0010113          	addi	sp,sp,-512
     1dc:	1e112e23          	sw	ra,508(sp)
     1e0:	00f12c23          	sw	a5,24(sp)
     1e4:	fff58793          	addi	a5,a1,-1
     1e8:	1e812c23          	sw	s0,504(sp)
     1ec:	1e912a23          	sw	s1,500(sp)
     1f0:	1f212823          	sw	s2,496(sp)
     1f4:	1f312623          	sw	s3,492(sp)
     1f8:	1f412423          	sw	s4,488(sp)
     1fc:	1f512223          	sw	s5,484(sp)
     200:	1f612023          	sw	s6,480(sp)
     204:	1d712e23          	sw	s7,476(sp)
     208:	1d812c23          	sw	s8,472(sp)
     20c:	1d912a23          	sw	s9,468(sp)
     210:	1da12823          	sw	s10,464(sp)
     214:	1db12623          	sw	s11,460(sp)
     218:	00b12623          	sw	a1,12(sp)
     21c:	02e12023          	sw	a4,32(sp)
     220:	02f12223          	sw	a5,36(sp)
     224:	2eb05e63          	blez	a1,520 <ludcmp+0x354>
     228:	01458793          	addi	a5,a1,20
     22c:	0a070693          	addi	a3,a4,160
     230:	00279793          	slli	a5,a5,0x2
     234:	00259913          	slli	s2,a1,0x2
     238:	02f12623          	sw	a5,44(sp)
     23c:	00f68ab3          	add	s5,a3,a5
     240:	fb000793          	li	a5,-80
     244:	00b90933          	add	s2,s2,a1
     248:	00f12a23          	sw	a5,20(sp)
     24c:	000107b7          	lui	a5,0x10
     250:	0f070a13          	addi	s4,a4,240
     254:	00491913          	slli	s2,s2,0x4
     258:	1ec78793          	addi	a5,a5,492 # 101ec <b+0x4c>
     25c:	02d12423          	sw	a3,40(sp)
     260:	01412823          	sw	s4,16(sp)
     264:	01268933          	add	s2,a3,s2
     268:	00068493          	mv	s1,a3
     26c:	00000993          	li	s3,0
     270:	00000b13          	li	s6,0
     274:	00f12e23          	sw	a5,28(sp)
     278:	00c12783          	lw	a5,12(sp)
     27c:	001b0b13          	addi	s6,s6,1
     280:	2767ce63          	blt	a5,s6,4fc <ludcmp+0x330>
     284:	01c12783          	lw	a5,28(sp)
     288:	41600d33          	neg	s10,s6
     28c:	002d1d13          	slli	s10,s10,0x2
     290:	41a78db3          	sub	s11,a5,s10
     294:	00048413          	mv	s0,s1
     298:	054d0d13          	addi	s10,s10,84
     29c:	01c0006f          	j	2b8 <ludcmp+0xec>
     2a0:	0004a583          	lw	a1,0(s1)
     2a4:	000c0513          	mv	a0,s8
     2a8:	05040413          	addi	s0,s0,80
     2ac:	569000ef          	jal	ra,1014 <__divsi3>
     2b0:	00a42023          	sw	a0,0(s0)
     2b4:	05240463          	beq	s0,s2,2fc <ludcmp+0x130>
     2b8:	05042c03          	lw	s8,80(s0)
     2bc:	fe0982e3          	beqz	s3,2a0 <ludcmp+0xd4>
     2c0:	008d0bb3          	add	s7,s10,s0
     2c4:	000d8c93          	mv	s9,s11
     2c8:	000ca583          	lw	a1,0(s9)
     2cc:	000ba503          	lw	a0,0(s7)
     2d0:	050c8c93          	addi	s9,s9,80
     2d4:	004b8b93          	addi	s7,s7,4
     2d8:	519000ef          	jal	ra,ff0 <__mulsi3>
     2dc:	40ac0c33          	sub	s8,s8,a0
     2e0:	fe9c94e3          	bne	s9,s1,2c8 <ludcmp+0xfc>
     2e4:	0004a583          	lw	a1,0(s1)
     2e8:	000c0513          	mv	a0,s8
     2ec:	05040413          	addi	s0,s0,80
     2f0:	525000ef          	jal	ra,1014 <__divsi3>
     2f4:	00a42023          	sw	a0,0(s0)
     2f8:	fd2410e3          	bne	s0,s2,2b8 <ludcmp+0xec>
     2fc:	01412783          	lw	a5,20(sp)
     300:	05448b93          	addi	s7,s1,84
     304:	000b8413          	mv	s0,s7
     308:	05048493          	addi	s1,s1,80
     30c:	00478d93          	addi	s11,a5,4
     310:	0044ac83          	lw	s9,4(s1)
     314:	009d8d33          	add	s10,s11,s1
     318:	000a0c13          	mv	s8,s4
     31c:	000d2583          	lw	a1,0(s10)
     320:	000c2503          	lw	a0,0(s8)
     324:	050d0d13          	addi	s10,s10,80
     328:	004c0c13          	addi	s8,s8,4
     32c:	4c5000ef          	jal	ra,ff0 <__mulsi3>
     330:	40ac8cb3          	sub	s9,s9,a0
     334:	fe8d14e3          	bne	s10,s0,31c <ludcmp+0x150>
     338:	0194a223          	sw	s9,4(s1)
     33c:	00448493          	addi	s1,s1,4
     340:	004d0413          	addi	s0,s10,4
     344:	fd5496e3          	bne	s1,s5,310 <ludcmp+0x144>
     348:	01412783          	lw	a5,20(sp)
     34c:	05048a93          	addi	s5,s1,80
     350:	00198993          	addi	s3,s3,1
     354:	fb078793          	addi	a5,a5,-80
     358:	00f12a23          	sw	a5,20(sp)
     35c:	00c12783          	lw	a5,12(sp)
     360:	050a0a13          	addi	s4,s4,80
     364:	000b8493          	mv	s1,s7
     368:	00490913          	addi	s2,s2,4
     36c:	f16796e3          	bne	a5,s6,278 <ludcmp+0xac>
     370:	02c12783          	lw	a5,44(sp)
     374:	fb078a13          	addi	s4,a5,-80
     378:	01812783          	lw	a5,24(sp)
     37c:	02f12823          	sw	a5,48(sp)
     380:	02012783          	lw	a5,32(sp)
     384:	05478993          	addi	s3,a5,84
     388:	03410793          	addi	a5,sp,52
     38c:	01478a33          	add	s4,a5,s4
     390:	00078913          	mv	s2,a5
     394:	0009aa83          	lw	s5,0(s3)
     398:	01012483          	lw	s1,16(sp)
     39c:	01812503          	lw	a0,24(sp)
     3a0:	03410413          	addi	s0,sp,52
     3a4:	00c0006f          	j	3b0 <ludcmp+0x1e4>
     3a8:	00042503          	lw	a0,0(s0)
     3ac:	00440413          	addi	s0,s0,4
     3b0:	0004a583          	lw	a1,0(s1)
     3b4:	00448493          	addi	s1,s1,4
     3b8:	439000ef          	jal	ra,ff0 <__mulsi3>
     3bc:	40aa8ab3          	sub	s5,s5,a0
     3c0:	ff2414e3          	bne	s0,s2,3a8 <ludcmp+0x1dc>
     3c4:	01012783          	lw	a5,16(sp)
     3c8:	01542023          	sw	s5,0(s0)
     3cc:	00440913          	addi	s2,s0,4
     3d0:	05078793          	addi	a5,a5,80
     3d4:	00f12823          	sw	a5,16(sp)
     3d8:	00498993          	addi	s3,s3,4
     3dc:	fb491ce3          	bne	s2,s4,394 <ludcmp+0x1c8>
     3e0:	002b1713          	slli	a4,s6,0x2
     3e4:	016707b3          	add	a5,a4,s6
     3e8:	19070693          	addi	a3,a4,400
     3ec:	03010613          	addi	a2,sp,48
     3f0:	00c686b3          	add	a3,a3,a2
     3f4:	00279793          	slli	a5,a5,0x2
     3f8:	02012603          	lw	a2,32(sp)
     3fc:	016787b3          	add	a5,a5,s6
     400:	00279793          	slli	a5,a5,0x2
     404:	00f607b3          	add	a5,a2,a5
     408:	0a07a583          	lw	a1,160(a5)
     40c:	e706a503          	lw	a0,-400(a3)
     410:	00e60433          	add	s0,a2,a4
     414:	401000ef          	jal	ra,1014 <__divsi3>
     418:	00a42023          	sw	a0,0(s0)
     41c:	02412703          	lw	a4,36(sp)
     420:	00c12a03          	lw	s4,12(sp)
     424:	02012683          	lw	a3,32(sp)
     428:	00271a93          	slli	s5,a4,0x2
     42c:	00ea8ab3          	add	s5,s5,a4
     430:	002a1793          	slli	a5,s4,0x2
     434:	002a9a93          	slli	s5,s5,0x2
     438:	00ea8ab3          	add	s5,s5,a4
     43c:	00078713          	mv	a4,a5
     440:	02c78793          	addi	a5,a5,44
     444:	00278c33          	add	s8,a5,sp
     448:	02812783          	lw	a5,40(sp)
     44c:	002a9a93          	slli	s5,s5,0x2
     450:	004a8a93          	addi	s5,s5,4
     454:	00468993          	addi	s3,a3,4
     458:	00e68b33          	add	s6,a3,a4
     45c:	01578ab3          	add	s5,a5,s5
     460:	00e989b3          	add	s3,s3,a4
     464:	00c12783          	lw	a5,12(sp)
     468:	000c2903          	lw	s2,0(s8)
     46c:	0347c463          	blt	a5,s4,494 <ludcmp+0x2c8>
     470:	000b0413          	mv	s0,s6
     474:	000a8493          	mv	s1,s5
     478:	00042583          	lw	a1,0(s0)
     47c:	0004a503          	lw	a0,0(s1)
     480:	00440413          	addi	s0,s0,4
     484:	00448493          	addi	s1,s1,4
     488:	369000ef          	jal	ra,ff0 <__mulsi3>
     48c:	40a90933          	sub	s2,s2,a0
     490:	fe8994e3          	bne	s3,s0,478 <ludcmp+0x2ac>
     494:	ffcaa583          	lw	a1,-4(s5)
     498:	00090513          	mv	a0,s2
     49c:	ffcc0c13          	addi	s8,s8,-4
     4a0:	375000ef          	jal	ra,1014 <__divsi3>
     4a4:	feab2e23          	sw	a0,-4(s6)
     4a8:	ffea0793          	addi	a5,s4,-2
     4ac:	ffcb0b13          	addi	s6,s6,-4
     4b0:	fffa0a13          	addi	s4,s4,-1
     4b4:	faca8a93          	addi	s5,s5,-84
     4b8:	fa07d6e3          	bgez	a5,464 <ludcmp+0x298>
     4bc:	1fc12083          	lw	ra,508(sp)
     4c0:	1f812403          	lw	s0,504(sp)
     4c4:	1f412483          	lw	s1,500(sp)
     4c8:	1f012903          	lw	s2,496(sp)
     4cc:	1ec12983          	lw	s3,492(sp)
     4d0:	1e812a03          	lw	s4,488(sp)
     4d4:	1e412a83          	lw	s5,484(sp)
     4d8:	1e012b03          	lw	s6,480(sp)
     4dc:	1dc12b83          	lw	s7,476(sp)
     4e0:	1d812c03          	lw	s8,472(sp)
     4e4:	1d412c83          	lw	s9,468(sp)
     4e8:	1d012d03          	lw	s10,464(sp)
     4ec:	1cc12d83          	lw	s11,460(sp)
     4f0:	00000513          	li	a0,0
     4f4:	20010113          	addi	sp,sp,512
     4f8:	00008067          	ret
     4fc:	01412783          	lw	a5,20(sp)
     500:	00198993          	addi	s3,s3,1
     504:	050a8a93          	addi	s5,s5,80
     508:	fb078793          	addi	a5,a5,-80
     50c:	050a0a13          	addi	s4,s4,80
     510:	05448493          	addi	s1,s1,84
     514:	00f12a23          	sw	a5,20(sp)
     518:	00490913          	addi	s2,s2,4
     51c:	d5dff06f          	j	278 <ludcmp+0xac>
     520:	00c12683          	lw	a3,12(sp)
     524:	03010613          	addi	a2,sp,48
     528:	00269713          	slli	a4,a3,0x2
     52c:	00d707b3          	add	a5,a4,a3
     530:	00279793          	slli	a5,a5,0x2
     534:	00d787b3          	add	a5,a5,a3
     538:	01812683          	lw	a3,24(sp)
     53c:	00279793          	slli	a5,a5,0x2
     540:	02d12823          	sw	a3,48(sp)
     544:	19070693          	addi	a3,a4,400
     548:	00c686b3          	add	a3,a3,a2
     54c:	02012603          	lw	a2,32(sp)
     550:	e706a503          	lw	a0,-400(a3)
     554:	00f607b3          	add	a5,a2,a5
     558:	0a07a583          	lw	a1,160(a5)
     55c:	00e60433          	add	s0,a2,a4
     560:	2b5000ef          	jal	ra,1014 <__divsi3>
     564:	02412783          	lw	a5,36(sp)
     568:	00a42023          	sw	a0,0(s0)
     56c:	f407c8e3          	bltz	a5,4bc <ludcmp+0x2f0>
     570:	000107b7          	lui	a5,0x10
     574:	1f078793          	addi	a5,a5,496 # 101f0 <a>
     578:	02f12423          	sw	a5,40(sp)
     57c:	ea1ff06f          	j	41c <ludcmp+0x250>

00000580 <benchmark_body>:
     580:	fb010113          	addi	sp,sp,-80
     584:	03912223          	sw	s9,36(sp)
     588:	04112623          	sw	ra,76(sp)
     58c:	04812423          	sw	s0,72(sp)
     590:	04912223          	sw	s1,68(sp)
     594:	05212023          	sw	s2,64(sp)
     598:	03312e23          	sw	s3,60(sp)
     59c:	03412c23          	sw	s4,56(sp)
     5a0:	03512a23          	sw	s5,52(sp)
     5a4:	03612823          	sw	s6,48(sp)
     5a8:	03712623          	sw	s7,44(sp)
     5ac:	03812423          	sw	s8,40(sp)
     5b0:	03a12023          	sw	s10,32(sp)
     5b4:	01b12e23          	sw	s11,28(sp)
     5b8:	00011cb7          	lui	s9,0x11
     5bc:	0aa05c63          	blez	a0,674 <benchmark_body+0xf4>
     5c0:	00010bb7          	lui	s7,0x10
     5c4:	00010c37          	lui	s8,0x10
     5c8:	1f0b8793          	addi	a5,s7,496 # 101f0 <a>
     5cc:	00050b13          	mv	s6,a0
     5d0:	00000a93          	li	s5,0
     5d4:	00011cb7          	lui	s9,0x11
     5d8:	1a0c0c13          	addi	s8,s8,416 # 101a0 <b>
     5dc:	00f12623          	sw	a5,12(sp)
     5e0:	00600a13          	li	s4,6
     5e4:	00c12d83          	lw	s11,12(sp)
     5e8:	000c0b93          	mv	s7,s8
     5ec:	00000993          	li	s3,0
     5f0:	000d8493          	mv	s1,s11
     5f4:	00000413          	li	s0,0
     5f8:	00000913          	li	s2,0
     5fc:	00298d13          	addi	s10,s3,2
     600:	0180006f          	j	618 <benchmark_body+0x98>
     604:	00a4a023          	sw	a0,0(s1)
     608:	00140413          	addi	s0,s0,1
     60c:	00a90933          	add	s2,s2,a0
     610:	00448493          	addi	s1,s1,4
     614:	03440a63          	beq	s0,s4,648 <benchmark_body+0xc8>
     618:	008d0533          	add	a0,s10,s0
     61c:	ff3414e3          	bne	s0,s3,604 <benchmark_body+0x84>
     620:	129000ef          	jal	ra,f48 <__floatsidf>
     624:	00050613          	mv	a2,a0
     628:	00058693          	mv	a3,a1
     62c:	0c0000ef          	jal	ra,6ec <__adddf3>
     630:	099000ef          	jal	ra,ec8 <__fixdfsi>
     634:	00a4a023          	sw	a0,0(s1)
     638:	00140413          	addi	s0,s0,1
     63c:	00a90933          	add	s2,s2,a0
     640:	00448493          	addi	s1,s1,4
     644:	fd441ae3          	bne	s0,s4,618 <benchmark_body+0x98>
     648:	012ba023          	sw	s2,0(s7)
     64c:	00198993          	addi	s3,s3,1
     650:	004b8b93          	addi	s7,s7,4
     654:	050d8d93          	addi	s11,s11,80
     658:	f9499ce3          	bne	s3,s4,5f0 <benchmark_body+0x70>
     65c:	00500593          	li	a1,5
     660:	01400513          	li	a0,20
     664:	b69ff0ef          	jal	ra,1cc <ludcmp>
     668:	82acac23          	sw	a0,-1992(s9) # 10838 <chkerr>
     66c:	001a8a93          	addi	s5,s5,1
     670:	f75b1ae3          	bne	s6,s5,5e4 <benchmark_body+0x64>
     674:	04c12083          	lw	ra,76(sp)
     678:	04812403          	lw	s0,72(sp)
     67c:	838ca503          	lw	a0,-1992(s9)
     680:	04412483          	lw	s1,68(sp)
     684:	04012903          	lw	s2,64(sp)
     688:	03c12983          	lw	s3,60(sp)
     68c:	03812a03          	lw	s4,56(sp)
     690:	03412a83          	lw	s5,52(sp)
     694:	03012b03          	lw	s6,48(sp)
     698:	02c12b83          	lw	s7,44(sp)
     69c:	02812c03          	lw	s8,40(sp)
     6a0:	02412c83          	lw	s9,36(sp)
     6a4:	02012d03          	lw	s10,32(sp)
     6a8:	01c12d83          	lw	s11,28(sp)
     6ac:	05010113          	addi	sp,sp,80
     6b0:	00008067          	ret

000006b4 <warm_caches>:
     6b4:	ff010113          	addi	sp,sp,-16
     6b8:	00112623          	sw	ra,12(sp)
     6bc:	ec5ff0ef          	jal	ra,580 <benchmark_body>
     6c0:	00c12083          	lw	ra,12(sp)
     6c4:	01010113          	addi	sp,sp,16
     6c8:	00008067          	ret

000006cc <benchmark>:
     6cc:	0001d537          	lui	a0,0x1d
     6d0:	ff010113          	addi	sp,sp,-16
     6d4:	a9850513          	addi	a0,a0,-1384 # 1ca98 <chkerr+0xc260>
     6d8:	00112623          	sw	ra,12(sp)
     6dc:	ea5ff0ef          	jal	ra,580 <benchmark_body>
     6e0:	00c12083          	lw	ra,12(sp)
     6e4:	01010113          	addi	sp,sp,16
     6e8:	00008067          	ret

000006ec <__adddf3>:
     6ec:	00100837          	lui	a6,0x100
     6f0:	fff80813          	addi	a6,a6,-1 # fffff <chkerr+0xef7c7>
     6f4:	fe010113          	addi	sp,sp,-32
     6f8:	00b878b3          	and	a7,a6,a1
     6fc:	0145d713          	srli	a4,a1,0x14
     700:	01d55793          	srli	a5,a0,0x1d
     704:	00d87833          	and	a6,a6,a3
     708:	00812c23          	sw	s0,24(sp)
     70c:	7ff77413          	andi	s0,a4,2047
     710:	00389713          	slli	a4,a7,0x3
     714:	0146d893          	srli	a7,a3,0x14
     718:	00381813          	slli	a6,a6,0x3
     71c:	00912a23          	sw	s1,20(sp)
     720:	00e7e7b3          	or	a5,a5,a4
     724:	7ff8f893          	andi	a7,a7,2047
     728:	01d65713          	srli	a4,a2,0x1d
     72c:	00112e23          	sw	ra,28(sp)
     730:	01212823          	sw	s2,16(sp)
     734:	01312623          	sw	s3,12(sp)
     738:	01f5d493          	srli	s1,a1,0x1f
     73c:	01f6d693          	srli	a3,a3,0x1f
     740:	01076733          	or	a4,a4,a6
     744:	00351513          	slli	a0,a0,0x3
     748:	00361613          	slli	a2,a2,0x3
     74c:	41140833          	sub	a6,s0,a7
     750:	2cd49863          	bne	s1,a3,a20 <__adddf3+0x334>
     754:	13005063          	blez	a6,874 <__adddf3+0x188>
     758:	04089063          	bnez	a7,798 <__adddf3+0xac>
     75c:	00c766b3          	or	a3,a4,a2
     760:	70068e63          	beqz	a3,e7c <__adddf3+0x790>
     764:	fff80593          	addi	a1,a6,-1
     768:	02059063          	bnez	a1,788 <__adddf3+0x9c>
     76c:	00c50633          	add	a2,a0,a2
     770:	00e78733          	add	a4,a5,a4
     774:	00a637b3          	sltu	a5,a2,a0
     778:	00f707b3          	add	a5,a4,a5
     77c:	00060513          	mv	a0,a2
     780:	00100413          	li	s0,1
     784:	0700006f          	j	7f4 <__adddf3+0x108>
     788:	7ff00693          	li	a3,2047
     78c:	02d81063          	bne	a6,a3,7ac <__adddf3+0xc0>
     790:	7ff00413          	li	s0,2047
     794:	2140006f          	j	9a8 <__adddf3+0x2bc>
     798:	7ff00693          	li	a3,2047
     79c:	20d40663          	beq	s0,a3,9a8 <__adddf3+0x2bc>
     7a0:	008006b7          	lui	a3,0x800
     7a4:	00d76733          	or	a4,a4,a3
     7a8:	00080593          	mv	a1,a6
     7ac:	03800693          	li	a3,56
     7b0:	0ab6cc63          	blt	a3,a1,868 <__adddf3+0x17c>
     7b4:	01f00693          	li	a3,31
     7b8:	06b6ce63          	blt	a3,a1,834 <__adddf3+0x148>
     7bc:	02000813          	li	a6,32
     7c0:	40b80833          	sub	a6,a6,a1
     7c4:	010716b3          	sll	a3,a4,a6
     7c8:	00b658b3          	srl	a7,a2,a1
     7cc:	01061833          	sll	a6,a2,a6
     7d0:	0116e6b3          	or	a3,a3,a7
     7d4:	01003833          	snez	a6,a6
     7d8:	0106e6b3          	or	a3,a3,a6
     7dc:	00b755b3          	srl	a1,a4,a1
     7e0:	00a686b3          	add	a3,a3,a0
     7e4:	00f585b3          	add	a1,a1,a5
     7e8:	00a6b7b3          	sltu	a5,a3,a0
     7ec:	00f587b3          	add	a5,a1,a5
     7f0:	00068513          	mv	a0,a3
     7f4:	00800737          	lui	a4,0x800
     7f8:	00e7f733          	and	a4,a5,a4
     7fc:	1a070663          	beqz	a4,9a8 <__adddf3+0x2bc>
     800:	00140413          	addi	s0,s0,1
     804:	7ff00713          	li	a4,2047
     808:	5ce40a63          	beq	s0,a4,ddc <__adddf3+0x6f0>
     80c:	ff800737          	lui	a4,0xff800
     810:	fff70713          	addi	a4,a4,-1 # ff7fffff <chkerr+0xff7ef7c7>
     814:	00e7f7b3          	and	a5,a5,a4
     818:	00155713          	srli	a4,a0,0x1
     81c:	00157513          	andi	a0,a0,1
     820:	00a76733          	or	a4,a4,a0
     824:	01f79513          	slli	a0,a5,0x1f
     828:	00e56533          	or	a0,a0,a4
     82c:	0017d793          	srli	a5,a5,0x1
     830:	1780006f          	j	9a8 <__adddf3+0x2bc>
     834:	fe058693          	addi	a3,a1,-32
     838:	02000893          	li	a7,32
     83c:	00d756b3          	srl	a3,a4,a3
     840:	00000813          	li	a6,0
     844:	01158863          	beq	a1,a7,854 <__adddf3+0x168>
     848:	04000813          	li	a6,64
     84c:	40b80833          	sub	a6,a6,a1
     850:	01071833          	sll	a6,a4,a6
     854:	00c86833          	or	a6,a6,a2
     858:	01003833          	snez	a6,a6
     85c:	0106e6b3          	or	a3,a3,a6
     860:	00000593          	li	a1,0
     864:	f7dff06f          	j	7e0 <__adddf3+0xf4>
     868:	00c766b3          	or	a3,a4,a2
     86c:	00d036b3          	snez	a3,a3
     870:	ff1ff06f          	j	860 <__adddf3+0x174>
     874:	0e080263          	beqz	a6,958 <__adddf3+0x26c>
     878:	408885b3          	sub	a1,a7,s0
     87c:	02041e63          	bnez	s0,8b8 <__adddf3+0x1cc>
     880:	00a7e6b3          	or	a3,a5,a0
     884:	52068c63          	beqz	a3,dbc <__adddf3+0x6d0>
     888:	fff58693          	addi	a3,a1,-1
     88c:	00069c63          	bnez	a3,8a4 <__adddf3+0x1b8>
     890:	00c50533          	add	a0,a0,a2
     894:	00e78733          	add	a4,a5,a4
     898:	00c53633          	sltu	a2,a0,a2
     89c:	00c707b3          	add	a5,a4,a2
     8a0:	ee1ff06f          	j	780 <__adddf3+0x94>
     8a4:	7ff00813          	li	a6,2047
     8a8:	03059263          	bne	a1,a6,8cc <__adddf3+0x1e0>
     8ac:	00070793          	mv	a5,a4
     8b0:	00060513          	mv	a0,a2
     8b4:	eddff06f          	j	790 <__adddf3+0xa4>
     8b8:	7ff00693          	li	a3,2047
     8bc:	fed888e3          	beq	a7,a3,8ac <__adddf3+0x1c0>
     8c0:	008006b7          	lui	a3,0x800
     8c4:	00d7e7b3          	or	a5,a5,a3
     8c8:	00058693          	mv	a3,a1
     8cc:	03800593          	li	a1,56
     8d0:	06d5ce63          	blt	a1,a3,94c <__adddf3+0x260>
     8d4:	01f00593          	li	a1,31
     8d8:	04d5c063          	blt	a1,a3,918 <__adddf3+0x22c>
     8dc:	02000813          	li	a6,32
     8e0:	40d80833          	sub	a6,a6,a3
     8e4:	010795b3          	sll	a1,a5,a6
     8e8:	00d55333          	srl	t1,a0,a3
     8ec:	01051833          	sll	a6,a0,a6
     8f0:	0065e5b3          	or	a1,a1,t1
     8f4:	01003833          	snez	a6,a6
     8f8:	0105e5b3          	or	a1,a1,a6
     8fc:	00d7d6b3          	srl	a3,a5,a3
     900:	00c58533          	add	a0,a1,a2
     904:	00e686b3          	add	a3,a3,a4
     908:	00c53633          	sltu	a2,a0,a2
     90c:	00c687b3          	add	a5,a3,a2
     910:	00088413          	mv	s0,a7
     914:	ee1ff06f          	j	7f4 <__adddf3+0x108>
     918:	fe068593          	addi	a1,a3,-32 # 7fffe0 <chkerr+0x7ef7a8>
     91c:	02000313          	li	t1,32
     920:	00b7d5b3          	srl	a1,a5,a1
     924:	00000813          	li	a6,0
     928:	00668863          	beq	a3,t1,938 <__adddf3+0x24c>
     92c:	04000813          	li	a6,64
     930:	40d80833          	sub	a6,a6,a3
     934:	01079833          	sll	a6,a5,a6
     938:	00a86833          	or	a6,a6,a0
     93c:	01003833          	snez	a6,a6
     940:	0105e5b3          	or	a1,a1,a6
     944:	00000693          	li	a3,0
     948:	fb9ff06f          	j	900 <__adddf3+0x214>
     94c:	00a7e5b3          	or	a1,a5,a0
     950:	00b035b3          	snez	a1,a1
     954:	ff1ff06f          	j	944 <__adddf3+0x258>
     958:	00140693          	addi	a3,s0,1
     95c:	7fe6f593          	andi	a1,a3,2046
     960:	08059863          	bnez	a1,9f0 <__adddf3+0x304>
     964:	00a7e6b3          	or	a3,a5,a0
     968:	06041463          	bnez	s0,9d0 <__adddf3+0x2e4>
     96c:	46068063          	beqz	a3,dcc <__adddf3+0x6e0>
     970:	00c766b3          	or	a3,a4,a2
     974:	02068a63          	beqz	a3,9a8 <__adddf3+0x2bc>
     978:	00c50633          	add	a2,a0,a2
     97c:	00e78733          	add	a4,a5,a4
     980:	00a637b3          	sltu	a5,a2,a0
     984:	00f707b3          	add	a5,a4,a5
     988:	00800737          	lui	a4,0x800
     98c:	00e7f733          	and	a4,a5,a4
     990:	00060513          	mv	a0,a2
     994:	00070a63          	beqz	a4,9a8 <__adddf3+0x2bc>
     998:	ff800737          	lui	a4,0xff800
     99c:	fff70713          	addi	a4,a4,-1 # ff7fffff <chkerr+0xff7ef7c7>
     9a0:	00e7f7b3          	and	a5,a5,a4
     9a4:	00100413          	li	s0,1
     9a8:	00757713          	andi	a4,a0,7
     9ac:	42070c63          	beqz	a4,de4 <__adddf3+0x6f8>
     9b0:	00f57713          	andi	a4,a0,15
     9b4:	00400693          	li	a3,4
     9b8:	42d70663          	beq	a4,a3,de4 <__adddf3+0x6f8>
     9bc:	00450713          	addi	a4,a0,4
     9c0:	00a73533          	sltu	a0,a4,a0
     9c4:	00a787b3          	add	a5,a5,a0
     9c8:	00070513          	mv	a0,a4
     9cc:	4180006f          	j	de4 <__adddf3+0x6f8>
     9d0:	ec068ee3          	beqz	a3,8ac <__adddf3+0x1c0>
     9d4:	00c76733          	or	a4,a4,a2
     9d8:	da070ce3          	beqz	a4,790 <__adddf3+0xa4>
     9dc:	00000493          	li	s1,0
     9e0:	004007b7          	lui	a5,0x400
     9e4:	00000513          	li	a0,0
     9e8:	7ff00413          	li	s0,2047
     9ec:	3f80006f          	j	de4 <__adddf3+0x6f8>
     9f0:	7ff00593          	li	a1,2047
     9f4:	3eb68263          	beq	a3,a1,dd8 <__adddf3+0x6ec>
     9f8:	00c50633          	add	a2,a0,a2
     9fc:	00a63533          	sltu	a0,a2,a0
     a00:	00e78733          	add	a4,a5,a4
     a04:	00a70733          	add	a4,a4,a0
     a08:	01f71513          	slli	a0,a4,0x1f
     a0c:	00165613          	srli	a2,a2,0x1
     a10:	00c56533          	or	a0,a0,a2
     a14:	00175793          	srli	a5,a4,0x1
     a18:	00068413          	mv	s0,a3
     a1c:	f8dff06f          	j	9a8 <__adddf3+0x2bc>
     a20:	0f005c63          	blez	a6,b18 <__adddf3+0x42c>
     a24:	08089e63          	bnez	a7,ac0 <__adddf3+0x3d4>
     a28:	00c766b3          	or	a3,a4,a2
     a2c:	44068863          	beqz	a3,e7c <__adddf3+0x790>
     a30:	fff80593          	addi	a1,a6,-1
     a34:	02059063          	bnez	a1,a54 <__adddf3+0x368>
     a38:	40c50633          	sub	a2,a0,a2
     a3c:	40e78733          	sub	a4,a5,a4
     a40:	00c537b3          	sltu	a5,a0,a2
     a44:	40f707b3          	sub	a5,a4,a5
     a48:	00060513          	mv	a0,a2
     a4c:	00100413          	li	s0,1
     a50:	0540006f          	j	aa4 <__adddf3+0x3b8>
     a54:	7ff00693          	li	a3,2047
     a58:	d2d80ce3          	beq	a6,a3,790 <__adddf3+0xa4>
     a5c:	03800693          	li	a3,56
     a60:	0ab6c663          	blt	a3,a1,b0c <__adddf3+0x420>
     a64:	01f00693          	li	a3,31
     a68:	06b6c863          	blt	a3,a1,ad8 <__adddf3+0x3ec>
     a6c:	02000813          	li	a6,32
     a70:	40b80833          	sub	a6,a6,a1
     a74:	010716b3          	sll	a3,a4,a6
     a78:	00b658b3          	srl	a7,a2,a1
     a7c:	01061833          	sll	a6,a2,a6
     a80:	0116e6b3          	or	a3,a3,a7
     a84:	01003833          	snez	a6,a6
     a88:	0106e6b3          	or	a3,a3,a6
     a8c:	00b755b3          	srl	a1,a4,a1
     a90:	40d506b3          	sub	a3,a0,a3
     a94:	40b785b3          	sub	a1,a5,a1
     a98:	00d537b3          	sltu	a5,a0,a3
     a9c:	40f587b3          	sub	a5,a1,a5
     aa0:	00068513          	mv	a0,a3
     aa4:	00800937          	lui	s2,0x800
     aa8:	0127f733          	and	a4,a5,s2
     aac:	ee070ee3          	beqz	a4,9a8 <__adddf3+0x2bc>
     ab0:	fff90913          	addi	s2,s2,-1 # 7fffff <chkerr+0x7ef7c7>
     ab4:	0127f933          	and	s2,a5,s2
     ab8:	00050993          	mv	s3,a0
     abc:	2140006f          	j	cd0 <__adddf3+0x5e4>
     ac0:	7ff00693          	li	a3,2047
     ac4:	eed402e3          	beq	s0,a3,9a8 <__adddf3+0x2bc>
     ac8:	008006b7          	lui	a3,0x800
     acc:	00d76733          	or	a4,a4,a3
     ad0:	00080593          	mv	a1,a6
     ad4:	f89ff06f          	j	a5c <__adddf3+0x370>
     ad8:	fe058693          	addi	a3,a1,-32
     adc:	02000893          	li	a7,32
     ae0:	00d756b3          	srl	a3,a4,a3
     ae4:	00000813          	li	a6,0
     ae8:	01158863          	beq	a1,a7,af8 <__adddf3+0x40c>
     aec:	04000813          	li	a6,64
     af0:	40b80833          	sub	a6,a6,a1
     af4:	01071833          	sll	a6,a4,a6
     af8:	00c86833          	or	a6,a6,a2
     afc:	01003833          	snez	a6,a6
     b00:	0106e6b3          	or	a3,a3,a6
     b04:	00000593          	li	a1,0
     b08:	f89ff06f          	j	a90 <__adddf3+0x3a4>
     b0c:	00c766b3          	or	a3,a4,a2
     b10:	00d036b3          	snez	a3,a3
     b14:	ff1ff06f          	j	b04 <__adddf3+0x418>
     b18:	0e080863          	beqz	a6,c08 <__adddf3+0x51c>
     b1c:	40888833          	sub	a6,a7,s0
     b20:	04041263          	bnez	s0,b64 <__adddf3+0x478>
     b24:	00a7e5b3          	or	a1,a5,a0
     b28:	34058e63          	beqz	a1,e84 <__adddf3+0x798>
     b2c:	fff80593          	addi	a1,a6,-1
     b30:	00059e63          	bnez	a1,b4c <__adddf3+0x460>
     b34:	40a60533          	sub	a0,a2,a0
     b38:	40f70733          	sub	a4,a4,a5
     b3c:	00a63633          	sltu	a2,a2,a0
     b40:	40c707b3          	sub	a5,a4,a2
     b44:	00068493          	mv	s1,a3
     b48:	f05ff06f          	j	a4c <__adddf3+0x360>
     b4c:	7ff00313          	li	t1,2047
     b50:	02681463          	bne	a6,t1,b78 <__adddf3+0x48c>
     b54:	00070793          	mv	a5,a4
     b58:	00060513          	mv	a0,a2
     b5c:	7ff00413          	li	s0,2047
     b60:	0d00006f          	j	c30 <__adddf3+0x544>
     b64:	7ff00593          	li	a1,2047
     b68:	feb886e3          	beq	a7,a1,b54 <__adddf3+0x468>
     b6c:	008005b7          	lui	a1,0x800
     b70:	00b7e7b3          	or	a5,a5,a1
     b74:	00080593          	mv	a1,a6
     b78:	03800813          	li	a6,56
     b7c:	08b84063          	blt	a6,a1,bfc <__adddf3+0x510>
     b80:	01f00813          	li	a6,31
     b84:	04b84263          	blt	a6,a1,bc8 <__adddf3+0x4dc>
     b88:	02000313          	li	t1,32
     b8c:	40b30333          	sub	t1,t1,a1
     b90:	00b55e33          	srl	t3,a0,a1
     b94:	00679833          	sll	a6,a5,t1
     b98:	00651333          	sll	t1,a0,t1
     b9c:	01c86833          	or	a6,a6,t3
     ba0:	00603333          	snez	t1,t1
     ba4:	00686533          	or	a0,a6,t1
     ba8:	00b7d5b3          	srl	a1,a5,a1
     bac:	40a60533          	sub	a0,a2,a0
     bb0:	40b705b3          	sub	a1,a4,a1
     bb4:	00a63633          	sltu	a2,a2,a0
     bb8:	40c587b3          	sub	a5,a1,a2
     bbc:	00088413          	mv	s0,a7
     bc0:	00068493          	mv	s1,a3
     bc4:	ee1ff06f          	j	aa4 <__adddf3+0x3b8>
     bc8:	fe058813          	addi	a6,a1,-32 # 7fffe0 <chkerr+0x7ef7a8>
     bcc:	02000e13          	li	t3,32
     bd0:	0107d833          	srl	a6,a5,a6
     bd4:	00000313          	li	t1,0
     bd8:	01c58863          	beq	a1,t3,be8 <__adddf3+0x4fc>
     bdc:	04000313          	li	t1,64
     be0:	40b30333          	sub	t1,t1,a1
     be4:	00679333          	sll	t1,a5,t1
     be8:	00a36333          	or	t1,t1,a0
     bec:	00603333          	snez	t1,t1
     bf0:	00686533          	or	a0,a6,t1
     bf4:	00000593          	li	a1,0
     bf8:	fb5ff06f          	j	bac <__adddf3+0x4c0>
     bfc:	00a7e533          	or	a0,a5,a0
     c00:	00a03533          	snez	a0,a0
     c04:	ff1ff06f          	j	bf4 <__adddf3+0x508>
     c08:	00140593          	addi	a1,s0,1
     c0c:	7fe5f593          	andi	a1,a1,2046
     c10:	08059863          	bnez	a1,ca0 <__adddf3+0x5b4>
     c14:	00a7e833          	or	a6,a5,a0
     c18:	00c765b3          	or	a1,a4,a2
     c1c:	06041263          	bnez	s0,c80 <__adddf3+0x594>
     c20:	00081c63          	bnez	a6,c38 <__adddf3+0x54c>
     c24:	26058863          	beqz	a1,e94 <__adddf3+0x7a8>
     c28:	00070793          	mv	a5,a4
     c2c:	00060513          	mv	a0,a2
     c30:	00068493          	mv	s1,a3
     c34:	d75ff06f          	j	9a8 <__adddf3+0x2bc>
     c38:	d60588e3          	beqz	a1,9a8 <__adddf3+0x2bc>
     c3c:	40c50833          	sub	a6,a0,a2
     c40:	010538b3          	sltu	a7,a0,a6
     c44:	40e785b3          	sub	a1,a5,a4
     c48:	411585b3          	sub	a1,a1,a7
     c4c:	008008b7          	lui	a7,0x800
     c50:	0115f8b3          	and	a7,a1,a7
     c54:	00088c63          	beqz	a7,c6c <__adddf3+0x580>
     c58:	40a60533          	sub	a0,a2,a0
     c5c:	40f70733          	sub	a4,a4,a5
     c60:	00a63633          	sltu	a2,a2,a0
     c64:	40c707b3          	sub	a5,a4,a2
     c68:	fc9ff06f          	j	c30 <__adddf3+0x544>
     c6c:	00b86533          	or	a0,a6,a1
     c70:	22050a63          	beqz	a0,ea4 <__adddf3+0x7b8>
     c74:	00058793          	mv	a5,a1
     c78:	00080513          	mv	a0,a6
     c7c:	d2dff06f          	j	9a8 <__adddf3+0x2bc>
     c80:	00081c63          	bnez	a6,c98 <__adddf3+0x5ac>
     c84:	22058463          	beqz	a1,eac <__adddf3+0x7c0>
     c88:	00070793          	mv	a5,a4
     c8c:	00060513          	mv	a0,a2
     c90:	00068493          	mv	s1,a3
     c94:	afdff06f          	j	790 <__adddf3+0xa4>
     c98:	ae058ce3          	beqz	a1,790 <__adddf3+0xa4>
     c9c:	d41ff06f          	j	9dc <__adddf3+0x2f0>
     ca0:	40c509b3          	sub	s3,a0,a2
     ca4:	013535b3          	sltu	a1,a0,s3
     ca8:	40e78933          	sub	s2,a5,a4
     cac:	40b90933          	sub	s2,s2,a1
     cb0:	008005b7          	lui	a1,0x800
     cb4:	00b975b3          	and	a1,s2,a1
     cb8:	08058463          	beqz	a1,d40 <__adddf3+0x654>
     cbc:	40a609b3          	sub	s3,a2,a0
     cc0:	40f70933          	sub	s2,a4,a5
     cc4:	01363633          	sltu	a2,a2,s3
     cc8:	40c90933          	sub	s2,s2,a2
     ccc:	00068493          	mv	s1,a3
     cd0:	08090263          	beqz	s2,d54 <__adddf3+0x668>
     cd4:	00090513          	mv	a0,s2
     cd8:	3f0000ef          	jal	ra,10c8 <__clzsi2>
     cdc:	ff850713          	addi	a4,a0,-8
     ce0:	01f00793          	li	a5,31
     ce4:	08e7c063          	blt	a5,a4,d64 <__adddf3+0x678>
     ce8:	02000793          	li	a5,32
     cec:	40e787b3          	sub	a5,a5,a4
     cf0:	00e91933          	sll	s2,s2,a4
     cf4:	00f9d7b3          	srl	a5,s3,a5
     cf8:	0127e7b3          	or	a5,a5,s2
     cfc:	00e99533          	sll	a0,s3,a4
     d00:	0a874463          	blt	a4,s0,da8 <__adddf3+0x6bc>
     d04:	40870733          	sub	a4,a4,s0
     d08:	00170613          	addi	a2,a4,1
     d0c:	01f00693          	li	a3,31
     d10:	06c6c263          	blt	a3,a2,d74 <__adddf3+0x688>
     d14:	02000713          	li	a4,32
     d18:	40c70733          	sub	a4,a4,a2
     d1c:	00e796b3          	sll	a3,a5,a4
     d20:	00c555b3          	srl	a1,a0,a2
     d24:	00e51733          	sll	a4,a0,a4
     d28:	00b6e6b3          	or	a3,a3,a1
     d2c:	00e03733          	snez	a4,a4
     d30:	00e6e533          	or	a0,a3,a4
     d34:	00c7d7b3          	srl	a5,a5,a2
     d38:	00000413          	li	s0,0
     d3c:	c6dff06f          	j	9a8 <__adddf3+0x2bc>
     d40:	0129e533          	or	a0,s3,s2
     d44:	f80516e3          	bnez	a0,cd0 <__adddf3+0x5e4>
     d48:	00000793          	li	a5,0
     d4c:	00000413          	li	s0,0
     d50:	14c0006f          	j	e9c <__adddf3+0x7b0>
     d54:	00098513          	mv	a0,s3
     d58:	370000ef          	jal	ra,10c8 <__clzsi2>
     d5c:	02050513          	addi	a0,a0,32
     d60:	f7dff06f          	j	cdc <__adddf3+0x5f0>
     d64:	fd850793          	addi	a5,a0,-40
     d68:	00f997b3          	sll	a5,s3,a5
     d6c:	00000513          	li	a0,0
     d70:	f91ff06f          	j	d00 <__adddf3+0x614>
     d74:	fe170713          	addi	a4,a4,-31
     d78:	02000593          	li	a1,32
     d7c:	00e7d733          	srl	a4,a5,a4
     d80:	00000693          	li	a3,0
     d84:	00b60863          	beq	a2,a1,d94 <__adddf3+0x6a8>
     d88:	04000693          	li	a3,64
     d8c:	40c686b3          	sub	a3,a3,a2
     d90:	00d796b3          	sll	a3,a5,a3
     d94:	00d566b3          	or	a3,a0,a3
     d98:	00d036b3          	snez	a3,a3
     d9c:	00d76533          	or	a0,a4,a3
     da0:	00000793          	li	a5,0
     da4:	f95ff06f          	j	d38 <__adddf3+0x64c>
     da8:	40e40433          	sub	s0,s0,a4
     dac:	ff800737          	lui	a4,0xff800
     db0:	fff70713          	addi	a4,a4,-1 # ff7fffff <chkerr+0xff7ef7c7>
     db4:	00e7f7b3          	and	a5,a5,a4
     db8:	bf1ff06f          	j	9a8 <__adddf3+0x2bc>
     dbc:	00070793          	mv	a5,a4
     dc0:	00060513          	mv	a0,a2
     dc4:	00058413          	mv	s0,a1
     dc8:	be1ff06f          	j	9a8 <__adddf3+0x2bc>
     dcc:	00070793          	mv	a5,a4
     dd0:	00060513          	mv	a0,a2
     dd4:	bd5ff06f          	j	9a8 <__adddf3+0x2bc>
     dd8:	7ff00413          	li	s0,2047
     ddc:	00000793          	li	a5,0
     de0:	00000513          	li	a0,0
     de4:	00800737          	lui	a4,0x800
     de8:	00e7f733          	and	a4,a5,a4
     dec:	00070e63          	beqz	a4,e08 <__adddf3+0x71c>
     df0:	00140413          	addi	s0,s0,1
     df4:	7ff00713          	li	a4,2047
     df8:	0ce40263          	beq	s0,a4,ebc <__adddf3+0x7d0>
     dfc:	ff800737          	lui	a4,0xff800
     e00:	fff70713          	addi	a4,a4,-1 # ff7fffff <chkerr+0xff7ef7c7>
     e04:	00e7f7b3          	and	a5,a5,a4
     e08:	01d79693          	slli	a3,a5,0x1d
     e0c:	00355513          	srli	a0,a0,0x3
     e10:	7ff00713          	li	a4,2047
     e14:	00a6e6b3          	or	a3,a3,a0
     e18:	0037d793          	srli	a5,a5,0x3
     e1c:	00e41e63          	bne	s0,a4,e38 <__adddf3+0x74c>
     e20:	00f6e6b3          	or	a3,a3,a5
     e24:	00000793          	li	a5,0
     e28:	00068863          	beqz	a3,e38 <__adddf3+0x74c>
     e2c:	000807b7          	lui	a5,0x80
     e30:	00000693          	li	a3,0
     e34:	00000493          	li	s1,0
     e38:	01441713          	slli	a4,s0,0x14
     e3c:	7ff00637          	lui	a2,0x7ff00
     e40:	00c79793          	slli	a5,a5,0xc
     e44:	01c12083          	lw	ra,28(sp)
     e48:	01812403          	lw	s0,24(sp)
     e4c:	00c77733          	and	a4,a4,a2
     e50:	00c7d793          	srli	a5,a5,0xc
     e54:	01f49493          	slli	s1,s1,0x1f
     e58:	00f767b3          	or	a5,a4,a5
     e5c:	0097e733          	or	a4,a5,s1
     e60:	01012903          	lw	s2,16(sp)
     e64:	01412483          	lw	s1,20(sp)
     e68:	00c12983          	lw	s3,12(sp)
     e6c:	00068513          	mv	a0,a3
     e70:	00070593          	mv	a1,a4
     e74:	02010113          	addi	sp,sp,32
     e78:	00008067          	ret
     e7c:	00080413          	mv	s0,a6
     e80:	b29ff06f          	j	9a8 <__adddf3+0x2bc>
     e84:	00070793          	mv	a5,a4
     e88:	00060513          	mv	a0,a2
     e8c:	00080413          	mv	s0,a6
     e90:	da1ff06f          	j	c30 <__adddf3+0x544>
     e94:	00000793          	li	a5,0
     e98:	00000513          	li	a0,0
     e9c:	00000493          	li	s1,0
     ea0:	f45ff06f          	j	de4 <__adddf3+0x6f8>
     ea4:	00000793          	li	a5,0
     ea8:	ff5ff06f          	j	e9c <__adddf3+0x7b0>
     eac:	00000513          	li	a0,0
     eb0:	00000493          	li	s1,0
     eb4:	004007b7          	lui	a5,0x400
     eb8:	b31ff06f          	j	9e8 <__adddf3+0x2fc>
     ebc:	00000793          	li	a5,0
     ec0:	00000513          	li	a0,0
     ec4:	f45ff06f          	j	e08 <__adddf3+0x71c>

00000ec8 <__fixdfsi>:
     ec8:	0145d713          	srli	a4,a1,0x14
     ecc:	001006b7          	lui	a3,0x100
     ed0:	fff68793          	addi	a5,a3,-1 # fffff <chkerr+0xef7c7>
     ed4:	7ff77713          	andi	a4,a4,2047
     ed8:	3fe00613          	li	a2,1022
     edc:	00b7f7b3          	and	a5,a5,a1
     ee0:	01f5d593          	srli	a1,a1,0x1f
     ee4:	04e65e63          	bge	a2,a4,f40 <__fixdfsi+0x78>
     ee8:	41d00613          	li	a2,1053
     eec:	00e65a63          	bge	a2,a4,f00 <__fixdfsi+0x38>
     ef0:	80000537          	lui	a0,0x80000
     ef4:	fff54513          	not	a0,a0
     ef8:	00a58533          	add	a0,a1,a0
     efc:	00008067          	ret
     f00:	00d7e7b3          	or	a5,a5,a3
     f04:	43300693          	li	a3,1075
     f08:	40e686b3          	sub	a3,a3,a4
     f0c:	01f00613          	li	a2,31
     f10:	02d64063          	blt	a2,a3,f30 <__fixdfsi+0x68>
     f14:	bed70713          	addi	a4,a4,-1043
     f18:	00e797b3          	sll	a5,a5,a4
     f1c:	00d55533          	srl	a0,a0,a3
     f20:	00a7e533          	or	a0,a5,a0
     f24:	02058063          	beqz	a1,f44 <__fixdfsi+0x7c>
     f28:	40a00533          	neg	a0,a0
     f2c:	00008067          	ret
     f30:	41300693          	li	a3,1043
     f34:	40e68733          	sub	a4,a3,a4
     f38:	00e7d533          	srl	a0,a5,a4
     f3c:	fe9ff06f          	j	f24 <__fixdfsi+0x5c>
     f40:	00000513          	li	a0,0
     f44:	00008067          	ret

00000f48 <__floatsidf>:
     f48:	ff010113          	addi	sp,sp,-16
     f4c:	00112623          	sw	ra,12(sp)
     f50:	00812423          	sw	s0,8(sp)
     f54:	00912223          	sw	s1,4(sp)
     f58:	08050663          	beqz	a0,fe4 <__floatsidf+0x9c>
     f5c:	41f55793          	srai	a5,a0,0x1f
     f60:	00a7c433          	xor	s0,a5,a0
     f64:	40f40433          	sub	s0,s0,a5
     f68:	01f55493          	srli	s1,a0,0x1f
     f6c:	00040513          	mv	a0,s0
     f70:	158000ef          	jal	ra,10c8 <__clzsi2>
     f74:	41e00713          	li	a4,1054
     f78:	00a00793          	li	a5,10
     f7c:	40a70733          	sub	a4,a4,a0
     f80:	04a7c863          	blt	a5,a0,fd0 <__floatsidf+0x88>
     f84:	00b00793          	li	a5,11
     f88:	40a787b3          	sub	a5,a5,a0
     f8c:	01550513          	addi	a0,a0,21 # 80000015 <chkerr+0x7ffef7dd>
     f90:	00f457b3          	srl	a5,s0,a5
     f94:	00a41433          	sll	s0,s0,a0
     f98:	00048513          	mv	a0,s1
     f9c:	00c79793          	slli	a5,a5,0xc
     fa0:	00c7d793          	srli	a5,a5,0xc
     fa4:	01471713          	slli	a4,a4,0x14
     fa8:	01f51513          	slli	a0,a0,0x1f
     fac:	00f76733          	or	a4,a4,a5
     fb0:	00c12083          	lw	ra,12(sp)
     fb4:	00a767b3          	or	a5,a4,a0
     fb8:	00040513          	mv	a0,s0
     fbc:	00812403          	lw	s0,8(sp)
     fc0:	00412483          	lw	s1,4(sp)
     fc4:	00078593          	mv	a1,a5
     fc8:	01010113          	addi	sp,sp,16
     fcc:	00008067          	ret
     fd0:	ff550513          	addi	a0,a0,-11
     fd4:	00a417b3          	sll	a5,s0,a0
     fd8:	00048513          	mv	a0,s1
     fdc:	00000413          	li	s0,0
     fe0:	fbdff06f          	j	f9c <__floatsidf+0x54>
     fe4:	00000713          	li	a4,0
     fe8:	00000793          	li	a5,0
     fec:	ff1ff06f          	j	fdc <__floatsidf+0x94>

00000ff0 <__mulsi3>:
     ff0:	00050613          	mv	a2,a0
     ff4:	00000513          	li	a0,0
     ff8:	0015f693          	andi	a3,a1,1
     ffc:	00068463          	beqz	a3,1004 <__mulsi3+0x14>
    1000:	00c50533          	add	a0,a0,a2
    1004:	0015d593          	srli	a1,a1,0x1
    1008:	00161613          	slli	a2,a2,0x1
    100c:	fe0596e3          	bnez	a1,ff8 <__mulsi3+0x8>
    1010:	00008067          	ret

00001014 <__divsi3>:
    1014:	06054063          	bltz	a0,1074 <__umodsi3+0x10>
    1018:	0605c663          	bltz	a1,1084 <__umodsi3+0x20>

0000101c <__udivsi3>:
    101c:	00058613          	mv	a2,a1
    1020:	00050593          	mv	a1,a0
    1024:	fff00513          	li	a0,-1
    1028:	02060c63          	beqz	a2,1060 <__udivsi3+0x44>
    102c:	00100693          	li	a3,1
    1030:	00b67a63          	bgeu	a2,a1,1044 <__udivsi3+0x28>
    1034:	00c05863          	blez	a2,1044 <__udivsi3+0x28>
    1038:	00161613          	slli	a2,a2,0x1
    103c:	00169693          	slli	a3,a3,0x1
    1040:	feb66ae3          	bltu	a2,a1,1034 <__udivsi3+0x18>
    1044:	00000513          	li	a0,0
    1048:	00c5e663          	bltu	a1,a2,1054 <__udivsi3+0x38>
    104c:	40c585b3          	sub	a1,a1,a2
    1050:	00d56533          	or	a0,a0,a3
    1054:	0016d693          	srli	a3,a3,0x1
    1058:	00165613          	srli	a2,a2,0x1
    105c:	fe0696e3          	bnez	a3,1048 <__udivsi3+0x2c>
    1060:	00008067          	ret

00001064 <__umodsi3>:
    1064:	00008293          	mv	t0,ra
    1068:	fb5ff0ef          	jal	ra,101c <__udivsi3>
    106c:	00058513          	mv	a0,a1
    1070:	00028067          	jr	t0
    1074:	40a00533          	neg	a0,a0
    1078:	00b04863          	bgtz	a1,1088 <__umodsi3+0x24>
    107c:	40b005b3          	neg	a1,a1
    1080:	f9dff06f          	j	101c <__udivsi3>
    1084:	40b005b3          	neg	a1,a1
    1088:	00008293          	mv	t0,ra
    108c:	f91ff0ef          	jal	ra,101c <__udivsi3>
    1090:	40a00533          	neg	a0,a0
    1094:	00028067          	jr	t0

00001098 <__modsi3>:
    1098:	00008293          	mv	t0,ra
    109c:	0005ca63          	bltz	a1,10b0 <__modsi3+0x18>
    10a0:	00054c63          	bltz	a0,10b8 <__modsi3+0x20>
    10a4:	f79ff0ef          	jal	ra,101c <__udivsi3>
    10a8:	00058513          	mv	a0,a1
    10ac:	00028067          	jr	t0
    10b0:	40b005b3          	neg	a1,a1
    10b4:	fe0558e3          	bgez	a0,10a4 <__modsi3+0xc>
    10b8:	40a00533          	neg	a0,a0
    10bc:	f61ff0ef          	jal	ra,101c <__udivsi3>
    10c0:	40b00533          	neg	a0,a1
    10c4:	00028067          	jr	t0

000010c8 <__clzsi2>:
    10c8:	000107b7          	lui	a5,0x10
    10cc:	02f57a63          	bgeu	a0,a5,1100 <__clzsi2+0x38>
    10d0:	10053793          	sltiu	a5,a0,256
    10d4:	0017c793          	xori	a5,a5,1
    10d8:	00379793          	slli	a5,a5,0x3
    10dc:	00010737          	lui	a4,0x10
    10e0:	02000693          	li	a3,32
    10e4:	40f686b3          	sub	a3,a3,a5
    10e8:	00f55533          	srl	a0,a0,a5
    10ec:	05070793          	addi	a5,a4,80 # 10050 <__clz_tab>
    10f0:	00a787b3          	add	a5,a5,a0
    10f4:	0007c503          	lbu	a0,0(a5) # 10000 <main+0xee6c>
    10f8:	40a68533          	sub	a0,a3,a0
    10fc:	00008067          	ret
    1100:	01000737          	lui	a4,0x1000
    1104:	01000793          	li	a5,16
    1108:	fce56ae3          	bltu	a0,a4,10dc <__clzsi2+0x14>
    110c:	01800793          	li	a5,24
    1110:	fcdff06f          	j	10dc <__clzsi2+0x14>

00001114 <memcmp>:
    1114:	00300793          	li	a5,3
    1118:	04c7f063          	bgeu	a5,a2,1158 <memcmp+0x44>
    111c:	00b567b3          	or	a5,a0,a1
    1120:	0037f793          	andi	a5,a5,3
    1124:	00300693          	li	a3,3
    1128:	00078a63          	beqz	a5,113c <memcmp+0x28>
    112c:	fff60713          	addi	a4,a2,-1 # 7fefffff <chkerr+0x7feef7c7>
    1130:	0300006f          	j	1160 <memcmp+0x4c>
    1134:	00000513          	li	a0,0
    1138:	00008067          	ret
    113c:	00052703          	lw	a4,0(a0)
    1140:	0005a783          	lw	a5,0(a1) # 800000 <chkerr+0x7ef7c8>
    1144:	00f71a63          	bne	a4,a5,1158 <memcmp+0x44>
    1148:	00450513          	addi	a0,a0,4
    114c:	00458593          	addi	a1,a1,4
    1150:	ffc60613          	addi	a2,a2,-4
    1154:	fec6e4e3          	bltu	a3,a2,113c <memcmp+0x28>
    1158:	fff60713          	addi	a4,a2,-1
    115c:	fc060ce3          	beqz	a2,1134 <memcmp+0x20>
    1160:	00050793          	mv	a5,a0
    1164:	00170713          	addi	a4,a4,1 # 1000001 <chkerr+0xfef7c9>
    1168:	00e50533          	add	a0,a0,a4
    116c:	0007c703          	lbu	a4,0(a5)
    1170:	0005c683          	lbu	a3,0(a1)
    1174:	00d71c63          	bne	a4,a3,118c <memcmp+0x78>
    1178:	00178793          	addi	a5,a5,1
    117c:	00158593          	addi	a1,a1,1
    1180:	fea796e3          	bne	a5,a0,116c <memcmp+0x58>
    1184:	00000513          	li	a0,0
    1188:	00008067          	ret
    118c:	40d70533          	sub	a0,a4,a3
    1190:	00008067          	ret

Disassembly of section .text.startup:

00001194 <main>:
    1194:	fe010113          	addi	sp,sp,-32
    1198:	00112e23          	sw	ra,28(sp)
    119c:	f25fe0ef          	jal	ra,c0 <initialise_board>
    11a0:	828ff0ef          	jal	ra,1c8 <initialise_benchmark>
    11a4:	00100513          	li	a0,1
    11a8:	d0cff0ef          	jal	ra,6b4 <warm_caches>
    11ac:	f19fe0ef          	jal	ra,c4 <start_trigger>
    11b0:	d1cff0ef          	jal	ra,6cc <benchmark>
    11b4:	00a12623          	sw	a0,12(sp)
    11b8:	f39fe0ef          	jal	ra,f0 <stop_trigger>
    11bc:	00c12503          	lw	a0,12(sp)
    11c0:	f91fe0ef          	jal	ra,150 <verify_benchmark>
    11c4:	00051a63          	bnez	a0,11d8 <main+0x44>
    11c8:	110007b7          	lui	a5,0x11000
    11cc:	fff00713          	li	a4,-1
    11d0:	00e7a823          	sw	a4,16(a5) # 11000010 <chkerr+0x10fef7d8>
    11d4:	00e7aa23          	sw	a4,20(a5)
    11d8:	110007b7          	lui	a5,0x11000
    11dc:	00100713          	li	a4,1
    11e0:	08e7a023          	sw	a4,128(a5) # 11000080 <chkerr+0x10fef848>
    11e4:	0000006f          	j	11e4 <main+0x50>
