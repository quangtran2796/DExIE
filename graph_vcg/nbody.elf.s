
nbody.elf:     file format elf32-littleriscv


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
  84:	35d020ef          	jal	ra,2be0 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <start_time+0x10fef800>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <start_time+0x10fef800>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <start_time+0x10fef880>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <start_time+0xf7f0>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	80a7a023          	sw	a0,-2048(a5) # 10800 <start_time>
      e4:	80e7a223          	sw	a4,-2044(a5)
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
     114:	8007a583          	lw	a1,-2048(a5) # 10800 <start_time>
     118:	8047a703          	lw	a4,-2044(a5)
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

00000150 <offset_momentum>:
     150:	0e058463          	beqz	a1,238 <offset_momentum+0xe8>
     154:	fd010113          	addi	sp,sp,-48
     158:	000107b7          	lui	a5,0x10
     15c:	01412c23          	sw	s4,24(sp)
     160:	01512a23          	sw	s5,20(sp)
     164:	7f07aa03          	lw	s4,2032(a5) # 107f0 <__clz_tab+0x104>
     168:	7f47aa83          	lw	s5,2036(a5)
     16c:	01912223          	sw	s9,4(sp)
     170:	00659593          	slli	a1,a1,0x6
     174:	02050c93          	addi	s9,a0,32
     178:	01612823          	sw	s6,16(sp)
     17c:	01712623          	sw	s7,12(sp)
     180:	01812423          	sw	s8,8(sp)
     184:	02112623          	sw	ra,44(sp)
     188:	02812423          	sw	s0,40(sp)
     18c:	02912223          	sw	s1,36(sp)
     190:	03212023          	sw	s2,32(sp)
     194:	01312e23          	sw	s3,28(sp)
     198:	00bc8c33          	add	s8,s9,a1
     19c:	000c8b13          	mv	s6,s9
     1a0:	03850b93          	addi	s7,a0,56
     1a4:	018b2903          	lw	s2,24(s6)
     1a8:	01cb2983          	lw	s3,28(s6)
     1ac:	000b0493          	mv	s1,s6
     1b0:	000c8413          	mv	s0,s9
     1b4:	0004a603          	lw	a2,0(s1)
     1b8:	0044a683          	lw	a3,4(s1)
     1bc:	00090513          	mv	a0,s2
     1c0:	00098593          	mv	a1,s3
     1c4:	1e5010ef          	jal	ra,1ba8 <__muldf3>
     1c8:	000a0613          	mv	a2,s4
     1cc:	000a8693          	mv	a3,s5
     1d0:	088010ef          	jal	ra,1258 <__divdf3>
     1d4:	00840413          	addi	s0,s0,8
     1d8:	00050613          	mv	a2,a0
     1dc:	00058693          	mv	a3,a1
     1e0:	ff842503          	lw	a0,-8(s0)
     1e4:	ffc42583          	lw	a1,-4(s0)
     1e8:	00848493          	addi	s1,s1,8
     1ec:	088020ef          	jal	ra,2274 <__subdf3>
     1f0:	fea42c23          	sw	a0,-8(s0)
     1f4:	feb42e23          	sw	a1,-4(s0)
     1f8:	fa8b9ee3          	bne	s7,s0,1b4 <offset_momentum+0x64>
     1fc:	040b0b13          	addi	s6,s6,64
     200:	fb8b12e3          	bne	s6,s8,1a4 <offset_momentum+0x54>
     204:	02c12083          	lw	ra,44(sp)
     208:	02812403          	lw	s0,40(sp)
     20c:	02412483          	lw	s1,36(sp)
     210:	02012903          	lw	s2,32(sp)
     214:	01c12983          	lw	s3,28(sp)
     218:	01812a03          	lw	s4,24(sp)
     21c:	01412a83          	lw	s5,20(sp)
     220:	01012b03          	lw	s6,16(sp)
     224:	00c12b83          	lw	s7,12(sp)
     228:	00812c03          	lw	s8,8(sp)
     22c:	00412c83          	lw	s9,4(sp)
     230:	03010113          	addi	sp,sp,48
     234:	00008067          	ret
     238:	00008067          	ret

0000023c <bodies_energy>:
     23c:	f9010113          	addi	sp,sp,-112
     240:	06112623          	sw	ra,108(sp)
     244:	06812423          	sw	s0,104(sp)
     248:	06912223          	sw	s1,100(sp)
     24c:	07212023          	sw	s2,96(sp)
     250:	05312e23          	sw	s3,92(sp)
     254:	05412c23          	sw	s4,88(sp)
     258:	05512a23          	sw	s5,84(sp)
     25c:	05612823          	sw	s6,80(sp)
     260:	05712623          	sw	s7,76(sp)
     264:	05812423          	sw	s8,72(sp)
     268:	05912223          	sw	s9,68(sp)
     26c:	05a12023          	sw	s10,64(sp)
     270:	03b12e23          	sw	s11,60(sp)
     274:	00b12223          	sw	a1,4(sp)
     278:	20058663          	beqz	a1,484 <bodies_energy+0x248>
     27c:	000107b7          	lui	a5,0x10
     280:	7fc7a803          	lw	a6,2044(a5) # 107fc <__clz_tab+0x110>
     284:	7f87a783          	lw	a5,2040(a5)
     288:	00659c93          	slli	s9,a1,0x6
     28c:	01012623          	sw	a6,12(sp)
     290:	00f12423          	sw	a5,8(sp)
     294:	00050d13          	mv	s10,a0
     298:	01950cb3          	add	s9,a0,s9
     29c:	00000d93          	li	s11,0
     2a0:	00000913          	li	s2,0
     2a4:	00000493          	li	s1,0
     2a8:	01800c13          	li	s8,24
     2ac:	020d2603          	lw	a2,32(s10)
     2b0:	024d2683          	lw	a3,36(s10)
     2b4:	028d2b03          	lw	s6,40(s10)
     2b8:	02cd2b83          	lw	s7,44(s10)
     2bc:	00060513          	mv	a0,a2
     2c0:	00068593          	mv	a1,a3
     2c4:	0e5010ef          	jal	ra,1ba8 <__muldf3>
     2c8:	00050993          	mv	s3,a0
     2cc:	00058413          	mv	s0,a1
     2d0:	000b0613          	mv	a2,s6
     2d4:	000b8693          	mv	a3,s7
     2d8:	000b0513          	mv	a0,s6
     2dc:	000b8593          	mv	a1,s7
     2e0:	0c9010ef          	jal	ra,1ba8 <__muldf3>
     2e4:	030d2a03          	lw	s4,48(s10)
     2e8:	034d2a83          	lw	s5,52(s10)
     2ec:	00050613          	mv	a2,a0
     2f0:	00058693          	mv	a3,a1
     2f4:	00098513          	mv	a0,s3
     2f8:	00040593          	mv	a1,s0
     2fc:	780000ef          	jal	ra,a7c <__adddf3>
     300:	00050993          	mv	s3,a0
     304:	000a0613          	mv	a2,s4
     308:	000a8693          	mv	a3,s5
     30c:	00058413          	mv	s0,a1
     310:	000a0513          	mv	a0,s4
     314:	000a8593          	mv	a1,s5
     318:	091010ef          	jal	ra,1ba8 <__muldf3>
     31c:	038d2a03          	lw	s4,56(s10)
     320:	03cd2a83          	lw	s5,60(s10)
     324:	00050613          	mv	a2,a0
     328:	00058693          	mv	a3,a1
     32c:	00098513          	mv	a0,s3
     330:	00040593          	mv	a1,s0
     334:	748000ef          	jal	ra,a7c <__adddf3>
     338:	000a0613          	mv	a2,s4
     33c:	000a8693          	mv	a3,s5
     340:	069010ef          	jal	ra,1ba8 <__muldf3>
     344:	00812603          	lw	a2,8(sp)
     348:	00c12683          	lw	a3,12(sp)
     34c:	001d8d93          	addi	s11,s11,1
     350:	000d0993          	mv	s3,s10
     354:	055010ef          	jal	ra,1ba8 <__muldf3>
     358:	00050613          	mv	a2,a0
     35c:	00058693          	mv	a3,a1
     360:	00090513          	mv	a0,s2
     364:	00048593          	mv	a1,s1
     368:	714000ef          	jal	ra,a7c <__adddf3>
     36c:	00412783          	lw	a5,4(sp)
     370:	00050913          	mv	s2,a0
     374:	00058493          	mv	s1,a1
     378:	11b78a63          	beq	a5,s11,48c <bodies_energy+0x250>
     37c:	040d0d13          	addi	s10,s10,64
     380:	000d0413          	mv	s0,s10
     384:	01810b93          	addi	s7,sp,24
     388:	00000b13          	li	s6,0
     38c:	016985b3          	add	a1,s3,s6
     390:	016406b3          	add	a3,s0,s6
     394:	0006a603          	lw	a2,0(a3)
     398:	0005a503          	lw	a0,0(a1)
     39c:	0046a683          	lw	a3,4(a3)
     3a0:	0045a583          	lw	a1,4(a1)
     3a4:	008b8b93          	addi	s7,s7,8
     3a8:	008b0b13          	addi	s6,s6,8
     3ac:	6c9010ef          	jal	ra,2274 <__subdf3>
     3b0:	feabac23          	sw	a0,-8(s7)
     3b4:	febbae23          	sw	a1,-4(s7)
     3b8:	fd8b1ae3          	bne	s6,s8,38c <bodies_energy+0x150>
     3bc:	01812603          	lw	a2,24(sp)
     3c0:	01c12683          	lw	a3,28(sp)
     3c4:	04040413          	addi	s0,s0,64
     3c8:	00060513          	mv	a0,a2
     3cc:	00068593          	mv	a1,a3
     3d0:	7d8010ef          	jal	ra,1ba8 <__muldf3>
     3d4:	02012603          	lw	a2,32(sp)
     3d8:	02412683          	lw	a3,36(sp)
     3dc:	00050b93          	mv	s7,a0
     3e0:	00058b13          	mv	s6,a1
     3e4:	00060513          	mv	a0,a2
     3e8:	00068593          	mv	a1,a3
     3ec:	7bc010ef          	jal	ra,1ba8 <__muldf3>
     3f0:	00050613          	mv	a2,a0
     3f4:	00058693          	mv	a3,a1
     3f8:	000b8513          	mv	a0,s7
     3fc:	000b0593          	mv	a1,s6
     400:	67c000ef          	jal	ra,a7c <__adddf3>
     404:	02812603          	lw	a2,40(sp)
     408:	02c12683          	lw	a3,44(sp)
     40c:	00050b93          	mv	s7,a0
     410:	00058b13          	mv	s6,a1
     414:	00060513          	mv	a0,a2
     418:	00068593          	mv	a1,a3
     41c:	78c010ef          	jal	ra,1ba8 <__muldf3>
     420:	00050613          	mv	a2,a0
     424:	00058693          	mv	a3,a1
     428:	000b8513          	mv	a0,s7
     42c:	000b0593          	mv	a1,s6
     430:	64c000ef          	jal	ra,a7c <__adddf3>
     434:	318000ef          	jal	ra,74c <sqrt>
     438:	ff842603          	lw	a2,-8(s0)
     43c:	ffc42683          	lw	a3,-4(s0)
     440:	00050b93          	mv	s7,a0
     444:	00058b13          	mv	s6,a1
     448:	000a0513          	mv	a0,s4
     44c:	000a8593          	mv	a1,s5
     450:	758010ef          	jal	ra,1ba8 <__muldf3>
     454:	000b8613          	mv	a2,s7
     458:	000b0693          	mv	a3,s6
     45c:	5fd000ef          	jal	ra,1258 <__divdf3>
     460:	00050613          	mv	a2,a0
     464:	00058693          	mv	a3,a1
     468:	00090513          	mv	a0,s2
     46c:	00048593          	mv	a1,s1
     470:	605010ef          	jal	ra,2274 <__subdf3>
     474:	00050913          	mv	s2,a0
     478:	00058493          	mv	s1,a1
     47c:	f08c94e3          	bne	s9,s0,384 <bodies_energy+0x148>
     480:	e2dff06f          	j	2ac <bodies_energy+0x70>
     484:	00000913          	li	s2,0
     488:	00000493          	li	s1,0
     48c:	06c12083          	lw	ra,108(sp)
     490:	06812403          	lw	s0,104(sp)
     494:	05c12983          	lw	s3,92(sp)
     498:	05812a03          	lw	s4,88(sp)
     49c:	05412a83          	lw	s5,84(sp)
     4a0:	05012b03          	lw	s6,80(sp)
     4a4:	04c12b83          	lw	s7,76(sp)
     4a8:	04812c03          	lw	s8,72(sp)
     4ac:	04412c83          	lw	s9,68(sp)
     4b0:	04012d03          	lw	s10,64(sp)
     4b4:	03c12d83          	lw	s11,60(sp)
     4b8:	00090513          	mv	a0,s2
     4bc:	00048593          	mv	a1,s1
     4c0:	06012903          	lw	s2,96(sp)
     4c4:	06412483          	lw	s1,100(sp)
     4c8:	07010113          	addi	sp,sp,112
     4cc:	00008067          	ret

000004d0 <benchmark_body>:
     4d0:	12a05c63          	blez	a0,608 <benchmark_body+0x138>
     4d4:	fb010113          	addi	sp,sp,-80
     4d8:	000107b7          	lui	a5,0x10
     4dc:	03a12023          	sw	s10,32(sp)
     4e0:	00010d37          	lui	s10,0x10
     4e4:	04912223          	sw	s1,68(sp)
     4e8:	03412c23          	sw	s4,56(sp)
     4ec:	03512a23          	sw	s5,52(sp)
     4f0:	7f07aa03          	lw	s4,2032(a5) # 107f0 <__clz_tab+0x104>
     4f4:	7f47aa83          	lw	s5,2036(a5)
     4f8:	03612823          	sw	s6,48(sp)
     4fc:	03712623          	sw	s7,44(sp)
     500:	00010b37          	lui	s6,0x10
     504:	020d0793          	addi	a5,s10,32 # 10020 <solar_bodies+0x20>
     508:	00010bb7          	lui	s7,0x10
     50c:	000104b7          	lui	s1,0x10
     510:	03812423          	sw	s8,40(sp)
     514:	03912223          	sw	s9,36(sp)
     518:	04112623          	sw	ra,76(sp)
     51c:	04812423          	sw	s0,72(sp)
     520:	05212023          	sw	s2,64(sp)
     524:	03312e23          	sw	s3,60(sp)
     528:	01b12e23          	sw	s11,28(sp)
     52c:	00050c93          	mv	s9,a0
     530:	00000c13          	li	s8,0
     534:	018b0b13          	addi	s6,s6,24 # 10018 <solar_bodies+0x18>
     538:	00f12623          	sw	a5,12(sp)
     53c:	160b8b93          	addi	s7,s7,352 # 10160 <impure_data+0x20>
     540:	00048493          	mv	s1,s1
     544:	00c12d83          	lw	s11,12(sp)
     548:	018da903          	lw	s2,24(s11)
     54c:	01cda983          	lw	s3,28(s11)
     550:	000d8413          	mv	s0,s11
     554:	00048d13          	mv	s10,s1
     558:	00042603          	lw	a2,0(s0)
     55c:	00442683          	lw	a3,4(s0)
     560:	00090513          	mv	a0,s2
     564:	00098593          	mv	a1,s3
     568:	640010ef          	jal	ra,1ba8 <__muldf3>
     56c:	000a0613          	mv	a2,s4
     570:	000a8693          	mv	a3,s5
     574:	4e5000ef          	jal	ra,1258 <__divdf3>
     578:	008d0d13          	addi	s10,s10,8
     57c:	00050613          	mv	a2,a0
     580:	00058693          	mv	a3,a1
     584:	018d2503          	lw	a0,24(s10)
     588:	01cd2583          	lw	a1,28(s10)
     58c:	00840413          	addi	s0,s0,8
     590:	4e5010ef          	jal	ra,2274 <__subdf3>
     594:	00ad2c23          	sw	a0,24(s10)
     598:	00bd2e23          	sw	a1,28(s10)
     59c:	fbab1ee3          	bne	s6,s10,558 <benchmark_body+0x88>
     5a0:	040d8d93          	addi	s11,s11,64
     5a4:	fbbb92e3          	bne	s7,s11,548 <benchmark_body+0x78>
     5a8:	06400413          	li	s0,100
     5ac:	fff40413          	addi	s0,s0,-1
     5b0:	00500593          	li	a1,5
     5b4:	00048513          	mv	a0,s1
     5b8:	c85ff0ef          	jal	ra,23c <bodies_energy>
     5bc:	fe0418e3          	bnez	s0,5ac <benchmark_body+0xdc>
     5c0:	001c0c13          	addi	s8,s8,1
     5c4:	f98c90e3          	bne	s9,s8,544 <benchmark_body+0x74>
     5c8:	04c12083          	lw	ra,76(sp)
     5cc:	04812403          	lw	s0,72(sp)
     5d0:	04412483          	lw	s1,68(sp)
     5d4:	04012903          	lw	s2,64(sp)
     5d8:	03c12983          	lw	s3,60(sp)
     5dc:	03812a03          	lw	s4,56(sp)
     5e0:	03412a83          	lw	s5,52(sp)
     5e4:	03012b03          	lw	s6,48(sp)
     5e8:	02c12b83          	lw	s7,44(sp)
     5ec:	02812c03          	lw	s8,40(sp)
     5f0:	02412c83          	lw	s9,36(sp)
     5f4:	02012d03          	lw	s10,32(sp)
     5f8:	01c12d83          	lw	s11,28(sp)
     5fc:	00000513          	li	a0,0
     600:	05010113          	addi	sp,sp,80
     604:	00008067          	ret
     608:	00000513          	li	a0,0
     60c:	00008067          	ret

00000610 <initialise_benchmark>:
     610:	00008067          	ret

00000614 <warm_caches>:
     614:	ff010113          	addi	sp,sp,-16
     618:	00112623          	sw	ra,12(sp)
     61c:	eb5ff0ef          	jal	ra,4d0 <benchmark_body>
     620:	00c12083          	lw	ra,12(sp)
     624:	01010113          	addi	sp,sp,16
     628:	00008067          	ret

0000062c <benchmark>:
     62c:	ff010113          	addi	sp,sp,-16
     630:	06400513          	li	a0,100
     634:	00112623          	sw	ra,12(sp)
     638:	e99ff0ef          	jal	ra,4d0 <benchmark_body>
     63c:	00c12083          	lw	ra,12(sp)
     640:	01010113          	addi	sp,sp,16
     644:	00008067          	ret

00000648 <verify_benchmark>:
     648:	fe010113          	addi	sp,sp,-32
     64c:	01312623          	sw	s3,12(sp)
     650:	000109b7          	lui	s3,0x10
     654:	01212823          	sw	s2,16(sp)
     658:	57098993          	addi	s3,s3,1392 # 10570 <expected.0>
     65c:	00010937          	lui	s2,0x10
     660:	01412423          	sw	s4,8(sp)
     664:	00112e23          	sw	ra,28(sp)
     668:	00812c23          	sw	s0,24(sp)
     66c:	00912a23          	sw	s1,20(sp)
     670:	01890913          	addi	s2,s2,24 # 10018 <solar_bodies+0x18>
     674:	14098a13          	addi	s4,s3,320
     678:	00000613          	li	a2,0
     67c:	00000693          	li	a3,0
     680:	fe892503          	lw	a0,-24(s2)
     684:	fec92583          	lw	a1,-20(s2)
     688:	fe890413          	addi	s0,s2,-24
     68c:	00098493          	mv	s1,s3
     690:	3a8010ef          	jal	ra,1a38 <__eqdf2>
     694:	04051063          	bnez	a0,6d4 <verify_benchmark+0x8c>
     698:	0204a603          	lw	a2,32(s1) # 10020 <solar_bodies+0x20>
     69c:	0244a683          	lw	a3,36(s1)
     6a0:	02042503          	lw	a0,32(s0)
     6a4:	02442583          	lw	a1,36(s0)
     6a8:	00848493          	addi	s1,s1,8
     6ac:	00840413          	addi	s0,s0,8
     6b0:	388010ef          	jal	ra,1a38 <__eqdf2>
     6b4:	02051063          	bnez	a0,6d4 <verify_benchmark+0x8c>
     6b8:	05240063          	beq	s0,s2,6f8 <verify_benchmark+0xb0>
     6bc:	0004a603          	lw	a2,0(s1)
     6c0:	0044a683          	lw	a3,4(s1)
     6c4:	00042503          	lw	a0,0(s0)
     6c8:	00442583          	lw	a1,4(s0)
     6cc:	36c010ef          	jal	ra,1a38 <__eqdf2>
     6d0:	fc0504e3          	beqz	a0,698 <verify_benchmark+0x50>
     6d4:	01c12083          	lw	ra,28(sp)
     6d8:	01812403          	lw	s0,24(sp)
     6dc:	01412483          	lw	s1,20(sp)
     6e0:	01012903          	lw	s2,16(sp)
     6e4:	00c12983          	lw	s3,12(sp)
     6e8:	00812a03          	lw	s4,8(sp)
     6ec:	00000513          	li	a0,0
     6f0:	02010113          	addi	sp,sp,32
     6f4:	00008067          	ret
     6f8:	0389a603          	lw	a2,56(s3)
     6fc:	03c9a683          	lw	a3,60(s3)
     700:	02092503          	lw	a0,32(s2)
     704:	02492583          	lw	a1,36(s2)
     708:	330010ef          	jal	ra,1a38 <__eqdf2>
     70c:	fc0514e3          	bnez	a0,6d4 <verify_benchmark+0x8c>
     710:	04098993          	addi	s3,s3,64
     714:	04090913          	addi	s2,s2,64
     718:	01498863          	beq	s3,s4,728 <verify_benchmark+0xe0>
     71c:	0009a603          	lw	a2,0(s3)
     720:	0049a683          	lw	a3,4(s3)
     724:	f5dff06f          	j	680 <verify_benchmark+0x38>
     728:	01c12083          	lw	ra,28(sp)
     72c:	01812403          	lw	s0,24(sp)
     730:	01412483          	lw	s1,20(sp)
     734:	01012903          	lw	s2,16(sp)
     738:	00c12983          	lw	s3,12(sp)
     73c:	00812a03          	lw	s4,8(sp)
     740:	00100513          	li	a0,1
     744:	02010113          	addi	sp,sp,32
     748:	00008067          	ret

