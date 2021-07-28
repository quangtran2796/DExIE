
nsichneu.elf:     file format elf32-littleriscv


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
  84:	5b1040ef          	jal	ra,4e34 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <P3_is_marked+0x10feffb8>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <P3_is_marked+0x10feffb8>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <P3_is_marked+0x10ff0038>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <P3_is_marked+0xffa8>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000107b7          	lui	a5,0x10
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	04a7a023          	sw	a0,64(a5) # 10040 <start_time>
      e4:	04e7a223          	sw	a4,68(a5)
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
     114:	0407a583          	lw	a1,64(a5) # 10040 <start_time>
     118:	0447a703          	lw	a4,68(a5)
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
     150:	78a054e3          	blez	a0,10d8 <benchmark_body+0xf88>
     154:	00010737          	lui	a4,0x10
     158:	00000313          	li	t1,0
     15c:	00010837          	lui	a6,0x10
     160:	000107b7          	lui	a5,0x10
     164:	000105b7          	lui	a1,0x10
     168:	00300613          	li	a2,3
     16c:	00500e93          	li	t4,5
     170:	00200893          	li	a7,2
     174:	00870713          	addi	a4,a4,8 # 10008 <P1_marking_member_0>
     178:	00400693          	li	a3,4
     17c:	00c82223          	sw	a2,4(a6) # 10004 <P1_is_marked>
     180:	01d7a023          	sw	t4,0(a5) # 10000 <P2_is_marked>
     184:	0405a423          	sw	zero,72(a1) # 10048 <P3_is_marked>
     188:	00482e03          	lw	t3,4(a6)
     18c:	01c8de63          	bge	a7,t3,1a8 <benchmark_body+0x58>
     190:	0485ae03          	lw	t3,72(a1)
     194:	01c64a63          	blt	a2,t3,1a8 <benchmark_body+0x58>
     198:	00472f03          	lw	t5,4(a4)
     19c:	00872e03          	lw	t3,8(a4)
     1a0:	01cf1463          	bne	t5,t3,1a8 <benchmark_body+0x58>
     1a4:	52d0206f          	j	2ed0 <benchmark_body+0x2d80>
     1a8:	00482e03          	lw	t3,4(a6)
     1ac:	01c8de63          	bge	a7,t3,1c8 <benchmark_body+0x78>
     1b0:	0485ae03          	lw	t3,72(a1)
     1b4:	01c64a63          	blt	a2,t3,1c8 <benchmark_body+0x78>
     1b8:	00872f03          	lw	t5,8(a4)
     1bc:	00472e03          	lw	t3,4(a4)
     1c0:	01cf1463          	bne	t5,t3,1c8 <benchmark_body+0x78>
     1c4:	5750206f          	j	2f38 <benchmark_body+0x2de8>
     1c8:	00482e03          	lw	t3,4(a6)
     1cc:	01c8de63          	bge	a7,t3,1e8 <benchmark_body+0x98>
     1d0:	0485ae03          	lw	t3,72(a1)
     1d4:	01c64a63          	blt	a2,t3,1e8 <benchmark_body+0x98>
     1d8:	00072f03          	lw	t5,0(a4)
     1dc:	00872e03          	lw	t3,8(a4)
     1e0:	01cf1463          	bne	t5,t3,1e8 <benchmark_body+0x98>
     1e4:	5bd0206f          	j	2fa0 <benchmark_body+0x2e50>
     1e8:	00482e03          	lw	t3,4(a6)
     1ec:	01c8de63          	bge	a7,t3,208 <benchmark_body+0xb8>
     1f0:	0485ae03          	lw	t3,72(a1)
     1f4:	01c64a63          	blt	a2,t3,208 <benchmark_body+0xb8>
     1f8:	00872f03          	lw	t5,8(a4)
     1fc:	00072e03          	lw	t3,0(a4)
     200:	01cf1463          	bne	t5,t3,208 <benchmark_body+0xb8>
     204:	6050206f          	j	3008 <benchmark_body+0x2eb8>
     208:	00482e03          	lw	t3,4(a6)
     20c:	01c8de63          	bge	a7,t3,228 <benchmark_body+0xd8>
     210:	0485ae03          	lw	t3,72(a1)
     214:	01c64a63          	blt	a2,t3,228 <benchmark_body+0xd8>
     218:	00072f03          	lw	t5,0(a4)
     21c:	00472e03          	lw	t3,4(a4)
     220:	01cf1463          	bne	t5,t3,228 <benchmark_body+0xd8>
     224:	64d0206f          	j	3070 <benchmark_body+0x2f20>
     228:	00482e03          	lw	t3,4(a6)
     22c:	01c8de63          	bge	a7,t3,248 <benchmark_body+0xf8>
     230:	0485ae03          	lw	t3,72(a1)
     234:	01c64a63          	blt	a2,t3,248 <benchmark_body+0xf8>
     238:	00472f03          	lw	t5,4(a4)
     23c:	00072e03          	lw	t3,0(a4)
     240:	01cf1463          	bne	t5,t3,248 <benchmark_body+0xf8>
     244:	6950206f          	j	30d8 <benchmark_body+0x2f88>
     248:	0007ae03          	lw	t3,0(a5)
     24c:	01c65e63          	bge	a2,t3,268 <benchmark_body+0x118>
     250:	0485ae03          	lw	t3,72(a1)
     254:	01c64a63          	blt	a2,t3,268 <benchmark_body+0x118>
     258:	02872f03          	lw	t5,40(a4)
     25c:	02c72e03          	lw	t3,44(a4)
     260:	01cf1463          	bne	t5,t3,268 <benchmark_body+0x118>
     264:	6dd0206f          	j	3140 <benchmark_body+0x2ff0>
     268:	0007ae03          	lw	t3,0(a5)
     26c:	01c65e63          	bge	a2,t3,288 <benchmark_body+0x138>
     270:	0485ae03          	lw	t3,72(a1)
     274:	01c64a63          	blt	a2,t3,288 <benchmark_body+0x138>
     278:	02872f03          	lw	t5,40(a4)
     27c:	03072e03          	lw	t3,48(a4)
     280:	01cf1463          	bne	t5,t3,288 <benchmark_body+0x138>
     284:	7350206f          	j	31b8 <benchmark_body+0x3068>
     288:	0007ae03          	lw	t3,0(a5)
     28c:	01c65e63          	bge	a2,t3,2a8 <benchmark_body+0x158>
     290:	0485ae03          	lw	t3,72(a1)
     294:	01c64a63          	blt	a2,t3,2a8 <benchmark_body+0x158>
     298:	02c72f03          	lw	t5,44(a4)
     29c:	02872e03          	lw	t3,40(a4)
     2a0:	01cf1463          	bne	t5,t3,2a8 <benchmark_body+0x158>
     2a4:	78d0206f          	j	3230 <benchmark_body+0x30e0>
     2a8:	0007ae03          	lw	t3,0(a5)
     2ac:	01c65e63          	bge	a2,t3,2c8 <benchmark_body+0x178>
     2b0:	0485ae03          	lw	t3,72(a1)
     2b4:	01c64a63          	blt	a2,t3,2c8 <benchmark_body+0x178>
     2b8:	02c72f03          	lw	t5,44(a4)
     2bc:	03072e03          	lw	t3,48(a4)
     2c0:	01cf1463          	bne	t5,t3,2c8 <benchmark_body+0x178>
     2c4:	7e50206f          	j	32a8 <benchmark_body+0x3158>
     2c8:	0007ae03          	lw	t3,0(a5)
     2cc:	01c65e63          	bge	a2,t3,2e8 <benchmark_body+0x198>
     2d0:	0485ae03          	lw	t3,72(a1)
     2d4:	01c64a63          	blt	a2,t3,2e8 <benchmark_body+0x198>
     2d8:	03072f03          	lw	t5,48(a4)
     2dc:	02872e03          	lw	t3,40(a4)
     2e0:	01cf1463          	bne	t5,t3,2e8 <benchmark_body+0x198>
     2e4:	03c0306f          	j	3320 <benchmark_body+0x31d0>
     2e8:	0007ae03          	lw	t3,0(a5)
     2ec:	01c65e63          	bge	a2,t3,308 <benchmark_body+0x1b8>
     2f0:	0485ae03          	lw	t3,72(a1)
     2f4:	01c64a63          	blt	a2,t3,308 <benchmark_body+0x1b8>
     2f8:	03072f03          	lw	t5,48(a4)
     2fc:	02c72e03          	lw	t3,44(a4)
     300:	01cf1463          	bne	t5,t3,308 <benchmark_body+0x1b8>
     304:	0940306f          	j	3398 <benchmark_body+0x3248>
     308:	0007ae03          	lw	t3,0(a5)
     30c:	01c65e63          	bge	a2,t3,328 <benchmark_body+0x1d8>
     310:	0485ae03          	lw	t3,72(a1)
     314:	01c64a63          	blt	a2,t3,328 <benchmark_body+0x1d8>
     318:	02472f03          	lw	t5,36(a4)
     31c:	02c72e03          	lw	t3,44(a4)
     320:	01cf1463          	bne	t5,t3,328 <benchmark_body+0x1d8>
     324:	0ec0306f          	j	3410 <benchmark_body+0x32c0>
     328:	0007ae03          	lw	t3,0(a5)
     32c:	01c65e63          	bge	a2,t3,348 <benchmark_body+0x1f8>
     330:	0485ae03          	lw	t3,72(a1)
     334:	01c64a63          	blt	a2,t3,348 <benchmark_body+0x1f8>
     338:	02472f03          	lw	t5,36(a4)
     33c:	03072e03          	lw	t3,48(a4)
     340:	01cf1463          	bne	t5,t3,348 <benchmark_body+0x1f8>
     344:	1440306f          	j	3488 <benchmark_body+0x3338>
     348:	0007ae03          	lw	t3,0(a5)
     34c:	01c65e63          	bge	a2,t3,368 <benchmark_body+0x218>
     350:	0485ae03          	lw	t3,72(a1)
     354:	01c64a63          	blt	a2,t3,368 <benchmark_body+0x218>
     358:	02c72f03          	lw	t5,44(a4)
     35c:	02472e03          	lw	t3,36(a4)
     360:	01cf1463          	bne	t5,t3,368 <benchmark_body+0x218>
     364:	19c0306f          	j	3500 <benchmark_body+0x33b0>
     368:	0007ae03          	lw	t3,0(a5)
     36c:	01c65e63          	bge	a2,t3,388 <benchmark_body+0x238>
     370:	0485ae03          	lw	t3,72(a1)
     374:	01c64a63          	blt	a2,t3,388 <benchmark_body+0x238>
     378:	02c72f03          	lw	t5,44(a4)
     37c:	03072e03          	lw	t3,48(a4)
     380:	01cf1463          	bne	t5,t3,388 <benchmark_body+0x238>
     384:	1f40306f          	j	3578 <benchmark_body+0x3428>
     388:	0007ae03          	lw	t3,0(a5)
     38c:	01c65e63          	bge	a2,t3,3a8 <benchmark_body+0x258>
     390:	0485ae03          	lw	t3,72(a1)
     394:	01c64a63          	blt	a2,t3,3a8 <benchmark_body+0x258>
     398:	03072f03          	lw	t5,48(a4)
     39c:	02472e03          	lw	t3,36(a4)
     3a0:	01cf1463          	bne	t5,t3,3a8 <benchmark_body+0x258>
     3a4:	24c0306f          	j	35f0 <benchmark_body+0x34a0>
     3a8:	0007ae03          	lw	t3,0(a5)
     3ac:	01c65e63          	bge	a2,t3,3c8 <benchmark_body+0x278>
     3b0:	0485ae03          	lw	t3,72(a1)
     3b4:	01c64a63          	blt	a2,t3,3c8 <benchmark_body+0x278>
     3b8:	03072f03          	lw	t5,48(a4)
     3bc:	02c72e03          	lw	t3,44(a4)
     3c0:	01cf1463          	bne	t5,t3,3c8 <benchmark_body+0x278>
     3c4:	2a40306f          	j	3668 <benchmark_body+0x3518>
     3c8:	0007ae03          	lw	t3,0(a5)
     3cc:	01c65e63          	bge	a2,t3,3e8 <benchmark_body+0x298>
     3d0:	0485ae03          	lw	t3,72(a1)
     3d4:	01c64a63          	blt	a2,t3,3e8 <benchmark_body+0x298>
     3d8:	02472f03          	lw	t5,36(a4)
     3dc:	02872e03          	lw	t3,40(a4)
     3e0:	01cf1463          	bne	t5,t3,3e8 <benchmark_body+0x298>
     3e4:	2fc0306f          	j	36e0 <benchmark_body+0x3590>
     3e8:	0007ae03          	lw	t3,0(a5)
     3ec:	01c65e63          	bge	a2,t3,408 <benchmark_body+0x2b8>
     3f0:	0485ae03          	lw	t3,72(a1)
     3f4:	01c64a63          	blt	a2,t3,408 <benchmark_body+0x2b8>
     3f8:	02472f03          	lw	t5,36(a4)
     3fc:	03072e03          	lw	t3,48(a4)
     400:	01cf1463          	bne	t5,t3,408 <benchmark_body+0x2b8>
     404:	3540306f          	j	3758 <benchmark_body+0x3608>
     408:	0007ae03          	lw	t3,0(a5)
     40c:	01c65e63          	bge	a2,t3,428 <benchmark_body+0x2d8>
     410:	0485ae03          	lw	t3,72(a1)
     414:	01c64a63          	blt	a2,t3,428 <benchmark_body+0x2d8>
     418:	02872f03          	lw	t5,40(a4)
     41c:	02472e03          	lw	t3,36(a4)
     420:	01cf1463          	bne	t5,t3,428 <benchmark_body+0x2d8>
     424:	3ac0306f          	j	37d0 <benchmark_body+0x3680>
     428:	0007ae03          	lw	t3,0(a5)
     42c:	01c65e63          	bge	a2,t3,448 <benchmark_body+0x2f8>
     430:	0485ae03          	lw	t3,72(a1)
     434:	01c64a63          	blt	a2,t3,448 <benchmark_body+0x2f8>
     438:	02872f03          	lw	t5,40(a4)
     43c:	03072e03          	lw	t3,48(a4)
     440:	01cf1463          	bne	t5,t3,448 <benchmark_body+0x2f8>
     444:	4040306f          	j	3848 <benchmark_body+0x36f8>
     448:	0007ae03          	lw	t3,0(a5)
     44c:	01c65e63          	bge	a2,t3,468 <benchmark_body+0x318>
     450:	0485ae03          	lw	t3,72(a1)
     454:	01c64a63          	blt	a2,t3,468 <benchmark_body+0x318>
     458:	03072f03          	lw	t5,48(a4)
     45c:	02472e03          	lw	t3,36(a4)
     460:	01cf1463          	bne	t5,t3,468 <benchmark_body+0x318>
     464:	45c0306f          	j	38c0 <benchmark_body+0x3770>
     468:	0007ae03          	lw	t3,0(a5)
     46c:	01c65e63          	bge	a2,t3,488 <benchmark_body+0x338>
     470:	0485ae03          	lw	t3,72(a1)
     474:	01c64a63          	blt	a2,t3,488 <benchmark_body+0x338>
     478:	03072f03          	lw	t5,48(a4)
     47c:	02872e03          	lw	t3,40(a4)
     480:	01cf1463          	bne	t5,t3,488 <benchmark_body+0x338>
     484:	4b40306f          	j	3938 <benchmark_body+0x37e8>
     488:	0007ae03          	lw	t3,0(a5)
     48c:	01c65e63          	bge	a2,t3,4a8 <benchmark_body+0x358>
     490:	0485ae03          	lw	t3,72(a1)
     494:	01c64a63          	blt	a2,t3,4a8 <benchmark_body+0x358>
     498:	02472f03          	lw	t5,36(a4)
     49c:	02872e03          	lw	t3,40(a4)
     4a0:	01cf1463          	bne	t5,t3,4a8 <benchmark_body+0x358>
     4a4:	50c0306f          	j	39b0 <benchmark_body+0x3860>
     4a8:	0007ae03          	lw	t3,0(a5)
     4ac:	01c65e63          	bge	a2,t3,4c8 <benchmark_body+0x378>
     4b0:	0485ae03          	lw	t3,72(a1)
     4b4:	01c64a63          	blt	a2,t3,4c8 <benchmark_body+0x378>
     4b8:	02472f03          	lw	t5,36(a4)
     4bc:	02c72e03          	lw	t3,44(a4)
     4c0:	01cf1463          	bne	t5,t3,4c8 <benchmark_body+0x378>
     4c4:	5640306f          	j	3a28 <benchmark_body+0x38d8>
     4c8:	0007ae03          	lw	t3,0(a5)
     4cc:	01c65e63          	bge	a2,t3,4e8 <benchmark_body+0x398>
     4d0:	0485ae03          	lw	t3,72(a1)
     4d4:	01c64a63          	blt	a2,t3,4e8 <benchmark_body+0x398>
     4d8:	02872f03          	lw	t5,40(a4)
     4dc:	02472e03          	lw	t3,36(a4)
     4e0:	01cf1463          	bne	t5,t3,4e8 <benchmark_body+0x398>
     4e4:	5bc0306f          	j	3aa0 <benchmark_body+0x3950>
     4e8:	0007ae03          	lw	t3,0(a5)
     4ec:	01c65e63          	bge	a2,t3,508 <benchmark_body+0x3b8>
     4f0:	0485ae03          	lw	t3,72(a1)
     4f4:	01c64a63          	blt	a2,t3,508 <benchmark_body+0x3b8>
     4f8:	02872f03          	lw	t5,40(a4)
     4fc:	02c72e03          	lw	t3,44(a4)
     500:	01cf1463          	bne	t5,t3,508 <benchmark_body+0x3b8>
     504:	6140306f          	j	3b18 <benchmark_body+0x39c8>
     508:	0007ae03          	lw	t3,0(a5)
     50c:	01c65e63          	bge	a2,t3,528 <benchmark_body+0x3d8>
     510:	0485ae03          	lw	t3,72(a1)
     514:	01c64a63          	blt	a2,t3,528 <benchmark_body+0x3d8>
     518:	02c72f03          	lw	t5,44(a4)
     51c:	02472e03          	lw	t3,36(a4)
     520:	01cf1463          	bne	t5,t3,528 <benchmark_body+0x3d8>
     524:	66c0306f          	j	3b90 <benchmark_body+0x3a40>
     528:	0007ae03          	lw	t3,0(a5)
     52c:	01c65e63          	bge	a2,t3,548 <benchmark_body+0x3f8>
     530:	0485ae03          	lw	t3,72(a1)
     534:	01c64a63          	blt	a2,t3,548 <benchmark_body+0x3f8>
     538:	02c72f03          	lw	t5,44(a4)
     53c:	02872e03          	lw	t3,40(a4)
     540:	01cf1463          	bne	t5,t3,548 <benchmark_body+0x3f8>
     544:	6c40306f          	j	3c08 <benchmark_body+0x3ab8>
     548:	0007ae03          	lw	t3,0(a5)
     54c:	01c6de63          	bge	a3,t3,568 <benchmark_body+0x418>
     550:	0485ae03          	lw	t3,72(a1)
     554:	01c64a63          	blt	a2,t3,568 <benchmark_body+0x418>
     558:	02872f03          	lw	t5,40(a4)
     55c:	02c72e03          	lw	t3,44(a4)
     560:	01cf1463          	bne	t5,t3,568 <benchmark_body+0x418>
     564:	71c0306f          	j	3c80 <benchmark_body+0x3b30>
     568:	0007ae03          	lw	t3,0(a5)
     56c:	01c6de63          	bge	a3,t3,588 <benchmark_body+0x438>
     570:	0485ae03          	lw	t3,72(a1)
     574:	01c64a63          	blt	a2,t3,588 <benchmark_body+0x438>
     578:	02872f03          	lw	t5,40(a4)
     57c:	03072e03          	lw	t3,48(a4)
     580:	01cf1463          	bne	t5,t3,588 <benchmark_body+0x438>
     584:	77c0306f          	j	3d00 <benchmark_body+0x3bb0>
     588:	0007ae03          	lw	t3,0(a5)
     58c:	01c6de63          	bge	a3,t3,5a8 <benchmark_body+0x458>
     590:	0485ae03          	lw	t3,72(a1)
     594:	01c64a63          	blt	a2,t3,5a8 <benchmark_body+0x458>
     598:	02872f03          	lw	t5,40(a4)
     59c:	03472e03          	lw	t3,52(a4)
     5a0:	01cf1463          	bne	t5,t3,5a8 <benchmark_body+0x458>
     5a4:	7dc0306f          	j	3d80 <benchmark_body+0x3c30>
     5a8:	0007ae03          	lw	t3,0(a5)
     5ac:	01c6de63          	bge	a3,t3,5c8 <benchmark_body+0x478>
     5b0:	0485ae03          	lw	t3,72(a1)
     5b4:	01c64a63          	blt	a2,t3,5c8 <benchmark_body+0x478>
     5b8:	02872f03          	lw	t5,40(a4)
     5bc:	03472e03          	lw	t3,52(a4)
     5c0:	01cf1463          	bne	t5,t3,5c8 <benchmark_body+0x478>
     5c4:	03d0306f          	j	3e00 <benchmark_body+0x3cb0>
     5c8:	0007ae03          	lw	t3,0(a5)
     5cc:	01c6de63          	bge	a3,t3,5e8 <benchmark_body+0x498>
     5d0:	0485ae03          	lw	t3,72(a1)
     5d4:	01c64a63          	blt	a2,t3,5e8 <benchmark_body+0x498>
     5d8:	02c72f03          	lw	t5,44(a4)
     5dc:	02872e03          	lw	t3,40(a4)
     5e0:	01cf1463          	bne	t5,t3,5e8 <benchmark_body+0x498>
     5e4:	09d0306f          	j	3e80 <benchmark_body+0x3d30>
     5e8:	0007ae03          	lw	t3,0(a5)
     5ec:	01c6de63          	bge	a3,t3,608 <benchmark_body+0x4b8>
     5f0:	0485ae03          	lw	t3,72(a1)
     5f4:	01c64a63          	blt	a2,t3,608 <benchmark_body+0x4b8>
     5f8:	02c72f03          	lw	t5,44(a4)
     5fc:	03072e03          	lw	t3,48(a4)
     600:	01cf1463          	bne	t5,t3,608 <benchmark_body+0x4b8>
     604:	0fd0306f          	j	3f00 <benchmark_body+0x3db0>
     608:	0007ae03          	lw	t3,0(a5)
     60c:	01c6de63          	bge	a3,t3,628 <benchmark_body+0x4d8>
     610:	0485ae03          	lw	t3,72(a1)
     614:	01c64a63          	blt	a2,t3,628 <benchmark_body+0x4d8>
     618:	02c72f03          	lw	t5,44(a4)
     61c:	03472e03          	lw	t3,52(a4)
     620:	01cf1463          	bne	t5,t3,628 <benchmark_body+0x4d8>
     624:	15d0306f          	j	3f80 <benchmark_body+0x3e30>
     628:	0007ae03          	lw	t3,0(a5)
     62c:	01c6de63          	bge	a3,t3,648 <benchmark_body+0x4f8>
     630:	0485ae03          	lw	t3,72(a1)
     634:	01c64a63          	blt	a2,t3,648 <benchmark_body+0x4f8>
     638:	02c72f03          	lw	t5,44(a4)
     63c:	03472e03          	lw	t3,52(a4)
     640:	01cf1463          	bne	t5,t3,648 <benchmark_body+0x4f8>
     644:	1bd0306f          	j	4000 <benchmark_body+0x3eb0>
     648:	0007ae03          	lw	t3,0(a5)
     64c:	01c6de63          	bge	a3,t3,668 <benchmark_body+0x518>
     650:	0485ae03          	lw	t3,72(a1)
     654:	01c64a63          	blt	a2,t3,668 <benchmark_body+0x518>
     658:	03072f03          	lw	t5,48(a4)
     65c:	02872e03          	lw	t3,40(a4)
     660:	01cf1463          	bne	t5,t3,668 <benchmark_body+0x518>
     664:	21d0306f          	j	4080 <benchmark_body+0x3f30>
     668:	0007ae03          	lw	t3,0(a5)
     66c:	01c6de63          	bge	a3,t3,688 <benchmark_body+0x538>
     670:	0485ae03          	lw	t3,72(a1)
     674:	01c64a63          	blt	a2,t3,688 <benchmark_body+0x538>
     678:	03072f03          	lw	t5,48(a4)
     67c:	02c72e03          	lw	t3,44(a4)
     680:	01cf1463          	bne	t5,t3,688 <benchmark_body+0x538>
     684:	27d0306f          	j	4100 <benchmark_body+0x3fb0>
     688:	0007ae03          	lw	t3,0(a5)
     68c:	01c6de63          	bge	a3,t3,6a8 <benchmark_body+0x558>
     690:	0485ae03          	lw	t3,72(a1)
     694:	01c64a63          	blt	a2,t3,6a8 <benchmark_body+0x558>
     698:	03072f03          	lw	t5,48(a4)
     69c:	03472e03          	lw	t3,52(a4)
     6a0:	01cf1463          	bne	t5,t3,6a8 <benchmark_body+0x558>
     6a4:	2dd0306f          	j	4180 <benchmark_body+0x4030>
     6a8:	0007ae03          	lw	t3,0(a5)
     6ac:	01c6de63          	bge	a3,t3,6c8 <benchmark_body+0x578>
     6b0:	0485ae03          	lw	t3,72(a1)
     6b4:	01c64a63          	blt	a2,t3,6c8 <benchmark_body+0x578>
     6b8:	03072f03          	lw	t5,48(a4)
     6bc:	03472e03          	lw	t3,52(a4)
     6c0:	01cf1463          	bne	t5,t3,6c8 <benchmark_body+0x578>
     6c4:	33d0306f          	j	4200 <benchmark_body+0x40b0>
     6c8:	0007ae03          	lw	t3,0(a5)
     6cc:	01c6de63          	bge	a3,t3,6e8 <benchmark_body+0x598>
     6d0:	0485ae03          	lw	t3,72(a1)
     6d4:	01c64a63          	blt	a2,t3,6e8 <benchmark_body+0x598>
     6d8:	03472f03          	lw	t5,52(a4)
     6dc:	02872e03          	lw	t3,40(a4)
     6e0:	01cf1463          	bne	t5,t3,6e8 <benchmark_body+0x598>
     6e4:	39d0306f          	j	4280 <benchmark_body+0x4130>
     6e8:	0007ae03          	lw	t3,0(a5)
     6ec:	01c6de63          	bge	a3,t3,708 <benchmark_body+0x5b8>
     6f0:	0485ae03          	lw	t3,72(a1)
     6f4:	01c64a63          	blt	a2,t3,708 <benchmark_body+0x5b8>
     6f8:	03472f03          	lw	t5,52(a4)
     6fc:	02872e03          	lw	t3,40(a4)
     700:	01cf1463          	bne	t5,t3,708 <benchmark_body+0x5b8>
     704:	3fd0306f          	j	4300 <benchmark_body+0x41b0>
     708:	0007ae03          	lw	t3,0(a5)
     70c:	01c6de63          	bge	a3,t3,728 <benchmark_body+0x5d8>
     710:	0485ae03          	lw	t3,72(a1)
     714:	01c64a63          	blt	a2,t3,728 <benchmark_body+0x5d8>
     718:	03472f03          	lw	t5,52(a4)
     71c:	02c72e03          	lw	t3,44(a4)
     720:	01cf1463          	bne	t5,t3,728 <benchmark_body+0x5d8>
     724:	45d0306f          	j	4380 <benchmark_body+0x4230>
     728:	0007ae03          	lw	t3,0(a5)
     72c:	01c6de63          	bge	a3,t3,748 <benchmark_body+0x5f8>
     730:	0485ae03          	lw	t3,72(a1)
     734:	01c64a63          	blt	a2,t3,748 <benchmark_body+0x5f8>
     738:	03472f03          	lw	t5,52(a4)
     73c:	02c72e03          	lw	t3,44(a4)
     740:	01cf1463          	bne	t5,t3,748 <benchmark_body+0x5f8>
     744:	4bd0306f          	j	4400 <benchmark_body+0x42b0>
     748:	0007ae03          	lw	t3,0(a5)
     74c:	01c6de63          	bge	a3,t3,768 <benchmark_body+0x618>
     750:	0485ae03          	lw	t3,72(a1)
     754:	01c64a63          	blt	a2,t3,768 <benchmark_body+0x618>
     758:	03472f03          	lw	t5,52(a4)
     75c:	03072e03          	lw	t3,48(a4)
     760:	01cf1463          	bne	t5,t3,768 <benchmark_body+0x618>
     764:	51d0306f          	j	4480 <benchmark_body+0x4330>
     768:	0007ae03          	lw	t3,0(a5)
     76c:	01c6de63          	bge	a3,t3,788 <benchmark_body+0x638>
     770:	0485ae03          	lw	t3,72(a1)
     774:	01c64a63          	blt	a2,t3,788 <benchmark_body+0x638>
     778:	03472f03          	lw	t5,52(a4)
     77c:	03072e03          	lw	t3,48(a4)
     780:	01cf1463          	bne	t5,t3,788 <benchmark_body+0x638>
     784:	57d0306f          	j	4500 <benchmark_body+0x43b0>
     788:	0007ae03          	lw	t3,0(a5)
     78c:	01c6de63          	bge	a3,t3,7a8 <benchmark_body+0x658>
     790:	0485ae03          	lw	t3,72(a1)
     794:	01c64a63          	blt	a2,t3,7a8 <benchmark_body+0x658>
     798:	02472f03          	lw	t5,36(a4)
     79c:	02c72e03          	lw	t3,44(a4)
     7a0:	01cf1463          	bne	t5,t3,7a8 <benchmark_body+0x658>
     7a4:	5dd0306f          	j	4580 <benchmark_body+0x4430>
     7a8:	0007ae03          	lw	t3,0(a5)
     7ac:	01c6de63          	bge	a3,t3,7c8 <benchmark_body+0x678>
     7b0:	0485ae03          	lw	t3,72(a1)
     7b4:	01c64a63          	blt	a2,t3,7c8 <benchmark_body+0x678>
     7b8:	02472f03          	lw	t5,36(a4)
     7bc:	03072e03          	lw	t3,48(a4)
     7c0:	01cf1463          	bne	t5,t3,7c8 <benchmark_body+0x678>
     7c4:	63d0306f          	j	4600 <benchmark_body+0x44b0>
     7c8:	0007ae03          	lw	t3,0(a5)
     7cc:	01c6de63          	bge	a3,t3,7e8 <benchmark_body+0x698>
     7d0:	0485ae03          	lw	t3,72(a1)
     7d4:	01c64a63          	blt	a2,t3,7e8 <benchmark_body+0x698>
     7d8:	02472f03          	lw	t5,36(a4)
     7dc:	03472e03          	lw	t3,52(a4)
     7e0:	01cf1463          	bne	t5,t3,7e8 <benchmark_body+0x698>
     7e4:	69d0306f          	j	4680 <benchmark_body+0x4530>
     7e8:	0007ae03          	lw	t3,0(a5)
     7ec:	01c6de63          	bge	a3,t3,808 <benchmark_body+0x6b8>
     7f0:	0485ae03          	lw	t3,72(a1)
     7f4:	01c64a63          	blt	a2,t3,808 <benchmark_body+0x6b8>
     7f8:	02472f03          	lw	t5,36(a4)
     7fc:	03472e03          	lw	t3,52(a4)
     800:	01cf1463          	bne	t5,t3,808 <benchmark_body+0x6b8>
     804:	6fd0306f          	j	4700 <benchmark_body+0x45b0>
     808:	0007ae03          	lw	t3,0(a5)
     80c:	01c6de63          	bge	a3,t3,828 <benchmark_body+0x6d8>
     810:	0485ae03          	lw	t3,72(a1)
     814:	01c64a63          	blt	a2,t3,828 <benchmark_body+0x6d8>
     818:	02c72f03          	lw	t5,44(a4)
     81c:	02472e03          	lw	t3,36(a4)
     820:	01cf1463          	bne	t5,t3,828 <benchmark_body+0x6d8>
     824:	75d0306f          	j	4780 <benchmark_body+0x4630>
     828:	0007ae03          	lw	t3,0(a5)
     82c:	01c6de63          	bge	a3,t3,848 <benchmark_body+0x6f8>
     830:	0485ae03          	lw	t3,72(a1)
     834:	01c64a63          	blt	a2,t3,848 <benchmark_body+0x6f8>
     838:	02c72f03          	lw	t5,44(a4)
     83c:	03072e03          	lw	t3,48(a4)
     840:	01cf1463          	bne	t5,t3,848 <benchmark_body+0x6f8>
     844:	7bd0306f          	j	4800 <benchmark_body+0x46b0>
     848:	0007ae03          	lw	t3,0(a5)
     84c:	01c6de63          	bge	a3,t3,868 <benchmark_body+0x718>
     850:	0485ae03          	lw	t3,72(a1)
     854:	01c64a63          	blt	a2,t3,868 <benchmark_body+0x718>
     858:	02c72f03          	lw	t5,44(a4)
     85c:	03472e03          	lw	t3,52(a4)
     860:	01cf1463          	bne	t5,t3,868 <benchmark_body+0x718>
     864:	0140406f          	j	4878 <benchmark_body+0x4728>
     868:	0007ae03          	lw	t3,0(a5)
     86c:	01c6de63          	bge	a3,t3,888 <benchmark_body+0x738>
     870:	0485ae03          	lw	t3,72(a1)
     874:	01c64a63          	blt	a2,t3,888 <benchmark_body+0x738>
     878:	02c72f03          	lw	t5,44(a4)
     87c:	03472e03          	lw	t3,52(a4)
     880:	01cf1463          	bne	t5,t3,888 <benchmark_body+0x738>
     884:	0740406f          	j	48f8 <benchmark_body+0x47a8>
     888:	0007ae03          	lw	t3,0(a5)
     88c:	01c6de63          	bge	a3,t3,8a8 <benchmark_body+0x758>
     890:	0485ae03          	lw	t3,72(a1)
     894:	01c64a63          	blt	a2,t3,8a8 <benchmark_body+0x758>
     898:	03072f03          	lw	t5,48(a4)
     89c:	02472e03          	lw	t3,36(a4)
     8a0:	01cf1463          	bne	t5,t3,8a8 <benchmark_body+0x758>
     8a4:	0cc0406f          	j	4970 <benchmark_body+0x4820>
     8a8:	0007ae03          	lw	t3,0(a5)
     8ac:	01c6de63          	bge	a3,t3,8c8 <benchmark_body+0x778>
     8b0:	0485ae03          	lw	t3,72(a1)
     8b4:	01c64a63          	blt	a2,t3,8c8 <benchmark_body+0x778>
     8b8:	03072f03          	lw	t5,48(a4)
     8bc:	02c72e03          	lw	t3,44(a4)
     8c0:	01cf1463          	bne	t5,t3,8c8 <benchmark_body+0x778>
     8c4:	12c0406f          	j	49f0 <benchmark_body+0x48a0>
     8c8:	0007ae03          	lw	t3,0(a5)
     8cc:	01c6de63          	bge	a3,t3,8e8 <benchmark_body+0x798>
     8d0:	0485ae03          	lw	t3,72(a1)
     8d4:	01c64a63          	blt	a2,t3,8e8 <benchmark_body+0x798>
     8d8:	03072f03          	lw	t5,48(a4)
     8dc:	03472e03          	lw	t3,52(a4)
     8e0:	01cf1463          	bne	t5,t3,8e8 <benchmark_body+0x798>
     8e4:	1840406f          	j	4a68 <benchmark_body+0x4918>
     8e8:	0007ae03          	lw	t3,0(a5)
     8ec:	01c6de63          	bge	a3,t3,908 <benchmark_body+0x7b8>
     8f0:	0485ae03          	lw	t3,72(a1)
     8f4:	01c64a63          	blt	a2,t3,908 <benchmark_body+0x7b8>
     8f8:	03072f03          	lw	t5,48(a4)
     8fc:	03472e03          	lw	t3,52(a4)
     900:	01cf1463          	bne	t5,t3,908 <benchmark_body+0x7b8>
     904:	1e40406f          	j	4ae8 <benchmark_body+0x4998>
     908:	0007ae03          	lw	t3,0(a5)
     90c:	01c6de63          	bge	a3,t3,928 <benchmark_body+0x7d8>
     910:	0485ae03          	lw	t3,72(a1)
     914:	01c64a63          	blt	a2,t3,928 <benchmark_body+0x7d8>
     918:	03472f03          	lw	t5,52(a4)
     91c:	02472e03          	lw	t3,36(a4)
     920:	01cf1463          	bne	t5,t3,928 <benchmark_body+0x7d8>
     924:	23c0406f          	j	4b60 <benchmark_body+0x4a10>
     928:	0007ae03          	lw	t3,0(a5)
     92c:	01c6de63          	bge	a3,t3,948 <benchmark_body+0x7f8>
     930:	0485ae03          	lw	t3,72(a1)
     934:	01c64a63          	blt	a2,t3,948 <benchmark_body+0x7f8>
     938:	03472f03          	lw	t5,52(a4)
     93c:	02472e03          	lw	t3,36(a4)
     940:	01cf1463          	bne	t5,t3,948 <benchmark_body+0x7f8>
     944:	29c0406f          	j	4be0 <benchmark_body+0x4a90>
     948:	0007ae03          	lw	t3,0(a5)
     94c:	01c6de63          	bge	a3,t3,968 <benchmark_body+0x818>
     950:	0485ae03          	lw	t3,72(a1)
     954:	01c64a63          	blt	a2,t3,968 <benchmark_body+0x818>
     958:	03472f03          	lw	t5,52(a4)
     95c:	02c72e03          	lw	t3,44(a4)
     960:	01cf1463          	bne	t5,t3,968 <benchmark_body+0x818>
     964:	2fc0406f          	j	4c60 <benchmark_body+0x4b10>
     968:	0007ae03          	lw	t3,0(a5)
     96c:	01c6de63          	bge	a3,t3,988 <benchmark_body+0x838>
     970:	0485ae03          	lw	t3,72(a1)
     974:	01c64a63          	blt	a2,t3,988 <benchmark_body+0x838>
     978:	03472f03          	lw	t5,52(a4)
     97c:	02c72e03          	lw	t3,44(a4)
     980:	01cf1463          	bne	t5,t3,988 <benchmark_body+0x838>
     984:	52c0106f          	j	1eb0 <benchmark_body+0x1d60>
     988:	0007ae03          	lw	t3,0(a5)
     98c:	01c6de63          	bge	a3,t3,9a8 <benchmark_body+0x858>
     990:	0485ae03          	lw	t3,72(a1)
     994:	01c64a63          	blt	a2,t3,9a8 <benchmark_body+0x858>
     998:	03472f03          	lw	t5,52(a4)
     99c:	03072e03          	lw	t3,48(a4)
     9a0:	01cf1463          	bne	t5,t3,9a8 <benchmark_body+0x858>
     9a4:	5840106f          	j	1f28 <benchmark_body+0x1dd8>
     9a8:	0007ae03          	lw	t3,0(a5)
     9ac:	01c6de63          	bge	a3,t3,9c8 <benchmark_body+0x878>
     9b0:	0485ae03          	lw	t3,72(a1)
     9b4:	01c64a63          	blt	a2,t3,9c8 <benchmark_body+0x878>
     9b8:	03472f03          	lw	t5,52(a4)
     9bc:	03072e03          	lw	t3,48(a4)
     9c0:	01cf1463          	bne	t5,t3,9c8 <benchmark_body+0x878>
     9c4:	5e40106f          	j	1fa8 <benchmark_body+0x1e58>
     9c8:	0007ae03          	lw	t3,0(a5)
     9cc:	01c6de63          	bge	a3,t3,9e8 <benchmark_body+0x898>
     9d0:	0485ae03          	lw	t3,72(a1)
     9d4:	01c64a63          	blt	a2,t3,9e8 <benchmark_body+0x898>
     9d8:	02472f03          	lw	t5,36(a4)
     9dc:	02872e03          	lw	t3,40(a4)
     9e0:	01cf1463          	bne	t5,t3,9e8 <benchmark_body+0x898>
     9e4:	63c0106f          	j	2020 <benchmark_body+0x1ed0>
     9e8:	0007ae03          	lw	t3,0(a5)
     9ec:	01c6de63          	bge	a3,t3,a08 <benchmark_body+0x8b8>
     9f0:	0485ae03          	lw	t3,72(a1)
     9f4:	01c64a63          	blt	a2,t3,a08 <benchmark_body+0x8b8>
     9f8:	02472f03          	lw	t5,36(a4)
     9fc:	03072e03          	lw	t3,48(a4)
     a00:	01cf1463          	bne	t5,t3,a08 <benchmark_body+0x8b8>
     a04:	69c0106f          	j	20a0 <benchmark_body+0x1f50>
     a08:	0007ae03          	lw	t3,0(a5)
     a0c:	01c6de63          	bge	a3,t3,a28 <benchmark_body+0x8d8>
     a10:	0485ae03          	lw	t3,72(a1)
     a14:	01c64a63          	blt	a2,t3,a28 <benchmark_body+0x8d8>
     a18:	02472f03          	lw	t5,36(a4)
     a1c:	03472e03          	lw	t3,52(a4)
     a20:	01cf1463          	bne	t5,t3,a28 <benchmark_body+0x8d8>
     a24:	6fc0106f          	j	2120 <benchmark_body+0x1fd0>
     a28:	0007ae03          	lw	t3,0(a5)
     a2c:	01c6de63          	bge	a3,t3,a48 <benchmark_body+0x8f8>
     a30:	0485ae03          	lw	t3,72(a1)
     a34:	01c64a63          	blt	a2,t3,a48 <benchmark_body+0x8f8>
     a38:	02472f03          	lw	t5,36(a4)
     a3c:	03472e03          	lw	t3,52(a4)
     a40:	01cf1463          	bne	t5,t3,a48 <benchmark_body+0x8f8>
     a44:	75c0106f          	j	21a0 <benchmark_body+0x2050>
     a48:	0007ae03          	lw	t3,0(a5)
     a4c:	01c6de63          	bge	a3,t3,a68 <benchmark_body+0x918>
     a50:	0485ae03          	lw	t3,72(a1)
     a54:	01c64a63          	blt	a2,t3,a68 <benchmark_body+0x918>
     a58:	02872f03          	lw	t5,40(a4)
     a5c:	02472e03          	lw	t3,36(a4)
     a60:	01cf1463          	bne	t5,t3,a68 <benchmark_body+0x918>
     a64:	7bc0106f          	j	2220 <benchmark_body+0x20d0>
     a68:	0007ae03          	lw	t3,0(a5)
     a6c:	01c6de63          	bge	a3,t3,a88 <benchmark_body+0x938>
     a70:	0485ae03          	lw	t3,72(a1)
     a74:	01c64a63          	blt	a2,t3,a88 <benchmark_body+0x938>
     a78:	02872f03          	lw	t5,40(a4)
     a7c:	03072e03          	lw	t3,48(a4)
     a80:	01cf1463          	bne	t5,t3,a88 <benchmark_body+0x938>
     a84:	01d0106f          	j	22a0 <benchmark_body+0x2150>
     a88:	0007ae03          	lw	t3,0(a5)
     a8c:	01c6de63          	bge	a3,t3,aa8 <benchmark_body+0x958>
     a90:	0485ae03          	lw	t3,72(a1)
     a94:	01c64a63          	blt	a2,t3,aa8 <benchmark_body+0x958>
     a98:	02872f03          	lw	t5,40(a4)
     a9c:	03472e03          	lw	t3,52(a4)
     aa0:	01cf1463          	bne	t5,t3,aa8 <benchmark_body+0x958>
     aa4:	0750106f          	j	2318 <benchmark_body+0x21c8>
     aa8:	0007ae03          	lw	t3,0(a5)
     aac:	01c6de63          	bge	a3,t3,ac8 <benchmark_body+0x978>
     ab0:	0485ae03          	lw	t3,72(a1)
     ab4:	01c64a63          	blt	a2,t3,ac8 <benchmark_body+0x978>
     ab8:	02872f03          	lw	t5,40(a4)
     abc:	03472e03          	lw	t3,52(a4)
     ac0:	01cf1463          	bne	t5,t3,ac8 <benchmark_body+0x978>
     ac4:	0d50106f          	j	2398 <benchmark_body+0x2248>
     ac8:	0007ae03          	lw	t3,0(a5)
     acc:	01c6de63          	bge	a3,t3,ae8 <benchmark_body+0x998>
     ad0:	0485ae03          	lw	t3,72(a1)
     ad4:	01c64a63          	blt	a2,t3,ae8 <benchmark_body+0x998>
     ad8:	03072f03          	lw	t5,48(a4)
     adc:	02472e03          	lw	t3,36(a4)
     ae0:	01cf1463          	bne	t5,t3,ae8 <benchmark_body+0x998>
     ae4:	12d0106f          	j	2410 <benchmark_body+0x22c0>
     ae8:	0007ae03          	lw	t3,0(a5)
     aec:	01c6de63          	bge	a3,t3,b08 <benchmark_body+0x9b8>
     af0:	0485ae03          	lw	t3,72(a1)
     af4:	01c64a63          	blt	a2,t3,b08 <benchmark_body+0x9b8>
     af8:	03072f03          	lw	t5,48(a4)
     afc:	02872e03          	lw	t3,40(a4)
     b00:	01cf1463          	bne	t5,t3,b08 <benchmark_body+0x9b8>
     b04:	18d0106f          	j	2490 <benchmark_body+0x2340>
     b08:	0007ae03          	lw	t3,0(a5)
     b0c:	01c6de63          	bge	a3,t3,b28 <benchmark_body+0x9d8>
     b10:	0485ae03          	lw	t3,72(a1)
     b14:	01c64a63          	blt	a2,t3,b28 <benchmark_body+0x9d8>
     b18:	03072f03          	lw	t5,48(a4)
     b1c:	03472e03          	lw	t3,52(a4)
     b20:	01cf1463          	bne	t5,t3,b28 <benchmark_body+0x9d8>
     b24:	1e50106f          	j	2508 <benchmark_body+0x23b8>
     b28:	0007ae03          	lw	t3,0(a5)
     b2c:	01c6de63          	bge	a3,t3,b48 <benchmark_body+0x9f8>
     b30:	0485ae03          	lw	t3,72(a1)
     b34:	01c64a63          	blt	a2,t3,b48 <benchmark_body+0x9f8>
     b38:	03072f03          	lw	t5,48(a4)
     b3c:	03472e03          	lw	t3,52(a4)
     b40:	01cf1463          	bne	t5,t3,b48 <benchmark_body+0x9f8>
     b44:	2450106f          	j	2588 <benchmark_body+0x2438>
     b48:	0007ae03          	lw	t3,0(a5)
     b4c:	01c6de63          	bge	a3,t3,b68 <benchmark_body+0xa18>
     b50:	0485ae03          	lw	t3,72(a1)
     b54:	01c64a63          	blt	a2,t3,b68 <benchmark_body+0xa18>
     b58:	03472f03          	lw	t5,52(a4)
     b5c:	02472e03          	lw	t3,36(a4)
     b60:	01cf1463          	bne	t5,t3,b68 <benchmark_body+0xa18>
     b64:	29d0106f          	j	2600 <benchmark_body+0x24b0>
     b68:	0007ae03          	lw	t3,0(a5)
     b6c:	01c6de63          	bge	a3,t3,b88 <benchmark_body+0xa38>
     b70:	0485ae03          	lw	t3,72(a1)
     b74:	01c64a63          	blt	a2,t3,b88 <benchmark_body+0xa38>
     b78:	03472f03          	lw	t5,52(a4)
     b7c:	02472e03          	lw	t3,36(a4)
     b80:	01cf1463          	bne	t5,t3,b88 <benchmark_body+0xa38>
     b84:	2fd0106f          	j	2680 <benchmark_body+0x2530>
     b88:	0007ae03          	lw	t3,0(a5)
     b8c:	01c6de63          	bge	a3,t3,ba8 <benchmark_body+0xa58>
     b90:	0485ae03          	lw	t3,72(a1)
     b94:	01c64a63          	blt	a2,t3,ba8 <benchmark_body+0xa58>
     b98:	03472f03          	lw	t5,52(a4)
     b9c:	02872e03          	lw	t3,40(a4)
     ba0:	01cf1463          	bne	t5,t3,ba8 <benchmark_body+0xa58>
     ba4:	35d0106f          	j	2700 <benchmark_body+0x25b0>
     ba8:	0007ae03          	lw	t3,0(a5)
     bac:	01c6de63          	bge	a3,t3,bc8 <benchmark_body+0xa78>
     bb0:	0485ae03          	lw	t3,72(a1)
     bb4:	01c64a63          	blt	a2,t3,bc8 <benchmark_body+0xa78>
     bb8:	03472f03          	lw	t5,52(a4)
     bbc:	02872e03          	lw	t3,40(a4)
     bc0:	01cf1463          	bne	t5,t3,bc8 <benchmark_body+0xa78>
     bc4:	3bd0106f          	j	2780 <benchmark_body+0x2630>
     bc8:	0007ae03          	lw	t3,0(a5)
     bcc:	01c6de63          	bge	a3,t3,be8 <benchmark_body+0xa98>
     bd0:	0485ae03          	lw	t3,72(a1)
     bd4:	01c64a63          	blt	a2,t3,be8 <benchmark_body+0xa98>
     bd8:	03472f03          	lw	t5,52(a4)
     bdc:	03072e03          	lw	t3,48(a4)
     be0:	01cf1463          	bne	t5,t3,be8 <benchmark_body+0xa98>
     be4:	4150106f          	j	27f8 <benchmark_body+0x26a8>
     be8:	0007ae03          	lw	t3,0(a5)
     bec:	01c6de63          	bge	a3,t3,c08 <benchmark_body+0xab8>
     bf0:	0485ae03          	lw	t3,72(a1)
     bf4:	01c64a63          	blt	a2,t3,c08 <benchmark_body+0xab8>
     bf8:	03472f03          	lw	t5,52(a4)
     bfc:	03072e03          	lw	t3,48(a4)
     c00:	01cf1463          	bne	t5,t3,c08 <benchmark_body+0xab8>
     c04:	4750106f          	j	2878 <benchmark_body+0x2728>
     c08:	0007ae03          	lw	t3,0(a5)
     c0c:	01c6de63          	bge	a3,t3,c28 <benchmark_body+0xad8>
     c10:	0485ae03          	lw	t3,72(a1)
     c14:	01c64a63          	blt	a2,t3,c28 <benchmark_body+0xad8>
     c18:	02472f03          	lw	t5,36(a4)
     c1c:	02872e03          	lw	t3,40(a4)
     c20:	01cf1463          	bne	t5,t3,c28 <benchmark_body+0xad8>
     c24:	4cd0106f          	j	28f0 <benchmark_body+0x27a0>
     c28:	0007ae03          	lw	t3,0(a5)
     c2c:	01c6de63          	bge	a3,t3,c48 <benchmark_body+0xaf8>
     c30:	0485ae03          	lw	t3,72(a1)
     c34:	01c64a63          	blt	a2,t3,c48 <benchmark_body+0xaf8>
     c38:	02472f03          	lw	t5,36(a4)
     c3c:	02c72e03          	lw	t3,44(a4)
     c40:	01cf1463          	bne	t5,t3,c48 <benchmark_body+0xaf8>
     c44:	52d0106f          	j	2970 <benchmark_body+0x2820>
     c48:	0007ae03          	lw	t3,0(a5)
     c4c:	01c6de63          	bge	a3,t3,c68 <benchmark_body+0xb18>
     c50:	0485ae03          	lw	t3,72(a1)
     c54:	01c64a63          	blt	a2,t3,c68 <benchmark_body+0xb18>
     c58:	02472f03          	lw	t5,36(a4)
     c5c:	03472e03          	lw	t3,52(a4)
     c60:	01cf1463          	bne	t5,t3,c68 <benchmark_body+0xb18>
     c64:	58d0106f          	j	29f0 <benchmark_body+0x28a0>
     c68:	0007ae03          	lw	t3,0(a5)
     c6c:	01c6de63          	bge	a3,t3,c88 <benchmark_body+0xb38>
     c70:	0485ae03          	lw	t3,72(a1)
     c74:	01c64a63          	blt	a2,t3,c88 <benchmark_body+0xb38>
     c78:	02472f03          	lw	t5,36(a4)
     c7c:	03472e03          	lw	t3,52(a4)
     c80:	01cf1463          	bne	t5,t3,c88 <benchmark_body+0xb38>
     c84:	5ed0106f          	j	2a70 <benchmark_body+0x2920>
     c88:	0007ae03          	lw	t3,0(a5)
     c8c:	01c6de63          	bge	a3,t3,ca8 <benchmark_body+0xb58>
     c90:	0485ae03          	lw	t3,72(a1)
     c94:	01c64a63          	blt	a2,t3,ca8 <benchmark_body+0xb58>
     c98:	02872f03          	lw	t5,40(a4)
     c9c:	02472e03          	lw	t3,36(a4)
     ca0:	01cf1463          	bne	t5,t3,ca8 <benchmark_body+0xb58>
     ca4:	64d0106f          	j	2af0 <benchmark_body+0x29a0>
     ca8:	0007ae03          	lw	t3,0(a5)
     cac:	01c6de63          	bge	a3,t3,cc8 <benchmark_body+0xb78>
     cb0:	0485ae03          	lw	t3,72(a1)
     cb4:	01c64a63          	blt	a2,t3,cc8 <benchmark_body+0xb78>
     cb8:	02872f03          	lw	t5,40(a4)
     cbc:	02c72e03          	lw	t3,44(a4)
     cc0:	01cf1463          	bne	t5,t3,cc8 <benchmark_body+0xb78>
     cc4:	6ad0106f          	j	2b70 <benchmark_body+0x2a20>
     cc8:	0007ae03          	lw	t3,0(a5)
     ccc:	01c6de63          	bge	a3,t3,ce8 <benchmark_body+0xb98>
     cd0:	0485ae03          	lw	t3,72(a1)
     cd4:	01c64a63          	blt	a2,t3,ce8 <benchmark_body+0xb98>
     cd8:	02872f03          	lw	t5,40(a4)
     cdc:	03472e03          	lw	t3,52(a4)
     ce0:	01cf1463          	bne	t5,t3,ce8 <benchmark_body+0xb98>
     ce4:	7050106f          	j	2be8 <benchmark_body+0x2a98>
     ce8:	0007ae03          	lw	t3,0(a5)
     cec:	01c6de63          	bge	a3,t3,d08 <benchmark_body+0xbb8>
     cf0:	0485ae03          	lw	t3,72(a1)
     cf4:	01c64a63          	blt	a2,t3,d08 <benchmark_body+0xbb8>
     cf8:	02872f03          	lw	t5,40(a4)
     cfc:	03472e03          	lw	t3,52(a4)
     d00:	01cf1463          	bne	t5,t3,d08 <benchmark_body+0xbb8>
     d04:	7650106f          	j	2c68 <benchmark_body+0x2b18>
     d08:	0007ae03          	lw	t3,0(a5)
     d0c:	01c6de63          	bge	a3,t3,d28 <benchmark_body+0xbd8>
     d10:	0485ae03          	lw	t3,72(a1)
     d14:	01c64a63          	blt	a2,t3,d28 <benchmark_body+0xbd8>
     d18:	02c72f03          	lw	t5,44(a4)
     d1c:	02472e03          	lw	t3,36(a4)
     d20:	01cf1463          	bne	t5,t3,d28 <benchmark_body+0xbd8>
     d24:	7bd0106f          	j	2ce0 <benchmark_body+0x2b90>
     d28:	0007ae03          	lw	t3,0(a5)
     d2c:	01c6de63          	bge	a3,t3,d48 <benchmark_body+0xbf8>
     d30:	0485ae03          	lw	t3,72(a1)
     d34:	01c64a63          	blt	a2,t3,d48 <benchmark_body+0xbf8>
     d38:	02c72f03          	lw	t5,44(a4)
     d3c:	02872e03          	lw	t3,40(a4)
     d40:	01cf1463          	bne	t5,t3,d48 <benchmark_body+0xbf8>
     d44:	01c0206f          	j	2d60 <benchmark_body+0x2c10>
     d48:	0007ae03          	lw	t3,0(a5)
     d4c:	01c6de63          	bge	a3,t3,d68 <benchmark_body+0xc18>
     d50:	0485ae03          	lw	t3,72(a1)
     d54:	01c64a63          	blt	a2,t3,d68 <benchmark_body+0xc18>
     d58:	02c72f03          	lw	t5,44(a4)
     d5c:	03472e03          	lw	t3,52(a4)
     d60:	01cf1463          	bne	t5,t3,d68 <benchmark_body+0xc18>
     d64:	0740206f          	j	2dd8 <benchmark_body+0x2c88>
     d68:	0007ae03          	lw	t3,0(a5)
     d6c:	01c6dc63          	bge	a3,t3,d84 <benchmark_body+0xc34>
     d70:	0485ae03          	lw	t3,72(a1)
     d74:	01c64863          	blt	a2,t3,d84 <benchmark_body+0xc34>
     d78:	02c72f03          	lw	t5,44(a4)
     d7c:	03472e03          	lw	t3,52(a4)
     d80:	1dcf04e3          	beq	t5,t3,1748 <benchmark_body+0x15f8>
     d84:	0007ae03          	lw	t3,0(a5)
     d88:	01c6dc63          	bge	a3,t3,da0 <benchmark_body+0xc50>
     d8c:	0485ae03          	lw	t3,72(a1)
     d90:	01c64863          	blt	a2,t3,da0 <benchmark_body+0xc50>
     d94:	03472f03          	lw	t5,52(a4)
     d98:	02472e03          	lw	t3,36(a4)
     d9c:	21cf0ee3          	beq	t5,t3,17b8 <benchmark_body+0x1668>
     da0:	0007ae03          	lw	t3,0(a5)
     da4:	01c6dc63          	bge	a3,t3,dbc <benchmark_body+0xc6c>
     da8:	0485ae03          	lw	t3,72(a1)
     dac:	01c64863          	blt	a2,t3,dbc <benchmark_body+0xc6c>
     db0:	03472f03          	lw	t5,52(a4)
     db4:	02472e03          	lw	t3,36(a4)
     db8:	27cf0ce3          	beq	t5,t3,1830 <benchmark_body+0x16e0>
     dbc:	0007ae03          	lw	t3,0(a5)
     dc0:	01c6dc63          	bge	a3,t3,dd8 <benchmark_body+0xc88>
     dc4:	0485ae03          	lw	t3,72(a1)
     dc8:	01c64863          	blt	a2,t3,dd8 <benchmark_body+0xc88>
     dcc:	03472f03          	lw	t5,52(a4)
     dd0:	02872e03          	lw	t3,40(a4)
     dd4:	2dcf0ae3          	beq	t5,t3,18a8 <benchmark_body+0x1758>
     dd8:	0007ae03          	lw	t3,0(a5)
     ddc:	01c6dc63          	bge	a3,t3,df4 <benchmark_body+0xca4>
     de0:	0485ae03          	lw	t3,72(a1)
     de4:	01c64863          	blt	a2,t3,df4 <benchmark_body+0xca4>
     de8:	03472f03          	lw	t5,52(a4)
     dec:	02872e03          	lw	t3,40(a4)
     df0:	33cf08e3          	beq	t5,t3,1920 <benchmark_body+0x17d0>
     df4:	0007ae03          	lw	t3,0(a5)
     df8:	01c6dc63          	bge	a3,t3,e10 <benchmark_body+0xcc0>
     dfc:	0485ae03          	lw	t3,72(a1)
     e00:	01c64863          	blt	a2,t3,e10 <benchmark_body+0xcc0>
     e04:	03472f03          	lw	t5,52(a4)
     e08:	02c72e03          	lw	t3,44(a4)
     e0c:	39cf02e3          	beq	t5,t3,1990 <benchmark_body+0x1840>
     e10:	0007ae03          	lw	t3,0(a5)
     e14:	01c6dc63          	bge	a3,t3,e2c <benchmark_body+0xcdc>
     e18:	0485ae03          	lw	t3,72(a1)
     e1c:	01c64863          	blt	a2,t3,e2c <benchmark_body+0xcdc>
     e20:	03472f03          	lw	t5,52(a4)
     e24:	02c72e03          	lw	t3,44(a4)
     e28:	3fcf00e3          	beq	t5,t3,1a08 <benchmark_body+0x18b8>
     e2c:	0007ae03          	lw	t3,0(a5)
     e30:	01c6dc63          	bge	a3,t3,e48 <benchmark_body+0xcf8>
     e34:	0485ae03          	lw	t3,72(a1)
     e38:	01c64863          	blt	a2,t3,e48 <benchmark_body+0xcf8>
     e3c:	02472f03          	lw	t5,36(a4)
     e40:	02872e03          	lw	t3,40(a4)
     e44:	43cf0ae3          	beq	t5,t3,1a78 <benchmark_body+0x1928>
     e48:	0007ae03          	lw	t3,0(a5)
     e4c:	01c6dc63          	bge	a3,t3,e64 <benchmark_body+0xd14>
     e50:	0485ae03          	lw	t3,72(a1)
     e54:	01c64863          	blt	a2,t3,e64 <benchmark_body+0xd14>
     e58:	02472f03          	lw	t5,36(a4)
     e5c:	02872e03          	lw	t3,40(a4)
     e60:	49cf08e3          	beq	t5,t3,1af0 <benchmark_body+0x19a0>
     e64:	0007ae03          	lw	t3,0(a5)
     e68:	01c6dc63          	bge	a3,t3,e80 <benchmark_body+0xd30>
     e6c:	0485ae03          	lw	t3,72(a1)
     e70:	01c64863          	blt	a2,t3,e80 <benchmark_body+0xd30>
     e74:	02472f03          	lw	t5,36(a4)
     e78:	02c72e03          	lw	t3,44(a4)
     e7c:	4fcf06e3          	beq	t5,t3,1b68 <benchmark_body+0x1a18>
     e80:	0007ae03          	lw	t3,0(a5)
     e84:	01c6dc63          	bge	a3,t3,e9c <benchmark_body+0xd4c>
     e88:	0485ae03          	lw	t3,72(a1)
     e8c:	01c64863          	blt	a2,t3,e9c <benchmark_body+0xd4c>
     e90:	02472f03          	lw	t5,36(a4)
     e94:	02c72e03          	lw	t3,44(a4)
     e98:	55cf04e3          	beq	t5,t3,1be0 <benchmark_body+0x1a90>
     e9c:	0007ae03          	lw	t3,0(a5)
     ea0:	01c6dc63          	bge	a3,t3,eb8 <benchmark_body+0xd68>
     ea4:	0485ae03          	lw	t3,72(a1)
     ea8:	01c64863          	blt	a2,t3,eb8 <benchmark_body+0xd68>
     eac:	02472f03          	lw	t5,36(a4)
     eb0:	03072e03          	lw	t3,48(a4)
     eb4:	5bcf02e3          	beq	t5,t3,1c58 <benchmark_body+0x1b08>
     eb8:	0007ae03          	lw	t3,0(a5)
     ebc:	01c6dc63          	bge	a3,t3,ed4 <benchmark_body+0xd84>
     ec0:	0485ae03          	lw	t3,72(a1)
     ec4:	01c64863          	blt	a2,t3,ed4 <benchmark_body+0xd84>
     ec8:	02472f03          	lw	t5,36(a4)
     ecc:	03072e03          	lw	t3,48(a4)
     ed0:	61cf00e3          	beq	t5,t3,1cd0 <benchmark_body+0x1b80>
     ed4:	0007ae03          	lw	t3,0(a5)
     ed8:	01c6dc63          	bge	a3,t3,ef0 <benchmark_body+0xda0>
     edc:	0485ae03          	lw	t3,72(a1)
     ee0:	01c64863          	blt	a2,t3,ef0 <benchmark_body+0xda0>
     ee4:	02872f03          	lw	t5,40(a4)
     ee8:	02472e03          	lw	t3,36(a4)
     eec:	65cf0ee3          	beq	t5,t3,1d48 <benchmark_body+0x1bf8>
     ef0:	0007ae03          	lw	t3,0(a5)
     ef4:	01c6dc63          	bge	a3,t3,f0c <benchmark_body+0xdbc>
     ef8:	0485ae03          	lw	t3,72(a1)
     efc:	01c64863          	blt	a2,t3,f0c <benchmark_body+0xdbc>
     f00:	02872f03          	lw	t5,40(a4)
     f04:	02472e03          	lw	t3,36(a4)
     f08:	6bcf0ce3          	beq	t5,t3,1dc0 <benchmark_body+0x1c70>
     f0c:	0007ae03          	lw	t3,0(a5)
     f10:	01c6dc63          	bge	a3,t3,f28 <benchmark_body+0xdd8>
     f14:	0485ae03          	lw	t3,72(a1)
     f18:	01c64863          	blt	a2,t3,f28 <benchmark_body+0xdd8>
     f1c:	02872f03          	lw	t5,40(a4)
     f20:	02c72e03          	lw	t3,44(a4)
     f24:	71cf0ae3          	beq	t5,t3,1e38 <benchmark_body+0x1ce8>
     f28:	0007ae03          	lw	t3,0(a5)
     f2c:	01c6dc63          	bge	a3,t3,f44 <benchmark_body+0xdf4>
     f30:	0485ae03          	lw	t3,72(a1)
     f34:	01c64863          	blt	a2,t3,f44 <benchmark_body+0xdf4>
     f38:	02872f03          	lw	t5,40(a4)
     f3c:	02c72e03          	lw	t3,44(a4)
     f40:	47cf0063          	beq	t5,t3,13a0 <benchmark_body+0x1250>
     f44:	0007ae03          	lw	t3,0(a5)
     f48:	01c6dc63          	bge	a3,t3,f60 <benchmark_body+0xe10>
     f4c:	0485ae03          	lw	t3,72(a1)
     f50:	01c64863          	blt	a2,t3,f60 <benchmark_body+0xe10>
     f54:	02872f03          	lw	t5,40(a4)
     f58:	03072e03          	lw	t3,48(a4)
     f5c:	4bcf0a63          	beq	t5,t3,1410 <benchmark_body+0x12c0>
     f60:	0007ae03          	lw	t3,0(a5)
     f64:	01c6dc63          	bge	a3,t3,f7c <benchmark_body+0xe2c>
     f68:	0485ae03          	lw	t3,72(a1)
     f6c:	01c64863          	blt	a2,t3,f7c <benchmark_body+0xe2c>
     f70:	02872f03          	lw	t5,40(a4)
     f74:	03072e03          	lw	t3,48(a4)
     f78:	51cf0863          	beq	t5,t3,1488 <benchmark_body+0x1338>
     f7c:	0007ae03          	lw	t3,0(a5)
     f80:	01c6dc63          	bge	a3,t3,f98 <benchmark_body+0xe48>
     f84:	0485ae03          	lw	t3,72(a1)
     f88:	01c64863          	blt	a2,t3,f98 <benchmark_body+0xe48>
     f8c:	02c72f03          	lw	t5,44(a4)
     f90:	02472e03          	lw	t3,36(a4)
     f94:	57cf0263          	beq	t5,t3,14f8 <benchmark_body+0x13a8>
     f98:	0007ae03          	lw	t3,0(a5)
     f9c:	01c6dc63          	bge	a3,t3,fb4 <benchmark_body+0xe64>
     fa0:	0485ae03          	lw	t3,72(a1)
     fa4:	01c64863          	blt	a2,t3,fb4 <benchmark_body+0xe64>
     fa8:	02c72f03          	lw	t5,44(a4)
     fac:	02472e03          	lw	t3,36(a4)
     fb0:	5dcf0063          	beq	t5,t3,1570 <benchmark_body+0x1420>
     fb4:	0007ae03          	lw	t3,0(a5)
     fb8:	01c6dc63          	bge	a3,t3,fd0 <benchmark_body+0xe80>
     fbc:	0485ae03          	lw	t3,72(a1)
     fc0:	01c64863          	blt	a2,t3,fd0 <benchmark_body+0xe80>
     fc4:	02c72f03          	lw	t5,44(a4)
     fc8:	02872e03          	lw	t3,40(a4)
     fcc:	61cf0e63          	beq	t5,t3,15e8 <benchmark_body+0x1498>
     fd0:	0007ae03          	lw	t3,0(a5)
     fd4:	01c6dc63          	bge	a3,t3,fec <benchmark_body+0xe9c>
     fd8:	0485ae03          	lw	t3,72(a1)
     fdc:	01c64863          	blt	a2,t3,fec <benchmark_body+0xe9c>
     fe0:	02c72f03          	lw	t5,44(a4)
     fe4:	02872e03          	lw	t3,40(a4)
     fe8:	67cf0c63          	beq	t5,t3,1660 <benchmark_body+0x1510>
     fec:	0007ae03          	lw	t3,0(a5)
     ff0:	01c6dc63          	bge	a3,t3,1008 <benchmark_body+0xeb8>
     ff4:	0485ae03          	lw	t3,72(a1)
     ff8:	01c64863          	blt	a2,t3,1008 <benchmark_body+0xeb8>
     ffc:	02c72f03          	lw	t5,44(a4)
    1000:	03072e03          	lw	t3,48(a4)
    1004:	6dcf0663          	beq	t5,t3,16d0 <benchmark_body+0x1580>
    1008:	0007ae03          	lw	t3,0(a5)
    100c:	01c6dc63          	bge	a3,t3,1024 <benchmark_body+0xed4>
    1010:	0485ae03          	lw	t3,72(a1)
    1014:	01c64863          	blt	a2,t3,1024 <benchmark_body+0xed4>
    1018:	02c72f03          	lw	t5,44(a4)
    101c:	03072e03          	lw	t3,48(a4)
    1020:	1bcf0463          	beq	t5,t3,11c8 <benchmark_body+0x1078>
    1024:	0007ae03          	lw	t3,0(a5)
    1028:	01c6dc63          	bge	a3,t3,1040 <benchmark_body+0xef0>
    102c:	0485ae03          	lw	t3,72(a1)
    1030:	01c64863          	blt	a2,t3,1040 <benchmark_body+0xef0>
    1034:	03072f03          	lw	t5,48(a4)
    1038:	02472e03          	lw	t3,36(a4)
    103c:	1fcf0e63          	beq	t5,t3,1238 <benchmark_body+0x10e8>
    1040:	0007ae03          	lw	t3,0(a5)
    1044:	01c6dc63          	bge	a3,t3,105c <benchmark_body+0xf0c>
    1048:	0485ae03          	lw	t3,72(a1)
    104c:	01c64863          	blt	a2,t3,105c <benchmark_body+0xf0c>
    1050:	03072f03          	lw	t5,48(a4)
    1054:	02472e03          	lw	t3,36(a4)
    1058:	25cf0c63          	beq	t5,t3,12b0 <benchmark_body+0x1160>
    105c:	0007ae03          	lw	t3,0(a5)
    1060:	01c6dc63          	bge	a3,t3,1078 <benchmark_body+0xf28>
    1064:	0485ae03          	lw	t3,72(a1)
    1068:	01c64863          	blt	a2,t3,1078 <benchmark_body+0xf28>
    106c:	03072f03          	lw	t5,48(a4)
    1070:	02872e03          	lw	t3,40(a4)
    1074:	2bcf0a63          	beq	t5,t3,1328 <benchmark_body+0x11d8>
    1078:	0007ae03          	lw	t3,0(a5)
    107c:	01c6dc63          	bge	a3,t3,1094 <benchmark_body+0xf44>
    1080:	0485ae03          	lw	t3,72(a1)
    1084:	01c64863          	blt	a2,t3,1094 <benchmark_body+0xf44>
    1088:	03072f03          	lw	t5,48(a4)
    108c:	02872e03          	lw	t3,40(a4)
    1090:	05cf0863          	beq	t5,t3,10e0 <benchmark_body+0xf90>
    1094:	0007ae03          	lw	t3,0(a5)
    1098:	01c6dc63          	bge	a3,t3,10b0 <benchmark_body+0xf60>
    109c:	0485ae03          	lw	t3,72(a1)
    10a0:	01c64863          	blt	a2,t3,10b0 <benchmark_body+0xf60>
    10a4:	03072f03          	lw	t5,48(a4)
    10a8:	02c72e03          	lw	t3,44(a4)
    10ac:	0bcf0263          	beq	t5,t3,1150 <benchmark_body+0x1000>
    10b0:	0007ae03          	lw	t3,0(a5)
    10b4:	01c6de63          	bge	a3,t3,10d0 <benchmark_body+0xf80>
    10b8:	0485ae03          	lw	t3,72(a1)
    10bc:	01c64a63          	blt	a2,t3,10d0 <benchmark_body+0xf80>
    10c0:	03072f03          	lw	t5,48(a4)
    10c4:	02c72e03          	lw	t3,44(a4)
    10c8:	01cf1463          	bne	t5,t3,10d0 <benchmark_body+0xf80>
    10cc:	58d0106f          	j	2e58 <benchmark_body+0x2d08>
    10d0:	00130313          	addi	t1,t1,1
    10d4:	8a651463          	bne	a0,t1,17c <benchmark_body+0x2c>
    10d8:	00000513          	li	a0,0
    10dc:	00008067          	ret
    10e0:	03072f03          	lw	t5,48(a4)
    10e4:	02c72e03          	lw	t3,44(a4)
    10e8:	fbcf16e3          	bne	t5,t3,1094 <benchmark_body+0xf44>
    10ec:	03472e03          	lw	t3,52(a4)
    10f0:	03072f03          	lw	t5,48(a4)
    10f4:	fbee50e3          	bge	t3,t5,1094 <benchmark_body+0xf44>
    10f8:	0007af83          	lw	t6,0(a5)
    10fc:	01ee02b3          	add	t0,t3,t5
    1100:	ffcf8f93          	addi	t6,t6,-4
    1104:	01f7a023          	sw	t6,0(a5)
    1108:	0485af83          	lw	t6,72(a1)
    110c:	002f9f93          	slli	t6,t6,0x2
    1110:	01f70fb3          	add	t6,a4,t6
    1114:	01cfa623          	sw	t3,12(t6)
    1118:	0485ae03          	lw	t3,72(a1)
    111c:	001e0e13          	addi	t3,t3,1
    1120:	002e1e13          	slli	t3,t3,0x2
    1124:	01c70e33          	add	t3,a4,t3
    1128:	01ee2623          	sw	t5,12(t3)
    112c:	0485ae03          	lw	t3,72(a1)
    1130:	002e0e13          	addi	t3,t3,2
    1134:	002e1e13          	slli	t3,t3,0x2
    1138:	01c70e33          	add	t3,a4,t3
    113c:	005e2623          	sw	t0,12(t3)
    1140:	0485ae03          	lw	t3,72(a1)
    1144:	003e0e13          	addi	t3,t3,3
    1148:	05c5a423          	sw	t3,72(a1)
    114c:	f49ff06f          	j	1094 <benchmark_body+0xf44>
    1150:	03072f03          	lw	t5,48(a4)
    1154:	02472e03          	lw	t3,36(a4)
    1158:	f5cf1ce3          	bne	t5,t3,10b0 <benchmark_body+0xf60>
    115c:	03472e03          	lw	t3,52(a4)
    1160:	03072f03          	lw	t5,48(a4)
    1164:	f5ee56e3          	bge	t3,t5,10b0 <benchmark_body+0xf60>
    1168:	02872f83          	lw	t6,40(a4)
    116c:	01ee02b3          	add	t0,t3,t5
    1170:	03f72223          	sw	t6,36(a4)
    1174:	0007af83          	lw	t6,0(a5)
    1178:	ffcf8f93          	addi	t6,t6,-4
    117c:	01f7a023          	sw	t6,0(a5)
    1180:	0485af83          	lw	t6,72(a1)
    1184:	002f9f93          	slli	t6,t6,0x2
    1188:	01f70fb3          	add	t6,a4,t6
    118c:	01cfa623          	sw	t3,12(t6)
    1190:	0485ae03          	lw	t3,72(a1)
    1194:	001e0e13          	addi	t3,t3,1
    1198:	002e1e13          	slli	t3,t3,0x2
    119c:	01c70e33          	add	t3,a4,t3
    11a0:	01ee2623          	sw	t5,12(t3)
    11a4:	0485ae03          	lw	t3,72(a1)
    11a8:	002e0e13          	addi	t3,t3,2
    11ac:	002e1e13          	slli	t3,t3,0x2
    11b0:	01c70e33          	add	t3,a4,t3
    11b4:	005e2623          	sw	t0,12(t3)
    11b8:	0485ae03          	lw	t3,72(a1)
    11bc:	003e0e13          	addi	t3,t3,3
    11c0:	05c5a423          	sw	t3,72(a1)
    11c4:	eedff06f          	j	10b0 <benchmark_body+0xf60>
    11c8:	02c72f03          	lw	t5,44(a4)
    11cc:	02872e03          	lw	t3,40(a4)
    11d0:	e5cf1ae3          	bne	t5,t3,1024 <benchmark_body+0xed4>
    11d4:	03472e03          	lw	t3,52(a4)
    11d8:	02c72f03          	lw	t5,44(a4)
    11dc:	e5ee54e3          	bge	t3,t5,1024 <benchmark_body+0xed4>
    11e0:	0007af83          	lw	t6,0(a5)
    11e4:	01ee02b3          	add	t0,t3,t5
    11e8:	ffcf8f93          	addi	t6,t6,-4
    11ec:	01f7a023          	sw	t6,0(a5)
    11f0:	0485af83          	lw	t6,72(a1)
    11f4:	002f9f93          	slli	t6,t6,0x2
    11f8:	01f70fb3          	add	t6,a4,t6
    11fc:	01cfa623          	sw	t3,12(t6)
    1200:	0485ae03          	lw	t3,72(a1)
    1204:	001e0e13          	addi	t3,t3,1
    1208:	002e1e13          	slli	t3,t3,0x2
    120c:	01c70e33          	add	t3,a4,t3
    1210:	01ee2623          	sw	t5,12(t3)
    1214:	0485ae03          	lw	t3,72(a1)
    1218:	002e0e13          	addi	t3,t3,2
    121c:	002e1e13          	slli	t3,t3,0x2
    1220:	01c70e33          	add	t3,a4,t3
    1224:	005e2623          	sw	t0,12(t3)
    1228:	0485ae03          	lw	t3,72(a1)
    122c:	003e0e13          	addi	t3,t3,3
    1230:	05c5a423          	sw	t3,72(a1)
    1234:	df1ff06f          	j	1024 <benchmark_body+0xed4>
    1238:	03072f03          	lw	t5,48(a4)
    123c:	02872e03          	lw	t3,40(a4)
    1240:	e1cf10e3          	bne	t5,t3,1040 <benchmark_body+0xef0>
    1244:	03472e03          	lw	t3,52(a4)
    1248:	03072f03          	lw	t5,48(a4)
    124c:	dfee5ae3          	bge	t3,t5,1040 <benchmark_body+0xef0>
    1250:	02c72f83          	lw	t6,44(a4)
    1254:	01ee02b3          	add	t0,t3,t5
    1258:	03f72223          	sw	t6,36(a4)
    125c:	0007af83          	lw	t6,0(a5)
    1260:	ffcf8f93          	addi	t6,t6,-4
    1264:	01f7a023          	sw	t6,0(a5)
    1268:	0485af83          	lw	t6,72(a1)
    126c:	002f9f93          	slli	t6,t6,0x2
    1270:	01f70fb3          	add	t6,a4,t6
    1274:	01cfa623          	sw	t3,12(t6)
    1278:	0485ae03          	lw	t3,72(a1)
    127c:	001e0e13          	addi	t3,t3,1
    1280:	002e1e13          	slli	t3,t3,0x2
    1284:	01c70e33          	add	t3,a4,t3
    1288:	01ee2623          	sw	t5,12(t3)
    128c:	0485ae03          	lw	t3,72(a1)
    1290:	002e0e13          	addi	t3,t3,2
    1294:	002e1e13          	slli	t3,t3,0x2
    1298:	01c70e33          	add	t3,a4,t3
    129c:	005e2623          	sw	t0,12(t3)
    12a0:	0485ae03          	lw	t3,72(a1)
    12a4:	003e0e13          	addi	t3,t3,3
    12a8:	05c5a423          	sw	t3,72(a1)
    12ac:	d95ff06f          	j	1040 <benchmark_body+0xef0>
    12b0:	03072f03          	lw	t5,48(a4)
    12b4:	02c72e03          	lw	t3,44(a4)
    12b8:	dbcf12e3          	bne	t5,t3,105c <benchmark_body+0xf0c>
    12bc:	03472e03          	lw	t3,52(a4)
    12c0:	03072f03          	lw	t5,48(a4)
    12c4:	d9ee5ce3          	bge	t3,t5,105c <benchmark_body+0xf0c>
    12c8:	02872f83          	lw	t6,40(a4)
    12cc:	01ee02b3          	add	t0,t3,t5
    12d0:	03f72223          	sw	t6,36(a4)
    12d4:	0007af83          	lw	t6,0(a5)
    12d8:	ffcf8f93          	addi	t6,t6,-4
    12dc:	01f7a023          	sw	t6,0(a5)
    12e0:	0485af83          	lw	t6,72(a1)
    12e4:	002f9f93          	slli	t6,t6,0x2
    12e8:	01f70fb3          	add	t6,a4,t6
    12ec:	01cfa623          	sw	t3,12(t6)
    12f0:	0485ae03          	lw	t3,72(a1)
    12f4:	001e0e13          	addi	t3,t3,1
    12f8:	002e1e13          	slli	t3,t3,0x2
    12fc:	01c70e33          	add	t3,a4,t3
    1300:	01ee2623          	sw	t5,12(t3)
    1304:	0485ae03          	lw	t3,72(a1)
    1308:	002e0e13          	addi	t3,t3,2
    130c:	002e1e13          	slli	t3,t3,0x2
    1310:	01c70e33          	add	t3,a4,t3
    1314:	005e2623          	sw	t0,12(t3)
    1318:	0485ae03          	lw	t3,72(a1)
    131c:	003e0e13          	addi	t3,t3,3
    1320:	05c5a423          	sw	t3,72(a1)
    1324:	d39ff06f          	j	105c <benchmark_body+0xf0c>
    1328:	03072f03          	lw	t5,48(a4)
    132c:	02472e03          	lw	t3,36(a4)
    1330:	d5cf14e3          	bne	t5,t3,1078 <benchmark_body+0xf28>
    1334:	03472e03          	lw	t3,52(a4)
    1338:	03072f03          	lw	t5,48(a4)
    133c:	d3ee5ee3          	bge	t3,t5,1078 <benchmark_body+0xf28>
    1340:	02c72f83          	lw	t6,44(a4)
    1344:	01ee02b3          	add	t0,t3,t5
    1348:	03f72223          	sw	t6,36(a4)
    134c:	0007af83          	lw	t6,0(a5)
    1350:	ffcf8f93          	addi	t6,t6,-4
    1354:	01f7a023          	sw	t6,0(a5)
    1358:	0485af83          	lw	t6,72(a1)
    135c:	002f9f93          	slli	t6,t6,0x2
    1360:	01f70fb3          	add	t6,a4,t6
    1364:	01cfa623          	sw	t3,12(t6)
    1368:	0485ae03          	lw	t3,72(a1)
    136c:	001e0e13          	addi	t3,t3,1
    1370:	002e1e13          	slli	t3,t3,0x2
    1374:	01c70e33          	add	t3,a4,t3
    1378:	01ee2623          	sw	t5,12(t3)
    137c:	0485ae03          	lw	t3,72(a1)
    1380:	002e0e13          	addi	t3,t3,2
    1384:	002e1e13          	slli	t3,t3,0x2
    1388:	01c70e33          	add	t3,a4,t3
    138c:	005e2623          	sw	t0,12(t3)
    1390:	0485ae03          	lw	t3,72(a1)
    1394:	003e0e13          	addi	t3,t3,3
    1398:	05c5a423          	sw	t3,72(a1)
    139c:	cddff06f          	j	1078 <benchmark_body+0xf28>
    13a0:	02872f03          	lw	t5,40(a4)
    13a4:	03072e03          	lw	t3,48(a4)
    13a8:	b9cf1ee3          	bne	t5,t3,f44 <benchmark_body+0xdf4>
    13ac:	03472e03          	lw	t3,52(a4)
    13b0:	02872f03          	lw	t5,40(a4)
    13b4:	b9ee58e3          	bge	t3,t5,f44 <benchmark_body+0xdf4>
    13b8:	0007af83          	lw	t6,0(a5)
    13bc:	01ee02b3          	add	t0,t3,t5
    13c0:	ffcf8f93          	addi	t6,t6,-4
    13c4:	01f7a023          	sw	t6,0(a5)
    13c8:	0485af83          	lw	t6,72(a1)
    13cc:	002f9f93          	slli	t6,t6,0x2
    13d0:	01f70fb3          	add	t6,a4,t6
    13d4:	01cfa623          	sw	t3,12(t6)
    13d8:	0485ae03          	lw	t3,72(a1)
    13dc:	001e0e13          	addi	t3,t3,1
    13e0:	002e1e13          	slli	t3,t3,0x2
    13e4:	01c70e33          	add	t3,a4,t3
    13e8:	01ee2623          	sw	t5,12(t3)
    13ec:	0485ae03          	lw	t3,72(a1)
    13f0:	002e0e13          	addi	t3,t3,2
    13f4:	002e1e13          	slli	t3,t3,0x2
    13f8:	01c70e33          	add	t3,a4,t3
    13fc:	005e2623          	sw	t0,12(t3)
    1400:	0485ae03          	lw	t3,72(a1)
    1404:	003e0e13          	addi	t3,t3,3
    1408:	05c5a423          	sw	t3,72(a1)
    140c:	b39ff06f          	j	f44 <benchmark_body+0xdf4>
    1410:	02872f03          	lw	t5,40(a4)
    1414:	02472e03          	lw	t3,36(a4)
    1418:	b5cf14e3          	bne	t5,t3,f60 <benchmark_body+0xe10>
    141c:	03472e03          	lw	t3,52(a4)
    1420:	02872f03          	lw	t5,40(a4)
    1424:	b3ee5ee3          	bge	t3,t5,f60 <benchmark_body+0xe10>
    1428:	02c72f83          	lw	t6,44(a4)
    142c:	01ee02b3          	add	t0,t3,t5
    1430:	03f72223          	sw	t6,36(a4)
    1434:	0007af83          	lw	t6,0(a5)
    1438:	ffcf8f93          	addi	t6,t6,-4
    143c:	01f7a023          	sw	t6,0(a5)
    1440:	0485af83          	lw	t6,72(a1)
    1444:	002f9f93          	slli	t6,t6,0x2
    1448:	01f70fb3          	add	t6,a4,t6
    144c:	01cfa623          	sw	t3,12(t6)
    1450:	0485ae03          	lw	t3,72(a1)
    1454:	001e0e13          	addi	t3,t3,1
    1458:	002e1e13          	slli	t3,t3,0x2
    145c:	01c70e33          	add	t3,a4,t3
    1460:	01ee2623          	sw	t5,12(t3)
    1464:	0485ae03          	lw	t3,72(a1)
    1468:	002e0e13          	addi	t3,t3,2
    146c:	002e1e13          	slli	t3,t3,0x2
    1470:	01c70e33          	add	t3,a4,t3
    1474:	005e2623          	sw	t0,12(t3)
    1478:	0485ae03          	lw	t3,72(a1)
    147c:	003e0e13          	addi	t3,t3,3
    1480:	05c5a423          	sw	t3,72(a1)
    1484:	addff06f          	j	f60 <benchmark_body+0xe10>
    1488:	02872f03          	lw	t5,40(a4)
    148c:	02c72e03          	lw	t3,44(a4)
    1490:	afcf16e3          	bne	t5,t3,f7c <benchmark_body+0xe2c>
    1494:	03472e03          	lw	t3,52(a4)
    1498:	02872f03          	lw	t5,40(a4)
    149c:	afee50e3          	bge	t3,t5,f7c <benchmark_body+0xe2c>
    14a0:	0007af83          	lw	t6,0(a5)
    14a4:	01ee02b3          	add	t0,t3,t5
    14a8:	ffcf8f93          	addi	t6,t6,-4
    14ac:	01f7a023          	sw	t6,0(a5)
    14b0:	0485af83          	lw	t6,72(a1)
    14b4:	002f9f93          	slli	t6,t6,0x2
    14b8:	01f70fb3          	add	t6,a4,t6
    14bc:	01cfa623          	sw	t3,12(t6)
    14c0:	0485ae03          	lw	t3,72(a1)
    14c4:	001e0e13          	addi	t3,t3,1
    14c8:	002e1e13          	slli	t3,t3,0x2
    14cc:	01c70e33          	add	t3,a4,t3
    14d0:	01ee2623          	sw	t5,12(t3)
    14d4:	0485ae03          	lw	t3,72(a1)
    14d8:	002e0e13          	addi	t3,t3,2
    14dc:	002e1e13          	slli	t3,t3,0x2
    14e0:	01c70e33          	add	t3,a4,t3
    14e4:	005e2623          	sw	t0,12(t3)
    14e8:	0485ae03          	lw	t3,72(a1)
    14ec:	003e0e13          	addi	t3,t3,3
    14f0:	05c5a423          	sw	t3,72(a1)
    14f4:	a89ff06f          	j	f7c <benchmark_body+0xe2c>
    14f8:	02c72f03          	lw	t5,44(a4)
    14fc:	02872e03          	lw	t3,40(a4)
    1500:	a9cf1ce3          	bne	t5,t3,f98 <benchmark_body+0xe48>
    1504:	03472e03          	lw	t3,52(a4)
    1508:	02c72f03          	lw	t5,44(a4)
    150c:	a9ee56e3          	bge	t3,t5,f98 <benchmark_body+0xe48>
    1510:	03072f83          	lw	t6,48(a4)
    1514:	01ee02b3          	add	t0,t3,t5
    1518:	03f72223          	sw	t6,36(a4)
    151c:	0007af83          	lw	t6,0(a5)
    1520:	ffcf8f93          	addi	t6,t6,-4
    1524:	01f7a023          	sw	t6,0(a5)
    1528:	0485af83          	lw	t6,72(a1)
    152c:	002f9f93          	slli	t6,t6,0x2
    1530:	01f70fb3          	add	t6,a4,t6
    1534:	01cfa623          	sw	t3,12(t6)
    1538:	0485ae03          	lw	t3,72(a1)
    153c:	001e0e13          	addi	t3,t3,1
    1540:	002e1e13          	slli	t3,t3,0x2
    1544:	01c70e33          	add	t3,a4,t3
    1548:	01ee2623          	sw	t5,12(t3)
    154c:	0485ae03          	lw	t3,72(a1)
    1550:	002e0e13          	addi	t3,t3,2
    1554:	002e1e13          	slli	t3,t3,0x2
    1558:	01c70e33          	add	t3,a4,t3
    155c:	005e2623          	sw	t0,12(t3)
    1560:	0485ae03          	lw	t3,72(a1)
    1564:	003e0e13          	addi	t3,t3,3
    1568:	05c5a423          	sw	t3,72(a1)
    156c:	a2dff06f          	j	f98 <benchmark_body+0xe48>
    1570:	02c72f03          	lw	t5,44(a4)
    1574:	03072e03          	lw	t3,48(a4)
    1578:	a3cf1ee3          	bne	t5,t3,fb4 <benchmark_body+0xe64>
    157c:	03472e03          	lw	t3,52(a4)
    1580:	02c72f03          	lw	t5,44(a4)
    1584:	a3ee58e3          	bge	t3,t5,fb4 <benchmark_body+0xe64>
    1588:	02872f83          	lw	t6,40(a4)
    158c:	01ee02b3          	add	t0,t3,t5
    1590:	03f72223          	sw	t6,36(a4)
    1594:	0007af83          	lw	t6,0(a5)
    1598:	ffcf8f93          	addi	t6,t6,-4
    159c:	01f7a023          	sw	t6,0(a5)
    15a0:	0485af83          	lw	t6,72(a1)
    15a4:	002f9f93          	slli	t6,t6,0x2
    15a8:	01f70fb3          	add	t6,a4,t6
    15ac:	01cfa623          	sw	t3,12(t6)
    15b0:	0485ae03          	lw	t3,72(a1)
    15b4:	001e0e13          	addi	t3,t3,1
    15b8:	002e1e13          	slli	t3,t3,0x2
    15bc:	01c70e33          	add	t3,a4,t3
    15c0:	01ee2623          	sw	t5,12(t3)
    15c4:	0485ae03          	lw	t3,72(a1)
    15c8:	002e0e13          	addi	t3,t3,2
    15cc:	002e1e13          	slli	t3,t3,0x2
    15d0:	01c70e33          	add	t3,a4,t3
    15d4:	005e2623          	sw	t0,12(t3)
    15d8:	0485ae03          	lw	t3,72(a1)
    15dc:	003e0e13          	addi	t3,t3,3
    15e0:	05c5a423          	sw	t3,72(a1)
    15e4:	9d1ff06f          	j	fb4 <benchmark_body+0xe64>
    15e8:	02c72f03          	lw	t5,44(a4)
    15ec:	02472e03          	lw	t3,36(a4)
    15f0:	9fcf10e3          	bne	t5,t3,fd0 <benchmark_body+0xe80>
    15f4:	03472e03          	lw	t3,52(a4)
    15f8:	02c72f03          	lw	t5,44(a4)
    15fc:	9dee5ae3          	bge	t3,t5,fd0 <benchmark_body+0xe80>
    1600:	03072f83          	lw	t6,48(a4)
    1604:	01ee02b3          	add	t0,t3,t5
    1608:	03f72223          	sw	t6,36(a4)
    160c:	0007af83          	lw	t6,0(a5)
    1610:	ffcf8f93          	addi	t6,t6,-4
    1614:	01f7a023          	sw	t6,0(a5)
    1618:	0485af83          	lw	t6,72(a1)
    161c:	002f9f93          	slli	t6,t6,0x2
    1620:	01f70fb3          	add	t6,a4,t6
    1624:	01cfa623          	sw	t3,12(t6)
    1628:	0485ae03          	lw	t3,72(a1)
    162c:	001e0e13          	addi	t3,t3,1
    1630:	002e1e13          	slli	t3,t3,0x2
    1634:	01c70e33          	add	t3,a4,t3
    1638:	01ee2623          	sw	t5,12(t3)
    163c:	0485ae03          	lw	t3,72(a1)
    1640:	002e0e13          	addi	t3,t3,2
    1644:	002e1e13          	slli	t3,t3,0x2
    1648:	01c70e33          	add	t3,a4,t3
    164c:	005e2623          	sw	t0,12(t3)
    1650:	0485ae03          	lw	t3,72(a1)
    1654:	003e0e13          	addi	t3,t3,3
    1658:	05c5a423          	sw	t3,72(a1)
    165c:	975ff06f          	j	fd0 <benchmark_body+0xe80>
    1660:	02c72f03          	lw	t5,44(a4)
    1664:	03072e03          	lw	t3,48(a4)
    1668:	99cf12e3          	bne	t5,t3,fec <benchmark_body+0xe9c>
    166c:	03472e03          	lw	t3,52(a4)
    1670:	02c72f03          	lw	t5,44(a4)
    1674:	97ee5ce3          	bge	t3,t5,fec <benchmark_body+0xe9c>
    1678:	0007af83          	lw	t6,0(a5)
    167c:	01ee02b3          	add	t0,t3,t5
    1680:	ffcf8f93          	addi	t6,t6,-4
    1684:	01f7a023          	sw	t6,0(a5)
    1688:	0485af83          	lw	t6,72(a1)
    168c:	002f9f93          	slli	t6,t6,0x2
    1690:	01f70fb3          	add	t6,a4,t6
    1694:	01cfa623          	sw	t3,12(t6)
    1698:	0485ae03          	lw	t3,72(a1)
    169c:	001e0e13          	addi	t3,t3,1
    16a0:	002e1e13          	slli	t3,t3,0x2
    16a4:	01c70e33          	add	t3,a4,t3
    16a8:	01ee2623          	sw	t5,12(t3)
    16ac:	0485ae03          	lw	t3,72(a1)
    16b0:	002e0e13          	addi	t3,t3,2
    16b4:	002e1e13          	slli	t3,t3,0x2
    16b8:	01c70e33          	add	t3,a4,t3
    16bc:	005e2623          	sw	t0,12(t3)
    16c0:	0485ae03          	lw	t3,72(a1)
    16c4:	003e0e13          	addi	t3,t3,3
    16c8:	05c5a423          	sw	t3,72(a1)
    16cc:	921ff06f          	j	fec <benchmark_body+0xe9c>
    16d0:	02c72f03          	lw	t5,44(a4)
    16d4:	02472e03          	lw	t3,36(a4)
    16d8:	93cf18e3          	bne	t5,t3,1008 <benchmark_body+0xeb8>
    16dc:	03472e03          	lw	t3,52(a4)
    16e0:	02c72f03          	lw	t5,44(a4)
    16e4:	93ee52e3          	bge	t3,t5,1008 <benchmark_body+0xeb8>
    16e8:	02872f83          	lw	t6,40(a4)
    16ec:	01ee02b3          	add	t0,t3,t5
    16f0:	03f72223          	sw	t6,36(a4)
    16f4:	0007af83          	lw	t6,0(a5)
    16f8:	ffcf8f93          	addi	t6,t6,-4
    16fc:	01f7a023          	sw	t6,0(a5)
    1700:	0485af83          	lw	t6,72(a1)
    1704:	002f9f93          	slli	t6,t6,0x2
    1708:	01f70fb3          	add	t6,a4,t6
    170c:	01cfa623          	sw	t3,12(t6)
    1710:	0485ae03          	lw	t3,72(a1)
    1714:	001e0e13          	addi	t3,t3,1
    1718:	002e1e13          	slli	t3,t3,0x2
    171c:	01c70e33          	add	t3,a4,t3
    1720:	01ee2623          	sw	t5,12(t3)
    1724:	0485ae03          	lw	t3,72(a1)
    1728:	002e0e13          	addi	t3,t3,2
    172c:	002e1e13          	slli	t3,t3,0x2
    1730:	01c70e33          	add	t3,a4,t3
    1734:	005e2623          	sw	t0,12(t3)
    1738:	0485ae03          	lw	t3,72(a1)
    173c:	003e0e13          	addi	t3,t3,3
    1740:	05c5a423          	sw	t3,72(a1)
    1744:	8c5ff06f          	j	1008 <benchmark_body+0xeb8>
    1748:	02c72f03          	lw	t5,44(a4)
    174c:	02872e03          	lw	t3,40(a4)
    1750:	e3cf1a63          	bne	t5,t3,d84 <benchmark_body+0xc34>
    1754:	03072e03          	lw	t3,48(a4)
    1758:	02c72f03          	lw	t5,44(a4)
    175c:	e3ee5463          	bge	t3,t5,d84 <benchmark_body+0xc34>
    1760:	0007af83          	lw	t6,0(a5)
    1764:	01ee02b3          	add	t0,t3,t5
    1768:	ffcf8f93          	addi	t6,t6,-4
    176c:	01f7a023          	sw	t6,0(a5)
    1770:	0485af83          	lw	t6,72(a1)
    1774:	002f9f93          	slli	t6,t6,0x2
    1778:	01f70fb3          	add	t6,a4,t6
    177c:	01cfa623          	sw	t3,12(t6)
    1780:	0485ae03          	lw	t3,72(a1)
    1784:	001e0e13          	addi	t3,t3,1
    1788:	002e1e13          	slli	t3,t3,0x2
    178c:	01c70e33          	add	t3,a4,t3
    1790:	01ee2623          	sw	t5,12(t3)
    1794:	0485ae03          	lw	t3,72(a1)
    1798:	002e0e13          	addi	t3,t3,2
    179c:	002e1e13          	slli	t3,t3,0x2
    17a0:	01c70e33          	add	t3,a4,t3
    17a4:	005e2623          	sw	t0,12(t3)
    17a8:	0485ae03          	lw	t3,72(a1)
    17ac:	003e0e13          	addi	t3,t3,3
    17b0:	05c5a423          	sw	t3,72(a1)
    17b4:	dd0ff06f          	j	d84 <benchmark_body+0xc34>
    17b8:	03472f03          	lw	t5,52(a4)
    17bc:	02872e03          	lw	t3,40(a4)
    17c0:	dfcf1063          	bne	t5,t3,da0 <benchmark_body+0xc50>
    17c4:	03072e03          	lw	t3,48(a4)
    17c8:	03472f03          	lw	t5,52(a4)
    17cc:	ddee5a63          	bge	t3,t5,da0 <benchmark_body+0xc50>
    17d0:	02c72f83          	lw	t6,44(a4)
    17d4:	01ee02b3          	add	t0,t3,t5
    17d8:	03f72223          	sw	t6,36(a4)
    17dc:	0007af83          	lw	t6,0(a5)
    17e0:	ffcf8f93          	addi	t6,t6,-4
    17e4:	01f7a023          	sw	t6,0(a5)
    17e8:	0485af83          	lw	t6,72(a1)
    17ec:	002f9f93          	slli	t6,t6,0x2
    17f0:	01f70fb3          	add	t6,a4,t6
    17f4:	01cfa623          	sw	t3,12(t6)
    17f8:	0485ae03          	lw	t3,72(a1)
    17fc:	001e0e13          	addi	t3,t3,1
    1800:	002e1e13          	slli	t3,t3,0x2
    1804:	01c70e33          	add	t3,a4,t3
    1808:	01ee2623          	sw	t5,12(t3)
    180c:	0485ae03          	lw	t3,72(a1)
    1810:	002e0e13          	addi	t3,t3,2
    1814:	002e1e13          	slli	t3,t3,0x2
    1818:	01c70e33          	add	t3,a4,t3
    181c:	005e2623          	sw	t0,12(t3)
    1820:	0485ae03          	lw	t3,72(a1)
    1824:	003e0e13          	addi	t3,t3,3
    1828:	05c5a423          	sw	t3,72(a1)
    182c:	d74ff06f          	j	da0 <benchmark_body+0xc50>
    1830:	03472f03          	lw	t5,52(a4)
    1834:	02c72e03          	lw	t3,44(a4)
    1838:	d9cf1263          	bne	t5,t3,dbc <benchmark_body+0xc6c>
    183c:	03072e03          	lw	t3,48(a4)
    1840:	03472f03          	lw	t5,52(a4)
    1844:	d7ee5c63          	bge	t3,t5,dbc <benchmark_body+0xc6c>
    1848:	02872f83          	lw	t6,40(a4)
    184c:	01ee02b3          	add	t0,t3,t5
    1850:	03f72223          	sw	t6,36(a4)
    1854:	0007af83          	lw	t6,0(a5)
    1858:	ffcf8f93          	addi	t6,t6,-4
    185c:	01f7a023          	sw	t6,0(a5)
    1860:	0485af83          	lw	t6,72(a1)
    1864:	002f9f93          	slli	t6,t6,0x2
    1868:	01f70fb3          	add	t6,a4,t6
    186c:	01cfa623          	sw	t3,12(t6)
    1870:	0485ae03          	lw	t3,72(a1)
    1874:	001e0e13          	addi	t3,t3,1
    1878:	002e1e13          	slli	t3,t3,0x2
    187c:	01c70e33          	add	t3,a4,t3
    1880:	01ee2623          	sw	t5,12(t3)
    1884:	0485ae03          	lw	t3,72(a1)
    1888:	002e0e13          	addi	t3,t3,2
    188c:	002e1e13          	slli	t3,t3,0x2
    1890:	01c70e33          	add	t3,a4,t3
    1894:	005e2623          	sw	t0,12(t3)
    1898:	0485ae03          	lw	t3,72(a1)
    189c:	003e0e13          	addi	t3,t3,3
    18a0:	05c5a423          	sw	t3,72(a1)
    18a4:	d18ff06f          	j	dbc <benchmark_body+0xc6c>
    18a8:	03472f03          	lw	t5,52(a4)
    18ac:	02472e03          	lw	t3,36(a4)
    18b0:	d3cf1463          	bne	t5,t3,dd8 <benchmark_body+0xc88>
    18b4:	03072e03          	lw	t3,48(a4)
    18b8:	03472f03          	lw	t5,52(a4)
    18bc:	d1ee5e63          	bge	t3,t5,dd8 <benchmark_body+0xc88>
    18c0:	02c72f83          	lw	t6,44(a4)
    18c4:	01ee02b3          	add	t0,t3,t5
    18c8:	03f72223          	sw	t6,36(a4)
    18cc:	0007af83          	lw	t6,0(a5)
    18d0:	ffcf8f93          	addi	t6,t6,-4
    18d4:	01f7a023          	sw	t6,0(a5)
    18d8:	0485af83          	lw	t6,72(a1)
    18dc:	002f9f93          	slli	t6,t6,0x2
    18e0:	01f70fb3          	add	t6,a4,t6
    18e4:	01cfa623          	sw	t3,12(t6)
    18e8:	0485ae03          	lw	t3,72(a1)
    18ec:	001e0e13          	addi	t3,t3,1
    18f0:	002e1e13          	slli	t3,t3,0x2
    18f4:	01c70e33          	add	t3,a4,t3
    18f8:	01ee2623          	sw	t5,12(t3)
    18fc:	0485ae03          	lw	t3,72(a1)
    1900:	002e0e13          	addi	t3,t3,2
    1904:	002e1e13          	slli	t3,t3,0x2
    1908:	01c70e33          	add	t3,a4,t3
    190c:	005e2623          	sw	t0,12(t3)
    1910:	0485ae03          	lw	t3,72(a1)
    1914:	003e0e13          	addi	t3,t3,3
    1918:	05c5a423          	sw	t3,72(a1)
    191c:	cbcff06f          	j	dd8 <benchmark_body+0xc88>
    1920:	03472f03          	lw	t5,52(a4)
    1924:	02c72e03          	lw	t3,44(a4)
    1928:	cdcf1663          	bne	t5,t3,df4 <benchmark_body+0xca4>
    192c:	03072e03          	lw	t3,48(a4)
    1930:	03472f03          	lw	t5,52(a4)
    1934:	cdee5063          	bge	t3,t5,df4 <benchmark_body+0xca4>
    1938:	0007af83          	lw	t6,0(a5)
    193c:	01ee02b3          	add	t0,t3,t5
    1940:	ffcf8f93          	addi	t6,t6,-4
    1944:	01f7a023          	sw	t6,0(a5)
    1948:	0485af83          	lw	t6,72(a1)
    194c:	002f9f93          	slli	t6,t6,0x2
    1950:	01f70fb3          	add	t6,a4,t6
    1954:	01cfa623          	sw	t3,12(t6)
    1958:	0485ae03          	lw	t3,72(a1)
    195c:	001e0e13          	addi	t3,t3,1
    1960:	002e1e13          	slli	t3,t3,0x2
    1964:	01c70e33          	add	t3,a4,t3
    1968:	01ee2623          	sw	t5,12(t3)
    196c:	0485ae03          	lw	t3,72(a1)
    1970:	002e0e13          	addi	t3,t3,2
    1974:	002e1e13          	slli	t3,t3,0x2
    1978:	01c70e33          	add	t3,a4,t3
    197c:	005e2623          	sw	t0,12(t3)
    1980:	0485ae03          	lw	t3,72(a1)
    1984:	003e0e13          	addi	t3,t3,3
    1988:	05c5a423          	sw	t3,72(a1)
    198c:	c68ff06f          	j	df4 <benchmark_body+0xca4>
    1990:	03472f03          	lw	t5,52(a4)
    1994:	02472e03          	lw	t3,36(a4)
    1998:	c7cf1c63          	bne	t5,t3,e10 <benchmark_body+0xcc0>
    199c:	03072e03          	lw	t3,48(a4)
    19a0:	03472f03          	lw	t5,52(a4)
    19a4:	c7ee5663          	bge	t3,t5,e10 <benchmark_body+0xcc0>
    19a8:	02872f83          	lw	t6,40(a4)
    19ac:	01ee02b3          	add	t0,t3,t5
    19b0:	03f72223          	sw	t6,36(a4)
    19b4:	0007af83          	lw	t6,0(a5)
    19b8:	ffcf8f93          	addi	t6,t6,-4
    19bc:	01f7a023          	sw	t6,0(a5)
    19c0:	0485af83          	lw	t6,72(a1)
    19c4:	002f9f93          	slli	t6,t6,0x2
    19c8:	01f70fb3          	add	t6,a4,t6
    19cc:	01cfa623          	sw	t3,12(t6)
    19d0:	0485ae03          	lw	t3,72(a1)
    19d4:	001e0e13          	addi	t3,t3,1
    19d8:	002e1e13          	slli	t3,t3,0x2
    19dc:	01c70e33          	add	t3,a4,t3
    19e0:	01ee2623          	sw	t5,12(t3)
    19e4:	0485ae03          	lw	t3,72(a1)
    19e8:	002e0e13          	addi	t3,t3,2
    19ec:	002e1e13          	slli	t3,t3,0x2
    19f0:	01c70e33          	add	t3,a4,t3
    19f4:	005e2623          	sw	t0,12(t3)
    19f8:	0485ae03          	lw	t3,72(a1)
    19fc:	003e0e13          	addi	t3,t3,3
    1a00:	05c5a423          	sw	t3,72(a1)
    1a04:	c0cff06f          	j	e10 <benchmark_body+0xcc0>
    1a08:	03472f03          	lw	t5,52(a4)
    1a0c:	02872e03          	lw	t3,40(a4)
    1a10:	c1cf1e63          	bne	t5,t3,e2c <benchmark_body+0xcdc>
    1a14:	03072e03          	lw	t3,48(a4)
    1a18:	03472f03          	lw	t5,52(a4)
    1a1c:	c1ee5863          	bge	t3,t5,e2c <benchmark_body+0xcdc>
    1a20:	0007af83          	lw	t6,0(a5)
    1a24:	01ee02b3          	add	t0,t3,t5
    1a28:	ffcf8f93          	addi	t6,t6,-4
    1a2c:	01f7a023          	sw	t6,0(a5)
    1a30:	0485af83          	lw	t6,72(a1)
    1a34:	002f9f93          	slli	t6,t6,0x2
    1a38:	01f70fb3          	add	t6,a4,t6
    1a3c:	01cfa623          	sw	t3,12(t6)
    1a40:	0485ae03          	lw	t3,72(a1)
    1a44:	001e0e13          	addi	t3,t3,1
    1a48:	002e1e13          	slli	t3,t3,0x2
    1a4c:	01c70e33          	add	t3,a4,t3
    1a50:	01ee2623          	sw	t5,12(t3)
    1a54:	0485ae03          	lw	t3,72(a1)
    1a58:	002e0e13          	addi	t3,t3,2
    1a5c:	002e1e13          	slli	t3,t3,0x2
    1a60:	01c70e33          	add	t3,a4,t3
    1a64:	005e2623          	sw	t0,12(t3)
    1a68:	0485ae03          	lw	t3,72(a1)
    1a6c:	003e0e13          	addi	t3,t3,3
    1a70:	05c5a423          	sw	t3,72(a1)
    1a74:	bb8ff06f          	j	e2c <benchmark_body+0xcdc>
    1a78:	02472f03          	lw	t5,36(a4)
    1a7c:	02c72e03          	lw	t3,44(a4)
    1a80:	bdcf1463          	bne	t5,t3,e48 <benchmark_body+0xcf8>
    1a84:	03472e03          	lw	t3,52(a4)
    1a88:	02472f03          	lw	t5,36(a4)
    1a8c:	bbee5e63          	bge	t3,t5,e48 <benchmark_body+0xcf8>
    1a90:	03072f83          	lw	t6,48(a4)
    1a94:	01ee02b3          	add	t0,t3,t5
    1a98:	03f72223          	sw	t6,36(a4)
    1a9c:	0007af83          	lw	t6,0(a5)
    1aa0:	ffcf8f93          	addi	t6,t6,-4
    1aa4:	01f7a023          	sw	t6,0(a5)
    1aa8:	0485af83          	lw	t6,72(a1)
    1aac:	002f9f93          	slli	t6,t6,0x2
    1ab0:	01f70fb3          	add	t6,a4,t6
    1ab4:	01cfa623          	sw	t3,12(t6)
    1ab8:	0485ae03          	lw	t3,72(a1)
    1abc:	001e0e13          	addi	t3,t3,1
    1ac0:	002e1e13          	slli	t3,t3,0x2
    1ac4:	01c70e33          	add	t3,a4,t3
    1ac8:	01ee2623          	sw	t5,12(t3)
    1acc:	0485ae03          	lw	t3,72(a1)
    1ad0:	002e0e13          	addi	t3,t3,2
    1ad4:	002e1e13          	slli	t3,t3,0x2
    1ad8:	01c70e33          	add	t3,a4,t3
    1adc:	005e2623          	sw	t0,12(t3)
    1ae0:	0485ae03          	lw	t3,72(a1)
    1ae4:	003e0e13          	addi	t3,t3,3
    1ae8:	05c5a423          	sw	t3,72(a1)
    1aec:	b5cff06f          	j	e48 <benchmark_body+0xcf8>
    1af0:	02472f03          	lw	t5,36(a4)
    1af4:	03072e03          	lw	t3,48(a4)
    1af8:	b7cf1663          	bne	t5,t3,e64 <benchmark_body+0xd14>
    1afc:	03472e03          	lw	t3,52(a4)
    1b00:	02472f03          	lw	t5,36(a4)
    1b04:	b7ee5063          	bge	t3,t5,e64 <benchmark_body+0xd14>
    1b08:	02c72f83          	lw	t6,44(a4)
    1b0c:	01ee02b3          	add	t0,t3,t5
    1b10:	03f72223          	sw	t6,36(a4)
    1b14:	0007af83          	lw	t6,0(a5)
    1b18:	ffcf8f93          	addi	t6,t6,-4
    1b1c:	01f7a023          	sw	t6,0(a5)
    1b20:	0485af83          	lw	t6,72(a1)
    1b24:	002f9f93          	slli	t6,t6,0x2
    1b28:	01f70fb3          	add	t6,a4,t6
    1b2c:	01cfa623          	sw	t3,12(t6)
    1b30:	0485ae03          	lw	t3,72(a1)
    1b34:	001e0e13          	addi	t3,t3,1
    1b38:	002e1e13          	slli	t3,t3,0x2
    1b3c:	01c70e33          	add	t3,a4,t3
    1b40:	01ee2623          	sw	t5,12(t3)
    1b44:	0485ae03          	lw	t3,72(a1)
    1b48:	002e0e13          	addi	t3,t3,2
    1b4c:	002e1e13          	slli	t3,t3,0x2
    1b50:	01c70e33          	add	t3,a4,t3
    1b54:	005e2623          	sw	t0,12(t3)
    1b58:	0485ae03          	lw	t3,72(a1)
    1b5c:	003e0e13          	addi	t3,t3,3
    1b60:	05c5a423          	sw	t3,72(a1)
    1b64:	b00ff06f          	j	e64 <benchmark_body+0xd14>
    1b68:	02472f03          	lw	t5,36(a4)
    1b6c:	02872e03          	lw	t3,40(a4)
    1b70:	b1cf1863          	bne	t5,t3,e80 <benchmark_body+0xd30>
    1b74:	03472e03          	lw	t3,52(a4)
    1b78:	02472f03          	lw	t5,36(a4)
    1b7c:	b1ee5263          	bge	t3,t5,e80 <benchmark_body+0xd30>
    1b80:	03072f83          	lw	t6,48(a4)
    1b84:	01ee02b3          	add	t0,t3,t5
    1b88:	03f72223          	sw	t6,36(a4)
    1b8c:	0007af83          	lw	t6,0(a5)
    1b90:	ffcf8f93          	addi	t6,t6,-4
    1b94:	01f7a023          	sw	t6,0(a5)
    1b98:	0485af83          	lw	t6,72(a1)
    1b9c:	002f9f93          	slli	t6,t6,0x2
    1ba0:	01f70fb3          	add	t6,a4,t6
    1ba4:	01cfa623          	sw	t3,12(t6)
    1ba8:	0485ae03          	lw	t3,72(a1)
    1bac:	001e0e13          	addi	t3,t3,1
    1bb0:	002e1e13          	slli	t3,t3,0x2
    1bb4:	01c70e33          	add	t3,a4,t3
    1bb8:	01ee2623          	sw	t5,12(t3)
    1bbc:	0485ae03          	lw	t3,72(a1)
    1bc0:	002e0e13          	addi	t3,t3,2
    1bc4:	002e1e13          	slli	t3,t3,0x2
    1bc8:	01c70e33          	add	t3,a4,t3
    1bcc:	005e2623          	sw	t0,12(t3)
    1bd0:	0485ae03          	lw	t3,72(a1)
    1bd4:	003e0e13          	addi	t3,t3,3
    1bd8:	05c5a423          	sw	t3,72(a1)
    1bdc:	aa4ff06f          	j	e80 <benchmark_body+0xd30>
    1be0:	02472f03          	lw	t5,36(a4)
    1be4:	03072e03          	lw	t3,48(a4)
    1be8:	abcf1a63          	bne	t5,t3,e9c <benchmark_body+0xd4c>
    1bec:	03472e03          	lw	t3,52(a4)
    1bf0:	02472f03          	lw	t5,36(a4)
    1bf4:	abee5463          	bge	t3,t5,e9c <benchmark_body+0xd4c>
    1bf8:	02872f83          	lw	t6,40(a4)
    1bfc:	01ee02b3          	add	t0,t3,t5
    1c00:	03f72223          	sw	t6,36(a4)
    1c04:	0007af83          	lw	t6,0(a5)
    1c08:	ffcf8f93          	addi	t6,t6,-4
    1c0c:	01f7a023          	sw	t6,0(a5)
    1c10:	0485af83          	lw	t6,72(a1)
    1c14:	002f9f93          	slli	t6,t6,0x2
    1c18:	01f70fb3          	add	t6,a4,t6
    1c1c:	01cfa623          	sw	t3,12(t6)
    1c20:	0485ae03          	lw	t3,72(a1)
    1c24:	001e0e13          	addi	t3,t3,1
    1c28:	002e1e13          	slli	t3,t3,0x2
    1c2c:	01c70e33          	add	t3,a4,t3
    1c30:	01ee2623          	sw	t5,12(t3)
    1c34:	0485ae03          	lw	t3,72(a1)
    1c38:	002e0e13          	addi	t3,t3,2
    1c3c:	002e1e13          	slli	t3,t3,0x2
    1c40:	01c70e33          	add	t3,a4,t3
    1c44:	005e2623          	sw	t0,12(t3)
    1c48:	0485ae03          	lw	t3,72(a1)
    1c4c:	003e0e13          	addi	t3,t3,3
    1c50:	05c5a423          	sw	t3,72(a1)
    1c54:	a48ff06f          	j	e9c <benchmark_body+0xd4c>
    1c58:	02472f03          	lw	t5,36(a4)
    1c5c:	02872e03          	lw	t3,40(a4)
    1c60:	a5cf1c63          	bne	t5,t3,eb8 <benchmark_body+0xd68>
    1c64:	03472e03          	lw	t3,52(a4)
    1c68:	02472f03          	lw	t5,36(a4)
    1c6c:	a5ee5663          	bge	t3,t5,eb8 <benchmark_body+0xd68>
    1c70:	02c72f83          	lw	t6,44(a4)
    1c74:	01ee02b3          	add	t0,t3,t5
    1c78:	03f72223          	sw	t6,36(a4)
    1c7c:	0007af83          	lw	t6,0(a5)
    1c80:	ffcf8f93          	addi	t6,t6,-4
    1c84:	01f7a023          	sw	t6,0(a5)
    1c88:	0485af83          	lw	t6,72(a1)
    1c8c:	002f9f93          	slli	t6,t6,0x2
    1c90:	01f70fb3          	add	t6,a4,t6
    1c94:	01cfa623          	sw	t3,12(t6)
    1c98:	0485ae03          	lw	t3,72(a1)
    1c9c:	001e0e13          	addi	t3,t3,1
    1ca0:	002e1e13          	slli	t3,t3,0x2
    1ca4:	01c70e33          	add	t3,a4,t3
    1ca8:	01ee2623          	sw	t5,12(t3)
    1cac:	0485ae03          	lw	t3,72(a1)
    1cb0:	002e0e13          	addi	t3,t3,2
    1cb4:	002e1e13          	slli	t3,t3,0x2
    1cb8:	01c70e33          	add	t3,a4,t3
    1cbc:	005e2623          	sw	t0,12(t3)
    1cc0:	0485ae03          	lw	t3,72(a1)
    1cc4:	003e0e13          	addi	t3,t3,3
    1cc8:	05c5a423          	sw	t3,72(a1)
    1ccc:	9ecff06f          	j	eb8 <benchmark_body+0xd68>
    1cd0:	02472f03          	lw	t5,36(a4)
    1cd4:	02c72e03          	lw	t3,44(a4)
    1cd8:	9fcf1e63          	bne	t5,t3,ed4 <benchmark_body+0xd84>
    1cdc:	03472e03          	lw	t3,52(a4)
    1ce0:	02472f03          	lw	t5,36(a4)
    1ce4:	9fee5863          	bge	t3,t5,ed4 <benchmark_body+0xd84>
    1ce8:	02872f83          	lw	t6,40(a4)
    1cec:	01ee02b3          	add	t0,t3,t5
    1cf0:	03f72223          	sw	t6,36(a4)
    1cf4:	0007af83          	lw	t6,0(a5)
    1cf8:	ffcf8f93          	addi	t6,t6,-4
    1cfc:	01f7a023          	sw	t6,0(a5)
    1d00:	0485af83          	lw	t6,72(a1)
    1d04:	002f9f93          	slli	t6,t6,0x2
    1d08:	01f70fb3          	add	t6,a4,t6
    1d0c:	01cfa623          	sw	t3,12(t6)
    1d10:	0485ae03          	lw	t3,72(a1)
    1d14:	001e0e13          	addi	t3,t3,1
    1d18:	002e1e13          	slli	t3,t3,0x2
    1d1c:	01c70e33          	add	t3,a4,t3
    1d20:	01ee2623          	sw	t5,12(t3)
    1d24:	0485ae03          	lw	t3,72(a1)
    1d28:	002e0e13          	addi	t3,t3,2
    1d2c:	002e1e13          	slli	t3,t3,0x2
    1d30:	01c70e33          	add	t3,a4,t3
    1d34:	005e2623          	sw	t0,12(t3)
    1d38:	0485ae03          	lw	t3,72(a1)
    1d3c:	003e0e13          	addi	t3,t3,3
    1d40:	05c5a423          	sw	t3,72(a1)
    1d44:	990ff06f          	j	ed4 <benchmark_body+0xd84>
    1d48:	02872f03          	lw	t5,40(a4)
    1d4c:	02c72e03          	lw	t3,44(a4)
    1d50:	9bcf1063          	bne	t5,t3,ef0 <benchmark_body+0xda0>
    1d54:	03472e03          	lw	t3,52(a4)
    1d58:	02872f03          	lw	t5,40(a4)
    1d5c:	99ee5a63          	bge	t3,t5,ef0 <benchmark_body+0xda0>
    1d60:	03072f83          	lw	t6,48(a4)
    1d64:	01ee02b3          	add	t0,t3,t5
    1d68:	03f72223          	sw	t6,36(a4)
    1d6c:	0007af83          	lw	t6,0(a5)
    1d70:	ffcf8f93          	addi	t6,t6,-4
    1d74:	01f7a023          	sw	t6,0(a5)
    1d78:	0485af83          	lw	t6,72(a1)
    1d7c:	002f9f93          	slli	t6,t6,0x2
    1d80:	01f70fb3          	add	t6,a4,t6
    1d84:	01cfa623          	sw	t3,12(t6)
    1d88:	0485ae03          	lw	t3,72(a1)
    1d8c:	001e0e13          	addi	t3,t3,1
    1d90:	002e1e13          	slli	t3,t3,0x2
    1d94:	01c70e33          	add	t3,a4,t3
    1d98:	01ee2623          	sw	t5,12(t3)
    1d9c:	0485ae03          	lw	t3,72(a1)
    1da0:	002e0e13          	addi	t3,t3,2
    1da4:	002e1e13          	slli	t3,t3,0x2
    1da8:	01c70e33          	add	t3,a4,t3
    1dac:	005e2623          	sw	t0,12(t3)
    1db0:	0485ae03          	lw	t3,72(a1)
    1db4:	003e0e13          	addi	t3,t3,3
    1db8:	05c5a423          	sw	t3,72(a1)
    1dbc:	934ff06f          	j	ef0 <benchmark_body+0xda0>
    1dc0:	02872f03          	lw	t5,40(a4)
    1dc4:	03072e03          	lw	t3,48(a4)
    1dc8:	95cf1263          	bne	t5,t3,f0c <benchmark_body+0xdbc>
    1dcc:	03472e03          	lw	t3,52(a4)
    1dd0:	02872f03          	lw	t5,40(a4)
    1dd4:	93ee5c63          	bge	t3,t5,f0c <benchmark_body+0xdbc>
    1dd8:	02c72f83          	lw	t6,44(a4)
    1ddc:	01ee02b3          	add	t0,t3,t5
    1de0:	03f72223          	sw	t6,36(a4)
    1de4:	0007af83          	lw	t6,0(a5)
    1de8:	ffcf8f93          	addi	t6,t6,-4
    1dec:	01f7a023          	sw	t6,0(a5)
    1df0:	0485af83          	lw	t6,72(a1)
    1df4:	002f9f93          	slli	t6,t6,0x2
    1df8:	01f70fb3          	add	t6,a4,t6
    1dfc:	01cfa623          	sw	t3,12(t6)
    1e00:	0485ae03          	lw	t3,72(a1)
    1e04:	001e0e13          	addi	t3,t3,1
    1e08:	002e1e13          	slli	t3,t3,0x2
    1e0c:	01c70e33          	add	t3,a4,t3
    1e10:	01ee2623          	sw	t5,12(t3)
    1e14:	0485ae03          	lw	t3,72(a1)
    1e18:	002e0e13          	addi	t3,t3,2
    1e1c:	002e1e13          	slli	t3,t3,0x2
    1e20:	01c70e33          	add	t3,a4,t3
    1e24:	005e2623          	sw	t0,12(t3)
    1e28:	0485ae03          	lw	t3,72(a1)
    1e2c:	003e0e13          	addi	t3,t3,3
    1e30:	05c5a423          	sw	t3,72(a1)
    1e34:	8d8ff06f          	j	f0c <benchmark_body+0xdbc>
    1e38:	02872f03          	lw	t5,40(a4)
    1e3c:	02472e03          	lw	t3,36(a4)
    1e40:	8fcf1463          	bne	t5,t3,f28 <benchmark_body+0xdd8>
    1e44:	03472e03          	lw	t3,52(a4)
    1e48:	02872f03          	lw	t5,40(a4)
    1e4c:	8dee5e63          	bge	t3,t5,f28 <benchmark_body+0xdd8>
    1e50:	03072f83          	lw	t6,48(a4)
    1e54:	01ee02b3          	add	t0,t3,t5
    1e58:	03f72223          	sw	t6,36(a4)
    1e5c:	0007af83          	lw	t6,0(a5)
    1e60:	ffcf8f93          	addi	t6,t6,-4
    1e64:	01f7a023          	sw	t6,0(a5)
    1e68:	0485af83          	lw	t6,72(a1)
    1e6c:	002f9f93          	slli	t6,t6,0x2
    1e70:	01f70fb3          	add	t6,a4,t6
    1e74:	01cfa623          	sw	t3,12(t6)
    1e78:	0485ae03          	lw	t3,72(a1)
    1e7c:	001e0e13          	addi	t3,t3,1
    1e80:	002e1e13          	slli	t3,t3,0x2
    1e84:	01c70e33          	add	t3,a4,t3
    1e88:	01ee2623          	sw	t5,12(t3)
    1e8c:	0485ae03          	lw	t3,72(a1)
    1e90:	002e0e13          	addi	t3,t3,2
    1e94:	002e1e13          	slli	t3,t3,0x2
    1e98:	01c70e33          	add	t3,a4,t3
    1e9c:	005e2623          	sw	t0,12(t3)
    1ea0:	0485ae03          	lw	t3,72(a1)
    1ea4:	003e0e13          	addi	t3,t3,3
    1ea8:	05c5a423          	sw	t3,72(a1)
    1eac:	87cff06f          	j	f28 <benchmark_body+0xdd8>
    1eb0:	03472f03          	lw	t5,52(a4)
    1eb4:	03072e03          	lw	t3,48(a4)
    1eb8:	01cf0463          	beq	t5,t3,1ec0 <benchmark_body+0x1d70>
    1ebc:	acdfe06f          	j	988 <benchmark_body+0x838>
    1ec0:	02872e03          	lw	t3,40(a4)
    1ec4:	03472f03          	lw	t5,52(a4)
    1ec8:	01ee4463          	blt	t3,t5,1ed0 <benchmark_body+0x1d80>
    1ecc:	abdfe06f          	j	988 <benchmark_body+0x838>
    1ed0:	0007af83          	lw	t6,0(a5)
    1ed4:	01ee02b3          	add	t0,t3,t5
    1ed8:	ffcf8f93          	addi	t6,t6,-4
    1edc:	01f7a023          	sw	t6,0(a5)
    1ee0:	0485af83          	lw	t6,72(a1)
    1ee4:	002f9f93          	slli	t6,t6,0x2
    1ee8:	01f70fb3          	add	t6,a4,t6
    1eec:	01cfa623          	sw	t3,12(t6)
    1ef0:	0485ae03          	lw	t3,72(a1)
    1ef4:	001e0e13          	addi	t3,t3,1
    1ef8:	002e1e13          	slli	t3,t3,0x2
    1efc:	01c70e33          	add	t3,a4,t3
    1f00:	01ee2623          	sw	t5,12(t3)
    1f04:	0485ae03          	lw	t3,72(a1)
    1f08:	002e0e13          	addi	t3,t3,2
    1f0c:	002e1e13          	slli	t3,t3,0x2
    1f10:	01c70e33          	add	t3,a4,t3
    1f14:	005e2623          	sw	t0,12(t3)
    1f18:	0485ae03          	lw	t3,72(a1)
    1f1c:	003e0e13          	addi	t3,t3,3
    1f20:	05c5a423          	sw	t3,72(a1)
    1f24:	a65fe06f          	j	988 <benchmark_body+0x838>
    1f28:	03472f03          	lw	t5,52(a4)
    1f2c:	02472e03          	lw	t3,36(a4)
    1f30:	01cf0463          	beq	t5,t3,1f38 <benchmark_body+0x1de8>
    1f34:	a75fe06f          	j	9a8 <benchmark_body+0x858>
    1f38:	02872e03          	lw	t3,40(a4)
    1f3c:	03472f03          	lw	t5,52(a4)
    1f40:	01ee4463          	blt	t3,t5,1f48 <benchmark_body+0x1df8>
    1f44:	a65fe06f          	j	9a8 <benchmark_body+0x858>
    1f48:	02c72f83          	lw	t6,44(a4)
    1f4c:	01ee02b3          	add	t0,t3,t5
    1f50:	03f72223          	sw	t6,36(a4)
    1f54:	0007af83          	lw	t6,0(a5)
    1f58:	ffcf8f93          	addi	t6,t6,-4
    1f5c:	01f7a023          	sw	t6,0(a5)
    1f60:	0485af83          	lw	t6,72(a1)
    1f64:	002f9f93          	slli	t6,t6,0x2
    1f68:	01f70fb3          	add	t6,a4,t6
    1f6c:	01cfa623          	sw	t3,12(t6)
    1f70:	0485ae03          	lw	t3,72(a1)
    1f74:	001e0e13          	addi	t3,t3,1
    1f78:	002e1e13          	slli	t3,t3,0x2
    1f7c:	01c70e33          	add	t3,a4,t3
    1f80:	01ee2623          	sw	t5,12(t3)
    1f84:	0485ae03          	lw	t3,72(a1)
    1f88:	002e0e13          	addi	t3,t3,2
    1f8c:	002e1e13          	slli	t3,t3,0x2
    1f90:	01c70e33          	add	t3,a4,t3
    1f94:	005e2623          	sw	t0,12(t3)
    1f98:	0485ae03          	lw	t3,72(a1)
    1f9c:	003e0e13          	addi	t3,t3,3
    1fa0:	05c5a423          	sw	t3,72(a1)
    1fa4:	a05fe06f          	j	9a8 <benchmark_body+0x858>
    1fa8:	03472f03          	lw	t5,52(a4)
    1fac:	02c72e03          	lw	t3,44(a4)
    1fb0:	01cf0463          	beq	t5,t3,1fb8 <benchmark_body+0x1e68>
    1fb4:	a15fe06f          	j	9c8 <benchmark_body+0x878>
    1fb8:	02872e03          	lw	t3,40(a4)
    1fbc:	03472f03          	lw	t5,52(a4)
    1fc0:	01ee4463          	blt	t3,t5,1fc8 <benchmark_body+0x1e78>
    1fc4:	a05fe06f          	j	9c8 <benchmark_body+0x878>
    1fc8:	0007af83          	lw	t6,0(a5)
    1fcc:	01ee02b3          	add	t0,t3,t5
    1fd0:	ffcf8f93          	addi	t6,t6,-4
    1fd4:	01f7a023          	sw	t6,0(a5)
    1fd8:	0485af83          	lw	t6,72(a1)
    1fdc:	002f9f93          	slli	t6,t6,0x2
    1fe0:	01f70fb3          	add	t6,a4,t6
    1fe4:	01cfa623          	sw	t3,12(t6)
    1fe8:	0485ae03          	lw	t3,72(a1)
    1fec:	001e0e13          	addi	t3,t3,1
    1ff0:	002e1e13          	slli	t3,t3,0x2
    1ff4:	01c70e33          	add	t3,a4,t3
    1ff8:	01ee2623          	sw	t5,12(t3)
    1ffc:	0485ae03          	lw	t3,72(a1)
    2000:	002e0e13          	addi	t3,t3,2
    2004:	002e1e13          	slli	t3,t3,0x2
    2008:	01c70e33          	add	t3,a4,t3
    200c:	005e2623          	sw	t0,12(t3)
    2010:	0485ae03          	lw	t3,72(a1)
    2014:	003e0e13          	addi	t3,t3,3
    2018:	05c5a423          	sw	t3,72(a1)
    201c:	9adfe06f          	j	9c8 <benchmark_body+0x878>
    2020:	02472f03          	lw	t5,36(a4)
    2024:	03472e03          	lw	t3,52(a4)
    2028:	01cf0463          	beq	t5,t3,2030 <benchmark_body+0x1ee0>
    202c:	9bdfe06f          	j	9e8 <benchmark_body+0x898>
    2030:	02c72e03          	lw	t3,44(a4)
    2034:	02472f03          	lw	t5,36(a4)
    2038:	01ee4463          	blt	t3,t5,2040 <benchmark_body+0x1ef0>
    203c:	9adfe06f          	j	9e8 <benchmark_body+0x898>
    2040:	03072f83          	lw	t6,48(a4)
    2044:	01ee02b3          	add	t0,t3,t5
    2048:	03f72223          	sw	t6,36(a4)
    204c:	0007af83          	lw	t6,0(a5)
    2050:	ffcf8f93          	addi	t6,t6,-4
    2054:	01f7a023          	sw	t6,0(a5)
    2058:	0485af83          	lw	t6,72(a1)
    205c:	002f9f93          	slli	t6,t6,0x2
    2060:	01f70fb3          	add	t6,a4,t6
    2064:	01cfa623          	sw	t3,12(t6)
    2068:	0485ae03          	lw	t3,72(a1)
    206c:	001e0e13          	addi	t3,t3,1
    2070:	002e1e13          	slli	t3,t3,0x2
    2074:	01c70e33          	add	t3,a4,t3
    2078:	01ee2623          	sw	t5,12(t3)
    207c:	0485ae03          	lw	t3,72(a1)
    2080:	002e0e13          	addi	t3,t3,2
    2084:	002e1e13          	slli	t3,t3,0x2
    2088:	01c70e33          	add	t3,a4,t3
    208c:	005e2623          	sw	t0,12(t3)
    2090:	0485ae03          	lw	t3,72(a1)
    2094:	003e0e13          	addi	t3,t3,3
    2098:	05c5a423          	sw	t3,72(a1)
    209c:	94dfe06f          	j	9e8 <benchmark_body+0x898>
    20a0:	02472f03          	lw	t5,36(a4)
    20a4:	03472e03          	lw	t3,52(a4)
    20a8:	01cf0463          	beq	t5,t3,20b0 <benchmark_body+0x1f60>
    20ac:	95dfe06f          	j	a08 <benchmark_body+0x8b8>
    20b0:	02c72e03          	lw	t3,44(a4)
    20b4:	02472f03          	lw	t5,36(a4)
    20b8:	01ee4463          	blt	t3,t5,20c0 <benchmark_body+0x1f70>
    20bc:	94dfe06f          	j	a08 <benchmark_body+0x8b8>
    20c0:	02872f83          	lw	t6,40(a4)
    20c4:	01ee02b3          	add	t0,t3,t5
    20c8:	03f72223          	sw	t6,36(a4)
    20cc:	0007af83          	lw	t6,0(a5)
    20d0:	ffcf8f93          	addi	t6,t6,-4
    20d4:	01f7a023          	sw	t6,0(a5)
    20d8:	0485af83          	lw	t6,72(a1)
    20dc:	002f9f93          	slli	t6,t6,0x2
    20e0:	01f70fb3          	add	t6,a4,t6
    20e4:	01cfa623          	sw	t3,12(t6)
    20e8:	0485ae03          	lw	t3,72(a1)
    20ec:	001e0e13          	addi	t3,t3,1
    20f0:	002e1e13          	slli	t3,t3,0x2
    20f4:	01c70e33          	add	t3,a4,t3
    20f8:	01ee2623          	sw	t5,12(t3)
    20fc:	0485ae03          	lw	t3,72(a1)
    2100:	002e0e13          	addi	t3,t3,2
    2104:	002e1e13          	slli	t3,t3,0x2
    2108:	01c70e33          	add	t3,a4,t3
    210c:	005e2623          	sw	t0,12(t3)
    2110:	0485ae03          	lw	t3,72(a1)
    2114:	003e0e13          	addi	t3,t3,3
    2118:	05c5a423          	sw	t3,72(a1)
    211c:	8edfe06f          	j	a08 <benchmark_body+0x8b8>
    2120:	02472f03          	lw	t5,36(a4)
    2124:	02872e03          	lw	t3,40(a4)
    2128:	01cf0463          	beq	t5,t3,2130 <benchmark_body+0x1fe0>
    212c:	8fdfe06f          	j	a28 <benchmark_body+0x8d8>
    2130:	02c72e03          	lw	t3,44(a4)
    2134:	02472f03          	lw	t5,36(a4)
    2138:	01ee4463          	blt	t3,t5,2140 <benchmark_body+0x1ff0>
    213c:	8edfe06f          	j	a28 <benchmark_body+0x8d8>
    2140:	03072f83          	lw	t6,48(a4)
    2144:	01ee02b3          	add	t0,t3,t5
    2148:	03f72223          	sw	t6,36(a4)
    214c:	0007af83          	lw	t6,0(a5)
    2150:	ffcf8f93          	addi	t6,t6,-4
    2154:	01f7a023          	sw	t6,0(a5)
    2158:	0485af83          	lw	t6,72(a1)
    215c:	002f9f93          	slli	t6,t6,0x2
    2160:	01f70fb3          	add	t6,a4,t6
    2164:	01cfa623          	sw	t3,12(t6)
    2168:	0485ae03          	lw	t3,72(a1)
    216c:	001e0e13          	addi	t3,t3,1
    2170:	002e1e13          	slli	t3,t3,0x2
    2174:	01c70e33          	add	t3,a4,t3
    2178:	01ee2623          	sw	t5,12(t3)
    217c:	0485ae03          	lw	t3,72(a1)
    2180:	002e0e13          	addi	t3,t3,2
    2184:	002e1e13          	slli	t3,t3,0x2
    2188:	01c70e33          	add	t3,a4,t3
    218c:	005e2623          	sw	t0,12(t3)
    2190:	0485ae03          	lw	t3,72(a1)
    2194:	003e0e13          	addi	t3,t3,3
    2198:	05c5a423          	sw	t3,72(a1)
    219c:	88dfe06f          	j	a28 <benchmark_body+0x8d8>
    21a0:	02472f03          	lw	t5,36(a4)
    21a4:	03072e03          	lw	t3,48(a4)
    21a8:	01cf0463          	beq	t5,t3,21b0 <benchmark_body+0x2060>
    21ac:	89dfe06f          	j	a48 <benchmark_body+0x8f8>
    21b0:	02c72e03          	lw	t3,44(a4)
    21b4:	02472f03          	lw	t5,36(a4)
    21b8:	01ee4463          	blt	t3,t5,21c0 <benchmark_body+0x2070>
    21bc:	88dfe06f          	j	a48 <benchmark_body+0x8f8>
    21c0:	02872f83          	lw	t6,40(a4)
    21c4:	01ee02b3          	add	t0,t3,t5
    21c8:	03f72223          	sw	t6,36(a4)
    21cc:	0007af83          	lw	t6,0(a5)
    21d0:	ffcf8f93          	addi	t6,t6,-4
    21d4:	01f7a023          	sw	t6,0(a5)
    21d8:	0485af83          	lw	t6,72(a1)
    21dc:	002f9f93          	slli	t6,t6,0x2
    21e0:	01f70fb3          	add	t6,a4,t6
    21e4:	01cfa623          	sw	t3,12(t6)
    21e8:	0485ae03          	lw	t3,72(a1)
    21ec:	001e0e13          	addi	t3,t3,1
    21f0:	002e1e13          	slli	t3,t3,0x2
    21f4:	01c70e33          	add	t3,a4,t3
    21f8:	01ee2623          	sw	t5,12(t3)
    21fc:	0485ae03          	lw	t3,72(a1)
    2200:	002e0e13          	addi	t3,t3,2
    2204:	002e1e13          	slli	t3,t3,0x2
    2208:	01c70e33          	add	t3,a4,t3
    220c:	005e2623          	sw	t0,12(t3)
    2210:	0485ae03          	lw	t3,72(a1)
    2214:	003e0e13          	addi	t3,t3,3
    2218:	05c5a423          	sw	t3,72(a1)
    221c:	82dfe06f          	j	a48 <benchmark_body+0x8f8>
    2220:	02872f03          	lw	t5,40(a4)
    2224:	03472e03          	lw	t3,52(a4)
    2228:	01cf0463          	beq	t5,t3,2230 <benchmark_body+0x20e0>
    222c:	83dfe06f          	j	a68 <benchmark_body+0x918>
    2230:	02c72e03          	lw	t3,44(a4)
    2234:	02872f03          	lw	t5,40(a4)
    2238:	01ee4463          	blt	t3,t5,2240 <benchmark_body+0x20f0>
    223c:	82dfe06f          	j	a68 <benchmark_body+0x918>
    2240:	03072f83          	lw	t6,48(a4)
    2244:	01ee02b3          	add	t0,t3,t5
    2248:	03f72223          	sw	t6,36(a4)
    224c:	0007af83          	lw	t6,0(a5)
    2250:	ffcf8f93          	addi	t6,t6,-4
    2254:	01f7a023          	sw	t6,0(a5)
    2258:	0485af83          	lw	t6,72(a1)
    225c:	002f9f93          	slli	t6,t6,0x2
    2260:	01f70fb3          	add	t6,a4,t6
    2264:	01cfa623          	sw	t3,12(t6)
    2268:	0485ae03          	lw	t3,72(a1)
    226c:	001e0e13          	addi	t3,t3,1
    2270:	002e1e13          	slli	t3,t3,0x2
    2274:	01c70e33          	add	t3,a4,t3
    2278:	01ee2623          	sw	t5,12(t3)
    227c:	0485ae03          	lw	t3,72(a1)
    2280:	002e0e13          	addi	t3,t3,2
    2284:	002e1e13          	slli	t3,t3,0x2
    2288:	01c70e33          	add	t3,a4,t3
    228c:	005e2623          	sw	t0,12(t3)
    2290:	0485ae03          	lw	t3,72(a1)
    2294:	003e0e13          	addi	t3,t3,3
    2298:	05c5a423          	sw	t3,72(a1)
    229c:	fccfe06f          	j	a68 <benchmark_body+0x918>
    22a0:	02872f03          	lw	t5,40(a4)
    22a4:	03472e03          	lw	t3,52(a4)
    22a8:	01cf0463          	beq	t5,t3,22b0 <benchmark_body+0x2160>
    22ac:	fdcfe06f          	j	a88 <benchmark_body+0x938>
    22b0:	02c72e03          	lw	t3,44(a4)
    22b4:	02872f03          	lw	t5,40(a4)
    22b8:	01ee4463          	blt	t3,t5,22c0 <benchmark_body+0x2170>
    22bc:	fccfe06f          	j	a88 <benchmark_body+0x938>
    22c0:	0007af83          	lw	t6,0(a5)
    22c4:	01ee02b3          	add	t0,t3,t5
    22c8:	ffcf8f93          	addi	t6,t6,-4
    22cc:	01f7a023          	sw	t6,0(a5)
    22d0:	0485af83          	lw	t6,72(a1)
    22d4:	002f9f93          	slli	t6,t6,0x2
    22d8:	01f70fb3          	add	t6,a4,t6
    22dc:	01cfa623          	sw	t3,12(t6)
    22e0:	0485ae03          	lw	t3,72(a1)
    22e4:	001e0e13          	addi	t3,t3,1
    22e8:	002e1e13          	slli	t3,t3,0x2
    22ec:	01c70e33          	add	t3,a4,t3
    22f0:	01ee2623          	sw	t5,12(t3)
    22f4:	0485ae03          	lw	t3,72(a1)
    22f8:	002e0e13          	addi	t3,t3,2
    22fc:	002e1e13          	slli	t3,t3,0x2
    2300:	01c70e33          	add	t3,a4,t3
    2304:	005e2623          	sw	t0,12(t3)
    2308:	0485ae03          	lw	t3,72(a1)
    230c:	003e0e13          	addi	t3,t3,3
    2310:	05c5a423          	sw	t3,72(a1)
    2314:	f74fe06f          	j	a88 <benchmark_body+0x938>
    2318:	02872f03          	lw	t5,40(a4)
    231c:	02472e03          	lw	t3,36(a4)
    2320:	01cf0463          	beq	t5,t3,2328 <benchmark_body+0x21d8>
    2324:	f84fe06f          	j	aa8 <benchmark_body+0x958>
    2328:	02c72e03          	lw	t3,44(a4)
    232c:	02872f03          	lw	t5,40(a4)
    2330:	01ee4463          	blt	t3,t5,2338 <benchmark_body+0x21e8>
    2334:	f74fe06f          	j	aa8 <benchmark_body+0x958>
    2338:	03072f83          	lw	t6,48(a4)
    233c:	01ee02b3          	add	t0,t3,t5
    2340:	03f72223          	sw	t6,36(a4)
    2344:	0007af83          	lw	t6,0(a5)
    2348:	ffcf8f93          	addi	t6,t6,-4
    234c:	01f7a023          	sw	t6,0(a5)
    2350:	0485af83          	lw	t6,72(a1)
    2354:	002f9f93          	slli	t6,t6,0x2
    2358:	01f70fb3          	add	t6,a4,t6
    235c:	01cfa623          	sw	t3,12(t6)
    2360:	0485ae03          	lw	t3,72(a1)
    2364:	001e0e13          	addi	t3,t3,1
    2368:	002e1e13          	slli	t3,t3,0x2
    236c:	01c70e33          	add	t3,a4,t3
    2370:	01ee2623          	sw	t5,12(t3)
    2374:	0485ae03          	lw	t3,72(a1)
    2378:	002e0e13          	addi	t3,t3,2
    237c:	002e1e13          	slli	t3,t3,0x2
    2380:	01c70e33          	add	t3,a4,t3
    2384:	005e2623          	sw	t0,12(t3)
    2388:	0485ae03          	lw	t3,72(a1)
    238c:	003e0e13          	addi	t3,t3,3
    2390:	05c5a423          	sw	t3,72(a1)
    2394:	f14fe06f          	j	aa8 <benchmark_body+0x958>
    2398:	02872f03          	lw	t5,40(a4)
    239c:	03072e03          	lw	t3,48(a4)
    23a0:	01cf0463          	beq	t5,t3,23a8 <benchmark_body+0x2258>
    23a4:	f24fe06f          	j	ac8 <benchmark_body+0x978>
    23a8:	02c72e03          	lw	t3,44(a4)
    23ac:	02872f03          	lw	t5,40(a4)
    23b0:	01ee4463          	blt	t3,t5,23b8 <benchmark_body+0x2268>
    23b4:	f14fe06f          	j	ac8 <benchmark_body+0x978>
    23b8:	0007af83          	lw	t6,0(a5)
    23bc:	01ee02b3          	add	t0,t3,t5
    23c0:	ffcf8f93          	addi	t6,t6,-4
    23c4:	01f7a023          	sw	t6,0(a5)
    23c8:	0485af83          	lw	t6,72(a1)
    23cc:	002f9f93          	slli	t6,t6,0x2
    23d0:	01f70fb3          	add	t6,a4,t6
    23d4:	01cfa623          	sw	t3,12(t6)
    23d8:	0485ae03          	lw	t3,72(a1)
    23dc:	001e0e13          	addi	t3,t3,1
    23e0:	002e1e13          	slli	t3,t3,0x2
    23e4:	01c70e33          	add	t3,a4,t3
    23e8:	01ee2623          	sw	t5,12(t3)
    23ec:	0485ae03          	lw	t3,72(a1)
    23f0:	002e0e13          	addi	t3,t3,2
    23f4:	002e1e13          	slli	t3,t3,0x2
    23f8:	01c70e33          	add	t3,a4,t3
    23fc:	005e2623          	sw	t0,12(t3)
    2400:	0485ae03          	lw	t3,72(a1)
    2404:	003e0e13          	addi	t3,t3,3
    2408:	05c5a423          	sw	t3,72(a1)
    240c:	ebcfe06f          	j	ac8 <benchmark_body+0x978>
    2410:	03072f03          	lw	t5,48(a4)
    2414:	03472e03          	lw	t3,52(a4)
    2418:	01cf0463          	beq	t5,t3,2420 <benchmark_body+0x22d0>
    241c:	eccfe06f          	j	ae8 <benchmark_body+0x998>
    2420:	02c72e03          	lw	t3,44(a4)
    2424:	03072f03          	lw	t5,48(a4)
    2428:	01ee4463          	blt	t3,t5,2430 <benchmark_body+0x22e0>
    242c:	ebcfe06f          	j	ae8 <benchmark_body+0x998>
    2430:	02872f83          	lw	t6,40(a4)
    2434:	01ee02b3          	add	t0,t3,t5
    2438:	03f72223          	sw	t6,36(a4)
    243c:	0007af83          	lw	t6,0(a5)
    2440:	ffcf8f93          	addi	t6,t6,-4
    2444:	01f7a023          	sw	t6,0(a5)
    2448:	0485af83          	lw	t6,72(a1)
    244c:	002f9f93          	slli	t6,t6,0x2
    2450:	01f70fb3          	add	t6,a4,t6
    2454:	01cfa623          	sw	t3,12(t6)
    2458:	0485ae03          	lw	t3,72(a1)
    245c:	001e0e13          	addi	t3,t3,1
    2460:	002e1e13          	slli	t3,t3,0x2
    2464:	01c70e33          	add	t3,a4,t3
    2468:	01ee2623          	sw	t5,12(t3)
    246c:	0485ae03          	lw	t3,72(a1)
    2470:	002e0e13          	addi	t3,t3,2
    2474:	002e1e13          	slli	t3,t3,0x2
    2478:	01c70e33          	add	t3,a4,t3
    247c:	005e2623          	sw	t0,12(t3)
    2480:	0485ae03          	lw	t3,72(a1)
    2484:	003e0e13          	addi	t3,t3,3
    2488:	05c5a423          	sw	t3,72(a1)
    248c:	e5cfe06f          	j	ae8 <benchmark_body+0x998>
    2490:	03072f03          	lw	t5,48(a4)
    2494:	03472e03          	lw	t3,52(a4)
    2498:	01cf0463          	beq	t5,t3,24a0 <benchmark_body+0x2350>
    249c:	e6cfe06f          	j	b08 <benchmark_body+0x9b8>
    24a0:	02c72e03          	lw	t3,44(a4)
    24a4:	03072f03          	lw	t5,48(a4)
    24a8:	01ee4463          	blt	t3,t5,24b0 <benchmark_body+0x2360>
    24ac:	e5cfe06f          	j	b08 <benchmark_body+0x9b8>
    24b0:	0007af83          	lw	t6,0(a5)
    24b4:	01ee02b3          	add	t0,t3,t5
    24b8:	ffcf8f93          	addi	t6,t6,-4
    24bc:	01f7a023          	sw	t6,0(a5)
    24c0:	0485af83          	lw	t6,72(a1)
    24c4:	002f9f93          	slli	t6,t6,0x2
    24c8:	01f70fb3          	add	t6,a4,t6
    24cc:	01cfa623          	sw	t3,12(t6)
    24d0:	0485ae03          	lw	t3,72(a1)
    24d4:	001e0e13          	addi	t3,t3,1
    24d8:	002e1e13          	slli	t3,t3,0x2
    24dc:	01c70e33          	add	t3,a4,t3
    24e0:	01ee2623          	sw	t5,12(t3)
    24e4:	0485ae03          	lw	t3,72(a1)
    24e8:	002e0e13          	addi	t3,t3,2
    24ec:	002e1e13          	slli	t3,t3,0x2
    24f0:	01c70e33          	add	t3,a4,t3
    24f4:	005e2623          	sw	t0,12(t3)
    24f8:	0485ae03          	lw	t3,72(a1)
    24fc:	003e0e13          	addi	t3,t3,3
    2500:	05c5a423          	sw	t3,72(a1)
    2504:	e04fe06f          	j	b08 <benchmark_body+0x9b8>
    2508:	03072f03          	lw	t5,48(a4)
    250c:	02472e03          	lw	t3,36(a4)
    2510:	01cf0463          	beq	t5,t3,2518 <benchmark_body+0x23c8>
    2514:	e14fe06f          	j	b28 <benchmark_body+0x9d8>
    2518:	02c72e03          	lw	t3,44(a4)
    251c:	03072f03          	lw	t5,48(a4)
    2520:	01ee4463          	blt	t3,t5,2528 <benchmark_body+0x23d8>
    2524:	e04fe06f          	j	b28 <benchmark_body+0x9d8>
    2528:	02872f83          	lw	t6,40(a4)
    252c:	01ee02b3          	add	t0,t3,t5
    2530:	03f72223          	sw	t6,36(a4)
    2534:	0007af83          	lw	t6,0(a5)
    2538:	ffcf8f93          	addi	t6,t6,-4
    253c:	01f7a023          	sw	t6,0(a5)
    2540:	0485af83          	lw	t6,72(a1)
    2544:	002f9f93          	slli	t6,t6,0x2
    2548:	01f70fb3          	add	t6,a4,t6
    254c:	01cfa623          	sw	t3,12(t6)
    2550:	0485ae03          	lw	t3,72(a1)
    2554:	001e0e13          	addi	t3,t3,1
    2558:	002e1e13          	slli	t3,t3,0x2
    255c:	01c70e33          	add	t3,a4,t3
    2560:	01ee2623          	sw	t5,12(t3)
    2564:	0485ae03          	lw	t3,72(a1)
    2568:	002e0e13          	addi	t3,t3,2
    256c:	002e1e13          	slli	t3,t3,0x2
    2570:	01c70e33          	add	t3,a4,t3
    2574:	005e2623          	sw	t0,12(t3)
    2578:	0485ae03          	lw	t3,72(a1)
    257c:	003e0e13          	addi	t3,t3,3
    2580:	05c5a423          	sw	t3,72(a1)
    2584:	da4fe06f          	j	b28 <benchmark_body+0x9d8>
    2588:	03072f03          	lw	t5,48(a4)
    258c:	02872e03          	lw	t3,40(a4)
    2590:	01cf0463          	beq	t5,t3,2598 <benchmark_body+0x2448>
    2594:	db4fe06f          	j	b48 <benchmark_body+0x9f8>
    2598:	02c72e03          	lw	t3,44(a4)
    259c:	03072f03          	lw	t5,48(a4)
    25a0:	01ee4463          	blt	t3,t5,25a8 <benchmark_body+0x2458>
    25a4:	da4fe06f          	j	b48 <benchmark_body+0x9f8>
    25a8:	0007af83          	lw	t6,0(a5)
    25ac:	01ee02b3          	add	t0,t3,t5
    25b0:	ffcf8f93          	addi	t6,t6,-4
    25b4:	01f7a023          	sw	t6,0(a5)
    25b8:	0485af83          	lw	t6,72(a1)
    25bc:	002f9f93          	slli	t6,t6,0x2
    25c0:	01f70fb3          	add	t6,a4,t6
    25c4:	01cfa623          	sw	t3,12(t6)
    25c8:	0485ae03          	lw	t3,72(a1)
    25cc:	001e0e13          	addi	t3,t3,1
    25d0:	002e1e13          	slli	t3,t3,0x2
    25d4:	01c70e33          	add	t3,a4,t3
    25d8:	01ee2623          	sw	t5,12(t3)
    25dc:	0485ae03          	lw	t3,72(a1)
    25e0:	002e0e13          	addi	t3,t3,2
    25e4:	002e1e13          	slli	t3,t3,0x2
    25e8:	01c70e33          	add	t3,a4,t3
    25ec:	005e2623          	sw	t0,12(t3)
    25f0:	0485ae03          	lw	t3,72(a1)
    25f4:	003e0e13          	addi	t3,t3,3
    25f8:	05c5a423          	sw	t3,72(a1)
    25fc:	d4cfe06f          	j	b48 <benchmark_body+0x9f8>
    2600:	03472f03          	lw	t5,52(a4)
    2604:	02872e03          	lw	t3,40(a4)
    2608:	01cf0463          	beq	t5,t3,2610 <benchmark_body+0x24c0>
    260c:	d5cfe06f          	j	b68 <benchmark_body+0xa18>
    2610:	02c72e03          	lw	t3,44(a4)
    2614:	03472f03          	lw	t5,52(a4)
    2618:	01ee4463          	blt	t3,t5,2620 <benchmark_body+0x24d0>
    261c:	d4cfe06f          	j	b68 <benchmark_body+0xa18>
    2620:	03072f83          	lw	t6,48(a4)
    2624:	01ee02b3          	add	t0,t3,t5
    2628:	03f72223          	sw	t6,36(a4)
    262c:	0007af83          	lw	t6,0(a5)
    2630:	ffcf8f93          	addi	t6,t6,-4
    2634:	01f7a023          	sw	t6,0(a5)
    2638:	0485af83          	lw	t6,72(a1)
    263c:	002f9f93          	slli	t6,t6,0x2
    2640:	01f70fb3          	add	t6,a4,t6
    2644:	01cfa623          	sw	t3,12(t6)
    2648:	0485ae03          	lw	t3,72(a1)
    264c:	001e0e13          	addi	t3,t3,1
    2650:	002e1e13          	slli	t3,t3,0x2
    2654:	01c70e33          	add	t3,a4,t3
    2658:	01ee2623          	sw	t5,12(t3)
    265c:	0485ae03          	lw	t3,72(a1)
    2660:	002e0e13          	addi	t3,t3,2
    2664:	002e1e13          	slli	t3,t3,0x2
    2668:	01c70e33          	add	t3,a4,t3
    266c:	005e2623          	sw	t0,12(t3)
    2670:	0485ae03          	lw	t3,72(a1)
    2674:	003e0e13          	addi	t3,t3,3
    2678:	05c5a423          	sw	t3,72(a1)
    267c:	cecfe06f          	j	b68 <benchmark_body+0xa18>
    2680:	03472f03          	lw	t5,52(a4)
    2684:	03072e03          	lw	t3,48(a4)
    2688:	01cf0463          	beq	t5,t3,2690 <benchmark_body+0x2540>
    268c:	cfcfe06f          	j	b88 <benchmark_body+0xa38>
    2690:	02c72e03          	lw	t3,44(a4)
    2694:	03472f03          	lw	t5,52(a4)
    2698:	01ee4463          	blt	t3,t5,26a0 <benchmark_body+0x2550>
    269c:	cecfe06f          	j	b88 <benchmark_body+0xa38>
    26a0:	02872f83          	lw	t6,40(a4)
    26a4:	01ee02b3          	add	t0,t3,t5
    26a8:	03f72223          	sw	t6,36(a4)
    26ac:	0007af83          	lw	t6,0(a5)
    26b0:	ffcf8f93          	addi	t6,t6,-4
    26b4:	01f7a023          	sw	t6,0(a5)
    26b8:	0485af83          	lw	t6,72(a1)
    26bc:	002f9f93          	slli	t6,t6,0x2
    26c0:	01f70fb3          	add	t6,a4,t6
    26c4:	01cfa623          	sw	t3,12(t6)
    26c8:	0485ae03          	lw	t3,72(a1)
    26cc:	001e0e13          	addi	t3,t3,1
    26d0:	002e1e13          	slli	t3,t3,0x2
    26d4:	01c70e33          	add	t3,a4,t3
    26d8:	01ee2623          	sw	t5,12(t3)
    26dc:	0485ae03          	lw	t3,72(a1)
    26e0:	002e0e13          	addi	t3,t3,2
    26e4:	002e1e13          	slli	t3,t3,0x2
    26e8:	01c70e33          	add	t3,a4,t3
    26ec:	005e2623          	sw	t0,12(t3)
    26f0:	0485ae03          	lw	t3,72(a1)
    26f4:	003e0e13          	addi	t3,t3,3
    26f8:	05c5a423          	sw	t3,72(a1)
    26fc:	c8cfe06f          	j	b88 <benchmark_body+0xa38>
    2700:	03472f03          	lw	t5,52(a4)
    2704:	02472e03          	lw	t3,36(a4)
    2708:	01cf0463          	beq	t5,t3,2710 <benchmark_body+0x25c0>
    270c:	c9cfe06f          	j	ba8 <benchmark_body+0xa58>
    2710:	02c72e03          	lw	t3,44(a4)
    2714:	03472f03          	lw	t5,52(a4)
    2718:	01ee4463          	blt	t3,t5,2720 <benchmark_body+0x25d0>
    271c:	c8cfe06f          	j	ba8 <benchmark_body+0xa58>
    2720:	03072f83          	lw	t6,48(a4)
    2724:	01ee02b3          	add	t0,t3,t5
    2728:	03f72223          	sw	t6,36(a4)
    272c:	0007af83          	lw	t6,0(a5)
    2730:	ffcf8f93          	addi	t6,t6,-4
    2734:	01f7a023          	sw	t6,0(a5)
    2738:	0485af83          	lw	t6,72(a1)
    273c:	002f9f93          	slli	t6,t6,0x2
    2740:	01f70fb3          	add	t6,a4,t6
    2744:	01cfa623          	sw	t3,12(t6)
    2748:	0485ae03          	lw	t3,72(a1)
    274c:	001e0e13          	addi	t3,t3,1
    2750:	002e1e13          	slli	t3,t3,0x2
    2754:	01c70e33          	add	t3,a4,t3
    2758:	01ee2623          	sw	t5,12(t3)
    275c:	0485ae03          	lw	t3,72(a1)
    2760:	002e0e13          	addi	t3,t3,2
    2764:	002e1e13          	slli	t3,t3,0x2
    2768:	01c70e33          	add	t3,a4,t3
    276c:	005e2623          	sw	t0,12(t3)
    2770:	0485ae03          	lw	t3,72(a1)
    2774:	003e0e13          	addi	t3,t3,3
    2778:	05c5a423          	sw	t3,72(a1)
    277c:	c2cfe06f          	j	ba8 <benchmark_body+0xa58>
    2780:	03472f03          	lw	t5,52(a4)
    2784:	03072e03          	lw	t3,48(a4)
    2788:	01cf0463          	beq	t5,t3,2790 <benchmark_body+0x2640>
    278c:	c3cfe06f          	j	bc8 <benchmark_body+0xa78>
    2790:	02c72e03          	lw	t3,44(a4)
    2794:	03472f03          	lw	t5,52(a4)
    2798:	01ee4463          	blt	t3,t5,27a0 <benchmark_body+0x2650>
    279c:	c2cfe06f          	j	bc8 <benchmark_body+0xa78>
    27a0:	0007af83          	lw	t6,0(a5)
    27a4:	01ee02b3          	add	t0,t3,t5
    27a8:	ffcf8f93          	addi	t6,t6,-4
    27ac:	01f7a023          	sw	t6,0(a5)
    27b0:	0485af83          	lw	t6,72(a1)
    27b4:	002f9f93          	slli	t6,t6,0x2
    27b8:	01f70fb3          	add	t6,a4,t6
    27bc:	01cfa623          	sw	t3,12(t6)
    27c0:	0485ae03          	lw	t3,72(a1)
    27c4:	001e0e13          	addi	t3,t3,1
    27c8:	002e1e13          	slli	t3,t3,0x2
    27cc:	01c70e33          	add	t3,a4,t3
    27d0:	01ee2623          	sw	t5,12(t3)
    27d4:	0485ae03          	lw	t3,72(a1)
    27d8:	002e0e13          	addi	t3,t3,2
    27dc:	002e1e13          	slli	t3,t3,0x2
    27e0:	01c70e33          	add	t3,a4,t3
    27e4:	005e2623          	sw	t0,12(t3)
    27e8:	0485ae03          	lw	t3,72(a1)
    27ec:	003e0e13          	addi	t3,t3,3
    27f0:	05c5a423          	sw	t3,72(a1)
    27f4:	bd4fe06f          	j	bc8 <benchmark_body+0xa78>
    27f8:	03472f03          	lw	t5,52(a4)
    27fc:	02472e03          	lw	t3,36(a4)
    2800:	01cf0463          	beq	t5,t3,2808 <benchmark_body+0x26b8>
    2804:	be4fe06f          	j	be8 <benchmark_body+0xa98>
    2808:	02c72e03          	lw	t3,44(a4)
    280c:	03472f03          	lw	t5,52(a4)
    2810:	01ee4463          	blt	t3,t5,2818 <benchmark_body+0x26c8>
    2814:	bd4fe06f          	j	be8 <benchmark_body+0xa98>
    2818:	02872f83          	lw	t6,40(a4)
    281c:	01ee02b3          	add	t0,t3,t5
    2820:	03f72223          	sw	t6,36(a4)
    2824:	0007af83          	lw	t6,0(a5)
    2828:	ffcf8f93          	addi	t6,t6,-4
    282c:	01f7a023          	sw	t6,0(a5)
    2830:	0485af83          	lw	t6,72(a1)
    2834:	002f9f93          	slli	t6,t6,0x2
    2838:	01f70fb3          	add	t6,a4,t6
    283c:	01cfa623          	sw	t3,12(t6)
    2840:	0485ae03          	lw	t3,72(a1)
    2844:	001e0e13          	addi	t3,t3,1
    2848:	002e1e13          	slli	t3,t3,0x2
    284c:	01c70e33          	add	t3,a4,t3
    2850:	01ee2623          	sw	t5,12(t3)
    2854:	0485ae03          	lw	t3,72(a1)
    2858:	002e0e13          	addi	t3,t3,2
    285c:	002e1e13          	slli	t3,t3,0x2
    2860:	01c70e33          	add	t3,a4,t3
    2864:	005e2623          	sw	t0,12(t3)
    2868:	0485ae03          	lw	t3,72(a1)
    286c:	003e0e13          	addi	t3,t3,3
    2870:	05c5a423          	sw	t3,72(a1)
    2874:	b74fe06f          	j	be8 <benchmark_body+0xa98>
    2878:	03472f03          	lw	t5,52(a4)
    287c:	02872e03          	lw	t3,40(a4)
    2880:	01cf0463          	beq	t5,t3,2888 <benchmark_body+0x2738>
    2884:	b84fe06f          	j	c08 <benchmark_body+0xab8>
    2888:	02c72e03          	lw	t3,44(a4)
    288c:	03472f03          	lw	t5,52(a4)
    2890:	01ee4463          	blt	t3,t5,2898 <benchmark_body+0x2748>
    2894:	b74fe06f          	j	c08 <benchmark_body+0xab8>
    2898:	0007af83          	lw	t6,0(a5)
    289c:	01ee02b3          	add	t0,t3,t5
    28a0:	ffcf8f93          	addi	t6,t6,-4
    28a4:	01f7a023          	sw	t6,0(a5)
    28a8:	0485af83          	lw	t6,72(a1)
    28ac:	002f9f93          	slli	t6,t6,0x2
    28b0:	01f70fb3          	add	t6,a4,t6
    28b4:	01cfa623          	sw	t3,12(t6)
    28b8:	0485ae03          	lw	t3,72(a1)
    28bc:	001e0e13          	addi	t3,t3,1
    28c0:	002e1e13          	slli	t3,t3,0x2
    28c4:	01c70e33          	add	t3,a4,t3
    28c8:	01ee2623          	sw	t5,12(t3)
    28cc:	0485ae03          	lw	t3,72(a1)
    28d0:	002e0e13          	addi	t3,t3,2
    28d4:	002e1e13          	slli	t3,t3,0x2
    28d8:	01c70e33          	add	t3,a4,t3
    28dc:	005e2623          	sw	t0,12(t3)
    28e0:	0485ae03          	lw	t3,72(a1)
    28e4:	003e0e13          	addi	t3,t3,3
    28e8:	05c5a423          	sw	t3,72(a1)
    28ec:	b1cfe06f          	j	c08 <benchmark_body+0xab8>
    28f0:	02472f03          	lw	t5,36(a4)
    28f4:	03472e03          	lw	t3,52(a4)
    28f8:	01cf0463          	beq	t5,t3,2900 <benchmark_body+0x27b0>
    28fc:	b2cfe06f          	j	c28 <benchmark_body+0xad8>
    2900:	03072e03          	lw	t3,48(a4)
    2904:	02472f03          	lw	t5,36(a4)
    2908:	01ee4463          	blt	t3,t5,2910 <benchmark_body+0x27c0>
    290c:	b1cfe06f          	j	c28 <benchmark_body+0xad8>
    2910:	02c72f83          	lw	t6,44(a4)
    2914:	01ee02b3          	add	t0,t3,t5
    2918:	03f72223          	sw	t6,36(a4)
    291c:	0007af83          	lw	t6,0(a5)
    2920:	ffcf8f93          	addi	t6,t6,-4
    2924:	01f7a023          	sw	t6,0(a5)
    2928:	0485af83          	lw	t6,72(a1)
    292c:	002f9f93          	slli	t6,t6,0x2
    2930:	01f70fb3          	add	t6,a4,t6
    2934:	01cfa623          	sw	t3,12(t6)
    2938:	0485ae03          	lw	t3,72(a1)
    293c:	001e0e13          	addi	t3,t3,1
    2940:	002e1e13          	slli	t3,t3,0x2
    2944:	01c70e33          	add	t3,a4,t3
    2948:	01ee2623          	sw	t5,12(t3)
    294c:	0485ae03          	lw	t3,72(a1)
    2950:	002e0e13          	addi	t3,t3,2
    2954:	002e1e13          	slli	t3,t3,0x2
    2958:	01c70e33          	add	t3,a4,t3
    295c:	005e2623          	sw	t0,12(t3)
    2960:	0485ae03          	lw	t3,72(a1)
    2964:	003e0e13          	addi	t3,t3,3
    2968:	05c5a423          	sw	t3,72(a1)
    296c:	abcfe06f          	j	c28 <benchmark_body+0xad8>
    2970:	02472f03          	lw	t5,36(a4)
    2974:	03472e03          	lw	t3,52(a4)
    2978:	01cf0463          	beq	t5,t3,2980 <benchmark_body+0x2830>
    297c:	accfe06f          	j	c48 <benchmark_body+0xaf8>
    2980:	03072e03          	lw	t3,48(a4)
    2984:	02472f03          	lw	t5,36(a4)
    2988:	01ee4463          	blt	t3,t5,2990 <benchmark_body+0x2840>
    298c:	abcfe06f          	j	c48 <benchmark_body+0xaf8>
    2990:	02872f83          	lw	t6,40(a4)
    2994:	01ee02b3          	add	t0,t3,t5
    2998:	03f72223          	sw	t6,36(a4)
    299c:	0007af83          	lw	t6,0(a5)
    29a0:	ffcf8f93          	addi	t6,t6,-4
    29a4:	01f7a023          	sw	t6,0(a5)
    29a8:	0485af83          	lw	t6,72(a1)
    29ac:	002f9f93          	slli	t6,t6,0x2
    29b0:	01f70fb3          	add	t6,a4,t6
    29b4:	01cfa623          	sw	t3,12(t6)
    29b8:	0485ae03          	lw	t3,72(a1)
    29bc:	001e0e13          	addi	t3,t3,1
    29c0:	002e1e13          	slli	t3,t3,0x2
    29c4:	01c70e33          	add	t3,a4,t3
    29c8:	01ee2623          	sw	t5,12(t3)
    29cc:	0485ae03          	lw	t3,72(a1)
    29d0:	002e0e13          	addi	t3,t3,2
    29d4:	002e1e13          	slli	t3,t3,0x2
    29d8:	01c70e33          	add	t3,a4,t3
    29dc:	005e2623          	sw	t0,12(t3)
    29e0:	0485ae03          	lw	t3,72(a1)
    29e4:	003e0e13          	addi	t3,t3,3
    29e8:	05c5a423          	sw	t3,72(a1)
    29ec:	a5cfe06f          	j	c48 <benchmark_body+0xaf8>
    29f0:	02472f03          	lw	t5,36(a4)
    29f4:	02872e03          	lw	t3,40(a4)
    29f8:	01cf0463          	beq	t5,t3,2a00 <benchmark_body+0x28b0>
    29fc:	a6cfe06f          	j	c68 <benchmark_body+0xb18>
    2a00:	03072e03          	lw	t3,48(a4)
    2a04:	02472f03          	lw	t5,36(a4)
    2a08:	01ee4463          	blt	t3,t5,2a10 <benchmark_body+0x28c0>
    2a0c:	a5cfe06f          	j	c68 <benchmark_body+0xb18>
    2a10:	02c72f83          	lw	t6,44(a4)
    2a14:	01ee02b3          	add	t0,t3,t5
    2a18:	03f72223          	sw	t6,36(a4)
    2a1c:	0007af83          	lw	t6,0(a5)
    2a20:	ffcf8f93          	addi	t6,t6,-4
    2a24:	01f7a023          	sw	t6,0(a5)
    2a28:	0485af83          	lw	t6,72(a1)
    2a2c:	002f9f93          	slli	t6,t6,0x2
    2a30:	01f70fb3          	add	t6,a4,t6
    2a34:	01cfa623          	sw	t3,12(t6)
    2a38:	0485ae03          	lw	t3,72(a1)
    2a3c:	001e0e13          	addi	t3,t3,1
    2a40:	002e1e13          	slli	t3,t3,0x2
    2a44:	01c70e33          	add	t3,a4,t3
    2a48:	01ee2623          	sw	t5,12(t3)
    2a4c:	0485ae03          	lw	t3,72(a1)
    2a50:	002e0e13          	addi	t3,t3,2
    2a54:	002e1e13          	slli	t3,t3,0x2
    2a58:	01c70e33          	add	t3,a4,t3
    2a5c:	005e2623          	sw	t0,12(t3)
    2a60:	0485ae03          	lw	t3,72(a1)
    2a64:	003e0e13          	addi	t3,t3,3
    2a68:	05c5a423          	sw	t3,72(a1)
    2a6c:	9fcfe06f          	j	c68 <benchmark_body+0xb18>
    2a70:	02472f03          	lw	t5,36(a4)
    2a74:	02c72e03          	lw	t3,44(a4)
    2a78:	01cf0463          	beq	t5,t3,2a80 <benchmark_body+0x2930>
    2a7c:	a0cfe06f          	j	c88 <benchmark_body+0xb38>
    2a80:	03072e03          	lw	t3,48(a4)
    2a84:	02472f03          	lw	t5,36(a4)
    2a88:	01ee4463          	blt	t3,t5,2a90 <benchmark_body+0x2940>
    2a8c:	9fcfe06f          	j	c88 <benchmark_body+0xb38>
    2a90:	02872f83          	lw	t6,40(a4)
    2a94:	01ee02b3          	add	t0,t3,t5
    2a98:	03f72223          	sw	t6,36(a4)
    2a9c:	0007af83          	lw	t6,0(a5)
    2aa0:	ffcf8f93          	addi	t6,t6,-4
    2aa4:	01f7a023          	sw	t6,0(a5)
    2aa8:	0485af83          	lw	t6,72(a1)
    2aac:	002f9f93          	slli	t6,t6,0x2
    2ab0:	01f70fb3          	add	t6,a4,t6
    2ab4:	01cfa623          	sw	t3,12(t6)
    2ab8:	0485ae03          	lw	t3,72(a1)
    2abc:	001e0e13          	addi	t3,t3,1
    2ac0:	002e1e13          	slli	t3,t3,0x2
    2ac4:	01c70e33          	add	t3,a4,t3
    2ac8:	01ee2623          	sw	t5,12(t3)
    2acc:	0485ae03          	lw	t3,72(a1)
    2ad0:	002e0e13          	addi	t3,t3,2
    2ad4:	002e1e13          	slli	t3,t3,0x2
    2ad8:	01c70e33          	add	t3,a4,t3
    2adc:	005e2623          	sw	t0,12(t3)
    2ae0:	0485ae03          	lw	t3,72(a1)
    2ae4:	003e0e13          	addi	t3,t3,3
    2ae8:	05c5a423          	sw	t3,72(a1)
    2aec:	99cfe06f          	j	c88 <benchmark_body+0xb38>
    2af0:	02872f03          	lw	t5,40(a4)
    2af4:	03472e03          	lw	t3,52(a4)
    2af8:	01cf0463          	beq	t5,t3,2b00 <benchmark_body+0x29b0>
    2afc:	9acfe06f          	j	ca8 <benchmark_body+0xb58>
    2b00:	03072e03          	lw	t3,48(a4)
    2b04:	02872f03          	lw	t5,40(a4)
    2b08:	01ee4463          	blt	t3,t5,2b10 <benchmark_body+0x29c0>
    2b0c:	99cfe06f          	j	ca8 <benchmark_body+0xb58>
    2b10:	02c72f83          	lw	t6,44(a4)
    2b14:	01ee02b3          	add	t0,t3,t5
    2b18:	03f72223          	sw	t6,36(a4)
    2b1c:	0007af83          	lw	t6,0(a5)
    2b20:	ffcf8f93          	addi	t6,t6,-4
    2b24:	01f7a023          	sw	t6,0(a5)
    2b28:	0485af83          	lw	t6,72(a1)
    2b2c:	002f9f93          	slli	t6,t6,0x2
    2b30:	01f70fb3          	add	t6,a4,t6
    2b34:	01cfa623          	sw	t3,12(t6)
    2b38:	0485ae03          	lw	t3,72(a1)
    2b3c:	001e0e13          	addi	t3,t3,1
    2b40:	002e1e13          	slli	t3,t3,0x2
    2b44:	01c70e33          	add	t3,a4,t3
    2b48:	01ee2623          	sw	t5,12(t3)
    2b4c:	0485ae03          	lw	t3,72(a1)
    2b50:	002e0e13          	addi	t3,t3,2
    2b54:	002e1e13          	slli	t3,t3,0x2
    2b58:	01c70e33          	add	t3,a4,t3
    2b5c:	005e2623          	sw	t0,12(t3)
    2b60:	0485ae03          	lw	t3,72(a1)
    2b64:	003e0e13          	addi	t3,t3,3
    2b68:	05c5a423          	sw	t3,72(a1)
    2b6c:	93cfe06f          	j	ca8 <benchmark_body+0xb58>
    2b70:	02872f03          	lw	t5,40(a4)
    2b74:	03472e03          	lw	t3,52(a4)
    2b78:	01cf0463          	beq	t5,t3,2b80 <benchmark_body+0x2a30>
    2b7c:	94cfe06f          	j	cc8 <benchmark_body+0xb78>
    2b80:	03072e03          	lw	t3,48(a4)
    2b84:	02872f03          	lw	t5,40(a4)
    2b88:	01ee4463          	blt	t3,t5,2b90 <benchmark_body+0x2a40>
    2b8c:	93cfe06f          	j	cc8 <benchmark_body+0xb78>
    2b90:	0007af83          	lw	t6,0(a5)
    2b94:	01ee02b3          	add	t0,t3,t5
    2b98:	ffcf8f93          	addi	t6,t6,-4
    2b9c:	01f7a023          	sw	t6,0(a5)
    2ba0:	0485af83          	lw	t6,72(a1)
    2ba4:	002f9f93          	slli	t6,t6,0x2
    2ba8:	01f70fb3          	add	t6,a4,t6
    2bac:	01cfa623          	sw	t3,12(t6)
    2bb0:	0485ae03          	lw	t3,72(a1)
    2bb4:	001e0e13          	addi	t3,t3,1
    2bb8:	002e1e13          	slli	t3,t3,0x2
    2bbc:	01c70e33          	add	t3,a4,t3
    2bc0:	01ee2623          	sw	t5,12(t3)
    2bc4:	0485ae03          	lw	t3,72(a1)
    2bc8:	002e0e13          	addi	t3,t3,2
    2bcc:	002e1e13          	slli	t3,t3,0x2
    2bd0:	01c70e33          	add	t3,a4,t3
    2bd4:	005e2623          	sw	t0,12(t3)
    2bd8:	0485ae03          	lw	t3,72(a1)
    2bdc:	003e0e13          	addi	t3,t3,3
    2be0:	05c5a423          	sw	t3,72(a1)
    2be4:	8e4fe06f          	j	cc8 <benchmark_body+0xb78>
    2be8:	02872f03          	lw	t5,40(a4)
    2bec:	02472e03          	lw	t3,36(a4)
    2bf0:	01cf0463          	beq	t5,t3,2bf8 <benchmark_body+0x2aa8>
    2bf4:	8f4fe06f          	j	ce8 <benchmark_body+0xb98>
    2bf8:	03072e03          	lw	t3,48(a4)
    2bfc:	02872f03          	lw	t5,40(a4)
    2c00:	01ee4463          	blt	t3,t5,2c08 <benchmark_body+0x2ab8>
    2c04:	8e4fe06f          	j	ce8 <benchmark_body+0xb98>
    2c08:	02c72f83          	lw	t6,44(a4)
    2c0c:	01ee02b3          	add	t0,t3,t5
    2c10:	03f72223          	sw	t6,36(a4)
    2c14:	0007af83          	lw	t6,0(a5)
    2c18:	ffcf8f93          	addi	t6,t6,-4
    2c1c:	01f7a023          	sw	t6,0(a5)
    2c20:	0485af83          	lw	t6,72(a1)
    2c24:	002f9f93          	slli	t6,t6,0x2
    2c28:	01f70fb3          	add	t6,a4,t6
    2c2c:	01cfa623          	sw	t3,12(t6)
    2c30:	0485ae03          	lw	t3,72(a1)
    2c34:	001e0e13          	addi	t3,t3,1
    2c38:	002e1e13          	slli	t3,t3,0x2
    2c3c:	01c70e33          	add	t3,a4,t3
    2c40:	01ee2623          	sw	t5,12(t3)
    2c44:	0485ae03          	lw	t3,72(a1)
    2c48:	002e0e13          	addi	t3,t3,2
    2c4c:	002e1e13          	slli	t3,t3,0x2
    2c50:	01c70e33          	add	t3,a4,t3
    2c54:	005e2623          	sw	t0,12(t3)
    2c58:	0485ae03          	lw	t3,72(a1)
    2c5c:	003e0e13          	addi	t3,t3,3
    2c60:	05c5a423          	sw	t3,72(a1)
    2c64:	884fe06f          	j	ce8 <benchmark_body+0xb98>
    2c68:	02872f03          	lw	t5,40(a4)
    2c6c:	02c72e03          	lw	t3,44(a4)
    2c70:	01cf0463          	beq	t5,t3,2c78 <benchmark_body+0x2b28>
    2c74:	894fe06f          	j	d08 <benchmark_body+0xbb8>
    2c78:	03072e03          	lw	t3,48(a4)
    2c7c:	02872f03          	lw	t5,40(a4)
    2c80:	01ee4463          	blt	t3,t5,2c88 <benchmark_body+0x2b38>
    2c84:	884fe06f          	j	d08 <benchmark_body+0xbb8>
    2c88:	0007af83          	lw	t6,0(a5)
    2c8c:	01ee02b3          	add	t0,t3,t5
    2c90:	ffcf8f93          	addi	t6,t6,-4
    2c94:	01f7a023          	sw	t6,0(a5)
    2c98:	0485af83          	lw	t6,72(a1)
    2c9c:	002f9f93          	slli	t6,t6,0x2
    2ca0:	01f70fb3          	add	t6,a4,t6
    2ca4:	01cfa623          	sw	t3,12(t6)
    2ca8:	0485ae03          	lw	t3,72(a1)
    2cac:	001e0e13          	addi	t3,t3,1
    2cb0:	002e1e13          	slli	t3,t3,0x2
    2cb4:	01c70e33          	add	t3,a4,t3
    2cb8:	01ee2623          	sw	t5,12(t3)
    2cbc:	0485ae03          	lw	t3,72(a1)
    2cc0:	002e0e13          	addi	t3,t3,2
    2cc4:	002e1e13          	slli	t3,t3,0x2
    2cc8:	01c70e33          	add	t3,a4,t3
    2ccc:	005e2623          	sw	t0,12(t3)
    2cd0:	0485ae03          	lw	t3,72(a1)
    2cd4:	003e0e13          	addi	t3,t3,3
    2cd8:	05c5a423          	sw	t3,72(a1)
    2cdc:	82cfe06f          	j	d08 <benchmark_body+0xbb8>
    2ce0:	02c72f03          	lw	t5,44(a4)
    2ce4:	03472e03          	lw	t3,52(a4)
    2ce8:	01cf0463          	beq	t5,t3,2cf0 <benchmark_body+0x2ba0>
    2cec:	83cfe06f          	j	d28 <benchmark_body+0xbd8>
    2cf0:	03072e03          	lw	t3,48(a4)
    2cf4:	02c72f03          	lw	t5,44(a4)
    2cf8:	01ee4463          	blt	t3,t5,2d00 <benchmark_body+0x2bb0>
    2cfc:	82cfe06f          	j	d28 <benchmark_body+0xbd8>
    2d00:	02872f83          	lw	t6,40(a4)
    2d04:	01ee02b3          	add	t0,t3,t5
    2d08:	03f72223          	sw	t6,36(a4)
    2d0c:	0007af83          	lw	t6,0(a5)
    2d10:	ffcf8f93          	addi	t6,t6,-4
    2d14:	01f7a023          	sw	t6,0(a5)
    2d18:	0485af83          	lw	t6,72(a1)
    2d1c:	002f9f93          	slli	t6,t6,0x2
    2d20:	01f70fb3          	add	t6,a4,t6
    2d24:	01cfa623          	sw	t3,12(t6)
    2d28:	0485ae03          	lw	t3,72(a1)
    2d2c:	001e0e13          	addi	t3,t3,1
    2d30:	002e1e13          	slli	t3,t3,0x2
    2d34:	01c70e33          	add	t3,a4,t3
    2d38:	01ee2623          	sw	t5,12(t3)
    2d3c:	0485ae03          	lw	t3,72(a1)
    2d40:	002e0e13          	addi	t3,t3,2
    2d44:	002e1e13          	slli	t3,t3,0x2
    2d48:	01c70e33          	add	t3,a4,t3
    2d4c:	005e2623          	sw	t0,12(t3)
    2d50:	0485ae03          	lw	t3,72(a1)
    2d54:	003e0e13          	addi	t3,t3,3
    2d58:	05c5a423          	sw	t3,72(a1)
    2d5c:	fcdfd06f          	j	d28 <benchmark_body+0xbd8>
    2d60:	02c72f03          	lw	t5,44(a4)
    2d64:	03472e03          	lw	t3,52(a4)
    2d68:	01cf0463          	beq	t5,t3,2d70 <benchmark_body+0x2c20>
    2d6c:	fddfd06f          	j	d48 <benchmark_body+0xbf8>
    2d70:	03072e03          	lw	t3,48(a4)
    2d74:	02c72f03          	lw	t5,44(a4)
    2d78:	01ee4463          	blt	t3,t5,2d80 <benchmark_body+0x2c30>
    2d7c:	fcdfd06f          	j	d48 <benchmark_body+0xbf8>
    2d80:	0007af83          	lw	t6,0(a5)
    2d84:	01ee02b3          	add	t0,t3,t5
    2d88:	ffcf8f93          	addi	t6,t6,-4
    2d8c:	01f7a023          	sw	t6,0(a5)
    2d90:	0485af83          	lw	t6,72(a1)
    2d94:	002f9f93          	slli	t6,t6,0x2
    2d98:	01f70fb3          	add	t6,a4,t6
    2d9c:	01cfa623          	sw	t3,12(t6)
    2da0:	0485ae03          	lw	t3,72(a1)
    2da4:	001e0e13          	addi	t3,t3,1
    2da8:	002e1e13          	slli	t3,t3,0x2
    2dac:	01c70e33          	add	t3,a4,t3
    2db0:	01ee2623          	sw	t5,12(t3)
    2db4:	0485ae03          	lw	t3,72(a1)
    2db8:	002e0e13          	addi	t3,t3,2
    2dbc:	002e1e13          	slli	t3,t3,0x2
    2dc0:	01c70e33          	add	t3,a4,t3
    2dc4:	005e2623          	sw	t0,12(t3)
    2dc8:	0485ae03          	lw	t3,72(a1)
    2dcc:	003e0e13          	addi	t3,t3,3
    2dd0:	05c5a423          	sw	t3,72(a1)
    2dd4:	f75fd06f          	j	d48 <benchmark_body+0xbf8>
    2dd8:	02c72f03          	lw	t5,44(a4)
    2ddc:	02472e03          	lw	t3,36(a4)
    2de0:	01cf0463          	beq	t5,t3,2de8 <benchmark_body+0x2c98>
    2de4:	f85fd06f          	j	d68 <benchmark_body+0xc18>
    2de8:	03072e03          	lw	t3,48(a4)
    2dec:	02c72f03          	lw	t5,44(a4)
    2df0:	01ee4463          	blt	t3,t5,2df8 <benchmark_body+0x2ca8>
    2df4:	f75fd06f          	j	d68 <benchmark_body+0xc18>
    2df8:	02872f83          	lw	t6,40(a4)
    2dfc:	01ee02b3          	add	t0,t3,t5
    2e00:	03f72223          	sw	t6,36(a4)
    2e04:	0007af83          	lw	t6,0(a5)
    2e08:	ffcf8f93          	addi	t6,t6,-4
    2e0c:	01f7a023          	sw	t6,0(a5)
    2e10:	0485af83          	lw	t6,72(a1)
    2e14:	002f9f93          	slli	t6,t6,0x2
    2e18:	01f70fb3          	add	t6,a4,t6
    2e1c:	01cfa623          	sw	t3,12(t6)
    2e20:	0485ae03          	lw	t3,72(a1)
    2e24:	001e0e13          	addi	t3,t3,1
    2e28:	002e1e13          	slli	t3,t3,0x2
    2e2c:	01c70e33          	add	t3,a4,t3
    2e30:	01ee2623          	sw	t5,12(t3)
    2e34:	0485ae03          	lw	t3,72(a1)
    2e38:	002e0e13          	addi	t3,t3,2
    2e3c:	002e1e13          	slli	t3,t3,0x2
    2e40:	01c70e33          	add	t3,a4,t3
    2e44:	005e2623          	sw	t0,12(t3)
    2e48:	0485ae03          	lw	t3,72(a1)
    2e4c:	003e0e13          	addi	t3,t3,3
    2e50:	05c5a423          	sw	t3,72(a1)
    2e54:	f15fd06f          	j	d68 <benchmark_body+0xc18>
    2e58:	03072f03          	lw	t5,48(a4)
    2e5c:	02872e03          	lw	t3,40(a4)
    2e60:	01cf0463          	beq	t5,t3,2e68 <benchmark_body+0x2d18>
    2e64:	a6cfe06f          	j	10d0 <benchmark_body+0xf80>
    2e68:	03472e03          	lw	t3,52(a4)
    2e6c:	03072f03          	lw	t5,48(a4)
    2e70:	01ee4463          	blt	t3,t5,2e78 <benchmark_body+0x2d28>
    2e74:	a5cfe06f          	j	10d0 <benchmark_body+0xf80>
    2e78:	0007af83          	lw	t6,0(a5)
    2e7c:	01ee02b3          	add	t0,t3,t5
    2e80:	ffcf8f93          	addi	t6,t6,-4
    2e84:	01f7a023          	sw	t6,0(a5)
    2e88:	0485af83          	lw	t6,72(a1)
    2e8c:	002f9f93          	slli	t6,t6,0x2
    2e90:	01f70fb3          	add	t6,a4,t6
    2e94:	01cfa623          	sw	t3,12(t6)
    2e98:	0485ae03          	lw	t3,72(a1)
    2e9c:	001e0e13          	addi	t3,t3,1
    2ea0:	002e1e13          	slli	t3,t3,0x2
    2ea4:	01c70e33          	add	t3,a4,t3
    2ea8:	01ee2623          	sw	t5,12(t3)
    2eac:	0485ae03          	lw	t3,72(a1)
    2eb0:	002e0e13          	addi	t3,t3,2
    2eb4:	002e1e13          	slli	t3,t3,0x2
    2eb8:	01c70e33          	add	t3,a4,t3
    2ebc:	005e2623          	sw	t0,12(t3)
    2ec0:	0485ae03          	lw	t3,72(a1)
    2ec4:	003e0e13          	addi	t3,t3,3
    2ec8:	05c5a423          	sw	t3,72(a1)
    2ecc:	a04fe06f          	j	10d0 <benchmark_body+0xf80>
    2ed0:	00072e03          	lw	t3,0(a4)
    2ed4:	00472f03          	lw	t5,4(a4)
    2ed8:	01ee4463          	blt	t3,t5,2ee0 <benchmark_body+0x2d90>
    2edc:	accfd06f          	j	1a8 <benchmark_body+0x58>
    2ee0:	00482f83          	lw	t6,4(a6)
    2ee4:	41ee02b3          	sub	t0,t3,t5
    2ee8:	ffdf8f93          	addi	t6,t6,-3
    2eec:	01f82223          	sw	t6,4(a6)
    2ef0:	0485af83          	lw	t6,72(a1)
    2ef4:	002f9f93          	slli	t6,t6,0x2
    2ef8:	01f70fb3          	add	t6,a4,t6
    2efc:	01cfa623          	sw	t3,12(t6)
    2f00:	0485ae03          	lw	t3,72(a1)
    2f04:	001e0e13          	addi	t3,t3,1
    2f08:	002e1e13          	slli	t3,t3,0x2
    2f0c:	01c70e33          	add	t3,a4,t3
    2f10:	01ee2623          	sw	t5,12(t3)
    2f14:	0485ae03          	lw	t3,72(a1)
    2f18:	002e0e13          	addi	t3,t3,2
    2f1c:	002e1e13          	slli	t3,t3,0x2
    2f20:	01c70e33          	add	t3,a4,t3
    2f24:	005e2623          	sw	t0,12(t3)
    2f28:	0485ae03          	lw	t3,72(a1)
    2f2c:	003e0e13          	addi	t3,t3,3
    2f30:	05c5a423          	sw	t3,72(a1)
    2f34:	a74fd06f          	j	1a8 <benchmark_body+0x58>
    2f38:	00072e03          	lw	t3,0(a4)
    2f3c:	00872f03          	lw	t5,8(a4)
    2f40:	01ee4463          	blt	t3,t5,2f48 <benchmark_body+0x2df8>
    2f44:	a84fd06f          	j	1c8 <benchmark_body+0x78>
    2f48:	00482f83          	lw	t6,4(a6)
    2f4c:	41ee02b3          	sub	t0,t3,t5
    2f50:	ffdf8f93          	addi	t6,t6,-3
    2f54:	01f82223          	sw	t6,4(a6)
    2f58:	0485af83          	lw	t6,72(a1)
    2f5c:	002f9f93          	slli	t6,t6,0x2
    2f60:	01f70fb3          	add	t6,a4,t6
    2f64:	01cfa623          	sw	t3,12(t6)
    2f68:	0485ae03          	lw	t3,72(a1)
    2f6c:	001e0e13          	addi	t3,t3,1
    2f70:	002e1e13          	slli	t3,t3,0x2
    2f74:	01c70e33          	add	t3,a4,t3
    2f78:	01ee2623          	sw	t5,12(t3)
    2f7c:	0485ae03          	lw	t3,72(a1)
    2f80:	002e0e13          	addi	t3,t3,2
    2f84:	002e1e13          	slli	t3,t3,0x2
    2f88:	01c70e33          	add	t3,a4,t3
    2f8c:	005e2623          	sw	t0,12(t3)
    2f90:	0485ae03          	lw	t3,72(a1)
    2f94:	003e0e13          	addi	t3,t3,3
    2f98:	05c5a423          	sw	t3,72(a1)
    2f9c:	a2cfd06f          	j	1c8 <benchmark_body+0x78>
    2fa0:	00472e03          	lw	t3,4(a4)
    2fa4:	00072f03          	lw	t5,0(a4)
    2fa8:	01ee4463          	blt	t3,t5,2fb0 <benchmark_body+0x2e60>
    2fac:	a3cfd06f          	j	1e8 <benchmark_body+0x98>
    2fb0:	00482f83          	lw	t6,4(a6)
    2fb4:	41ee02b3          	sub	t0,t3,t5
    2fb8:	ffdf8f93          	addi	t6,t6,-3
    2fbc:	01f82223          	sw	t6,4(a6)
    2fc0:	0485af83          	lw	t6,72(a1)
    2fc4:	002f9f93          	slli	t6,t6,0x2
    2fc8:	01f70fb3          	add	t6,a4,t6
    2fcc:	01cfa623          	sw	t3,12(t6)
    2fd0:	0485ae03          	lw	t3,72(a1)
    2fd4:	001e0e13          	addi	t3,t3,1
    2fd8:	002e1e13          	slli	t3,t3,0x2
    2fdc:	01c70e33          	add	t3,a4,t3
    2fe0:	01ee2623          	sw	t5,12(t3)
    2fe4:	0485ae03          	lw	t3,72(a1)
    2fe8:	002e0e13          	addi	t3,t3,2
    2fec:	002e1e13          	slli	t3,t3,0x2
    2ff0:	01c70e33          	add	t3,a4,t3
    2ff4:	005e2623          	sw	t0,12(t3)
    2ff8:	0485ae03          	lw	t3,72(a1)
    2ffc:	003e0e13          	addi	t3,t3,3
    3000:	05c5a423          	sw	t3,72(a1)
    3004:	9e4fd06f          	j	1e8 <benchmark_body+0x98>
    3008:	00472e03          	lw	t3,4(a4)
    300c:	00872f03          	lw	t5,8(a4)
    3010:	01ee4463          	blt	t3,t5,3018 <benchmark_body+0x2ec8>
    3014:	9f4fd06f          	j	208 <benchmark_body+0xb8>
    3018:	00482f83          	lw	t6,4(a6)
    301c:	41ee02b3          	sub	t0,t3,t5
    3020:	ffdf8f93          	addi	t6,t6,-3
    3024:	01f82223          	sw	t6,4(a6)
    3028:	0485af83          	lw	t6,72(a1)
    302c:	002f9f93          	slli	t6,t6,0x2
    3030:	01f70fb3          	add	t6,a4,t6
    3034:	01cfa623          	sw	t3,12(t6)
    3038:	0485ae03          	lw	t3,72(a1)
    303c:	001e0e13          	addi	t3,t3,1
    3040:	002e1e13          	slli	t3,t3,0x2
    3044:	01c70e33          	add	t3,a4,t3
    3048:	01ee2623          	sw	t5,12(t3)
    304c:	0485ae03          	lw	t3,72(a1)
    3050:	002e0e13          	addi	t3,t3,2
    3054:	002e1e13          	slli	t3,t3,0x2
    3058:	01c70e33          	add	t3,a4,t3
    305c:	005e2623          	sw	t0,12(t3)
    3060:	0485ae03          	lw	t3,72(a1)
    3064:	003e0e13          	addi	t3,t3,3
    3068:	05c5a423          	sw	t3,72(a1)
    306c:	99cfd06f          	j	208 <benchmark_body+0xb8>
    3070:	00872e03          	lw	t3,8(a4)
    3074:	00072f03          	lw	t5,0(a4)
    3078:	01ee4463          	blt	t3,t5,3080 <benchmark_body+0x2f30>
    307c:	9acfd06f          	j	228 <benchmark_body+0xd8>
    3080:	00482f83          	lw	t6,4(a6)
    3084:	41ee02b3          	sub	t0,t3,t5
    3088:	ffdf8f93          	addi	t6,t6,-3
    308c:	01f82223          	sw	t6,4(a6)
    3090:	0485af83          	lw	t6,72(a1)
    3094:	002f9f93          	slli	t6,t6,0x2
    3098:	01f70fb3          	add	t6,a4,t6
    309c:	01cfa623          	sw	t3,12(t6)
    30a0:	0485ae03          	lw	t3,72(a1)
    30a4:	001e0e13          	addi	t3,t3,1
    30a8:	002e1e13          	slli	t3,t3,0x2
    30ac:	01c70e33          	add	t3,a4,t3
    30b0:	01ee2623          	sw	t5,12(t3)
    30b4:	0485ae03          	lw	t3,72(a1)
    30b8:	002e0e13          	addi	t3,t3,2
    30bc:	002e1e13          	slli	t3,t3,0x2
    30c0:	01c70e33          	add	t3,a4,t3
    30c4:	005e2623          	sw	t0,12(t3)
    30c8:	0485ae03          	lw	t3,72(a1)
    30cc:	003e0e13          	addi	t3,t3,3
    30d0:	05c5a423          	sw	t3,72(a1)
    30d4:	954fd06f          	j	228 <benchmark_body+0xd8>
    30d8:	00872e03          	lw	t3,8(a4)
    30dc:	00472f03          	lw	t5,4(a4)
    30e0:	01ee4463          	blt	t3,t5,30e8 <benchmark_body+0x2f98>
    30e4:	964fd06f          	j	248 <benchmark_body+0xf8>
    30e8:	00482f83          	lw	t6,4(a6)
    30ec:	41ee02b3          	sub	t0,t3,t5
    30f0:	ffdf8f93          	addi	t6,t6,-3
    30f4:	01f82223          	sw	t6,4(a6)
    30f8:	0485af83          	lw	t6,72(a1)
    30fc:	002f9f93          	slli	t6,t6,0x2
    3100:	01f70fb3          	add	t6,a4,t6
    3104:	01cfa623          	sw	t3,12(t6)
    3108:	0485ae03          	lw	t3,72(a1)
    310c:	001e0e13          	addi	t3,t3,1
    3110:	002e1e13          	slli	t3,t3,0x2
    3114:	01c70e33          	add	t3,a4,t3
    3118:	01ee2623          	sw	t5,12(t3)
    311c:	0485ae03          	lw	t3,72(a1)
    3120:	002e0e13          	addi	t3,t3,2
    3124:	002e1e13          	slli	t3,t3,0x2
    3128:	01c70e33          	add	t3,a4,t3
    312c:	005e2623          	sw	t0,12(t3)
    3130:	0485ae03          	lw	t3,72(a1)
    3134:	003e0e13          	addi	t3,t3,3
    3138:	05c5a423          	sw	t3,72(a1)
    313c:	90cfd06f          	j	248 <benchmark_body+0xf8>
    3140:	02872f03          	lw	t5,40(a4)
    3144:	03072e03          	lw	t3,48(a4)
    3148:	01cf0463          	beq	t5,t3,3150 <benchmark_body+0x3000>
    314c:	91cfd06f          	j	268 <benchmark_body+0x118>
    3150:	02472e03          	lw	t3,36(a4)
    3154:	02872f03          	lw	t5,40(a4)
    3158:	01ee4463          	blt	t3,t5,3160 <benchmark_body+0x3010>
    315c:	90cfd06f          	j	268 <benchmark_body+0x118>
    3160:	0007af83          	lw	t6,0(a5)
    3164:	01ee02b3          	add	t0,t3,t5
    3168:	ffcf8f93          	addi	t6,t6,-4
    316c:	01f7a023          	sw	t6,0(a5)
    3170:	0485af83          	lw	t6,72(a1)
    3174:	002f9f93          	slli	t6,t6,0x2
    3178:	01f70fb3          	add	t6,a4,t6
    317c:	01cfa623          	sw	t3,12(t6)
    3180:	0485ae03          	lw	t3,72(a1)
    3184:	001e0e13          	addi	t3,t3,1
    3188:	002e1e13          	slli	t3,t3,0x2
    318c:	01c70e33          	add	t3,a4,t3
    3190:	01ee2623          	sw	t5,12(t3)
    3194:	0485ae03          	lw	t3,72(a1)
    3198:	002e0e13          	addi	t3,t3,2
    319c:	002e1e13          	slli	t3,t3,0x2
    31a0:	01c70e33          	add	t3,a4,t3
    31a4:	005e2623          	sw	t0,12(t3)
    31a8:	0485ae03          	lw	t3,72(a1)
    31ac:	003e0e13          	addi	t3,t3,3
    31b0:	05c5a423          	sw	t3,72(a1)
    31b4:	8b4fd06f          	j	268 <benchmark_body+0x118>
    31b8:	02872f03          	lw	t5,40(a4)
    31bc:	02c72e03          	lw	t3,44(a4)
    31c0:	01cf0463          	beq	t5,t3,31c8 <benchmark_body+0x3078>
    31c4:	8c4fd06f          	j	288 <benchmark_body+0x138>
    31c8:	02472e03          	lw	t3,36(a4)
    31cc:	02872f03          	lw	t5,40(a4)
    31d0:	01ee4463          	blt	t3,t5,31d8 <benchmark_body+0x3088>
    31d4:	8b4fd06f          	j	288 <benchmark_body+0x138>
    31d8:	0007af83          	lw	t6,0(a5)
    31dc:	01ee02b3          	add	t0,t3,t5
    31e0:	ffcf8f93          	addi	t6,t6,-4
    31e4:	01f7a023          	sw	t6,0(a5)
    31e8:	0485af83          	lw	t6,72(a1)
    31ec:	002f9f93          	slli	t6,t6,0x2
    31f0:	01f70fb3          	add	t6,a4,t6
    31f4:	01cfa623          	sw	t3,12(t6)
    31f8:	0485ae03          	lw	t3,72(a1)
    31fc:	001e0e13          	addi	t3,t3,1
    3200:	002e1e13          	slli	t3,t3,0x2
    3204:	01c70e33          	add	t3,a4,t3
    3208:	01ee2623          	sw	t5,12(t3)
    320c:	0485ae03          	lw	t3,72(a1)
    3210:	002e0e13          	addi	t3,t3,2
    3214:	002e1e13          	slli	t3,t3,0x2
    3218:	01c70e33          	add	t3,a4,t3
    321c:	005e2623          	sw	t0,12(t3)
    3220:	0485ae03          	lw	t3,72(a1)
    3224:	003e0e13          	addi	t3,t3,3
    3228:	05c5a423          	sw	t3,72(a1)
    322c:	85cfd06f          	j	288 <benchmark_body+0x138>
    3230:	02c72f03          	lw	t5,44(a4)
    3234:	03072e03          	lw	t3,48(a4)
    3238:	01cf0463          	beq	t5,t3,3240 <benchmark_body+0x30f0>
    323c:	86cfd06f          	j	2a8 <benchmark_body+0x158>
    3240:	02472e03          	lw	t3,36(a4)
    3244:	02c72f03          	lw	t5,44(a4)
    3248:	01ee4463          	blt	t3,t5,3250 <benchmark_body+0x3100>
    324c:	85cfd06f          	j	2a8 <benchmark_body+0x158>
    3250:	0007af83          	lw	t6,0(a5)
    3254:	01ee02b3          	add	t0,t3,t5
    3258:	ffcf8f93          	addi	t6,t6,-4
    325c:	01f7a023          	sw	t6,0(a5)
    3260:	0485af83          	lw	t6,72(a1)
    3264:	002f9f93          	slli	t6,t6,0x2
    3268:	01f70fb3          	add	t6,a4,t6
    326c:	01cfa623          	sw	t3,12(t6)
    3270:	0485ae03          	lw	t3,72(a1)
    3274:	001e0e13          	addi	t3,t3,1
    3278:	002e1e13          	slli	t3,t3,0x2
    327c:	01c70e33          	add	t3,a4,t3
    3280:	01ee2623          	sw	t5,12(t3)
    3284:	0485ae03          	lw	t3,72(a1)
    3288:	002e0e13          	addi	t3,t3,2
    328c:	002e1e13          	slli	t3,t3,0x2
    3290:	01c70e33          	add	t3,a4,t3
    3294:	005e2623          	sw	t0,12(t3)
    3298:	0485ae03          	lw	t3,72(a1)
    329c:	003e0e13          	addi	t3,t3,3
    32a0:	05c5a423          	sw	t3,72(a1)
    32a4:	804fd06f          	j	2a8 <benchmark_body+0x158>
    32a8:	02c72f03          	lw	t5,44(a4)
    32ac:	02872e03          	lw	t3,40(a4)
    32b0:	01cf0463          	beq	t5,t3,32b8 <benchmark_body+0x3168>
    32b4:	814fd06f          	j	2c8 <benchmark_body+0x178>
    32b8:	02472e03          	lw	t3,36(a4)
    32bc:	02c72f03          	lw	t5,44(a4)
    32c0:	01ee4463          	blt	t3,t5,32c8 <benchmark_body+0x3178>
    32c4:	804fd06f          	j	2c8 <benchmark_body+0x178>
    32c8:	0007af83          	lw	t6,0(a5)
    32cc:	01ee02b3          	add	t0,t3,t5
    32d0:	ffcf8f93          	addi	t6,t6,-4
    32d4:	01f7a023          	sw	t6,0(a5)
    32d8:	0485af83          	lw	t6,72(a1)
    32dc:	002f9f93          	slli	t6,t6,0x2
    32e0:	01f70fb3          	add	t6,a4,t6
    32e4:	01cfa623          	sw	t3,12(t6)
    32e8:	0485ae03          	lw	t3,72(a1)
    32ec:	001e0e13          	addi	t3,t3,1
    32f0:	002e1e13          	slli	t3,t3,0x2
    32f4:	01c70e33          	add	t3,a4,t3
    32f8:	01ee2623          	sw	t5,12(t3)
    32fc:	0485ae03          	lw	t3,72(a1)
    3300:	002e0e13          	addi	t3,t3,2
    3304:	002e1e13          	slli	t3,t3,0x2
    3308:	01c70e33          	add	t3,a4,t3
    330c:	005e2623          	sw	t0,12(t3)
    3310:	0485ae03          	lw	t3,72(a1)
    3314:	003e0e13          	addi	t3,t3,3
    3318:	05c5a423          	sw	t3,72(a1)
    331c:	fadfc06f          	j	2c8 <benchmark_body+0x178>
    3320:	03072f03          	lw	t5,48(a4)
    3324:	02c72e03          	lw	t3,44(a4)
    3328:	01cf0463          	beq	t5,t3,3330 <benchmark_body+0x31e0>
    332c:	fbdfc06f          	j	2e8 <benchmark_body+0x198>
    3330:	02472e03          	lw	t3,36(a4)
    3334:	03072f03          	lw	t5,48(a4)
    3338:	01ee4463          	blt	t3,t5,3340 <benchmark_body+0x31f0>
    333c:	fadfc06f          	j	2e8 <benchmark_body+0x198>
    3340:	0007af83          	lw	t6,0(a5)
    3344:	01ee02b3          	add	t0,t3,t5
    3348:	ffcf8f93          	addi	t6,t6,-4
    334c:	01f7a023          	sw	t6,0(a5)
    3350:	0485af83          	lw	t6,72(a1)
    3354:	002f9f93          	slli	t6,t6,0x2
    3358:	01f70fb3          	add	t6,a4,t6
    335c:	01cfa623          	sw	t3,12(t6)
    3360:	0485ae03          	lw	t3,72(a1)
    3364:	001e0e13          	addi	t3,t3,1
    3368:	002e1e13          	slli	t3,t3,0x2
    336c:	01c70e33          	add	t3,a4,t3
    3370:	01ee2623          	sw	t5,12(t3)
    3374:	0485ae03          	lw	t3,72(a1)
    3378:	002e0e13          	addi	t3,t3,2
    337c:	002e1e13          	slli	t3,t3,0x2
    3380:	01c70e33          	add	t3,a4,t3
    3384:	005e2623          	sw	t0,12(t3)
    3388:	0485ae03          	lw	t3,72(a1)
    338c:	003e0e13          	addi	t3,t3,3
    3390:	05c5a423          	sw	t3,72(a1)
    3394:	f55fc06f          	j	2e8 <benchmark_body+0x198>
    3398:	03072f03          	lw	t5,48(a4)
    339c:	02872e03          	lw	t3,40(a4)
    33a0:	01cf0463          	beq	t5,t3,33a8 <benchmark_body+0x3258>
    33a4:	f65fc06f          	j	308 <benchmark_body+0x1b8>
    33a8:	02472e03          	lw	t3,36(a4)
    33ac:	03072f03          	lw	t5,48(a4)
    33b0:	01ee4463          	blt	t3,t5,33b8 <benchmark_body+0x3268>
    33b4:	f55fc06f          	j	308 <benchmark_body+0x1b8>
    33b8:	0007af83          	lw	t6,0(a5)
    33bc:	01ee02b3          	add	t0,t3,t5
    33c0:	ffcf8f93          	addi	t6,t6,-4
    33c4:	01f7a023          	sw	t6,0(a5)
    33c8:	0485af83          	lw	t6,72(a1)
    33cc:	002f9f93          	slli	t6,t6,0x2
    33d0:	01f70fb3          	add	t6,a4,t6
    33d4:	01cfa623          	sw	t3,12(t6)
    33d8:	0485ae03          	lw	t3,72(a1)
    33dc:	001e0e13          	addi	t3,t3,1
    33e0:	002e1e13          	slli	t3,t3,0x2
    33e4:	01c70e33          	add	t3,a4,t3
    33e8:	01ee2623          	sw	t5,12(t3)
    33ec:	0485ae03          	lw	t3,72(a1)
    33f0:	002e0e13          	addi	t3,t3,2
    33f4:	002e1e13          	slli	t3,t3,0x2
    33f8:	01c70e33          	add	t3,a4,t3
    33fc:	005e2623          	sw	t0,12(t3)
    3400:	0485ae03          	lw	t3,72(a1)
    3404:	003e0e13          	addi	t3,t3,3
    3408:	05c5a423          	sw	t3,72(a1)
    340c:	efdfc06f          	j	308 <benchmark_body+0x1b8>
    3410:	02472f03          	lw	t5,36(a4)
    3414:	03072e03          	lw	t3,48(a4)
    3418:	01cf0463          	beq	t5,t3,3420 <benchmark_body+0x32d0>
    341c:	f0dfc06f          	j	328 <benchmark_body+0x1d8>
    3420:	02872e03          	lw	t3,40(a4)
    3424:	02472f03          	lw	t5,36(a4)
    3428:	01ee4463          	blt	t3,t5,3430 <benchmark_body+0x32e0>
    342c:	efdfc06f          	j	328 <benchmark_body+0x1d8>
    3430:	0007af83          	lw	t6,0(a5)
    3434:	01ee02b3          	add	t0,t3,t5
    3438:	ffcf8f93          	addi	t6,t6,-4
    343c:	01f7a023          	sw	t6,0(a5)
    3440:	0485af83          	lw	t6,72(a1)
    3444:	002f9f93          	slli	t6,t6,0x2
    3448:	01f70fb3          	add	t6,a4,t6
    344c:	01cfa623          	sw	t3,12(t6)
    3450:	0485ae03          	lw	t3,72(a1)
    3454:	001e0e13          	addi	t3,t3,1
    3458:	002e1e13          	slli	t3,t3,0x2
    345c:	01c70e33          	add	t3,a4,t3
    3460:	01ee2623          	sw	t5,12(t3)
    3464:	0485ae03          	lw	t3,72(a1)
    3468:	002e0e13          	addi	t3,t3,2
    346c:	002e1e13          	slli	t3,t3,0x2
    3470:	01c70e33          	add	t3,a4,t3
    3474:	005e2623          	sw	t0,12(t3)
    3478:	0485ae03          	lw	t3,72(a1)
    347c:	003e0e13          	addi	t3,t3,3
    3480:	05c5a423          	sw	t3,72(a1)
    3484:	ea5fc06f          	j	328 <benchmark_body+0x1d8>
    3488:	02472f03          	lw	t5,36(a4)
    348c:	02c72e03          	lw	t3,44(a4)
    3490:	01cf0463          	beq	t5,t3,3498 <benchmark_body+0x3348>
    3494:	eb5fc06f          	j	348 <benchmark_body+0x1f8>
    3498:	02872e03          	lw	t3,40(a4)
    349c:	02472f03          	lw	t5,36(a4)
    34a0:	01ee4463          	blt	t3,t5,34a8 <benchmark_body+0x3358>
    34a4:	ea5fc06f          	j	348 <benchmark_body+0x1f8>
    34a8:	0007af83          	lw	t6,0(a5)
    34ac:	01ee02b3          	add	t0,t3,t5
    34b0:	ffcf8f93          	addi	t6,t6,-4
    34b4:	01f7a023          	sw	t6,0(a5)
    34b8:	0485af83          	lw	t6,72(a1)
    34bc:	002f9f93          	slli	t6,t6,0x2
    34c0:	01f70fb3          	add	t6,a4,t6
    34c4:	01cfa623          	sw	t3,12(t6)
    34c8:	0485ae03          	lw	t3,72(a1)
    34cc:	001e0e13          	addi	t3,t3,1
    34d0:	002e1e13          	slli	t3,t3,0x2
    34d4:	01c70e33          	add	t3,a4,t3
    34d8:	01ee2623          	sw	t5,12(t3)
    34dc:	0485ae03          	lw	t3,72(a1)
    34e0:	002e0e13          	addi	t3,t3,2
    34e4:	002e1e13          	slli	t3,t3,0x2
    34e8:	01c70e33          	add	t3,a4,t3
    34ec:	005e2623          	sw	t0,12(t3)
    34f0:	0485ae03          	lw	t3,72(a1)
    34f4:	003e0e13          	addi	t3,t3,3
    34f8:	05c5a423          	sw	t3,72(a1)
    34fc:	e4dfc06f          	j	348 <benchmark_body+0x1f8>
    3500:	02c72f03          	lw	t5,44(a4)
    3504:	03072e03          	lw	t3,48(a4)
    3508:	01cf0463          	beq	t5,t3,3510 <benchmark_body+0x33c0>
    350c:	e5dfc06f          	j	368 <benchmark_body+0x218>
    3510:	02872e03          	lw	t3,40(a4)
    3514:	02c72f03          	lw	t5,44(a4)
    3518:	01ee4463          	blt	t3,t5,3520 <benchmark_body+0x33d0>
    351c:	e4dfc06f          	j	368 <benchmark_body+0x218>
    3520:	0007af83          	lw	t6,0(a5)
    3524:	01ee02b3          	add	t0,t3,t5
    3528:	ffcf8f93          	addi	t6,t6,-4
    352c:	01f7a023          	sw	t6,0(a5)
    3530:	0485af83          	lw	t6,72(a1)
    3534:	002f9f93          	slli	t6,t6,0x2
    3538:	01f70fb3          	add	t6,a4,t6
    353c:	01cfa623          	sw	t3,12(t6)
    3540:	0485ae03          	lw	t3,72(a1)
    3544:	001e0e13          	addi	t3,t3,1
    3548:	002e1e13          	slli	t3,t3,0x2
    354c:	01c70e33          	add	t3,a4,t3
    3550:	01ee2623          	sw	t5,12(t3)
    3554:	0485ae03          	lw	t3,72(a1)
    3558:	002e0e13          	addi	t3,t3,2
    355c:	002e1e13          	slli	t3,t3,0x2
    3560:	01c70e33          	add	t3,a4,t3
    3564:	005e2623          	sw	t0,12(t3)
    3568:	0485ae03          	lw	t3,72(a1)
    356c:	003e0e13          	addi	t3,t3,3
    3570:	05c5a423          	sw	t3,72(a1)
    3574:	df5fc06f          	j	368 <benchmark_body+0x218>
    3578:	02c72f03          	lw	t5,44(a4)
    357c:	02472e03          	lw	t3,36(a4)
    3580:	01cf0463          	beq	t5,t3,3588 <benchmark_body+0x3438>
    3584:	e05fc06f          	j	388 <benchmark_body+0x238>
    3588:	02872e03          	lw	t3,40(a4)
    358c:	02c72f03          	lw	t5,44(a4)
    3590:	01ee4463          	blt	t3,t5,3598 <benchmark_body+0x3448>
    3594:	df5fc06f          	j	388 <benchmark_body+0x238>
    3598:	0007af83          	lw	t6,0(a5)
    359c:	01ee02b3          	add	t0,t3,t5
    35a0:	ffcf8f93          	addi	t6,t6,-4
    35a4:	01f7a023          	sw	t6,0(a5)
    35a8:	0485af83          	lw	t6,72(a1)
    35ac:	002f9f93          	slli	t6,t6,0x2
    35b0:	01f70fb3          	add	t6,a4,t6
    35b4:	01cfa623          	sw	t3,12(t6)
    35b8:	0485ae03          	lw	t3,72(a1)
    35bc:	001e0e13          	addi	t3,t3,1
    35c0:	002e1e13          	slli	t3,t3,0x2
    35c4:	01c70e33          	add	t3,a4,t3
    35c8:	01ee2623          	sw	t5,12(t3)
    35cc:	0485ae03          	lw	t3,72(a1)
    35d0:	002e0e13          	addi	t3,t3,2
    35d4:	002e1e13          	slli	t3,t3,0x2
    35d8:	01c70e33          	add	t3,a4,t3
    35dc:	005e2623          	sw	t0,12(t3)
    35e0:	0485ae03          	lw	t3,72(a1)
    35e4:	003e0e13          	addi	t3,t3,3
    35e8:	05c5a423          	sw	t3,72(a1)
    35ec:	d9dfc06f          	j	388 <benchmark_body+0x238>
    35f0:	03072f03          	lw	t5,48(a4)
    35f4:	02c72e03          	lw	t3,44(a4)
    35f8:	01cf0463          	beq	t5,t3,3600 <benchmark_body+0x34b0>
    35fc:	dadfc06f          	j	3a8 <benchmark_body+0x258>
    3600:	02872e03          	lw	t3,40(a4)
    3604:	03072f03          	lw	t5,48(a4)
    3608:	01ee4463          	blt	t3,t5,3610 <benchmark_body+0x34c0>
    360c:	d9dfc06f          	j	3a8 <benchmark_body+0x258>
    3610:	0007af83          	lw	t6,0(a5)
    3614:	01ee02b3          	add	t0,t3,t5
    3618:	ffcf8f93          	addi	t6,t6,-4
    361c:	01f7a023          	sw	t6,0(a5)
    3620:	0485af83          	lw	t6,72(a1)
    3624:	002f9f93          	slli	t6,t6,0x2
    3628:	01f70fb3          	add	t6,a4,t6
    362c:	01cfa623          	sw	t3,12(t6)
    3630:	0485ae03          	lw	t3,72(a1)
    3634:	001e0e13          	addi	t3,t3,1
    3638:	002e1e13          	slli	t3,t3,0x2
    363c:	01c70e33          	add	t3,a4,t3
    3640:	01ee2623          	sw	t5,12(t3)
    3644:	0485ae03          	lw	t3,72(a1)
    3648:	002e0e13          	addi	t3,t3,2
    364c:	002e1e13          	slli	t3,t3,0x2
    3650:	01c70e33          	add	t3,a4,t3
    3654:	005e2623          	sw	t0,12(t3)
    3658:	0485ae03          	lw	t3,72(a1)
    365c:	003e0e13          	addi	t3,t3,3
    3660:	05c5a423          	sw	t3,72(a1)
    3664:	d45fc06f          	j	3a8 <benchmark_body+0x258>
    3668:	03072f03          	lw	t5,48(a4)
    366c:	02472e03          	lw	t3,36(a4)
    3670:	01cf0463          	beq	t5,t3,3678 <benchmark_body+0x3528>
    3674:	d55fc06f          	j	3c8 <benchmark_body+0x278>
    3678:	02872e03          	lw	t3,40(a4)
    367c:	03072f03          	lw	t5,48(a4)
    3680:	01ee4463          	blt	t3,t5,3688 <benchmark_body+0x3538>
    3684:	d45fc06f          	j	3c8 <benchmark_body+0x278>
    3688:	0007af83          	lw	t6,0(a5)
    368c:	01ee02b3          	add	t0,t3,t5
    3690:	ffcf8f93          	addi	t6,t6,-4
    3694:	01f7a023          	sw	t6,0(a5)
    3698:	0485af83          	lw	t6,72(a1)
    369c:	002f9f93          	slli	t6,t6,0x2
    36a0:	01f70fb3          	add	t6,a4,t6
    36a4:	01cfa623          	sw	t3,12(t6)
    36a8:	0485ae03          	lw	t3,72(a1)
    36ac:	001e0e13          	addi	t3,t3,1
    36b0:	002e1e13          	slli	t3,t3,0x2
    36b4:	01c70e33          	add	t3,a4,t3
    36b8:	01ee2623          	sw	t5,12(t3)
    36bc:	0485ae03          	lw	t3,72(a1)
    36c0:	002e0e13          	addi	t3,t3,2
    36c4:	002e1e13          	slli	t3,t3,0x2
    36c8:	01c70e33          	add	t3,a4,t3
    36cc:	005e2623          	sw	t0,12(t3)
    36d0:	0485ae03          	lw	t3,72(a1)
    36d4:	003e0e13          	addi	t3,t3,3
    36d8:	05c5a423          	sw	t3,72(a1)
    36dc:	cedfc06f          	j	3c8 <benchmark_body+0x278>
    36e0:	02472f03          	lw	t5,36(a4)
    36e4:	03072e03          	lw	t3,48(a4)
    36e8:	01cf0463          	beq	t5,t3,36f0 <benchmark_body+0x35a0>
    36ec:	cfdfc06f          	j	3e8 <benchmark_body+0x298>
    36f0:	02c72e03          	lw	t3,44(a4)
    36f4:	02472f03          	lw	t5,36(a4)
    36f8:	01ee4463          	blt	t3,t5,3700 <benchmark_body+0x35b0>
    36fc:	cedfc06f          	j	3e8 <benchmark_body+0x298>
    3700:	0007af83          	lw	t6,0(a5)
    3704:	01ee02b3          	add	t0,t3,t5
    3708:	ffcf8f93          	addi	t6,t6,-4
    370c:	01f7a023          	sw	t6,0(a5)
    3710:	0485af83          	lw	t6,72(a1)
    3714:	002f9f93          	slli	t6,t6,0x2
    3718:	01f70fb3          	add	t6,a4,t6
    371c:	01cfa623          	sw	t3,12(t6)
    3720:	0485ae03          	lw	t3,72(a1)
    3724:	001e0e13          	addi	t3,t3,1
    3728:	002e1e13          	slli	t3,t3,0x2
    372c:	01c70e33          	add	t3,a4,t3
    3730:	01ee2623          	sw	t5,12(t3)
    3734:	0485ae03          	lw	t3,72(a1)
    3738:	002e0e13          	addi	t3,t3,2
    373c:	002e1e13          	slli	t3,t3,0x2
    3740:	01c70e33          	add	t3,a4,t3
    3744:	005e2623          	sw	t0,12(t3)
    3748:	0485ae03          	lw	t3,72(a1)
    374c:	003e0e13          	addi	t3,t3,3
    3750:	05c5a423          	sw	t3,72(a1)
    3754:	c95fc06f          	j	3e8 <benchmark_body+0x298>
    3758:	02472f03          	lw	t5,36(a4)
    375c:	02872e03          	lw	t3,40(a4)
    3760:	01cf0463          	beq	t5,t3,3768 <benchmark_body+0x3618>
    3764:	ca5fc06f          	j	408 <benchmark_body+0x2b8>
    3768:	02c72e03          	lw	t3,44(a4)
    376c:	02472f03          	lw	t5,36(a4)
    3770:	01ee4463          	blt	t3,t5,3778 <benchmark_body+0x3628>
    3774:	c95fc06f          	j	408 <benchmark_body+0x2b8>
    3778:	0007af83          	lw	t6,0(a5)
    377c:	01ee02b3          	add	t0,t3,t5
    3780:	ffcf8f93          	addi	t6,t6,-4
    3784:	01f7a023          	sw	t6,0(a5)
    3788:	0485af83          	lw	t6,72(a1)
    378c:	002f9f93          	slli	t6,t6,0x2
    3790:	01f70fb3          	add	t6,a4,t6
    3794:	01cfa623          	sw	t3,12(t6)
    3798:	0485ae03          	lw	t3,72(a1)
    379c:	001e0e13          	addi	t3,t3,1
    37a0:	002e1e13          	slli	t3,t3,0x2
    37a4:	01c70e33          	add	t3,a4,t3
    37a8:	01ee2623          	sw	t5,12(t3)
    37ac:	0485ae03          	lw	t3,72(a1)
    37b0:	002e0e13          	addi	t3,t3,2
    37b4:	002e1e13          	slli	t3,t3,0x2
    37b8:	01c70e33          	add	t3,a4,t3
    37bc:	005e2623          	sw	t0,12(t3)
    37c0:	0485ae03          	lw	t3,72(a1)
    37c4:	003e0e13          	addi	t3,t3,3
    37c8:	05c5a423          	sw	t3,72(a1)
    37cc:	c3dfc06f          	j	408 <benchmark_body+0x2b8>
    37d0:	02872f03          	lw	t5,40(a4)
    37d4:	03072e03          	lw	t3,48(a4)
    37d8:	01cf0463          	beq	t5,t3,37e0 <benchmark_body+0x3690>
    37dc:	c4dfc06f          	j	428 <benchmark_body+0x2d8>
    37e0:	02c72e03          	lw	t3,44(a4)
    37e4:	02872f03          	lw	t5,40(a4)
    37e8:	01ee4463          	blt	t3,t5,37f0 <benchmark_body+0x36a0>
    37ec:	c3dfc06f          	j	428 <benchmark_body+0x2d8>
    37f0:	0007af83          	lw	t6,0(a5)
    37f4:	01ee02b3          	add	t0,t3,t5
    37f8:	ffcf8f93          	addi	t6,t6,-4
    37fc:	01f7a023          	sw	t6,0(a5)
    3800:	0485af83          	lw	t6,72(a1)
    3804:	002f9f93          	slli	t6,t6,0x2
    3808:	01f70fb3          	add	t6,a4,t6
    380c:	01cfa623          	sw	t3,12(t6)
    3810:	0485ae03          	lw	t3,72(a1)
    3814:	001e0e13          	addi	t3,t3,1
    3818:	002e1e13          	slli	t3,t3,0x2
    381c:	01c70e33          	add	t3,a4,t3
    3820:	01ee2623          	sw	t5,12(t3)
    3824:	0485ae03          	lw	t3,72(a1)
    3828:	002e0e13          	addi	t3,t3,2
    382c:	002e1e13          	slli	t3,t3,0x2
    3830:	01c70e33          	add	t3,a4,t3
    3834:	005e2623          	sw	t0,12(t3)
    3838:	0485ae03          	lw	t3,72(a1)
    383c:	003e0e13          	addi	t3,t3,3
    3840:	05c5a423          	sw	t3,72(a1)
    3844:	be5fc06f          	j	428 <benchmark_body+0x2d8>
    3848:	02872f03          	lw	t5,40(a4)
    384c:	02472e03          	lw	t3,36(a4)
    3850:	01cf0463          	beq	t5,t3,3858 <benchmark_body+0x3708>
    3854:	bf5fc06f          	j	448 <benchmark_body+0x2f8>
    3858:	02c72e03          	lw	t3,44(a4)
    385c:	02872f03          	lw	t5,40(a4)
    3860:	01ee4463          	blt	t3,t5,3868 <benchmark_body+0x3718>
    3864:	be5fc06f          	j	448 <benchmark_body+0x2f8>
    3868:	0007af83          	lw	t6,0(a5)
    386c:	01ee02b3          	add	t0,t3,t5
    3870:	ffcf8f93          	addi	t6,t6,-4
    3874:	01f7a023          	sw	t6,0(a5)
    3878:	0485af83          	lw	t6,72(a1)
    387c:	002f9f93          	slli	t6,t6,0x2
    3880:	01f70fb3          	add	t6,a4,t6
    3884:	01cfa623          	sw	t3,12(t6)
    3888:	0485ae03          	lw	t3,72(a1)
    388c:	001e0e13          	addi	t3,t3,1
    3890:	002e1e13          	slli	t3,t3,0x2
    3894:	01c70e33          	add	t3,a4,t3
    3898:	01ee2623          	sw	t5,12(t3)
    389c:	0485ae03          	lw	t3,72(a1)
    38a0:	002e0e13          	addi	t3,t3,2
    38a4:	002e1e13          	slli	t3,t3,0x2
    38a8:	01c70e33          	add	t3,a4,t3
    38ac:	005e2623          	sw	t0,12(t3)
    38b0:	0485ae03          	lw	t3,72(a1)
    38b4:	003e0e13          	addi	t3,t3,3
    38b8:	05c5a423          	sw	t3,72(a1)
    38bc:	b8dfc06f          	j	448 <benchmark_body+0x2f8>
    38c0:	03072f03          	lw	t5,48(a4)
    38c4:	02872e03          	lw	t3,40(a4)
    38c8:	01cf0463          	beq	t5,t3,38d0 <benchmark_body+0x3780>
    38cc:	b9dfc06f          	j	468 <benchmark_body+0x318>
    38d0:	02c72e03          	lw	t3,44(a4)
    38d4:	03072f03          	lw	t5,48(a4)
    38d8:	01ee4463          	blt	t3,t5,38e0 <benchmark_body+0x3790>
    38dc:	b8dfc06f          	j	468 <benchmark_body+0x318>
    38e0:	0007af83          	lw	t6,0(a5)
    38e4:	01ee02b3          	add	t0,t3,t5
    38e8:	ffcf8f93          	addi	t6,t6,-4
    38ec:	01f7a023          	sw	t6,0(a5)
    38f0:	0485af83          	lw	t6,72(a1)
    38f4:	002f9f93          	slli	t6,t6,0x2
    38f8:	01f70fb3          	add	t6,a4,t6
    38fc:	01cfa623          	sw	t3,12(t6)
    3900:	0485ae03          	lw	t3,72(a1)
    3904:	001e0e13          	addi	t3,t3,1
    3908:	002e1e13          	slli	t3,t3,0x2
    390c:	01c70e33          	add	t3,a4,t3
    3910:	01ee2623          	sw	t5,12(t3)
    3914:	0485ae03          	lw	t3,72(a1)
    3918:	002e0e13          	addi	t3,t3,2
    391c:	002e1e13          	slli	t3,t3,0x2
    3920:	01c70e33          	add	t3,a4,t3
    3924:	005e2623          	sw	t0,12(t3)
    3928:	0485ae03          	lw	t3,72(a1)
    392c:	003e0e13          	addi	t3,t3,3
    3930:	05c5a423          	sw	t3,72(a1)
    3934:	b35fc06f          	j	468 <benchmark_body+0x318>
    3938:	03072f03          	lw	t5,48(a4)
    393c:	02472e03          	lw	t3,36(a4)
    3940:	01cf0463          	beq	t5,t3,3948 <benchmark_body+0x37f8>
    3944:	b45fc06f          	j	488 <benchmark_body+0x338>
    3948:	02c72e03          	lw	t3,44(a4)
    394c:	03072f03          	lw	t5,48(a4)
    3950:	01ee4463          	blt	t3,t5,3958 <benchmark_body+0x3808>
    3954:	b35fc06f          	j	488 <benchmark_body+0x338>
    3958:	0007af83          	lw	t6,0(a5)
    395c:	01ee02b3          	add	t0,t3,t5
    3960:	ffcf8f93          	addi	t6,t6,-4
    3964:	01f7a023          	sw	t6,0(a5)
    3968:	0485af83          	lw	t6,72(a1)
    396c:	002f9f93          	slli	t6,t6,0x2
    3970:	01f70fb3          	add	t6,a4,t6
    3974:	01cfa623          	sw	t3,12(t6)
    3978:	0485ae03          	lw	t3,72(a1)
    397c:	001e0e13          	addi	t3,t3,1
    3980:	002e1e13          	slli	t3,t3,0x2
    3984:	01c70e33          	add	t3,a4,t3
    3988:	01ee2623          	sw	t5,12(t3)
    398c:	0485ae03          	lw	t3,72(a1)
    3990:	002e0e13          	addi	t3,t3,2
    3994:	002e1e13          	slli	t3,t3,0x2
    3998:	01c70e33          	add	t3,a4,t3
    399c:	005e2623          	sw	t0,12(t3)
    39a0:	0485ae03          	lw	t3,72(a1)
    39a4:	003e0e13          	addi	t3,t3,3
    39a8:	05c5a423          	sw	t3,72(a1)
    39ac:	addfc06f          	j	488 <benchmark_body+0x338>
    39b0:	02472f03          	lw	t5,36(a4)
    39b4:	02c72e03          	lw	t3,44(a4)
    39b8:	01cf0463          	beq	t5,t3,39c0 <benchmark_body+0x3870>
    39bc:	aedfc06f          	j	4a8 <benchmark_body+0x358>
    39c0:	03072e03          	lw	t3,48(a4)
    39c4:	02472f03          	lw	t5,36(a4)
    39c8:	01ee4463          	blt	t3,t5,39d0 <benchmark_body+0x3880>
    39cc:	addfc06f          	j	4a8 <benchmark_body+0x358>
    39d0:	0007af83          	lw	t6,0(a5)
    39d4:	01ee02b3          	add	t0,t3,t5
    39d8:	ffcf8f93          	addi	t6,t6,-4
    39dc:	01f7a023          	sw	t6,0(a5)
    39e0:	0485af83          	lw	t6,72(a1)
    39e4:	002f9f93          	slli	t6,t6,0x2
    39e8:	01f70fb3          	add	t6,a4,t6
    39ec:	01cfa623          	sw	t3,12(t6)
    39f0:	0485ae03          	lw	t3,72(a1)
    39f4:	001e0e13          	addi	t3,t3,1
    39f8:	002e1e13          	slli	t3,t3,0x2
    39fc:	01c70e33          	add	t3,a4,t3
    3a00:	01ee2623          	sw	t5,12(t3)
    3a04:	0485ae03          	lw	t3,72(a1)
    3a08:	002e0e13          	addi	t3,t3,2
    3a0c:	002e1e13          	slli	t3,t3,0x2
    3a10:	01c70e33          	add	t3,a4,t3
    3a14:	005e2623          	sw	t0,12(t3)
    3a18:	0485ae03          	lw	t3,72(a1)
    3a1c:	003e0e13          	addi	t3,t3,3
    3a20:	05c5a423          	sw	t3,72(a1)
    3a24:	a85fc06f          	j	4a8 <benchmark_body+0x358>
    3a28:	02472f03          	lw	t5,36(a4)
    3a2c:	02872e03          	lw	t3,40(a4)
    3a30:	01cf0463          	beq	t5,t3,3a38 <benchmark_body+0x38e8>
    3a34:	a95fc06f          	j	4c8 <benchmark_body+0x378>
    3a38:	03072e03          	lw	t3,48(a4)
    3a3c:	02472f03          	lw	t5,36(a4)
    3a40:	01ee4463          	blt	t3,t5,3a48 <benchmark_body+0x38f8>
    3a44:	a85fc06f          	j	4c8 <benchmark_body+0x378>
    3a48:	0007af83          	lw	t6,0(a5)
    3a4c:	01ee02b3          	add	t0,t3,t5
    3a50:	ffcf8f93          	addi	t6,t6,-4
    3a54:	01f7a023          	sw	t6,0(a5)
    3a58:	0485af83          	lw	t6,72(a1)
    3a5c:	002f9f93          	slli	t6,t6,0x2
    3a60:	01f70fb3          	add	t6,a4,t6
    3a64:	01cfa623          	sw	t3,12(t6)
    3a68:	0485ae03          	lw	t3,72(a1)
    3a6c:	001e0e13          	addi	t3,t3,1
    3a70:	002e1e13          	slli	t3,t3,0x2
    3a74:	01c70e33          	add	t3,a4,t3
    3a78:	01ee2623          	sw	t5,12(t3)
    3a7c:	0485ae03          	lw	t3,72(a1)
    3a80:	002e0e13          	addi	t3,t3,2
    3a84:	002e1e13          	slli	t3,t3,0x2
    3a88:	01c70e33          	add	t3,a4,t3
    3a8c:	005e2623          	sw	t0,12(t3)
    3a90:	0485ae03          	lw	t3,72(a1)
    3a94:	003e0e13          	addi	t3,t3,3
    3a98:	05c5a423          	sw	t3,72(a1)
    3a9c:	a2dfc06f          	j	4c8 <benchmark_body+0x378>
    3aa0:	02872f03          	lw	t5,40(a4)
    3aa4:	02c72e03          	lw	t3,44(a4)
    3aa8:	01cf0463          	beq	t5,t3,3ab0 <benchmark_body+0x3960>
    3aac:	a3dfc06f          	j	4e8 <benchmark_body+0x398>
    3ab0:	03072e03          	lw	t3,48(a4)
    3ab4:	02872f03          	lw	t5,40(a4)
    3ab8:	01ee4463          	blt	t3,t5,3ac0 <benchmark_body+0x3970>
    3abc:	a2dfc06f          	j	4e8 <benchmark_body+0x398>
    3ac0:	0007af83          	lw	t6,0(a5)
    3ac4:	01ee02b3          	add	t0,t3,t5
    3ac8:	ffcf8f93          	addi	t6,t6,-4
    3acc:	01f7a023          	sw	t6,0(a5)
    3ad0:	0485af83          	lw	t6,72(a1)
    3ad4:	002f9f93          	slli	t6,t6,0x2
    3ad8:	01f70fb3          	add	t6,a4,t6
    3adc:	01cfa623          	sw	t3,12(t6)
    3ae0:	0485ae03          	lw	t3,72(a1)
    3ae4:	001e0e13          	addi	t3,t3,1
    3ae8:	002e1e13          	slli	t3,t3,0x2
    3aec:	01c70e33          	add	t3,a4,t3
    3af0:	01ee2623          	sw	t5,12(t3)
    3af4:	0485ae03          	lw	t3,72(a1)
    3af8:	002e0e13          	addi	t3,t3,2
    3afc:	002e1e13          	slli	t3,t3,0x2
    3b00:	01c70e33          	add	t3,a4,t3
    3b04:	005e2623          	sw	t0,12(t3)
    3b08:	0485ae03          	lw	t3,72(a1)
    3b0c:	003e0e13          	addi	t3,t3,3
    3b10:	05c5a423          	sw	t3,72(a1)
    3b14:	9d5fc06f          	j	4e8 <benchmark_body+0x398>
    3b18:	02872f03          	lw	t5,40(a4)
    3b1c:	02472e03          	lw	t3,36(a4)
    3b20:	01cf0463          	beq	t5,t3,3b28 <benchmark_body+0x39d8>
    3b24:	9e5fc06f          	j	508 <benchmark_body+0x3b8>
    3b28:	03072e03          	lw	t3,48(a4)
    3b2c:	02872f03          	lw	t5,40(a4)
    3b30:	01ee4463          	blt	t3,t5,3b38 <benchmark_body+0x39e8>
    3b34:	9d5fc06f          	j	508 <benchmark_body+0x3b8>
    3b38:	0007af83          	lw	t6,0(a5)
    3b3c:	01ee02b3          	add	t0,t3,t5
    3b40:	ffcf8f93          	addi	t6,t6,-4
    3b44:	01f7a023          	sw	t6,0(a5)
    3b48:	0485af83          	lw	t6,72(a1)
    3b4c:	002f9f93          	slli	t6,t6,0x2
    3b50:	01f70fb3          	add	t6,a4,t6
    3b54:	01cfa623          	sw	t3,12(t6)
    3b58:	0485ae03          	lw	t3,72(a1)
    3b5c:	001e0e13          	addi	t3,t3,1
    3b60:	002e1e13          	slli	t3,t3,0x2
    3b64:	01c70e33          	add	t3,a4,t3
    3b68:	01ee2623          	sw	t5,12(t3)
    3b6c:	0485ae03          	lw	t3,72(a1)
    3b70:	002e0e13          	addi	t3,t3,2
    3b74:	002e1e13          	slli	t3,t3,0x2
    3b78:	01c70e33          	add	t3,a4,t3
    3b7c:	005e2623          	sw	t0,12(t3)
    3b80:	0485ae03          	lw	t3,72(a1)
    3b84:	003e0e13          	addi	t3,t3,3
    3b88:	05c5a423          	sw	t3,72(a1)
    3b8c:	97dfc06f          	j	508 <benchmark_body+0x3b8>
    3b90:	02c72f03          	lw	t5,44(a4)
    3b94:	02872e03          	lw	t3,40(a4)
    3b98:	01cf0463          	beq	t5,t3,3ba0 <benchmark_body+0x3a50>
    3b9c:	98dfc06f          	j	528 <benchmark_body+0x3d8>
    3ba0:	03072e03          	lw	t3,48(a4)
    3ba4:	02c72f03          	lw	t5,44(a4)
    3ba8:	01ee4463          	blt	t3,t5,3bb0 <benchmark_body+0x3a60>
    3bac:	97dfc06f          	j	528 <benchmark_body+0x3d8>
    3bb0:	0007af83          	lw	t6,0(a5)
    3bb4:	01ee02b3          	add	t0,t3,t5
    3bb8:	ffcf8f93          	addi	t6,t6,-4
    3bbc:	01f7a023          	sw	t6,0(a5)
    3bc0:	0485af83          	lw	t6,72(a1)
    3bc4:	002f9f93          	slli	t6,t6,0x2
    3bc8:	01f70fb3          	add	t6,a4,t6
    3bcc:	01cfa623          	sw	t3,12(t6)
    3bd0:	0485ae03          	lw	t3,72(a1)
    3bd4:	001e0e13          	addi	t3,t3,1
    3bd8:	002e1e13          	slli	t3,t3,0x2
    3bdc:	01c70e33          	add	t3,a4,t3
    3be0:	01ee2623          	sw	t5,12(t3)
    3be4:	0485ae03          	lw	t3,72(a1)
    3be8:	002e0e13          	addi	t3,t3,2
    3bec:	002e1e13          	slli	t3,t3,0x2
    3bf0:	01c70e33          	add	t3,a4,t3
    3bf4:	005e2623          	sw	t0,12(t3)
    3bf8:	0485ae03          	lw	t3,72(a1)
    3bfc:	003e0e13          	addi	t3,t3,3
    3c00:	05c5a423          	sw	t3,72(a1)
    3c04:	925fc06f          	j	528 <benchmark_body+0x3d8>
    3c08:	02c72f03          	lw	t5,44(a4)
    3c0c:	02472e03          	lw	t3,36(a4)
    3c10:	01cf0463          	beq	t5,t3,3c18 <benchmark_body+0x3ac8>
    3c14:	935fc06f          	j	548 <benchmark_body+0x3f8>
    3c18:	03072e03          	lw	t3,48(a4)
    3c1c:	02c72f03          	lw	t5,44(a4)
    3c20:	01ee4463          	blt	t3,t5,3c28 <benchmark_body+0x3ad8>
    3c24:	925fc06f          	j	548 <benchmark_body+0x3f8>
    3c28:	0007af83          	lw	t6,0(a5)
    3c2c:	01ee02b3          	add	t0,t3,t5
    3c30:	ffcf8f93          	addi	t6,t6,-4
    3c34:	01f7a023          	sw	t6,0(a5)
    3c38:	0485af83          	lw	t6,72(a1)
    3c3c:	002f9f93          	slli	t6,t6,0x2
    3c40:	01f70fb3          	add	t6,a4,t6
    3c44:	01cfa623          	sw	t3,12(t6)
    3c48:	0485ae03          	lw	t3,72(a1)
    3c4c:	001e0e13          	addi	t3,t3,1
    3c50:	002e1e13          	slli	t3,t3,0x2
    3c54:	01c70e33          	add	t3,a4,t3
    3c58:	01ee2623          	sw	t5,12(t3)
    3c5c:	0485ae03          	lw	t3,72(a1)
    3c60:	002e0e13          	addi	t3,t3,2
    3c64:	002e1e13          	slli	t3,t3,0x2
    3c68:	01c70e33          	add	t3,a4,t3
    3c6c:	005e2623          	sw	t0,12(t3)
    3c70:	0485ae03          	lw	t3,72(a1)
    3c74:	003e0e13          	addi	t3,t3,3
    3c78:	05c5a423          	sw	t3,72(a1)
    3c7c:	8cdfc06f          	j	548 <benchmark_body+0x3f8>
    3c80:	02872f03          	lw	t5,40(a4)
    3c84:	03472e03          	lw	t3,52(a4)
    3c88:	01cf0463          	beq	t5,t3,3c90 <benchmark_body+0x3b40>
    3c8c:	8ddfc06f          	j	568 <benchmark_body+0x418>
    3c90:	02472e03          	lw	t3,36(a4)
    3c94:	02872f03          	lw	t5,40(a4)
    3c98:	01ee4463          	blt	t3,t5,3ca0 <benchmark_body+0x3b50>
    3c9c:	8cdfc06f          	j	568 <benchmark_body+0x418>
    3ca0:	03072f83          	lw	t6,48(a4)
    3ca4:	01ee02b3          	add	t0,t3,t5
    3ca8:	03f72223          	sw	t6,36(a4)
    3cac:	0007af83          	lw	t6,0(a5)
    3cb0:	ffcf8f93          	addi	t6,t6,-4
    3cb4:	01f7a023          	sw	t6,0(a5)
    3cb8:	0485af83          	lw	t6,72(a1)
    3cbc:	002f9f93          	slli	t6,t6,0x2
    3cc0:	01f70fb3          	add	t6,a4,t6
    3cc4:	01cfa623          	sw	t3,12(t6)
    3cc8:	0485ae03          	lw	t3,72(a1)
    3ccc:	001e0e13          	addi	t3,t3,1
    3cd0:	002e1e13          	slli	t3,t3,0x2
    3cd4:	01c70e33          	add	t3,a4,t3
    3cd8:	01ee2623          	sw	t5,12(t3)
    3cdc:	0485ae03          	lw	t3,72(a1)
    3ce0:	002e0e13          	addi	t3,t3,2
    3ce4:	002e1e13          	slli	t3,t3,0x2
    3ce8:	01c70e33          	add	t3,a4,t3
    3cec:	005e2623          	sw	t0,12(t3)
    3cf0:	0485ae03          	lw	t3,72(a1)
    3cf4:	003e0e13          	addi	t3,t3,3
    3cf8:	05c5a423          	sw	t3,72(a1)
    3cfc:	86dfc06f          	j	568 <benchmark_body+0x418>
    3d00:	02872f03          	lw	t5,40(a4)
    3d04:	03472e03          	lw	t3,52(a4)
    3d08:	01cf0463          	beq	t5,t3,3d10 <benchmark_body+0x3bc0>
    3d0c:	87dfc06f          	j	588 <benchmark_body+0x438>
    3d10:	02472e03          	lw	t3,36(a4)
    3d14:	02872f03          	lw	t5,40(a4)
    3d18:	01ee4463          	blt	t3,t5,3d20 <benchmark_body+0x3bd0>
    3d1c:	86dfc06f          	j	588 <benchmark_body+0x438>
    3d20:	02c72f83          	lw	t6,44(a4)
    3d24:	01ee02b3          	add	t0,t3,t5
    3d28:	03f72223          	sw	t6,36(a4)
    3d2c:	0007af83          	lw	t6,0(a5)
    3d30:	ffcf8f93          	addi	t6,t6,-4
    3d34:	01f7a023          	sw	t6,0(a5)
    3d38:	0485af83          	lw	t6,72(a1)
    3d3c:	002f9f93          	slli	t6,t6,0x2
    3d40:	01f70fb3          	add	t6,a4,t6
    3d44:	01cfa623          	sw	t3,12(t6)
    3d48:	0485ae03          	lw	t3,72(a1)
    3d4c:	001e0e13          	addi	t3,t3,1
    3d50:	002e1e13          	slli	t3,t3,0x2
    3d54:	01c70e33          	add	t3,a4,t3
    3d58:	01ee2623          	sw	t5,12(t3)
    3d5c:	0485ae03          	lw	t3,72(a1)
    3d60:	002e0e13          	addi	t3,t3,2
    3d64:	002e1e13          	slli	t3,t3,0x2
    3d68:	01c70e33          	add	t3,a4,t3
    3d6c:	005e2623          	sw	t0,12(t3)
    3d70:	0485ae03          	lw	t3,72(a1)
    3d74:	003e0e13          	addi	t3,t3,3
    3d78:	05c5a423          	sw	t3,72(a1)
    3d7c:	80dfc06f          	j	588 <benchmark_body+0x438>
    3d80:	02872f03          	lw	t5,40(a4)
    3d84:	02c72e03          	lw	t3,44(a4)
    3d88:	01cf0463          	beq	t5,t3,3d90 <benchmark_body+0x3c40>
    3d8c:	81dfc06f          	j	5a8 <benchmark_body+0x458>
    3d90:	02472e03          	lw	t3,36(a4)
    3d94:	02872f03          	lw	t5,40(a4)
    3d98:	01ee4463          	blt	t3,t5,3da0 <benchmark_body+0x3c50>
    3d9c:	80dfc06f          	j	5a8 <benchmark_body+0x458>
    3da0:	03072f83          	lw	t6,48(a4)
    3da4:	01ee02b3          	add	t0,t3,t5
    3da8:	03f72223          	sw	t6,36(a4)
    3dac:	0007af83          	lw	t6,0(a5)
    3db0:	ffcf8f93          	addi	t6,t6,-4
    3db4:	01f7a023          	sw	t6,0(a5)
    3db8:	0485af83          	lw	t6,72(a1)
    3dbc:	002f9f93          	slli	t6,t6,0x2
    3dc0:	01f70fb3          	add	t6,a4,t6
    3dc4:	01cfa623          	sw	t3,12(t6)
    3dc8:	0485ae03          	lw	t3,72(a1)
    3dcc:	001e0e13          	addi	t3,t3,1
    3dd0:	002e1e13          	slli	t3,t3,0x2
    3dd4:	01c70e33          	add	t3,a4,t3
    3dd8:	01ee2623          	sw	t5,12(t3)
    3ddc:	0485ae03          	lw	t3,72(a1)
    3de0:	002e0e13          	addi	t3,t3,2
    3de4:	002e1e13          	slli	t3,t3,0x2
    3de8:	01c70e33          	add	t3,a4,t3
    3dec:	005e2623          	sw	t0,12(t3)
    3df0:	0485ae03          	lw	t3,72(a1)
    3df4:	003e0e13          	addi	t3,t3,3
    3df8:	05c5a423          	sw	t3,72(a1)
    3dfc:	facfc06f          	j	5a8 <benchmark_body+0x458>
    3e00:	02872f03          	lw	t5,40(a4)
    3e04:	03072e03          	lw	t3,48(a4)
    3e08:	01cf0463          	beq	t5,t3,3e10 <benchmark_body+0x3cc0>
    3e0c:	fbcfc06f          	j	5c8 <benchmark_body+0x478>
    3e10:	02472e03          	lw	t3,36(a4)
    3e14:	02872f03          	lw	t5,40(a4)
    3e18:	01ee4463          	blt	t3,t5,3e20 <benchmark_body+0x3cd0>
    3e1c:	facfc06f          	j	5c8 <benchmark_body+0x478>
    3e20:	02c72f83          	lw	t6,44(a4)
    3e24:	01ee02b3          	add	t0,t3,t5
    3e28:	03f72223          	sw	t6,36(a4)
    3e2c:	0007af83          	lw	t6,0(a5)
    3e30:	ffcf8f93          	addi	t6,t6,-4
    3e34:	01f7a023          	sw	t6,0(a5)
    3e38:	0485af83          	lw	t6,72(a1)
    3e3c:	002f9f93          	slli	t6,t6,0x2
    3e40:	01f70fb3          	add	t6,a4,t6
    3e44:	01cfa623          	sw	t3,12(t6)
    3e48:	0485ae03          	lw	t3,72(a1)
    3e4c:	001e0e13          	addi	t3,t3,1
    3e50:	002e1e13          	slli	t3,t3,0x2
    3e54:	01c70e33          	add	t3,a4,t3
    3e58:	01ee2623          	sw	t5,12(t3)
    3e5c:	0485ae03          	lw	t3,72(a1)
    3e60:	002e0e13          	addi	t3,t3,2
    3e64:	002e1e13          	slli	t3,t3,0x2
    3e68:	01c70e33          	add	t3,a4,t3
    3e6c:	005e2623          	sw	t0,12(t3)
    3e70:	0485ae03          	lw	t3,72(a1)
    3e74:	003e0e13          	addi	t3,t3,3
    3e78:	05c5a423          	sw	t3,72(a1)
    3e7c:	f4cfc06f          	j	5c8 <benchmark_body+0x478>
    3e80:	02c72f03          	lw	t5,44(a4)
    3e84:	03472e03          	lw	t3,52(a4)
    3e88:	01cf0463          	beq	t5,t3,3e90 <benchmark_body+0x3d40>
    3e8c:	f5cfc06f          	j	5e8 <benchmark_body+0x498>
    3e90:	02472e03          	lw	t3,36(a4)
    3e94:	02c72f03          	lw	t5,44(a4)
    3e98:	01ee4463          	blt	t3,t5,3ea0 <benchmark_body+0x3d50>
    3e9c:	f4cfc06f          	j	5e8 <benchmark_body+0x498>
    3ea0:	03072f83          	lw	t6,48(a4)
    3ea4:	01ee02b3          	add	t0,t3,t5
    3ea8:	03f72223          	sw	t6,36(a4)
    3eac:	0007af83          	lw	t6,0(a5)
    3eb0:	ffcf8f93          	addi	t6,t6,-4
    3eb4:	01f7a023          	sw	t6,0(a5)
    3eb8:	0485af83          	lw	t6,72(a1)
    3ebc:	002f9f93          	slli	t6,t6,0x2
    3ec0:	01f70fb3          	add	t6,a4,t6
    3ec4:	01cfa623          	sw	t3,12(t6)
    3ec8:	0485ae03          	lw	t3,72(a1)
    3ecc:	001e0e13          	addi	t3,t3,1
    3ed0:	002e1e13          	slli	t3,t3,0x2
    3ed4:	01c70e33          	add	t3,a4,t3
    3ed8:	01ee2623          	sw	t5,12(t3)
    3edc:	0485ae03          	lw	t3,72(a1)
    3ee0:	002e0e13          	addi	t3,t3,2
    3ee4:	002e1e13          	slli	t3,t3,0x2
    3ee8:	01c70e33          	add	t3,a4,t3
    3eec:	005e2623          	sw	t0,12(t3)
    3ef0:	0485ae03          	lw	t3,72(a1)
    3ef4:	003e0e13          	addi	t3,t3,3
    3ef8:	05c5a423          	sw	t3,72(a1)
    3efc:	eecfc06f          	j	5e8 <benchmark_body+0x498>
    3f00:	02c72f03          	lw	t5,44(a4)
    3f04:	03472e03          	lw	t3,52(a4)
    3f08:	01cf0463          	beq	t5,t3,3f10 <benchmark_body+0x3dc0>
    3f0c:	efcfc06f          	j	608 <benchmark_body+0x4b8>
    3f10:	02472e03          	lw	t3,36(a4)
    3f14:	02c72f03          	lw	t5,44(a4)
    3f18:	01ee4463          	blt	t3,t5,3f20 <benchmark_body+0x3dd0>
    3f1c:	eecfc06f          	j	608 <benchmark_body+0x4b8>
    3f20:	02872f83          	lw	t6,40(a4)
    3f24:	01ee02b3          	add	t0,t3,t5
    3f28:	03f72223          	sw	t6,36(a4)
    3f2c:	0007af83          	lw	t6,0(a5)
    3f30:	ffcf8f93          	addi	t6,t6,-4
    3f34:	01f7a023          	sw	t6,0(a5)
    3f38:	0485af83          	lw	t6,72(a1)
    3f3c:	002f9f93          	slli	t6,t6,0x2
    3f40:	01f70fb3          	add	t6,a4,t6
    3f44:	01cfa623          	sw	t3,12(t6)
    3f48:	0485ae03          	lw	t3,72(a1)
    3f4c:	001e0e13          	addi	t3,t3,1
    3f50:	002e1e13          	slli	t3,t3,0x2
    3f54:	01c70e33          	add	t3,a4,t3
    3f58:	01ee2623          	sw	t5,12(t3)
    3f5c:	0485ae03          	lw	t3,72(a1)
    3f60:	002e0e13          	addi	t3,t3,2
    3f64:	002e1e13          	slli	t3,t3,0x2
    3f68:	01c70e33          	add	t3,a4,t3
    3f6c:	005e2623          	sw	t0,12(t3)
    3f70:	0485ae03          	lw	t3,72(a1)
    3f74:	003e0e13          	addi	t3,t3,3
    3f78:	05c5a423          	sw	t3,72(a1)
    3f7c:	e8cfc06f          	j	608 <benchmark_body+0x4b8>
    3f80:	02c72f03          	lw	t5,44(a4)
    3f84:	02872e03          	lw	t3,40(a4)
    3f88:	01cf0463          	beq	t5,t3,3f90 <benchmark_body+0x3e40>
    3f8c:	e9cfc06f          	j	628 <benchmark_body+0x4d8>
    3f90:	02472e03          	lw	t3,36(a4)
    3f94:	02c72f03          	lw	t5,44(a4)
    3f98:	01ee4463          	blt	t3,t5,3fa0 <benchmark_body+0x3e50>
    3f9c:	e8cfc06f          	j	628 <benchmark_body+0x4d8>
    3fa0:	03072f83          	lw	t6,48(a4)
    3fa4:	01ee02b3          	add	t0,t3,t5
    3fa8:	03f72223          	sw	t6,36(a4)
    3fac:	0007af83          	lw	t6,0(a5)
    3fb0:	ffcf8f93          	addi	t6,t6,-4
    3fb4:	01f7a023          	sw	t6,0(a5)
    3fb8:	0485af83          	lw	t6,72(a1)
    3fbc:	002f9f93          	slli	t6,t6,0x2
    3fc0:	01f70fb3          	add	t6,a4,t6
    3fc4:	01cfa623          	sw	t3,12(t6)
    3fc8:	0485ae03          	lw	t3,72(a1)
    3fcc:	001e0e13          	addi	t3,t3,1
    3fd0:	002e1e13          	slli	t3,t3,0x2
    3fd4:	01c70e33          	add	t3,a4,t3
    3fd8:	01ee2623          	sw	t5,12(t3)
    3fdc:	0485ae03          	lw	t3,72(a1)
    3fe0:	002e0e13          	addi	t3,t3,2
    3fe4:	002e1e13          	slli	t3,t3,0x2
    3fe8:	01c70e33          	add	t3,a4,t3
    3fec:	005e2623          	sw	t0,12(t3)
    3ff0:	0485ae03          	lw	t3,72(a1)
    3ff4:	003e0e13          	addi	t3,t3,3
    3ff8:	05c5a423          	sw	t3,72(a1)
    3ffc:	e2cfc06f          	j	628 <benchmark_body+0x4d8>
    4000:	02c72f03          	lw	t5,44(a4)
    4004:	03072e03          	lw	t3,48(a4)
    4008:	01cf0463          	beq	t5,t3,4010 <benchmark_body+0x3ec0>
    400c:	e3cfc06f          	j	648 <benchmark_body+0x4f8>
    4010:	02472e03          	lw	t3,36(a4)
    4014:	02c72f03          	lw	t5,44(a4)
    4018:	01ee4463          	blt	t3,t5,4020 <benchmark_body+0x3ed0>
    401c:	e2cfc06f          	j	648 <benchmark_body+0x4f8>
    4020:	02872f83          	lw	t6,40(a4)
    4024:	01ee02b3          	add	t0,t3,t5
    4028:	03f72223          	sw	t6,36(a4)
    402c:	0007af83          	lw	t6,0(a5)
    4030:	ffcf8f93          	addi	t6,t6,-4
    4034:	01f7a023          	sw	t6,0(a5)
    4038:	0485af83          	lw	t6,72(a1)
    403c:	002f9f93          	slli	t6,t6,0x2
    4040:	01f70fb3          	add	t6,a4,t6
    4044:	01cfa623          	sw	t3,12(t6)
    4048:	0485ae03          	lw	t3,72(a1)
    404c:	001e0e13          	addi	t3,t3,1
    4050:	002e1e13          	slli	t3,t3,0x2
    4054:	01c70e33          	add	t3,a4,t3
    4058:	01ee2623          	sw	t5,12(t3)
    405c:	0485ae03          	lw	t3,72(a1)
    4060:	002e0e13          	addi	t3,t3,2
    4064:	002e1e13          	slli	t3,t3,0x2
    4068:	01c70e33          	add	t3,a4,t3
    406c:	005e2623          	sw	t0,12(t3)
    4070:	0485ae03          	lw	t3,72(a1)
    4074:	003e0e13          	addi	t3,t3,3
    4078:	05c5a423          	sw	t3,72(a1)
    407c:	dccfc06f          	j	648 <benchmark_body+0x4f8>
    4080:	03072f03          	lw	t5,48(a4)
    4084:	03472e03          	lw	t3,52(a4)
    4088:	01cf0463          	beq	t5,t3,4090 <benchmark_body+0x3f40>
    408c:	ddcfc06f          	j	668 <benchmark_body+0x518>
    4090:	02472e03          	lw	t3,36(a4)
    4094:	03072f03          	lw	t5,48(a4)
    4098:	01ee4463          	blt	t3,t5,40a0 <benchmark_body+0x3f50>
    409c:	dccfc06f          	j	668 <benchmark_body+0x518>
    40a0:	02c72f83          	lw	t6,44(a4)
    40a4:	01ee02b3          	add	t0,t3,t5
    40a8:	03f72223          	sw	t6,36(a4)
    40ac:	0007af83          	lw	t6,0(a5)
    40b0:	ffcf8f93          	addi	t6,t6,-4
    40b4:	01f7a023          	sw	t6,0(a5)
    40b8:	0485af83          	lw	t6,72(a1)
    40bc:	002f9f93          	slli	t6,t6,0x2
    40c0:	01f70fb3          	add	t6,a4,t6
    40c4:	01cfa623          	sw	t3,12(t6)
    40c8:	0485ae03          	lw	t3,72(a1)
    40cc:	001e0e13          	addi	t3,t3,1
    40d0:	002e1e13          	slli	t3,t3,0x2
    40d4:	01c70e33          	add	t3,a4,t3
    40d8:	01ee2623          	sw	t5,12(t3)
    40dc:	0485ae03          	lw	t3,72(a1)
    40e0:	002e0e13          	addi	t3,t3,2
    40e4:	002e1e13          	slli	t3,t3,0x2
    40e8:	01c70e33          	add	t3,a4,t3
    40ec:	005e2623          	sw	t0,12(t3)
    40f0:	0485ae03          	lw	t3,72(a1)
    40f4:	003e0e13          	addi	t3,t3,3
    40f8:	05c5a423          	sw	t3,72(a1)
    40fc:	d6cfc06f          	j	668 <benchmark_body+0x518>
    4100:	03072f03          	lw	t5,48(a4)
    4104:	03472e03          	lw	t3,52(a4)
    4108:	01cf0463          	beq	t5,t3,4110 <benchmark_body+0x3fc0>
    410c:	d7cfc06f          	j	688 <benchmark_body+0x538>
    4110:	02472e03          	lw	t3,36(a4)
    4114:	03072f03          	lw	t5,48(a4)
    4118:	01ee4463          	blt	t3,t5,4120 <benchmark_body+0x3fd0>
    411c:	d6cfc06f          	j	688 <benchmark_body+0x538>
    4120:	02872f83          	lw	t6,40(a4)
    4124:	01ee02b3          	add	t0,t3,t5
    4128:	03f72223          	sw	t6,36(a4)
    412c:	0007af83          	lw	t6,0(a5)
    4130:	ffcf8f93          	addi	t6,t6,-4
    4134:	01f7a023          	sw	t6,0(a5)
    4138:	0485af83          	lw	t6,72(a1)
    413c:	002f9f93          	slli	t6,t6,0x2
    4140:	01f70fb3          	add	t6,a4,t6
    4144:	01cfa623          	sw	t3,12(t6)
    4148:	0485ae03          	lw	t3,72(a1)
    414c:	001e0e13          	addi	t3,t3,1
    4150:	002e1e13          	slli	t3,t3,0x2
    4154:	01c70e33          	add	t3,a4,t3
    4158:	01ee2623          	sw	t5,12(t3)
    415c:	0485ae03          	lw	t3,72(a1)
    4160:	002e0e13          	addi	t3,t3,2
    4164:	002e1e13          	slli	t3,t3,0x2
    4168:	01c70e33          	add	t3,a4,t3
    416c:	005e2623          	sw	t0,12(t3)
    4170:	0485ae03          	lw	t3,72(a1)
    4174:	003e0e13          	addi	t3,t3,3
    4178:	05c5a423          	sw	t3,72(a1)
    417c:	d0cfc06f          	j	688 <benchmark_body+0x538>
    4180:	03072f03          	lw	t5,48(a4)
    4184:	02872e03          	lw	t3,40(a4)
    4188:	01cf0463          	beq	t5,t3,4190 <benchmark_body+0x4040>
    418c:	d1cfc06f          	j	6a8 <benchmark_body+0x558>
    4190:	02472e03          	lw	t3,36(a4)
    4194:	03072f03          	lw	t5,48(a4)
    4198:	01ee4463          	blt	t3,t5,41a0 <benchmark_body+0x4050>
    419c:	d0cfc06f          	j	6a8 <benchmark_body+0x558>
    41a0:	02c72f83          	lw	t6,44(a4)
    41a4:	01ee02b3          	add	t0,t3,t5
    41a8:	03f72223          	sw	t6,36(a4)
    41ac:	0007af83          	lw	t6,0(a5)
    41b0:	ffcf8f93          	addi	t6,t6,-4
    41b4:	01f7a023          	sw	t6,0(a5)
    41b8:	0485af83          	lw	t6,72(a1)
    41bc:	002f9f93          	slli	t6,t6,0x2
    41c0:	01f70fb3          	add	t6,a4,t6
    41c4:	01cfa623          	sw	t3,12(t6)
    41c8:	0485ae03          	lw	t3,72(a1)
    41cc:	001e0e13          	addi	t3,t3,1
    41d0:	002e1e13          	slli	t3,t3,0x2
    41d4:	01c70e33          	add	t3,a4,t3
    41d8:	01ee2623          	sw	t5,12(t3)
    41dc:	0485ae03          	lw	t3,72(a1)
    41e0:	002e0e13          	addi	t3,t3,2
    41e4:	002e1e13          	slli	t3,t3,0x2
    41e8:	01c70e33          	add	t3,a4,t3
    41ec:	005e2623          	sw	t0,12(t3)
    41f0:	0485ae03          	lw	t3,72(a1)
    41f4:	003e0e13          	addi	t3,t3,3
    41f8:	05c5a423          	sw	t3,72(a1)
    41fc:	cacfc06f          	j	6a8 <benchmark_body+0x558>
    4200:	03072f03          	lw	t5,48(a4)
    4204:	02c72e03          	lw	t3,44(a4)
    4208:	01cf0463          	beq	t5,t3,4210 <benchmark_body+0x40c0>
    420c:	cbcfc06f          	j	6c8 <benchmark_body+0x578>
    4210:	02472e03          	lw	t3,36(a4)
    4214:	03072f03          	lw	t5,48(a4)
    4218:	01ee4463          	blt	t3,t5,4220 <benchmark_body+0x40d0>
    421c:	cacfc06f          	j	6c8 <benchmark_body+0x578>
    4220:	02872f83          	lw	t6,40(a4)
    4224:	01ee02b3          	add	t0,t3,t5
    4228:	03f72223          	sw	t6,36(a4)
    422c:	0007af83          	lw	t6,0(a5)
    4230:	ffcf8f93          	addi	t6,t6,-4
    4234:	01f7a023          	sw	t6,0(a5)
    4238:	0485af83          	lw	t6,72(a1)
    423c:	002f9f93          	slli	t6,t6,0x2
    4240:	01f70fb3          	add	t6,a4,t6
    4244:	01cfa623          	sw	t3,12(t6)
    4248:	0485ae03          	lw	t3,72(a1)
    424c:	001e0e13          	addi	t3,t3,1
    4250:	002e1e13          	slli	t3,t3,0x2
    4254:	01c70e33          	add	t3,a4,t3
    4258:	01ee2623          	sw	t5,12(t3)
    425c:	0485ae03          	lw	t3,72(a1)
    4260:	002e0e13          	addi	t3,t3,2
    4264:	002e1e13          	slli	t3,t3,0x2
    4268:	01c70e33          	add	t3,a4,t3
    426c:	005e2623          	sw	t0,12(t3)
    4270:	0485ae03          	lw	t3,72(a1)
    4274:	003e0e13          	addi	t3,t3,3
    4278:	05c5a423          	sw	t3,72(a1)
    427c:	c4cfc06f          	j	6c8 <benchmark_body+0x578>
    4280:	03472f03          	lw	t5,52(a4)
    4284:	02c72e03          	lw	t3,44(a4)
    4288:	01cf0463          	beq	t5,t3,4290 <benchmark_body+0x4140>
    428c:	c5cfc06f          	j	6e8 <benchmark_body+0x598>
    4290:	02472e03          	lw	t3,36(a4)
    4294:	03472f03          	lw	t5,52(a4)
    4298:	01ee4463          	blt	t3,t5,42a0 <benchmark_body+0x4150>
    429c:	c4cfc06f          	j	6e8 <benchmark_body+0x598>
    42a0:	03072f83          	lw	t6,48(a4)
    42a4:	01ee02b3          	add	t0,t3,t5
    42a8:	03f72223          	sw	t6,36(a4)
    42ac:	0007af83          	lw	t6,0(a5)
    42b0:	ffcf8f93          	addi	t6,t6,-4
    42b4:	01f7a023          	sw	t6,0(a5)
    42b8:	0485af83          	lw	t6,72(a1)
    42bc:	002f9f93          	slli	t6,t6,0x2
    42c0:	01f70fb3          	add	t6,a4,t6
    42c4:	01cfa623          	sw	t3,12(t6)
    42c8:	0485ae03          	lw	t3,72(a1)
    42cc:	001e0e13          	addi	t3,t3,1
    42d0:	002e1e13          	slli	t3,t3,0x2
    42d4:	01c70e33          	add	t3,a4,t3
    42d8:	01ee2623          	sw	t5,12(t3)
    42dc:	0485ae03          	lw	t3,72(a1)
    42e0:	002e0e13          	addi	t3,t3,2
    42e4:	002e1e13          	slli	t3,t3,0x2
    42e8:	01c70e33          	add	t3,a4,t3
    42ec:	005e2623          	sw	t0,12(t3)
    42f0:	0485ae03          	lw	t3,72(a1)
    42f4:	003e0e13          	addi	t3,t3,3
    42f8:	05c5a423          	sw	t3,72(a1)
    42fc:	becfc06f          	j	6e8 <benchmark_body+0x598>
    4300:	03472f03          	lw	t5,52(a4)
    4304:	03072e03          	lw	t3,48(a4)
    4308:	01cf0463          	beq	t5,t3,4310 <benchmark_body+0x41c0>
    430c:	bfcfc06f          	j	708 <benchmark_body+0x5b8>
    4310:	02472e03          	lw	t3,36(a4)
    4314:	03472f03          	lw	t5,52(a4)
    4318:	01ee4463          	blt	t3,t5,4320 <benchmark_body+0x41d0>
    431c:	becfc06f          	j	708 <benchmark_body+0x5b8>
    4320:	02c72f83          	lw	t6,44(a4)
    4324:	01ee02b3          	add	t0,t3,t5
    4328:	03f72223          	sw	t6,36(a4)
    432c:	0007af83          	lw	t6,0(a5)
    4330:	ffcf8f93          	addi	t6,t6,-4
    4334:	01f7a023          	sw	t6,0(a5)
    4338:	0485af83          	lw	t6,72(a1)
    433c:	002f9f93          	slli	t6,t6,0x2
    4340:	01f70fb3          	add	t6,a4,t6
    4344:	01cfa623          	sw	t3,12(t6)
    4348:	0485ae03          	lw	t3,72(a1)
    434c:	001e0e13          	addi	t3,t3,1
    4350:	002e1e13          	slli	t3,t3,0x2
    4354:	01c70e33          	add	t3,a4,t3
    4358:	01ee2623          	sw	t5,12(t3)
    435c:	0485ae03          	lw	t3,72(a1)
    4360:	002e0e13          	addi	t3,t3,2
    4364:	002e1e13          	slli	t3,t3,0x2
    4368:	01c70e33          	add	t3,a4,t3
    436c:	005e2623          	sw	t0,12(t3)
    4370:	0485ae03          	lw	t3,72(a1)
    4374:	003e0e13          	addi	t3,t3,3
    4378:	05c5a423          	sw	t3,72(a1)
    437c:	b8cfc06f          	j	708 <benchmark_body+0x5b8>
    4380:	03472f03          	lw	t5,52(a4)
    4384:	02872e03          	lw	t3,40(a4)
    4388:	01cf0463          	beq	t5,t3,4390 <benchmark_body+0x4240>
    438c:	b9cfc06f          	j	728 <benchmark_body+0x5d8>
    4390:	02472e03          	lw	t3,36(a4)
    4394:	03472f03          	lw	t5,52(a4)
    4398:	01ee4463          	blt	t3,t5,43a0 <benchmark_body+0x4250>
    439c:	b8cfc06f          	j	728 <benchmark_body+0x5d8>
    43a0:	03072f83          	lw	t6,48(a4)
    43a4:	01ee02b3          	add	t0,t3,t5
    43a8:	03f72223          	sw	t6,36(a4)
    43ac:	0007af83          	lw	t6,0(a5)
    43b0:	ffcf8f93          	addi	t6,t6,-4
    43b4:	01f7a023          	sw	t6,0(a5)
    43b8:	0485af83          	lw	t6,72(a1)
    43bc:	002f9f93          	slli	t6,t6,0x2
    43c0:	01f70fb3          	add	t6,a4,t6
    43c4:	01cfa623          	sw	t3,12(t6)
    43c8:	0485ae03          	lw	t3,72(a1)
    43cc:	001e0e13          	addi	t3,t3,1
    43d0:	002e1e13          	slli	t3,t3,0x2
    43d4:	01c70e33          	add	t3,a4,t3
    43d8:	01ee2623          	sw	t5,12(t3)
    43dc:	0485ae03          	lw	t3,72(a1)
    43e0:	002e0e13          	addi	t3,t3,2
    43e4:	002e1e13          	slli	t3,t3,0x2
    43e8:	01c70e33          	add	t3,a4,t3
    43ec:	005e2623          	sw	t0,12(t3)
    43f0:	0485ae03          	lw	t3,72(a1)
    43f4:	003e0e13          	addi	t3,t3,3
    43f8:	05c5a423          	sw	t3,72(a1)
    43fc:	b2cfc06f          	j	728 <benchmark_body+0x5d8>
    4400:	03472f03          	lw	t5,52(a4)
    4404:	03072e03          	lw	t3,48(a4)
    4408:	01cf0463          	beq	t5,t3,4410 <benchmark_body+0x42c0>
    440c:	b3cfc06f          	j	748 <benchmark_body+0x5f8>
    4410:	02472e03          	lw	t3,36(a4)
    4414:	03472f03          	lw	t5,52(a4)
    4418:	01ee4463          	blt	t3,t5,4420 <benchmark_body+0x42d0>
    441c:	b2cfc06f          	j	748 <benchmark_body+0x5f8>
    4420:	02872f83          	lw	t6,40(a4)
    4424:	01ee02b3          	add	t0,t3,t5
    4428:	03f72223          	sw	t6,36(a4)
    442c:	0007af83          	lw	t6,0(a5)
    4430:	ffcf8f93          	addi	t6,t6,-4
    4434:	01f7a023          	sw	t6,0(a5)
    4438:	0485af83          	lw	t6,72(a1)
    443c:	002f9f93          	slli	t6,t6,0x2
    4440:	01f70fb3          	add	t6,a4,t6
    4444:	01cfa623          	sw	t3,12(t6)
    4448:	0485ae03          	lw	t3,72(a1)
    444c:	001e0e13          	addi	t3,t3,1
    4450:	002e1e13          	slli	t3,t3,0x2
    4454:	01c70e33          	add	t3,a4,t3
    4458:	01ee2623          	sw	t5,12(t3)
    445c:	0485ae03          	lw	t3,72(a1)
    4460:	002e0e13          	addi	t3,t3,2
    4464:	002e1e13          	slli	t3,t3,0x2
    4468:	01c70e33          	add	t3,a4,t3
    446c:	005e2623          	sw	t0,12(t3)
    4470:	0485ae03          	lw	t3,72(a1)
    4474:	003e0e13          	addi	t3,t3,3
    4478:	05c5a423          	sw	t3,72(a1)
    447c:	accfc06f          	j	748 <benchmark_body+0x5f8>
    4480:	03472f03          	lw	t5,52(a4)
    4484:	02872e03          	lw	t3,40(a4)
    4488:	01cf0463          	beq	t5,t3,4490 <benchmark_body+0x4340>
    448c:	adcfc06f          	j	768 <benchmark_body+0x618>
    4490:	02472e03          	lw	t3,36(a4)
    4494:	03472f03          	lw	t5,52(a4)
    4498:	01ee4463          	blt	t3,t5,44a0 <benchmark_body+0x4350>
    449c:	accfc06f          	j	768 <benchmark_body+0x618>
    44a0:	02c72f83          	lw	t6,44(a4)
    44a4:	01ee02b3          	add	t0,t3,t5
    44a8:	03f72223          	sw	t6,36(a4)
    44ac:	0007af83          	lw	t6,0(a5)
    44b0:	ffcf8f93          	addi	t6,t6,-4
    44b4:	01f7a023          	sw	t6,0(a5)
    44b8:	0485af83          	lw	t6,72(a1)
    44bc:	002f9f93          	slli	t6,t6,0x2
    44c0:	01f70fb3          	add	t6,a4,t6
    44c4:	01cfa623          	sw	t3,12(t6)
    44c8:	0485ae03          	lw	t3,72(a1)
    44cc:	001e0e13          	addi	t3,t3,1
    44d0:	002e1e13          	slli	t3,t3,0x2
    44d4:	01c70e33          	add	t3,a4,t3
    44d8:	01ee2623          	sw	t5,12(t3)
    44dc:	0485ae03          	lw	t3,72(a1)
    44e0:	002e0e13          	addi	t3,t3,2
    44e4:	002e1e13          	slli	t3,t3,0x2
    44e8:	01c70e33          	add	t3,a4,t3
    44ec:	005e2623          	sw	t0,12(t3)
    44f0:	0485ae03          	lw	t3,72(a1)
    44f4:	003e0e13          	addi	t3,t3,3
    44f8:	05c5a423          	sw	t3,72(a1)
    44fc:	a6cfc06f          	j	768 <benchmark_body+0x618>
    4500:	03472f03          	lw	t5,52(a4)
    4504:	02c72e03          	lw	t3,44(a4)
    4508:	01cf0463          	beq	t5,t3,4510 <benchmark_body+0x43c0>
    450c:	a7cfc06f          	j	788 <benchmark_body+0x638>
    4510:	02472e03          	lw	t3,36(a4)
    4514:	03472f03          	lw	t5,52(a4)
    4518:	01ee4463          	blt	t3,t5,4520 <benchmark_body+0x43d0>
    451c:	a6cfc06f          	j	788 <benchmark_body+0x638>
    4520:	02872f83          	lw	t6,40(a4)
    4524:	01ee02b3          	add	t0,t3,t5
    4528:	03f72223          	sw	t6,36(a4)
    452c:	0007af83          	lw	t6,0(a5)
    4530:	ffcf8f93          	addi	t6,t6,-4
    4534:	01f7a023          	sw	t6,0(a5)
    4538:	0485af83          	lw	t6,72(a1)
    453c:	002f9f93          	slli	t6,t6,0x2
    4540:	01f70fb3          	add	t6,a4,t6
    4544:	01cfa623          	sw	t3,12(t6)
    4548:	0485ae03          	lw	t3,72(a1)
    454c:	001e0e13          	addi	t3,t3,1
    4550:	002e1e13          	slli	t3,t3,0x2
    4554:	01c70e33          	add	t3,a4,t3
    4558:	01ee2623          	sw	t5,12(t3)
    455c:	0485ae03          	lw	t3,72(a1)
    4560:	002e0e13          	addi	t3,t3,2
    4564:	002e1e13          	slli	t3,t3,0x2
    4568:	01c70e33          	add	t3,a4,t3
    456c:	005e2623          	sw	t0,12(t3)
    4570:	0485ae03          	lw	t3,72(a1)
    4574:	003e0e13          	addi	t3,t3,3
    4578:	05c5a423          	sw	t3,72(a1)
    457c:	a0cfc06f          	j	788 <benchmark_body+0x638>
    4580:	02472f03          	lw	t5,36(a4)
    4584:	03472e03          	lw	t3,52(a4)
    4588:	01cf0463          	beq	t5,t3,4590 <benchmark_body+0x4440>
    458c:	a1cfc06f          	j	7a8 <benchmark_body+0x658>
    4590:	02872e03          	lw	t3,40(a4)
    4594:	02472f03          	lw	t5,36(a4)
    4598:	01ee4463          	blt	t3,t5,45a0 <benchmark_body+0x4450>
    459c:	a0cfc06f          	j	7a8 <benchmark_body+0x658>
    45a0:	03072f83          	lw	t6,48(a4)
    45a4:	01ee02b3          	add	t0,t3,t5
    45a8:	03f72223          	sw	t6,36(a4)
    45ac:	0007af83          	lw	t6,0(a5)
    45b0:	ffcf8f93          	addi	t6,t6,-4
    45b4:	01f7a023          	sw	t6,0(a5)
    45b8:	0485af83          	lw	t6,72(a1)
    45bc:	002f9f93          	slli	t6,t6,0x2
    45c0:	01f70fb3          	add	t6,a4,t6
    45c4:	01cfa623          	sw	t3,12(t6)
    45c8:	0485ae03          	lw	t3,72(a1)
    45cc:	001e0e13          	addi	t3,t3,1
    45d0:	002e1e13          	slli	t3,t3,0x2
    45d4:	01c70e33          	add	t3,a4,t3
    45d8:	01ee2623          	sw	t5,12(t3)
    45dc:	0485ae03          	lw	t3,72(a1)
    45e0:	002e0e13          	addi	t3,t3,2
    45e4:	002e1e13          	slli	t3,t3,0x2
    45e8:	01c70e33          	add	t3,a4,t3
    45ec:	005e2623          	sw	t0,12(t3)
    45f0:	0485ae03          	lw	t3,72(a1)
    45f4:	003e0e13          	addi	t3,t3,3
    45f8:	05c5a423          	sw	t3,72(a1)
    45fc:	9acfc06f          	j	7a8 <benchmark_body+0x658>
    4600:	02472f03          	lw	t5,36(a4)
    4604:	03472e03          	lw	t3,52(a4)
    4608:	01cf0463          	beq	t5,t3,4610 <benchmark_body+0x44c0>
    460c:	9bcfc06f          	j	7c8 <benchmark_body+0x678>
    4610:	02872e03          	lw	t3,40(a4)
    4614:	02472f03          	lw	t5,36(a4)
    4618:	01ee4463          	blt	t3,t5,4620 <benchmark_body+0x44d0>
    461c:	9acfc06f          	j	7c8 <benchmark_body+0x678>
    4620:	02c72f83          	lw	t6,44(a4)
    4624:	01ee02b3          	add	t0,t3,t5
    4628:	03f72223          	sw	t6,36(a4)
    462c:	0007af83          	lw	t6,0(a5)
    4630:	ffcf8f93          	addi	t6,t6,-4
    4634:	01f7a023          	sw	t6,0(a5)
    4638:	0485af83          	lw	t6,72(a1)
    463c:	002f9f93          	slli	t6,t6,0x2
    4640:	01f70fb3          	add	t6,a4,t6
    4644:	01cfa623          	sw	t3,12(t6)
    4648:	0485ae03          	lw	t3,72(a1)
    464c:	001e0e13          	addi	t3,t3,1
    4650:	002e1e13          	slli	t3,t3,0x2
    4654:	01c70e33          	add	t3,a4,t3
    4658:	01ee2623          	sw	t5,12(t3)
    465c:	0485ae03          	lw	t3,72(a1)
    4660:	002e0e13          	addi	t3,t3,2
    4664:	002e1e13          	slli	t3,t3,0x2
    4668:	01c70e33          	add	t3,a4,t3
    466c:	005e2623          	sw	t0,12(t3)
    4670:	0485ae03          	lw	t3,72(a1)
    4674:	003e0e13          	addi	t3,t3,3
    4678:	05c5a423          	sw	t3,72(a1)
    467c:	94cfc06f          	j	7c8 <benchmark_body+0x678>
    4680:	02472f03          	lw	t5,36(a4)
    4684:	02c72e03          	lw	t3,44(a4)
    4688:	01cf0463          	beq	t5,t3,4690 <benchmark_body+0x4540>
    468c:	95cfc06f          	j	7e8 <benchmark_body+0x698>
    4690:	02872e03          	lw	t3,40(a4)
    4694:	02472f03          	lw	t5,36(a4)
    4698:	01ee4463          	blt	t3,t5,46a0 <benchmark_body+0x4550>
    469c:	94cfc06f          	j	7e8 <benchmark_body+0x698>
    46a0:	03072f83          	lw	t6,48(a4)
    46a4:	01ee02b3          	add	t0,t3,t5
    46a8:	03f72223          	sw	t6,36(a4)
    46ac:	0007af83          	lw	t6,0(a5)
    46b0:	ffcf8f93          	addi	t6,t6,-4
    46b4:	01f7a023          	sw	t6,0(a5)
    46b8:	0485af83          	lw	t6,72(a1)
    46bc:	002f9f93          	slli	t6,t6,0x2
    46c0:	01f70fb3          	add	t6,a4,t6
    46c4:	01cfa623          	sw	t3,12(t6)
    46c8:	0485ae03          	lw	t3,72(a1)
    46cc:	001e0e13          	addi	t3,t3,1
    46d0:	002e1e13          	slli	t3,t3,0x2
    46d4:	01c70e33          	add	t3,a4,t3
    46d8:	01ee2623          	sw	t5,12(t3)
    46dc:	0485ae03          	lw	t3,72(a1)
    46e0:	002e0e13          	addi	t3,t3,2
    46e4:	002e1e13          	slli	t3,t3,0x2
    46e8:	01c70e33          	add	t3,a4,t3
    46ec:	005e2623          	sw	t0,12(t3)
    46f0:	0485ae03          	lw	t3,72(a1)
    46f4:	003e0e13          	addi	t3,t3,3
    46f8:	05c5a423          	sw	t3,72(a1)
    46fc:	8ecfc06f          	j	7e8 <benchmark_body+0x698>
    4700:	02472f03          	lw	t5,36(a4)
    4704:	03072e03          	lw	t3,48(a4)
    4708:	01cf0463          	beq	t5,t3,4710 <benchmark_body+0x45c0>
    470c:	8fcfc06f          	j	808 <benchmark_body+0x6b8>
    4710:	02872e03          	lw	t3,40(a4)
    4714:	02472f03          	lw	t5,36(a4)
    4718:	01ee4463          	blt	t3,t5,4720 <benchmark_body+0x45d0>
    471c:	8ecfc06f          	j	808 <benchmark_body+0x6b8>
    4720:	02c72f83          	lw	t6,44(a4)
    4724:	01ee02b3          	add	t0,t3,t5
    4728:	03f72223          	sw	t6,36(a4)
    472c:	0007af83          	lw	t6,0(a5)
    4730:	ffcf8f93          	addi	t6,t6,-4
    4734:	01f7a023          	sw	t6,0(a5)
    4738:	0485af83          	lw	t6,72(a1)
    473c:	002f9f93          	slli	t6,t6,0x2
    4740:	01f70fb3          	add	t6,a4,t6
    4744:	01cfa623          	sw	t3,12(t6)
    4748:	0485ae03          	lw	t3,72(a1)
    474c:	001e0e13          	addi	t3,t3,1
    4750:	002e1e13          	slli	t3,t3,0x2
    4754:	01c70e33          	add	t3,a4,t3
    4758:	01ee2623          	sw	t5,12(t3)
    475c:	0485ae03          	lw	t3,72(a1)
    4760:	002e0e13          	addi	t3,t3,2
    4764:	002e1e13          	slli	t3,t3,0x2
    4768:	01c70e33          	add	t3,a4,t3
    476c:	005e2623          	sw	t0,12(t3)
    4770:	0485ae03          	lw	t3,72(a1)
    4774:	003e0e13          	addi	t3,t3,3
    4778:	05c5a423          	sw	t3,72(a1)
    477c:	88cfc06f          	j	808 <benchmark_body+0x6b8>
    4780:	02c72f03          	lw	t5,44(a4)
    4784:	03472e03          	lw	t3,52(a4)
    4788:	01cf0463          	beq	t5,t3,4790 <benchmark_body+0x4640>
    478c:	89cfc06f          	j	828 <benchmark_body+0x6d8>
    4790:	02872e03          	lw	t3,40(a4)
    4794:	02c72f03          	lw	t5,44(a4)
    4798:	01ee4463          	blt	t3,t5,47a0 <benchmark_body+0x4650>
    479c:	88cfc06f          	j	828 <benchmark_body+0x6d8>
    47a0:	03072f83          	lw	t6,48(a4)
    47a4:	01ee02b3          	add	t0,t3,t5
    47a8:	03f72223          	sw	t6,36(a4)
    47ac:	0007af83          	lw	t6,0(a5)
    47b0:	ffcf8f93          	addi	t6,t6,-4
    47b4:	01f7a023          	sw	t6,0(a5)
    47b8:	0485af83          	lw	t6,72(a1)
    47bc:	002f9f93          	slli	t6,t6,0x2
    47c0:	01f70fb3          	add	t6,a4,t6
    47c4:	01cfa623          	sw	t3,12(t6)
    47c8:	0485ae03          	lw	t3,72(a1)
    47cc:	001e0e13          	addi	t3,t3,1
    47d0:	002e1e13          	slli	t3,t3,0x2
    47d4:	01c70e33          	add	t3,a4,t3
    47d8:	01ee2623          	sw	t5,12(t3)
    47dc:	0485ae03          	lw	t3,72(a1)
    47e0:	002e0e13          	addi	t3,t3,2
    47e4:	002e1e13          	slli	t3,t3,0x2
    47e8:	01c70e33          	add	t3,a4,t3
    47ec:	005e2623          	sw	t0,12(t3)
    47f0:	0485ae03          	lw	t3,72(a1)
    47f4:	003e0e13          	addi	t3,t3,3
    47f8:	05c5a423          	sw	t3,72(a1)
    47fc:	82cfc06f          	j	828 <benchmark_body+0x6d8>
    4800:	02c72f03          	lw	t5,44(a4)
    4804:	03472e03          	lw	t3,52(a4)
    4808:	01cf0463          	beq	t5,t3,4810 <benchmark_body+0x46c0>
    480c:	83cfc06f          	j	848 <benchmark_body+0x6f8>
    4810:	02872e03          	lw	t3,40(a4)
    4814:	02c72f03          	lw	t5,44(a4)
    4818:	01ee4463          	blt	t3,t5,4820 <benchmark_body+0x46d0>
    481c:	82cfc06f          	j	848 <benchmark_body+0x6f8>
    4820:	0007af83          	lw	t6,0(a5)
    4824:	01ee02b3          	add	t0,t3,t5
    4828:	ffcf8f93          	addi	t6,t6,-4
    482c:	01f7a023          	sw	t6,0(a5)
    4830:	0485af83          	lw	t6,72(a1)
    4834:	002f9f93          	slli	t6,t6,0x2
    4838:	01f70fb3          	add	t6,a4,t6
    483c:	01cfa623          	sw	t3,12(t6)
    4840:	0485ae03          	lw	t3,72(a1)
    4844:	001e0e13          	addi	t3,t3,1
    4848:	002e1e13          	slli	t3,t3,0x2
    484c:	01c70e33          	add	t3,a4,t3
    4850:	01ee2623          	sw	t5,12(t3)
    4854:	0485ae03          	lw	t3,72(a1)
    4858:	002e0e13          	addi	t3,t3,2
    485c:	002e1e13          	slli	t3,t3,0x2
    4860:	01c70e33          	add	t3,a4,t3
    4864:	005e2623          	sw	t0,12(t3)
    4868:	0485ae03          	lw	t3,72(a1)
    486c:	003e0e13          	addi	t3,t3,3
    4870:	05c5a423          	sw	t3,72(a1)
    4874:	fd5fb06f          	j	848 <benchmark_body+0x6f8>
    4878:	02c72f03          	lw	t5,44(a4)
    487c:	02472e03          	lw	t3,36(a4)
    4880:	01cf0463          	beq	t5,t3,4888 <benchmark_body+0x4738>
    4884:	fe5fb06f          	j	868 <benchmark_body+0x718>
    4888:	02872e03          	lw	t3,40(a4)
    488c:	02c72f03          	lw	t5,44(a4)
    4890:	01ee4463          	blt	t3,t5,4898 <benchmark_body+0x4748>
    4894:	fd5fb06f          	j	868 <benchmark_body+0x718>
    4898:	03072f83          	lw	t6,48(a4)
    489c:	01ee02b3          	add	t0,t3,t5
    48a0:	03f72223          	sw	t6,36(a4)
    48a4:	0007af83          	lw	t6,0(a5)
    48a8:	ffcf8f93          	addi	t6,t6,-4
    48ac:	01f7a023          	sw	t6,0(a5)
    48b0:	0485af83          	lw	t6,72(a1)
    48b4:	002f9f93          	slli	t6,t6,0x2
    48b8:	01f70fb3          	add	t6,a4,t6
    48bc:	01cfa623          	sw	t3,12(t6)
    48c0:	0485ae03          	lw	t3,72(a1)
    48c4:	001e0e13          	addi	t3,t3,1
    48c8:	002e1e13          	slli	t3,t3,0x2
    48cc:	01c70e33          	add	t3,a4,t3
    48d0:	01ee2623          	sw	t5,12(t3)
    48d4:	0485ae03          	lw	t3,72(a1)
    48d8:	002e0e13          	addi	t3,t3,2
    48dc:	002e1e13          	slli	t3,t3,0x2
    48e0:	01c70e33          	add	t3,a4,t3
    48e4:	005e2623          	sw	t0,12(t3)
    48e8:	0485ae03          	lw	t3,72(a1)
    48ec:	003e0e13          	addi	t3,t3,3
    48f0:	05c5a423          	sw	t3,72(a1)
    48f4:	f75fb06f          	j	868 <benchmark_body+0x718>
    48f8:	02c72f03          	lw	t5,44(a4)
    48fc:	03072e03          	lw	t3,48(a4)
    4900:	01cf0463          	beq	t5,t3,4908 <benchmark_body+0x47b8>
    4904:	f85fb06f          	j	888 <benchmark_body+0x738>
    4908:	02872e03          	lw	t3,40(a4)
    490c:	02c72f03          	lw	t5,44(a4)
    4910:	01ee4463          	blt	t3,t5,4918 <benchmark_body+0x47c8>
    4914:	f75fb06f          	j	888 <benchmark_body+0x738>
    4918:	0007af83          	lw	t6,0(a5)
    491c:	01ee02b3          	add	t0,t3,t5
    4920:	ffcf8f93          	addi	t6,t6,-4
    4924:	01f7a023          	sw	t6,0(a5)
    4928:	0485af83          	lw	t6,72(a1)
    492c:	002f9f93          	slli	t6,t6,0x2
    4930:	01f70fb3          	add	t6,a4,t6
    4934:	01cfa623          	sw	t3,12(t6)
    4938:	0485ae03          	lw	t3,72(a1)
    493c:	001e0e13          	addi	t3,t3,1
    4940:	002e1e13          	slli	t3,t3,0x2
    4944:	01c70e33          	add	t3,a4,t3
    4948:	01ee2623          	sw	t5,12(t3)
    494c:	0485ae03          	lw	t3,72(a1)
    4950:	002e0e13          	addi	t3,t3,2
    4954:	002e1e13          	slli	t3,t3,0x2
    4958:	01c70e33          	add	t3,a4,t3
    495c:	005e2623          	sw	t0,12(t3)
    4960:	0485ae03          	lw	t3,72(a1)
    4964:	003e0e13          	addi	t3,t3,3
    4968:	05c5a423          	sw	t3,72(a1)
    496c:	f1dfb06f          	j	888 <benchmark_body+0x738>
    4970:	03072f03          	lw	t5,48(a4)
    4974:	03472e03          	lw	t3,52(a4)
    4978:	01cf0463          	beq	t5,t3,4980 <benchmark_body+0x4830>
    497c:	f2dfb06f          	j	8a8 <benchmark_body+0x758>
    4980:	02872e03          	lw	t3,40(a4)
    4984:	03072f03          	lw	t5,48(a4)
    4988:	01ee4463          	blt	t3,t5,4990 <benchmark_body+0x4840>
    498c:	f1dfb06f          	j	8a8 <benchmark_body+0x758>
    4990:	02c72f83          	lw	t6,44(a4)
    4994:	01ee02b3          	add	t0,t3,t5
    4998:	03f72223          	sw	t6,36(a4)
    499c:	0007af83          	lw	t6,0(a5)
    49a0:	ffcf8f93          	addi	t6,t6,-4
    49a4:	01f7a023          	sw	t6,0(a5)
    49a8:	0485af83          	lw	t6,72(a1)
    49ac:	002f9f93          	slli	t6,t6,0x2
    49b0:	01f70fb3          	add	t6,a4,t6
    49b4:	01cfa623          	sw	t3,12(t6)
    49b8:	0485ae03          	lw	t3,72(a1)
    49bc:	001e0e13          	addi	t3,t3,1
    49c0:	002e1e13          	slli	t3,t3,0x2
    49c4:	01c70e33          	add	t3,a4,t3
    49c8:	01ee2623          	sw	t5,12(t3)
    49cc:	0485ae03          	lw	t3,72(a1)
    49d0:	002e0e13          	addi	t3,t3,2
    49d4:	002e1e13          	slli	t3,t3,0x2
    49d8:	01c70e33          	add	t3,a4,t3
    49dc:	005e2623          	sw	t0,12(t3)
    49e0:	0485ae03          	lw	t3,72(a1)
    49e4:	003e0e13          	addi	t3,t3,3
    49e8:	05c5a423          	sw	t3,72(a1)
    49ec:	ebdfb06f          	j	8a8 <benchmark_body+0x758>
    49f0:	03072f03          	lw	t5,48(a4)
    49f4:	03472e03          	lw	t3,52(a4)
    49f8:	01cf0463          	beq	t5,t3,4a00 <benchmark_body+0x48b0>
    49fc:	ecdfb06f          	j	8c8 <benchmark_body+0x778>
    4a00:	02872e03          	lw	t3,40(a4)
    4a04:	03072f03          	lw	t5,48(a4)
    4a08:	01ee4463          	blt	t3,t5,4a10 <benchmark_body+0x48c0>
    4a0c:	ebdfb06f          	j	8c8 <benchmark_body+0x778>
    4a10:	0007af83          	lw	t6,0(a5)
    4a14:	01ee02b3          	add	t0,t3,t5
    4a18:	ffcf8f93          	addi	t6,t6,-4
    4a1c:	01f7a023          	sw	t6,0(a5)
    4a20:	0485af83          	lw	t6,72(a1)
    4a24:	002f9f93          	slli	t6,t6,0x2
    4a28:	01f70fb3          	add	t6,a4,t6
    4a2c:	01cfa623          	sw	t3,12(t6)
    4a30:	0485ae03          	lw	t3,72(a1)
    4a34:	001e0e13          	addi	t3,t3,1
    4a38:	002e1e13          	slli	t3,t3,0x2
    4a3c:	01c70e33          	add	t3,a4,t3
    4a40:	01ee2623          	sw	t5,12(t3)
    4a44:	0485ae03          	lw	t3,72(a1)
    4a48:	002e0e13          	addi	t3,t3,2
    4a4c:	002e1e13          	slli	t3,t3,0x2
    4a50:	01c70e33          	add	t3,a4,t3
    4a54:	005e2623          	sw	t0,12(t3)
    4a58:	0485ae03          	lw	t3,72(a1)
    4a5c:	003e0e13          	addi	t3,t3,3
    4a60:	05c5a423          	sw	t3,72(a1)
    4a64:	e65fb06f          	j	8c8 <benchmark_body+0x778>
    4a68:	03072f03          	lw	t5,48(a4)
    4a6c:	02472e03          	lw	t3,36(a4)
    4a70:	01cf0463          	beq	t5,t3,4a78 <benchmark_body+0x4928>
    4a74:	e75fb06f          	j	8e8 <benchmark_body+0x798>
    4a78:	02872e03          	lw	t3,40(a4)
    4a7c:	03072f03          	lw	t5,48(a4)
    4a80:	01ee4463          	blt	t3,t5,4a88 <benchmark_body+0x4938>
    4a84:	e65fb06f          	j	8e8 <benchmark_body+0x798>
    4a88:	02c72f83          	lw	t6,44(a4)
    4a8c:	01ee02b3          	add	t0,t3,t5
    4a90:	03f72223          	sw	t6,36(a4)
    4a94:	0007af83          	lw	t6,0(a5)
    4a98:	ffcf8f93          	addi	t6,t6,-4
    4a9c:	01f7a023          	sw	t6,0(a5)
    4aa0:	0485af83          	lw	t6,72(a1)
    4aa4:	002f9f93          	slli	t6,t6,0x2
    4aa8:	01f70fb3          	add	t6,a4,t6
    4aac:	01cfa623          	sw	t3,12(t6)
    4ab0:	0485ae03          	lw	t3,72(a1)
    4ab4:	001e0e13          	addi	t3,t3,1
    4ab8:	002e1e13          	slli	t3,t3,0x2
    4abc:	01c70e33          	add	t3,a4,t3
    4ac0:	01ee2623          	sw	t5,12(t3)
    4ac4:	0485ae03          	lw	t3,72(a1)
    4ac8:	002e0e13          	addi	t3,t3,2
    4acc:	002e1e13          	slli	t3,t3,0x2
    4ad0:	01c70e33          	add	t3,a4,t3
    4ad4:	005e2623          	sw	t0,12(t3)
    4ad8:	0485ae03          	lw	t3,72(a1)
    4adc:	003e0e13          	addi	t3,t3,3
    4ae0:	05c5a423          	sw	t3,72(a1)
    4ae4:	e05fb06f          	j	8e8 <benchmark_body+0x798>
    4ae8:	03072f03          	lw	t5,48(a4)
    4aec:	02c72e03          	lw	t3,44(a4)
    4af0:	01cf0463          	beq	t5,t3,4af8 <benchmark_body+0x49a8>
    4af4:	e15fb06f          	j	908 <benchmark_body+0x7b8>
    4af8:	02872e03          	lw	t3,40(a4)
    4afc:	03072f03          	lw	t5,48(a4)
    4b00:	01ee4463          	blt	t3,t5,4b08 <benchmark_body+0x49b8>
    4b04:	e05fb06f          	j	908 <benchmark_body+0x7b8>
    4b08:	0007af83          	lw	t6,0(a5)
    4b0c:	01ee02b3          	add	t0,t3,t5
    4b10:	ffcf8f93          	addi	t6,t6,-4
    4b14:	01f7a023          	sw	t6,0(a5)
    4b18:	0485af83          	lw	t6,72(a1)
    4b1c:	002f9f93          	slli	t6,t6,0x2
    4b20:	01f70fb3          	add	t6,a4,t6
    4b24:	01cfa623          	sw	t3,12(t6)
    4b28:	0485ae03          	lw	t3,72(a1)
    4b2c:	001e0e13          	addi	t3,t3,1
    4b30:	002e1e13          	slli	t3,t3,0x2
    4b34:	01c70e33          	add	t3,a4,t3
    4b38:	01ee2623          	sw	t5,12(t3)
    4b3c:	0485ae03          	lw	t3,72(a1)
    4b40:	002e0e13          	addi	t3,t3,2
    4b44:	002e1e13          	slli	t3,t3,0x2
    4b48:	01c70e33          	add	t3,a4,t3
    4b4c:	005e2623          	sw	t0,12(t3)
    4b50:	0485ae03          	lw	t3,72(a1)
    4b54:	003e0e13          	addi	t3,t3,3
    4b58:	05c5a423          	sw	t3,72(a1)
    4b5c:	dadfb06f          	j	908 <benchmark_body+0x7b8>
    4b60:	03472f03          	lw	t5,52(a4)
    4b64:	02c72e03          	lw	t3,44(a4)
    4b68:	01cf0463          	beq	t5,t3,4b70 <benchmark_body+0x4a20>
    4b6c:	dbdfb06f          	j	928 <benchmark_body+0x7d8>
    4b70:	02872e03          	lw	t3,40(a4)
    4b74:	03472f03          	lw	t5,52(a4)
    4b78:	01ee4463          	blt	t3,t5,4b80 <benchmark_body+0x4a30>
    4b7c:	dadfb06f          	j	928 <benchmark_body+0x7d8>
    4b80:	03072f83          	lw	t6,48(a4)
    4b84:	01ee02b3          	add	t0,t3,t5
    4b88:	03f72223          	sw	t6,36(a4)
    4b8c:	0007af83          	lw	t6,0(a5)
    4b90:	ffcf8f93          	addi	t6,t6,-4
    4b94:	01f7a023          	sw	t6,0(a5)
    4b98:	0485af83          	lw	t6,72(a1)
    4b9c:	002f9f93          	slli	t6,t6,0x2
    4ba0:	01f70fb3          	add	t6,a4,t6
    4ba4:	01cfa623          	sw	t3,12(t6)
    4ba8:	0485ae03          	lw	t3,72(a1)
    4bac:	001e0e13          	addi	t3,t3,1
    4bb0:	002e1e13          	slli	t3,t3,0x2
    4bb4:	01c70e33          	add	t3,a4,t3
    4bb8:	01ee2623          	sw	t5,12(t3)
    4bbc:	0485ae03          	lw	t3,72(a1)
    4bc0:	002e0e13          	addi	t3,t3,2
    4bc4:	002e1e13          	slli	t3,t3,0x2
    4bc8:	01c70e33          	add	t3,a4,t3
    4bcc:	005e2623          	sw	t0,12(t3)
    4bd0:	0485ae03          	lw	t3,72(a1)
    4bd4:	003e0e13          	addi	t3,t3,3
    4bd8:	05c5a423          	sw	t3,72(a1)
    4bdc:	d4dfb06f          	j	928 <benchmark_body+0x7d8>
    4be0:	03472f03          	lw	t5,52(a4)
    4be4:	03072e03          	lw	t3,48(a4)
    4be8:	01cf0463          	beq	t5,t3,4bf0 <benchmark_body+0x4aa0>
    4bec:	d5dfb06f          	j	948 <benchmark_body+0x7f8>
    4bf0:	02872e03          	lw	t3,40(a4)
    4bf4:	03472f03          	lw	t5,52(a4)
    4bf8:	01ee4463          	blt	t3,t5,4c00 <benchmark_body+0x4ab0>
    4bfc:	d4dfb06f          	j	948 <benchmark_body+0x7f8>
    4c00:	02c72f83          	lw	t6,44(a4)
    4c04:	01ee02b3          	add	t0,t3,t5
    4c08:	03f72223          	sw	t6,36(a4)
    4c0c:	0007af83          	lw	t6,0(a5)
    4c10:	ffcf8f93          	addi	t6,t6,-4
    4c14:	01f7a023          	sw	t6,0(a5)
    4c18:	0485af83          	lw	t6,72(a1)
    4c1c:	002f9f93          	slli	t6,t6,0x2
    4c20:	01f70fb3          	add	t6,a4,t6
    4c24:	01cfa623          	sw	t3,12(t6)
    4c28:	0485ae03          	lw	t3,72(a1)
    4c2c:	001e0e13          	addi	t3,t3,1
    4c30:	002e1e13          	slli	t3,t3,0x2
    4c34:	01c70e33          	add	t3,a4,t3
    4c38:	01ee2623          	sw	t5,12(t3)
    4c3c:	0485ae03          	lw	t3,72(a1)
    4c40:	002e0e13          	addi	t3,t3,2
    4c44:	002e1e13          	slli	t3,t3,0x2
    4c48:	01c70e33          	add	t3,a4,t3
    4c4c:	005e2623          	sw	t0,12(t3)
    4c50:	0485ae03          	lw	t3,72(a1)
    4c54:	003e0e13          	addi	t3,t3,3
    4c58:	05c5a423          	sw	t3,72(a1)
    4c5c:	cedfb06f          	j	948 <benchmark_body+0x7f8>
    4c60:	03472f03          	lw	t5,52(a4)
    4c64:	02472e03          	lw	t3,36(a4)
    4c68:	01cf0463          	beq	t5,t3,4c70 <benchmark_body+0x4b20>
    4c6c:	cfdfb06f          	j	968 <benchmark_body+0x818>
    4c70:	02872e03          	lw	t3,40(a4)
    4c74:	03472f03          	lw	t5,52(a4)
    4c78:	01ee4463          	blt	t3,t5,4c80 <benchmark_body+0x4b30>
    4c7c:	cedfb06f          	j	968 <benchmark_body+0x818>
    4c80:	03072f83          	lw	t6,48(a4)
    4c84:	01ee02b3          	add	t0,t3,t5
    4c88:	03f72223          	sw	t6,36(a4)
    4c8c:	0007af83          	lw	t6,0(a5)
    4c90:	ffcf8f93          	addi	t6,t6,-4
    4c94:	01f7a023          	sw	t6,0(a5)
    4c98:	0485af83          	lw	t6,72(a1)
    4c9c:	002f9f93          	slli	t6,t6,0x2
    4ca0:	01f70fb3          	add	t6,a4,t6
    4ca4:	01cfa623          	sw	t3,12(t6)
    4ca8:	0485ae03          	lw	t3,72(a1)
    4cac:	001e0e13          	addi	t3,t3,1
    4cb0:	002e1e13          	slli	t3,t3,0x2
    4cb4:	01c70e33          	add	t3,a4,t3
    4cb8:	01ee2623          	sw	t5,12(t3)
    4cbc:	0485ae03          	lw	t3,72(a1)
    4cc0:	002e0e13          	addi	t3,t3,2
    4cc4:	002e1e13          	slli	t3,t3,0x2
    4cc8:	01c70e33          	add	t3,a4,t3
    4ccc:	005e2623          	sw	t0,12(t3)
    4cd0:	0485ae03          	lw	t3,72(a1)
    4cd4:	003e0e13          	addi	t3,t3,3
    4cd8:	05c5a423          	sw	t3,72(a1)
    4cdc:	c8dfb06f          	j	968 <benchmark_body+0x818>

00004ce0 <initialise_benchmark>:
    4ce0:	00008067          	ret

00004ce4 <warm_caches>:
    4ce4:	ff010113          	addi	sp,sp,-16
    4ce8:	00112623          	sw	ra,12(sp)
    4cec:	c64fb0ef          	jal	ra,150 <benchmark_body>
    4cf0:	00c12083          	lw	ra,12(sp)
    4cf4:	01010113          	addi	sp,sp,16
    4cf8:	00008067          	ret

00004cfc <benchmark>:
    4cfc:	00020537          	lui	a0,0x20
    4d00:	ff010113          	addi	sp,sp,-16
    4d04:	21050513          	addi	a0,a0,528 # 20210 <P3_is_marked+0x101c8>
    4d08:	00112623          	sw	ra,12(sp)
    4d0c:	c44fb0ef          	jal	ra,150 <benchmark_body>
    4d10:	00c12083          	lw	ra,12(sp)
    4d14:	01010113          	addi	sp,sp,16
    4d18:	00008067          	ret

00004d1c <verify_benchmark>:
    4d1c:	000107b7          	lui	a5,0x10
    4d20:	0047a703          	lw	a4,4(a5) # 10004 <P1_is_marked>
    4d24:	fc010113          	addi	sp,sp,-64
    4d28:	00012623          	sw	zero,12(sp)
    4d2c:	00012823          	sw	zero,16(sp)
    4d30:	00012a23          	sw	zero,20(sp)
    4d34:	00012c23          	sw	zero,24(sp)
    4d38:	00012e23          	sw	zero,28(sp)
    4d3c:	02012023          	sw	zero,32(sp)
    4d40:	02012423          	sw	zero,40(sp)
    4d44:	02012623          	sw	zero,44(sp)
    4d48:	02012823          	sw	zero,48(sp)
    4d4c:	02012a23          	sw	zero,52(sp)
    4d50:	00300793          	li	a5,3
    4d54:	00000513          	li	a0,0
    4d58:	00f71a63          	bne	a4,a5,4d6c <verify_benchmark+0x50>
    4d5c:	000107b7          	lui	a5,0x10
    4d60:	0007a703          	lw	a4,0(a5) # 10000 <P2_is_marked>
    4d64:	00500793          	li	a5,5
    4d68:	00f70663          	beq	a4,a5,4d74 <verify_benchmark+0x58>
    4d6c:	04010113          	addi	sp,sp,64
    4d70:	00008067          	ret
    4d74:	000107b7          	lui	a5,0x10
    4d78:	0487a503          	lw	a0,72(a5) # 10048 <P3_is_marked>
    4d7c:	08051063          	bnez	a0,4dfc <verify_benchmark+0xe0>
    4d80:	00000713          	li	a4,0
    4d84:	000106b7          	lui	a3,0x10
    4d88:	00271793          	slli	a5,a4,0x2
    4d8c:	00868693          	addi	a3,a3,8 # 10008 <P1_marking_member_0>
    4d90:	00f687b3          	add	a5,a3,a5
    4d94:	0007a303          	lw	t1,0(a5)
    4d98:	00810813          	addi	a6,sp,8
    4d9c:	00000893          	li	a7,0
    4da0:	02810593          	addi	a1,sp,40
    4da4:	01410613          	addi	a2,sp,20
    4da8:	00300e13          	li	t3,3
    4dac:	00170713          	addi	a4,a4,1
    4db0:	00480813          	addi	a6,a6,4
    4db4:	fb131ce3          	bne	t1,a7,4d6c <verify_benchmark+0x50>
    4db8:	00062303          	lw	t1,0(a2)
    4dbc:	0247a883          	lw	a7,36(a5)
    4dc0:	00460613          	addi	a2,a2,4
    4dc4:	fb1314e3          	bne	t1,a7,4d6c <verify_benchmark+0x50>
    4dc8:	0005a883          	lw	a7,0(a1)
    4dcc:	00c7a783          	lw	a5,12(a5)
    4dd0:	00458593          	addi	a1,a1,4
    4dd4:	f8f89ce3          	bne	a7,a5,4d6c <verify_benchmark+0x50>
    4dd8:	03c70663          	beq	a4,t3,4e04 <verify_benchmark+0xe8>
    4ddc:	00271793          	slli	a5,a4,0x2
    4de0:	00f687b3          	add	a5,a3,a5
    4de4:	00082883          	lw	a7,0(a6)
    4de8:	0007a303          	lw	t1,0(a5)
    4dec:	00170713          	addi	a4,a4,1
    4df0:	00480813          	addi	a6,a6,4
    4df4:	fd1302e3          	beq	t1,a7,4db8 <verify_benchmark+0x9c>
    4df8:	f75ff06f          	j	4d6c <verify_benchmark+0x50>
    4dfc:	00000513          	li	a0,0
    4e00:	f6dff06f          	j	4d6c <verify_benchmark+0x50>
    4e04:	0306a783          	lw	a5,48(a3)
    4e08:	f60792e3          	bnez	a5,4d6c <verify_benchmark+0x50>
    4e0c:	0186a503          	lw	a0,24(a3)
    4e10:	fe0516e3          	bnez	a0,4dfc <verify_benchmark+0xe0>
    4e14:	0346a783          	lw	a5,52(a3)
    4e18:	f4079ae3          	bnez	a5,4d6c <verify_benchmark+0x50>
    4e1c:	01c6a783          	lw	a5,28(a3)
    4e20:	f40796e3          	bnez	a5,4d6c <verify_benchmark+0x50>
    4e24:	0206a503          	lw	a0,32(a3)
    4e28:	04010113          	addi	sp,sp,64
    4e2c:	00153513          	seqz	a0,a0
    4e30:	00008067          	ret

Disassembly of section .text.startup:

00004e34 <main>:
    4e34:	fe010113          	addi	sp,sp,-32
    4e38:	00112e23          	sw	ra,28(sp)
    4e3c:	a84fb0ef          	jal	ra,c0 <initialise_board>
    4e40:	ea1ff0ef          	jal	ra,4ce0 <initialise_benchmark>
    4e44:	00100513          	li	a0,1
    4e48:	e9dff0ef          	jal	ra,4ce4 <warm_caches>
    4e4c:	a78fb0ef          	jal	ra,c4 <start_trigger>
    4e50:	eadff0ef          	jal	ra,4cfc <benchmark>
    4e54:	00a12623          	sw	a0,12(sp)
    4e58:	a98fb0ef          	jal	ra,f0 <stop_trigger>
    4e5c:	00c12503          	lw	a0,12(sp)
    4e60:	ebdff0ef          	jal	ra,4d1c <verify_benchmark>
    4e64:	00051a63          	bnez	a0,4e78 <main+0x44>
    4e68:	110007b7          	lui	a5,0x11000
    4e6c:	fff00713          	li	a4,-1
    4e70:	00e7a823          	sw	a4,16(a5) # 11000010 <P3_is_marked+0x10feffc8>
    4e74:	00e7aa23          	sw	a4,20(a5)
    4e78:	110007b7          	lui	a5,0x11000
    4e7c:	00100713          	li	a4,1
    4e80:	08e7a023          	sw	a4,128(a5) # 11000080 <P3_is_marked+0x10ff0038>
    4e84:	0000006f          	j	4e84 <main+0x50>