0000074c <sqrt>:
     74c:	fe010113          	addi	sp,sp,-32
     750:	00112e23          	sw	ra,28(sp)
     754:	00812c23          	sw	s0,24(sp)
     758:	00912a23          	sw	s1,20(sp)
     75c:	01212823          	sw	s2,16(sp)
     760:	01312623          	sw	s3,12(sp)
     764:	00050493          	mv	s1,a0
     768:	00058413          	mv	s0,a1
     76c:	08c000ef          	jal	ra,7f8 <__ieee754_sqrt>
     770:	00050993          	mv	s3,a0
     774:	00058913          	mv	s2,a1
     778:	00048613          	mv	a2,s1
     77c:	00040693          	mv	a3,s0
     780:	00048513          	mv	a0,s1
     784:	00040593          	mv	a1,s0
     788:	2dc020ef          	jal	ra,2a64 <__unorddf2>
     78c:	00051e63          	bnez	a0,7a8 <sqrt+0x5c>
     790:	00000613          	li	a2,0
     794:	00000693          	li	a3,0
     798:	00048513          	mv	a0,s1
     79c:	00040593          	mv	a1,s0
     7a0:	324010ef          	jal	ra,1ac4 <__ledf2>
     7a4:	02054463          	bltz	a0,7cc <sqrt+0x80>
     7a8:	00098513          	mv	a0,s3
     7ac:	00090593          	mv	a1,s2
     7b0:	01c12083          	lw	ra,28(sp)
     7b4:	01812403          	lw	s0,24(sp)
     7b8:	01412483          	lw	s1,20(sp)
     7bc:	01012903          	lw	s2,16(sp)
     7c0:	00c12983          	lw	s3,12(sp)
     7c4:	02010113          	addi	sp,sp,32
     7c8:	00008067          	ret
     7cc:	408020ef          	jal	ra,2bd4 <__errno>
     7d0:	02100793          	li	a5,33
     7d4:	00f52023          	sw	a5,0(a0)
     7d8:	00000613          	li	a2,0
     7dc:	00000693          	li	a3,0
     7e0:	00060513          	mv	a0,a2
     7e4:	00068593          	mv	a1,a3
     7e8:	271000ef          	jal	ra,1258 <__divdf3>
     7ec:	00050993          	mv	s3,a0
     7f0:	00058913          	mv	s2,a1
     7f4:	fb5ff06f          	j	7a8 <sqrt+0x5c>

000007f8 <__ieee754_sqrt>:
     7f8:	ff010113          	addi	sp,sp,-16
     7fc:	00112623          	sw	ra,12(sp)
     800:	00812423          	sw	s0,8(sp)
     804:	00912223          	sw	s1,4(sp)
     808:	00050493          	mv	s1,a0
     80c:	00058413          	mv	s0,a1
     810:	7ff006b7          	lui	a3,0x7ff00
     814:	00b6f633          	and	a2,a3,a1
     818:	06d60663          	beq	a2,a3,884 <__ieee754_sqrt+0x8c>
     81c:	00058793          	mv	a5,a1
     820:	00050713          	mv	a4,a0
     824:	08b05463          	blez	a1,8ac <__ieee754_sqrt+0xb4>
     828:	4145de93          	srai	t4,a1,0x14
     82c:	120e8063          	beqz	t4,94c <__ieee754_sqrt+0x154>
     830:	c01e8e93          	addi	t4,t4,-1023
     834:	001006b7          	lui	a3,0x100
     838:	fff68613          	addi	a2,a3,-1 # fffff <start_time+0xef7ff>
     83c:	00c7f7b3          	and	a5,a5,a2
     840:	00d7e6b3          	or	a3,a5,a3
     844:	001ef793          	andi	a5,t4,1
     848:	00078a63          	beqz	a5,85c <__ieee754_sqrt+0x64>
     84c:	01f75793          	srli	a5,a4,0x1f
     850:	00169693          	slli	a3,a3,0x1
     854:	00d786b3          	add	a3,a5,a3
     858:	00171713          	slli	a4,a4,0x1
     85c:	401ede93          	srai	t4,t4,0x1
     860:	01f75793          	srli	a5,a4,0x1f
     864:	00169693          	slli	a3,a3,0x1
     868:	00d787b3          	add	a5,a5,a3
     86c:	00171713          	slli	a4,a4,0x1
     870:	01600593          	li	a1,22
     874:	00000e13          	li	t3,0
     878:	00000693          	li	a3,0
     87c:	00200637          	lui	a2,0x200
     880:	0f80006f          	j	978 <__ieee754_sqrt+0x180>
     884:	00050613          	mv	a2,a0
     888:	00058693          	mv	a3,a1
     88c:	00048513          	mv	a0,s1
     890:	00040593          	mv	a1,s0
     894:	314010ef          	jal	ra,1ba8 <__muldf3>
     898:	00048613          	mv	a2,s1
     89c:	00040693          	mv	a3,s0
     8a0:	1dc000ef          	jal	ra,a7c <__adddf3>
     8a4:	00050693          	mv	a3,a0
     8a8:	1b00006f          	j	a58 <__ieee754_sqrt+0x260>
     8ac:	00159613          	slli	a2,a1,0x1
     8b0:	00165613          	srli	a2,a2,0x1
     8b4:	00a66633          	or	a2,a2,a0
     8b8:	00050693          	mv	a3,a0
     8bc:	18060e63          	beqz	a2,a58 <__ieee754_sqrt+0x260>
     8c0:	0605c263          	bltz	a1,924 <__ieee754_sqrt+0x12c>
     8c4:	4145de93          	srai	t4,a1,0x14
     8c8:	f60e94e3          	bnez	t4,830 <__ieee754_sqrt+0x38>
     8cc:	02059063          	bnez	a1,8ec <__ieee754_sqrt+0xf4>
     8d0:	00058e93          	mv	t4,a1
     8d4:	febe8e93          	addi	t4,t4,-21
     8d8:	00b75793          	srli	a5,a4,0xb
     8dc:	01571713          	slli	a4,a4,0x15
     8e0:	fe078ae3          	beqz	a5,8d4 <__ieee754_sqrt+0xdc>
     8e4:	0147d693          	srli	a3,a5,0x14
     8e8:	06069663          	bnez	a3,954 <__ieee754_sqrt+0x15c>
     8ec:	00000593          	li	a1,0
     8f0:	00100637          	lui	a2,0x100
     8f4:	00179793          	slli	a5,a5,0x1
     8f8:	00158593          	addi	a1,a1,1
     8fc:	00c7f6b3          	and	a3,a5,a2
     900:	fe068ae3          	beqz	a3,8f4 <__ieee754_sqrt+0xfc>
     904:	fff58693          	addi	a3,a1,-1
     908:	40de8eb3          	sub	t4,t4,a3
     90c:	02000693          	li	a3,32
     910:	40b686b3          	sub	a3,a3,a1
     914:	00d756b3          	srl	a3,a4,a3
     918:	00f6e7b3          	or	a5,a3,a5
     91c:	00b71733          	sll	a4,a4,a1
     920:	f11ff06f          	j	830 <__ieee754_sqrt+0x38>
     924:	00050613          	mv	a2,a0
     928:	00058693          	mv	a3,a1
     92c:	00048513          	mv	a0,s1
     930:	00040593          	mv	a1,s0
     934:	141010ef          	jal	ra,2274 <__subdf3>
     938:	00050613          	mv	a2,a0
     93c:	00058693          	mv	a3,a1
     940:	119000ef          	jal	ra,1258 <__divdf3>
     944:	00050693          	mv	a3,a0
     948:	1100006f          	j	a58 <__ieee754_sqrt+0x260>
     94c:	00040793          	mv	a5,s0
     950:	f9dff06f          	j	8ec <__ieee754_sqrt+0xf4>
     954:	00040593          	mv	a1,s0
     958:	fadff06f          	j	904 <__ieee754_sqrt+0x10c>
     95c:	01f75513          	srli	a0,a4,0x1f
     960:	00179793          	slli	a5,a5,0x1
     964:	00f507b3          	add	a5,a0,a5
     968:	00171713          	slli	a4,a4,0x1
     96c:	00165613          	srli	a2,a2,0x1
     970:	fff58593          	addi	a1,a1,-1
     974:	00058e63          	beqz	a1,990 <__ieee754_sqrt+0x198>
     978:	00c68533          	add	a0,a3,a2
     97c:	fea7c0e3          	blt	a5,a0,95c <__ieee754_sqrt+0x164>
     980:	00c506b3          	add	a3,a0,a2
     984:	40a787b3          	sub	a5,a5,a0
     988:	00ce0e33          	add	t3,t3,a2
     98c:	fd1ff06f          	j	95c <__ieee754_sqrt+0x164>
     990:	00058313          	mv	t1,a1
     994:	02000813          	li	a6,32
     998:	80000637          	lui	a2,0x80000
     99c:	0440006f          	j	9e0 <__ieee754_sqrt+0x1e8>
     9a0:	00c505b3          	add	a1,a0,a2
     9a4:	00068893          	mv	a7,a3
     9a8:	04054e63          	bltz	a0,a04 <__ieee754_sqrt+0x20c>
     9ac:	40d787b3          	sub	a5,a5,a3
     9b0:	00a736b3          	sltu	a3,a4,a0
     9b4:	40d787b3          	sub	a5,a5,a3
     9b8:	40a70733          	sub	a4,a4,a0
     9bc:	00c30333          	add	t1,t1,a2
     9c0:	00088693          	mv	a3,a7
     9c4:	01f75513          	srli	a0,a4,0x1f
     9c8:	00179793          	slli	a5,a5,0x1
     9cc:	00f507b3          	add	a5,a0,a5
     9d0:	00171713          	slli	a4,a4,0x1
     9d4:	00165613          	srli	a2,a2,0x1
     9d8:	fff80813          	addi	a6,a6,-1
     9dc:	02080c63          	beqz	a6,a14 <__ieee754_sqrt+0x21c>
     9e0:	00b60533          	add	a0,a2,a1
     9e4:	faf6cee3          	blt	a3,a5,9a0 <__ieee754_sqrt+0x1a8>
     9e8:	fcd79ee3          	bne	a5,a3,9c4 <__ieee754_sqrt+0x1cc>
     9ec:	fca76ce3          	bltu	a4,a0,9c4 <__ieee754_sqrt+0x1cc>
     9f0:	00c505b3          	add	a1,a0,a2
     9f4:	00054863          	bltz	a0,a04 <__ieee754_sqrt+0x20c>
     9f8:	40d787b3          	sub	a5,a5,a3
     9fc:	00068893          	mv	a7,a3
     a00:	fb9ff06f          	j	9b8 <__ieee754_sqrt+0x1c0>
     a04:	fff5c893          	not	a7,a1
     a08:	01f8d893          	srli	a7,a7,0x1f
     a0c:	011688b3          	add	a7,a3,a7
     a10:	f9dff06f          	j	9ac <__ieee754_sqrt+0x1b4>
     a14:	00e7e533          	or	a0,a5,a4
     a18:	00050a63          	beqz	a0,a2c <__ieee754_sqrt+0x234>
     a1c:	fff00793          	li	a5,-1
     a20:	04f30863          	beq	t1,a5,a70 <__ieee754_sqrt+0x278>
     a24:	00130313          	addi	t1,t1,1
     a28:	ffe37313          	andi	t1,t1,-2
     a2c:	401e5793          	srai	a5,t3,0x1
     a30:	3fe00737          	lui	a4,0x3fe00
     a34:	00e787b3          	add	a5,a5,a4
     a38:	00135313          	srli	t1,t1,0x1
     a3c:	001e7e13          	andi	t3,t3,1
     a40:	000e0663          	beqz	t3,a4c <__ieee754_sqrt+0x254>
     a44:	80000737          	lui	a4,0x80000
     a48:	00e36333          	or	t1,t1,a4
     a4c:	014e9e93          	slli	t4,t4,0x14
     a50:	00030693          	mv	a3,t1
     a54:	00fe85b3          	add	a1,t4,a5
     a58:	00068513          	mv	a0,a3
     a5c:	00c12083          	lw	ra,12(sp)
     a60:	00812403          	lw	s0,8(sp)
     a64:	00412483          	lw	s1,4(sp)
     a68:	01010113          	addi	sp,sp,16
     a6c:	00008067          	ret
     a70:	001e0e13          	addi	t3,t3,1
     a74:	00080313          	mv	t1,a6
     a78:	fb5ff06f          	j	a2c <__ieee754_sqrt+0x234>

00000a7c <__adddf3>:
     a7c:	00100837          	lui	a6,0x100
     a80:	fff80813          	addi	a6,a6,-1 # fffff <start_time+0xef7ff>
     a84:	fe010113          	addi	sp,sp,-32
     a88:	00b878b3          	and	a7,a6,a1
     a8c:	0145d713          	srli	a4,a1,0x14
     a90:	01d55793          	srli	a5,a0,0x1d
     a94:	00d87833          	and	a6,a6,a3
     a98:	00812c23          	sw	s0,24(sp)
     a9c:	7ff77413          	andi	s0,a4,2047
     aa0:	00389713          	slli	a4,a7,0x3
     aa4:	0146d893          	srli	a7,a3,0x14
     aa8:	00381813          	slli	a6,a6,0x3
     aac:	00912a23          	sw	s1,20(sp)
     ab0:	00e7e7b3          	or	a5,a5,a4
     ab4:	7ff8f893          	andi	a7,a7,2047
     ab8:	01d65713          	srli	a4,a2,0x1d
     abc:	00112e23          	sw	ra,28(sp)
     ac0:	01212823          	sw	s2,16(sp)
     ac4:	01312623          	sw	s3,12(sp)
     ac8:	01f5d493          	srli	s1,a1,0x1f
     acc:	01f6d693          	srli	a3,a3,0x1f
     ad0:	01076733          	or	a4,a4,a6
     ad4:	00351513          	slli	a0,a0,0x3
     ad8:	00361613          	slli	a2,a2,0x3
     adc:	41140833          	sub	a6,s0,a7
     ae0:	2cd49863          	bne	s1,a3,db0 <__adddf3+0x334>
     ae4:	13005063          	blez	a6,c04 <__adddf3+0x188>
     ae8:	04089063          	bnez	a7,b28 <__adddf3+0xac>
     aec:	00c766b3          	or	a3,a4,a2
     af0:	70068e63          	beqz	a3,120c <__adddf3+0x790>
     af4:	fff80593          	addi	a1,a6,-1
     af8:	02059063          	bnez	a1,b18 <__adddf3+0x9c>
     afc:	00c50633          	add	a2,a0,a2
     b00:	00e78733          	add	a4,a5,a4
     b04:	00a637b3          	sltu	a5,a2,a0
     b08:	00f707b3          	add	a5,a4,a5
     b0c:	00060513          	mv	a0,a2
     b10:	00100413          	li	s0,1
     b14:	0700006f          	j	b84 <__adddf3+0x108>
     b18:	7ff00693          	li	a3,2047
     b1c:	02d81063          	bne	a6,a3,b3c <__adddf3+0xc0>
     b20:	7ff00413          	li	s0,2047
     b24:	2140006f          	j	d38 <__adddf3+0x2bc>
     b28:	7ff00693          	li	a3,2047
     b2c:	20d40663          	beq	s0,a3,d38 <__adddf3+0x2bc>
     b30:	008006b7          	lui	a3,0x800
     b34:	00d76733          	or	a4,a4,a3
     b38:	00080593          	mv	a1,a6
     b3c:	03800693          	li	a3,56
     b40:	0ab6cc63          	blt	a3,a1,bf8 <__adddf3+0x17c>
     b44:	01f00693          	li	a3,31
     b48:	06b6ce63          	blt	a3,a1,bc4 <__adddf3+0x148>
     b4c:	02000813          	li	a6,32
     b50:	40b80833          	sub	a6,a6,a1
     b54:	010716b3          	sll	a3,a4,a6
     b58:	00b658b3          	srl	a7,a2,a1
     b5c:	01061833          	sll	a6,a2,a6
     b60:	0116e6b3          	or	a3,a3,a7
     b64:	01003833          	snez	a6,a6
     b68:	0106e6b3          	or	a3,a3,a6
     b6c:	00b755b3          	srl	a1,a4,a1
     b70:	00a686b3          	add	a3,a3,a0
     b74:	00f585b3          	add	a1,a1,a5
     b78:	00a6b7b3          	sltu	a5,a3,a0
     b7c:	00f587b3          	add	a5,a1,a5
     b80:	00068513          	mv	a0,a3
     b84:	00800737          	lui	a4,0x800
     b88:	00e7f733          	and	a4,a5,a4
     b8c:	1a070663          	beqz	a4,d38 <__adddf3+0x2bc>
     b90:	00140413          	addi	s0,s0,1
     b94:	7ff00713          	li	a4,2047
     b98:	5ce40a63          	beq	s0,a4,116c <__adddf3+0x6f0>
     b9c:	ff800737          	lui	a4,0xff800
     ba0:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
     ba4:	00e7f7b3          	and	a5,a5,a4
     ba8:	00155713          	srli	a4,a0,0x1
     bac:	00157513          	andi	a0,a0,1
     bb0:	00a76733          	or	a4,a4,a0
     bb4:	01f79513          	slli	a0,a5,0x1f
     bb8:	00e56533          	or	a0,a0,a4
     bbc:	0017d793          	srli	a5,a5,0x1
     bc0:	1780006f          	j	d38 <__adddf3+0x2bc>
     bc4:	fe058693          	addi	a3,a1,-32
     bc8:	02000893          	li	a7,32
     bcc:	00d756b3          	srl	a3,a4,a3
     bd0:	00000813          	li	a6,0
     bd4:	01158863          	beq	a1,a7,be4 <__adddf3+0x168>
     bd8:	04000813          	li	a6,64
     bdc:	40b80833          	sub	a6,a6,a1
     be0:	01071833          	sll	a6,a4,a6
     be4:	00c86833          	or	a6,a6,a2
     be8:	01003833          	snez	a6,a6
     bec:	0106e6b3          	or	a3,a3,a6
     bf0:	00000593          	li	a1,0
     bf4:	f7dff06f          	j	b70 <__adddf3+0xf4>
     bf8:	00c766b3          	or	a3,a4,a2
     bfc:	00d036b3          	snez	a3,a3
     c00:	ff1ff06f          	j	bf0 <__adddf3+0x174>
     c04:	0e080263          	beqz	a6,ce8 <__adddf3+0x26c>
     c08:	408885b3          	sub	a1,a7,s0
     c0c:	02041e63          	bnez	s0,c48 <__adddf3+0x1cc>
     c10:	00a7e6b3          	or	a3,a5,a0
     c14:	52068c63          	beqz	a3,114c <__adddf3+0x6d0>
     c18:	fff58693          	addi	a3,a1,-1
     c1c:	00069c63          	bnez	a3,c34 <__adddf3+0x1b8>
     c20:	00c50533          	add	a0,a0,a2
     c24:	00e78733          	add	a4,a5,a4
     c28:	00c53633          	sltu	a2,a0,a2
     c2c:	00c707b3          	add	a5,a4,a2
     c30:	ee1ff06f          	j	b10 <__adddf3+0x94>
     c34:	7ff00813          	li	a6,2047
     c38:	03059263          	bne	a1,a6,c5c <__adddf3+0x1e0>
     c3c:	00070793          	mv	a5,a4
     c40:	00060513          	mv	a0,a2
     c44:	eddff06f          	j	b20 <__adddf3+0xa4>
     c48:	7ff00693          	li	a3,2047
     c4c:	fed888e3          	beq	a7,a3,c3c <__adddf3+0x1c0>
     c50:	008006b7          	lui	a3,0x800
     c54:	00d7e7b3          	or	a5,a5,a3
     c58:	00058693          	mv	a3,a1
     c5c:	03800593          	li	a1,56
     c60:	06d5ce63          	blt	a1,a3,cdc <__adddf3+0x260>
     c64:	01f00593          	li	a1,31
     c68:	04d5c063          	blt	a1,a3,ca8 <__adddf3+0x22c>
     c6c:	02000813          	li	a6,32
     c70:	40d80833          	sub	a6,a6,a3
     c74:	010795b3          	sll	a1,a5,a6
     c78:	00d55333          	srl	t1,a0,a3
     c7c:	01051833          	sll	a6,a0,a6
     c80:	0065e5b3          	or	a1,a1,t1
     c84:	01003833          	snez	a6,a6
     c88:	0105e5b3          	or	a1,a1,a6
     c8c:	00d7d6b3          	srl	a3,a5,a3
     c90:	00c58533          	add	a0,a1,a2
     c94:	00e686b3          	add	a3,a3,a4
     c98:	00c53633          	sltu	a2,a0,a2
     c9c:	00c687b3          	add	a5,a3,a2
     ca0:	00088413          	mv	s0,a7
     ca4:	ee1ff06f          	j	b84 <__adddf3+0x108>
     ca8:	fe068593          	addi	a1,a3,-32 # 7fffe0 <start_time+0x7ef7e0>
     cac:	02000313          	li	t1,32
     cb0:	00b7d5b3          	srl	a1,a5,a1
     cb4:	00000813          	li	a6,0
     cb8:	00668863          	beq	a3,t1,cc8 <__adddf3+0x24c>
     cbc:	04000813          	li	a6,64
     cc0:	40d80833          	sub	a6,a6,a3
     cc4:	01079833          	sll	a6,a5,a6
     cc8:	00a86833          	or	a6,a6,a0
     ccc:	01003833          	snez	a6,a6
     cd0:	0105e5b3          	or	a1,a1,a6
     cd4:	00000693          	li	a3,0
     cd8:	fb9ff06f          	j	c90 <__adddf3+0x214>
     cdc:	00a7e5b3          	or	a1,a5,a0
     ce0:	00b035b3          	snez	a1,a1
     ce4:	ff1ff06f          	j	cd4 <__adddf3+0x258>
     ce8:	00140693          	addi	a3,s0,1
     cec:	7fe6f593          	andi	a1,a3,2046
     cf0:	08059863          	bnez	a1,d80 <__adddf3+0x304>
     cf4:	00a7e6b3          	or	a3,a5,a0
     cf8:	06041463          	bnez	s0,d60 <__adddf3+0x2e4>
     cfc:	46068063          	beqz	a3,115c <__adddf3+0x6e0>
     d00:	00c766b3          	or	a3,a4,a2
     d04:	02068a63          	beqz	a3,d38 <__adddf3+0x2bc>
     d08:	00c50633          	add	a2,a0,a2
     d0c:	00e78733          	add	a4,a5,a4
     d10:	00a637b3          	sltu	a5,a2,a0
     d14:	00f707b3          	add	a5,a4,a5
     d18:	00800737          	lui	a4,0x800
     d1c:	00e7f733          	and	a4,a5,a4
     d20:	00060513          	mv	a0,a2
     d24:	00070a63          	beqz	a4,d38 <__adddf3+0x2bc>
     d28:	ff800737          	lui	a4,0xff800
     d2c:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
     d30:	00e7f7b3          	and	a5,a5,a4
     d34:	00100413          	li	s0,1
     d38:	00757713          	andi	a4,a0,7
     d3c:	42070c63          	beqz	a4,1174 <__adddf3+0x6f8>
     d40:	00f57713          	andi	a4,a0,15
     d44:	00400693          	li	a3,4
     d48:	42d70663          	beq	a4,a3,1174 <__adddf3+0x6f8>
     d4c:	00450713          	addi	a4,a0,4
     d50:	00a73533          	sltu	a0,a4,a0
     d54:	00a787b3          	add	a5,a5,a0
     d58:	00070513          	mv	a0,a4
     d5c:	4180006f          	j	1174 <__adddf3+0x6f8>
     d60:	ec068ee3          	beqz	a3,c3c <__adddf3+0x1c0>
     d64:	00c76733          	or	a4,a4,a2
     d68:	da070ce3          	beqz	a4,b20 <__adddf3+0xa4>
     d6c:	00000493          	li	s1,0
     d70:	004007b7          	lui	a5,0x400
     d74:	00000513          	li	a0,0
     d78:	7ff00413          	li	s0,2047
     d7c:	3f80006f          	j	1174 <__adddf3+0x6f8>
     d80:	7ff00593          	li	a1,2047
     d84:	3eb68263          	beq	a3,a1,1168 <__adddf3+0x6ec>
     d88:	00c50633          	add	a2,a0,a2
     d8c:	00a63533          	sltu	a0,a2,a0
     d90:	00e78733          	add	a4,a5,a4
     d94:	00a70733          	add	a4,a4,a0
     d98:	01f71513          	slli	a0,a4,0x1f
     d9c:	00165613          	srli	a2,a2,0x1
     da0:	00c56533          	or	a0,a0,a2
     da4:	00175793          	srli	a5,a4,0x1
     da8:	00068413          	mv	s0,a3
     dac:	f8dff06f          	j	d38 <__adddf3+0x2bc>
     db0:	0f005c63          	blez	a6,ea8 <__adddf3+0x42c>
     db4:	08089e63          	bnez	a7,e50 <__adddf3+0x3d4>
     db8:	00c766b3          	or	a3,a4,a2
     dbc:	44068863          	beqz	a3,120c <__adddf3+0x790>
     dc0:	fff80593          	addi	a1,a6,-1
     dc4:	02059063          	bnez	a1,de4 <__adddf3+0x368>
     dc8:	40c50633          	sub	a2,a0,a2
     dcc:	40e78733          	sub	a4,a5,a4
     dd0:	00c537b3          	sltu	a5,a0,a2
     dd4:	40f707b3          	sub	a5,a4,a5
     dd8:	00060513          	mv	a0,a2
     ddc:	00100413          	li	s0,1
     de0:	0540006f          	j	e34 <__adddf3+0x3b8>
     de4:	7ff00693          	li	a3,2047
     de8:	d2d80ce3          	beq	a6,a3,b20 <__adddf3+0xa4>
     dec:	03800693          	li	a3,56
     df0:	0ab6c663          	blt	a3,a1,e9c <__adddf3+0x420>
     df4:	01f00693          	li	a3,31
     df8:	06b6c863          	blt	a3,a1,e68 <__adddf3+0x3ec>
     dfc:	02000813          	li	a6,32
     e00:	40b80833          	sub	a6,a6,a1
     e04:	010716b3          	sll	a3,a4,a6
     e08:	00b658b3          	srl	a7,a2,a1
     e0c:	01061833          	sll	a6,a2,a6
     e10:	0116e6b3          	or	a3,a3,a7
     e14:	01003833          	snez	a6,a6
     e18:	0106e6b3          	or	a3,a3,a6
     e1c:	00b755b3          	srl	a1,a4,a1
     e20:	40d506b3          	sub	a3,a0,a3
     e24:	40b785b3          	sub	a1,a5,a1
     e28:	00d537b3          	sltu	a5,a0,a3
     e2c:	40f587b3          	sub	a5,a1,a5
     e30:	00068513          	mv	a0,a3
     e34:	00800937          	lui	s2,0x800
     e38:	0127f733          	and	a4,a5,s2
     e3c:	ee070ee3          	beqz	a4,d38 <__adddf3+0x2bc>
     e40:	fff90913          	addi	s2,s2,-1 # 7fffff <start_time+0x7ef7ff>
     e44:	0127f933          	and	s2,a5,s2
     e48:	00050993          	mv	s3,a0
     e4c:	2140006f          	j	1060 <__adddf3+0x5e4>
     e50:	7ff00693          	li	a3,2047
     e54:	eed402e3          	beq	s0,a3,d38 <__adddf3+0x2bc>
     e58:	008006b7          	lui	a3,0x800
     e5c:	00d76733          	or	a4,a4,a3
     e60:	00080593          	mv	a1,a6
     e64:	f89ff06f          	j	dec <__adddf3+0x370>
     e68:	fe058693          	addi	a3,a1,-32
     e6c:	02000893          	li	a7,32
     e70:	00d756b3          	srl	a3,a4,a3
     e74:	00000813          	li	a6,0
     e78:	01158863          	beq	a1,a7,e88 <__adddf3+0x40c>
     e7c:	04000813          	li	a6,64
     e80:	40b80833          	sub	a6,a6,a1
     e84:	01071833          	sll	a6,a4,a6
     e88:	00c86833          	or	a6,a6,a2
     e8c:	01003833          	snez	a6,a6
     e90:	0106e6b3          	or	a3,a3,a6
     e94:	00000593          	li	a1,0
     e98:	f89ff06f          	j	e20 <__adddf3+0x3a4>
     e9c:	00c766b3          	or	a3,a4,a2
     ea0:	00d036b3          	snez	a3,a3
     ea4:	ff1ff06f          	j	e94 <__adddf3+0x418>
     ea8:	0e080863          	beqz	a6,f98 <__adddf3+0x51c>
     eac:	40888833          	sub	a6,a7,s0
     eb0:	04041263          	bnez	s0,ef4 <__adddf3+0x478>
     eb4:	00a7e5b3          	or	a1,a5,a0
     eb8:	34058e63          	beqz	a1,1214 <__adddf3+0x798>
     ebc:	fff80593          	addi	a1,a6,-1
     ec0:	00059e63          	bnez	a1,edc <__adddf3+0x460>
     ec4:	40a60533          	sub	a0,a2,a0
     ec8:	40f70733          	sub	a4,a4,a5
     ecc:	00a63633          	sltu	a2,a2,a0
     ed0:	40c707b3          	sub	a5,a4,a2
     ed4:	00068493          	mv	s1,a3
     ed8:	f05ff06f          	j	ddc <__adddf3+0x360>
     edc:	7ff00313          	li	t1,2047
     ee0:	02681463          	bne	a6,t1,f08 <__adddf3+0x48c>
     ee4:	00070793          	mv	a5,a4
     ee8:	00060513          	mv	a0,a2
     eec:	7ff00413          	li	s0,2047
     ef0:	0d00006f          	j	fc0 <__adddf3+0x544>
     ef4:	7ff00593          	li	a1,2047
     ef8:	feb886e3          	beq	a7,a1,ee4 <__adddf3+0x468>
     efc:	008005b7          	lui	a1,0x800
     f00:	00b7e7b3          	or	a5,a5,a1
     f04:	00080593          	mv	a1,a6
     f08:	03800813          	li	a6,56
     f0c:	08b84063          	blt	a6,a1,f8c <__adddf3+0x510>
     f10:	01f00813          	li	a6,31
     f14:	04b84263          	blt	a6,a1,f58 <__adddf3+0x4dc>
     f18:	02000313          	li	t1,32
     f1c:	40b30333          	sub	t1,t1,a1
     f20:	00b55e33          	srl	t3,a0,a1
     f24:	00679833          	sll	a6,a5,t1
     f28:	00651333          	sll	t1,a0,t1
     f2c:	01c86833          	or	a6,a6,t3
     f30:	00603333          	snez	t1,t1
     f34:	00686533          	or	a0,a6,t1
     f38:	00b7d5b3          	srl	a1,a5,a1
     f3c:	40a60533          	sub	a0,a2,a0
     f40:	40b705b3          	sub	a1,a4,a1
     f44:	00a63633          	sltu	a2,a2,a0
     f48:	40c587b3          	sub	a5,a1,a2
     f4c:	00088413          	mv	s0,a7
     f50:	00068493          	mv	s1,a3
     f54:	ee1ff06f          	j	e34 <__adddf3+0x3b8>
     f58:	fe058813          	addi	a6,a1,-32 # 7fffe0 <start_time+0x7ef7e0>
     f5c:	02000e13          	li	t3,32
     f60:	0107d833          	srl	a6,a5,a6
     f64:	00000313          	li	t1,0
     f68:	01c58863          	beq	a1,t3,f78 <__adddf3+0x4fc>
     f6c:	04000313          	li	t1,64
     f70:	40b30333          	sub	t1,t1,a1
     f74:	00679333          	sll	t1,a5,t1
     f78:	00a36333          	or	t1,t1,a0
     f7c:	00603333          	snez	t1,t1
     f80:	00686533          	or	a0,a6,t1
     f84:	00000593          	li	a1,0
     f88:	fb5ff06f          	j	f3c <__adddf3+0x4c0>
     f8c:	00a7e533          	or	a0,a5,a0
     f90:	00a03533          	snez	a0,a0
     f94:	ff1ff06f          	j	f84 <__adddf3+0x508>
     f98:	00140593          	addi	a1,s0,1
     f9c:	7fe5f593          	andi	a1,a1,2046
     fa0:	08059863          	bnez	a1,1030 <__adddf3+0x5b4>
     fa4:	00a7e833          	or	a6,a5,a0
     fa8:	00c765b3          	or	a1,a4,a2
     fac:	06041263          	bnez	s0,1010 <__adddf3+0x594>
     fb0:	00081c63          	bnez	a6,fc8 <__adddf3+0x54c>
     fb4:	26058863          	beqz	a1,1224 <__adddf3+0x7a8>
     fb8:	00070793          	mv	a5,a4
     fbc:	00060513          	mv	a0,a2
     fc0:	00068493          	mv	s1,a3
     fc4:	d75ff06f          	j	d38 <__adddf3+0x2bc>
     fc8:	d60588e3          	beqz	a1,d38 <__adddf3+0x2bc>
     fcc:	40c50833          	sub	a6,a0,a2
     fd0:	010538b3          	sltu	a7,a0,a6
     fd4:	40e785b3          	sub	a1,a5,a4
     fd8:	411585b3          	sub	a1,a1,a7
     fdc:	008008b7          	lui	a7,0x800
     fe0:	0115f8b3          	and	a7,a1,a7
     fe4:	00088c63          	beqz	a7,ffc <__adddf3+0x580>
     fe8:	40a60533          	sub	a0,a2,a0
     fec:	40f70733          	sub	a4,a4,a5
     ff0:	00a63633          	sltu	a2,a2,a0
     ff4:	40c707b3          	sub	a5,a4,a2
     ff8:	fc9ff06f          	j	fc0 <__adddf3+0x544>
     ffc:	00b86533          	or	a0,a6,a1
    1000:	22050a63          	beqz	a0,1234 <__adddf3+0x7b8>
    1004:	00058793          	mv	a5,a1
    1008:	00080513          	mv	a0,a6
    100c:	d2dff06f          	j	d38 <__adddf3+0x2bc>
    1010:	00081c63          	bnez	a6,1028 <__adddf3+0x5ac>
    1014:	22058463          	beqz	a1,123c <__adddf3+0x7c0>
    1018:	00070793          	mv	a5,a4
    101c:	00060513          	mv	a0,a2
    1020:	00068493          	mv	s1,a3
    1024:	afdff06f          	j	b20 <__adddf3+0xa4>
    1028:	ae058ce3          	beqz	a1,b20 <__adddf3+0xa4>
    102c:	d41ff06f          	j	d6c <__adddf3+0x2f0>
    1030:	40c509b3          	sub	s3,a0,a2
    1034:	013535b3          	sltu	a1,a0,s3
    1038:	40e78933          	sub	s2,a5,a4
    103c:	40b90933          	sub	s2,s2,a1
    1040:	008005b7          	lui	a1,0x800
    1044:	00b975b3          	and	a1,s2,a1
    1048:	08058463          	beqz	a1,10d0 <__adddf3+0x654>
    104c:	40a609b3          	sub	s3,a2,a0
    1050:	40f70933          	sub	s2,a4,a5
    1054:	01363633          	sltu	a2,a2,s3
    1058:	40c90933          	sub	s2,s2,a2
    105c:	00068493          	mv	s1,a3
    1060:	08090263          	beqz	s2,10e4 <__adddf3+0x668>
    1064:	00090513          	mv	a0,s2
    1068:	321010ef          	jal	ra,2b88 <__clzsi2>
    106c:	ff850713          	addi	a4,a0,-8
    1070:	01f00793          	li	a5,31
    1074:	08e7c063          	blt	a5,a4,10f4 <__adddf3+0x678>
    1078:	02000793          	li	a5,32
    107c:	40e787b3          	sub	a5,a5,a4
    1080:	00e91933          	sll	s2,s2,a4
    1084:	00f9d7b3          	srl	a5,s3,a5
    1088:	0127e7b3          	or	a5,a5,s2
    108c:	00e99533          	sll	a0,s3,a4
    1090:	0a874463          	blt	a4,s0,1138 <__adddf3+0x6bc>
    1094:	40870733          	sub	a4,a4,s0
    1098:	00170613          	addi	a2,a4,1
    109c:	01f00693          	li	a3,31
    10a0:	06c6c263          	blt	a3,a2,1104 <__adddf3+0x688>
    10a4:	02000713          	li	a4,32
    10a8:	40c70733          	sub	a4,a4,a2
    10ac:	00e796b3          	sll	a3,a5,a4
    10b0:	00c555b3          	srl	a1,a0,a2
    10b4:	00e51733          	sll	a4,a0,a4
    10b8:	00b6e6b3          	or	a3,a3,a1
    10bc:	00e03733          	snez	a4,a4
    10c0:	00e6e533          	or	a0,a3,a4
    10c4:	00c7d7b3          	srl	a5,a5,a2
    10c8:	00000413          	li	s0,0
    10cc:	c6dff06f          	j	d38 <__adddf3+0x2bc>
    10d0:	0129e533          	or	a0,s3,s2
    10d4:	f80516e3          	bnez	a0,1060 <__adddf3+0x5e4>
    10d8:	00000793          	li	a5,0
    10dc:	00000413          	li	s0,0
    10e0:	14c0006f          	j	122c <__adddf3+0x7b0>
    10e4:	00098513          	mv	a0,s3
    10e8:	2a1010ef          	jal	ra,2b88 <__clzsi2>
    10ec:	02050513          	addi	a0,a0,32
    10f0:	f7dff06f          	j	106c <__adddf3+0x5f0>
    10f4:	fd850793          	addi	a5,a0,-40
    10f8:	00f997b3          	sll	a5,s3,a5
    10fc:	00000513          	li	a0,0
    1100:	f91ff06f          	j	1090 <__adddf3+0x614>
    1104:	fe170713          	addi	a4,a4,-31
    1108:	02000593          	li	a1,32
    110c:	00e7d733          	srl	a4,a5,a4
    1110:	00000693          	li	a3,0
    1114:	00b60863          	beq	a2,a1,1124 <__adddf3+0x6a8>
    1118:	04000693          	li	a3,64
    111c:	40c686b3          	sub	a3,a3,a2
    1120:	00d796b3          	sll	a3,a5,a3
    1124:	00d566b3          	or	a3,a0,a3
    1128:	00d036b3          	snez	a3,a3
    112c:	00d76533          	or	a0,a4,a3
    1130:	00000793          	li	a5,0
    1134:	f95ff06f          	j	10c8 <__adddf3+0x64c>
    1138:	40e40433          	sub	s0,s0,a4
    113c:	ff800737          	lui	a4,0xff800
    1140:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    1144:	00e7f7b3          	and	a5,a5,a4
    1148:	bf1ff06f          	j	d38 <__adddf3+0x2bc>
    114c:	00070793          	mv	a5,a4
    1150:	00060513          	mv	a0,a2
    1154:	00058413          	mv	s0,a1
    1158:	be1ff06f          	j	d38 <__adddf3+0x2bc>
    115c:	00070793          	mv	a5,a4
    1160:	00060513          	mv	a0,a2
    1164:	bd5ff06f          	j	d38 <__adddf3+0x2bc>
    1168:	7ff00413          	li	s0,2047
    116c:	00000793          	li	a5,0
    1170:	00000513          	li	a0,0
    1174:	00800737          	lui	a4,0x800
    1178:	00e7f733          	and	a4,a5,a4
    117c:	00070e63          	beqz	a4,1198 <__adddf3+0x71c>
    1180:	00140413          	addi	s0,s0,1
    1184:	7ff00713          	li	a4,2047
    1188:	0ce40263          	beq	s0,a4,124c <__adddf3+0x7d0>
    118c:	ff800737          	lui	a4,0xff800
    1190:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    1194:	00e7f7b3          	and	a5,a5,a4
    1198:	01d79693          	slli	a3,a5,0x1d
    119c:	00355513          	srli	a0,a0,0x3
    11a0:	7ff00713          	li	a4,2047
    11a4:	00a6e6b3          	or	a3,a3,a0
    11a8:	0037d793          	srli	a5,a5,0x3
    11ac:	00e41e63          	bne	s0,a4,11c8 <__adddf3+0x74c>
    11b0:	00f6e6b3          	or	a3,a3,a5
    11b4:	00000793          	li	a5,0
    11b8:	00068863          	beqz	a3,11c8 <__adddf3+0x74c>
    11bc:	000807b7          	lui	a5,0x80
    11c0:	00000693          	li	a3,0
    11c4:	00000493          	li	s1,0
    11c8:	01441713          	slli	a4,s0,0x14
    11cc:	7ff00637          	lui	a2,0x7ff00
    11d0:	00c79793          	slli	a5,a5,0xc
    11d4:	01c12083          	lw	ra,28(sp)
    11d8:	01812403          	lw	s0,24(sp)
    11dc:	00c77733          	and	a4,a4,a2
    11e0:	00c7d793          	srli	a5,a5,0xc
    11e4:	01f49493          	slli	s1,s1,0x1f
    11e8:	00f767b3          	or	a5,a4,a5
    11ec:	0097e733          	or	a4,a5,s1
    11f0:	01012903          	lw	s2,16(sp)
    11f4:	01412483          	lw	s1,20(sp)
    11f8:	00c12983          	lw	s3,12(sp)
    11fc:	00068513          	mv	a0,a3
    1200:	00070593          	mv	a1,a4
    1204:	02010113          	addi	sp,sp,32
    1208:	00008067          	ret
    120c:	00080413          	mv	s0,a6
    1210:	b29ff06f          	j	d38 <__adddf3+0x2bc>
    1214:	00070793          	mv	a5,a4
    1218:	00060513          	mv	a0,a2
    121c:	00080413          	mv	s0,a6
    1220:	da1ff06f          	j	fc0 <__adddf3+0x544>
    1224:	00000793          	li	a5,0
    1228:	00000513          	li	a0,0
    122c:	00000493          	li	s1,0
    1230:	f45ff06f          	j	1174 <__adddf3+0x6f8>
    1234:	00000793          	li	a5,0
    1238:	ff5ff06f          	j	122c <__adddf3+0x7b0>
    123c:	00000513          	li	a0,0
    1240:	00000493          	li	s1,0
    1244:	004007b7          	lui	a5,0x400
    1248:	b31ff06f          	j	d78 <__adddf3+0x2fc>
    124c:	00000793          	li	a5,0
    1250:	00000513          	li	a0,0
    1254:	f45ff06f          	j	1198 <__adddf3+0x71c>

00001258 <__divdf3>:
    1258:	fb010113          	addi	sp,sp,-80
    125c:	05212023          	sw	s2,64(sp)
    1260:	0145d913          	srli	s2,a1,0x14
    1264:	04912223          	sw	s1,68(sp)
    1268:	03312e23          	sw	s3,60(sp)
    126c:	03412c23          	sw	s4,56(sp)
    1270:	03512a23          	sw	s5,52(sp)
    1274:	03612823          	sw	s6,48(sp)
    1278:	00c59493          	slli	s1,a1,0xc
    127c:	04112623          	sw	ra,76(sp)
    1280:	04812423          	sw	s0,72(sp)
    1284:	03712623          	sw	s7,44(sp)
    1288:	03812423          	sw	s8,40(sp)
    128c:	03912223          	sw	s9,36(sp)
    1290:	03a12023          	sw	s10,32(sp)
    1294:	01b12e23          	sw	s11,28(sp)
    1298:	7ff97913          	andi	s2,s2,2047
    129c:	00050993          	mv	s3,a0
    12a0:	00060b13          	mv	s6,a2
    12a4:	00068a93          	mv	s5,a3
    12a8:	00c4d493          	srli	s1,s1,0xc
    12ac:	01f5da13          	srli	s4,a1,0x1f
    12b0:	0a090063          	beqz	s2,1350 <__divdf3+0xf8>
    12b4:	7ff00793          	li	a5,2047
    12b8:	0ef90e63          	beq	s2,a5,13b4 <__divdf3+0x15c>
    12bc:	01d55c93          	srli	s9,a0,0x1d
    12c0:	00349493          	slli	s1,s1,0x3
    12c4:	009cecb3          	or	s9,s9,s1
    12c8:	008007b7          	lui	a5,0x800
    12cc:	00fcecb3          	or	s9,s9,a5
    12d0:	00351413          	slli	s0,a0,0x3
    12d4:	c0190913          	addi	s2,s2,-1023
    12d8:	00000b93          	li	s7,0
    12dc:	014ad793          	srli	a5,s5,0x14
    12e0:	00ca9993          	slli	s3,s5,0xc
    12e4:	7ff7f793          	andi	a5,a5,2047
    12e8:	00c9d993          	srli	s3,s3,0xc
    12ec:	01fada93          	srli	s5,s5,0x1f
    12f0:	10078063          	beqz	a5,13f0 <__divdf3+0x198>
    12f4:	7ff00713          	li	a4,2047
    12f8:	16e78063          	beq	a5,a4,1458 <__divdf3+0x200>
    12fc:	00399993          	slli	s3,s3,0x3
    1300:	01db5713          	srli	a4,s6,0x1d
    1304:	01376733          	or	a4,a4,s3
    1308:	008009b7          	lui	s3,0x800
    130c:	013769b3          	or	s3,a4,s3
    1310:	003b1813          	slli	a6,s6,0x3
    1314:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <start_time+0x7ef401>
    1318:	00000713          	li	a4,0
    131c:	40f90933          	sub	s2,s2,a5
    1320:	002b9793          	slli	a5,s7,0x2
    1324:	00e7e7b3          	or	a5,a5,a4
    1328:	fff78793          	addi	a5,a5,-1
    132c:	00e00693          	li	a3,14
    1330:	015a44b3          	xor	s1,s4,s5
    1334:	14f6ee63          	bltu	a3,a5,1490 <__divdf3+0x238>
    1338:	000106b7          	lui	a3,0x10
    133c:	00279793          	slli	a5,a5,0x2
    1340:	6b068693          	addi	a3,a3,1712 # 106b0 <expected.0+0x140>
    1344:	00d787b3          	add	a5,a5,a3
    1348:	0007a783          	lw	a5,0(a5)
    134c:	00078067          	jr	a5
    1350:	00a4ecb3          	or	s9,s1,a0
    1354:	060c8e63          	beqz	s9,13d0 <__divdf3+0x178>
    1358:	04048063          	beqz	s1,1398 <__divdf3+0x140>
    135c:	00048513          	mv	a0,s1
    1360:	029010ef          	jal	ra,2b88 <__clzsi2>
    1364:	ff550793          	addi	a5,a0,-11
    1368:	01c00713          	li	a4,28
    136c:	02f74c63          	blt	a4,a5,13a4 <__divdf3+0x14c>
    1370:	01d00c93          	li	s9,29
    1374:	ff850413          	addi	s0,a0,-8
    1378:	40fc8cb3          	sub	s9,s9,a5
    137c:	008494b3          	sll	s1,s1,s0
    1380:	0199dcb3          	srl	s9,s3,s9
    1384:	009cecb3          	or	s9,s9,s1
    1388:	00899433          	sll	s0,s3,s0
    138c:	c0d00913          	li	s2,-1011
    1390:	40a90933          	sub	s2,s2,a0
    1394:	f45ff06f          	j	12d8 <__divdf3+0x80>
    1398:	7f0010ef          	jal	ra,2b88 <__clzsi2>
    139c:	02050513          	addi	a0,a0,32
    13a0:	fc5ff06f          	j	1364 <__divdf3+0x10c>
    13a4:	fd850c93          	addi	s9,a0,-40
    13a8:	01999cb3          	sll	s9,s3,s9
    13ac:	00000413          	li	s0,0
    13b0:	fddff06f          	j	138c <__divdf3+0x134>
    13b4:	00a4ecb3          	or	s9,s1,a0
    13b8:	020c8463          	beqz	s9,13e0 <__divdf3+0x188>
    13bc:	00050413          	mv	s0,a0
    13c0:	00048c93          	mv	s9,s1
    13c4:	7ff00913          	li	s2,2047
    13c8:	00300b93          	li	s7,3
    13cc:	f11ff06f          	j	12dc <__divdf3+0x84>
    13d0:	00000413          	li	s0,0
    13d4:	00000913          	li	s2,0
    13d8:	00100b93          	li	s7,1
    13dc:	f01ff06f          	j	12dc <__divdf3+0x84>
    13e0:	00000413          	li	s0,0
    13e4:	7ff00913          	li	s2,2047
    13e8:	00200b93          	li	s7,2
    13ec:	ef1ff06f          	j	12dc <__divdf3+0x84>
    13f0:	0169e833          	or	a6,s3,s6
    13f4:	06080e63          	beqz	a6,1470 <__divdf3+0x218>
    13f8:	04098063          	beqz	s3,1438 <__divdf3+0x1e0>
    13fc:	00098513          	mv	a0,s3
    1400:	788010ef          	jal	ra,2b88 <__clzsi2>
    1404:	ff550713          	addi	a4,a0,-11
    1408:	01c00793          	li	a5,28
    140c:	02e7ce63          	blt	a5,a4,1448 <__divdf3+0x1f0>
    1410:	01d00793          	li	a5,29
    1414:	ff850813          	addi	a6,a0,-8
    1418:	40e787b3          	sub	a5,a5,a4
    141c:	010999b3          	sll	s3,s3,a6
    1420:	00fb57b3          	srl	a5,s6,a5
    1424:	0137e9b3          	or	s3,a5,s3
    1428:	010b1833          	sll	a6,s6,a6
    142c:	c0d00793          	li	a5,-1011
    1430:	40a787b3          	sub	a5,a5,a0
    1434:	ee5ff06f          	j	1318 <__divdf3+0xc0>
    1438:	000b0513          	mv	a0,s6
    143c:	74c010ef          	jal	ra,2b88 <__clzsi2>
    1440:	02050513          	addi	a0,a0,32
    1444:	fc1ff06f          	j	1404 <__divdf3+0x1ac>
    1448:	fd850993          	addi	s3,a0,-40
    144c:	013b19b3          	sll	s3,s6,s3
    1450:	00000813          	li	a6,0
    1454:	fd9ff06f          	j	142c <__divdf3+0x1d4>
    1458:	0169e833          	or	a6,s3,s6
    145c:	02080263          	beqz	a6,1480 <__divdf3+0x228>
    1460:	000b0813          	mv	a6,s6
    1464:	7ff00793          	li	a5,2047
    1468:	00300713          	li	a4,3
    146c:	eb1ff06f          	j	131c <__divdf3+0xc4>
    1470:	00000993          	li	s3,0
    1474:	00000793          	li	a5,0
    1478:	00100713          	li	a4,1
    147c:	ea1ff06f          	j	131c <__divdf3+0xc4>
    1480:	00000993          	li	s3,0
    1484:	7ff00793          	li	a5,2047
    1488:	00200713          	li	a4,2
    148c:	e91ff06f          	j	131c <__divdf3+0xc4>
    1490:	0199e663          	bltu	s3,s9,149c <__divdf3+0x244>
    1494:	453c9a63          	bne	s9,s3,18e8 <__divdf3+0x690>
    1498:	45046863          	bltu	s0,a6,18e8 <__divdf3+0x690>
    149c:	01fc9713          	slli	a4,s9,0x1f
    14a0:	00145793          	srli	a5,s0,0x1
    14a4:	01f41d93          	slli	s11,s0,0x1f
    14a8:	001cdc93          	srli	s9,s9,0x1
    14ac:	00f76433          	or	s0,a4,a5
    14b0:	01885a93          	srli	s5,a6,0x18
    14b4:	00899b93          	slli	s7,s3,0x8
    14b8:	017aeab3          	or	s5,s5,s7
    14bc:	010bdb93          	srli	s7,s7,0x10
    14c0:	000b8593          	mv	a1,s7
    14c4:	010a9c13          	slli	s8,s5,0x10
    14c8:	000c8513          	mv	a0,s9
    14cc:	00881b13          	slli	s6,a6,0x8
    14d0:	010c5c13          	srli	s8,s8,0x10
    14d4:	608010ef          	jal	ra,2adc <__udivsi3>
    14d8:	00050593          	mv	a1,a0
    14dc:	00050d13          	mv	s10,a0
    14e0:	000c0513          	mv	a0,s8
    14e4:	5cc010ef          	jal	ra,2ab0 <__mulsi3>
    14e8:	00050993          	mv	s3,a0
    14ec:	000b8593          	mv	a1,s7
    14f0:	000c8513          	mv	a0,s9
    14f4:	630010ef          	jal	ra,2b24 <__umodsi3>
    14f8:	01051513          	slli	a0,a0,0x10
    14fc:	01045713          	srli	a4,s0,0x10
    1500:	00a76733          	or	a4,a4,a0
    1504:	000d0a13          	mv	s4,s10
    1508:	01377e63          	bgeu	a4,s3,1524 <__divdf3+0x2cc>
    150c:	01570733          	add	a4,a4,s5
    1510:	fffd0a13          	addi	s4,s10,-1
    1514:	01576863          	bltu	a4,s5,1524 <__divdf3+0x2cc>
    1518:	01377663          	bgeu	a4,s3,1524 <__divdf3+0x2cc>
    151c:	ffed0a13          	addi	s4,s10,-2
    1520:	01570733          	add	a4,a4,s5
    1524:	413709b3          	sub	s3,a4,s3
    1528:	000b8593          	mv	a1,s7
    152c:	00098513          	mv	a0,s3
    1530:	5ac010ef          	jal	ra,2adc <__udivsi3>
    1534:	00050593          	mv	a1,a0
    1538:	00050d13          	mv	s10,a0
    153c:	000c0513          	mv	a0,s8
    1540:	570010ef          	jal	ra,2ab0 <__mulsi3>
    1544:	00050c93          	mv	s9,a0
    1548:	000b8593          	mv	a1,s7
    154c:	00098513          	mv	a0,s3
    1550:	5d4010ef          	jal	ra,2b24 <__umodsi3>
    1554:	01041413          	slli	s0,s0,0x10
    1558:	01051513          	slli	a0,a0,0x10
    155c:	01045413          	srli	s0,s0,0x10
    1560:	00a46433          	or	s0,s0,a0
    1564:	000d0793          	mv	a5,s10
    1568:	01947e63          	bgeu	s0,s9,1584 <__divdf3+0x32c>
    156c:	01540433          	add	s0,s0,s5
    1570:	fffd0793          	addi	a5,s10,-1
    1574:	01546863          	bltu	s0,s5,1584 <__divdf3+0x32c>
    1578:	01947663          	bgeu	s0,s9,1584 <__divdf3+0x32c>
    157c:	ffed0793          	addi	a5,s10,-2
    1580:	01540433          	add	s0,s0,s5
    1584:	010a1713          	slli	a4,s4,0x10
    1588:	00010337          	lui	t1,0x10
    158c:	00f76733          	or	a4,a4,a5
    1590:	41940433          	sub	s0,s0,s9
    1594:	fff30c93          	addi	s9,t1,-1 # ffff <main+0xd41f>
    1598:	019777b3          	and	a5,a4,s9
    159c:	019b7cb3          	and	s9,s6,s9
    15a0:	01075e13          	srli	t3,a4,0x10
    15a4:	010b5d13          	srli	s10,s6,0x10
    15a8:	00078513          	mv	a0,a5
    15ac:	000c8593          	mv	a1,s9
    15b0:	500010ef          	jal	ra,2ab0 <__mulsi3>
    15b4:	00050813          	mv	a6,a0
    15b8:	000d0593          	mv	a1,s10
    15bc:	00078513          	mv	a0,a5
    15c0:	4f0010ef          	jal	ra,2ab0 <__mulsi3>
    15c4:	00050793          	mv	a5,a0
    15c8:	000c8593          	mv	a1,s9
    15cc:	000e0513          	mv	a0,t3
    15d0:	4e0010ef          	jal	ra,2ab0 <__mulsi3>
    15d4:	00050893          	mv	a7,a0
    15d8:	000d0593          	mv	a1,s10
    15dc:	000e0513          	mv	a0,t3
    15e0:	4d0010ef          	jal	ra,2ab0 <__mulsi3>
    15e4:	01085a13          	srli	s4,a6,0x10
    15e8:	011787b3          	add	a5,a5,a7
    15ec:	00fa0a33          	add	s4,s4,a5
    15f0:	00050693          	mv	a3,a0
    15f4:	011a7463          	bgeu	s4,a7,15fc <__divdf3+0x3a4>
    15f8:	006506b3          	add	a3,a0,t1
    15fc:	010a5793          	srli	a5,s4,0x10
    1600:	00d787b3          	add	a5,a5,a3
    1604:	000106b7          	lui	a3,0x10
    1608:	fff68693          	addi	a3,a3,-1 # ffff <main+0xd41f>
    160c:	00da7a33          	and	s4,s4,a3
    1610:	010a1a13          	slli	s4,s4,0x10
    1614:	00d87833          	and	a6,a6,a3
    1618:	010a0a33          	add	s4,s4,a6
    161c:	00f46863          	bltu	s0,a5,162c <__divdf3+0x3d4>
    1620:	00070993          	mv	s3,a4
    1624:	04f41463          	bne	s0,a5,166c <__divdf3+0x414>
    1628:	054df263          	bgeu	s11,s4,166c <__divdf3+0x414>
    162c:	016d8db3          	add	s11,s11,s6
    1630:	016db6b3          	sltu	a3,s11,s6
    1634:	015686b3          	add	a3,a3,s5
    1638:	00d40433          	add	s0,s0,a3
    163c:	fff70993          	addi	s3,a4,-1
    1640:	008ae663          	bltu	s5,s0,164c <__divdf3+0x3f4>
    1644:	028a9463          	bne	s5,s0,166c <__divdf3+0x414>
    1648:	036de263          	bltu	s11,s6,166c <__divdf3+0x414>
    164c:	00f46663          	bltu	s0,a5,1658 <__divdf3+0x400>
    1650:	00879e63          	bne	a5,s0,166c <__divdf3+0x414>
    1654:	014dfc63          	bgeu	s11,s4,166c <__divdf3+0x414>
    1658:	016d8db3          	add	s11,s11,s6
    165c:	ffe70993          	addi	s3,a4,-2
    1660:	016db733          	sltu	a4,s11,s6
    1664:	01570733          	add	a4,a4,s5
    1668:	00e40433          	add	s0,s0,a4
    166c:	414d8a33          	sub	s4,s11,s4
    1670:	40f40433          	sub	s0,s0,a5
    1674:	014db7b3          	sltu	a5,s11,s4
    1678:	40f40433          	sub	s0,s0,a5
    167c:	fff00813          	li	a6,-1
    1680:	1a8a8263          	beq	s5,s0,1824 <__divdf3+0x5cc>
    1684:	000b8593          	mv	a1,s7
    1688:	00040513          	mv	a0,s0
    168c:	450010ef          	jal	ra,2adc <__udivsi3>
    1690:	00050593          	mv	a1,a0
    1694:	00a12623          	sw	a0,12(sp)
    1698:	000c0513          	mv	a0,s8
    169c:	414010ef          	jal	ra,2ab0 <__mulsi3>
    16a0:	00a12423          	sw	a0,8(sp)
    16a4:	000b8593          	mv	a1,s7
    16a8:	00040513          	mv	a0,s0
    16ac:	478010ef          	jal	ra,2b24 <__umodsi3>
    16b0:	00c12683          	lw	a3,12(sp)
    16b4:	00812783          	lw	a5,8(sp)
    16b8:	01051513          	slli	a0,a0,0x10
    16bc:	010a5713          	srli	a4,s4,0x10
    16c0:	00a76733          	or	a4,a4,a0
    16c4:	00068d93          	mv	s11,a3
    16c8:	00f77e63          	bgeu	a4,a5,16e4 <__divdf3+0x48c>
    16cc:	01570733          	add	a4,a4,s5
    16d0:	fff68d93          	addi	s11,a3,-1
    16d4:	01576863          	bltu	a4,s5,16e4 <__divdf3+0x48c>
    16d8:	00f77663          	bgeu	a4,a5,16e4 <__divdf3+0x48c>
    16dc:	ffe68d93          	addi	s11,a3,-2
    16e0:	01570733          	add	a4,a4,s5
    16e4:	40f70433          	sub	s0,a4,a5
    16e8:	000b8593          	mv	a1,s7
    16ec:	00040513          	mv	a0,s0
    16f0:	3ec010ef          	jal	ra,2adc <__udivsi3>
    16f4:	00050593          	mv	a1,a0
    16f8:	00a12423          	sw	a0,8(sp)
    16fc:	000c0513          	mv	a0,s8
    1700:	3b0010ef          	jal	ra,2ab0 <__mulsi3>
    1704:	00050c13          	mv	s8,a0
    1708:	000b8593          	mv	a1,s7
    170c:	00040513          	mv	a0,s0
    1710:	414010ef          	jal	ra,2b24 <__umodsi3>
    1714:	00812783          	lw	a5,8(sp)
    1718:	010a1713          	slli	a4,s4,0x10
    171c:	01051513          	slli	a0,a0,0x10
    1720:	01075713          	srli	a4,a4,0x10
    1724:	00a76733          	or	a4,a4,a0
    1728:	00078693          	mv	a3,a5
    172c:	01877e63          	bgeu	a4,s8,1748 <__divdf3+0x4f0>
    1730:	01570733          	add	a4,a4,s5
    1734:	fff78693          	addi	a3,a5,-1
    1738:	01576863          	bltu	a4,s5,1748 <__divdf3+0x4f0>
    173c:	01877663          	bgeu	a4,s8,1748 <__divdf3+0x4f0>
    1740:	ffe78693          	addi	a3,a5,-2
    1744:	01570733          	add	a4,a4,s5
    1748:	010d9793          	slli	a5,s11,0x10
    174c:	00d7e7b3          	or	a5,a5,a3
    1750:	01079813          	slli	a6,a5,0x10
    1754:	01085813          	srli	a6,a6,0x10
    1758:	41870733          	sub	a4,a4,s8
    175c:	0107de13          	srli	t3,a5,0x10
    1760:	00080513          	mv	a0,a6
    1764:	000c8593          	mv	a1,s9
    1768:	348010ef          	jal	ra,2ab0 <__mulsi3>
    176c:	00050893          	mv	a7,a0
    1770:	000d0593          	mv	a1,s10
    1774:	00080513          	mv	a0,a6
    1778:	338010ef          	jal	ra,2ab0 <__mulsi3>
    177c:	00050813          	mv	a6,a0
    1780:	000c8593          	mv	a1,s9
    1784:	000e0513          	mv	a0,t3
    1788:	328010ef          	jal	ra,2ab0 <__mulsi3>
    178c:	00050313          	mv	t1,a0
    1790:	000d0593          	mv	a1,s10
    1794:	000e0513          	mv	a0,t3
    1798:	318010ef          	jal	ra,2ab0 <__mulsi3>
    179c:	0108d693          	srli	a3,a7,0x10
    17a0:	00680833          	add	a6,a6,t1
    17a4:	010686b3          	add	a3,a3,a6
    17a8:	00050593          	mv	a1,a0
    17ac:	0066f663          	bgeu	a3,t1,17b8 <__divdf3+0x560>
    17b0:	00010637          	lui	a2,0x10
    17b4:	00c505b3          	add	a1,a0,a2
    17b8:	0106d613          	srli	a2,a3,0x10
    17bc:	00b60633          	add	a2,a2,a1
    17c0:	000105b7          	lui	a1,0x10
    17c4:	fff58593          	addi	a1,a1,-1 # ffff <main+0xd41f>
    17c8:	00b6f6b3          	and	a3,a3,a1
    17cc:	01069693          	slli	a3,a3,0x10
    17d0:	00b8f8b3          	and	a7,a7,a1
    17d4:	011686b3          	add	a3,a3,a7
    17d8:	00c76863          	bltu	a4,a2,17e8 <__divdf3+0x590>
    17dc:	24c71a63          	bne	a4,a2,1a30 <__divdf3+0x7d8>
    17e0:	00078813          	mv	a6,a5
    17e4:	04068063          	beqz	a3,1824 <__divdf3+0x5cc>
    17e8:	00ea8733          	add	a4,s5,a4
    17ec:	fff78813          	addi	a6,a5,-1
    17f0:	03576463          	bltu	a4,s5,1818 <__divdf3+0x5c0>
    17f4:	00c76663          	bltu	a4,a2,1800 <__divdf3+0x5a8>
    17f8:	22c71a63          	bne	a4,a2,1a2c <__divdf3+0x7d4>
    17fc:	02db7063          	bgeu	s6,a3,181c <__divdf3+0x5c4>
    1800:	ffe78813          	addi	a6,a5,-2
    1804:	001b1793          	slli	a5,s6,0x1
    1808:	0167bb33          	sltu	s6,a5,s6
    180c:	015b0b33          	add	s6,s6,s5
    1810:	01670733          	add	a4,a4,s6
    1814:	00078b13          	mv	s6,a5
    1818:	00c71463          	bne	a4,a2,1820 <__divdf3+0x5c8>
    181c:	00db0463          	beq	s6,a3,1824 <__divdf3+0x5cc>
    1820:	00186813          	ori	a6,a6,1
    1824:	3ff90793          	addi	a5,s2,1023
    1828:	12f05063          	blez	a5,1948 <__divdf3+0x6f0>
    182c:	00787713          	andi	a4,a6,7
    1830:	02070063          	beqz	a4,1850 <__divdf3+0x5f8>
    1834:	00f87713          	andi	a4,a6,15
    1838:	00400693          	li	a3,4
    183c:	00d70a63          	beq	a4,a3,1850 <__divdf3+0x5f8>
    1840:	00480713          	addi	a4,a6,4
    1844:	01073833          	sltu	a6,a4,a6
    1848:	010989b3          	add	s3,s3,a6
    184c:	00070813          	mv	a6,a4
    1850:	01000737          	lui	a4,0x1000
    1854:	00e9f733          	and	a4,s3,a4
    1858:	00070a63          	beqz	a4,186c <__divdf3+0x614>
    185c:	ff0007b7          	lui	a5,0xff000
    1860:	fff78793          	addi	a5,a5,-1 # feffffff <start_time+0xfefef7ff>
    1864:	00f9f9b3          	and	s3,s3,a5
    1868:	40090793          	addi	a5,s2,1024
    186c:	7fe00713          	li	a4,2046
    1870:	0af74663          	blt	a4,a5,191c <__divdf3+0x6c4>
    1874:	00385813          	srli	a6,a6,0x3
    1878:	01d99713          	slli	a4,s3,0x1d
    187c:	01076733          	or	a4,a4,a6
    1880:	0039d593          	srli	a1,s3,0x3
    1884:	7ff006b7          	lui	a3,0x7ff00
    1888:	01479793          	slli	a5,a5,0x14
    188c:	00c59593          	slli	a1,a1,0xc
    1890:	04c12083          	lw	ra,76(sp)
    1894:	04812403          	lw	s0,72(sp)
    1898:	00d7f7b3          	and	a5,a5,a3
    189c:	00c5d593          	srli	a1,a1,0xc
    18a0:	00b7e7b3          	or	a5,a5,a1
    18a4:	01f49493          	slli	s1,s1,0x1f
    18a8:	0097e6b3          	or	a3,a5,s1
    18ac:	04012903          	lw	s2,64(sp)
    18b0:	04412483          	lw	s1,68(sp)
    18b4:	03c12983          	lw	s3,60(sp)
    18b8:	03812a03          	lw	s4,56(sp)
    18bc:	03412a83          	lw	s5,52(sp)
    18c0:	03012b03          	lw	s6,48(sp)
    18c4:	02c12b83          	lw	s7,44(sp)
    18c8:	02812c03          	lw	s8,40(sp)
    18cc:	02412c83          	lw	s9,36(sp)
    18d0:	02012d03          	lw	s10,32(sp)
    18d4:	01c12d83          	lw	s11,28(sp)
    18d8:	00070513          	mv	a0,a4
    18dc:	00068593          	mv	a1,a3
    18e0:	05010113          	addi	sp,sp,80
    18e4:	00008067          	ret
    18e8:	fff90913          	addi	s2,s2,-1
    18ec:	00000d93          	li	s11,0
    18f0:	bc1ff06f          	j	14b0 <__divdf3+0x258>
    18f4:	000a0493          	mv	s1,s4
    18f8:	000c8993          	mv	s3,s9
    18fc:	00040813          	mv	a6,s0
    1900:	000b8713          	mv	a4,s7
    1904:	00300793          	li	a5,3
    1908:	10f70063          	beq	a4,a5,1a08 <__divdf3+0x7b0>
    190c:	00100793          	li	a5,1
    1910:	0ef70663          	beq	a4,a5,19fc <__divdf3+0x7a4>
    1914:	00200793          	li	a5,2
    1918:	f0f716e3          	bne	a4,a5,1824 <__divdf3+0x5cc>
    191c:	00000593          	li	a1,0
    1920:	00000713          	li	a4,0
    1924:	7ff00793          	li	a5,2047
    1928:	f5dff06f          	j	1884 <__divdf3+0x62c>
    192c:	000a8493          	mv	s1,s5
    1930:	fd5ff06f          	j	1904 <__divdf3+0x6ac>
    1934:	000809b7          	lui	s3,0x80
    1938:	00000813          	li	a6,0
    193c:	00000493          	li	s1,0
    1940:	00300713          	li	a4,3
    1944:	fc1ff06f          	j	1904 <__divdf3+0x6ac>
    1948:	00100593          	li	a1,1
    194c:	40f585b3          	sub	a1,a1,a5
    1950:	03800713          	li	a4,56
    1954:	0ab74463          	blt	a4,a1,19fc <__divdf3+0x7a4>
    1958:	01f00713          	li	a4,31
    195c:	06b74663          	blt	a4,a1,19c8 <__divdf3+0x770>
    1960:	41e90913          	addi	s2,s2,1054
    1964:	012997b3          	sll	a5,s3,s2
    1968:	00b85733          	srl	a4,a6,a1
    196c:	01281933          	sll	s2,a6,s2
    1970:	00e7e7b3          	or	a5,a5,a4
    1974:	01203933          	snez	s2,s2
    1978:	0127e7b3          	or	a5,a5,s2
    197c:	00b9d5b3          	srl	a1,s3,a1
    1980:	0077f713          	andi	a4,a5,7
    1984:	02070063          	beqz	a4,19a4 <__divdf3+0x74c>
    1988:	00f7f713          	andi	a4,a5,15
    198c:	00400693          	li	a3,4
    1990:	00d70a63          	beq	a4,a3,19a4 <__divdf3+0x74c>
    1994:	00478713          	addi	a4,a5,4
    1998:	00f737b3          	sltu	a5,a4,a5
    199c:	00f585b3          	add	a1,a1,a5
    19a0:	00070793          	mv	a5,a4
    19a4:	00800737          	lui	a4,0x800
    19a8:	00e5f733          	and	a4,a1,a4
    19ac:	06071863          	bnez	a4,1a1c <__divdf3+0x7c4>
    19b0:	01d59713          	slli	a4,a1,0x1d
    19b4:	0037d793          	srli	a5,a5,0x3
    19b8:	00f76733          	or	a4,a4,a5
    19bc:	0035d593          	srli	a1,a1,0x3
    19c0:	00000793          	li	a5,0
    19c4:	ec1ff06f          	j	1884 <__divdf3+0x62c>
    19c8:	fe100713          	li	a4,-31
    19cc:	40f707b3          	sub	a5,a4,a5
    19d0:	02000693          	li	a3,32
    19d4:	00f9d7b3          	srl	a5,s3,a5
    19d8:	00000713          	li	a4,0
    19dc:	00d58663          	beq	a1,a3,19e8 <__divdf3+0x790>
    19e0:	43e90713          	addi	a4,s2,1086
    19e4:	00e99733          	sll	a4,s3,a4
    19e8:	01076733          	or	a4,a4,a6
    19ec:	00e03733          	snez	a4,a4
    19f0:	00e7e7b3          	or	a5,a5,a4
    19f4:	00000593          	li	a1,0
    19f8:	f89ff06f          	j	1980 <__divdf3+0x728>
    19fc:	00000593          	li	a1,0
    1a00:	00000713          	li	a4,0
    1a04:	fbdff06f          	j	19c0 <__divdf3+0x768>
    1a08:	000805b7          	lui	a1,0x80
    1a0c:	00000713          	li	a4,0
    1a10:	7ff00793          	li	a5,2047
    1a14:	00000493          	li	s1,0
    1a18:	e6dff06f          	j	1884 <__divdf3+0x62c>
    1a1c:	00000593          	li	a1,0
    1a20:	00000713          	li	a4,0
    1a24:	00100793          	li	a5,1
    1a28:	e5dff06f          	j	1884 <__divdf3+0x62c>
    1a2c:	00080793          	mv	a5,a6
    1a30:	00078813          	mv	a6,a5
    1a34:	dedff06f          	j	1820 <__divdf3+0x5c8>

00001a38 <__eqdf2>:
    1a38:	0145d713          	srli	a4,a1,0x14
    1a3c:	001007b7          	lui	a5,0x100
    1a40:	fff78793          	addi	a5,a5,-1 # fffff <start_time+0xef7ff>
    1a44:	0146d813          	srli	a6,a3,0x14
    1a48:	00050313          	mv	t1,a0
    1a4c:	00050e93          	mv	t4,a0
    1a50:	7ff77713          	andi	a4,a4,2047
    1a54:	7ff00513          	li	a0,2047
    1a58:	00b7f8b3          	and	a7,a5,a1
    1a5c:	00060f13          	mv	t5,a2
    1a60:	00d7f7b3          	and	a5,a5,a3
    1a64:	01f5d593          	srli	a1,a1,0x1f
    1a68:	7ff87813          	andi	a6,a6,2047
    1a6c:	01f6d693          	srli	a3,a3,0x1f
    1a70:	00a71c63          	bne	a4,a0,1a88 <__eqdf2+0x50>
    1a74:	0068ee33          	or	t3,a7,t1
    1a78:	00100513          	li	a0,1
    1a7c:	000e1463          	bnez	t3,1a84 <__eqdf2+0x4c>
    1a80:	00e80663          	beq	a6,a4,1a8c <__eqdf2+0x54>
    1a84:	00008067          	ret
    1a88:	00a81863          	bne	a6,a0,1a98 <__eqdf2+0x60>
    1a8c:	00c7e633          	or	a2,a5,a2
    1a90:	00100513          	li	a0,1
    1a94:	fe0618e3          	bnez	a2,1a84 <__eqdf2+0x4c>
    1a98:	00100513          	li	a0,1
    1a9c:	ff0714e3          	bne	a4,a6,1a84 <__eqdf2+0x4c>
    1aa0:	fef892e3          	bne	a7,a5,1a84 <__eqdf2+0x4c>
    1aa4:	ffee90e3          	bne	t4,t5,1a84 <__eqdf2+0x4c>
    1aa8:	00d58a63          	beq	a1,a3,1abc <__eqdf2+0x84>
    1aac:	fc071ce3          	bnez	a4,1a84 <__eqdf2+0x4c>
    1ab0:	0068e8b3          	or	a7,a7,t1
    1ab4:	01103533          	snez	a0,a7
    1ab8:	00008067          	ret
    1abc:	00000513          	li	a0,0
    1ac0:	00008067          	ret

00001ac4 <__ledf2>:
    1ac4:	00100737          	lui	a4,0x100
    1ac8:	fff70713          	addi	a4,a4,-1 # fffff <start_time+0xef7ff>
    1acc:	0145d813          	srli	a6,a1,0x14
    1ad0:	00b778b3          	and	a7,a4,a1
    1ad4:	00050793          	mv	a5,a0
    1ad8:	00050313          	mv	t1,a0
    1adc:	7ff87813          	andi	a6,a6,2047
    1ae0:	01f5d513          	srli	a0,a1,0x1f
    1ae4:	7ff00e93          	li	t4,2047
    1ae8:	0146d593          	srli	a1,a3,0x14
    1aec:	00d77733          	and	a4,a4,a3
    1af0:	00060e13          	mv	t3,a2
    1af4:	7ff5f593          	andi	a1,a1,2047
    1af8:	01f6d693          	srli	a3,a3,0x1f
    1afc:	01d81a63          	bne	a6,t4,1b10 <__ledf2+0x4c>
    1b00:	00f8eeb3          	or	t4,a7,a5
    1b04:	080e8a63          	beqz	t4,1b98 <__ledf2+0xd4>
    1b08:	00200513          	li	a0,2
    1b0c:	00008067          	ret
    1b10:	01d59663          	bne	a1,t4,1b1c <__ledf2+0x58>
    1b14:	00c76eb3          	or	t4,a4,a2
    1b18:	fe0e98e3          	bnez	t4,1b08 <__ledf2+0x44>
    1b1c:	08081063          	bnez	a6,1b9c <__ledf2+0xd8>
    1b20:	00f8e7b3          	or	a5,a7,a5
    1b24:	0017b793          	seqz	a5,a5
    1b28:	00059663          	bnez	a1,1b34 <__ledf2+0x70>
    1b2c:	00c76633          	or	a2,a4,a2
    1b30:	04060c63          	beqz	a2,1b88 <__ledf2+0xc4>
    1b34:	00079c63          	bnez	a5,1b4c <__ledf2+0x88>
    1b38:	00d51463          	bne	a0,a3,1b40 <__ledf2+0x7c>
    1b3c:	0305d063          	bge	a1,a6,1b5c <__ledf2+0x98>
    1b40:	04050063          	beqz	a0,1b80 <__ledf2+0xbc>
    1b44:	fff00513          	li	a0,-1
    1b48:	00008067          	ret
    1b4c:	fff00513          	li	a0,-1
    1b50:	00068a63          	beqz	a3,1b64 <__ledf2+0xa0>
    1b54:	00068513          	mv	a0,a3
    1b58:	00008067          	ret
    1b5c:	00b85663          	bge	a6,a1,1b68 <__ledf2+0xa4>
    1b60:	fe0502e3          	beqz	a0,1b44 <__ledf2+0x80>
    1b64:	00008067          	ret
    1b68:	fd176ce3          	bltu	a4,a7,1b40 <__ledf2+0x7c>
    1b6c:	02e89263          	bne	a7,a4,1b90 <__ledf2+0xcc>
    1b70:	fc6e68e3          	bltu	t3,t1,1b40 <__ledf2+0x7c>
    1b74:	ffc366e3          	bltu	t1,t3,1b60 <__ledf2+0x9c>
    1b78:	00000513          	li	a0,0
    1b7c:	00008067          	ret
    1b80:	00100513          	li	a0,1
    1b84:	00008067          	ret
    1b88:	fe0798e3          	bnez	a5,1b78 <__ledf2+0xb4>
    1b8c:	fb5ff06f          	j	1b40 <__ledf2+0x7c>
    1b90:	fce8e8e3          	bltu	a7,a4,1b60 <__ledf2+0x9c>
    1b94:	fe5ff06f          	j	1b78 <__ledf2+0xb4>
    1b98:	f7058ee3          	beq	a1,a6,1b14 <__ledf2+0x50>
    1b9c:	f8059ee3          	bnez	a1,1b38 <__ledf2+0x74>
    1ba0:	00000793          	li	a5,0
    1ba4:	f89ff06f          	j	1b2c <__ledf2+0x68>

00001ba8 <__muldf3>:
    1ba8:	fd010113          	addi	sp,sp,-48
    1bac:	01312e23          	sw	s3,28(sp)
    1bb0:	0145d993          	srli	s3,a1,0x14
    1bb4:	02812423          	sw	s0,40(sp)
    1bb8:	02912223          	sw	s1,36(sp)
    1bbc:	01412c23          	sw	s4,24(sp)
    1bc0:	01512a23          	sw	s5,20(sp)
    1bc4:	01712623          	sw	s7,12(sp)
    1bc8:	00c59493          	slli	s1,a1,0xc
    1bcc:	02112623          	sw	ra,44(sp)
    1bd0:	03212023          	sw	s2,32(sp)
    1bd4:	01612823          	sw	s6,16(sp)
    1bd8:	7ff9f993          	andi	s3,s3,2047
    1bdc:	00050413          	mv	s0,a0
    1be0:	00060b93          	mv	s7,a2
    1be4:	00068a13          	mv	s4,a3
    1be8:	00c4d493          	srli	s1,s1,0xc
    1bec:	01f5da93          	srli	s5,a1,0x1f
    1bf0:	3c098863          	beqz	s3,1fc0 <__muldf3+0x418>
    1bf4:	7ff00793          	li	a5,2047
    1bf8:	42f98663          	beq	s3,a5,2024 <__muldf3+0x47c>
    1bfc:	00349493          	slli	s1,s1,0x3
    1c00:	01d55793          	srli	a5,a0,0x1d
    1c04:	0097e7b3          	or	a5,a5,s1
    1c08:	008004b7          	lui	s1,0x800
    1c0c:	0097e4b3          	or	s1,a5,s1
    1c10:	00351913          	slli	s2,a0,0x3
    1c14:	c0198993          	addi	s3,s3,-1023 # 7fc01 <start_time+0x6f401>
    1c18:	00000b13          	li	s6,0
    1c1c:	014a5713          	srli	a4,s4,0x14
    1c20:	00ca1413          	slli	s0,s4,0xc
    1c24:	7ff77713          	andi	a4,a4,2047
    1c28:	00c45413          	srli	s0,s0,0xc
    1c2c:	01fa5a13          	srli	s4,s4,0x1f
    1c30:	42070663          	beqz	a4,205c <__muldf3+0x4b4>
    1c34:	7ff00793          	li	a5,2047
    1c38:	48f70663          	beq	a4,a5,20c4 <__muldf3+0x51c>
    1c3c:	00341413          	slli	s0,s0,0x3
    1c40:	01dbd793          	srli	a5,s7,0x1d
    1c44:	0087e7b3          	or	a5,a5,s0
    1c48:	00800437          	lui	s0,0x800
    1c4c:	0087e433          	or	s0,a5,s0
    1c50:	c0170713          	addi	a4,a4,-1023
    1c54:	003b9793          	slli	a5,s7,0x3
    1c58:	00000613          	li	a2,0
    1c5c:	00e989b3          	add	s3,s3,a4
    1c60:	002b1713          	slli	a4,s6,0x2
    1c64:	00c76733          	or	a4,a4,a2
    1c68:	00a00693          	li	a3,10
    1c6c:	014ac833          	xor	a6,s5,s4
    1c70:	00198893          	addi	a7,s3,1
    1c74:	4ce6c863          	blt	a3,a4,2144 <__muldf3+0x59c>
    1c78:	00200693          	li	a3,2
    1c7c:	48e6c063          	blt	a3,a4,20fc <__muldf3+0x554>
    1c80:	fff70713          	addi	a4,a4,-1
    1c84:	00100693          	li	a3,1
    1c88:	48e6fc63          	bgeu	a3,a4,2120 <__muldf3+0x578>
    1c8c:	00010a37          	lui	s4,0x10
    1c90:	fffa0393          	addi	t2,s4,-1 # ffff <main+0xd41f>
    1c94:	0107d293          	srli	t0,a5,0x10
    1c98:	00797e33          	and	t3,s2,t2
    1c9c:	0077f7b3          	and	a5,a5,t2
    1ca0:	01095f93          	srli	t6,s2,0x10
    1ca4:	000e0513          	mv	a0,t3
    1ca8:	00078593          	mv	a1,a5
    1cac:	605000ef          	jal	ra,2ab0 <__mulsi3>
    1cb0:	00050e93          	mv	t4,a0
    1cb4:	00028593          	mv	a1,t0
    1cb8:	000e0513          	mv	a0,t3
    1cbc:	5f5000ef          	jal	ra,2ab0 <__mulsi3>
    1cc0:	00050713          	mv	a4,a0
    1cc4:	00078593          	mv	a1,a5
    1cc8:	000f8513          	mv	a0,t6
    1ccc:	5e5000ef          	jal	ra,2ab0 <__mulsi3>
    1cd0:	00050913          	mv	s2,a0
    1cd4:	00028593          	mv	a1,t0
    1cd8:	000f8513          	mv	a0,t6
    1cdc:	5d5000ef          	jal	ra,2ab0 <__mulsi3>
    1ce0:	010ed313          	srli	t1,t4,0x10
    1ce4:	01270733          	add	a4,a4,s2
    1ce8:	00e30333          	add	t1,t1,a4
    1cec:	00050f13          	mv	t5,a0
    1cf0:	01237463          	bgeu	t1,s2,1cf8 <__muldf3+0x150>
    1cf4:	01450f33          	add	t5,a0,s4
    1cf8:	01035913          	srli	s2,t1,0x10
    1cfc:	00737333          	and	t1,t1,t2
    1d00:	007efeb3          	and	t4,t4,t2
    1d04:	01031313          	slli	t1,t1,0x10
    1d08:	007473b3          	and	t2,s0,t2
    1d0c:	01d30333          	add	t1,t1,t4
    1d10:	01045a13          	srli	s4,s0,0x10
    1d14:	000e0513          	mv	a0,t3
    1d18:	00038593          	mv	a1,t2
    1d1c:	595000ef          	jal	ra,2ab0 <__mulsi3>
    1d20:	00050e93          	mv	t4,a0
    1d24:	000a0593          	mv	a1,s4
    1d28:	000e0513          	mv	a0,t3
    1d2c:	585000ef          	jal	ra,2ab0 <__mulsi3>
    1d30:	00050e13          	mv	t3,a0
    1d34:	00038593          	mv	a1,t2
    1d38:	000f8513          	mv	a0,t6
    1d3c:	575000ef          	jal	ra,2ab0 <__mulsi3>
    1d40:	00050413          	mv	s0,a0
    1d44:	000a0593          	mv	a1,s4
    1d48:	000f8513          	mv	a0,t6
    1d4c:	565000ef          	jal	ra,2ab0 <__mulsi3>
    1d50:	010ed713          	srli	a4,t4,0x10
    1d54:	008e0e33          	add	t3,t3,s0
    1d58:	01c70733          	add	a4,a4,t3
    1d5c:	00050693          	mv	a3,a0
    1d60:	00877663          	bgeu	a4,s0,1d6c <__muldf3+0x1c4>
    1d64:	00010637          	lui	a2,0x10
    1d68:	00c506b3          	add	a3,a0,a2
    1d6c:	00010b37          	lui	s6,0x10
    1d70:	fffb0e13          	addi	t3,s6,-1 # ffff <main+0xd41f>
    1d74:	01075f93          	srli	t6,a4,0x10
    1d78:	01c77733          	and	a4,a4,t3
    1d7c:	01071713          	slli	a4,a4,0x10
    1d80:	01cefeb3          	and	t4,t4,t3
    1d84:	01d70eb3          	add	t4,a4,t4
    1d88:	01c4fe33          	and	t3,s1,t3
    1d8c:	00df8fb3          	add	t6,t6,a3
    1d90:	01d90933          	add	s2,s2,t4
    1d94:	0104da93          	srli	s5,s1,0x10
    1d98:	000e0513          	mv	a0,t3
    1d9c:	00078593          	mv	a1,a5
    1da0:	511000ef          	jal	ra,2ab0 <__mulsi3>
    1da4:	00050413          	mv	s0,a0
    1da8:	00028593          	mv	a1,t0
    1dac:	000e0513          	mv	a0,t3
    1db0:	501000ef          	jal	ra,2ab0 <__mulsi3>
    1db4:	00050493          	mv	s1,a0
    1db8:	00078593          	mv	a1,a5
    1dbc:	000a8513          	mv	a0,s5
    1dc0:	4f1000ef          	jal	ra,2ab0 <__mulsi3>
    1dc4:	00050b93          	mv	s7,a0
    1dc8:	00028593          	mv	a1,t0
    1dcc:	000a8513          	mv	a0,s5
    1dd0:	4e1000ef          	jal	ra,2ab0 <__mulsi3>
    1dd4:	01045793          	srli	a5,s0,0x10
    1dd8:	017484b3          	add	s1,s1,s7
    1ddc:	009787b3          	add	a5,a5,s1
    1de0:	00050713          	mv	a4,a0
    1de4:	0177f463          	bgeu	a5,s7,1dec <__muldf3+0x244>
    1de8:	01650733          	add	a4,a0,s6
    1dec:	000104b7          	lui	s1,0x10
    1df0:	fff48693          	addi	a3,s1,-1 # ffff <main+0xd41f>
    1df4:	0107d293          	srli	t0,a5,0x10
    1df8:	00e282b3          	add	t0,t0,a4
    1dfc:	00d7f733          	and	a4,a5,a3
    1e00:	00d47433          	and	s0,s0,a3
    1e04:	01071713          	slli	a4,a4,0x10
    1e08:	00870733          	add	a4,a4,s0
    1e0c:	000e0513          	mv	a0,t3
    1e10:	00038593          	mv	a1,t2
    1e14:	49d000ef          	jal	ra,2ab0 <__mulsi3>
    1e18:	00050413          	mv	s0,a0
    1e1c:	000a0593          	mv	a1,s4
    1e20:	000e0513          	mv	a0,t3
    1e24:	48d000ef          	jal	ra,2ab0 <__mulsi3>
    1e28:	00050e13          	mv	t3,a0
    1e2c:	00038593          	mv	a1,t2
    1e30:	000a8513          	mv	a0,s5
    1e34:	47d000ef          	jal	ra,2ab0 <__mulsi3>
    1e38:	00050393          	mv	t2,a0
    1e3c:	000a0593          	mv	a1,s4
    1e40:	000a8513          	mv	a0,s5
    1e44:	46d000ef          	jal	ra,2ab0 <__mulsi3>
    1e48:	01045793          	srli	a5,s0,0x10
    1e4c:	007e0e33          	add	t3,t3,t2
    1e50:	01c78e33          	add	t3,a5,t3
    1e54:	00050593          	mv	a1,a0
    1e58:	007e7463          	bgeu	t3,t2,1e60 <__muldf3+0x2b8>
    1e5c:	009505b3          	add	a1,a0,s1
    1e60:	000106b7          	lui	a3,0x10
    1e64:	fff68693          	addi	a3,a3,-1 # ffff <main+0xd41f>
    1e68:	00de77b3          	and	a5,t3,a3
    1e6c:	00d47433          	and	s0,s0,a3
    1e70:	01079793          	slli	a5,a5,0x10
    1e74:	012f0f33          	add	t5,t5,s2
    1e78:	008787b3          	add	a5,a5,s0
    1e7c:	01df3eb3          	sltu	t4,t5,t4
    1e80:	01f787b3          	add	a5,a5,t6
    1e84:	01d78533          	add	a0,a5,t4
    1e88:	00ef0f33          	add	t5,t5,a4
    1e8c:	00ef3733          	sltu	a4,t5,a4
    1e90:	005506b3          	add	a3,a0,t0
    1e94:	00e68633          	add	a2,a3,a4
    1e98:	01f7b433          	sltu	s0,a5,t6
    1e9c:	01d53533          	sltu	a0,a0,t4
    1ea0:	010e5793          	srli	a5,t3,0x10
    1ea4:	00e63733          	sltu	a4,a2,a4
    1ea8:	00a46433          	or	s0,s0,a0
    1eac:	0056b6b3          	sltu	a3,a3,t0
    1eb0:	00f40433          	add	s0,s0,a5
    1eb4:	00e6e6b3          	or	a3,a3,a4
    1eb8:	00d40433          	add	s0,s0,a3
    1ebc:	00b40433          	add	s0,s0,a1
    1ec0:	01765793          	srli	a5,a2,0x17
    1ec4:	00941413          	slli	s0,s0,0x9
    1ec8:	00f46433          	or	s0,s0,a5
    1ecc:	009f1793          	slli	a5,t5,0x9
    1ed0:	0067e7b3          	or	a5,a5,t1
    1ed4:	00f037b3          	snez	a5,a5
    1ed8:	017f5f13          	srli	t5,t5,0x17
    1edc:	00961713          	slli	a4,a2,0x9
    1ee0:	01e7e7b3          	or	a5,a5,t5
    1ee4:	00e7e7b3          	or	a5,a5,a4
    1ee8:	01000737          	lui	a4,0x1000
    1eec:	00e47733          	and	a4,s0,a4
    1ef0:	28070663          	beqz	a4,217c <__muldf3+0x5d4>
    1ef4:	0017d713          	srli	a4,a5,0x1
    1ef8:	0017f793          	andi	a5,a5,1
    1efc:	00f76733          	or	a4,a4,a5
    1f00:	01f41793          	slli	a5,s0,0x1f
    1f04:	00f767b3          	or	a5,a4,a5
    1f08:	00145413          	srli	s0,s0,0x1
    1f0c:	3ff88693          	addi	a3,a7,1023 # 8003ff <start_time+0x7efbff>
    1f10:	26d05a63          	blez	a3,2184 <__muldf3+0x5dc>
    1f14:	0077f713          	andi	a4,a5,7
    1f18:	02070063          	beqz	a4,1f38 <__muldf3+0x390>
    1f1c:	00f7f713          	andi	a4,a5,15
    1f20:	00400613          	li	a2,4
    1f24:	00c70a63          	beq	a4,a2,1f38 <__muldf3+0x390>
    1f28:	00478713          	addi	a4,a5,4
    1f2c:	00f737b3          	sltu	a5,a4,a5
    1f30:	00f40433          	add	s0,s0,a5
    1f34:	00070793          	mv	a5,a4
    1f38:	01000737          	lui	a4,0x1000
    1f3c:	00e47733          	and	a4,s0,a4
    1f40:	00070a63          	beqz	a4,1f54 <__muldf3+0x3ac>
    1f44:	ff000737          	lui	a4,0xff000
    1f48:	fff70713          	addi	a4,a4,-1 # feffffff <start_time+0xfefef7ff>
    1f4c:	00e47433          	and	s0,s0,a4
    1f50:	40088693          	addi	a3,a7,1024
    1f54:	7fe00713          	li	a4,2046
    1f58:	2ed74e63          	blt	a4,a3,2254 <__muldf3+0x6ac>
    1f5c:	01d41713          	slli	a4,s0,0x1d
    1f60:	0037d793          	srli	a5,a5,0x3
    1f64:	00f76733          	or	a4,a4,a5
    1f68:	00345413          	srli	s0,s0,0x3
    1f6c:	7ff007b7          	lui	a5,0x7ff00
    1f70:	01469693          	slli	a3,a3,0x14
    1f74:	00c41413          	slli	s0,s0,0xc
    1f78:	00f6f6b3          	and	a3,a3,a5
    1f7c:	00c45413          	srli	s0,s0,0xc
    1f80:	02c12083          	lw	ra,44(sp)
    1f84:	0086e6b3          	or	a3,a3,s0
    1f88:	02812403          	lw	s0,40(sp)
    1f8c:	01f81813          	slli	a6,a6,0x1f
    1f90:	0106e7b3          	or	a5,a3,a6
    1f94:	02412483          	lw	s1,36(sp)
    1f98:	02012903          	lw	s2,32(sp)
    1f9c:	01c12983          	lw	s3,28(sp)
    1fa0:	01812a03          	lw	s4,24(sp)
    1fa4:	01412a83          	lw	s5,20(sp)
    1fa8:	01012b03          	lw	s6,16(sp)
    1fac:	00c12b83          	lw	s7,12(sp)
    1fb0:	00070513          	mv	a0,a4
    1fb4:	00078593          	mv	a1,a5
    1fb8:	03010113          	addi	sp,sp,48
    1fbc:	00008067          	ret
    1fc0:	00a4e933          	or	s2,s1,a0
    1fc4:	06090c63          	beqz	s2,203c <__muldf3+0x494>
    1fc8:	04048063          	beqz	s1,2008 <__muldf3+0x460>
    1fcc:	00048513          	mv	a0,s1
    1fd0:	3b9000ef          	jal	ra,2b88 <__clzsi2>
    1fd4:	ff550713          	addi	a4,a0,-11
    1fd8:	01c00793          	li	a5,28
    1fdc:	02e7cc63          	blt	a5,a4,2014 <__muldf3+0x46c>
    1fe0:	01d00793          	li	a5,29
    1fe4:	ff850913          	addi	s2,a0,-8
    1fe8:	40e787b3          	sub	a5,a5,a4
    1fec:	012494b3          	sll	s1,s1,s2
    1ff0:	00f457b3          	srl	a5,s0,a5
    1ff4:	0097e4b3          	or	s1,a5,s1
    1ff8:	01241933          	sll	s2,s0,s2
    1ffc:	c0d00993          	li	s3,-1011
    2000:	40a989b3          	sub	s3,s3,a0
    2004:	c15ff06f          	j	1c18 <__muldf3+0x70>
    2008:	381000ef          	jal	ra,2b88 <__clzsi2>
    200c:	02050513          	addi	a0,a0,32
    2010:	fc5ff06f          	j	1fd4 <__muldf3+0x42c>
    2014:	fd850493          	addi	s1,a0,-40
    2018:	009414b3          	sll	s1,s0,s1
    201c:	00000913          	li	s2,0
    2020:	fddff06f          	j	1ffc <__muldf3+0x454>
    2024:	00a4e933          	or	s2,s1,a0
    2028:	02090263          	beqz	s2,204c <__muldf3+0x4a4>
    202c:	00050913          	mv	s2,a0
    2030:	7ff00993          	li	s3,2047
    2034:	00300b13          	li	s6,3
    2038:	be5ff06f          	j	1c1c <__muldf3+0x74>
    203c:	00000493          	li	s1,0
    2040:	00000993          	li	s3,0
    2044:	00100b13          	li	s6,1
    2048:	bd5ff06f          	j	1c1c <__muldf3+0x74>
    204c:	00000493          	li	s1,0
    2050:	7ff00993          	li	s3,2047
    2054:	00200b13          	li	s6,2
    2058:	bc5ff06f          	j	1c1c <__muldf3+0x74>
    205c:	017467b3          	or	a5,s0,s7
    2060:	06078e63          	beqz	a5,20dc <__muldf3+0x534>
    2064:	04040063          	beqz	s0,20a4 <__muldf3+0x4fc>
    2068:	00040513          	mv	a0,s0
    206c:	31d000ef          	jal	ra,2b88 <__clzsi2>
    2070:	ff550693          	addi	a3,a0,-11
    2074:	01c00793          	li	a5,28
    2078:	02d7ce63          	blt	a5,a3,20b4 <__muldf3+0x50c>
    207c:	01d00713          	li	a4,29
    2080:	ff850793          	addi	a5,a0,-8
    2084:	40d70733          	sub	a4,a4,a3
    2088:	00f41433          	sll	s0,s0,a5
    208c:	00ebd733          	srl	a4,s7,a4
    2090:	00876433          	or	s0,a4,s0
    2094:	00fb97b3          	sll	a5,s7,a5
    2098:	c0d00713          	li	a4,-1011
    209c:	40a70733          	sub	a4,a4,a0
    20a0:	bb9ff06f          	j	1c58 <__muldf3+0xb0>
    20a4:	000b8513          	mv	a0,s7
    20a8:	2e1000ef          	jal	ra,2b88 <__clzsi2>
    20ac:	02050513          	addi	a0,a0,32
    20b0:	fc1ff06f          	j	2070 <__muldf3+0x4c8>
    20b4:	fd850413          	addi	s0,a0,-40
    20b8:	008b9433          	sll	s0,s7,s0
    20bc:	00000793          	li	a5,0
    20c0:	fd9ff06f          	j	2098 <__muldf3+0x4f0>
    20c4:	017467b3          	or	a5,s0,s7
    20c8:	02078263          	beqz	a5,20ec <__muldf3+0x544>
    20cc:	000b8793          	mv	a5,s7
    20d0:	7ff00713          	li	a4,2047
    20d4:	00300613          	li	a2,3
    20d8:	b85ff06f          	j	1c5c <__muldf3+0xb4>
    20dc:	00000413          	li	s0,0
    20e0:	00000713          	li	a4,0
    20e4:	00100613          	li	a2,1
    20e8:	b75ff06f          	j	1c5c <__muldf3+0xb4>
    20ec:	00000413          	li	s0,0
    20f0:	7ff00713          	li	a4,2047
    20f4:	00200613          	li	a2,2
    20f8:	b65ff06f          	j	1c5c <__muldf3+0xb4>
    20fc:	00100693          	li	a3,1
    2100:	00e696b3          	sll	a3,a3,a4
    2104:	5306f713          	andi	a4,a3,1328
    2108:	04071863          	bnez	a4,2158 <__muldf3+0x5b0>
    210c:	2406f593          	andi	a1,a3,576
    2110:	12059463          	bnez	a1,2238 <__muldf3+0x690>
    2114:	0886f693          	andi	a3,a3,136
    2118:	b6068ae3          	beqz	a3,1c8c <__muldf3+0xe4>
    211c:	000a0813          	mv	a6,s4
    2120:	00200713          	li	a4,2
    2124:	12e60863          	beq	a2,a4,2254 <__muldf3+0x6ac>
    2128:	00300713          	li	a4,3
    212c:	10e60e63          	beq	a2,a4,2248 <__muldf3+0x6a0>
    2130:	00100713          	li	a4,1
    2134:	dce61ce3          	bne	a2,a4,1f0c <__muldf3+0x364>
    2138:	00000413          	li	s0,0
    213c:	00000713          	li	a4,0
    2140:	0bc0006f          	j	21fc <__muldf3+0x654>
    2144:	00f00693          	li	a3,15
    2148:	02d70063          	beq	a4,a3,2168 <__muldf3+0x5c0>
    214c:	00b00693          	li	a3,11
    2150:	fcd706e3          	beq	a4,a3,211c <__muldf3+0x574>
    2154:	000a8813          	mv	a6,s5
    2158:	00048413          	mv	s0,s1
    215c:	00090793          	mv	a5,s2
    2160:	000b0613          	mv	a2,s6
    2164:	fbdff06f          	j	2120 <__muldf3+0x578>
    2168:	00080437          	lui	s0,0x80
    216c:	00000793          	li	a5,0
    2170:	00000813          	li	a6,0
    2174:	00300613          	li	a2,3
    2178:	fb1ff06f          	j	2128 <__muldf3+0x580>
    217c:	00098893          	mv	a7,s3
    2180:	d8dff06f          	j	1f0c <__muldf3+0x364>
    2184:	00100613          	li	a2,1
    2188:	40d60633          	sub	a2,a2,a3
    218c:	03800713          	li	a4,56
    2190:	fac744e3          	blt	a4,a2,2138 <__muldf3+0x590>
    2194:	01f00713          	li	a4,31
    2198:	06c74663          	blt	a4,a2,2204 <__muldf3+0x65c>
    219c:	41e88893          	addi	a7,a7,1054
    21a0:	01141733          	sll	a4,s0,a7
    21a4:	00c7d6b3          	srl	a3,a5,a2
    21a8:	011798b3          	sll	a7,a5,a7
    21ac:	00d76733          	or	a4,a4,a3
    21b0:	011038b3          	snez	a7,a7
    21b4:	011767b3          	or	a5,a4,a7
    21b8:	00c45433          	srl	s0,s0,a2
    21bc:	0077f713          	andi	a4,a5,7
    21c0:	02070063          	beqz	a4,21e0 <__muldf3+0x638>
    21c4:	00f7f713          	andi	a4,a5,15
    21c8:	00400693          	li	a3,4
    21cc:	00d70a63          	beq	a4,a3,21e0 <__muldf3+0x638>
    21d0:	00478713          	addi	a4,a5,4 # 7ff00004 <start_time+0x7feef804>
    21d4:	00f737b3          	sltu	a5,a4,a5
    21d8:	00f40433          	add	s0,s0,a5
    21dc:	00070793          	mv	a5,a4
    21e0:	00800737          	lui	a4,0x800
    21e4:	00e47733          	and	a4,s0,a4
    21e8:	06071e63          	bnez	a4,2264 <__muldf3+0x6bc>
    21ec:	01d41713          	slli	a4,s0,0x1d
    21f0:	0037d793          	srli	a5,a5,0x3
    21f4:	00f76733          	or	a4,a4,a5
    21f8:	00345413          	srli	s0,s0,0x3
    21fc:	00000693          	li	a3,0
    2200:	d6dff06f          	j	1f6c <__muldf3+0x3c4>
    2204:	fe100713          	li	a4,-31
    2208:	40d70733          	sub	a4,a4,a3
    220c:	02000593          	li	a1,32
    2210:	00e45733          	srl	a4,s0,a4
    2214:	00000693          	li	a3,0
    2218:	00b60663          	beq	a2,a1,2224 <__muldf3+0x67c>
    221c:	43e88893          	addi	a7,a7,1086
    2220:	011416b3          	sll	a3,s0,a7
    2224:	00f6e6b3          	or	a3,a3,a5
    2228:	00d036b3          	snez	a3,a3
    222c:	00d767b3          	or	a5,a4,a3
    2230:	00000413          	li	s0,0
    2234:	f89ff06f          	j	21bc <__muldf3+0x614>
    2238:	00080437          	lui	s0,0x80
    223c:	7ff00693          	li	a3,2047
    2240:	00000813          	li	a6,0
    2244:	d29ff06f          	j	1f6c <__muldf3+0x3c4>
    2248:	00080437          	lui	s0,0x80
    224c:	00000713          	li	a4,0
    2250:	fedff06f          	j	223c <__muldf3+0x694>
    2254:	00000413          	li	s0,0
    2258:	00000713          	li	a4,0
    225c:	7ff00693          	li	a3,2047
    2260:	d0dff06f          	j	1f6c <__muldf3+0x3c4>
    2264:	00000413          	li	s0,0
    2268:	00000713          	li	a4,0
    226c:	00100693          	li	a3,1
    2270:	cfdff06f          	j	1f6c <__muldf3+0x3c4>

00002274 <__subdf3>:
    2274:	00100837          	lui	a6,0x100
    2278:	fff80813          	addi	a6,a6,-1 # fffff <start_time+0xef7ff>
    227c:	fe010113          	addi	sp,sp,-32
    2280:	00b878b3          	and	a7,a6,a1
    2284:	0145d713          	srli	a4,a1,0x14
    2288:	01d55793          	srli	a5,a0,0x1d
    228c:	00d87833          	and	a6,a6,a3
    2290:	00812c23          	sw	s0,24(sp)
    2294:	7ff77413          	andi	s0,a4,2047
    2298:	00389713          	slli	a4,a7,0x3
    229c:	0146d893          	srli	a7,a3,0x14
    22a0:	00912a23          	sw	s1,20(sp)
    22a4:	00e7e7b3          	or	a5,a5,a4
    22a8:	01f5d493          	srli	s1,a1,0x1f
    22ac:	01d65713          	srli	a4,a2,0x1d
    22b0:	00381813          	slli	a6,a6,0x3
    22b4:	00112e23          	sw	ra,28(sp)
    22b8:	01212823          	sw	s2,16(sp)
    22bc:	01312623          	sw	s3,12(sp)
    22c0:	7ff8f893          	andi	a7,a7,2047
    22c4:	7ff00593          	li	a1,2047
    22c8:	00351513          	slli	a0,a0,0x3
    22cc:	01f6d693          	srli	a3,a3,0x1f
    22d0:	01076733          	or	a4,a4,a6
    22d4:	00361613          	slli	a2,a2,0x3
    22d8:	00b89663          	bne	a7,a1,22e4 <__subdf3+0x70>
    22dc:	00c765b3          	or	a1,a4,a2
    22e0:	00059463          	bnez	a1,22e8 <__subdf3+0x74>
    22e4:	0016c693          	xori	a3,a3,1
    22e8:	41140833          	sub	a6,s0,a7
    22ec:	2c969863          	bne	a3,s1,25bc <__subdf3+0x348>
    22f0:	13005063          	blez	a6,2410 <__subdf3+0x19c>
    22f4:	04089063          	bnez	a7,2334 <__subdf3+0xc0>
    22f8:	00c766b3          	or	a3,a4,a2
    22fc:	70068e63          	beqz	a3,2a18 <__subdf3+0x7a4>
    2300:	fff80593          	addi	a1,a6,-1
    2304:	02059063          	bnez	a1,2324 <__subdf3+0xb0>
    2308:	00c50633          	add	a2,a0,a2
    230c:	00e78733          	add	a4,a5,a4
    2310:	00a637b3          	sltu	a5,a2,a0
    2314:	00f707b3          	add	a5,a4,a5
    2318:	00060513          	mv	a0,a2
    231c:	00100413          	li	s0,1
    2320:	0700006f          	j	2390 <__subdf3+0x11c>
    2324:	7ff00693          	li	a3,2047
    2328:	02d81063          	bne	a6,a3,2348 <__subdf3+0xd4>
    232c:	7ff00413          	li	s0,2047
    2330:	2140006f          	j	2544 <__subdf3+0x2d0>
    2334:	7ff00693          	li	a3,2047
    2338:	20d40663          	beq	s0,a3,2544 <__subdf3+0x2d0>
    233c:	008006b7          	lui	a3,0x800
    2340:	00d76733          	or	a4,a4,a3
    2344:	00080593          	mv	a1,a6
    2348:	03800693          	li	a3,56
    234c:	0ab6cc63          	blt	a3,a1,2404 <__subdf3+0x190>
    2350:	01f00693          	li	a3,31
    2354:	06b6ce63          	blt	a3,a1,23d0 <__subdf3+0x15c>
    2358:	02000813          	li	a6,32
    235c:	40b80833          	sub	a6,a6,a1
    2360:	010716b3          	sll	a3,a4,a6
    2364:	00b658b3          	srl	a7,a2,a1
    2368:	01061833          	sll	a6,a2,a6
    236c:	0116e6b3          	or	a3,a3,a7
    2370:	01003833          	snez	a6,a6
    2374:	0106e6b3          	or	a3,a3,a6
    2378:	00b755b3          	srl	a1,a4,a1
    237c:	00a686b3          	add	a3,a3,a0
    2380:	00f585b3          	add	a1,a1,a5
    2384:	00a6b7b3          	sltu	a5,a3,a0
    2388:	00f587b3          	add	a5,a1,a5
    238c:	00068513          	mv	a0,a3
    2390:	00800737          	lui	a4,0x800
    2394:	00e7f733          	and	a4,a5,a4
    2398:	1a070663          	beqz	a4,2544 <__subdf3+0x2d0>
    239c:	00140413          	addi	s0,s0,1 # 80001 <start_time+0x6f801>
    23a0:	7ff00713          	li	a4,2047
    23a4:	5ce40a63          	beq	s0,a4,2978 <__subdf3+0x704>
    23a8:	ff800737          	lui	a4,0xff800
    23ac:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    23b0:	00e7f7b3          	and	a5,a5,a4
    23b4:	00155713          	srli	a4,a0,0x1
    23b8:	00157513          	andi	a0,a0,1
    23bc:	00a76733          	or	a4,a4,a0
    23c0:	01f79513          	slli	a0,a5,0x1f
    23c4:	00e56533          	or	a0,a0,a4
    23c8:	0017d793          	srli	a5,a5,0x1
    23cc:	1780006f          	j	2544 <__subdf3+0x2d0>
    23d0:	fe058693          	addi	a3,a1,-32 # 7ffe0 <start_time+0x6f7e0>
    23d4:	02000893          	li	a7,32
    23d8:	00d756b3          	srl	a3,a4,a3
    23dc:	00000813          	li	a6,0
    23e0:	01158863          	beq	a1,a7,23f0 <__subdf3+0x17c>
    23e4:	04000813          	li	a6,64
    23e8:	40b80833          	sub	a6,a6,a1
    23ec:	01071833          	sll	a6,a4,a6
    23f0:	00c86833          	or	a6,a6,a2
    23f4:	01003833          	snez	a6,a6
    23f8:	0106e6b3          	or	a3,a3,a6
    23fc:	00000593          	li	a1,0
    2400:	f7dff06f          	j	237c <__subdf3+0x108>
    2404:	00c766b3          	or	a3,a4,a2
    2408:	00d036b3          	snez	a3,a3
    240c:	ff1ff06f          	j	23fc <__subdf3+0x188>
    2410:	0e080263          	beqz	a6,24f4 <__subdf3+0x280>
    2414:	408885b3          	sub	a1,a7,s0
    2418:	02041e63          	bnez	s0,2454 <__subdf3+0x1e0>
    241c:	00a7e6b3          	or	a3,a5,a0
    2420:	52068c63          	beqz	a3,2958 <__subdf3+0x6e4>
    2424:	fff58693          	addi	a3,a1,-1
    2428:	00069c63          	bnez	a3,2440 <__subdf3+0x1cc>
    242c:	00c50533          	add	a0,a0,a2
    2430:	00e78733          	add	a4,a5,a4
    2434:	00c53633          	sltu	a2,a0,a2
    2438:	00c707b3          	add	a5,a4,a2
    243c:	ee1ff06f          	j	231c <__subdf3+0xa8>
    2440:	7ff00813          	li	a6,2047
    2444:	03059263          	bne	a1,a6,2468 <__subdf3+0x1f4>
    2448:	00070793          	mv	a5,a4
    244c:	00060513          	mv	a0,a2
    2450:	eddff06f          	j	232c <__subdf3+0xb8>
    2454:	7ff00693          	li	a3,2047
    2458:	fed888e3          	beq	a7,a3,2448 <__subdf3+0x1d4>
    245c:	008006b7          	lui	a3,0x800
    2460:	00d7e7b3          	or	a5,a5,a3
    2464:	00058693          	mv	a3,a1
    2468:	03800593          	li	a1,56
    246c:	06d5ce63          	blt	a1,a3,24e8 <__subdf3+0x274>
    2470:	01f00593          	li	a1,31
    2474:	04d5c063          	blt	a1,a3,24b4 <__subdf3+0x240>
    2478:	02000813          	li	a6,32
    247c:	40d80833          	sub	a6,a6,a3
    2480:	010795b3          	sll	a1,a5,a6
    2484:	00d55333          	srl	t1,a0,a3
    2488:	01051833          	sll	a6,a0,a6
    248c:	0065e5b3          	or	a1,a1,t1
    2490:	01003833          	snez	a6,a6
    2494:	0105e5b3          	or	a1,a1,a6
    2498:	00d7d6b3          	srl	a3,a5,a3
    249c:	00c58533          	add	a0,a1,a2
    24a0:	00e686b3          	add	a3,a3,a4
    24a4:	00c53633          	sltu	a2,a0,a2
    24a8:	00c687b3          	add	a5,a3,a2
    24ac:	00088413          	mv	s0,a7
    24b0:	ee1ff06f          	j	2390 <__subdf3+0x11c>
    24b4:	fe068593          	addi	a1,a3,-32 # 7fffe0 <start_time+0x7ef7e0>
    24b8:	02000313          	li	t1,32
    24bc:	00b7d5b3          	srl	a1,a5,a1
    24c0:	00000813          	li	a6,0
    24c4:	00668863          	beq	a3,t1,24d4 <__subdf3+0x260>
    24c8:	04000813          	li	a6,64
    24cc:	40d80833          	sub	a6,a6,a3
    24d0:	01079833          	sll	a6,a5,a6
    24d4:	00a86833          	or	a6,a6,a0
    24d8:	01003833          	snez	a6,a6
    24dc:	0105e5b3          	or	a1,a1,a6
    24e0:	00000693          	li	a3,0
    24e4:	fb9ff06f          	j	249c <__subdf3+0x228>
    24e8:	00a7e5b3          	or	a1,a5,a0
    24ec:	00b035b3          	snez	a1,a1
    24f0:	ff1ff06f          	j	24e0 <__subdf3+0x26c>
    24f4:	00140693          	addi	a3,s0,1
    24f8:	7fe6f593          	andi	a1,a3,2046
    24fc:	08059863          	bnez	a1,258c <__subdf3+0x318>
    2500:	00a7e6b3          	or	a3,a5,a0
    2504:	06041463          	bnez	s0,256c <__subdf3+0x2f8>
    2508:	46068063          	beqz	a3,2968 <__subdf3+0x6f4>
    250c:	00c766b3          	or	a3,a4,a2
    2510:	02068a63          	beqz	a3,2544 <__subdf3+0x2d0>
    2514:	00c50633          	add	a2,a0,a2
    2518:	00e78733          	add	a4,a5,a4
    251c:	00a637b3          	sltu	a5,a2,a0
    2520:	00f707b3          	add	a5,a4,a5
    2524:	00800737          	lui	a4,0x800
    2528:	00e7f733          	and	a4,a5,a4
    252c:	00060513          	mv	a0,a2
    2530:	00070a63          	beqz	a4,2544 <__subdf3+0x2d0>
    2534:	ff800737          	lui	a4,0xff800
    2538:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    253c:	00e7f7b3          	and	a5,a5,a4
    2540:	00100413          	li	s0,1
    2544:	00757713          	andi	a4,a0,7
    2548:	42070c63          	beqz	a4,2980 <__subdf3+0x70c>
    254c:	00f57713          	andi	a4,a0,15
    2550:	00400693          	li	a3,4
    2554:	42d70663          	beq	a4,a3,2980 <__subdf3+0x70c>
    2558:	00450713          	addi	a4,a0,4
    255c:	00a73533          	sltu	a0,a4,a0
    2560:	00a787b3          	add	a5,a5,a0
    2564:	00070513          	mv	a0,a4
    2568:	4180006f          	j	2980 <__subdf3+0x70c>
    256c:	ec068ee3          	beqz	a3,2448 <__subdf3+0x1d4>
    2570:	00c76733          	or	a4,a4,a2
    2574:	da070ce3          	beqz	a4,232c <__subdf3+0xb8>
    2578:	00000493          	li	s1,0
    257c:	004007b7          	lui	a5,0x400
    2580:	00000513          	li	a0,0
    2584:	7ff00413          	li	s0,2047
    2588:	3f80006f          	j	2980 <__subdf3+0x70c>
    258c:	7ff00593          	li	a1,2047
    2590:	3eb68263          	beq	a3,a1,2974 <__subdf3+0x700>
    2594:	00c50633          	add	a2,a0,a2
    2598:	00a63533          	sltu	a0,a2,a0
    259c:	00e78733          	add	a4,a5,a4
    25a0:	00a70733          	add	a4,a4,a0
    25a4:	01f71513          	slli	a0,a4,0x1f
    25a8:	00165613          	srli	a2,a2,0x1
    25ac:	00c56533          	or	a0,a0,a2
    25b0:	00175793          	srli	a5,a4,0x1
    25b4:	00068413          	mv	s0,a3
    25b8:	f8dff06f          	j	2544 <__subdf3+0x2d0>
    25bc:	0f005c63          	blez	a6,26b4 <__subdf3+0x440>
    25c0:	08089e63          	bnez	a7,265c <__subdf3+0x3e8>
    25c4:	00c766b3          	or	a3,a4,a2
    25c8:	44068863          	beqz	a3,2a18 <__subdf3+0x7a4>
    25cc:	fff80593          	addi	a1,a6,-1
    25d0:	02059063          	bnez	a1,25f0 <__subdf3+0x37c>
    25d4:	40c50633          	sub	a2,a0,a2
    25d8:	40e78733          	sub	a4,a5,a4
    25dc:	00c537b3          	sltu	a5,a0,a2
    25e0:	40f707b3          	sub	a5,a4,a5
    25e4:	00060513          	mv	a0,a2
    25e8:	00100413          	li	s0,1
    25ec:	0540006f          	j	2640 <__subdf3+0x3cc>
    25f0:	7ff00693          	li	a3,2047
    25f4:	d2d80ce3          	beq	a6,a3,232c <__subdf3+0xb8>
    25f8:	03800693          	li	a3,56
    25fc:	0ab6c663          	blt	a3,a1,26a8 <__subdf3+0x434>
    2600:	01f00693          	li	a3,31
    2604:	06b6c863          	blt	a3,a1,2674 <__subdf3+0x400>
    2608:	02000813          	li	a6,32
    260c:	40b80833          	sub	a6,a6,a1
    2610:	010716b3          	sll	a3,a4,a6
    2614:	00b658b3          	srl	a7,a2,a1
    2618:	01061833          	sll	a6,a2,a6
    261c:	0116e6b3          	or	a3,a3,a7
    2620:	01003833          	snez	a6,a6
    2624:	0106e6b3          	or	a3,a3,a6
    2628:	00b755b3          	srl	a1,a4,a1
    262c:	40d506b3          	sub	a3,a0,a3
    2630:	40b785b3          	sub	a1,a5,a1
    2634:	00d537b3          	sltu	a5,a0,a3
    2638:	40f587b3          	sub	a5,a1,a5
    263c:	00068513          	mv	a0,a3
    2640:	00800937          	lui	s2,0x800
    2644:	0127f733          	and	a4,a5,s2
    2648:	ee070ee3          	beqz	a4,2544 <__subdf3+0x2d0>
    264c:	fff90913          	addi	s2,s2,-1 # 7fffff <start_time+0x7ef7ff>
    2650:	0127f933          	and	s2,a5,s2
    2654:	00050993          	mv	s3,a0
    2658:	2140006f          	j	286c <__subdf3+0x5f8>
    265c:	7ff00693          	li	a3,2047
    2660:	eed402e3          	beq	s0,a3,2544 <__subdf3+0x2d0>
    2664:	008006b7          	lui	a3,0x800
    2668:	00d76733          	or	a4,a4,a3
    266c:	00080593          	mv	a1,a6
    2670:	f89ff06f          	j	25f8 <__subdf3+0x384>
    2674:	fe058693          	addi	a3,a1,-32
    2678:	02000893          	li	a7,32
    267c:	00d756b3          	srl	a3,a4,a3
    2680:	00000813          	li	a6,0
    2684:	01158863          	beq	a1,a7,2694 <__subdf3+0x420>
    2688:	04000813          	li	a6,64
    268c:	40b80833          	sub	a6,a6,a1
    2690:	01071833          	sll	a6,a4,a6
    2694:	00c86833          	or	a6,a6,a2
    2698:	01003833          	snez	a6,a6
    269c:	0106e6b3          	or	a3,a3,a6
    26a0:	00000593          	li	a1,0
    26a4:	f89ff06f          	j	262c <__subdf3+0x3b8>
    26a8:	00c766b3          	or	a3,a4,a2
    26ac:	00d036b3          	snez	a3,a3
    26b0:	ff1ff06f          	j	26a0 <__subdf3+0x42c>
    26b4:	0e080863          	beqz	a6,27a4 <__subdf3+0x530>
    26b8:	40888833          	sub	a6,a7,s0
    26bc:	04041263          	bnez	s0,2700 <__subdf3+0x48c>
    26c0:	00a7e5b3          	or	a1,a5,a0
    26c4:	34058e63          	beqz	a1,2a20 <__subdf3+0x7ac>
    26c8:	fff80593          	addi	a1,a6,-1
    26cc:	00059e63          	bnez	a1,26e8 <__subdf3+0x474>
    26d0:	40a60533          	sub	a0,a2,a0
    26d4:	40f70733          	sub	a4,a4,a5
    26d8:	00a63633          	sltu	a2,a2,a0
    26dc:	40c707b3          	sub	a5,a4,a2
    26e0:	00068493          	mv	s1,a3
    26e4:	f05ff06f          	j	25e8 <__subdf3+0x374>
    26e8:	7ff00313          	li	t1,2047
    26ec:	02681463          	bne	a6,t1,2714 <__subdf3+0x4a0>
    26f0:	00070793          	mv	a5,a4
    26f4:	00060513          	mv	a0,a2
    26f8:	7ff00413          	li	s0,2047
    26fc:	0d00006f          	j	27cc <__subdf3+0x558>
    2700:	7ff00593          	li	a1,2047
    2704:	feb886e3          	beq	a7,a1,26f0 <__subdf3+0x47c>
    2708:	008005b7          	lui	a1,0x800
    270c:	00b7e7b3          	or	a5,a5,a1
    2710:	00080593          	mv	a1,a6
    2714:	03800813          	li	a6,56
    2718:	08b84063          	blt	a6,a1,2798 <__subdf3+0x524>
    271c:	01f00813          	li	a6,31
    2720:	04b84263          	blt	a6,a1,2764 <__subdf3+0x4f0>
    2724:	02000313          	li	t1,32
    2728:	40b30333          	sub	t1,t1,a1
    272c:	00b55e33          	srl	t3,a0,a1
    2730:	00679833          	sll	a6,a5,t1
    2734:	00651333          	sll	t1,a0,t1
    2738:	01c86833          	or	a6,a6,t3
    273c:	00603333          	snez	t1,t1
    2740:	00686533          	or	a0,a6,t1
    2744:	00b7d5b3          	srl	a1,a5,a1
    2748:	40a60533          	sub	a0,a2,a0
    274c:	40b705b3          	sub	a1,a4,a1
    2750:	00a63633          	sltu	a2,a2,a0
    2754:	40c587b3          	sub	a5,a1,a2
    2758:	00088413          	mv	s0,a7
    275c:	00068493          	mv	s1,a3
    2760:	ee1ff06f          	j	2640 <__subdf3+0x3cc>
    2764:	fe058813          	addi	a6,a1,-32 # 7fffe0 <start_time+0x7ef7e0>
    2768:	02000e13          	li	t3,32
    276c:	0107d833          	srl	a6,a5,a6
    2770:	00000313          	li	t1,0
    2774:	01c58863          	beq	a1,t3,2784 <__subdf3+0x510>
    2778:	04000313          	li	t1,64
    277c:	40b30333          	sub	t1,t1,a1
    2780:	00679333          	sll	t1,a5,t1
    2784:	00a36333          	or	t1,t1,a0
    2788:	00603333          	snez	t1,t1
    278c:	00686533          	or	a0,a6,t1
    2790:	00000593          	li	a1,0
    2794:	fb5ff06f          	j	2748 <__subdf3+0x4d4>
    2798:	00a7e533          	or	a0,a5,a0
    279c:	00a03533          	snez	a0,a0
    27a0:	ff1ff06f          	j	2790 <__subdf3+0x51c>
    27a4:	00140593          	addi	a1,s0,1
    27a8:	7fe5f593          	andi	a1,a1,2046
    27ac:	08059863          	bnez	a1,283c <__subdf3+0x5c8>
    27b0:	00c765b3          	or	a1,a4,a2
    27b4:	00a7e833          	or	a6,a5,a0
    27b8:	06041263          	bnez	s0,281c <__subdf3+0x5a8>
    27bc:	00081c63          	bnez	a6,27d4 <__subdf3+0x560>
    27c0:	26058863          	beqz	a1,2a30 <__subdf3+0x7bc>
    27c4:	00070793          	mv	a5,a4
    27c8:	00060513          	mv	a0,a2
    27cc:	00068493          	mv	s1,a3
    27d0:	d75ff06f          	j	2544 <__subdf3+0x2d0>
    27d4:	d60588e3          	beqz	a1,2544 <__subdf3+0x2d0>
    27d8:	40c50833          	sub	a6,a0,a2
    27dc:	010538b3          	sltu	a7,a0,a6
    27e0:	40e785b3          	sub	a1,a5,a4
    27e4:	411585b3          	sub	a1,a1,a7
    27e8:	008008b7          	lui	a7,0x800
    27ec:	0115f8b3          	and	a7,a1,a7
    27f0:	00088c63          	beqz	a7,2808 <__subdf3+0x594>
    27f4:	40a60533          	sub	a0,a2,a0
    27f8:	40f70733          	sub	a4,a4,a5
    27fc:	00a63633          	sltu	a2,a2,a0
    2800:	40c707b3          	sub	a5,a4,a2
    2804:	fc9ff06f          	j	27cc <__subdf3+0x558>
    2808:	00b86533          	or	a0,a6,a1
    280c:	22050a63          	beqz	a0,2a40 <__subdf3+0x7cc>
    2810:	00058793          	mv	a5,a1
    2814:	00080513          	mv	a0,a6
    2818:	d2dff06f          	j	2544 <__subdf3+0x2d0>
    281c:	00081c63          	bnez	a6,2834 <__subdf3+0x5c0>
    2820:	22058463          	beqz	a1,2a48 <__subdf3+0x7d4>
    2824:	00070793          	mv	a5,a4
    2828:	00060513          	mv	a0,a2
    282c:	00068493          	mv	s1,a3
    2830:	afdff06f          	j	232c <__subdf3+0xb8>
    2834:	ae058ce3          	beqz	a1,232c <__subdf3+0xb8>
    2838:	d41ff06f          	j	2578 <__subdf3+0x304>
    283c:	40c509b3          	sub	s3,a0,a2
    2840:	013535b3          	sltu	a1,a0,s3
    2844:	40e78933          	sub	s2,a5,a4
    2848:	40b90933          	sub	s2,s2,a1
    284c:	008005b7          	lui	a1,0x800
    2850:	00b975b3          	and	a1,s2,a1
    2854:	08058463          	beqz	a1,28dc <__subdf3+0x668>
    2858:	40a609b3          	sub	s3,a2,a0
    285c:	40f70933          	sub	s2,a4,a5
    2860:	01363633          	sltu	a2,a2,s3
    2864:	40c90933          	sub	s2,s2,a2
    2868:	00068493          	mv	s1,a3
    286c:	08090263          	beqz	s2,28f0 <__subdf3+0x67c>
    2870:	00090513          	mv	a0,s2
    2874:	314000ef          	jal	ra,2b88 <__clzsi2>
    2878:	ff850713          	addi	a4,a0,-8
    287c:	01f00793          	li	a5,31
    2880:	08e7c063          	blt	a5,a4,2900 <__subdf3+0x68c>
    2884:	02000793          	li	a5,32
    2888:	40e787b3          	sub	a5,a5,a4
    288c:	00e91933          	sll	s2,s2,a4
    2890:	00f9d7b3          	srl	a5,s3,a5
    2894:	0127e7b3          	or	a5,a5,s2
    2898:	00e99533          	sll	a0,s3,a4
    289c:	0a874463          	blt	a4,s0,2944 <__subdf3+0x6d0>
    28a0:	40870733          	sub	a4,a4,s0
    28a4:	00170613          	addi	a2,a4,1
    28a8:	01f00693          	li	a3,31
    28ac:	06c6c263          	blt	a3,a2,2910 <__subdf3+0x69c>
    28b0:	02000713          	li	a4,32
    28b4:	40c70733          	sub	a4,a4,a2
    28b8:	00e796b3          	sll	a3,a5,a4
    28bc:	00c555b3          	srl	a1,a0,a2
    28c0:	00e51733          	sll	a4,a0,a4
    28c4:	00b6e6b3          	or	a3,a3,a1
    28c8:	00e03733          	snez	a4,a4
    28cc:	00e6e533          	or	a0,a3,a4
    28d0:	00c7d7b3          	srl	a5,a5,a2
    28d4:	00000413          	li	s0,0
    28d8:	c6dff06f          	j	2544 <__subdf3+0x2d0>
    28dc:	0129e533          	or	a0,s3,s2
    28e0:	f80516e3          	bnez	a0,286c <__subdf3+0x5f8>
    28e4:	00000793          	li	a5,0
    28e8:	00000413          	li	s0,0
    28ec:	14c0006f          	j	2a38 <__subdf3+0x7c4>
    28f0:	00098513          	mv	a0,s3
    28f4:	294000ef          	jal	ra,2b88 <__clzsi2>
    28f8:	02050513          	addi	a0,a0,32
    28fc:	f7dff06f          	j	2878 <__subdf3+0x604>
    2900:	fd850793          	addi	a5,a0,-40
    2904:	00f997b3          	sll	a5,s3,a5
    2908:	00000513          	li	a0,0
    290c:	f91ff06f          	j	289c <__subdf3+0x628>
    2910:	fe170713          	addi	a4,a4,-31
    2914:	02000593          	li	a1,32
    2918:	00e7d733          	srl	a4,a5,a4
    291c:	00000693          	li	a3,0
    2920:	00b60863          	beq	a2,a1,2930 <__subdf3+0x6bc>
    2924:	04000693          	li	a3,64
    2928:	40c686b3          	sub	a3,a3,a2
    292c:	00d796b3          	sll	a3,a5,a3
    2930:	00d566b3          	or	a3,a0,a3
    2934:	00d036b3          	snez	a3,a3
    2938:	00d76533          	or	a0,a4,a3
    293c:	00000793          	li	a5,0
    2940:	f95ff06f          	j	28d4 <__subdf3+0x660>
    2944:	40e40433          	sub	s0,s0,a4
    2948:	ff800737          	lui	a4,0xff800
    294c:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    2950:	00e7f7b3          	and	a5,a5,a4
    2954:	bf1ff06f          	j	2544 <__subdf3+0x2d0>
    2958:	00070793          	mv	a5,a4
    295c:	00060513          	mv	a0,a2
    2960:	00058413          	mv	s0,a1
    2964:	be1ff06f          	j	2544 <__subdf3+0x2d0>
    2968:	00070793          	mv	a5,a4
    296c:	00060513          	mv	a0,a2
    2970:	bd5ff06f          	j	2544 <__subdf3+0x2d0>
    2974:	7ff00413          	li	s0,2047
    2978:	00000793          	li	a5,0
    297c:	00000513          	li	a0,0
    2980:	00800737          	lui	a4,0x800
    2984:	00e7f733          	and	a4,a5,a4
    2988:	00070e63          	beqz	a4,29a4 <__subdf3+0x730>
    298c:	00140413          	addi	s0,s0,1
    2990:	7ff00713          	li	a4,2047
    2994:	0ce40263          	beq	s0,a4,2a58 <__subdf3+0x7e4>
    2998:	ff800737          	lui	a4,0xff800
    299c:	fff70713          	addi	a4,a4,-1 # ff7fffff <start_time+0xff7ef7ff>
    29a0:	00e7f7b3          	and	a5,a5,a4
    29a4:	01d79693          	slli	a3,a5,0x1d
    29a8:	00355513          	srli	a0,a0,0x3
    29ac:	7ff00713          	li	a4,2047
    29b0:	00a6e6b3          	or	a3,a3,a0
    29b4:	0037d793          	srli	a5,a5,0x3
    29b8:	00e41e63          	bne	s0,a4,29d4 <__subdf3+0x760>
    29bc:	00f6e6b3          	or	a3,a3,a5
    29c0:	00000793          	li	a5,0
    29c4:	00068863          	beqz	a3,29d4 <__subdf3+0x760>
    29c8:	000807b7          	lui	a5,0x80
    29cc:	00000693          	li	a3,0
    29d0:	00000493          	li	s1,0
    29d4:	01441713          	slli	a4,s0,0x14
    29d8:	7ff00637          	lui	a2,0x7ff00
    29dc:	00c79793          	slli	a5,a5,0xc
    29e0:	01c12083          	lw	ra,28(sp)
    29e4:	01812403          	lw	s0,24(sp)
    29e8:	00c77733          	and	a4,a4,a2
    29ec:	00c7d793          	srli	a5,a5,0xc
    29f0:	01f49493          	slli	s1,s1,0x1f
    29f4:	00f767b3          	or	a5,a4,a5
    29f8:	0097e733          	or	a4,a5,s1
    29fc:	01012903          	lw	s2,16(sp)
    2a00:	01412483          	lw	s1,20(sp)
    2a04:	00c12983          	lw	s3,12(sp)
    2a08:	00068513          	mv	a0,a3
    2a0c:	00070593          	mv	a1,a4
    2a10:	02010113          	addi	sp,sp,32
    2a14:	00008067          	ret
    2a18:	00080413          	mv	s0,a6
    2a1c:	b29ff06f          	j	2544 <__subdf3+0x2d0>
    2a20:	00070793          	mv	a5,a4
    2a24:	00060513          	mv	a0,a2
    2a28:	00080413          	mv	s0,a6
    2a2c:	da1ff06f          	j	27cc <__subdf3+0x558>
    2a30:	00000793          	li	a5,0
    2a34:	00000513          	li	a0,0
    2a38:	00000493          	li	s1,0
    2a3c:	f45ff06f          	j	2980 <__subdf3+0x70c>
    2a40:	00000793          	li	a5,0
    2a44:	ff5ff06f          	j	2a38 <__subdf3+0x7c4>
    2a48:	00000513          	li	a0,0
    2a4c:	00000493          	li	s1,0
    2a50:	004007b7          	lui	a5,0x400
    2a54:	b31ff06f          	j	2584 <__subdf3+0x310>
    2a58:	00000793          	li	a5,0
    2a5c:	00000513          	li	a0,0
    2a60:	f45ff06f          	j	29a4 <__subdf3+0x730>

00002a64 <__unorddf2>:
    2a64:	001007b7          	lui	a5,0x100
    2a68:	fff78793          	addi	a5,a5,-1 # fffff <start_time+0xef7ff>
    2a6c:	00b7f733          	and	a4,a5,a1
    2a70:	0145d593          	srli	a1,a1,0x14
    2a74:	00d7f7b3          	and	a5,a5,a3
    2a78:	7ff5f593          	andi	a1,a1,2047
    2a7c:	0146d693          	srli	a3,a3,0x14
    2a80:	7ff00813          	li	a6,2047
    2a84:	7ff6f693          	andi	a3,a3,2047
    2a88:	01059863          	bne	a1,a6,2a98 <__unorddf2+0x34>
    2a8c:	00a76733          	or	a4,a4,a0
    2a90:	00100513          	li	a0,1
    2a94:	00071c63          	bnez	a4,2aac <__unorddf2+0x48>
    2a98:	7ff00713          	li	a4,2047
    2a9c:	00000513          	li	a0,0
    2aa0:	00e69663          	bne	a3,a4,2aac <__unorddf2+0x48>
    2aa4:	00c7e7b3          	or	a5,a5,a2
    2aa8:	00f03533          	snez	a0,a5
    2aac:	00008067          	ret

00002ab0 <__mulsi3>:
    2ab0:	00050613          	mv	a2,a0
    2ab4:	00000513          	li	a0,0
    2ab8:	0015f693          	andi	a3,a1,1
    2abc:	00068463          	beqz	a3,2ac4 <__mulsi3+0x14>
    2ac0:	00c50533          	add	a0,a0,a2
    2ac4:	0015d593          	srli	a1,a1,0x1
    2ac8:	00161613          	slli	a2,a2,0x1
    2acc:	fe0596e3          	bnez	a1,2ab8 <__mulsi3+0x8>
    2ad0:	00008067          	ret

00002ad4 <__divsi3>:
    2ad4:	06054063          	bltz	a0,2b34 <__umodsi3+0x10>
    2ad8:	0605c663          	bltz	a1,2b44 <__umodsi3+0x20>

00002adc <__udivsi3>:
    2adc:	00058613          	mv	a2,a1
    2ae0:	00050593          	mv	a1,a0
    2ae4:	fff00513          	li	a0,-1
    2ae8:	02060c63          	beqz	a2,2b20 <__udivsi3+0x44>
    2aec:	00100693          	li	a3,1
    2af0:	00b67a63          	bgeu	a2,a1,2b04 <__udivsi3+0x28>
    2af4:	00c05863          	blez	a2,2b04 <__udivsi3+0x28>
    2af8:	00161613          	slli	a2,a2,0x1
    2afc:	00169693          	slli	a3,a3,0x1
    2b00:	feb66ae3          	bltu	a2,a1,2af4 <__udivsi3+0x18>
    2b04:	00000513          	li	a0,0
    2b08:	00c5e663          	bltu	a1,a2,2b14 <__udivsi3+0x38>
    2b0c:	40c585b3          	sub	a1,a1,a2
    2b10:	00d56533          	or	a0,a0,a3
    2b14:	0016d693          	srli	a3,a3,0x1
    2b18:	00165613          	srli	a2,a2,0x1
    2b1c:	fe0696e3          	bnez	a3,2b08 <__udivsi3+0x2c>
    2b20:	00008067          	ret

00002b24 <__umodsi3>:
    2b24:	00008293          	mv	t0,ra
    2b28:	fb5ff0ef          	jal	ra,2adc <__udivsi3>
    2b2c:	00058513          	mv	a0,a1
    2b30:	00028067          	jr	t0
    2b34:	40a00533          	neg	a0,a0
    2b38:	00b04863          	bgtz	a1,2b48 <__umodsi3+0x24>
    2b3c:	40b005b3          	neg	a1,a1
    2b40:	f9dff06f          	j	2adc <__udivsi3>
    2b44:	40b005b3          	neg	a1,a1
    2b48:	00008293          	mv	t0,ra
    2b4c:	f91ff0ef          	jal	ra,2adc <__udivsi3>
    2b50:	40a00533          	neg	a0,a0
    2b54:	00028067          	jr	t0

00002b58 <__modsi3>:
    2b58:	00008293          	mv	t0,ra
    2b5c:	0005ca63          	bltz	a1,2b70 <__modsi3+0x18>
    2b60:	00054c63          	bltz	a0,2b78 <__modsi3+0x20>
    2b64:	f79ff0ef          	jal	ra,2adc <__udivsi3>
    2b68:	00058513          	mv	a0,a1
    2b6c:	00028067          	jr	t0
    2b70:	40b005b3          	neg	a1,a1
    2b74:	fe0558e3          	bgez	a0,2b64 <__modsi3+0xc>
    2b78:	40a00533          	neg	a0,a0
    2b7c:	f61ff0ef          	jal	ra,2adc <__udivsi3>
    2b80:	40b00533          	neg	a0,a1
    2b84:	00028067          	jr	t0

00002b88 <__clzsi2>:
    2b88:	000107b7          	lui	a5,0x10
    2b8c:	02f57a63          	bgeu	a0,a5,2bc0 <__clzsi2+0x38>
    2b90:	10053793          	sltiu	a5,a0,256
    2b94:	0017c793          	xori	a5,a5,1
    2b98:	00379793          	slli	a5,a5,0x3
    2b9c:	00010737          	lui	a4,0x10
    2ba0:	02000693          	li	a3,32
    2ba4:	40f686b3          	sub	a3,a3,a5
    2ba8:	00f55533          	srl	a0,a0,a5
    2bac:	6ec70793          	addi	a5,a4,1772 # 106ec <__clz_tab>
    2bb0:	00a787b3          	add	a5,a5,a0
    2bb4:	0007c503          	lbu	a0,0(a5) # 10000 <solar_bodies>
    2bb8:	40a68533          	sub	a0,a3,a0
    2bbc:	00008067          	ret
    2bc0:	01000737          	lui	a4,0x1000
    2bc4:	01000793          	li	a5,16
    2bc8:	fce56ae3          	bltu	a0,a4,2b9c <__clzsi2+0x14>
    2bcc:	01800793          	li	a5,24
    2bd0:	fcdff06f          	j	2b9c <__clzsi2+0x14>

00002bd4 <__errno>:
    2bd4:	000107b7          	lui	a5,0x10
    2bd8:	5687a503          	lw	a0,1384(a5) # 10568 <_impure_ptr>
    2bdc:	00008067          	ret

Disassembly of section .text.startup:

00002be0 <main>:
    2be0:	fe010113          	addi	sp,sp,-32
    2be4:	00112e23          	sw	ra,28(sp)
    2be8:	cd8fd0ef          	jal	ra,c0 <initialise_board>
    2bec:	a25fd0ef          	jal	ra,610 <initialise_benchmark>
    2bf0:	00100513          	li	a0,1
    2bf4:	a21fd0ef          	jal	ra,614 <warm_caches>
    2bf8:	cccfd0ef          	jal	ra,c4 <start_trigger>
    2bfc:	a31fd0ef          	jal	ra,62c <benchmark>
    2c00:	00a12623          	sw	a0,12(sp)
    2c04:	cecfd0ef          	jal	ra,f0 <stop_trigger>
    2c08:	00c12503          	lw	a0,12(sp)
    2c0c:	a3dfd0ef          	jal	ra,648 <verify_benchmark>
    2c10:	00051a63          	bnez	a0,2c24 <main+0x44>
    2c14:	110007b7          	lui	a5,0x11000
    2c18:	fff00713          	li	a4,-1
    2c1c:	00e7a823          	sw	a4,16(a5) # 11000010 <start_time+0x10fef810>
    2c20:	00e7aa23          	sw	a4,20(a5)
    2c24:	110007b7          	lui	a5,0x11000
    2c28:	00100713          	li	a4,1
    2c2c:	08e7a023          	sw	a4,128(a5) # 11000080 <start_time+0x10fef880>
    2c30:	0000006f          	j	2c30 <main+0x50>
