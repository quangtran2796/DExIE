
wikisort.elf:     file format elf32-littleriscv


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
  84:	09d040ef          	jal	ra,4920 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <seed+0x10fee134>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <seed+0x10fee134>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fee1b4>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <seed+0xe124>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000127b7          	lui	a5,0x12
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	eaa7ac23          	sw	a0,-328(a5) # 11eb8 <start_time>
      e4:	eae7ae23          	sw	a4,-324(a5)
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
     114:	eb87a583          	lw	a1,-328(a5) # 11eb8 <start_time>
     118:	ebc7a703          	lw	a4,-324(a5)
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

00000150 <TestCompare>:
     150:	ff010113          	addi	sp,sp,-16
     154:	00c52533          	slt	a0,a0,a2
     158:	01010113          	addi	sp,sp,16
     15c:	00008067          	ret

00000160 <TestingAscending>:
     160:	00008067          	ret

00000164 <TestingDescending>:
     164:	40a58533          	sub	a0,a1,a0
     168:	00008067          	ret

0000016c <TestingEqual>:
     16c:	3e800513          	li	a0,1000
     170:	00008067          	ret

00000174 <TestingRandom>:
     174:	ff010113          	addi	sp,sp,-16
     178:	00112623          	sw	ra,12(sp)
     17c:	4b9010ef          	jal	ra,1e34 <rand_beebs>
     180:	00c12083          	lw	ra,12(sp)
     184:	01010113          	addi	sp,sp,16
     188:	00008067          	ret

0000018c <TestingMostlyDescending>:
     18c:	ff010113          	addi	sp,sp,-16
     190:	00112623          	sw	ra,12(sp)
     194:	00812423          	sw	s0,8(sp)
     198:	00912223          	sw	s1,4(sp)
     19c:	01212023          	sw	s2,0(sp)
     1a0:	00050413          	mv	s0,a0
     1a4:	00058913          	mv	s2,a1
     1a8:	48d010ef          	jal	ra,1e34 <rand_beebs>
     1ac:	1b0040ef          	jal	ra,435c <__floatsidf>
     1b0:	000117b7          	lui	a5,0x11
     1b4:	2187a603          	lw	a2,536(a5) # 11218 <__clz_tab+0x104>
     1b8:	21c7a683          	lw	a3,540(a5)
     1bc:	155020ef          	jal	ra,2b10 <__divdf3>
     1c0:	000117b7          	lui	a5,0x11
     1c4:	2207a603          	lw	a2,544(a5) # 11220 <__clz_tab+0x10c>
     1c8:	2247a683          	lw	a3,548(a5)
     1cc:	208030ef          	jal	ra,33d4 <__muldf3>
     1d0:	00050493          	mv	s1,a0
     1d4:	40890533          	sub	a0,s2,s0
     1d8:	00058413          	mv	s0,a1
     1dc:	180040ef          	jal	ra,435c <__floatsidf>
     1e0:	00050613          	mv	a2,a0
     1e4:	00058693          	mv	a3,a1
     1e8:	00048513          	mv	a0,s1
     1ec:	00040593          	mv	a1,s0
     1f0:	144020ef          	jal	ra,2334 <__adddf3>
     1f4:	000117b7          	lui	a5,0x11
     1f8:	2287a603          	lw	a2,552(a5) # 11228 <__clz_tab+0x114>
     1fc:	22c7a683          	lw	a3,556(a5)
     200:	0a1030ef          	jal	ra,3aa0 <__subdf3>
     204:	0d8040ef          	jal	ra,42dc <__fixdfsi>
     208:	00c12083          	lw	ra,12(sp)
     20c:	00812403          	lw	s0,8(sp)
     210:	00412483          	lw	s1,4(sp)
     214:	00012903          	lw	s2,0(sp)
     218:	01010113          	addi	sp,sp,16
     21c:	00008067          	ret

00000220 <TestingMostlyAscending>:
     220:	ff010113          	addi	sp,sp,-16
     224:	00112623          	sw	ra,12(sp)
     228:	00812423          	sw	s0,8(sp)
     22c:	00912223          	sw	s1,4(sp)
     230:	00050413          	mv	s0,a0
     234:	401010ef          	jal	ra,1e34 <rand_beebs>
     238:	124040ef          	jal	ra,435c <__floatsidf>
     23c:	000117b7          	lui	a5,0x11
     240:	2187a603          	lw	a2,536(a5) # 11218 <__clz_tab+0x104>
     244:	21c7a683          	lw	a3,540(a5)
     248:	0c9020ef          	jal	ra,2b10 <__divdf3>
     24c:	000117b7          	lui	a5,0x11
     250:	2207a603          	lw	a2,544(a5) # 11220 <__clz_tab+0x10c>
     254:	2247a683          	lw	a3,548(a5)
     258:	17c030ef          	jal	ra,33d4 <__muldf3>
     25c:	00050493          	mv	s1,a0
     260:	00040513          	mv	a0,s0
     264:	00058413          	mv	s0,a1
     268:	0f4040ef          	jal	ra,435c <__floatsidf>
     26c:	00050613          	mv	a2,a0
     270:	00058693          	mv	a3,a1
     274:	00048513          	mv	a0,s1
     278:	00040593          	mv	a1,s0
     27c:	0b8020ef          	jal	ra,2334 <__adddf3>
     280:	000117b7          	lui	a5,0x11
     284:	2287a603          	lw	a2,552(a5) # 11228 <__clz_tab+0x114>
     288:	22c7a683          	lw	a3,556(a5)
     28c:	015030ef          	jal	ra,3aa0 <__subdf3>
     290:	04c040ef          	jal	ra,42dc <__fixdfsi>
     294:	00c12083          	lw	ra,12(sp)
     298:	00812403          	lw	s0,8(sp)
     29c:	00412483          	lw	s1,4(sp)
     2a0:	01010113          	addi	sp,sp,16
     2a4:	00008067          	ret

000002a8 <TestingJittered>:
     2a8:	ff010113          	addi	sp,sp,-16
     2ac:	00112623          	sw	ra,12(sp)
     2b0:	00812423          	sw	s0,8(sp)
     2b4:	00050413          	mv	s0,a0
     2b8:	37d010ef          	jal	ra,1e34 <rand_beebs>
     2bc:	0a0040ef          	jal	ra,435c <__floatsidf>
     2c0:	000117b7          	lui	a5,0x11
     2c4:	2187a603          	lw	a2,536(a5) # 11218 <__clz_tab+0x104>
     2c8:	21c7a683          	lw	a3,540(a5)
     2cc:	045020ef          	jal	ra,2b10 <__divdf3>
     2d0:	000117b7          	lui	a5,0x11
     2d4:	2307a603          	lw	a2,560(a5) # 11230 <__clz_tab+0x11c>
     2d8:	2347a683          	lw	a3,564(a5)
     2dc:	014030ef          	jal	ra,32f0 <__ledf2>
     2e0:	00a05463          	blez	a0,2e8 <TestingJittered+0x40>
     2e4:	ffe40413          	addi	s0,s0,-2
     2e8:	00c12083          	lw	ra,12(sp)
     2ec:	00040513          	mv	a0,s0
     2f0:	00812403          	lw	s0,8(sp)
     2f4:	01010113          	addi	sp,sp,16
     2f8:	00008067          	ret

000002fc <TestingMostlyEqual>:
     2fc:	ff010113          	addi	sp,sp,-16
     300:	00112623          	sw	ra,12(sp)
     304:	331010ef          	jal	ra,1e34 <rand_beebs>
     308:	41f55793          	srai	a5,a0,0x1f
     30c:	01e7d793          	srli	a5,a5,0x1e
     310:	00c12083          	lw	ra,12(sp)
     314:	00f50533          	add	a0,a0,a5
     318:	00357513          	andi	a0,a0,3
     31c:	40f50533          	sub	a0,a0,a5
     320:	3e850513          	addi	a0,a0,1000
     324:	01010113          	addi	sp,sp,16
     328:	00008067          	ret

0000032c <TestingPathological>:
     32c:	00050793          	mv	a5,a0
     330:	02050663          	beqz	a0,35c <TestingPathological+0x30>
     334:	01f5d713          	srli	a4,a1,0x1f
     338:	00b70733          	add	a4,a4,a1
     33c:	40175713          	srai	a4,a4,0x1
     340:	00b00513          	li	a0,11
     344:	00e7ce63          	blt	a5,a4,360 <TestingPathological+0x34>
     348:	fff58593          	addi	a1,a1,-1
     34c:	40b78533          	sub	a0,a5,a1
     350:	00153513          	seqz	a0,a0
     354:	00950513          	addi	a0,a0,9
     358:	00008067          	ret
     35c:	00a00513          	li	a0,10
     360:	00008067          	ret

00000364 <Min>:
     364:	00a5d463          	bge	a1,a0,36c <Min+0x8>
     368:	00058513          	mv	a0,a1
     36c:	00008067          	ret

00000370 <Max>:
     370:	00b55463          	bge	a0,a1,378 <Max+0x8>
     374:	00058513          	mv	a0,a1
     378:	00008067          	ret

0000037c <Range_length>:
     37c:	ff010113          	addi	sp,sp,-16
     380:	40a58533          	sub	a0,a1,a0
     384:	01010113          	addi	sp,sp,16
     388:	00008067          	ret

0000038c <MakeRange>:
     38c:	ff010113          	addi	sp,sp,-16
     390:	01010113          	addi	sp,sp,16
     394:	00008067          	ret

00000398 <FloorPowerOfTwo>:
     398:	40155793          	srai	a5,a0,0x1
     39c:	00a7e533          	or	a0,a5,a0
     3a0:	40255793          	srai	a5,a0,0x2
     3a4:	00a7e7b3          	or	a5,a5,a0
     3a8:	4047d513          	srai	a0,a5,0x4
     3ac:	00f56533          	or	a0,a0,a5
     3b0:	40855713          	srai	a4,a0,0x8
     3b4:	00a76733          	or	a4,a4,a0
     3b8:	41075793          	srai	a5,a4,0x10
     3bc:	00e7e7b3          	or	a5,a5,a4
     3c0:	4017d513          	srai	a0,a5,0x1
     3c4:	40a78533          	sub	a0,a5,a0
     3c8:	00008067          	ret

000003cc <BinaryFirst>:
     3cc:	fc010113          	addi	sp,sp,-64
     3d0:	02912a23          	sw	s1,52(sp)
     3d4:	03412423          	sw	s4,40(sp)
     3d8:	03512223          	sw	s5,36(sp)
     3dc:	03612023          	sw	s6,32(sp)
     3e0:	01712e23          	sw	s7,28(sp)
     3e4:	02112e23          	sw	ra,60(sp)
     3e8:	02812c23          	sw	s0,56(sp)
     3ec:	03212823          	sw	s2,48(sp)
     3f0:	03312623          	sw	s3,44(sp)
     3f4:	fff68b93          	addi	s7,a3,-1
     3f8:	00060493          	mv	s1,a2
     3fc:	00050a13          	mv	s4,a0
     400:	00058b13          	mv	s6,a1
     404:	00070a93          	mv	s5,a4
     408:	05765263          	bge	a2,s7,44c <BinaryFirst+0x80>
     40c:	00359993          	slli	s3,a1,0x3
     410:	013509b3          	add	s3,a0,s3
     414:	000b8913          	mv	s2,s7
     418:	40990433          	sub	s0,s2,s1
     41c:	40145413          	srai	s0,s0,0x1
     420:	00940433          	add	s0,s0,s1
     424:	00341793          	slli	a5,s0,0x3
     428:	00fa07b3          	add	a5,s4,a5
     42c:	0009a603          	lw	a2,0(s3)
     430:	0049a683          	lw	a3,4(s3)
     434:	0007a503          	lw	a0,0(a5)
     438:	0047a583          	lw	a1,4(a5)
     43c:	000a80e7          	jalr	s5
     440:	06050663          	beqz	a0,4ac <BinaryFirst+0xe0>
     444:	00140493          	addi	s1,s0,1
     448:	fd24c8e3          	blt	s1,s2,418 <BinaryFirst+0x4c>
     44c:	029b9863          	bne	s7,s1,47c <BinaryFirst+0xb0>
     450:	00349793          	slli	a5,s1,0x3
     454:	003b1b13          	slli	s6,s6,0x3
     458:	016a0b33          	add	s6,s4,s6
     45c:	00fa0a33          	add	s4,s4,a5
     460:	000b2603          	lw	a2,0(s6)
     464:	004b2683          	lw	a3,4(s6)
     468:	000a2503          	lw	a0,0(s4)
     46c:	004a2583          	lw	a1,4(s4)
     470:	000a80e7          	jalr	s5
     474:	00a03533          	snez	a0,a0
     478:	00a484b3          	add	s1,s1,a0
     47c:	03c12083          	lw	ra,60(sp)
     480:	03812403          	lw	s0,56(sp)
     484:	03012903          	lw	s2,48(sp)
     488:	02c12983          	lw	s3,44(sp)
     48c:	02812a03          	lw	s4,40(sp)
     490:	02412a83          	lw	s5,36(sp)
     494:	02012b03          	lw	s6,32(sp)
     498:	01c12b83          	lw	s7,28(sp)
     49c:	00048513          	mv	a0,s1
     4a0:	03412483          	lw	s1,52(sp)
     4a4:	04010113          	addi	sp,sp,64
     4a8:	00008067          	ret
     4ac:	00040913          	mv	s2,s0
     4b0:	f724c4e3          	blt	s1,s2,418 <BinaryFirst+0x4c>
     4b4:	f99ff06f          	j	44c <BinaryFirst+0x80>

000004b8 <BinaryLast>:
     4b8:	fc010113          	addi	sp,sp,-64
     4bc:	02912a23          	sw	s1,52(sp)
     4c0:	03412423          	sw	s4,40(sp)
     4c4:	03512223          	sw	s5,36(sp)
     4c8:	03612023          	sw	s6,32(sp)
     4cc:	01712e23          	sw	s7,28(sp)
     4d0:	02112e23          	sw	ra,60(sp)
     4d4:	02812c23          	sw	s0,56(sp)
     4d8:	03212823          	sw	s2,48(sp)
     4dc:	03312623          	sw	s3,44(sp)
     4e0:	fff68b13          	addi	s6,a3,-1
     4e4:	00060493          	mv	s1,a2
     4e8:	00050a13          	mv	s4,a0
     4ec:	00058b93          	mv	s7,a1
     4f0:	00070a93          	mv	s5,a4
     4f4:	05665263          	bge	a2,s6,538 <BinaryLast+0x80>
     4f8:	00359993          	slli	s3,a1,0x3
     4fc:	013509b3          	add	s3,a0,s3
     500:	000b0913          	mv	s2,s6
     504:	40990433          	sub	s0,s2,s1
     508:	40145413          	srai	s0,s0,0x1
     50c:	00940433          	add	s0,s0,s1
     510:	00341793          	slli	a5,s0,0x3
     514:	00fa07b3          	add	a5,s4,a5
     518:	0007a603          	lw	a2,0(a5)
     51c:	0047a683          	lw	a3,4(a5)
     520:	0009a503          	lw	a0,0(s3)
     524:	0049a583          	lw	a1,4(s3)
     528:	000a80e7          	jalr	s5
     52c:	06051663          	bnez	a0,598 <BinaryLast+0xe0>
     530:	00140493          	addi	s1,s0,1
     534:	fd24c8e3          	blt	s1,s2,504 <BinaryLast+0x4c>
     538:	029b1863          	bne	s6,s1,568 <BinaryLast+0xb0>
     53c:	00349793          	slli	a5,s1,0x3
     540:	003b9b93          	slli	s7,s7,0x3
     544:	00fa07b3          	add	a5,s4,a5
     548:	017a0a33          	add	s4,s4,s7
     54c:	0007a603          	lw	a2,0(a5)
     550:	0047a683          	lw	a3,4(a5)
     554:	000a2503          	lw	a0,0(s4)
     558:	004a2583          	lw	a1,4(s4)
     55c:	000a80e7          	jalr	s5
     560:	00153513          	seqz	a0,a0
     564:	00a484b3          	add	s1,s1,a0
     568:	03c12083          	lw	ra,60(sp)
     56c:	03812403          	lw	s0,56(sp)
     570:	03012903          	lw	s2,48(sp)
     574:	02c12983          	lw	s3,44(sp)
     578:	02812a03          	lw	s4,40(sp)
     57c:	02412a83          	lw	s5,36(sp)
     580:	02012b03          	lw	s6,32(sp)
     584:	01c12b83          	lw	s7,28(sp)
     588:	00048513          	mv	a0,s1
     58c:	03412483          	lw	s1,52(sp)
     590:	04010113          	addi	sp,sp,64
     594:	00008067          	ret
     598:	00040913          	mv	s2,s0
     59c:	f724c4e3          	blt	s1,s2,504 <BinaryLast+0x4c>
     5a0:	f99ff06f          	j	538 <BinaryLast+0x80>

000005a4 <InsertionSort>:
     5a4:	fb010113          	addi	sp,sp,-80
     5a8:	03612823          	sw	s6,48(sp)
     5ac:	00158b13          	addi	s6,a1,1
     5b0:	03512a23          	sw	s5,52(sp)
     5b4:	03812423          	sw	s8,40(sp)
     5b8:	003b1a93          	slli	s5,s6,0x3
     5bc:	00359793          	slli	a5,a1,0x3
     5c0:	04112623          	sw	ra,76(sp)
     5c4:	04812423          	sw	s0,72(sp)
     5c8:	04912223          	sw	s1,68(sp)
     5cc:	05212023          	sw	s2,64(sp)
     5d0:	03312e23          	sw	s3,60(sp)
     5d4:	03412c23          	sw	s4,56(sp)
     5d8:	03712623          	sw	s7,44(sp)
     5dc:	00b12423          	sw	a1,8(sp)
     5e0:	00c12623          	sw	a2,12(sp)
     5e4:	01550ab3          	add	s5,a0,s5
     5e8:	00f50c33          	add	s8,a0,a5
     5ec:	08cb5663          	bge	s6,a2,678 <InsertionSort+0xd4>
     5f0:	00058993          	mv	s3,a1
     5f4:	00060b93          	mv	s7,a2
     5f8:	00068a13          	mv	s4,a3
     5fc:	000aa683          	lw	a3,0(s5)
     600:	004aa703          	lw	a4,4(s5)
     604:	000a8793          	mv	a5,s5
     608:	00d12c23          	sw	a3,24(sp)
     60c:	00e12e23          	sw	a4,28(sp)
     610:	000a8493          	mv	s1,s5
     614:	000b0913          	mv	s2,s6
     618:	0169ce63          	blt	s3,s6,634 <InsertionSort+0x90>
     61c:	0400006f          	j	65c <InsertionSort+0xb8>
     620:	ff842703          	lw	a4,-8(s0)
     624:	ffc42783          	lw	a5,-4(s0)
     628:	00e42023          	sw	a4,0(s0)
     62c:	00f42223          	sw	a5,4(s0)
     630:	07298c63          	beq	s3,s2,6a8 <InsertionSort+0x104>
     634:	ff84a603          	lw	a2,-8(s1)
     638:	ffc4a683          	lw	a3,-4(s1)
     63c:	01812503          	lw	a0,24(sp)
     640:	01c12583          	lw	a1,28(sp)
     644:	00048413          	mv	s0,s1
     648:	fff90913          	addi	s2,s2,-1
     64c:	000a00e7          	jalr	s4
     650:	ff848493          	addi	s1,s1,-8
     654:	00040793          	mv	a5,s0
     658:	fc0514e3          	bnez	a0,620 <InsertionSort+0x7c>
     65c:	01812703          	lw	a4,24(sp)
     660:	001b0b13          	addi	s6,s6,1
     664:	008a8a93          	addi	s5,s5,8
     668:	00e7a023          	sw	a4,0(a5)
     66c:	01c12703          	lw	a4,28(sp)
     670:	00e7a223          	sw	a4,4(a5)
     674:	f96b94e3          	bne	s7,s6,5fc <InsertionSort+0x58>
     678:	04c12083          	lw	ra,76(sp)
     67c:	04812403          	lw	s0,72(sp)
     680:	04412483          	lw	s1,68(sp)
     684:	04012903          	lw	s2,64(sp)
     688:	03c12983          	lw	s3,60(sp)
     68c:	03812a03          	lw	s4,56(sp)
     690:	03412a83          	lw	s5,52(sp)
     694:	03012b03          	lw	s6,48(sp)
     698:	02c12b83          	lw	s7,44(sp)
     69c:	02812c03          	lw	s8,40(sp)
     6a0:	05010113          	addi	sp,sp,80
     6a4:	00008067          	ret
     6a8:	01812703          	lw	a4,24(sp)
     6ac:	000c0793          	mv	a5,s8
     6b0:	001b0b13          	addi	s6,s6,1
     6b4:	00e7a023          	sw	a4,0(a5)
     6b8:	01c12703          	lw	a4,28(sp)
     6bc:	008a8a93          	addi	s5,s5,8
     6c0:	00e7a223          	sw	a4,4(a5)
     6c4:	f36b9ce3          	bne	s7,s6,5fc <InsertionSort+0x58>
     6c8:	fb1ff06f          	j	678 <InsertionSort+0xd4>

000006cc <Reverse>:
     6cc:	40b60833          	sub	a6,a2,a1
     6d0:	ff010113          	addi	sp,sp,-16
     6d4:	00060693          	mv	a3,a2
     6d8:	01f85793          	srli	a5,a6,0x1f
     6dc:	00c12623          	sw	a2,12(sp)
     6e0:	00b12423          	sw	a1,8(sp)
     6e4:	00100613          	li	a2,1
     6e8:	010787b3          	add	a5,a5,a6
     6ec:	07065063          	bge	a2,a6,74c <Reverse+0x80>
     6f0:	20000637          	lui	a2,0x20000
     6f4:	fff60613          	addi	a2,a2,-1 # 1fffffff <seed+0x1ffee133>
     6f8:	4017d793          	srai	a5,a5,0x1
     6fc:	00c58733          	add	a4,a1,a2
     700:	00f70733          	add	a4,a4,a5
     704:	40f687b3          	sub	a5,a3,a5
     708:	00371713          	slli	a4,a4,0x3
     70c:	00379793          	slli	a5,a5,0x3
     710:	00369693          	slli	a3,a3,0x3
     714:	00e50733          	add	a4,a0,a4
     718:	00f507b3          	add	a5,a0,a5
     71c:	00d50533          	add	a0,a0,a3
     720:	0007a583          	lw	a1,0(a5)
     724:	00072603          	lw	a2,0(a4)
     728:	00472683          	lw	a3,4(a4)
     72c:	00b72023          	sw	a1,0(a4)
     730:	0047a583          	lw	a1,4(a5)
     734:	00878793          	addi	a5,a5,8
     738:	ff870713          	addi	a4,a4,-8
     73c:	00b72623          	sw	a1,12(a4)
     740:	fec7ac23          	sw	a2,-8(a5)
     744:	fed7ae23          	sw	a3,-4(a5)
     748:	fca79ce3          	bne	a5,a0,720 <Reverse+0x54>
     74c:	01010113          	addi	sp,sp,16
     750:	00008067          	ret

00000754 <BlockSwap>:
     754:	04d05663          	blez	a3,7a0 <BlockSwap+0x4c>
     758:	00b686b3          	add	a3,a3,a1
     75c:	00361613          	slli	a2,a2,0x3
     760:	00359593          	slli	a1,a1,0x3
     764:	00369693          	slli	a3,a3,0x3
     768:	00b507b3          	add	a5,a0,a1
     76c:	00c50733          	add	a4,a0,a2
     770:	00d50533          	add	a0,a0,a3
     774:	00072583          	lw	a1,0(a4)
     778:	0007a603          	lw	a2,0(a5)
     77c:	0047a683          	lw	a3,4(a5)
     780:	00b7a023          	sw	a1,0(a5)
     784:	00472583          	lw	a1,4(a4)
     788:	00870713          	addi	a4,a4,8
     78c:	00878793          	addi	a5,a5,8
     790:	feb7ae23          	sw	a1,-4(a5)
     794:	fec72c23          	sw	a2,-8(a4)
     798:	fed72e23          	sw	a3,-4(a4)
     79c:	fca79ce3          	bne	a5,a0,774 <BlockSwap+0x20>
     7a0:	00008067          	ret

000007a4 <Rotate>:
     7a4:	fc010113          	addi	sp,sp,-64
     7a8:	02112e23          	sw	ra,60(sp)
     7ac:	02812c23          	sw	s0,56(sp)
     7b0:	02912a23          	sw	s1,52(sp)
     7b4:	03212823          	sw	s2,48(sp)
     7b8:	03312623          	sw	s3,44(sp)
     7bc:	03412423          	sw	s4,40(sp)
     7c0:	03512223          	sw	s5,36(sp)
     7c4:	00c12423          	sw	a2,8(sp)
     7c8:	00d12623          	sw	a3,12(sp)
     7cc:	04c68c63          	beq	a3,a2,824 <Rotate+0x80>
     7d0:	00060913          	mv	s2,a2
     7d4:	00068493          	mv	s1,a3
     7d8:	00050993          	mv	s3,a0
     7dc:	00058413          	mv	s0,a1
     7e0:	00c58a33          	add	s4,a1,a2
     7e4:	0a05ce63          	bltz	a1,8a0 <Rotate+0xfc>
     7e8:	41448ab3          	sub	s5,s1,s4
     7ec:	048ade63          	bge	s5,s0,848 <Rotate+0xa4>
     7f0:	0d57d263          	bge	a5,s5,8b4 <Rotate+0x110>
     7f4:	00090593          	mv	a1,s2
     7f8:	000a0613          	mv	a2,s4
     7fc:	00098513          	mv	a0,s3
     800:	ecdff0ef          	jal	ra,6cc <Reverse>
     804:	000a0593          	mv	a1,s4
     808:	00048613          	mv	a2,s1
     80c:	00098513          	mv	a0,s3
     810:	ebdff0ef          	jal	ra,6cc <Reverse>
     814:	00812583          	lw	a1,8(sp)
     818:	00c12603          	lw	a2,12(sp)
     81c:	00098513          	mv	a0,s3
     820:	eadff0ef          	jal	ra,6cc <Reverse>
     824:	03c12083          	lw	ra,60(sp)
     828:	03812403          	lw	s0,56(sp)
     82c:	03412483          	lw	s1,52(sp)
     830:	03012903          	lw	s2,48(sp)
     834:	02c12983          	lw	s3,44(sp)
     838:	02812a03          	lw	s4,40(sp)
     83c:	02412a83          	lw	s5,36(sp)
     840:	04010113          	addi	sp,sp,64
     844:	00008067          	ret
     848:	fa87c6e3          	blt	a5,s0,7f4 <Rotate+0x50>
     84c:	00391493          	slli	s1,s2,0x3
     850:	009984b3          	add	s1,s3,s1
     854:	00341413          	slli	s0,s0,0x3
     858:	00040613          	mv	a2,s0
     85c:	00048593          	mv	a1,s1
     860:	00070513          	mv	a0,a4
     864:	00e12223          	sw	a4,4(sp)
     868:	003a1a13          	slli	s4,s4,0x3
     86c:	549030ef          	jal	ra,45b4 <memcpy>
     870:	003a9613          	slli	a2,s5,0x3
     874:	014985b3          	add	a1,s3,s4
     878:	00048513          	mv	a0,s1
     87c:	6b5030ef          	jal	ra,4730 <memmove>
     880:	00412703          	lw	a4,4(sp)
     884:	012a8533          	add	a0,s5,s2
     888:	00351513          	slli	a0,a0,0x3
     88c:	00040613          	mv	a2,s0
     890:	00070593          	mv	a1,a4
     894:	00a98533          	add	a0,s3,a0
     898:	51d030ef          	jal	ra,45b4 <memcpy>
     89c:	f89ff06f          	j	824 <Rotate+0x80>
     8a0:	00b68a33          	add	s4,a3,a1
     8a4:	40ca0433          	sub	s0,s4,a2
     8a8:	41448ab3          	sub	s5,s1,s4
     8ac:	f48ac2e3          	blt	s5,s0,7f0 <Rotate+0x4c>
     8b0:	f99ff06f          	j	848 <Rotate+0xa4>
     8b4:	003a9a93          	slli	s5,s5,0x3
     8b8:	003a1a13          	slli	s4,s4,0x3
     8bc:	000a8613          	mv	a2,s5
     8c0:	014985b3          	add	a1,s3,s4
     8c4:	00070513          	mv	a0,a4
     8c8:	408484b3          	sub	s1,s1,s0
     8cc:	00391913          	slli	s2,s2,0x3
     8d0:	00e12223          	sw	a4,4(sp)
     8d4:	01298933          	add	s2,s3,s2
     8d8:	4dd030ef          	jal	ra,45b4 <memcpy>
     8dc:	00349493          	slli	s1,s1,0x3
     8e0:	00341613          	slli	a2,s0,0x3
     8e4:	00090593          	mv	a1,s2
     8e8:	00998533          	add	a0,s3,s1
     8ec:	645030ef          	jal	ra,4730 <memmove>
     8f0:	00412703          	lw	a4,4(sp)
     8f4:	000a8613          	mv	a2,s5
     8f8:	00090513          	mv	a0,s2
     8fc:	00070593          	mv	a1,a4
     900:	4b5030ef          	jal	ra,45b4 <memcpy>
     904:	f21ff06f          	j	824 <Rotate+0x80>

00000908 <WikiMerge>:
     908:	f9010113          	addi	sp,sp,-112
     90c:	07412e03          	lw	t3,116(sp)
     910:	05512a23          	sw	s5,84(sp)
     914:	02e12223          	sw	a4,36(sp)
     918:	40d70ab3          	sub	s5,a4,a3
     91c:	40f80733          	sub	a4,a6,a5
     920:	07212023          	sw	s2,96(sp)
     924:	05412c23          	sw	s4,88(sp)
     928:	05612823          	sw	s6,80(sp)
     92c:	03b12e23          	sw	s11,60(sp)
     930:	06112623          	sw	ra,108(sp)
     934:	06812423          	sw	s0,104(sp)
     938:	06912223          	sw	s1,100(sp)
     93c:	05312e23          	sw	s3,92(sp)
     940:	05712623          	sw	s7,76(sp)
     944:	05812423          	sw	s8,72(sp)
     948:	05912223          	sw	s9,68(sp)
     94c:	05a12023          	sw	s10,64(sp)
     950:	00d12a23          	sw	a3,20(sp)
     954:	02b12423          	sw	a1,40(sp)
     958:	02c12623          	sw	a2,44(sp)
     95c:	02d12023          	sw	a3,32(sp)
     960:	00f12c23          	sw	a5,24(sp)
     964:	01012e23          	sw	a6,28(sp)
     968:	00b12623          	sw	a1,12(sp)
     96c:	00e12823          	sw	a4,16(sp)
     970:	07012903          	lw	s2,112(sp)
     974:	00078a13          	mv	s4,a5
     978:	00050d93          	mv	s11,a0
     97c:	00088b13          	mv	s6,a7
     980:	0b5e4663          	blt	t3,s5,a2c <WikiMerge+0x124>
     984:	00369493          	slli	s1,a3,0x3
     988:	003a9413          	slli	s0,s5,0x3
     98c:	009504b3          	add	s1,a0,s1
     990:	00890433          	add	s0,s2,s0
     994:	04e05663          	blez	a4,9e0 <WikiMerge+0xd8>
     998:	05505463          	blez	s5,9e0 <WikiMerge+0xd8>
     99c:	003a1a13          	slli	s4,s4,0x3
     9a0:	00381313          	slli	t1,a6,0x3
     9a4:	01450a33          	add	s4,a0,s4
     9a8:	00650db3          	add	s11,a0,t1
     9ac:	00092603          	lw	a2,0(s2)
     9b0:	00492683          	lw	a3,4(s2)
     9b4:	000a2503          	lw	a0,0(s4)
     9b8:	004a2583          	lw	a1,4(s4)
     9bc:	00848493          	addi	s1,s1,8
     9c0:	000b00e7          	jalr	s6
     9c4:	1a051663          	bnez	a0,b70 <WikiMerge+0x268>
     9c8:	00092783          	lw	a5,0(s2)
     9cc:	00890913          	addi	s2,s2,8
     9d0:	fef4ac23          	sw	a5,-8(s1)
     9d4:	ffc92783          	lw	a5,-4(s2)
     9d8:	fef4ae23          	sw	a5,-4(s1)
     9dc:	fd2418e3          	bne	s0,s2,9ac <WikiMerge+0xa4>
     9e0:	41240633          	sub	a2,s0,s2
     9e4:	00090593          	mv	a1,s2
     9e8:	00048513          	mv	a0,s1
     9ec:	3c9030ef          	jal	ra,45b4 <memcpy>
     9f0:	06c12083          	lw	ra,108(sp)
     9f4:	06812403          	lw	s0,104(sp)
     9f8:	06412483          	lw	s1,100(sp)
     9fc:	06012903          	lw	s2,96(sp)
     a00:	05c12983          	lw	s3,92(sp)
     a04:	05812a03          	lw	s4,88(sp)
     a08:	05412a83          	lw	s5,84(sp)
     a0c:	05012b03          	lw	s6,80(sp)
     a10:	04c12b83          	lw	s7,76(sp)
     a14:	04812c03          	lw	s8,72(sp)
     a18:	04412c83          	lw	s9,68(sp)
     a1c:	04012d03          	lw	s10,64(sp)
     a20:	03c12d83          	lw	s11,60(sp)
     a24:	07010113          	addi	sp,sp,112
     a28:	00008067          	ret
     a2c:	01012783          	lw	a5,16(sp)
     a30:	0cf05863          	blez	a5,b00 <WikiMerge+0x1f8>
     a34:	fb505ee3          	blez	s5,9f0 <WikiMerge+0xe8>
     a38:	01412783          	lw	a5,20(sp)
     a3c:	00c12b83          	lw	s7,12(sp)
     a40:	00000c93          	li	s9,0
     a44:	00379d13          	slli	s10,a5,0x3
     a48:	01a50d33          	add	s10,a0,s10
     a4c:	00000413          	li	s0,0
     a50:	00000493          	li	s1,0
     a54:	000a0c13          	mv	s8,s4
     a58:	003c1913          	slli	s2,s8,0x3
     a5c:	003b9993          	slli	s3,s7,0x3
     a60:	012d8933          	add	s2,s11,s2
     a64:	013d89b3          	add	s3,s11,s3
     a68:	0009a603          	lw	a2,0(s3)
     a6c:	0049a683          	lw	a3,4(s3)
     a70:	00092503          	lw	a0,0(s2)
     a74:	00492583          	lw	a1,4(s2)
     a78:	001c8c93          	addi	s9,s9,1
     a7c:	000b00e7          	jalr	s6
     a80:	02051e63          	bnez	a0,abc <WikiMerge+0x1b4>
     a84:	0009a583          	lw	a1,0(s3)
     a88:	000d2603          	lw	a2,0(s10)
     a8c:	004d2683          	lw	a3,4(s10)
     a90:	00bd2023          	sw	a1,0(s10)
     a94:	0049a583          	lw	a1,4(s3)
     a98:	00c12783          	lw	a5,12(sp)
     a9c:	00148493          	addi	s1,s1,1
     aa0:	00bd2223          	sw	a1,4(s10)
     aa4:	00c9a023          	sw	a2,0(s3)
     aa8:	00d9a223          	sw	a3,4(s3)
     aac:	00f48bb3          	add	s7,s1,a5
     ab0:	0b54d463          	bge	s1,s5,b58 <WikiMerge+0x250>
     ab4:	008d0d13          	addi	s10,s10,8
     ab8:	fa1ff06f          	j	a58 <WikiMerge+0x150>
     abc:	00092583          	lw	a1,0(s2)
     ac0:	000d2603          	lw	a2,0(s10)
     ac4:	004d2683          	lw	a3,4(s10)
     ac8:	00bd2023          	sw	a1,0(s10)
     acc:	00492583          	lw	a1,4(s2)
     ad0:	01012783          	lw	a5,16(sp)
     ad4:	00140413          	addi	s0,s0,1
     ad8:	00bd2223          	sw	a1,4(s10)
     adc:	00c92023          	sw	a2,0(s2)
     ae0:	00d92223          	sw	a3,4(s2)
     ae4:	01440c33          	add	s8,s0,s4
     ae8:	fcf446e3          	blt	s0,a5,ab4 <WikiMerge+0x1ac>
     aec:	01412783          	lw	a5,20(sp)
     af0:	409a8ab3          	sub	s5,s5,s1
     af4:	01712623          	sw	s7,12(sp)
     af8:	019787b3          	add	a5,a5,s9
     afc:	00f12a23          	sw	a5,20(sp)
     b00:	ef5058e3          	blez	s5,9f0 <WikiMerge+0xe8>
     b04:	00c12783          	lw	a5,12(sp)
     b08:	00fa8ab3          	add	s5,s5,a5
     b0c:	00379593          	slli	a1,a5,0x3
     b10:	01412783          	lw	a5,20(sp)
     b14:	003a9a93          	slli	s5,s5,0x3
     b18:	00bd85b3          	add	a1,s11,a1
     b1c:	00379693          	slli	a3,a5,0x3
     b20:	00dd86b3          	add	a3,s11,a3
     b24:	015d8db3          	add	s11,s11,s5
     b28:	0006a603          	lw	a2,0(a3)
     b2c:	0005a703          	lw	a4,0(a1)
     b30:	0045a783          	lw	a5,4(a1)
     b34:	00c5a023          	sw	a2,0(a1)
     b38:	0046a603          	lw	a2,4(a3)
     b3c:	00868693          	addi	a3,a3,8
     b40:	00858593          	addi	a1,a1,8
     b44:	fec5ae23          	sw	a2,-4(a1)
     b48:	fee6ac23          	sw	a4,-8(a3)
     b4c:	fef6ae23          	sw	a5,-4(a3)
     b50:	fcbd9ce3          	bne	s11,a1,b28 <WikiMerge+0x220>
     b54:	e9dff06f          	j	9f0 <WikiMerge+0xe8>
     b58:	01412783          	lw	a5,20(sp)
     b5c:	01712623          	sw	s7,12(sp)
     b60:	409a8ab3          	sub	s5,s5,s1
     b64:	019787b3          	add	a5,a5,s9
     b68:	00f12a23          	sw	a5,20(sp)
     b6c:	f95ff06f          	j	b00 <WikiMerge+0x1f8>
     b70:	000a2783          	lw	a5,0(s4)
     b74:	008a0a13          	addi	s4,s4,8
     b78:	fef4ac23          	sw	a5,-8(s1)
     b7c:	ffca2783          	lw	a5,-4(s4)
     b80:	fef4ae23          	sw	a5,-4(s1)
     b84:	e34d94e3          	bne	s11,s4,9ac <WikiMerge+0xa4>
     b88:	e59ff06f          	j	9e0 <WikiMerge+0xd8>

00000b8c <WikiSort>:
     b8c:	ea010113          	addi	sp,sp,-352
     b90:	fffff2b7          	lui	t0,0xfffff
     b94:	13912a23          	sw	s9,308(sp)
     b98:	14112e23          	sw	ra,348(sp)
     b9c:	14812c23          	sw	s0,344(sp)
     ba0:	14912a23          	sw	s1,340(sp)
     ba4:	15212823          	sw	s2,336(sp)
     ba8:	15312623          	sw	s3,332(sp)
     bac:	15412423          	sw	s4,328(sp)
     bb0:	15512223          	sw	s5,324(sp)
     bb4:	15612023          	sw	s6,320(sp)
     bb8:	13712e23          	sw	s7,316(sp)
     bbc:	13812c23          	sw	s8,312(sp)
     bc0:	13a12823          	sw	s10,304(sp)
     bc4:	13b12623          	sw	s11,300(sp)
     bc8:	00510133          	add	sp,sp,t0
     bcc:	06b12223          	sw	a1,100(sp)
     bd0:	02000793          	li	a5,32
     bd4:	00060c93          	mv	s9,a2
     bd8:	00b7c463          	blt	a5,a1,be0 <WikiSort+0x54>
     bdc:	7e10006f          	j	1bbc <WikiSort+0x1030>
     be0:	06412a83          	lw	s5,100(sp)
     be4:	00050d13          	mv	s10,a0
     be8:	00000493          	li	s1,0
     bec:	401ad793          	srai	a5,s5,0x1
     bf0:	0157e7b3          	or	a5,a5,s5
     bf4:	4027d713          	srai	a4,a5,0x2
     bf8:	00e7e7b3          	or	a5,a5,a4
     bfc:	4047d713          	srai	a4,a5,0x4
     c00:	00e7e7b3          	or	a5,a5,a4
     c04:	4087d713          	srai	a4,a5,0x8
     c08:	00e7e7b3          	or	a5,a5,a4
     c0c:	4107d713          	srai	a4,a5,0x10
     c10:	00e7e7b3          	or	a5,a5,a4
     c14:	4017d713          	srai	a4,a5,0x1
     c18:	40e78733          	sub	a4,a5,a4
     c1c:	41f75793          	srai	a5,a4,0x1f
     c20:	00f7f793          	andi	a5,a5,15
     c24:	00e787b3          	add	a5,a5,a4
     c28:	4047d913          	srai	s2,a5,0x4
     c2c:	00090593          	mv	a1,s2
     c30:	000a8513          	mv	a0,s5
     c34:	08e12623          	sw	a4,140(sp)
     c38:	05212623          	sw	s2,76(sp)
     c3c:	071030ef          	jal	ra,44ac <__modsi3>
     c40:	00050793          	mv	a5,a0
     c44:	00090593          	mv	a1,s2
     c48:	000a8513          	mv	a0,s5
     c4c:	00078993          	mv	s3,a5
     c50:	04f12423          	sw	a5,72(sp)
     c54:	7d4030ef          	jal	ra,4428 <__divsi3>
     c58:	000016b7          	lui	a3,0x1
     c5c:	fffff737          	lui	a4,0xfffff
     c60:	0a068693          	addi	a3,a3,160 # 10a0 <WikiSort+0x514>
     c64:	00e686b3          	add	a3,a3,a4
     c68:	08010713          	addi	a4,sp,128
     c6c:	00e68733          	add	a4,a3,a4
     c70:	04a12023          	sw	a0,64(sp)
     c74:	00000793          	li	a5,0
     c78:	00e12e23          	sw	a4,28(sp)
     c7c:	00050a13          	mv	s4,a0
     c80:	0080006f          	j	c88 <WikiSort+0xfc>
     c84:	00040793          	mv	a5,s0
     c88:	013484b3          	add	s1,s1,s3
     c8c:	00078593          	mv	a1,a5
     c90:	000c8693          	mv	a3,s9
     c94:	000d0513          	mv	a0,s10
     c98:	00fa0433          	add	s0,s4,a5
     c9c:	0124c663          	blt	s1,s2,ca8 <WikiSort+0x11c>
     ca0:	00140413          	addi	s0,s0,1
     ca4:	412484b3          	sub	s1,s1,s2
     ca8:	01c12703          	lw	a4,28(sp)
     cac:	00040613          	mv	a2,s0
     cb0:	faf72423          	sw	a5,-88(a4) # ffffefa8 <seed+0xfffed0dc>
     cb4:	fa872623          	sw	s0,-84(a4)
     cb8:	8edff0ef          	jal	ra,5a4 <InsertionSort>
     cbc:	fd5444e3          	blt	s0,s5,c84 <WikiSort+0xf8>
     cc0:	08c12703          	lw	a4,140(sp)
     cc4:	01000793          	li	a5,16
     cc8:	06f12a23          	sw	a5,116(sp)
     ccc:	68e7d263          	bge	a5,a4,1350 <WikiSort+0x7c4>
     cd0:	200007b7          	lui	a5,0x20000
     cd4:	fff78793          	addi	a5,a5,-1 # 1fffffff <seed+0x1ffee133>
     cd8:	00001737          	lui	a4,0x1
     cdc:	02f12a23          	sw	a5,52(sp)
     ce0:	0a070713          	addi	a4,a4,160 # 10a0 <WikiSort+0x514>
     ce4:	fffff7b7          	lui	a5,0xfffff
     ce8:	00f70733          	add	a4,a4,a5
     cec:	08010793          	addi	a5,sp,128
     cf0:	00f70db3          	add	s11,a4,a5
     cf4:	000c8c13          	mv	s8,s9
     cf8:	04012403          	lw	s0,64(sp)
     cfc:	00000c93          	li	s9,0
     d00:	000d0b93          	mv	s7,s10
     d04:	00040513          	mv	a0,s0
     d08:	654030ef          	jal	ra,435c <__floatsidf>
     d0c:	2f8010ef          	jal	ra,2004 <sqrt>
     d10:	5cc030ef          	jal	ra,42dc <__fixdfsi>
     d14:	00050a13          	mv	s4,a0
     d18:	00050593          	mv	a1,a0
     d1c:	00040513          	mv	a0,s0
     d20:	708030ef          	jal	ra,4428 <__divsi3>
     d24:	00150793          	addi	a5,a0,1
     d28:	06f12423          	sw	a5,104(sp)
     d2c:	00179793          	slli	a5,a5,0x1
     d30:	08f12423          	sw	a5,136(sp)
     d34:	003a1793          	slli	a5,s4,0x3
     d38:	06a12623          	sw	a0,108(sp)
     d3c:	04f12c23          	sw	a5,88(sp)
     d40:	06012023          	sw	zero,96(sp)
     d44:	06012c23          	sw	zero,120(sp)
     d48:	08012023          	sw	zero,128(sp)
     d4c:	04012223          	sw	zero,68(sp)
     d50:	02012c23          	sw	zero,56(sp)
     d54:	02012e23          	sw	zero,60(sp)
     d58:	06012823          	sw	zero,112(sp)
     d5c:	02012823          	sw	zero,48(sp)
     d60:	06012e23          	sw	zero,124(sp)
     d64:	03c12703          	lw	a4,60(sp)
     d68:	04812783          	lw	a5,72(sp)
     d6c:	00e787b3          	add	a5,a5,a4
     d70:	04012703          	lw	a4,64(sp)
     d74:	01970933          	add	s2,a4,s9
     d78:	04c12703          	lw	a4,76(sp)
     d7c:	00e7c663          	blt	a5,a4,d88 <WikiSort+0x1fc>
     d80:	40e787b3          	sub	a5,a5,a4
     d84:	00190913          	addi	s2,s2,1
     d88:	04812703          	lw	a4,72(sp)
     d8c:	04c12683          	lw	a3,76(sp)
     d90:	00e787b3          	add	a5,a5,a4
     d94:	04012703          	lw	a4,64(sp)
     d98:	02f12e23          	sw	a5,60(sp)
     d9c:	00e90733          	add	a4,s2,a4
     da0:	02e12223          	sw	a4,36(sp)
     da4:	00d7ca63          	blt	a5,a3,db8 <WikiSort+0x22c>
     da8:	40d787b3          	sub	a5,a5,a3
     dac:	02f12e23          	sw	a5,60(sp)
     db0:	00170793          	addi	a5,a4,1
     db4:	02f12223          	sw	a5,36(sp)
     db8:	03412703          	lw	a4,52(sp)
     dbc:	02412783          	lw	a5,36(sp)
     dc0:	003c9493          	slli	s1,s9,0x3
     dc4:	009b84b3          	add	s1,s7,s1
     dc8:	00e787b3          	add	a5,a5,a4
     dcc:	00379793          	slli	a5,a5,0x3
     dd0:	00fb87b3          	add	a5,s7,a5
     dd4:	0007a503          	lw	a0,0(a5) # fffff000 <seed+0xfffed134>
     dd8:	0047a583          	lw	a1,4(a5)
     ddc:	03012703          	lw	a4,48(sp)
     de0:	06012783          	lw	a5,96(sp)
     de4:	0004a603          	lw	a2,0(s1)
     de8:	0044a683          	lw	a3,4(s1)
     dec:	40e787b3          	sub	a5,a5,a4
     df0:	04f12a23          	sw	a5,84(sp)
     df4:	000c00e7          	jalr	s8
     df8:	42051863          	bnez	a0,1228 <WikiSort+0x69c>
     dfc:	00391793          	slli	a5,s2,0x3
     e00:	00fb87b3          	add	a5,s7,a5
     e04:	ff87a603          	lw	a2,-8(a5)
     e08:	ffc7a683          	lw	a3,-4(a5)
     e0c:	0007a503          	lw	a0,0(a5)
     e10:	0047a583          	lw	a1,4(a5)
     e14:	000c00e7          	jalr	s8
     e18:	42050a63          	beqz	a0,124c <WikiSort+0x6c0>
     e1c:	419907b3          	sub	a5,s2,s9
     e20:	00f12e23          	sw	a5,28(sp)
     e24:	20000713          	li	a4,512
     e28:	7ef75e63          	bge	a4,a5,1624 <WikiSort+0xa98>
     e2c:	02412783          	lw	a5,36(sp)
     e30:	04f12823          	sw	a5,80(sp)
     e34:	05412783          	lw	a5,84(sp)
     e38:	5af05463          	blez	a5,13e0 <WikiSort+0x854>
     e3c:	01c12503          	lw	a0,28(sp)
     e40:	000a0593          	mv	a1,s4
     e44:	668030ef          	jal	ra,44ac <__modsi3>
     e48:	01950d33          	add	s10,a0,s9
     e4c:	001d0693          	addi	a3,s10,1
     e50:	7d26d663          	bge	a3,s2,161c <WikiSort+0xa90>
     e54:	03012783          	lw	a5,48(sp)
     e58:	05812883          	lw	a7,88(sp)
     e5c:	003d1e93          	slli	t4,s10,0x3
     e60:	00379793          	slli	a5,a5,0x3
     e64:	00fb87b3          	add	a5,s7,a5
     e68:	01db8733          	add	a4,s7,t4
     e6c:	00872803          	lw	a6,8(a4)
     e70:	0007a583          	lw	a1,0(a5)
     e74:	0047a603          	lw	a2,4(a5)
     e78:	0107a023          	sw	a6,0(a5)
     e7c:	00c72803          	lw	a6,12(a4)
     e80:	014686b3          	add	a3,a3,s4
     e84:	00878793          	addi	a5,a5,8
     e88:	ff07ae23          	sw	a6,-4(a5)
     e8c:	00b72423          	sw	a1,8(a4)
     e90:	00c72623          	sw	a2,12(a4)
     e94:	01170733          	add	a4,a4,a7
     e98:	fd26cae3          	blt	a3,s2,e6c <WikiSort+0x2e0>
     e9c:	05012783          	lw	a5,80(sp)
     ea0:	41278b33          	sub	s6,a5,s2
     ea4:	016a5463          	bge	s4,s6,eac <WikiSort+0x320>
     ea8:	000a0b13          	mv	s6,s4
     eac:	01db86b3          	add	a3,s7,t4
     eb0:	0046a783          	lw	a5,4(a3)
     eb4:	0006a703          	lw	a4,0(a3)
     eb8:	012b0633          	add	a2,s6,s2
     ebc:	f8fdaa23          	sw	a5,-108(s11)
     ec0:	00c12e23          	sw	a2,28(sp)
     ec4:	f8eda823          	sw	a4,-112(s11)
     ec8:	20000793          	li	a5,512
     ecc:	4ca7c863          	blt	a5,a0,139c <WikiSort+0x810>
     ed0:	00351613          	slli	a2,a0,0x3
     ed4:	00048593          	mv	a1,s1
     ed8:	000d8513          	mv	a0,s11
     edc:	6d8030ef          	jal	ra,45b4 <memcpy>
     ee0:	03812783          	lw	a5,56(sp)
     ee4:	00379893          	slli	a7,a5,0x3
     ee8:	011b87b3          	add	a5,s7,a7
     eec:	000d0a93          	mv	s5,s10
     ef0:	00000413          	li	s0,0
     ef4:	04f12e23          	sw	a5,92(sp)
     ef8:	000b8793          	mv	a5,s7
     efc:	03212023          	sw	s2,32(sp)
     f00:	000d0b93          	mv	s7,s10
     f04:	00000493          	li	s1,0
     f08:	00040d13          	mv	s10,s0
     f0c:	02012623          	sw	zero,44(sp)
     f10:	000a8413          	mv	s0,s5
     f14:	00078b13          	mv	s6,a5
     f18:	229d5063          	bge	s10,s1,1138 <WikiSort+0x5ac>
     f1c:	03412783          	lw	a5,52(sp)
     f20:	f90da603          	lw	a2,-112(s11)
     f24:	f94da683          	lw	a3,-108(s11)
     f28:	00f487b3          	add	a5,s1,a5
     f2c:	00379793          	slli	a5,a5,0x3
     f30:	00fb07b3          	add	a5,s6,a5
     f34:	0007a503          	lw	a0,0(a5)
     f38:	0047a583          	lw	a1,4(a5)
     f3c:	000c00e7          	jalr	s8
     f40:	1e051c63          	bnez	a0,1138 <WikiSort+0x5ac>
     f44:	000d0613          	mv	a2,s10
     f48:	f9ada423          	sw	s10,-120(s11)
     f4c:	000c0713          	mv	a4,s8
     f50:	00048693          	mv	a3,s1
     f54:	000b8593          	mv	a1,s7
     f58:	000b0513          	mv	a0,s6
     f5c:	f89da623          	sw	s1,-116(s11)
     f60:	c6cff0ef          	jal	ra,3cc <BinaryFirst>
     f64:	00050d13          	mv	s10,a0
     f68:	40a48eb3          	sub	t4,s1,a0
     f6c:	008a09b3          	add	s3,s4,s0
     f70:	05405463          	blez	s4,fb8 <WikiSort+0x42c>
     f74:	00341793          	slli	a5,s0,0x3
     f78:	003b9713          	slli	a4,s7,0x3
     f7c:	00399513          	slli	a0,s3,0x3
     f80:	00fb07b3          	add	a5,s6,a5
     f84:	00eb0733          	add	a4,s6,a4
     f88:	00ab0533          	add	a0,s6,a0
     f8c:	00072583          	lw	a1,0(a4)
     f90:	0007a603          	lw	a2,0(a5)
     f94:	0047a683          	lw	a3,4(a5)
     f98:	00b7a023          	sw	a1,0(a5)
     f9c:	00472583          	lw	a1,4(a4)
     fa0:	00870713          	addi	a4,a4,8
     fa4:	00878793          	addi	a5,a5,8
     fa8:	feb7ae23          	sw	a1,-4(a5)
     fac:	fec72c23          	sw	a2,-8(a4)
     fb0:	fed72e23          	sw	a3,-4(a4)
     fb4:	fcf51ce3          	bne	a0,a5,f8c <WikiSort+0x400>
     fb8:	02c12303          	lw	t1,44(sp)
     fbc:	03012783          	lw	a5,48(sp)
     fc0:	00140f13          	addi	t5,s0,1
     fc4:	003f1b93          	slli	s7,t5,0x3
     fc8:	00f30733          	add	a4,t1,a5
     fcc:	00371713          	slli	a4,a4,0x3
     fd0:	00eb0733          	add	a4,s6,a4
     fd4:	00072683          	lw	a3,0(a4)
     fd8:	017b07b3          	add	a5,s6,s7
     fdc:	0007a603          	lw	a2,0(a5)
     fe0:	00d7a023          	sw	a3,0(a5)
     fe4:	00472583          	lw	a1,4(a4)
     fe8:	20000513          	li	a0,512
     fec:	0047a683          	lw	a3,4(a5)
     ff0:	00a12223          	sw	a0,4(sp)
     ff4:	00b7a223          	sw	a1,4(a5)
     ff8:	00c72023          	sw	a2,0(a4)
     ffc:	03812583          	lw	a1,56(sp)
    1000:	04412603          	lw	a2,68(sp)
    1004:	00d72223          	sw	a3,4(a4)
    1008:	01b12023          	sw	s11,0(sp)
    100c:	000a8793          	mv	a5,s5
    1010:	00130313          	addi	t1,t1,1
    1014:	000c0893          	mv	a7,s8
    1018:	000d0813          	mv	a6,s10
    101c:	000c8693          	mv	a3,s9
    1020:	000a8713          	mv	a4,s5
    1024:	000b0513          	mv	a0,s6
    1028:	fd5dac23          	sw	s5,-40(s11)
    102c:	fdadae23          	sw	s10,-36(s11)
    1030:	f6bdac23          	sw	a1,-136(s11)
    1034:	f6cdae23          	sw	a2,-132(s11)
    1038:	f99da023          	sw	s9,-128(s11)
    103c:	f95da223          	sw	s5,-124(s11)
    1040:	03d12423          	sw	t4,40(sp)
    1044:	02612623          	sw	t1,44(sp)
    1048:	8c1ff0ef          	jal	ra,908 <WikiMerge>
    104c:	20000793          	li	a5,512
    1050:	02812e83          	lw	t4,40(sp)
    1054:	1947c863          	blt	a5,s4,11e4 <WikiSort+0x658>
    1058:	05812603          	lw	a2,88(sp)
    105c:	ff8b8593          	addi	a1,s7,-8
    1060:	00bb05b3          	add	a1,s6,a1
    1064:	000d8513          	mv	a0,s11
    1068:	03d12423          	sw	t4,40(sp)
    106c:	548030ef          	jal	ra,45b4 <memcpy>
    1070:	02812e83          	lw	t4,40(sp)
    1074:	41d98733          	sub	a4,s3,t4
    1078:	05d05463          	blez	t4,10c0 <WikiSort+0x534>
    107c:	003d1793          	slli	a5,s10,0x3
    1080:	00371713          	slli	a4,a4,0x3
    1084:	00349493          	slli	s1,s1,0x3
    1088:	00fb07b3          	add	a5,s6,a5
    108c:	00eb0733          	add	a4,s6,a4
    1090:	009b04b3          	add	s1,s6,s1
    1094:	00072583          	lw	a1,0(a4)
    1098:	0007a603          	lw	a2,0(a5)
    109c:	0047a683          	lw	a3,4(a5)
    10a0:	00b7a023          	sw	a1,0(a5)
    10a4:	00472583          	lw	a1,4(a4)
    10a8:	00870713          	addi	a4,a4,8
    10ac:	00878793          	addi	a5,a5,8
    10b0:	feb7ae23          	sw	a1,-4(a5)
    10b4:	fec72c23          	sw	a2,-8(a4)
    10b8:	fed72e23          	sw	a3,-4(a4)
    10bc:	fc979ce3          	bne	a5,s1,1094 <WikiSort+0x508>
    10c0:	41d40cb3          	sub	s9,s0,t4
    10c4:	014c8ab3          	add	s5,s9,s4
    10c8:	01da84b3          	add	s1,s5,t4
    10cc:	1d298c63          	beq	s3,s2,12a4 <WikiSort+0x718>
    10d0:	00198b93          	addi	s7,s3,1
    10d4:	017a0433          	add	s0,s4,s7
    10d8:	2b245e63          	bge	s0,s2,1394 <WikiSort+0x808>
    10dc:	003b9713          	slli	a4,s7,0x3
    10e0:	00341793          	slli	a5,s0,0x3
    10e4:	00eb0733          	add	a4,s6,a4
    10e8:	00fb07b3          	add	a5,s6,a5
    10ec:	00072603          	lw	a2,0(a4)
    10f0:	00472683          	lw	a3,4(a4)
    10f4:	0007a503          	lw	a0,0(a5)
    10f8:	0047a583          	lw	a1,4(a5)
    10fc:	000c00e7          	jalr	s8
    1100:	00050463          	beqz	a0,1108 <WikiSort+0x57c>
    1104:	00040b93          	mv	s7,s0
    1108:	01440433          	add	s0,s0,s4
    110c:	fd2448e3          	blt	s0,s2,10dc <WikiSort+0x550>
    1110:	fffb8b93          	addi	s7,s7,-1
    1114:	003b9793          	slli	a5,s7,0x3
    1118:	00fb07b3          	add	a5,s6,a5
    111c:	0007a703          	lw	a4,0(a5)
    1120:	0047a783          	lw	a5,4(a5)
    1124:	000a8d13          	mv	s10,s5
    1128:	f8eda823          	sw	a4,-112(s11)
    112c:	f8fdaa23          	sw	a5,-108(s11)
    1130:	00098413          	mv	s0,s3
    1134:	de9d44e3          	blt	s10,s1,f1c <WikiSort+0x390>
    1138:	02012783          	lw	a5,32(sp)
    113c:	01c12703          	lw	a4,28(sp)
    1140:	e0e782e3          	beq	a5,a4,f44 <WikiSort+0x3b8>
    1144:	01c12783          	lw	a5,28(sp)
    1148:	02012703          	lw	a4,32(sp)
    114c:	40e789b3          	sub	s3,a5,a4
    1150:	1149c863          	blt	s3,s4,1260 <WikiSort+0x6d4>
    1154:	008a09b3          	add	s3,s4,s0
    1158:	05405663          	blez	s4,11a4 <WikiSort+0x618>
    115c:	02012703          	lw	a4,32(sp)
    1160:	00341793          	slli	a5,s0,0x3
    1164:	00399513          	slli	a0,s3,0x3
    1168:	00371713          	slli	a4,a4,0x3
    116c:	00fb07b3          	add	a5,s6,a5
    1170:	00eb0733          	add	a4,s6,a4
    1174:	00ab0533          	add	a0,s6,a0
    1178:	00072583          	lw	a1,0(a4)
    117c:	0007a603          	lw	a2,0(a5)
    1180:	0047a683          	lw	a3,4(a5)
    1184:	00b7a023          	sw	a1,0(a5)
    1188:	00472583          	lw	a1,4(a4)
    118c:	00870713          	addi	a4,a4,8
    1190:	00878793          	addi	a5,a5,8
    1194:	feb7ae23          	sw	a1,-4(a5)
    1198:	fec72c23          	sw	a2,-8(a4)
    119c:	fed72e23          	sw	a3,-4(a4)
    11a0:	fcf51ce3          	bne	a0,a5,1178 <WikiSort+0x5ec>
    11a4:	00098493          	mv	s1,s3
    11a8:	01741463          	bne	s0,s7,11b0 <WikiSort+0x624>
    11ac:	00090b93          	mv	s7,s2
    11b0:	02012703          	lw	a4,32(sp)
    11b4:	01c12783          	lw	a5,28(sp)
    11b8:	01490933          	add	s2,s2,s4
    11bc:	01470733          	add	a4,a4,s4
    11c0:	02e12023          	sw	a4,32(sp)
    11c4:	05012703          	lw	a4,80(sp)
    11c8:	00fa07b3          	add	a5,s4,a5
    11cc:	00f12e23          	sw	a5,28(sp)
    11d0:	00f75463          	bge	a4,a5,11d8 <WikiSort+0x64c>
    11d4:	00e12e23          	sw	a4,28(sp)
    11d8:	00040d13          	mv	s10,s0
    11dc:	00098413          	mv	s0,s3
    11e0:	d39ff06f          	j	f18 <WikiSort+0x38c>
    11e4:	05c12703          	lw	a4,92(sp)
    11e8:	ff8b8793          	addi	a5,s7,-8
    11ec:	00399513          	slli	a0,s3,0x3
    11f0:	00fb07b3          	add	a5,s6,a5
    11f4:	00ab0533          	add	a0,s6,a0
    11f8:	00072583          	lw	a1,0(a4)
    11fc:	0007a603          	lw	a2,0(a5)
    1200:	0047a683          	lw	a3,4(a5)
    1204:	00b7a023          	sw	a1,0(a5)
    1208:	00472583          	lw	a1,4(a4)
    120c:	00870713          	addi	a4,a4,8
    1210:	00878793          	addi	a5,a5,8
    1214:	feb7ae23          	sw	a1,-4(a5)
    1218:	fec72c23          	sw	a2,-8(a4)
    121c:	fed72e23          	sw	a3,-4(a4)
    1220:	fcf51ce3          	bne	a0,a5,11f8 <WikiSort+0x66c>
    1224:	e51ff06f          	j	1074 <WikiSort+0x4e8>
    1228:	02412683          	lw	a3,36(sp)
    122c:	20000793          	li	a5,512
    1230:	000d8713          	mv	a4,s11
    1234:	000c8613          	mv	a2,s9
    1238:	419905b3          	sub	a1,s2,s9
    123c:	000b8513          	mv	a0,s7
    1240:	fb9da823          	sw	s9,-80(s11)
    1244:	faddaa23          	sw	a3,-76(s11)
    1248:	d5cff0ef          	jal	ra,7a4 <Rotate>
    124c:	02412783          	lw	a5,36(sp)
    1250:	06412703          	lw	a4,100(sp)
    1254:	0ae7d063          	bge	a5,a4,12f4 <WikiSort+0x768>
    1258:	02412c83          	lw	s9,36(sp)
    125c:	b09ff06f          	j	d64 <WikiSort+0x1d8>
    1260:	00040613          	mv	a2,s0
    1264:	01c12683          	lw	a3,28(sp)
    1268:	02012403          	lw	s0,32(sp)
    126c:	013604b3          	add	s1,a2,s3
    1270:	00000793          	li	a5,0
    1274:	40d405b3          	sub	a1,s0,a3
    1278:	000d8713          	mv	a4,s11
    127c:	000b0513          	mv	a0,s6
    1280:	fecda023          	sw	a2,-32(s11)
    1284:	fedda223          	sw	a3,-28(s11)
    1288:	00060d13          	mv	s10,a2
    128c:	01390933          	add	s2,s2,s3
    1290:	d14ff0ef          	jal	ra,7a4 <Rotate>
    1294:	013b8bb3          	add	s7,s7,s3
    1298:	00812e23          	sw	s0,28(sp)
    129c:	00048413          	mv	s0,s1
    12a0:	c79ff06f          	j	f18 <WikiSort+0x38c>
    12a4:	05012803          	lw	a6,80(sp)
    12a8:	f78da583          	lw	a1,-136(s11)
    12ac:	f7cda603          	lw	a2,-132(s11)
    12b0:	20000793          	li	a5,512
    12b4:	00f12223          	sw	a5,4(sp)
    12b8:	01b12023          	sw	s11,0(sp)
    12bc:	000a8793          	mv	a5,s5
    12c0:	000a8713          	mv	a4,s5
    12c4:	000c0893          	mv	a7,s8
    12c8:	000c8693          	mv	a3,s9
    12cc:	000b0513          	mv	a0,s6
    12d0:	ff5da423          	sw	s5,-24(s11)
    12d4:	ff0da623          	sw	a6,-20(s11)
    12d8:	f99da023          	sw	s9,-128(s11)
    12dc:	f95da223          	sw	s5,-124(s11)
    12e0:	e28ff0ef          	jal	ra,908 <WikiMerge>
    12e4:	02412783          	lw	a5,36(sp)
    12e8:	06412703          	lw	a4,100(sp)
    12ec:	000b0b93          	mv	s7,s6
    12f0:	f6e7c4e3          	blt	a5,a4,1258 <WikiSort+0x6cc>
    12f4:	05412783          	lw	a5,84(sp)
    12f8:	000b8d13          	mv	s10,s7
    12fc:	64f04263          	bgtz	a5,1940 <WikiSort+0xdb4>
    1300:	04012703          	lw	a4,64(sp)
    1304:	04812783          	lw	a5,72(sp)
    1308:	00171713          	slli	a4,a4,0x1
    130c:	04e12023          	sw	a4,64(sp)
    1310:	04c12703          	lw	a4,76(sp)
    1314:	00179793          	slli	a5,a5,0x1
    1318:	04f12423          	sw	a5,72(sp)
    131c:	02e7c063          	blt	a5,a4,133c <WikiSort+0x7b0>
    1320:	04812783          	lw	a5,72(sp)
    1324:	04c12703          	lw	a4,76(sp)
    1328:	40e787b3          	sub	a5,a5,a4
    132c:	04f12423          	sw	a5,72(sp)
    1330:	04012783          	lw	a5,64(sp)
    1334:	00178793          	addi	a5,a5,1
    1338:	04f12023          	sw	a5,64(sp)
    133c:	07412783          	lw	a5,116(sp)
    1340:	08c12703          	lw	a4,140(sp)
    1344:	00179793          	slli	a5,a5,0x1
    1348:	06f12a23          	sw	a5,116(sp)
    134c:	9ae7c6e3          	blt	a5,a4,cf8 <WikiSort+0x16c>
    1350:	000012b7          	lui	t0,0x1
    1354:	00510133          	add	sp,sp,t0
    1358:	15c12083          	lw	ra,348(sp)
    135c:	15812403          	lw	s0,344(sp)
    1360:	15412483          	lw	s1,340(sp)
    1364:	15012903          	lw	s2,336(sp)
    1368:	14c12983          	lw	s3,332(sp)
    136c:	14812a03          	lw	s4,328(sp)
    1370:	14412a83          	lw	s5,324(sp)
    1374:	14012b03          	lw	s6,320(sp)
    1378:	13c12b83          	lw	s7,316(sp)
    137c:	13812c03          	lw	s8,312(sp)
    1380:	13412c83          	lw	s9,308(sp)
    1384:	13012d03          	lw	s10,304(sp)
    1388:	12c12d83          	lw	s11,300(sp)
    138c:	16010113          	addi	sp,sp,352
    1390:	00008067          	ret
    1394:	00098b93          	mv	s7,s3
    1398:	d7dff06f          	j	1114 <WikiSort+0x588>
    139c:	03812703          	lw	a4,56(sp)
    13a0:	003c9793          	slli	a5,s9,0x3
    13a4:	00fb87b3          	add	a5,s7,a5
    13a8:	00371893          	slli	a7,a4,0x3
    13ac:	011b8733          	add	a4,s7,a7
    13b0:	00072503          	lw	a0,0(a4)
    13b4:	0007a583          	lw	a1,0(a5)
    13b8:	0047a603          	lw	a2,4(a5)
    13bc:	00a7a023          	sw	a0,0(a5)
    13c0:	00472503          	lw	a0,4(a4)
    13c4:	00870713          	addi	a4,a4,8
    13c8:	00878793          	addi	a5,a5,8
    13cc:	fea7ae23          	sw	a0,-4(a5)
    13d0:	feb72c23          	sw	a1,-8(a4)
    13d4:	fec72e23          	sw	a2,-4(a4)
    13d8:	fcf69ce3          	bne	a3,a5,13b0 <WikiSort+0x824>
    13dc:	b0dff06f          	j	ee8 <WikiSort+0x35c>
    13e0:	001c8413          	addi	s0,s9,1
    13e4:	7d245863          	bge	s0,s2,1bb4 <WikiSort+0x1028>
    13e8:	06c12d03          	lw	s10,108(sp)
    13ec:	00048a93          	mv	s5,s1
    13f0:	00100993          	li	s3,1
    13f4:	004aa583          	lw	a1,4(s5)
    13f8:	008aa603          	lw	a2,8(s5)
    13fc:	00caa683          	lw	a3,12(s5)
    1400:	000aa503          	lw	a0,0(s5)
    1404:	000a8b13          	mv	s6,s5
    1408:	008a8a93          	addi	s5,s5,8
    140c:	000c00e7          	jalr	s8
    1410:	00051e63          	bnez	a0,142c <WikiSort+0x8a0>
    1414:	000b2603          	lw	a2,0(s6)
    1418:	004b2683          	lw	a3,4(s6)
    141c:	000aa503          	lw	a0,0(s5)
    1420:	004aa583          	lw	a1,4(s5)
    1424:	000c00e7          	jalr	s8
    1428:	00050863          	beqz	a0,1438 <WikiSort+0x8ac>
    142c:	00198793          	addi	a5,s3,1
    1430:	253d0863          	beq	s10,s3,1680 <WikiSort+0xaf4>
    1434:	00078993          	mv	s3,a5
    1438:	00140413          	addi	s0,s0,1
    143c:	fb241ce3          	bne	s0,s2,13f4 <WikiSort+0x868>
    1440:	06812783          	lw	a5,104(sp)
    1444:	20000713          	li	a4,512
    1448:	24f74463          	blt	a4,a5,1690 <WikiSort+0xb04>
    144c:	3ef99463          	bne	s3,a5,1834 <WikiSort+0xca8>
    1450:	02412983          	lw	s3,36(sp)
    1454:	00878b33          	add	s6,a5,s0
    1458:	019787b3          	add	a5,a5,s9
    145c:	06f12023          	sw	a5,96(sp)
    1460:	05912223          	sw	s9,68(sp)
    1464:	03912c23          	sw	s9,56(sp)
    1468:	09312223          	sw	s3,132(sp)
    146c:	408b07b3          	sub	a5,s6,s0
    1470:	01978733          	add	a4,a5,s9
    1474:	00371493          	slli	s1,a4,0x3
    1478:	06e12823          	sw	a4,112(sp)
    147c:	40e90733          	sub	a4,s2,a4
    1480:	00e12e23          	sw	a4,28(sp)
    1484:	009b84b3          	add	s1,s7,s1
    1488:	08f05e63          	blez	a5,1524 <WikiSort+0x998>
    148c:	00000b13          	li	s6,0
    1490:	00341d13          	slli	s10,s0,0x3
    1494:	03212023          	sw	s2,32(sp)
    1498:	02912423          	sw	s1,40(sp)
    149c:	01ab8d33          	add	s10,s7,s10
    14a0:	000b0493          	mv	s1,s6
    14a4:	00040913          	mv	s2,s0
    14a8:	00078b13          	mv	s6,a5
    14ac:	ff8d0a93          	addi	s5,s10,-8
    14b0:	03990a63          	beq	s2,s9,14e4 <WikiSort+0x958>
    14b4:	000d2603          	lw	a2,0(s10)
    14b8:	004d2683          	lw	a3,4(s10)
    14bc:	004aa583          	lw	a1,4(s5)
    14c0:	ff8d2503          	lw	a0,-8(s10)
    14c4:	000c00e7          	jalr	s8
    14c8:	00051e63          	bnez	a0,14e4 <WikiSort+0x958>
    14cc:	ff8d2603          	lw	a2,-8(s10)
    14d0:	004d2583          	lw	a1,4(s10)
    14d4:	004aa683          	lw	a3,4(s5)
    14d8:	000d2503          	lw	a0,0(s10)
    14dc:	000c00e7          	jalr	s8
    14e0:	02050863          	beqz	a0,1510 <WikiSort+0x984>
    14e4:	00140693          	addi	a3,s0,1
    14e8:	00190613          	addi	a2,s2,1
    14ec:	409005b3          	neg	a1,s1
    14f0:	20000793          	li	a5,512
    14f4:	000d8713          	mv	a4,s11
    14f8:	000b8513          	mv	a0,s7
    14fc:	fccda423          	sw	a2,-56(s11)
    1500:	fcdda623          	sw	a3,-52(s11)
    1504:	00990433          	add	s0,s2,s1
    1508:	a9cff0ef          	jal	ra,7a4 <Rotate>
    150c:	00148493          	addi	s1,s1,1
    1510:	fff90913          	addi	s2,s2,-1
    1514:	000a8d13          	mv	s10,s5
    1518:	f964cae3          	blt	s1,s6,14ac <WikiSort+0x920>
    151c:	02012903          	lw	s2,32(sp)
    1520:	02812483          	lw	s1,40(sp)
    1524:	06812783          	lw	a5,104(sp)
    1528:	03912823          	sw	s9,48(sp)
    152c:	04f12a23          	sw	a5,84(sp)
    1530:	08412783          	lw	a5,132(sp)
    1534:	413787b3          	sub	a5,a5,s3
    1538:	02f12023          	sw	a5,32(sp)
    153c:	0af05463          	blez	a5,15e4 <WikiSort+0xa58>
    1540:	02412783          	lw	a5,36(sp)
    1544:	02012a83          	lw	s5,32(sp)
    1548:	00000b13          	li	s6,0
    154c:	00399d13          	slli	s10,s3,0x3
    1550:	fff78793          	addi	a5,a5,-1
    1554:	03212423          	sw	s2,40(sp)
    1558:	02912623          	sw	s1,44(sp)
    155c:	01ab8d33          	add	s10,s7,s10
    1560:	000b0493          	mv	s1,s6
    1564:	00098913          	mv	s2,s3
    1568:	00078b13          	mv	s6,a5
    156c:	008d0413          	addi	s0,s10,8
    1570:	03690a63          	beq	s2,s6,15a4 <WikiSort+0xa18>
    1574:	008d2603          	lw	a2,8(s10)
    1578:	004d2583          	lw	a1,4(s10)
    157c:	00442683          	lw	a3,4(s0)
    1580:	000d2503          	lw	a0,0(s10)
    1584:	000c00e7          	jalr	s8
    1588:	00051e63          	bnez	a0,15a4 <WikiSort+0xa18>
    158c:	000d2603          	lw	a2,0(s10)
    1590:	004d2683          	lw	a3,4(s10)
    1594:	008d2503          	lw	a0,8(s10)
    1598:	00442583          	lw	a1,4(s0)
    159c:	000c00e7          	jalr	s8
    15a0:	02050863          	beqz	a0,15d0 <WikiSort+0xa44>
    15a4:	00098613          	mv	a2,s3
    15a8:	00048593          	mv	a1,s1
    15ac:	20000793          	li	a5,512
    15b0:	000d8713          	mv	a4,s11
    15b4:	00090693          	mv	a3,s2
    15b8:	000b8513          	mv	a0,s7
    15bc:	fd3da823          	sw	s3,-48(s11)
    15c0:	fd2daa23          	sw	s2,-44(s11)
    15c4:	409909b3          	sub	s3,s2,s1
    15c8:	9dcff0ef          	jal	ra,7a4 <Rotate>
    15cc:	00148493          	addi	s1,s1,1
    15d0:	00190913          	addi	s2,s2,1
    15d4:	00040d13          	mv	s10,s0
    15d8:	f954cae3          	blt	s1,s5,156c <WikiSort+0x9e0>
    15dc:	02812903          	lw	s2,40(sp)
    15e0:	02c12483          	lw	s1,44(sp)
    15e4:	02412703          	lw	a4,36(sp)
    15e8:	02012783          	lw	a5,32(sp)
    15ec:	01c12503          	lw	a0,28(sp)
    15f0:	09912023          	sw	s9,128(sp)
    15f4:	07012c83          	lw	s9,112(sp)
    15f8:	40f707b3          	sub	a5,a4,a5
    15fc:	000a0593          	mv	a1,s4
    1600:	06f12c23          	sw	a5,120(sp)
    1604:	04f12823          	sw	a5,80(sp)
    1608:	06e12e23          	sw	a4,124(sp)
    160c:	6a1020ef          	jal	ra,44ac <__modsi3>
    1610:	01950d33          	add	s10,a0,s9
    1614:	001d0693          	addi	a3,s10,1
    1618:	8326cee3          	blt	a3,s2,e54 <WikiSort+0x2c8>
    161c:	003d1e93          	slli	t4,s10,0x3
    1620:	87dff06f          	j	e9c <WikiSort+0x310>
    1624:	00379613          	slli	a2,a5,0x3
    1628:	00048593          	mv	a1,s1
    162c:	000d8513          	mv	a0,s11
    1630:	785020ef          	jal	ra,45b4 <memcpy>
    1634:	02412803          	lw	a6,36(sp)
    1638:	20000793          	li	a5,512
    163c:	00f12223          	sw	a5,4(sp)
    1640:	01b12023          	sw	s11,0(sp)
    1644:	000c0893          	mv	a7,s8
    1648:	00090793          	mv	a5,s2
    164c:	000c8693          	mv	a3,s9
    1650:	00090713          	mv	a4,s2
    1654:	00000593          	li	a1,0
    1658:	00000613          	li	a2,0
    165c:	000b8513          	mv	a0,s7
    1660:	fa0dac23          	sw	zero,-72(s11)
    1664:	fa0dae23          	sw	zero,-68(s11)
    1668:	f99dac23          	sw	s9,-104(s11)
    166c:	f92dae23          	sw	s2,-100(s11)
    1670:	fb2da023          	sw	s2,-96(s11)
    1674:	fb0da223          	sw	a6,-92(s11)
    1678:	a90ff0ef          	jal	ra,908 <WikiMerge>
    167c:	bd1ff06f          	j	124c <WikiSort+0x6c0>
    1680:	00078993          	mv	s3,a5
    1684:	06812783          	lw	a5,104(sp)
    1688:	20000713          	li	a4,512
    168c:	dcf750e3          	bge	a4,a5,144c <WikiSort+0x8c0>
    1690:	00140a93          	addi	s5,s0,1
    1694:	092adc63          	bge	s5,s2,172c <WikiSort+0xba0>
    1698:	00341b13          	slli	s6,s0,0x3
    169c:	02812023          	sw	s0,32(sp)
    16a0:	06c12403          	lw	s0,108(sp)
    16a4:	00048793          	mv	a5,s1
    16a8:	016b8b33          	add	s6,s7,s6
    16ac:	000a8493          	mv	s1,s5
    16b0:	00000d13          	li	s10,0
    16b4:	03312423          	sw	s3,40(sp)
    16b8:	00078a93          	mv	s5,a5
    16bc:	004b2583          	lw	a1,4(s6)
    16c0:	008b2603          	lw	a2,8(s6)
    16c4:	00cb2683          	lw	a3,12(s6)
    16c8:	000b2503          	lw	a0,0(s6)
    16cc:	000b0993          	mv	s3,s6
    16d0:	008b0b13          	addi	s6,s6,8
    16d4:	000c00e7          	jalr	s8
    16d8:	00051e63          	bnez	a0,16f4 <WikiSort+0xb68>
    16dc:	0009a603          	lw	a2,0(s3)
    16e0:	0049a683          	lw	a3,4(s3)
    16e4:	000b2503          	lw	a0,0(s6)
    16e8:	004b2583          	lw	a1,4(s6)
    16ec:	000c00e7          	jalr	s8
    16f0:	00050863          	beqz	a0,1700 <WikiSort+0xb74>
    16f4:	001d0713          	addi	a4,s10,1
    16f8:	3da40663          	beq	s0,s10,1ac4 <WikiSort+0xf38>
    16fc:	00070d13          	mv	s10,a4
    1700:	00148493          	addi	s1,s1,1
    1704:	fb249ce3          	bne	s1,s2,16bc <WikiSort+0xb30>
    1708:	000a8793          	mv	a5,s5
    170c:	000d0713          	mv	a4,s10
    1710:	00048a93          	mv	s5,s1
    1714:	00078493          	mv	s1,a5
    1718:	00070793          	mv	a5,a4
    171c:	06812703          	lw	a4,104(sp)
    1720:	02012403          	lw	s0,32(sp)
    1724:	02812983          	lw	s3,40(sp)
    1728:	3ae78e63          	beq	a5,a4,1ae4 <WikiSort+0xf58>
    172c:	02412783          	lw	a5,36(sp)
    1730:	ffe78a93          	addi	s5,a5,-2
    1734:	06812783          	lw	a5,104(sp)
    1738:	3ef98463          	beq	s3,a5,1b20 <WikiSort+0xf94>
    173c:	072ac063          	blt	s5,s2,179c <WikiSort+0xc10>
    1740:	06c12d03          	lw	s10,108(sp)
    1744:	003a9b13          	slli	s6,s5,0x3
    1748:	016b8b33          	add	s6,s7,s6
    174c:	00100413          	li	s0,1
    1750:	008b2603          	lw	a2,8(s6)
    1754:	004b2583          	lw	a1,4(s6)
    1758:	000b2503          	lw	a0,0(s6)
    175c:	00cb2683          	lw	a3,12(s6)
    1760:	008b0993          	addi	s3,s6,8
    1764:	000c00e7          	jalr	s8
    1768:	00051e63          	bnez	a0,1784 <WikiSort+0xbf8>
    176c:	000b2603          	lw	a2,0(s6)
    1770:	004b2683          	lw	a3,4(s6)
    1774:	008b2503          	lw	a0,8(s6)
    1778:	0049a583          	lw	a1,4(s3)
    177c:	000c00e7          	jalr	s8
    1780:	00050863          	beqz	a0,1790 <WikiSort+0xc04>
    1784:	00140793          	addi	a5,s0,1
    1788:	008d0a63          	beq	s10,s0,179c <WikiSort+0xc10>
    178c:	00078413          	mv	s0,a5
    1790:	fffa8a93          	addi	s5,s5,-1
    1794:	ff8b0b13          	addi	s6,s6,-8
    1798:	fb2adce3          	bge	s5,s2,1750 <WikiSort+0xbc4>
    179c:	fffa8993          	addi	s3,s5,-1
    17a0:	1129c863          	blt	s3,s2,18b0 <WikiSort+0xd24>
    17a4:	06c12d03          	lw	s10,108(sp)
    17a8:	003a9a93          	slli	s5,s5,0x3
    17ac:	015b8ab3          	add	s5,s7,s5
    17b0:	00000413          	li	s0,0
    17b4:	000aa603          	lw	a2,0(s5)
    17b8:	004aa683          	lw	a3,4(s5)
    17bc:	ffcaa583          	lw	a1,-4(s5)
    17c0:	ff8aa503          	lw	a0,-8(s5)
    17c4:	000a8b13          	mv	s6,s5
    17c8:	ff8a8a93          	addi	s5,s5,-8
    17cc:	000c00e7          	jalr	s8
    17d0:	00051e63          	bnez	a0,17ec <WikiSort+0xc60>
    17d4:	000aa603          	lw	a2,0(s5)
    17d8:	004aa683          	lw	a3,4(s5)
    17dc:	000b2503          	lw	a0,0(s6)
    17e0:	004b2583          	lw	a1,4(s6)
    17e4:	000c00e7          	jalr	s8
    17e8:	00050863          	beqz	a0,17f8 <WikiSort+0xc6c>
    17ec:	00140793          	addi	a5,s0,1
    17f0:	328d0063          	beq	s10,s0,1b10 <WikiSort+0xf84>
    17f4:	00078413          	mv	s0,a5
    17f8:	fff98993          	addi	s3,s3,-1
    17fc:	fb29dce3          	bge	s3,s2,17b4 <WikiSort+0xc28>
    1800:	06812783          	lw	a5,104(sp)
    1804:	0af41663          	bne	s0,a5,18b0 <WikiSort+0xd24>
    1808:	06812703          	lw	a4,104(sp)
    180c:	02412783          	lw	a5,36(sp)
    1810:	08812683          	lw	a3,136(sp)
    1814:	40e787b3          	sub	a5,a5,a4
    1818:	013686b3          	add	a3,a3,s3
    181c:	40e78733          	sub	a4,a5,a4
    1820:	02f12823          	sw	a5,48(sp)
    1824:	08d12223          	sw	a3,132(sp)
    1828:	02e12c23          	sw	a4,56(sp)
    182c:	04f12223          	sw	a5,68(sp)
    1830:	27c0006f          	j	1aac <WikiSort+0xf20>
    1834:	02412783          	lw	a5,36(sp)
    1838:	ffe78993          	addi	s3,a5,-2
    183c:	3d29c463          	blt	s3,s2,1c04 <WikiSort+0x1078>
    1840:	06c12d03          	lw	s10,108(sp)
    1844:	00399b13          	slli	s6,s3,0x3
    1848:	016b8b33          	add	s6,s7,s6
    184c:	00100413          	li	s0,1
    1850:	008b2603          	lw	a2,8(s6)
    1854:	004b2583          	lw	a1,4(s6)
    1858:	000b2503          	lw	a0,0(s6)
    185c:	00cb2683          	lw	a3,12(s6)
    1860:	008b0a93          	addi	s5,s6,8
    1864:	000c00e7          	jalr	s8
    1868:	00051e63          	bnez	a0,1884 <WikiSort+0xcf8>
    186c:	000b2603          	lw	a2,0(s6)
    1870:	004b2683          	lw	a3,4(s6)
    1874:	008b2503          	lw	a0,8(s6)
    1878:	004aa583          	lw	a1,4(s5)
    187c:	000c00e7          	jalr	s8
    1880:	00050863          	beqz	a0,1890 <WikiSort+0xd04>
    1884:	00140793          	addi	a5,s0,1
    1888:	1e8d0e63          	beq	s10,s0,1a84 <WikiSort+0xef8>
    188c:	00078413          	mv	s0,a5
    1890:	fff98993          	addi	s3,s3,-1
    1894:	ff8b0b13          	addi	s6,s6,-8
    1898:	fb29dce3          	bge	s3,s2,1850 <WikiSort+0xcc4>
    189c:	06812783          	lw	a5,104(sp)
    18a0:	1ef40863          	beq	s0,a5,1a90 <WikiSort+0xf04>
    18a4:	06812703          	lw	a4,104(sp)
    18a8:	013407b3          	add	a5,s0,s3
    18ac:	36e45063          	bge	s0,a4,1c0c <WikiSort+0x1080>
    18b0:	02412783          	lw	a5,36(sp)
    18b4:	98f95ce3          	bge	s2,a5,124c <WikiSort+0x6c0>
    18b8:	02412483          	lw	s1,36(sp)
    18bc:	0080006f          	j	18c4 <WikiSort+0xd38>
    18c0:	989956e3          	bge	s2,s1,124c <WikiSort+0x6c0>
    18c4:	00090613          	mv	a2,s2
    18c8:	000c8593          	mv	a1,s9
    18cc:	000c0713          	mv	a4,s8
    18d0:	00048693          	mv	a3,s1
    18d4:	000b8513          	mv	a0,s7
    18d8:	00090413          	mv	s0,s2
    18dc:	fb2da023          	sw	s2,-96(s11)
    18e0:	fa9da223          	sw	s1,-92(s11)
    18e4:	ae9fe0ef          	jal	ra,3cc <BinaryFirst>
    18e8:	00050913          	mv	s2,a0
    18ec:	000c8613          	mv	a2,s9
    18f0:	00050693          	mv	a3,a0
    18f4:	40a405b3          	sub	a1,s0,a0
    18f8:	20000793          	li	a5,512
    18fc:	000d8713          	mv	a4,s11
    1900:	000b8513          	mv	a0,s7
    1904:	fd9da023          	sw	s9,-64(s11)
    1908:	408909b3          	sub	s3,s2,s0
    190c:	fd2da223          	sw	s2,-60(s11)
    1910:	e95fe0ef          	jal	ra,7a4 <Rotate>
    1914:	000c8613          	mv	a2,s9
    1918:	019985b3          	add	a1,s3,s9
    191c:	000c0713          	mv	a4,s8
    1920:	00040693          	mv	a3,s0
    1924:	000b8513          	mv	a0,s7
    1928:	f99dac23          	sw	s9,-104(s11)
    192c:	f88dae23          	sw	s0,-100(s11)
    1930:	b89fe0ef          	jal	ra,4b8 <BinaryLast>
    1934:	00050c93          	mv	s9,a0
    1938:	f92544e3          	blt	a0,s2,18c0 <WikiSort+0xd34>
    193c:	911ff06f          	j	124c <WikiSort+0x6c0>
    1940:	03812583          	lw	a1,56(sp)
    1944:	04412603          	lw	a2,68(sp)
    1948:	000c0693          	mv	a3,s8
    194c:	000b8513          	mv	a0,s7
    1950:	f6bda823          	sw	a1,-144(s11)
    1954:	f6cdaa23          	sw	a2,-140(s11)
    1958:	07012403          	lw	s0,112(sp)
    195c:	c49fe0ef          	jal	ra,5a4 <InsertionSort>
    1960:	08012703          	lw	a4,128(sp)
    1964:	00040493          	mv	s1,s0
    1968:	00070913          	mv	s2,a4
    196c:	04875263          	bge	a4,s0,19b0 <WikiSort+0xe24>
    1970:	07012403          	lw	s0,112(sp)
    1974:	07812983          	lw	s3,120(sp)
    1978:	00391713          	slli	a4,s2,0x3
    197c:	00349793          	slli	a5,s1,0x3
    1980:	00ed0733          	add	a4,s10,a4
    1984:	00fd07b3          	add	a5,s10,a5
    1988:	40848a33          	sub	s4,s1,s0
    198c:	0c998063          	beq	s3,s1,1a4c <WikiSort+0xec0>
    1990:	00072603          	lw	a2,0(a4)
    1994:	00472683          	lw	a3,4(a4)
    1998:	0047a583          	lw	a1,4(a5)
    199c:	0007a503          	lw	a0,0(a5)
    19a0:	000c00e7          	jalr	s8
    19a4:	0a050463          	beqz	a0,1a4c <WikiSort+0xec0>
    19a8:	00148493          	addi	s1,s1,1
    19ac:	fc8946e3          	blt	s2,s0,1978 <WikiSort+0xdec>
    19b0:	07812783          	lw	a5,120(sp)
    19b4:	07c12703          	lw	a4,124(sp)
    19b8:	00078493          	mv	s1,a5
    19bc:	94e7d2e3          	bge	a5,a4,1300 <WikiSort+0x774>
    19c0:	07c12903          	lw	s2,124(sp)
    19c4:	08012403          	lw	s0,128(sp)
    19c8:	07812a03          	lw	s4,120(sp)
    19cc:	03412783          	lw	a5,52(sp)
    19d0:	409a09b3          	sub	s3,s4,s1
    19d4:	00f48733          	add	a4,s1,a5
    19d8:	00f907b3          	add	a5,s2,a5
    19dc:	00371713          	slli	a4,a4,0x3
    19e0:	00379793          	slli	a5,a5,0x3
    19e4:	00ed0733          	add	a4,s10,a4
    19e8:	00fd07b3          	add	a5,s10,a5
    19ec:	02940463          	beq	s0,s1,1a14 <WikiSort+0xe88>
    19f0:	00072603          	lw	a2,0(a4)
    19f4:	00472683          	lw	a3,4(a4)
    19f8:	0047a583          	lw	a1,4(a5)
    19fc:	0007a503          	lw	a0,0(a5)
    1a00:	000c00e7          	jalr	s8
    1a04:	00050863          	beqz	a0,1a14 <WikiSort+0xe88>
    1a08:	fff48493          	addi	s1,s1,-1
    1a0c:	fd2a40e3          	blt	s4,s2,19cc <WikiSort+0xe40>
    1a10:	8f1ff06f          	j	1300 <WikiSort+0x774>
    1a14:	00098593          	mv	a1,s3
    1a18:	00198993          	addi	s3,s3,1
    1a1c:	00090693          	mv	a3,s2
    1a20:	ff2dae23          	sw	s2,-4(s11)
    1a24:	20000793          	li	a5,512
    1a28:	000d8713          	mv	a4,s11
    1a2c:	00048613          	mv	a2,s1
    1a30:	000d0513          	mv	a0,s10
    1a34:	41390933          	sub	s2,s2,s3
    1a38:	00048a13          	mv	s4,s1
    1a3c:	fe9dac23          	sw	s1,-8(s11)
    1a40:	d65fe0ef          	jal	ra,7a4 <Rotate>
    1a44:	f92a44e3          	blt	s4,s2,19cc <WikiSort+0xe40>
    1a48:	8b9ff06f          	j	1300 <WikiSort+0x774>
    1a4c:	001a0a13          	addi	s4,s4,1
    1a50:	00090613          	mv	a2,s2
    1a54:	409405b3          	sub	a1,s0,s1
    1a58:	ff2da823          	sw	s2,-16(s11)
    1a5c:	20000793          	li	a5,512
    1a60:	000d8713          	mv	a4,s11
    1a64:	00048693          	mv	a3,s1
    1a68:	000d0513          	mv	a0,s10
    1a6c:	01490933          	add	s2,s2,s4
    1a70:	00048413          	mv	s0,s1
    1a74:	fe9daa23          	sw	s1,-12(s11)
    1a78:	d2dfe0ef          	jal	ra,7a4 <Rotate>
    1a7c:	ee894ee3          	blt	s2,s0,1978 <WikiSort+0xdec>
    1a80:	f31ff06f          	j	19b0 <WikiSort+0xe24>
    1a84:	00078413          	mv	s0,a5
    1a88:	06812783          	lw	a5,104(sp)
    1a8c:	e0f41ce3          	bne	s0,a5,18a4 <WikiSort+0xd18>
    1a90:	01378733          	add	a4,a5,s3
    1a94:	08e12223          	sw	a4,132(sp)
    1a98:	02412703          	lw	a4,36(sp)
    1a9c:	05912223          	sw	s9,68(sp)
    1aa0:	03912c23          	sw	s9,56(sp)
    1aa4:	40f707b3          	sub	a5,a4,a5
    1aa8:	02f12823          	sw	a5,48(sp)
    1aac:	06812783          	lw	a5,104(sp)
    1ab0:	07912823          	sw	s9,112(sp)
    1ab4:	04f12a23          	sw	a5,84(sp)
    1ab8:	02412783          	lw	a5,36(sp)
    1abc:	06f12023          	sw	a5,96(sp)
    1ac0:	a71ff06f          	j	1530 <WikiSort+0x9a4>
    1ac4:	000a8793          	mv	a5,s5
    1ac8:	00048a93          	mv	s5,s1
    1acc:	00078493          	mv	s1,a5
    1ad0:	00070793          	mv	a5,a4
    1ad4:	06812703          	lw	a4,104(sp)
    1ad8:	02012403          	lw	s0,32(sp)
    1adc:	02812983          	lw	s3,40(sp)
    1ae0:	c4e796e3          	bne	a5,a4,172c <WikiSort+0xba0>
    1ae4:	019707b3          	add	a5,a4,s9
    1ae8:	08812703          	lw	a4,136(sp)
    1aec:	02412983          	lw	s3,36(sp)
    1af0:	06f12023          	sw	a5,96(sp)
    1af4:	01570b33          	add	s6,a4,s5
    1af8:	01970733          	add	a4,a4,s9
    1afc:	04e12223          	sw	a4,68(sp)
    1b00:	02f12c23          	sw	a5,56(sp)
    1b04:	09312223          	sw	s3,132(sp)
    1b08:	000a8413          	mv	s0,s5
    1b0c:	961ff06f          	j	146c <WikiSort+0x8e0>
    1b10:	00078413          	mv	s0,a5
    1b14:	06812783          	lw	a5,104(sp)
    1b18:	d8f41ce3          	bne	s0,a5,18b0 <WikiSort+0xd24>
    1b1c:	cedff06f          	j	1808 <WikiSort+0xc7c>
    1b20:	003a9993          	slli	s3,s5,0x3
    1b24:	013b89b3          	add	s3,s7,s3
    1b28:	00100b13          	li	s6,1
    1b2c:	d92ac2e3          	blt	s5,s2,18b0 <WikiSort+0xd24>
    1b30:	06c12d03          	lw	s10,108(sp)
    1b34:	0089a603          	lw	a2,8(s3)
    1b38:	0049a583          	lw	a1,4(s3)
    1b3c:	0009a503          	lw	a0,0(s3)
    1b40:	00c9a683          	lw	a3,12(s3)
    1b44:	00898493          	addi	s1,s3,8
    1b48:	000c00e7          	jalr	s8
    1b4c:	00051e63          	bnez	a0,1b68 <WikiSort+0xfdc>
    1b50:	0009a603          	lw	a2,0(s3)
    1b54:	0049a683          	lw	a3,4(s3)
    1b58:	0089a503          	lw	a0,8(s3)
    1b5c:	0044a583          	lw	a1,4(s1)
    1b60:	000c00e7          	jalr	s8
    1b64:	00050863          	beqz	a0,1b74 <WikiSort+0xfe8>
    1b68:	001b0793          	addi	a5,s6,1
    1b6c:	096d0463          	beq	s10,s6,1bf4 <WikiSort+0x1068>
    1b70:	00078b13          	mv	s6,a5
    1b74:	fffa8a93          	addi	s5,s5,-1
    1b78:	ff898993          	addi	s3,s3,-8
    1b7c:	fb2adce3          	bge	s5,s2,1b34 <WikiSort+0xfa8>
    1b80:	06812783          	lw	a5,104(sp)
    1b84:	d2fb16e3          	bne	s6,a5,18b0 <WikiSort+0xd24>
    1b88:	01978733          	add	a4,a5,s9
    1b8c:	06e12023          	sw	a4,96(sp)
    1b90:	01578733          	add	a4,a5,s5
    1b94:	08e12223          	sw	a4,132(sp)
    1b98:	02412703          	lw	a4,36(sp)
    1b9c:	00878b33          	add	s6,a5,s0
    1ba0:	000a8993          	mv	s3,s5
    1ba4:	40f707b3          	sub	a5,a4,a5
    1ba8:	02f12c23          	sw	a5,56(sp)
    1bac:	04e12223          	sw	a4,68(sp)
    1bb0:	8bdff06f          	j	146c <WikiSort+0x8e0>
    1bb4:	00100993          	li	s3,1
    1bb8:	889ff06f          	j	1440 <WikiSort+0x8b4>
    1bbc:	00001737          	lui	a4,0x1
    1bc0:	fffff7b7          	lui	a5,0xfffff
    1bc4:	00060693          	mv	a3,a2
    1bc8:	0a070713          	addi	a4,a4,160 # 10a0 <WikiSort+0x514>
    1bcc:	06412603          	lw	a2,100(sp)
    1bd0:	00f70733          	add	a4,a4,a5
    1bd4:	08010793          	addi	a5,sp,128
    1bd8:	00f707b3          	add	a5,a4,a5
    1bdc:	00000593          	li	a1,0
    1be0:	0007a023          	sw	zero,0(a5) # fffff000 <seed+0xfffed134>
    1be4:	00c7a223          	sw	a2,4(a5)
    1be8:	00f12e23          	sw	a5,28(sp)
    1bec:	9b9fe0ef          	jal	ra,5a4 <InsertionSort>
    1bf0:	f60ff06f          	j	1350 <WikiSort+0x7c4>
    1bf4:	00078b13          	mv	s6,a5
    1bf8:	06812783          	lw	a5,104(sp)
    1bfc:	cafb1ae3          	bne	s6,a5,18b0 <WikiSort+0xd24>
    1c00:	f89ff06f          	j	1b88 <WikiSort+0xffc>
    1c04:	00100413          	li	s0,1
    1c08:	c95ff06f          	j	189c <WikiSort+0xd10>
    1c0c:	04812a23          	sw	s0,84(sp)
    1c10:	07912823          	sw	s9,112(sp)
    1c14:	03912c23          	sw	s9,56(sp)
    1c18:	06f12023          	sw	a5,96(sp)
    1c1c:	05912223          	sw	s9,68(sp)
    1c20:	03312823          	sw	s3,48(sp)
    1c24:	90dff06f          	j	1530 <WikiSort+0x9a4>

00001c28 <benchmark_body>:
    1c28:	000107b7          	lui	a5,0x10
    1c2c:	43478793          	addi	a5,a5,1076 # 10434 <_global_impure_ptr+0x4>
    1c30:	0007ae03          	lw	t3,0(a5)
    1c34:	0047a303          	lw	t1,4(a5)
    1c38:	0087a883          	lw	a7,8(a5)
    1c3c:	00c7a803          	lw	a6,12(a5)
    1c40:	0107a583          	lw	a1,16(a5)
    1c44:	0147a603          	lw	a2,20(a5)
    1c48:	0187a683          	lw	a3,24(a5)
    1c4c:	01c7a703          	lw	a4,28(a5)
    1c50:	0207a783          	lw	a5,32(a5)
    1c54:	fa010113          	addi	sp,sp,-96
    1c58:	04112e23          	sw	ra,92(sp)
    1c5c:	04812c23          	sw	s0,88(sp)
    1c60:	04912a23          	sw	s1,84(sp)
    1c64:	05212823          	sw	s2,80(sp)
    1c68:	05312623          	sw	s3,76(sp)
    1c6c:	05412423          	sw	s4,72(sp)
    1c70:	05512223          	sw	s5,68(sp)
    1c74:	05612023          	sw	s6,64(sp)
    1c78:	03712e23          	sw	s7,60(sp)
    1c7c:	03812c23          	sw	s8,56(sp)
    1c80:	03912a23          	sw	s9,52(sp)
    1c84:	01c12623          	sw	t3,12(sp)
    1c88:	00612823          	sw	t1,16(sp)
    1c8c:	01112a23          	sw	a7,20(sp)
    1c90:	01012c23          	sw	a6,24(sp)
    1c94:	00b12e23          	sw	a1,28(sp)
    1c98:	02c12023          	sw	a2,32(sp)
    1c9c:	02d12223          	sw	a3,36(sp)
    1ca0:	02e12423          	sw	a4,40(sp)
    1ca4:	02f12623          	sw	a5,44(sp)
    1ca8:	06a05a63          	blez	a0,1d1c <benchmark_body+0xf4>
    1cac:	00011a37          	lui	s4,0x11
    1cb0:	00050c13          	mv	s8,a0
    1cb4:	00000c93          	li	s9,0
    1cb8:	238a0b13          	addi	s6,s4,568 # 11238 <array1>
    1cbc:	03010a93          	addi	s5,sp,48
    1cc0:	00000513          	li	a0,0
    1cc4:	1d0000ef          	jal	ra,1e94 <srand_beebs>
    1cc8:	00c10993          	addi	s3,sp,12
    1ccc:	0009a903          	lw	s2,0(s3)
    1cd0:	000b0493          	mv	s1,s6
    1cd4:	00000413          	li	s0,0
    1cd8:	00040513          	mv	a0,s0
    1cdc:	19000593          	li	a1,400
    1ce0:	000900e7          	jalr	s2
    1ce4:	00a4a023          	sw	a0,0(s1)
    1ce8:	0084a223          	sw	s0,4(s1)
    1cec:	19000793          	li	a5,400
    1cf0:	00140413          	addi	s0,s0,1
    1cf4:	00848493          	addi	s1,s1,8
    1cf8:	fef410e3          	bne	s0,a5,1cd8 <benchmark_body+0xb0>
    1cfc:	00498993          	addi	s3,s3,4
    1d00:	15000613          	li	a2,336
    1d04:	19000593          	li	a1,400
    1d08:	238a0513          	addi	a0,s4,568
    1d0c:	e81fe0ef          	jal	ra,b8c <WikiSort>
    1d10:	fb599ee3          	bne	s3,s5,1ccc <benchmark_body+0xa4>
    1d14:	001c8c93          	addi	s9,s9,1
    1d18:	fb9c14e3          	bne	s8,s9,1cc0 <benchmark_body+0x98>
    1d1c:	05c12083          	lw	ra,92(sp)
    1d20:	05812403          	lw	s0,88(sp)
    1d24:	05412483          	lw	s1,84(sp)
    1d28:	05012903          	lw	s2,80(sp)
    1d2c:	04c12983          	lw	s3,76(sp)
    1d30:	04812a03          	lw	s4,72(sp)
    1d34:	04412a83          	lw	s5,68(sp)
    1d38:	04012b03          	lw	s6,64(sp)
    1d3c:	03c12b83          	lw	s7,60(sp)
    1d40:	03812c03          	lw	s8,56(sp)
    1d44:	03412c83          	lw	s9,52(sp)
    1d48:	00000513          	li	a0,0
    1d4c:	06010113          	addi	sp,sp,96
    1d50:	00008067          	ret

00001d54 <verify_benchmark>:
    1d54:	81010113          	addi	sp,sp,-2032
    1d58:	000016b7          	lui	a3,0x1
    1d5c:	fffff737          	lui	a4,0xfffff
    1d60:	7e112623          	sw	ra,2028(sp)
    1d64:	c8068693          	addi	a3,a3,-896 # c80 <WikiSort+0xf4>
    1d68:	b5010113          	addi	sp,sp,-1200
    1d6c:	00e686b3          	add	a3,a3,a4
    1d70:	01010713          	addi	a4,sp,16
    1d74:	00e68733          	add	a4,a3,a4
    1d78:	000107b7          	lui	a5,0x10
    1d7c:	000016b7          	lui	a3,0x1
    1d80:	45878793          	addi	a5,a5,1112 # 10458 <_global_impure_ptr+0x28>
    1d84:	c8068693          	addi	a3,a3,-896 # c80 <WikiSort+0xf4>
    1d88:	00e12623          	sw	a4,12(sp)
    1d8c:	00d786b3          	add	a3,a5,a3
    1d90:	38070713          	addi	a4,a4,896 # fffff380 <seed+0xfffed4b4>
    1d94:	0007a803          	lw	a6,0(a5)
    1d98:	0047a503          	lw	a0,4(a5)
    1d9c:	0087a583          	lw	a1,8(a5)
    1da0:	00c7a603          	lw	a2,12(a5)
    1da4:	01072023          	sw	a6,0(a4)
    1da8:	00a72223          	sw	a0,4(a4)
    1dac:	00b72423          	sw	a1,8(a4)
    1db0:	00c72623          	sw	a2,12(a4)
    1db4:	01078793          	addi	a5,a5,16
    1db8:	01070713          	addi	a4,a4,16
    1dbc:	fcd79ce3          	bne	a5,a3,1d94 <verify_benchmark+0x40>
    1dc0:	00001637          	lui	a2,0x1
    1dc4:	fffff5b7          	lui	a1,0xfffff
    1dc8:	c8060613          	addi	a2,a2,-896 # c80 <WikiSort+0xf4>
    1dcc:	38058593          	addi	a1,a1,896 # fffff380 <seed+0xfffed4b4>
    1dd0:	01010713          	addi	a4,sp,16
    1dd4:	00b607b3          	add	a5,a2,a1
    1dd8:	00011537          	lui	a0,0x11
    1ddc:	00e785b3          	add	a1,a5,a4
    1de0:	23850513          	addi	a0,a0,568 # 11238 <array1>
    1de4:	750020ef          	jal	ra,4534 <memcmp>
    1de8:	4b010113          	addi	sp,sp,1200
    1dec:	7ec12083          	lw	ra,2028(sp)
    1df0:	00153513          	seqz	a0,a0
    1df4:	7f010113          	addi	sp,sp,2032
    1df8:	00008067          	ret

00001dfc <initialise_benchmark>:
    1dfc:	00008067          	ret

00001e00 <warm_caches>:
    1e00:	ff010113          	addi	sp,sp,-16
    1e04:	00112623          	sw	ra,12(sp)
    1e08:	e21ff0ef          	jal	ra,1c28 <benchmark_body>
    1e0c:	00c12083          	lw	ra,12(sp)
    1e10:	01010113          	addi	sp,sp,16
    1e14:	00008067          	ret

00001e18 <benchmark>:
    1e18:	ff010113          	addi	sp,sp,-16
    1e1c:	0c800513          	li	a0,200
    1e20:	00112623          	sw	ra,12(sp)
    1e24:	e05ff0ef          	jal	ra,1c28 <benchmark_body>
    1e28:	00c12083          	lw	ra,12(sp)
    1e2c:	01010113          	addi	sp,sp,16
    1e30:	00008067          	ret

00001e34 <rand_beebs>:
    1e34:	000126b7          	lui	a3,0x12
    1e38:	ecc6a703          	lw	a4,-308(a3) # 11ecc <seed>
    1e3c:	00871793          	slli	a5,a4,0x8
    1e40:	40e787b3          	sub	a5,a5,a4
    1e44:	00379793          	slli	a5,a5,0x3
    1e48:	00e787b3          	add	a5,a5,a4
    1e4c:	00779793          	slli	a5,a5,0x7
    1e50:	00e787b3          	add	a5,a5,a4
    1e54:	00379793          	slli	a5,a5,0x3
    1e58:	40e787b3          	sub	a5,a5,a4
    1e5c:	00579613          	slli	a2,a5,0x5
    1e60:	00c78533          	add	a0,a5,a2
    1e64:	00251513          	slli	a0,a0,0x2
    1e68:	40e50533          	sub	a0,a0,a4
    1e6c:	00251513          	slli	a0,a0,0x2
    1e70:	000037b7          	lui	a5,0x3
    1e74:	00e50533          	add	a0,a0,a4
    1e78:	03978793          	addi	a5,a5,57 # 3039 <__divdf3+0x529>
    1e7c:	00f50533          	add	a0,a0,a5
    1e80:	00151513          	slli	a0,a0,0x1
    1e84:	00155513          	srli	a0,a0,0x1
    1e88:	eca6a623          	sw	a0,-308(a3)
    1e8c:	01055513          	srli	a0,a0,0x10
    1e90:	00008067          	ret

00001e94 <srand_beebs>:
    1e94:	000127b7          	lui	a5,0x12
    1e98:	eca7a623          	sw	a0,-308(a5) # 11ecc <seed>
    1e9c:	00008067          	ret

00001ea0 <init_heap_beebs>:
    1ea0:	000127b7          	lui	a5,0x12
    1ea4:	00b505b3          	add	a1,a0,a1
    1ea8:	eca7a423          	sw	a0,-312(a5) # 11ec8 <heap_ptr>
    1eac:	000127b7          	lui	a5,0x12
    1eb0:	ecb7a223          	sw	a1,-316(a5) # 11ec4 <heap_end>
    1eb4:	000127b7          	lui	a5,0x12
    1eb8:	ec07a023          	sw	zero,-320(a5) # 11ec0 <heap_requested>
    1ebc:	00008067          	ret

00001ec0 <check_heap_beebs>:
    1ec0:	000127b7          	lui	a5,0x12
    1ec4:	ec07a703          	lw	a4,-320(a5) # 11ec0 <heap_requested>
    1ec8:	000127b7          	lui	a5,0x12
    1ecc:	ec47a783          	lw	a5,-316(a5) # 11ec4 <heap_end>
    1ed0:	00e50533          	add	a0,a0,a4
    1ed4:	00a7b533          	sltu	a0,a5,a0
    1ed8:	00154513          	xori	a0,a0,1
    1edc:	00008067          	ret

00001ee0 <malloc_beebs>:
    1ee0:	000126b7          	lui	a3,0x12
    1ee4:	ec06a783          	lw	a5,-320(a3) # 11ec0 <heap_requested>
    1ee8:	00012637          	lui	a2,0x12
    1eec:	ec862703          	lw	a4,-312(a2) # 11ec8 <heap_ptr>
    1ef0:	000125b7          	lui	a1,0x12
    1ef4:	ec45a583          	lw	a1,-316(a1) # 11ec4 <heap_end>
    1ef8:	00a787b3          	add	a5,a5,a0
    1efc:	ecf6a023          	sw	a5,-320(a3)
    1f00:	00a707b3          	add	a5,a4,a0
    1f04:	00f5ea63          	bltu	a1,a5,1f18 <malloc_beebs+0x38>
    1f08:	00050863          	beqz	a0,1f18 <malloc_beebs+0x38>
    1f0c:	ecf62423          	sw	a5,-312(a2)
    1f10:	00070513          	mv	a0,a4
    1f14:	00008067          	ret
    1f18:	00000713          	li	a4,0
    1f1c:	00070513          	mv	a0,a4
    1f20:	00008067          	ret

00001f24 <calloc_beebs>:
    1f24:	ff010113          	addi	sp,sp,-16
    1f28:	00112623          	sw	ra,12(sp)
    1f2c:	4d8020ef          	jal	ra,4404 <__mulsi3>
    1f30:	000126b7          	lui	a3,0x12
    1f34:	ec06a703          	lw	a4,-320(a3) # 11ec0 <heap_requested>
    1f38:	000125b7          	lui	a1,0x12
    1f3c:	00050613          	mv	a2,a0
    1f40:	ec85a783          	lw	a5,-312(a1) # 11ec8 <heap_ptr>
    1f44:	00012537          	lui	a0,0x12
    1f48:	ec452503          	lw	a0,-316(a0) # 11ec4 <heap_end>
    1f4c:	00c70733          	add	a4,a4,a2
    1f50:	ece6a023          	sw	a4,-320(a3)
    1f54:	00c78733          	add	a4,a5,a2
    1f58:	02e56863          	bltu	a0,a4,1f88 <calloc_beebs+0x64>
    1f5c:	02060663          	beqz	a2,1f88 <calloc_beebs+0x64>
    1f60:	ece5a423          	sw	a4,-312(a1)
    1f64:	00078a63          	beqz	a5,1f78 <calloc_beebs+0x54>
    1f68:	00078513          	mv	a0,a5
    1f6c:	00000593          	li	a1,0
    1f70:	0d5020ef          	jal	ra,4844 <memset>
    1f74:	00050793          	mv	a5,a0
    1f78:	00c12083          	lw	ra,12(sp)
    1f7c:	00078513          	mv	a0,a5
    1f80:	01010113          	addi	sp,sp,16
    1f84:	00008067          	ret
    1f88:	00c12083          	lw	ra,12(sp)
    1f8c:	00000793          	li	a5,0
    1f90:	00078513          	mv	a0,a5
    1f94:	01010113          	addi	sp,sp,16
    1f98:	00008067          	ret

00001f9c <realloc_beebs>:
    1f9c:	00012737          	lui	a4,0x12
    1fa0:	ec072783          	lw	a5,-320(a4) # 11ec0 <heap_requested>
    1fa4:	00012637          	lui	a2,0x12
    1fa8:	ec862683          	lw	a3,-312(a2) # 11ec8 <heap_ptr>
    1fac:	00012837          	lui	a6,0x12
    1fb0:	ec482803          	lw	a6,-316(a6) # 11ec4 <heap_end>
    1fb4:	00b787b3          	add	a5,a5,a1
    1fb8:	ecf72023          	sw	a5,-320(a4)
    1fbc:	00b687b3          	add	a5,a3,a1
    1fc0:	02f86a63          	bltu	a6,a5,1ff4 <realloc_beebs+0x58>
    1fc4:	02058863          	beqz	a1,1ff4 <realloc_beebs+0x58>
    1fc8:	ecf62423          	sw	a5,-312(a2)
    1fcc:	02050063          	beqz	a0,1fec <realloc_beebs+0x50>
    1fd0:	00068793          	mv	a5,a3
    1fd4:	00b505b3          	add	a1,a0,a1
    1fd8:	00054703          	lbu	a4,0(a0)
    1fdc:	00150513          	addi	a0,a0,1
    1fe0:	00178793          	addi	a5,a5,1
    1fe4:	fee78fa3          	sb	a4,-1(a5)
    1fe8:	feb518e3          	bne	a0,a1,1fd8 <realloc_beebs+0x3c>
    1fec:	00068513          	mv	a0,a3
    1ff0:	00008067          	ret
    1ff4:	00000693          	li	a3,0
    1ff8:	00068513          	mv	a0,a3
    1ffc:	00008067          	ret

00002000 <free_beebs>:
    2000:	00008067          	ret

00002004 <sqrt>:
    2004:	fe010113          	addi	sp,sp,-32
    2008:	00112e23          	sw	ra,28(sp)
    200c:	00812c23          	sw	s0,24(sp)
    2010:	00912a23          	sw	s1,20(sp)
    2014:	01212823          	sw	s2,16(sp)
    2018:	01312623          	sw	s3,12(sp)
    201c:	00050493          	mv	s1,a0
    2020:	00058413          	mv	s0,a1
    2024:	08c000ef          	jal	ra,20b0 <__ieee754_sqrt>
    2028:	00050993          	mv	s3,a0
    202c:	00058913          	mv	s2,a1
    2030:	00048613          	mv	a2,s1
    2034:	00040693          	mv	a3,s0
    2038:	00048513          	mv	a0,s1
    203c:	00040593          	mv	a1,s0
    2040:	250020ef          	jal	ra,4290 <__unorddf2>
    2044:	00051e63          	bnez	a0,2060 <sqrt+0x5c>
    2048:	00000613          	li	a2,0
    204c:	00000693          	li	a3,0
    2050:	00048513          	mv	a0,s1
    2054:	00040593          	mv	a1,s0
    2058:	298010ef          	jal	ra,32f0 <__ledf2>
    205c:	02054463          	bltz	a0,2084 <sqrt+0x80>
    2060:	00098513          	mv	a0,s3
    2064:	00090593          	mv	a1,s2
    2068:	01c12083          	lw	ra,28(sp)
    206c:	01812403          	lw	s0,24(sp)
    2070:	01412483          	lw	s1,20(sp)
    2074:	01012903          	lw	s2,16(sp)
    2078:	00c12983          	lw	s3,12(sp)
    207c:	02010113          	addi	sp,sp,32
    2080:	00008067          	ret
    2084:	4a4020ef          	jal	ra,4528 <__errno>
    2088:	02100793          	li	a5,33
    208c:	00f52023          	sw	a5,0(a0)
    2090:	00000613          	li	a2,0
    2094:	00000693          	li	a3,0
    2098:	00060513          	mv	a0,a2
    209c:	00068593          	mv	a1,a3
    20a0:	271000ef          	jal	ra,2b10 <__divdf3>
    20a4:	00050993          	mv	s3,a0
    20a8:	00058913          	mv	s2,a1
    20ac:	fb5ff06f          	j	2060 <sqrt+0x5c>

000020b0 <__ieee754_sqrt>:
    20b0:	ff010113          	addi	sp,sp,-16
    20b4:	00112623          	sw	ra,12(sp)
    20b8:	00812423          	sw	s0,8(sp)
    20bc:	00912223          	sw	s1,4(sp)
    20c0:	00050493          	mv	s1,a0
    20c4:	00058413          	mv	s0,a1
    20c8:	7ff006b7          	lui	a3,0x7ff00
    20cc:	00b6f633          	and	a2,a3,a1
    20d0:	06d60663          	beq	a2,a3,213c <__ieee754_sqrt+0x8c>
    20d4:	00058793          	mv	a5,a1
    20d8:	00050713          	mv	a4,a0
    20dc:	08b05463          	blez	a1,2164 <__ieee754_sqrt+0xb4>
    20e0:	4145de93          	srai	t4,a1,0x14
    20e4:	120e8063          	beqz	t4,2204 <__ieee754_sqrt+0x154>
    20e8:	c01e8e93          	addi	t4,t4,-1023
    20ec:	001006b7          	lui	a3,0x100
    20f0:	fff68613          	addi	a2,a3,-1 # fffff <seed+0xee133>
    20f4:	00c7f7b3          	and	a5,a5,a2
    20f8:	00d7e6b3          	or	a3,a5,a3
    20fc:	001ef793          	andi	a5,t4,1
    2100:	00078a63          	beqz	a5,2114 <__ieee754_sqrt+0x64>
    2104:	01f75793          	srli	a5,a4,0x1f
    2108:	00169693          	slli	a3,a3,0x1
    210c:	00d786b3          	add	a3,a5,a3
    2110:	00171713          	slli	a4,a4,0x1
    2114:	401ede93          	srai	t4,t4,0x1
    2118:	01f75793          	srli	a5,a4,0x1f
    211c:	00169693          	slli	a3,a3,0x1
    2120:	00d787b3          	add	a5,a5,a3
    2124:	00171713          	slli	a4,a4,0x1
    2128:	01600593          	li	a1,22
    212c:	00000e13          	li	t3,0
    2130:	00000693          	li	a3,0
    2134:	00200637          	lui	a2,0x200
    2138:	0f80006f          	j	2230 <__ieee754_sqrt+0x180>
    213c:	00050613          	mv	a2,a0
    2140:	00058693          	mv	a3,a1
    2144:	00048513          	mv	a0,s1
    2148:	00040593          	mv	a1,s0
    214c:	288010ef          	jal	ra,33d4 <__muldf3>
    2150:	00048613          	mv	a2,s1
    2154:	00040693          	mv	a3,s0
    2158:	1dc000ef          	jal	ra,2334 <__adddf3>
    215c:	00050693          	mv	a3,a0
    2160:	1b00006f          	j	2310 <__ieee754_sqrt+0x260>
    2164:	00159613          	slli	a2,a1,0x1
    2168:	00165613          	srli	a2,a2,0x1
    216c:	00a66633          	or	a2,a2,a0
    2170:	00050693          	mv	a3,a0
    2174:	18060e63          	beqz	a2,2310 <__ieee754_sqrt+0x260>
    2178:	0605c263          	bltz	a1,21dc <__ieee754_sqrt+0x12c>
    217c:	4145de93          	srai	t4,a1,0x14
    2180:	f60e94e3          	bnez	t4,20e8 <__ieee754_sqrt+0x38>
    2184:	02059063          	bnez	a1,21a4 <__ieee754_sqrt+0xf4>
    2188:	00058e93          	mv	t4,a1
    218c:	febe8e93          	addi	t4,t4,-21
    2190:	00b75793          	srli	a5,a4,0xb
    2194:	01571713          	slli	a4,a4,0x15
    2198:	fe078ae3          	beqz	a5,218c <__ieee754_sqrt+0xdc>
    219c:	0147d693          	srli	a3,a5,0x14
    21a0:	06069663          	bnez	a3,220c <__ieee754_sqrt+0x15c>
    21a4:	00000593          	li	a1,0
    21a8:	00100637          	lui	a2,0x100
    21ac:	00179793          	slli	a5,a5,0x1
    21b0:	00158593          	addi	a1,a1,1
    21b4:	00c7f6b3          	and	a3,a5,a2
    21b8:	fe068ae3          	beqz	a3,21ac <__ieee754_sqrt+0xfc>
    21bc:	fff58693          	addi	a3,a1,-1
    21c0:	40de8eb3          	sub	t4,t4,a3
    21c4:	02000693          	li	a3,32
    21c8:	40b686b3          	sub	a3,a3,a1
    21cc:	00d756b3          	srl	a3,a4,a3
    21d0:	00f6e7b3          	or	a5,a3,a5
    21d4:	00b71733          	sll	a4,a4,a1
    21d8:	f11ff06f          	j	20e8 <__ieee754_sqrt+0x38>
    21dc:	00050613          	mv	a2,a0
    21e0:	00058693          	mv	a3,a1
    21e4:	00048513          	mv	a0,s1
    21e8:	00040593          	mv	a1,s0
    21ec:	0b5010ef          	jal	ra,3aa0 <__subdf3>
    21f0:	00050613          	mv	a2,a0
    21f4:	00058693          	mv	a3,a1
    21f8:	119000ef          	jal	ra,2b10 <__divdf3>
    21fc:	00050693          	mv	a3,a0
    2200:	1100006f          	j	2310 <__ieee754_sqrt+0x260>
    2204:	00040793          	mv	a5,s0
    2208:	f9dff06f          	j	21a4 <__ieee754_sqrt+0xf4>
    220c:	00040593          	mv	a1,s0
    2210:	fadff06f          	j	21bc <__ieee754_sqrt+0x10c>
    2214:	01f75513          	srli	a0,a4,0x1f
    2218:	00179793          	slli	a5,a5,0x1
    221c:	00f507b3          	add	a5,a0,a5
    2220:	00171713          	slli	a4,a4,0x1
    2224:	00165613          	srli	a2,a2,0x1
    2228:	fff58593          	addi	a1,a1,-1
    222c:	00058e63          	beqz	a1,2248 <__ieee754_sqrt+0x198>
    2230:	00c68533          	add	a0,a3,a2
    2234:	fea7c0e3          	blt	a5,a0,2214 <__ieee754_sqrt+0x164>
    2238:	00c506b3          	add	a3,a0,a2
    223c:	40a787b3          	sub	a5,a5,a0
    2240:	00ce0e33          	add	t3,t3,a2
    2244:	fd1ff06f          	j	2214 <__ieee754_sqrt+0x164>
    2248:	00058313          	mv	t1,a1
    224c:	02000813          	li	a6,32
    2250:	80000637          	lui	a2,0x80000
    2254:	0440006f          	j	2298 <__ieee754_sqrt+0x1e8>
    2258:	00c505b3          	add	a1,a0,a2
    225c:	00068893          	mv	a7,a3
    2260:	04054e63          	bltz	a0,22bc <__ieee754_sqrt+0x20c>
    2264:	40d787b3          	sub	a5,a5,a3
    2268:	00a736b3          	sltu	a3,a4,a0
    226c:	40d787b3          	sub	a5,a5,a3
    2270:	40a70733          	sub	a4,a4,a0
    2274:	00c30333          	add	t1,t1,a2
    2278:	00088693          	mv	a3,a7
    227c:	01f75513          	srli	a0,a4,0x1f
    2280:	00179793          	slli	a5,a5,0x1
    2284:	00f507b3          	add	a5,a0,a5
    2288:	00171713          	slli	a4,a4,0x1
    228c:	00165613          	srli	a2,a2,0x1
    2290:	fff80813          	addi	a6,a6,-1
    2294:	02080c63          	beqz	a6,22cc <__ieee754_sqrt+0x21c>
    2298:	00b60533          	add	a0,a2,a1
    229c:	faf6cee3          	blt	a3,a5,2258 <__ieee754_sqrt+0x1a8>
    22a0:	fcd79ee3          	bne	a5,a3,227c <__ieee754_sqrt+0x1cc>
    22a4:	fca76ce3          	bltu	a4,a0,227c <__ieee754_sqrt+0x1cc>
    22a8:	00c505b3          	add	a1,a0,a2
    22ac:	00054863          	bltz	a0,22bc <__ieee754_sqrt+0x20c>
    22b0:	40d787b3          	sub	a5,a5,a3
    22b4:	00068893          	mv	a7,a3
    22b8:	fb9ff06f          	j	2270 <__ieee754_sqrt+0x1c0>
    22bc:	fff5c893          	not	a7,a1
    22c0:	01f8d893          	srli	a7,a7,0x1f
    22c4:	011688b3          	add	a7,a3,a7
    22c8:	f9dff06f          	j	2264 <__ieee754_sqrt+0x1b4>
    22cc:	00e7e533          	or	a0,a5,a4
    22d0:	00050a63          	beqz	a0,22e4 <__ieee754_sqrt+0x234>
    22d4:	fff00793          	li	a5,-1
    22d8:	04f30863          	beq	t1,a5,2328 <__ieee754_sqrt+0x278>
    22dc:	00130313          	addi	t1,t1,1
    22e0:	ffe37313          	andi	t1,t1,-2
    22e4:	401e5793          	srai	a5,t3,0x1
    22e8:	3fe00737          	lui	a4,0x3fe00
    22ec:	00e787b3          	add	a5,a5,a4
    22f0:	00135313          	srli	t1,t1,0x1
    22f4:	001e7e13          	andi	t3,t3,1
    22f8:	000e0663          	beqz	t3,2304 <__ieee754_sqrt+0x254>
    22fc:	80000737          	lui	a4,0x80000
    2300:	00e36333          	or	t1,t1,a4
    2304:	014e9e93          	slli	t4,t4,0x14
    2308:	00030693          	mv	a3,t1
    230c:	00fe85b3          	add	a1,t4,a5
    2310:	00068513          	mv	a0,a3
    2314:	00c12083          	lw	ra,12(sp)
    2318:	00812403          	lw	s0,8(sp)
    231c:	00412483          	lw	s1,4(sp)
    2320:	01010113          	addi	sp,sp,16
    2324:	00008067          	ret
    2328:	001e0e13          	addi	t3,t3,1
    232c:	00080313          	mv	t1,a6
    2330:	fb5ff06f          	j	22e4 <__ieee754_sqrt+0x234>

00002334 <__adddf3>:
    2334:	00100837          	lui	a6,0x100
    2338:	fff80813          	addi	a6,a6,-1 # fffff <seed+0xee133>
    233c:	fe010113          	addi	sp,sp,-32
    2340:	00b878b3          	and	a7,a6,a1
    2344:	0145d713          	srli	a4,a1,0x14
    2348:	01d55793          	srli	a5,a0,0x1d
    234c:	00d87833          	and	a6,a6,a3
    2350:	00812c23          	sw	s0,24(sp)
    2354:	7ff77413          	andi	s0,a4,2047
    2358:	00389713          	slli	a4,a7,0x3
    235c:	0146d893          	srli	a7,a3,0x14
    2360:	00381813          	slli	a6,a6,0x3
    2364:	00912a23          	sw	s1,20(sp)
    2368:	00e7e7b3          	or	a5,a5,a4
    236c:	7ff8f893          	andi	a7,a7,2047
    2370:	01d65713          	srli	a4,a2,0x1d
    2374:	00112e23          	sw	ra,28(sp)
    2378:	01212823          	sw	s2,16(sp)
    237c:	01312623          	sw	s3,12(sp)
    2380:	01f5d493          	srli	s1,a1,0x1f
    2384:	01f6d693          	srli	a3,a3,0x1f
    2388:	01076733          	or	a4,a4,a6
    238c:	00351513          	slli	a0,a0,0x3
    2390:	00361613          	slli	a2,a2,0x3
    2394:	41140833          	sub	a6,s0,a7
    2398:	2cd49863          	bne	s1,a3,2668 <__adddf3+0x334>
    239c:	13005063          	blez	a6,24bc <__adddf3+0x188>
    23a0:	04089063          	bnez	a7,23e0 <__adddf3+0xac>
    23a4:	00c766b3          	or	a3,a4,a2
    23a8:	70068e63          	beqz	a3,2ac4 <__adddf3+0x790>
    23ac:	fff80593          	addi	a1,a6,-1
    23b0:	02059063          	bnez	a1,23d0 <__adddf3+0x9c>
    23b4:	00c50633          	add	a2,a0,a2
    23b8:	00e78733          	add	a4,a5,a4
    23bc:	00a637b3          	sltu	a5,a2,a0
    23c0:	00f707b3          	add	a5,a4,a5
    23c4:	00060513          	mv	a0,a2
    23c8:	00100413          	li	s0,1
    23cc:	0700006f          	j	243c <__adddf3+0x108>
    23d0:	7ff00693          	li	a3,2047
    23d4:	02d81063          	bne	a6,a3,23f4 <__adddf3+0xc0>
    23d8:	7ff00413          	li	s0,2047
    23dc:	2140006f          	j	25f0 <__adddf3+0x2bc>
    23e0:	7ff00693          	li	a3,2047
    23e4:	20d40663          	beq	s0,a3,25f0 <__adddf3+0x2bc>
    23e8:	008006b7          	lui	a3,0x800
    23ec:	00d76733          	or	a4,a4,a3
    23f0:	00080593          	mv	a1,a6
    23f4:	03800693          	li	a3,56
    23f8:	0ab6cc63          	blt	a3,a1,24b0 <__adddf3+0x17c>
    23fc:	01f00693          	li	a3,31
    2400:	06b6ce63          	blt	a3,a1,247c <__adddf3+0x148>
    2404:	02000813          	li	a6,32
    2408:	40b80833          	sub	a6,a6,a1
    240c:	010716b3          	sll	a3,a4,a6
    2410:	00b658b3          	srl	a7,a2,a1
    2414:	01061833          	sll	a6,a2,a6
    2418:	0116e6b3          	or	a3,a3,a7
    241c:	01003833          	snez	a6,a6
    2420:	0106e6b3          	or	a3,a3,a6
    2424:	00b755b3          	srl	a1,a4,a1
    2428:	00a686b3          	add	a3,a3,a0
    242c:	00f585b3          	add	a1,a1,a5
    2430:	00a6b7b3          	sltu	a5,a3,a0
    2434:	00f587b3          	add	a5,a1,a5
    2438:	00068513          	mv	a0,a3
    243c:	00800737          	lui	a4,0x800
    2440:	00e7f733          	and	a4,a5,a4
    2444:	1a070663          	beqz	a4,25f0 <__adddf3+0x2bc>
    2448:	00140413          	addi	s0,s0,1
    244c:	7ff00713          	li	a4,2047
    2450:	5ce40a63          	beq	s0,a4,2a24 <__adddf3+0x6f0>
    2454:	ff800737          	lui	a4,0xff800
    2458:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    245c:	00e7f7b3          	and	a5,a5,a4
    2460:	00155713          	srli	a4,a0,0x1
    2464:	00157513          	andi	a0,a0,1
    2468:	00a76733          	or	a4,a4,a0
    246c:	01f79513          	slli	a0,a5,0x1f
    2470:	00e56533          	or	a0,a0,a4
    2474:	0017d793          	srli	a5,a5,0x1
    2478:	1780006f          	j	25f0 <__adddf3+0x2bc>
    247c:	fe058693          	addi	a3,a1,-32
    2480:	02000893          	li	a7,32
    2484:	00d756b3          	srl	a3,a4,a3
    2488:	00000813          	li	a6,0
    248c:	01158863          	beq	a1,a7,249c <__adddf3+0x168>
    2490:	04000813          	li	a6,64
    2494:	40b80833          	sub	a6,a6,a1
    2498:	01071833          	sll	a6,a4,a6
    249c:	00c86833          	or	a6,a6,a2
    24a0:	01003833          	snez	a6,a6
    24a4:	0106e6b3          	or	a3,a3,a6
    24a8:	00000593          	li	a1,0
    24ac:	f7dff06f          	j	2428 <__adddf3+0xf4>
    24b0:	00c766b3          	or	a3,a4,a2
    24b4:	00d036b3          	snez	a3,a3
    24b8:	ff1ff06f          	j	24a8 <__adddf3+0x174>
    24bc:	0e080263          	beqz	a6,25a0 <__adddf3+0x26c>
    24c0:	408885b3          	sub	a1,a7,s0
    24c4:	02041e63          	bnez	s0,2500 <__adddf3+0x1cc>
    24c8:	00a7e6b3          	or	a3,a5,a0
    24cc:	52068c63          	beqz	a3,2a04 <__adddf3+0x6d0>
    24d0:	fff58693          	addi	a3,a1,-1
    24d4:	00069c63          	bnez	a3,24ec <__adddf3+0x1b8>
    24d8:	00c50533          	add	a0,a0,a2
    24dc:	00e78733          	add	a4,a5,a4
    24e0:	00c53633          	sltu	a2,a0,a2
    24e4:	00c707b3          	add	a5,a4,a2
    24e8:	ee1ff06f          	j	23c8 <__adddf3+0x94>
    24ec:	7ff00813          	li	a6,2047
    24f0:	03059263          	bne	a1,a6,2514 <__adddf3+0x1e0>
    24f4:	00070793          	mv	a5,a4
    24f8:	00060513          	mv	a0,a2
    24fc:	eddff06f          	j	23d8 <__adddf3+0xa4>
    2500:	7ff00693          	li	a3,2047
    2504:	fed888e3          	beq	a7,a3,24f4 <__adddf3+0x1c0>
    2508:	008006b7          	lui	a3,0x800
    250c:	00d7e7b3          	or	a5,a5,a3
    2510:	00058693          	mv	a3,a1
    2514:	03800593          	li	a1,56
    2518:	06d5ce63          	blt	a1,a3,2594 <__adddf3+0x260>
    251c:	01f00593          	li	a1,31
    2520:	04d5c063          	blt	a1,a3,2560 <__adddf3+0x22c>
    2524:	02000813          	li	a6,32
    2528:	40d80833          	sub	a6,a6,a3
    252c:	010795b3          	sll	a1,a5,a6
    2530:	00d55333          	srl	t1,a0,a3
    2534:	01051833          	sll	a6,a0,a6
    2538:	0065e5b3          	or	a1,a1,t1
    253c:	01003833          	snez	a6,a6
    2540:	0105e5b3          	or	a1,a1,a6
    2544:	00d7d6b3          	srl	a3,a5,a3
    2548:	00c58533          	add	a0,a1,a2
    254c:	00e686b3          	add	a3,a3,a4
    2550:	00c53633          	sltu	a2,a0,a2
    2554:	00c687b3          	add	a5,a3,a2
    2558:	00088413          	mv	s0,a7
    255c:	ee1ff06f          	j	243c <__adddf3+0x108>
    2560:	fe068593          	addi	a1,a3,-32 # 7fffe0 <seed+0x7ee114>
    2564:	02000313          	li	t1,32
    2568:	00b7d5b3          	srl	a1,a5,a1
    256c:	00000813          	li	a6,0
    2570:	00668863          	beq	a3,t1,2580 <__adddf3+0x24c>
    2574:	04000813          	li	a6,64
    2578:	40d80833          	sub	a6,a6,a3
    257c:	01079833          	sll	a6,a5,a6
    2580:	00a86833          	or	a6,a6,a0
    2584:	01003833          	snez	a6,a6
    2588:	0105e5b3          	or	a1,a1,a6
    258c:	00000693          	li	a3,0
    2590:	fb9ff06f          	j	2548 <__adddf3+0x214>
    2594:	00a7e5b3          	or	a1,a5,a0
    2598:	00b035b3          	snez	a1,a1
    259c:	ff1ff06f          	j	258c <__adddf3+0x258>
    25a0:	00140693          	addi	a3,s0,1
    25a4:	7fe6f593          	andi	a1,a3,2046
    25a8:	08059863          	bnez	a1,2638 <__adddf3+0x304>
    25ac:	00a7e6b3          	or	a3,a5,a0
    25b0:	06041463          	bnez	s0,2618 <__adddf3+0x2e4>
    25b4:	46068063          	beqz	a3,2a14 <__adddf3+0x6e0>
    25b8:	00c766b3          	or	a3,a4,a2
    25bc:	02068a63          	beqz	a3,25f0 <__adddf3+0x2bc>
    25c0:	00c50633          	add	a2,a0,a2
    25c4:	00e78733          	add	a4,a5,a4
    25c8:	00a637b3          	sltu	a5,a2,a0
    25cc:	00f707b3          	add	a5,a4,a5
    25d0:	00800737          	lui	a4,0x800
    25d4:	00e7f733          	and	a4,a5,a4
    25d8:	00060513          	mv	a0,a2
    25dc:	00070a63          	beqz	a4,25f0 <__adddf3+0x2bc>
    25e0:	ff800737          	lui	a4,0xff800
    25e4:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    25e8:	00e7f7b3          	and	a5,a5,a4
    25ec:	00100413          	li	s0,1
    25f0:	00757713          	andi	a4,a0,7
    25f4:	42070c63          	beqz	a4,2a2c <__adddf3+0x6f8>
    25f8:	00f57713          	andi	a4,a0,15
    25fc:	00400693          	li	a3,4
    2600:	42d70663          	beq	a4,a3,2a2c <__adddf3+0x6f8>
    2604:	00450713          	addi	a4,a0,4
    2608:	00a73533          	sltu	a0,a4,a0
    260c:	00a787b3          	add	a5,a5,a0
    2610:	00070513          	mv	a0,a4
    2614:	4180006f          	j	2a2c <__adddf3+0x6f8>
    2618:	ec068ee3          	beqz	a3,24f4 <__adddf3+0x1c0>
    261c:	00c76733          	or	a4,a4,a2
    2620:	da070ce3          	beqz	a4,23d8 <__adddf3+0xa4>
    2624:	00000493          	li	s1,0
    2628:	004007b7          	lui	a5,0x400
    262c:	00000513          	li	a0,0
    2630:	7ff00413          	li	s0,2047
    2634:	3f80006f          	j	2a2c <__adddf3+0x6f8>
    2638:	7ff00593          	li	a1,2047
    263c:	3eb68263          	beq	a3,a1,2a20 <__adddf3+0x6ec>
    2640:	00c50633          	add	a2,a0,a2
    2644:	00a63533          	sltu	a0,a2,a0
    2648:	00e78733          	add	a4,a5,a4
    264c:	00a70733          	add	a4,a4,a0
    2650:	01f71513          	slli	a0,a4,0x1f
    2654:	00165613          	srli	a2,a2,0x1
    2658:	00c56533          	or	a0,a0,a2
    265c:	00175793          	srli	a5,a4,0x1
    2660:	00068413          	mv	s0,a3
    2664:	f8dff06f          	j	25f0 <__adddf3+0x2bc>
    2668:	0f005c63          	blez	a6,2760 <__adddf3+0x42c>
    266c:	08089e63          	bnez	a7,2708 <__adddf3+0x3d4>
    2670:	00c766b3          	or	a3,a4,a2
    2674:	44068863          	beqz	a3,2ac4 <__adddf3+0x790>
    2678:	fff80593          	addi	a1,a6,-1
    267c:	02059063          	bnez	a1,269c <__adddf3+0x368>
    2680:	40c50633          	sub	a2,a0,a2
    2684:	40e78733          	sub	a4,a5,a4
    2688:	00c537b3          	sltu	a5,a0,a2
    268c:	40f707b3          	sub	a5,a4,a5
    2690:	00060513          	mv	a0,a2
    2694:	00100413          	li	s0,1
    2698:	0540006f          	j	26ec <__adddf3+0x3b8>
    269c:	7ff00693          	li	a3,2047
    26a0:	d2d80ce3          	beq	a6,a3,23d8 <__adddf3+0xa4>
    26a4:	03800693          	li	a3,56
    26a8:	0ab6c663          	blt	a3,a1,2754 <__adddf3+0x420>
    26ac:	01f00693          	li	a3,31
    26b0:	06b6c863          	blt	a3,a1,2720 <__adddf3+0x3ec>
    26b4:	02000813          	li	a6,32
    26b8:	40b80833          	sub	a6,a6,a1
    26bc:	010716b3          	sll	a3,a4,a6
    26c0:	00b658b3          	srl	a7,a2,a1
    26c4:	01061833          	sll	a6,a2,a6
    26c8:	0116e6b3          	or	a3,a3,a7
    26cc:	01003833          	snez	a6,a6
    26d0:	0106e6b3          	or	a3,a3,a6
    26d4:	00b755b3          	srl	a1,a4,a1
    26d8:	40d506b3          	sub	a3,a0,a3
    26dc:	40b785b3          	sub	a1,a5,a1
    26e0:	00d537b3          	sltu	a5,a0,a3
    26e4:	40f587b3          	sub	a5,a1,a5
    26e8:	00068513          	mv	a0,a3
    26ec:	00800937          	lui	s2,0x800
    26f0:	0127f733          	and	a4,a5,s2
    26f4:	ee070ee3          	beqz	a4,25f0 <__adddf3+0x2bc>
    26f8:	fff90913          	addi	s2,s2,-1 # 7fffff <seed+0x7ee133>
    26fc:	0127f933          	and	s2,a5,s2
    2700:	00050993          	mv	s3,a0
    2704:	2140006f          	j	2918 <__adddf3+0x5e4>
    2708:	7ff00693          	li	a3,2047
    270c:	eed402e3          	beq	s0,a3,25f0 <__adddf3+0x2bc>
    2710:	008006b7          	lui	a3,0x800
    2714:	00d76733          	or	a4,a4,a3
    2718:	00080593          	mv	a1,a6
    271c:	f89ff06f          	j	26a4 <__adddf3+0x370>
    2720:	fe058693          	addi	a3,a1,-32
    2724:	02000893          	li	a7,32
    2728:	00d756b3          	srl	a3,a4,a3
    272c:	00000813          	li	a6,0
    2730:	01158863          	beq	a1,a7,2740 <__adddf3+0x40c>
    2734:	04000813          	li	a6,64
    2738:	40b80833          	sub	a6,a6,a1
    273c:	01071833          	sll	a6,a4,a6
    2740:	00c86833          	or	a6,a6,a2
    2744:	01003833          	snez	a6,a6
    2748:	0106e6b3          	or	a3,a3,a6
    274c:	00000593          	li	a1,0
    2750:	f89ff06f          	j	26d8 <__adddf3+0x3a4>
    2754:	00c766b3          	or	a3,a4,a2
    2758:	00d036b3          	snez	a3,a3
    275c:	ff1ff06f          	j	274c <__adddf3+0x418>
    2760:	0e080863          	beqz	a6,2850 <__adddf3+0x51c>
    2764:	40888833          	sub	a6,a7,s0
    2768:	04041263          	bnez	s0,27ac <__adddf3+0x478>
    276c:	00a7e5b3          	or	a1,a5,a0
    2770:	34058e63          	beqz	a1,2acc <__adddf3+0x798>
    2774:	fff80593          	addi	a1,a6,-1
    2778:	00059e63          	bnez	a1,2794 <__adddf3+0x460>
    277c:	40a60533          	sub	a0,a2,a0
    2780:	40f70733          	sub	a4,a4,a5
    2784:	00a63633          	sltu	a2,a2,a0
    2788:	40c707b3          	sub	a5,a4,a2
    278c:	00068493          	mv	s1,a3
    2790:	f05ff06f          	j	2694 <__adddf3+0x360>
    2794:	7ff00313          	li	t1,2047
    2798:	02681463          	bne	a6,t1,27c0 <__adddf3+0x48c>
    279c:	00070793          	mv	a5,a4
    27a0:	00060513          	mv	a0,a2
    27a4:	7ff00413          	li	s0,2047
    27a8:	0d00006f          	j	2878 <__adddf3+0x544>
    27ac:	7ff00593          	li	a1,2047
    27b0:	feb886e3          	beq	a7,a1,279c <__adddf3+0x468>
    27b4:	008005b7          	lui	a1,0x800
    27b8:	00b7e7b3          	or	a5,a5,a1
    27bc:	00080593          	mv	a1,a6
    27c0:	03800813          	li	a6,56
    27c4:	08b84063          	blt	a6,a1,2844 <__adddf3+0x510>
    27c8:	01f00813          	li	a6,31
    27cc:	04b84263          	blt	a6,a1,2810 <__adddf3+0x4dc>
    27d0:	02000313          	li	t1,32
    27d4:	40b30333          	sub	t1,t1,a1
    27d8:	00b55e33          	srl	t3,a0,a1
    27dc:	00679833          	sll	a6,a5,t1
    27e0:	00651333          	sll	t1,a0,t1
    27e4:	01c86833          	or	a6,a6,t3
    27e8:	00603333          	snez	t1,t1
    27ec:	00686533          	or	a0,a6,t1
    27f0:	00b7d5b3          	srl	a1,a5,a1
    27f4:	40a60533          	sub	a0,a2,a0
    27f8:	40b705b3          	sub	a1,a4,a1
    27fc:	00a63633          	sltu	a2,a2,a0
    2800:	40c587b3          	sub	a5,a1,a2
    2804:	00088413          	mv	s0,a7
    2808:	00068493          	mv	s1,a3
    280c:	ee1ff06f          	j	26ec <__adddf3+0x3b8>
    2810:	fe058813          	addi	a6,a1,-32 # 7fffe0 <seed+0x7ee114>
    2814:	02000e13          	li	t3,32
    2818:	0107d833          	srl	a6,a5,a6
    281c:	00000313          	li	t1,0
    2820:	01c58863          	beq	a1,t3,2830 <__adddf3+0x4fc>
    2824:	04000313          	li	t1,64
    2828:	40b30333          	sub	t1,t1,a1
    282c:	00679333          	sll	t1,a5,t1
    2830:	00a36333          	or	t1,t1,a0
    2834:	00603333          	snez	t1,t1
    2838:	00686533          	or	a0,a6,t1
    283c:	00000593          	li	a1,0
    2840:	fb5ff06f          	j	27f4 <__adddf3+0x4c0>
    2844:	00a7e533          	or	a0,a5,a0
    2848:	00a03533          	snez	a0,a0
    284c:	ff1ff06f          	j	283c <__adddf3+0x508>
    2850:	00140593          	addi	a1,s0,1
    2854:	7fe5f593          	andi	a1,a1,2046
    2858:	08059863          	bnez	a1,28e8 <__adddf3+0x5b4>
    285c:	00a7e833          	or	a6,a5,a0
    2860:	00c765b3          	or	a1,a4,a2
    2864:	06041263          	bnez	s0,28c8 <__adddf3+0x594>
    2868:	00081c63          	bnez	a6,2880 <__adddf3+0x54c>
    286c:	26058863          	beqz	a1,2adc <__adddf3+0x7a8>
    2870:	00070793          	mv	a5,a4
    2874:	00060513          	mv	a0,a2
    2878:	00068493          	mv	s1,a3
    287c:	d75ff06f          	j	25f0 <__adddf3+0x2bc>
    2880:	d60588e3          	beqz	a1,25f0 <__adddf3+0x2bc>
    2884:	40c50833          	sub	a6,a0,a2
    2888:	010538b3          	sltu	a7,a0,a6
    288c:	40e785b3          	sub	a1,a5,a4
    2890:	411585b3          	sub	a1,a1,a7
    2894:	008008b7          	lui	a7,0x800
    2898:	0115f8b3          	and	a7,a1,a7
    289c:	00088c63          	beqz	a7,28b4 <__adddf3+0x580>
    28a0:	40a60533          	sub	a0,a2,a0
    28a4:	40f70733          	sub	a4,a4,a5
    28a8:	00a63633          	sltu	a2,a2,a0
    28ac:	40c707b3          	sub	a5,a4,a2
    28b0:	fc9ff06f          	j	2878 <__adddf3+0x544>
    28b4:	00b86533          	or	a0,a6,a1
    28b8:	22050a63          	beqz	a0,2aec <__adddf3+0x7b8>
    28bc:	00058793          	mv	a5,a1
    28c0:	00080513          	mv	a0,a6
    28c4:	d2dff06f          	j	25f0 <__adddf3+0x2bc>
    28c8:	00081c63          	bnez	a6,28e0 <__adddf3+0x5ac>
    28cc:	22058463          	beqz	a1,2af4 <__adddf3+0x7c0>
    28d0:	00070793          	mv	a5,a4
    28d4:	00060513          	mv	a0,a2
    28d8:	00068493          	mv	s1,a3
    28dc:	afdff06f          	j	23d8 <__adddf3+0xa4>
    28e0:	ae058ce3          	beqz	a1,23d8 <__adddf3+0xa4>
    28e4:	d41ff06f          	j	2624 <__adddf3+0x2f0>
    28e8:	40c509b3          	sub	s3,a0,a2
    28ec:	013535b3          	sltu	a1,a0,s3
    28f0:	40e78933          	sub	s2,a5,a4
    28f4:	40b90933          	sub	s2,s2,a1
    28f8:	008005b7          	lui	a1,0x800
    28fc:	00b975b3          	and	a1,s2,a1
    2900:	08058463          	beqz	a1,2988 <__adddf3+0x654>
    2904:	40a609b3          	sub	s3,a2,a0
    2908:	40f70933          	sub	s2,a4,a5
    290c:	01363633          	sltu	a2,a2,s3
    2910:	40c90933          	sub	s2,s2,a2
    2914:	00068493          	mv	s1,a3
    2918:	08090263          	beqz	s2,299c <__adddf3+0x668>
    291c:	00090513          	mv	a0,s2
    2920:	3bd010ef          	jal	ra,44dc <__clzsi2>
    2924:	ff850713          	addi	a4,a0,-8
    2928:	01f00793          	li	a5,31
    292c:	08e7c063          	blt	a5,a4,29ac <__adddf3+0x678>
    2930:	02000793          	li	a5,32
    2934:	40e787b3          	sub	a5,a5,a4
    2938:	00e91933          	sll	s2,s2,a4
    293c:	00f9d7b3          	srl	a5,s3,a5
    2940:	0127e7b3          	or	a5,a5,s2
    2944:	00e99533          	sll	a0,s3,a4
    2948:	0a874463          	blt	a4,s0,29f0 <__adddf3+0x6bc>
    294c:	40870733          	sub	a4,a4,s0
    2950:	00170613          	addi	a2,a4,1
    2954:	01f00693          	li	a3,31
    2958:	06c6c263          	blt	a3,a2,29bc <__adddf3+0x688>
    295c:	02000713          	li	a4,32
    2960:	40c70733          	sub	a4,a4,a2
    2964:	00e796b3          	sll	a3,a5,a4
    2968:	00c555b3          	srl	a1,a0,a2
    296c:	00e51733          	sll	a4,a0,a4
    2970:	00b6e6b3          	or	a3,a3,a1
    2974:	00e03733          	snez	a4,a4
    2978:	00e6e533          	or	a0,a3,a4
    297c:	00c7d7b3          	srl	a5,a5,a2
    2980:	00000413          	li	s0,0
    2984:	c6dff06f          	j	25f0 <__adddf3+0x2bc>
    2988:	0129e533          	or	a0,s3,s2
    298c:	f80516e3          	bnez	a0,2918 <__adddf3+0x5e4>
    2990:	00000793          	li	a5,0
    2994:	00000413          	li	s0,0
    2998:	14c0006f          	j	2ae4 <__adddf3+0x7b0>
    299c:	00098513          	mv	a0,s3
    29a0:	33d010ef          	jal	ra,44dc <__clzsi2>
    29a4:	02050513          	addi	a0,a0,32
    29a8:	f7dff06f          	j	2924 <__adddf3+0x5f0>
    29ac:	fd850793          	addi	a5,a0,-40
    29b0:	00f997b3          	sll	a5,s3,a5
    29b4:	00000513          	li	a0,0
    29b8:	f91ff06f          	j	2948 <__adddf3+0x614>
    29bc:	fe170713          	addi	a4,a4,-31
    29c0:	02000593          	li	a1,32
    29c4:	00e7d733          	srl	a4,a5,a4
    29c8:	00000693          	li	a3,0
    29cc:	00b60863          	beq	a2,a1,29dc <__adddf3+0x6a8>
    29d0:	04000693          	li	a3,64
    29d4:	40c686b3          	sub	a3,a3,a2
    29d8:	00d796b3          	sll	a3,a5,a3
    29dc:	00d566b3          	or	a3,a0,a3
    29e0:	00d036b3          	snez	a3,a3
    29e4:	00d76533          	or	a0,a4,a3
    29e8:	00000793          	li	a5,0
    29ec:	f95ff06f          	j	2980 <__adddf3+0x64c>
    29f0:	40e40433          	sub	s0,s0,a4
    29f4:	ff800737          	lui	a4,0xff800
    29f8:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    29fc:	00e7f7b3          	and	a5,a5,a4
    2a00:	bf1ff06f          	j	25f0 <__adddf3+0x2bc>
    2a04:	00070793          	mv	a5,a4
    2a08:	00060513          	mv	a0,a2
    2a0c:	00058413          	mv	s0,a1
    2a10:	be1ff06f          	j	25f0 <__adddf3+0x2bc>
    2a14:	00070793          	mv	a5,a4
    2a18:	00060513          	mv	a0,a2
    2a1c:	bd5ff06f          	j	25f0 <__adddf3+0x2bc>
    2a20:	7ff00413          	li	s0,2047
    2a24:	00000793          	li	a5,0
    2a28:	00000513          	li	a0,0
    2a2c:	00800737          	lui	a4,0x800
    2a30:	00e7f733          	and	a4,a5,a4
    2a34:	00070e63          	beqz	a4,2a50 <__adddf3+0x71c>
    2a38:	00140413          	addi	s0,s0,1
    2a3c:	7ff00713          	li	a4,2047
    2a40:	0ce40263          	beq	s0,a4,2b04 <__adddf3+0x7d0>
    2a44:	ff800737          	lui	a4,0xff800
    2a48:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    2a4c:	00e7f7b3          	and	a5,a5,a4
    2a50:	01d79693          	slli	a3,a5,0x1d
    2a54:	00355513          	srli	a0,a0,0x3
    2a58:	7ff00713          	li	a4,2047
    2a5c:	00a6e6b3          	or	a3,a3,a0
    2a60:	0037d793          	srli	a5,a5,0x3
    2a64:	00e41e63          	bne	s0,a4,2a80 <__adddf3+0x74c>
    2a68:	00f6e6b3          	or	a3,a3,a5
    2a6c:	00000793          	li	a5,0
    2a70:	00068863          	beqz	a3,2a80 <__adddf3+0x74c>
    2a74:	000807b7          	lui	a5,0x80
    2a78:	00000693          	li	a3,0
    2a7c:	00000493          	li	s1,0
    2a80:	01441713          	slli	a4,s0,0x14
    2a84:	7ff00637          	lui	a2,0x7ff00
    2a88:	00c79793          	slli	a5,a5,0xc
    2a8c:	01c12083          	lw	ra,28(sp)
    2a90:	01812403          	lw	s0,24(sp)
    2a94:	00c77733          	and	a4,a4,a2
    2a98:	00c7d793          	srli	a5,a5,0xc
    2a9c:	01f49493          	slli	s1,s1,0x1f
    2aa0:	00f767b3          	or	a5,a4,a5
    2aa4:	0097e733          	or	a4,a5,s1
    2aa8:	01012903          	lw	s2,16(sp)
    2aac:	01412483          	lw	s1,20(sp)
    2ab0:	00c12983          	lw	s3,12(sp)
    2ab4:	00068513          	mv	a0,a3
    2ab8:	00070593          	mv	a1,a4
    2abc:	02010113          	addi	sp,sp,32
    2ac0:	00008067          	ret
    2ac4:	00080413          	mv	s0,a6
    2ac8:	b29ff06f          	j	25f0 <__adddf3+0x2bc>
    2acc:	00070793          	mv	a5,a4
    2ad0:	00060513          	mv	a0,a2
    2ad4:	00080413          	mv	s0,a6
    2ad8:	da1ff06f          	j	2878 <__adddf3+0x544>
    2adc:	00000793          	li	a5,0
    2ae0:	00000513          	li	a0,0
    2ae4:	00000493          	li	s1,0
    2ae8:	f45ff06f          	j	2a2c <__adddf3+0x6f8>
    2aec:	00000793          	li	a5,0
    2af0:	ff5ff06f          	j	2ae4 <__adddf3+0x7b0>
    2af4:	00000513          	li	a0,0
    2af8:	00000493          	li	s1,0
    2afc:	004007b7          	lui	a5,0x400
    2b00:	b31ff06f          	j	2630 <__adddf3+0x2fc>
    2b04:	00000793          	li	a5,0
    2b08:	00000513          	li	a0,0
    2b0c:	f45ff06f          	j	2a50 <__adddf3+0x71c>

00002b10 <__divdf3>:
    2b10:	fb010113          	addi	sp,sp,-80
    2b14:	05212023          	sw	s2,64(sp)
    2b18:	0145d913          	srli	s2,a1,0x14
    2b1c:	04912223          	sw	s1,68(sp)
    2b20:	03312e23          	sw	s3,60(sp)
    2b24:	03412c23          	sw	s4,56(sp)
    2b28:	03512a23          	sw	s5,52(sp)
    2b2c:	03612823          	sw	s6,48(sp)
    2b30:	00c59493          	slli	s1,a1,0xc
    2b34:	04112623          	sw	ra,76(sp)
    2b38:	04812423          	sw	s0,72(sp)
    2b3c:	03712623          	sw	s7,44(sp)
    2b40:	03812423          	sw	s8,40(sp)
    2b44:	03912223          	sw	s9,36(sp)
    2b48:	03a12023          	sw	s10,32(sp)
    2b4c:	01b12e23          	sw	s11,28(sp)
    2b50:	7ff97913          	andi	s2,s2,2047
    2b54:	00050993          	mv	s3,a0
    2b58:	00060b13          	mv	s6,a2
    2b5c:	00068a93          	mv	s5,a3
    2b60:	00c4d493          	srli	s1,s1,0xc
    2b64:	01f5da13          	srli	s4,a1,0x1f
    2b68:	0a090063          	beqz	s2,2c08 <__divdf3+0xf8>
    2b6c:	7ff00793          	li	a5,2047
    2b70:	0ef90e63          	beq	s2,a5,2c6c <__divdf3+0x15c>
    2b74:	01d55c93          	srli	s9,a0,0x1d
    2b78:	00349493          	slli	s1,s1,0x3
    2b7c:	009cecb3          	or	s9,s9,s1
    2b80:	008007b7          	lui	a5,0x800
    2b84:	00fcecb3          	or	s9,s9,a5
    2b88:	00351413          	slli	s0,a0,0x3
    2b8c:	c0190913          	addi	s2,s2,-1023
    2b90:	00000b93          	li	s7,0
    2b94:	014ad793          	srli	a5,s5,0x14
    2b98:	00ca9993          	slli	s3,s5,0xc
    2b9c:	7ff7f793          	andi	a5,a5,2047
    2ba0:	00c9d993          	srli	s3,s3,0xc
    2ba4:	01fada93          	srli	s5,s5,0x1f
    2ba8:	10078063          	beqz	a5,2ca8 <__divdf3+0x198>
    2bac:	7ff00713          	li	a4,2047
    2bb0:	16e78063          	beq	a5,a4,2d10 <__divdf3+0x200>
    2bb4:	00399993          	slli	s3,s3,0x3
    2bb8:	01db5713          	srli	a4,s6,0x1d
    2bbc:	01376733          	or	a4,a4,s3
    2bc0:	008009b7          	lui	s3,0x800
    2bc4:	013769b3          	or	s3,a4,s3
    2bc8:	003b1813          	slli	a6,s6,0x3
    2bcc:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <seed+0x7edd35>
    2bd0:	00000713          	li	a4,0
    2bd4:	40f90933          	sub	s2,s2,a5
    2bd8:	002b9793          	slli	a5,s7,0x2
    2bdc:	00e7e7b3          	or	a5,a5,a4
    2be0:	fff78793          	addi	a5,a5,-1
    2be4:	00e00693          	li	a3,14
    2be8:	015a44b3          	xor	s1,s4,s5
    2bec:	14f6ee63          	bltu	a3,a5,2d48 <__divdf3+0x238>
    2bf0:	000116b7          	lui	a3,0x11
    2bf4:	00279793          	slli	a5,a5,0x2
    2bf8:	0d868693          	addi	a3,a3,216 # 110d8 <_global_impure_ptr+0xca8>
    2bfc:	00d787b3          	add	a5,a5,a3
    2c00:	0007a783          	lw	a5,0(a5)
    2c04:	00078067          	jr	a5
    2c08:	00a4ecb3          	or	s9,s1,a0
    2c0c:	060c8e63          	beqz	s9,2c88 <__divdf3+0x178>
    2c10:	04048063          	beqz	s1,2c50 <__divdf3+0x140>
    2c14:	00048513          	mv	a0,s1
    2c18:	0c5010ef          	jal	ra,44dc <__clzsi2>
    2c1c:	ff550793          	addi	a5,a0,-11
    2c20:	01c00713          	li	a4,28
    2c24:	02f74c63          	blt	a4,a5,2c5c <__divdf3+0x14c>
    2c28:	01d00c93          	li	s9,29
    2c2c:	ff850413          	addi	s0,a0,-8
    2c30:	40fc8cb3          	sub	s9,s9,a5
    2c34:	008494b3          	sll	s1,s1,s0
    2c38:	0199dcb3          	srl	s9,s3,s9
    2c3c:	009cecb3          	or	s9,s9,s1
    2c40:	00899433          	sll	s0,s3,s0
    2c44:	c0d00913          	li	s2,-1011
    2c48:	40a90933          	sub	s2,s2,a0
    2c4c:	f45ff06f          	j	2b90 <__divdf3+0x80>
    2c50:	08d010ef          	jal	ra,44dc <__clzsi2>
    2c54:	02050513          	addi	a0,a0,32
    2c58:	fc5ff06f          	j	2c1c <__divdf3+0x10c>
    2c5c:	fd850c93          	addi	s9,a0,-40
    2c60:	01999cb3          	sll	s9,s3,s9
    2c64:	00000413          	li	s0,0
    2c68:	fddff06f          	j	2c44 <__divdf3+0x134>
    2c6c:	00a4ecb3          	or	s9,s1,a0
    2c70:	020c8463          	beqz	s9,2c98 <__divdf3+0x188>
    2c74:	00050413          	mv	s0,a0
    2c78:	00048c93          	mv	s9,s1
    2c7c:	7ff00913          	li	s2,2047
    2c80:	00300b93          	li	s7,3
    2c84:	f11ff06f          	j	2b94 <__divdf3+0x84>
    2c88:	00000413          	li	s0,0
    2c8c:	00000913          	li	s2,0
    2c90:	00100b93          	li	s7,1
    2c94:	f01ff06f          	j	2b94 <__divdf3+0x84>
    2c98:	00000413          	li	s0,0
    2c9c:	7ff00913          	li	s2,2047
    2ca0:	00200b93          	li	s7,2
    2ca4:	ef1ff06f          	j	2b94 <__divdf3+0x84>
    2ca8:	0169e833          	or	a6,s3,s6
    2cac:	06080e63          	beqz	a6,2d28 <__divdf3+0x218>
    2cb0:	04098063          	beqz	s3,2cf0 <__divdf3+0x1e0>
    2cb4:	00098513          	mv	a0,s3
    2cb8:	025010ef          	jal	ra,44dc <__clzsi2>
    2cbc:	ff550713          	addi	a4,a0,-11
    2cc0:	01c00793          	li	a5,28
    2cc4:	02e7ce63          	blt	a5,a4,2d00 <__divdf3+0x1f0>
    2cc8:	01d00793          	li	a5,29
    2ccc:	ff850813          	addi	a6,a0,-8
    2cd0:	40e787b3          	sub	a5,a5,a4
    2cd4:	010999b3          	sll	s3,s3,a6
    2cd8:	00fb57b3          	srl	a5,s6,a5
    2cdc:	0137e9b3          	or	s3,a5,s3
    2ce0:	010b1833          	sll	a6,s6,a6
    2ce4:	c0d00793          	li	a5,-1011
    2ce8:	40a787b3          	sub	a5,a5,a0
    2cec:	ee5ff06f          	j	2bd0 <__divdf3+0xc0>
    2cf0:	000b0513          	mv	a0,s6
    2cf4:	7e8010ef          	jal	ra,44dc <__clzsi2>
    2cf8:	02050513          	addi	a0,a0,32
    2cfc:	fc1ff06f          	j	2cbc <__divdf3+0x1ac>
    2d00:	fd850993          	addi	s3,a0,-40
    2d04:	013b19b3          	sll	s3,s6,s3
    2d08:	00000813          	li	a6,0
    2d0c:	fd9ff06f          	j	2ce4 <__divdf3+0x1d4>
    2d10:	0169e833          	or	a6,s3,s6
    2d14:	02080263          	beqz	a6,2d38 <__divdf3+0x228>
    2d18:	000b0813          	mv	a6,s6
    2d1c:	7ff00793          	li	a5,2047
    2d20:	00300713          	li	a4,3
    2d24:	eb1ff06f          	j	2bd4 <__divdf3+0xc4>
    2d28:	00000993          	li	s3,0
    2d2c:	00000793          	li	a5,0
    2d30:	00100713          	li	a4,1
    2d34:	ea1ff06f          	j	2bd4 <__divdf3+0xc4>
    2d38:	00000993          	li	s3,0
    2d3c:	7ff00793          	li	a5,2047
    2d40:	00200713          	li	a4,2
    2d44:	e91ff06f          	j	2bd4 <__divdf3+0xc4>
    2d48:	0199e663          	bltu	s3,s9,2d54 <__divdf3+0x244>
    2d4c:	453c9a63          	bne	s9,s3,31a0 <__divdf3+0x690>
    2d50:	45046863          	bltu	s0,a6,31a0 <__divdf3+0x690>
    2d54:	01fc9713          	slli	a4,s9,0x1f
    2d58:	00145793          	srli	a5,s0,0x1
    2d5c:	01f41d93          	slli	s11,s0,0x1f
    2d60:	001cdc93          	srli	s9,s9,0x1
    2d64:	00f76433          	or	s0,a4,a5
    2d68:	01885a93          	srli	s5,a6,0x18
    2d6c:	00899b93          	slli	s7,s3,0x8
    2d70:	017aeab3          	or	s5,s5,s7
    2d74:	010bdb93          	srli	s7,s7,0x10
    2d78:	000b8593          	mv	a1,s7
    2d7c:	010a9c13          	slli	s8,s5,0x10
    2d80:	000c8513          	mv	a0,s9
    2d84:	00881b13          	slli	s6,a6,0x8
    2d88:	010c5c13          	srli	s8,s8,0x10
    2d8c:	6a4010ef          	jal	ra,4430 <__udivsi3>
    2d90:	00050593          	mv	a1,a0
    2d94:	00050d13          	mv	s10,a0
    2d98:	000c0513          	mv	a0,s8
    2d9c:	668010ef          	jal	ra,4404 <__mulsi3>
    2da0:	00050993          	mv	s3,a0
    2da4:	000b8593          	mv	a1,s7
    2da8:	000c8513          	mv	a0,s9
    2dac:	6cc010ef          	jal	ra,4478 <__umodsi3>
    2db0:	01051513          	slli	a0,a0,0x10
    2db4:	01045713          	srli	a4,s0,0x10
    2db8:	00a76733          	or	a4,a4,a0
    2dbc:	000d0a13          	mv	s4,s10
    2dc0:	01377e63          	bgeu	a4,s3,2ddc <__divdf3+0x2cc>
    2dc4:	01570733          	add	a4,a4,s5
    2dc8:	fffd0a13          	addi	s4,s10,-1
    2dcc:	01576863          	bltu	a4,s5,2ddc <__divdf3+0x2cc>
    2dd0:	01377663          	bgeu	a4,s3,2ddc <__divdf3+0x2cc>
    2dd4:	ffed0a13          	addi	s4,s10,-2
    2dd8:	01570733          	add	a4,a4,s5
    2ddc:	413709b3          	sub	s3,a4,s3
    2de0:	000b8593          	mv	a1,s7
    2de4:	00098513          	mv	a0,s3
    2de8:	648010ef          	jal	ra,4430 <__udivsi3>
    2dec:	00050593          	mv	a1,a0
    2df0:	00050d13          	mv	s10,a0
    2df4:	000c0513          	mv	a0,s8
    2df8:	60c010ef          	jal	ra,4404 <__mulsi3>
    2dfc:	00050c93          	mv	s9,a0
    2e00:	000b8593          	mv	a1,s7
    2e04:	00098513          	mv	a0,s3
    2e08:	670010ef          	jal	ra,4478 <__umodsi3>
    2e0c:	01041413          	slli	s0,s0,0x10
    2e10:	01051513          	slli	a0,a0,0x10
    2e14:	01045413          	srli	s0,s0,0x10
    2e18:	00a46433          	or	s0,s0,a0
    2e1c:	000d0793          	mv	a5,s10
    2e20:	01947e63          	bgeu	s0,s9,2e3c <__divdf3+0x32c>
    2e24:	01540433          	add	s0,s0,s5
    2e28:	fffd0793          	addi	a5,s10,-1
    2e2c:	01546863          	bltu	s0,s5,2e3c <__divdf3+0x32c>
    2e30:	01947663          	bgeu	s0,s9,2e3c <__divdf3+0x32c>
    2e34:	ffed0793          	addi	a5,s10,-2
    2e38:	01540433          	add	s0,s0,s5
    2e3c:	010a1713          	slli	a4,s4,0x10
    2e40:	00010337          	lui	t1,0x10
    2e44:	00f76733          	or	a4,a4,a5
    2e48:	41940433          	sub	s0,s0,s9
    2e4c:	fff30c93          	addi	s9,t1,-1 # ffff <main+0xb6df>
    2e50:	019777b3          	and	a5,a4,s9
    2e54:	019b7cb3          	and	s9,s6,s9
    2e58:	01075e13          	srli	t3,a4,0x10
    2e5c:	010b5d13          	srli	s10,s6,0x10
    2e60:	00078513          	mv	a0,a5
    2e64:	000c8593          	mv	a1,s9
    2e68:	59c010ef          	jal	ra,4404 <__mulsi3>
    2e6c:	00050813          	mv	a6,a0
    2e70:	000d0593          	mv	a1,s10
    2e74:	00078513          	mv	a0,a5
    2e78:	58c010ef          	jal	ra,4404 <__mulsi3>
    2e7c:	00050793          	mv	a5,a0
    2e80:	000c8593          	mv	a1,s9
    2e84:	000e0513          	mv	a0,t3
    2e88:	57c010ef          	jal	ra,4404 <__mulsi3>
    2e8c:	00050893          	mv	a7,a0
    2e90:	000d0593          	mv	a1,s10
    2e94:	000e0513          	mv	a0,t3
    2e98:	56c010ef          	jal	ra,4404 <__mulsi3>
    2e9c:	01085a13          	srli	s4,a6,0x10
    2ea0:	011787b3          	add	a5,a5,a7
    2ea4:	00fa0a33          	add	s4,s4,a5
    2ea8:	00050693          	mv	a3,a0
    2eac:	011a7463          	bgeu	s4,a7,2eb4 <__divdf3+0x3a4>
    2eb0:	006506b3          	add	a3,a0,t1
    2eb4:	010a5793          	srli	a5,s4,0x10
    2eb8:	00d787b3          	add	a5,a5,a3
    2ebc:	000106b7          	lui	a3,0x10
    2ec0:	fff68693          	addi	a3,a3,-1 # ffff <main+0xb6df>
    2ec4:	00da7a33          	and	s4,s4,a3
    2ec8:	010a1a13          	slli	s4,s4,0x10
    2ecc:	00d87833          	and	a6,a6,a3
    2ed0:	010a0a33          	add	s4,s4,a6
    2ed4:	00f46863          	bltu	s0,a5,2ee4 <__divdf3+0x3d4>
    2ed8:	00070993          	mv	s3,a4
    2edc:	04f41463          	bne	s0,a5,2f24 <__divdf3+0x414>
    2ee0:	054df263          	bgeu	s11,s4,2f24 <__divdf3+0x414>
    2ee4:	016d8db3          	add	s11,s11,s6
    2ee8:	016db6b3          	sltu	a3,s11,s6
    2eec:	015686b3          	add	a3,a3,s5
    2ef0:	00d40433          	add	s0,s0,a3
    2ef4:	fff70993          	addi	s3,a4,-1
    2ef8:	008ae663          	bltu	s5,s0,2f04 <__divdf3+0x3f4>
    2efc:	028a9463          	bne	s5,s0,2f24 <__divdf3+0x414>
    2f00:	036de263          	bltu	s11,s6,2f24 <__divdf3+0x414>
    2f04:	00f46663          	bltu	s0,a5,2f10 <__divdf3+0x400>
    2f08:	00879e63          	bne	a5,s0,2f24 <__divdf3+0x414>
    2f0c:	014dfc63          	bgeu	s11,s4,2f24 <__divdf3+0x414>
    2f10:	016d8db3          	add	s11,s11,s6
    2f14:	ffe70993          	addi	s3,a4,-2
    2f18:	016db733          	sltu	a4,s11,s6
    2f1c:	01570733          	add	a4,a4,s5
    2f20:	00e40433          	add	s0,s0,a4
    2f24:	414d8a33          	sub	s4,s11,s4
    2f28:	40f40433          	sub	s0,s0,a5
    2f2c:	014db7b3          	sltu	a5,s11,s4
    2f30:	40f40433          	sub	s0,s0,a5
    2f34:	fff00813          	li	a6,-1
    2f38:	1a8a8263          	beq	s5,s0,30dc <__divdf3+0x5cc>
    2f3c:	000b8593          	mv	a1,s7
    2f40:	00040513          	mv	a0,s0
    2f44:	4ec010ef          	jal	ra,4430 <__udivsi3>
    2f48:	00050593          	mv	a1,a0
    2f4c:	00a12623          	sw	a0,12(sp)
    2f50:	000c0513          	mv	a0,s8
    2f54:	4b0010ef          	jal	ra,4404 <__mulsi3>
    2f58:	00a12423          	sw	a0,8(sp)
    2f5c:	000b8593          	mv	a1,s7
    2f60:	00040513          	mv	a0,s0
    2f64:	514010ef          	jal	ra,4478 <__umodsi3>
    2f68:	00c12683          	lw	a3,12(sp)
    2f6c:	00812783          	lw	a5,8(sp)
    2f70:	01051513          	slli	a0,a0,0x10
    2f74:	010a5713          	srli	a4,s4,0x10
    2f78:	00a76733          	or	a4,a4,a0
    2f7c:	00068d93          	mv	s11,a3
    2f80:	00f77e63          	bgeu	a4,a5,2f9c <__divdf3+0x48c>
    2f84:	01570733          	add	a4,a4,s5
    2f88:	fff68d93          	addi	s11,a3,-1
    2f8c:	01576863          	bltu	a4,s5,2f9c <__divdf3+0x48c>
    2f90:	00f77663          	bgeu	a4,a5,2f9c <__divdf3+0x48c>
    2f94:	ffe68d93          	addi	s11,a3,-2
    2f98:	01570733          	add	a4,a4,s5
    2f9c:	40f70433          	sub	s0,a4,a5
    2fa0:	000b8593          	mv	a1,s7
    2fa4:	00040513          	mv	a0,s0
    2fa8:	488010ef          	jal	ra,4430 <__udivsi3>
    2fac:	00050593          	mv	a1,a0
    2fb0:	00a12423          	sw	a0,8(sp)
    2fb4:	000c0513          	mv	a0,s8
    2fb8:	44c010ef          	jal	ra,4404 <__mulsi3>
    2fbc:	00050c13          	mv	s8,a0
    2fc0:	000b8593          	mv	a1,s7
    2fc4:	00040513          	mv	a0,s0
    2fc8:	4b0010ef          	jal	ra,4478 <__umodsi3>
    2fcc:	00812783          	lw	a5,8(sp)
    2fd0:	010a1713          	slli	a4,s4,0x10
    2fd4:	01051513          	slli	a0,a0,0x10
    2fd8:	01075713          	srli	a4,a4,0x10
    2fdc:	00a76733          	or	a4,a4,a0
    2fe0:	00078693          	mv	a3,a5
    2fe4:	01877e63          	bgeu	a4,s8,3000 <__divdf3+0x4f0>
    2fe8:	01570733          	add	a4,a4,s5
    2fec:	fff78693          	addi	a3,a5,-1
    2ff0:	01576863          	bltu	a4,s5,3000 <__divdf3+0x4f0>
    2ff4:	01877663          	bgeu	a4,s8,3000 <__divdf3+0x4f0>
    2ff8:	ffe78693          	addi	a3,a5,-2
    2ffc:	01570733          	add	a4,a4,s5
    3000:	010d9793          	slli	a5,s11,0x10
    3004:	00d7e7b3          	or	a5,a5,a3
    3008:	01079813          	slli	a6,a5,0x10
    300c:	01085813          	srli	a6,a6,0x10
    3010:	41870733          	sub	a4,a4,s8
    3014:	0107de13          	srli	t3,a5,0x10
    3018:	00080513          	mv	a0,a6
    301c:	000c8593          	mv	a1,s9
    3020:	3e4010ef          	jal	ra,4404 <__mulsi3>
    3024:	00050893          	mv	a7,a0
    3028:	000d0593          	mv	a1,s10
    302c:	00080513          	mv	a0,a6
    3030:	3d4010ef          	jal	ra,4404 <__mulsi3>
    3034:	00050813          	mv	a6,a0
    3038:	000c8593          	mv	a1,s9
    303c:	000e0513          	mv	a0,t3
    3040:	3c4010ef          	jal	ra,4404 <__mulsi3>
    3044:	00050313          	mv	t1,a0
    3048:	000d0593          	mv	a1,s10
    304c:	000e0513          	mv	a0,t3
    3050:	3b4010ef          	jal	ra,4404 <__mulsi3>
    3054:	0108d693          	srli	a3,a7,0x10
    3058:	00680833          	add	a6,a6,t1
    305c:	010686b3          	add	a3,a3,a6
    3060:	00050593          	mv	a1,a0
    3064:	0066f663          	bgeu	a3,t1,3070 <__divdf3+0x560>
    3068:	00010637          	lui	a2,0x10
    306c:	00c505b3          	add	a1,a0,a2
    3070:	0106d613          	srli	a2,a3,0x10
    3074:	00b60633          	add	a2,a2,a1
    3078:	000105b7          	lui	a1,0x10
    307c:	fff58593          	addi	a1,a1,-1 # ffff <main+0xb6df>
    3080:	00b6f6b3          	and	a3,a3,a1
    3084:	01069693          	slli	a3,a3,0x10
    3088:	00b8f8b3          	and	a7,a7,a1
    308c:	011686b3          	add	a3,a3,a7
    3090:	00c76863          	bltu	a4,a2,30a0 <__divdf3+0x590>
    3094:	24c71a63          	bne	a4,a2,32e8 <__divdf3+0x7d8>
    3098:	00078813          	mv	a6,a5
    309c:	04068063          	beqz	a3,30dc <__divdf3+0x5cc>
    30a0:	00ea8733          	add	a4,s5,a4
    30a4:	fff78813          	addi	a6,a5,-1
    30a8:	03576463          	bltu	a4,s5,30d0 <__divdf3+0x5c0>
    30ac:	00c76663          	bltu	a4,a2,30b8 <__divdf3+0x5a8>
    30b0:	22c71a63          	bne	a4,a2,32e4 <__divdf3+0x7d4>
    30b4:	02db7063          	bgeu	s6,a3,30d4 <__divdf3+0x5c4>
    30b8:	ffe78813          	addi	a6,a5,-2
    30bc:	001b1793          	slli	a5,s6,0x1
    30c0:	0167bb33          	sltu	s6,a5,s6
    30c4:	015b0b33          	add	s6,s6,s5
    30c8:	01670733          	add	a4,a4,s6
    30cc:	00078b13          	mv	s6,a5
    30d0:	00c71463          	bne	a4,a2,30d8 <__divdf3+0x5c8>
    30d4:	00db0463          	beq	s6,a3,30dc <__divdf3+0x5cc>
    30d8:	00186813          	ori	a6,a6,1
    30dc:	3ff90793          	addi	a5,s2,1023
    30e0:	12f05063          	blez	a5,3200 <__divdf3+0x6f0>
    30e4:	00787713          	andi	a4,a6,7
    30e8:	02070063          	beqz	a4,3108 <__divdf3+0x5f8>
    30ec:	00f87713          	andi	a4,a6,15
    30f0:	00400693          	li	a3,4
    30f4:	00d70a63          	beq	a4,a3,3108 <__divdf3+0x5f8>
    30f8:	00480713          	addi	a4,a6,4
    30fc:	01073833          	sltu	a6,a4,a6
    3100:	010989b3          	add	s3,s3,a6
    3104:	00070813          	mv	a6,a4
    3108:	01000737          	lui	a4,0x1000
    310c:	00e9f733          	and	a4,s3,a4
    3110:	00070a63          	beqz	a4,3124 <__divdf3+0x614>
    3114:	ff0007b7          	lui	a5,0xff000
    3118:	fff78793          	addi	a5,a5,-1 # feffffff <seed+0xfefee133>
    311c:	00f9f9b3          	and	s3,s3,a5
    3120:	40090793          	addi	a5,s2,1024
    3124:	7fe00713          	li	a4,2046
    3128:	0af74663          	blt	a4,a5,31d4 <__divdf3+0x6c4>
    312c:	00385813          	srli	a6,a6,0x3
    3130:	01d99713          	slli	a4,s3,0x1d
    3134:	01076733          	or	a4,a4,a6
    3138:	0039d593          	srli	a1,s3,0x3
    313c:	7ff006b7          	lui	a3,0x7ff00
    3140:	01479793          	slli	a5,a5,0x14
    3144:	00c59593          	slli	a1,a1,0xc
    3148:	04c12083          	lw	ra,76(sp)
    314c:	04812403          	lw	s0,72(sp)
    3150:	00d7f7b3          	and	a5,a5,a3
    3154:	00c5d593          	srli	a1,a1,0xc
    3158:	00b7e7b3          	or	a5,a5,a1
    315c:	01f49493          	slli	s1,s1,0x1f
    3160:	0097e6b3          	or	a3,a5,s1
    3164:	04012903          	lw	s2,64(sp)
    3168:	04412483          	lw	s1,68(sp)
    316c:	03c12983          	lw	s3,60(sp)
    3170:	03812a03          	lw	s4,56(sp)
    3174:	03412a83          	lw	s5,52(sp)
    3178:	03012b03          	lw	s6,48(sp)
    317c:	02c12b83          	lw	s7,44(sp)
    3180:	02812c03          	lw	s8,40(sp)
    3184:	02412c83          	lw	s9,36(sp)
    3188:	02012d03          	lw	s10,32(sp)
    318c:	01c12d83          	lw	s11,28(sp)
    3190:	00070513          	mv	a0,a4
    3194:	00068593          	mv	a1,a3
    3198:	05010113          	addi	sp,sp,80
    319c:	00008067          	ret
    31a0:	fff90913          	addi	s2,s2,-1
    31a4:	00000d93          	li	s11,0
    31a8:	bc1ff06f          	j	2d68 <__divdf3+0x258>
    31ac:	000a0493          	mv	s1,s4
    31b0:	000c8993          	mv	s3,s9
    31b4:	00040813          	mv	a6,s0
    31b8:	000b8713          	mv	a4,s7
    31bc:	00300793          	li	a5,3
    31c0:	10f70063          	beq	a4,a5,32c0 <__divdf3+0x7b0>
    31c4:	00100793          	li	a5,1
    31c8:	0ef70663          	beq	a4,a5,32b4 <__divdf3+0x7a4>
    31cc:	00200793          	li	a5,2
    31d0:	f0f716e3          	bne	a4,a5,30dc <__divdf3+0x5cc>
    31d4:	00000593          	li	a1,0
    31d8:	00000713          	li	a4,0
    31dc:	7ff00793          	li	a5,2047
    31e0:	f5dff06f          	j	313c <__divdf3+0x62c>
    31e4:	000a8493          	mv	s1,s5
    31e8:	fd5ff06f          	j	31bc <__divdf3+0x6ac>
    31ec:	000809b7          	lui	s3,0x80
    31f0:	00000813          	li	a6,0
    31f4:	00000493          	li	s1,0
    31f8:	00300713          	li	a4,3
    31fc:	fc1ff06f          	j	31bc <__divdf3+0x6ac>
    3200:	00100593          	li	a1,1
    3204:	40f585b3          	sub	a1,a1,a5
    3208:	03800713          	li	a4,56
    320c:	0ab74463          	blt	a4,a1,32b4 <__divdf3+0x7a4>
    3210:	01f00713          	li	a4,31
    3214:	06b74663          	blt	a4,a1,3280 <__divdf3+0x770>
    3218:	41e90913          	addi	s2,s2,1054
    321c:	012997b3          	sll	a5,s3,s2
    3220:	00b85733          	srl	a4,a6,a1
    3224:	01281933          	sll	s2,a6,s2
    3228:	00e7e7b3          	or	a5,a5,a4
    322c:	01203933          	snez	s2,s2
    3230:	0127e7b3          	or	a5,a5,s2
    3234:	00b9d5b3          	srl	a1,s3,a1
    3238:	0077f713          	andi	a4,a5,7
    323c:	02070063          	beqz	a4,325c <__divdf3+0x74c>
    3240:	00f7f713          	andi	a4,a5,15
    3244:	00400693          	li	a3,4
    3248:	00d70a63          	beq	a4,a3,325c <__divdf3+0x74c>
    324c:	00478713          	addi	a4,a5,4
    3250:	00f737b3          	sltu	a5,a4,a5
    3254:	00f585b3          	add	a1,a1,a5
    3258:	00070793          	mv	a5,a4
    325c:	00800737          	lui	a4,0x800
    3260:	00e5f733          	and	a4,a1,a4
    3264:	06071863          	bnez	a4,32d4 <__divdf3+0x7c4>
    3268:	01d59713          	slli	a4,a1,0x1d
    326c:	0037d793          	srli	a5,a5,0x3
    3270:	00f76733          	or	a4,a4,a5
    3274:	0035d593          	srli	a1,a1,0x3
    3278:	00000793          	li	a5,0
    327c:	ec1ff06f          	j	313c <__divdf3+0x62c>
    3280:	fe100713          	li	a4,-31
    3284:	40f707b3          	sub	a5,a4,a5
    3288:	02000693          	li	a3,32
    328c:	00f9d7b3          	srl	a5,s3,a5
    3290:	00000713          	li	a4,0
    3294:	00d58663          	beq	a1,a3,32a0 <__divdf3+0x790>
    3298:	43e90713          	addi	a4,s2,1086
    329c:	00e99733          	sll	a4,s3,a4
    32a0:	01076733          	or	a4,a4,a6
    32a4:	00e03733          	snez	a4,a4
    32a8:	00e7e7b3          	or	a5,a5,a4
    32ac:	00000593          	li	a1,0
    32b0:	f89ff06f          	j	3238 <__divdf3+0x728>
    32b4:	00000593          	li	a1,0
    32b8:	00000713          	li	a4,0
    32bc:	fbdff06f          	j	3278 <__divdf3+0x768>
    32c0:	000805b7          	lui	a1,0x80
    32c4:	00000713          	li	a4,0
    32c8:	7ff00793          	li	a5,2047
    32cc:	00000493          	li	s1,0
    32d0:	e6dff06f          	j	313c <__divdf3+0x62c>
    32d4:	00000593          	li	a1,0
    32d8:	00000713          	li	a4,0
    32dc:	00100793          	li	a5,1
    32e0:	e5dff06f          	j	313c <__divdf3+0x62c>
    32e4:	00080793          	mv	a5,a6
    32e8:	00078813          	mv	a6,a5
    32ec:	dedff06f          	j	30d8 <__divdf3+0x5c8>

000032f0 <__ledf2>:
    32f0:	00100737          	lui	a4,0x100
    32f4:	fff70713          	addi	a4,a4,-1 # fffff <seed+0xee133>
    32f8:	0145d813          	srli	a6,a1,0x14
    32fc:	00b778b3          	and	a7,a4,a1
    3300:	00050793          	mv	a5,a0
    3304:	00050313          	mv	t1,a0
    3308:	7ff87813          	andi	a6,a6,2047
    330c:	01f5d513          	srli	a0,a1,0x1f
    3310:	7ff00e93          	li	t4,2047
    3314:	0146d593          	srli	a1,a3,0x14
    3318:	00d77733          	and	a4,a4,a3
    331c:	00060e13          	mv	t3,a2
    3320:	7ff5f593          	andi	a1,a1,2047
    3324:	01f6d693          	srli	a3,a3,0x1f
    3328:	01d81a63          	bne	a6,t4,333c <__ledf2+0x4c>
    332c:	00f8eeb3          	or	t4,a7,a5
    3330:	080e8a63          	beqz	t4,33c4 <__ledf2+0xd4>
    3334:	00200513          	li	a0,2
    3338:	00008067          	ret
    333c:	01d59663          	bne	a1,t4,3348 <__ledf2+0x58>
    3340:	00c76eb3          	or	t4,a4,a2
    3344:	fe0e98e3          	bnez	t4,3334 <__ledf2+0x44>
    3348:	08081063          	bnez	a6,33c8 <__ledf2+0xd8>
    334c:	00f8e7b3          	or	a5,a7,a5
    3350:	0017b793          	seqz	a5,a5
    3354:	00059663          	bnez	a1,3360 <__ledf2+0x70>
    3358:	00c76633          	or	a2,a4,a2
    335c:	04060c63          	beqz	a2,33b4 <__ledf2+0xc4>
    3360:	00079c63          	bnez	a5,3378 <__ledf2+0x88>
    3364:	00d51463          	bne	a0,a3,336c <__ledf2+0x7c>
    3368:	0305d063          	bge	a1,a6,3388 <__ledf2+0x98>
    336c:	04050063          	beqz	a0,33ac <__ledf2+0xbc>
    3370:	fff00513          	li	a0,-1
    3374:	00008067          	ret
    3378:	fff00513          	li	a0,-1
    337c:	00068a63          	beqz	a3,3390 <__ledf2+0xa0>
    3380:	00068513          	mv	a0,a3
    3384:	00008067          	ret
    3388:	00b85663          	bge	a6,a1,3394 <__ledf2+0xa4>
    338c:	fe0502e3          	beqz	a0,3370 <__ledf2+0x80>
    3390:	00008067          	ret
    3394:	fd176ce3          	bltu	a4,a7,336c <__ledf2+0x7c>
    3398:	02e89263          	bne	a7,a4,33bc <__ledf2+0xcc>
    339c:	fc6e68e3          	bltu	t3,t1,336c <__ledf2+0x7c>
    33a0:	ffc366e3          	bltu	t1,t3,338c <__ledf2+0x9c>
    33a4:	00000513          	li	a0,0
    33a8:	00008067          	ret
    33ac:	00100513          	li	a0,1
    33b0:	00008067          	ret
    33b4:	fe0798e3          	bnez	a5,33a4 <__ledf2+0xb4>
    33b8:	fb5ff06f          	j	336c <__ledf2+0x7c>
    33bc:	fce8e8e3          	bltu	a7,a4,338c <__ledf2+0x9c>
    33c0:	fe5ff06f          	j	33a4 <__ledf2+0xb4>
    33c4:	f7058ee3          	beq	a1,a6,3340 <__ledf2+0x50>
    33c8:	f8059ee3          	bnez	a1,3364 <__ledf2+0x74>
    33cc:	00000793          	li	a5,0
    33d0:	f89ff06f          	j	3358 <__ledf2+0x68>

000033d4 <__muldf3>:
    33d4:	fd010113          	addi	sp,sp,-48
    33d8:	01312e23          	sw	s3,28(sp)
    33dc:	0145d993          	srli	s3,a1,0x14
    33e0:	02812423          	sw	s0,40(sp)
    33e4:	02912223          	sw	s1,36(sp)
    33e8:	01412c23          	sw	s4,24(sp)
    33ec:	01512a23          	sw	s5,20(sp)
    33f0:	01712623          	sw	s7,12(sp)
    33f4:	00c59493          	slli	s1,a1,0xc
    33f8:	02112623          	sw	ra,44(sp)
    33fc:	03212023          	sw	s2,32(sp)
    3400:	01612823          	sw	s6,16(sp)
    3404:	7ff9f993          	andi	s3,s3,2047
    3408:	00050413          	mv	s0,a0
    340c:	00060b93          	mv	s7,a2
    3410:	00068a13          	mv	s4,a3
    3414:	00c4d493          	srli	s1,s1,0xc
    3418:	01f5da93          	srli	s5,a1,0x1f
    341c:	3c098863          	beqz	s3,37ec <__muldf3+0x418>
    3420:	7ff00793          	li	a5,2047
    3424:	42f98663          	beq	s3,a5,3850 <__muldf3+0x47c>
    3428:	00349493          	slli	s1,s1,0x3
    342c:	01d55793          	srli	a5,a0,0x1d
    3430:	0097e7b3          	or	a5,a5,s1
    3434:	008004b7          	lui	s1,0x800
    3438:	0097e4b3          	or	s1,a5,s1
    343c:	00351913          	slli	s2,a0,0x3
    3440:	c0198993          	addi	s3,s3,-1023 # 7fc01 <seed+0x6dd35>
    3444:	00000b13          	li	s6,0
    3448:	014a5713          	srli	a4,s4,0x14
    344c:	00ca1413          	slli	s0,s4,0xc
    3450:	7ff77713          	andi	a4,a4,2047
    3454:	00c45413          	srli	s0,s0,0xc
    3458:	01fa5a13          	srli	s4,s4,0x1f
    345c:	42070663          	beqz	a4,3888 <__muldf3+0x4b4>
    3460:	7ff00793          	li	a5,2047
    3464:	48f70663          	beq	a4,a5,38f0 <__muldf3+0x51c>
    3468:	00341413          	slli	s0,s0,0x3
    346c:	01dbd793          	srli	a5,s7,0x1d
    3470:	0087e7b3          	or	a5,a5,s0
    3474:	00800437          	lui	s0,0x800
    3478:	0087e433          	or	s0,a5,s0
    347c:	c0170713          	addi	a4,a4,-1023
    3480:	003b9793          	slli	a5,s7,0x3
    3484:	00000613          	li	a2,0
    3488:	00e989b3          	add	s3,s3,a4
    348c:	002b1713          	slli	a4,s6,0x2
    3490:	00c76733          	or	a4,a4,a2
    3494:	00a00693          	li	a3,10
    3498:	014ac833          	xor	a6,s5,s4
    349c:	00198893          	addi	a7,s3,1
    34a0:	4ce6c863          	blt	a3,a4,3970 <__muldf3+0x59c>
    34a4:	00200693          	li	a3,2
    34a8:	48e6c063          	blt	a3,a4,3928 <__muldf3+0x554>
    34ac:	fff70713          	addi	a4,a4,-1
    34b0:	00100693          	li	a3,1
    34b4:	48e6fc63          	bgeu	a3,a4,394c <__muldf3+0x578>
    34b8:	00010a37          	lui	s4,0x10
    34bc:	fffa0393          	addi	t2,s4,-1 # ffff <main+0xb6df>
    34c0:	0107d293          	srli	t0,a5,0x10
    34c4:	00797e33          	and	t3,s2,t2
    34c8:	0077f7b3          	and	a5,a5,t2
    34cc:	01095f93          	srli	t6,s2,0x10
    34d0:	000e0513          	mv	a0,t3
    34d4:	00078593          	mv	a1,a5
    34d8:	72d000ef          	jal	ra,4404 <__mulsi3>
    34dc:	00050e93          	mv	t4,a0
    34e0:	00028593          	mv	a1,t0
    34e4:	000e0513          	mv	a0,t3
    34e8:	71d000ef          	jal	ra,4404 <__mulsi3>
    34ec:	00050713          	mv	a4,a0
    34f0:	00078593          	mv	a1,a5
    34f4:	000f8513          	mv	a0,t6
    34f8:	70d000ef          	jal	ra,4404 <__mulsi3>
    34fc:	00050913          	mv	s2,a0
    3500:	00028593          	mv	a1,t0
    3504:	000f8513          	mv	a0,t6
    3508:	6fd000ef          	jal	ra,4404 <__mulsi3>
    350c:	010ed313          	srli	t1,t4,0x10
    3510:	01270733          	add	a4,a4,s2
    3514:	00e30333          	add	t1,t1,a4
    3518:	00050f13          	mv	t5,a0
    351c:	01237463          	bgeu	t1,s2,3524 <__muldf3+0x150>
    3520:	01450f33          	add	t5,a0,s4
    3524:	01035913          	srli	s2,t1,0x10
    3528:	00737333          	and	t1,t1,t2
    352c:	007efeb3          	and	t4,t4,t2
    3530:	01031313          	slli	t1,t1,0x10
    3534:	007473b3          	and	t2,s0,t2
    3538:	01d30333          	add	t1,t1,t4
    353c:	01045a13          	srli	s4,s0,0x10
    3540:	000e0513          	mv	a0,t3
    3544:	00038593          	mv	a1,t2
    3548:	6bd000ef          	jal	ra,4404 <__mulsi3>
    354c:	00050e93          	mv	t4,a0
    3550:	000a0593          	mv	a1,s4
    3554:	000e0513          	mv	a0,t3
    3558:	6ad000ef          	jal	ra,4404 <__mulsi3>
    355c:	00050e13          	mv	t3,a0
    3560:	00038593          	mv	a1,t2
    3564:	000f8513          	mv	a0,t6
    3568:	69d000ef          	jal	ra,4404 <__mulsi3>
    356c:	00050413          	mv	s0,a0
    3570:	000a0593          	mv	a1,s4
    3574:	000f8513          	mv	a0,t6
    3578:	68d000ef          	jal	ra,4404 <__mulsi3>
    357c:	010ed713          	srli	a4,t4,0x10
    3580:	008e0e33          	add	t3,t3,s0
    3584:	01c70733          	add	a4,a4,t3
    3588:	00050693          	mv	a3,a0
    358c:	00877663          	bgeu	a4,s0,3598 <__muldf3+0x1c4>
    3590:	00010637          	lui	a2,0x10
    3594:	00c506b3          	add	a3,a0,a2
    3598:	00010b37          	lui	s6,0x10
    359c:	fffb0e13          	addi	t3,s6,-1 # ffff <main+0xb6df>
    35a0:	01075f93          	srli	t6,a4,0x10
    35a4:	01c77733          	and	a4,a4,t3
    35a8:	01071713          	slli	a4,a4,0x10
    35ac:	01cefeb3          	and	t4,t4,t3
    35b0:	01d70eb3          	add	t4,a4,t4
    35b4:	01c4fe33          	and	t3,s1,t3
    35b8:	00df8fb3          	add	t6,t6,a3
    35bc:	01d90933          	add	s2,s2,t4
    35c0:	0104da93          	srli	s5,s1,0x10
    35c4:	000e0513          	mv	a0,t3
    35c8:	00078593          	mv	a1,a5
    35cc:	639000ef          	jal	ra,4404 <__mulsi3>
    35d0:	00050413          	mv	s0,a0
    35d4:	00028593          	mv	a1,t0
    35d8:	000e0513          	mv	a0,t3
    35dc:	629000ef          	jal	ra,4404 <__mulsi3>
    35e0:	00050493          	mv	s1,a0
    35e4:	00078593          	mv	a1,a5
    35e8:	000a8513          	mv	a0,s5
    35ec:	619000ef          	jal	ra,4404 <__mulsi3>
    35f0:	00050b93          	mv	s7,a0
    35f4:	00028593          	mv	a1,t0
    35f8:	000a8513          	mv	a0,s5
    35fc:	609000ef          	jal	ra,4404 <__mulsi3>
    3600:	01045793          	srli	a5,s0,0x10
    3604:	017484b3          	add	s1,s1,s7
    3608:	009787b3          	add	a5,a5,s1
    360c:	00050713          	mv	a4,a0
    3610:	0177f463          	bgeu	a5,s7,3618 <__muldf3+0x244>
    3614:	01650733          	add	a4,a0,s6
    3618:	000104b7          	lui	s1,0x10
    361c:	fff48693          	addi	a3,s1,-1 # ffff <main+0xb6df>
    3620:	0107d293          	srli	t0,a5,0x10
    3624:	00e282b3          	add	t0,t0,a4
    3628:	00d7f733          	and	a4,a5,a3
    362c:	00d47433          	and	s0,s0,a3
    3630:	01071713          	slli	a4,a4,0x10
    3634:	00870733          	add	a4,a4,s0
    3638:	000e0513          	mv	a0,t3
    363c:	00038593          	mv	a1,t2
    3640:	5c5000ef          	jal	ra,4404 <__mulsi3>
    3644:	00050413          	mv	s0,a0
    3648:	000a0593          	mv	a1,s4
    364c:	000e0513          	mv	a0,t3
    3650:	5b5000ef          	jal	ra,4404 <__mulsi3>
    3654:	00050e13          	mv	t3,a0
    3658:	00038593          	mv	a1,t2
    365c:	000a8513          	mv	a0,s5
    3660:	5a5000ef          	jal	ra,4404 <__mulsi3>
    3664:	00050393          	mv	t2,a0
    3668:	000a0593          	mv	a1,s4
    366c:	000a8513          	mv	a0,s5
    3670:	595000ef          	jal	ra,4404 <__mulsi3>
    3674:	01045793          	srli	a5,s0,0x10
    3678:	007e0e33          	add	t3,t3,t2
    367c:	01c78e33          	add	t3,a5,t3
    3680:	00050593          	mv	a1,a0
    3684:	007e7463          	bgeu	t3,t2,368c <__muldf3+0x2b8>
    3688:	009505b3          	add	a1,a0,s1
    368c:	000106b7          	lui	a3,0x10
    3690:	fff68693          	addi	a3,a3,-1 # ffff <main+0xb6df>
    3694:	00de77b3          	and	a5,t3,a3
    3698:	00d47433          	and	s0,s0,a3
    369c:	01079793          	slli	a5,a5,0x10
    36a0:	012f0f33          	add	t5,t5,s2
    36a4:	008787b3          	add	a5,a5,s0
    36a8:	01df3eb3          	sltu	t4,t5,t4
    36ac:	01f787b3          	add	a5,a5,t6
    36b0:	01d78533          	add	a0,a5,t4
    36b4:	00ef0f33          	add	t5,t5,a4
    36b8:	00ef3733          	sltu	a4,t5,a4
    36bc:	005506b3          	add	a3,a0,t0
    36c0:	00e68633          	add	a2,a3,a4
    36c4:	01f7b433          	sltu	s0,a5,t6
    36c8:	01d53533          	sltu	a0,a0,t4
    36cc:	010e5793          	srli	a5,t3,0x10
    36d0:	00e63733          	sltu	a4,a2,a4
    36d4:	00a46433          	or	s0,s0,a0
    36d8:	0056b6b3          	sltu	a3,a3,t0
    36dc:	00f40433          	add	s0,s0,a5
    36e0:	00e6e6b3          	or	a3,a3,a4
    36e4:	00d40433          	add	s0,s0,a3
    36e8:	00b40433          	add	s0,s0,a1
    36ec:	01765793          	srli	a5,a2,0x17
    36f0:	00941413          	slli	s0,s0,0x9
    36f4:	00f46433          	or	s0,s0,a5
    36f8:	009f1793          	slli	a5,t5,0x9
    36fc:	0067e7b3          	or	a5,a5,t1
    3700:	00f037b3          	snez	a5,a5
    3704:	017f5f13          	srli	t5,t5,0x17
    3708:	00961713          	slli	a4,a2,0x9
    370c:	01e7e7b3          	or	a5,a5,t5
    3710:	00e7e7b3          	or	a5,a5,a4
    3714:	01000737          	lui	a4,0x1000
    3718:	00e47733          	and	a4,s0,a4
    371c:	28070663          	beqz	a4,39a8 <__muldf3+0x5d4>
    3720:	0017d713          	srli	a4,a5,0x1
    3724:	0017f793          	andi	a5,a5,1
    3728:	00f76733          	or	a4,a4,a5
    372c:	01f41793          	slli	a5,s0,0x1f
    3730:	00f767b3          	or	a5,a4,a5
    3734:	00145413          	srli	s0,s0,0x1
    3738:	3ff88693          	addi	a3,a7,1023 # 8003ff <seed+0x7ee533>
    373c:	26d05a63          	blez	a3,39b0 <__muldf3+0x5dc>
    3740:	0077f713          	andi	a4,a5,7
    3744:	02070063          	beqz	a4,3764 <__muldf3+0x390>
    3748:	00f7f713          	andi	a4,a5,15
    374c:	00400613          	li	a2,4
    3750:	00c70a63          	beq	a4,a2,3764 <__muldf3+0x390>
    3754:	00478713          	addi	a4,a5,4
    3758:	00f737b3          	sltu	a5,a4,a5
    375c:	00f40433          	add	s0,s0,a5
    3760:	00070793          	mv	a5,a4
    3764:	01000737          	lui	a4,0x1000
    3768:	00e47733          	and	a4,s0,a4
    376c:	00070a63          	beqz	a4,3780 <__muldf3+0x3ac>
    3770:	ff000737          	lui	a4,0xff000
    3774:	fff70713          	addi	a4,a4,-1 # feffffff <seed+0xfefee133>
    3778:	00e47433          	and	s0,s0,a4
    377c:	40088693          	addi	a3,a7,1024
    3780:	7fe00713          	li	a4,2046
    3784:	2ed74e63          	blt	a4,a3,3a80 <__muldf3+0x6ac>
    3788:	01d41713          	slli	a4,s0,0x1d
    378c:	0037d793          	srli	a5,a5,0x3
    3790:	00f76733          	or	a4,a4,a5
    3794:	00345413          	srli	s0,s0,0x3
    3798:	7ff007b7          	lui	a5,0x7ff00
    379c:	01469693          	slli	a3,a3,0x14
    37a0:	00c41413          	slli	s0,s0,0xc
    37a4:	00f6f6b3          	and	a3,a3,a5
    37a8:	00c45413          	srli	s0,s0,0xc
    37ac:	02c12083          	lw	ra,44(sp)
    37b0:	0086e6b3          	or	a3,a3,s0
    37b4:	02812403          	lw	s0,40(sp)
    37b8:	01f81813          	slli	a6,a6,0x1f
    37bc:	0106e7b3          	or	a5,a3,a6
    37c0:	02412483          	lw	s1,36(sp)
    37c4:	02012903          	lw	s2,32(sp)
    37c8:	01c12983          	lw	s3,28(sp)
    37cc:	01812a03          	lw	s4,24(sp)
    37d0:	01412a83          	lw	s5,20(sp)
    37d4:	01012b03          	lw	s6,16(sp)
    37d8:	00c12b83          	lw	s7,12(sp)
    37dc:	00070513          	mv	a0,a4
    37e0:	00078593          	mv	a1,a5
    37e4:	03010113          	addi	sp,sp,48
    37e8:	00008067          	ret
    37ec:	00a4e933          	or	s2,s1,a0
    37f0:	06090c63          	beqz	s2,3868 <__muldf3+0x494>
    37f4:	04048063          	beqz	s1,3834 <__muldf3+0x460>
    37f8:	00048513          	mv	a0,s1
    37fc:	4e1000ef          	jal	ra,44dc <__clzsi2>
    3800:	ff550713          	addi	a4,a0,-11
    3804:	01c00793          	li	a5,28
    3808:	02e7cc63          	blt	a5,a4,3840 <__muldf3+0x46c>
    380c:	01d00793          	li	a5,29
    3810:	ff850913          	addi	s2,a0,-8
    3814:	40e787b3          	sub	a5,a5,a4
    3818:	012494b3          	sll	s1,s1,s2
    381c:	00f457b3          	srl	a5,s0,a5
    3820:	0097e4b3          	or	s1,a5,s1
    3824:	01241933          	sll	s2,s0,s2
    3828:	c0d00993          	li	s3,-1011
    382c:	40a989b3          	sub	s3,s3,a0
    3830:	c15ff06f          	j	3444 <__muldf3+0x70>
    3834:	4a9000ef          	jal	ra,44dc <__clzsi2>
    3838:	02050513          	addi	a0,a0,32
    383c:	fc5ff06f          	j	3800 <__muldf3+0x42c>
    3840:	fd850493          	addi	s1,a0,-40
    3844:	009414b3          	sll	s1,s0,s1
    3848:	00000913          	li	s2,0
    384c:	fddff06f          	j	3828 <__muldf3+0x454>
    3850:	00a4e933          	or	s2,s1,a0
    3854:	02090263          	beqz	s2,3878 <__muldf3+0x4a4>
    3858:	00050913          	mv	s2,a0
    385c:	7ff00993          	li	s3,2047
    3860:	00300b13          	li	s6,3
    3864:	be5ff06f          	j	3448 <__muldf3+0x74>
    3868:	00000493          	li	s1,0
    386c:	00000993          	li	s3,0
    3870:	00100b13          	li	s6,1
    3874:	bd5ff06f          	j	3448 <__muldf3+0x74>
    3878:	00000493          	li	s1,0
    387c:	7ff00993          	li	s3,2047
    3880:	00200b13          	li	s6,2
    3884:	bc5ff06f          	j	3448 <__muldf3+0x74>
    3888:	017467b3          	or	a5,s0,s7
    388c:	06078e63          	beqz	a5,3908 <__muldf3+0x534>
    3890:	04040063          	beqz	s0,38d0 <__muldf3+0x4fc>
    3894:	00040513          	mv	a0,s0
    3898:	445000ef          	jal	ra,44dc <__clzsi2>
    389c:	ff550693          	addi	a3,a0,-11
    38a0:	01c00793          	li	a5,28
    38a4:	02d7ce63          	blt	a5,a3,38e0 <__muldf3+0x50c>
    38a8:	01d00713          	li	a4,29
    38ac:	ff850793          	addi	a5,a0,-8
    38b0:	40d70733          	sub	a4,a4,a3
    38b4:	00f41433          	sll	s0,s0,a5
    38b8:	00ebd733          	srl	a4,s7,a4
    38bc:	00876433          	or	s0,a4,s0
    38c0:	00fb97b3          	sll	a5,s7,a5
    38c4:	c0d00713          	li	a4,-1011
    38c8:	40a70733          	sub	a4,a4,a0
    38cc:	bb9ff06f          	j	3484 <__muldf3+0xb0>
    38d0:	000b8513          	mv	a0,s7
    38d4:	409000ef          	jal	ra,44dc <__clzsi2>
    38d8:	02050513          	addi	a0,a0,32
    38dc:	fc1ff06f          	j	389c <__muldf3+0x4c8>
    38e0:	fd850413          	addi	s0,a0,-40
    38e4:	008b9433          	sll	s0,s7,s0
    38e8:	00000793          	li	a5,0
    38ec:	fd9ff06f          	j	38c4 <__muldf3+0x4f0>
    38f0:	017467b3          	or	a5,s0,s7
    38f4:	02078263          	beqz	a5,3918 <__muldf3+0x544>
    38f8:	000b8793          	mv	a5,s7
    38fc:	7ff00713          	li	a4,2047
    3900:	00300613          	li	a2,3
    3904:	b85ff06f          	j	3488 <__muldf3+0xb4>
    3908:	00000413          	li	s0,0
    390c:	00000713          	li	a4,0
    3910:	00100613          	li	a2,1
    3914:	b75ff06f          	j	3488 <__muldf3+0xb4>
    3918:	00000413          	li	s0,0
    391c:	7ff00713          	li	a4,2047
    3920:	00200613          	li	a2,2
    3924:	b65ff06f          	j	3488 <__muldf3+0xb4>
    3928:	00100693          	li	a3,1
    392c:	00e696b3          	sll	a3,a3,a4
    3930:	5306f713          	andi	a4,a3,1328
    3934:	04071863          	bnez	a4,3984 <__muldf3+0x5b0>
    3938:	2406f593          	andi	a1,a3,576
    393c:	12059463          	bnez	a1,3a64 <__muldf3+0x690>
    3940:	0886f693          	andi	a3,a3,136
    3944:	b6068ae3          	beqz	a3,34b8 <__muldf3+0xe4>
    3948:	000a0813          	mv	a6,s4
    394c:	00200713          	li	a4,2
    3950:	12e60863          	beq	a2,a4,3a80 <__muldf3+0x6ac>
    3954:	00300713          	li	a4,3
    3958:	10e60e63          	beq	a2,a4,3a74 <__muldf3+0x6a0>
    395c:	00100713          	li	a4,1
    3960:	dce61ce3          	bne	a2,a4,3738 <__muldf3+0x364>
    3964:	00000413          	li	s0,0
    3968:	00000713          	li	a4,0
    396c:	0bc0006f          	j	3a28 <__muldf3+0x654>
    3970:	00f00693          	li	a3,15
    3974:	02d70063          	beq	a4,a3,3994 <__muldf3+0x5c0>
    3978:	00b00693          	li	a3,11
    397c:	fcd706e3          	beq	a4,a3,3948 <__muldf3+0x574>
    3980:	000a8813          	mv	a6,s5
    3984:	00048413          	mv	s0,s1
    3988:	00090793          	mv	a5,s2
    398c:	000b0613          	mv	a2,s6
    3990:	fbdff06f          	j	394c <__muldf3+0x578>
    3994:	00080437          	lui	s0,0x80
    3998:	00000793          	li	a5,0
    399c:	00000813          	li	a6,0
    39a0:	00300613          	li	a2,3
    39a4:	fb1ff06f          	j	3954 <__muldf3+0x580>
    39a8:	00098893          	mv	a7,s3
    39ac:	d8dff06f          	j	3738 <__muldf3+0x364>
    39b0:	00100613          	li	a2,1
    39b4:	40d60633          	sub	a2,a2,a3
    39b8:	03800713          	li	a4,56
    39bc:	fac744e3          	blt	a4,a2,3964 <__muldf3+0x590>
    39c0:	01f00713          	li	a4,31
    39c4:	06c74663          	blt	a4,a2,3a30 <__muldf3+0x65c>
    39c8:	41e88893          	addi	a7,a7,1054
    39cc:	01141733          	sll	a4,s0,a7
    39d0:	00c7d6b3          	srl	a3,a5,a2
    39d4:	011798b3          	sll	a7,a5,a7
    39d8:	00d76733          	or	a4,a4,a3
    39dc:	011038b3          	snez	a7,a7
    39e0:	011767b3          	or	a5,a4,a7
    39e4:	00c45433          	srl	s0,s0,a2
    39e8:	0077f713          	andi	a4,a5,7
    39ec:	02070063          	beqz	a4,3a0c <__muldf3+0x638>
    39f0:	00f7f713          	andi	a4,a5,15
    39f4:	00400693          	li	a3,4
    39f8:	00d70a63          	beq	a4,a3,3a0c <__muldf3+0x638>
    39fc:	00478713          	addi	a4,a5,4 # 7ff00004 <seed+0x7feee138>
    3a00:	00f737b3          	sltu	a5,a4,a5
    3a04:	00f40433          	add	s0,s0,a5
    3a08:	00070793          	mv	a5,a4
    3a0c:	00800737          	lui	a4,0x800
    3a10:	00e47733          	and	a4,s0,a4
    3a14:	06071e63          	bnez	a4,3a90 <__muldf3+0x6bc>
    3a18:	01d41713          	slli	a4,s0,0x1d
    3a1c:	0037d793          	srli	a5,a5,0x3
    3a20:	00f76733          	or	a4,a4,a5
    3a24:	00345413          	srli	s0,s0,0x3
    3a28:	00000693          	li	a3,0
    3a2c:	d6dff06f          	j	3798 <__muldf3+0x3c4>
    3a30:	fe100713          	li	a4,-31
    3a34:	40d70733          	sub	a4,a4,a3
    3a38:	02000593          	li	a1,32
    3a3c:	00e45733          	srl	a4,s0,a4
    3a40:	00000693          	li	a3,0
    3a44:	00b60663          	beq	a2,a1,3a50 <__muldf3+0x67c>
    3a48:	43e88893          	addi	a7,a7,1086
    3a4c:	011416b3          	sll	a3,s0,a7
    3a50:	00f6e6b3          	or	a3,a3,a5
    3a54:	00d036b3          	snez	a3,a3
    3a58:	00d767b3          	or	a5,a4,a3
    3a5c:	00000413          	li	s0,0
    3a60:	f89ff06f          	j	39e8 <__muldf3+0x614>
    3a64:	00080437          	lui	s0,0x80
    3a68:	7ff00693          	li	a3,2047
    3a6c:	00000813          	li	a6,0
    3a70:	d29ff06f          	j	3798 <__muldf3+0x3c4>
    3a74:	00080437          	lui	s0,0x80
    3a78:	00000713          	li	a4,0
    3a7c:	fedff06f          	j	3a68 <__muldf3+0x694>
    3a80:	00000413          	li	s0,0
    3a84:	00000713          	li	a4,0
    3a88:	7ff00693          	li	a3,2047
    3a8c:	d0dff06f          	j	3798 <__muldf3+0x3c4>
    3a90:	00000413          	li	s0,0
    3a94:	00000713          	li	a4,0
    3a98:	00100693          	li	a3,1
    3a9c:	cfdff06f          	j	3798 <__muldf3+0x3c4>

00003aa0 <__subdf3>:
    3aa0:	00100837          	lui	a6,0x100
    3aa4:	fff80813          	addi	a6,a6,-1 # fffff <seed+0xee133>
    3aa8:	fe010113          	addi	sp,sp,-32
    3aac:	00b878b3          	and	a7,a6,a1
    3ab0:	0145d713          	srli	a4,a1,0x14
    3ab4:	01d55793          	srli	a5,a0,0x1d
    3ab8:	00d87833          	and	a6,a6,a3
    3abc:	00812c23          	sw	s0,24(sp)
    3ac0:	7ff77413          	andi	s0,a4,2047
    3ac4:	00389713          	slli	a4,a7,0x3
    3ac8:	0146d893          	srli	a7,a3,0x14
    3acc:	00912a23          	sw	s1,20(sp)
    3ad0:	00e7e7b3          	or	a5,a5,a4
    3ad4:	01f5d493          	srli	s1,a1,0x1f
    3ad8:	01d65713          	srli	a4,a2,0x1d
    3adc:	00381813          	slli	a6,a6,0x3
    3ae0:	00112e23          	sw	ra,28(sp)
    3ae4:	01212823          	sw	s2,16(sp)
    3ae8:	01312623          	sw	s3,12(sp)
    3aec:	7ff8f893          	andi	a7,a7,2047
    3af0:	7ff00593          	li	a1,2047
    3af4:	00351513          	slli	a0,a0,0x3
    3af8:	01f6d693          	srli	a3,a3,0x1f
    3afc:	01076733          	or	a4,a4,a6
    3b00:	00361613          	slli	a2,a2,0x3
    3b04:	00b89663          	bne	a7,a1,3b10 <__subdf3+0x70>
    3b08:	00c765b3          	or	a1,a4,a2
    3b0c:	00059463          	bnez	a1,3b14 <__subdf3+0x74>
    3b10:	0016c693          	xori	a3,a3,1
    3b14:	41140833          	sub	a6,s0,a7
    3b18:	2c969863          	bne	a3,s1,3de8 <__subdf3+0x348>
    3b1c:	13005063          	blez	a6,3c3c <__subdf3+0x19c>
    3b20:	04089063          	bnez	a7,3b60 <__subdf3+0xc0>
    3b24:	00c766b3          	or	a3,a4,a2
    3b28:	70068e63          	beqz	a3,4244 <__subdf3+0x7a4>
    3b2c:	fff80593          	addi	a1,a6,-1
    3b30:	02059063          	bnez	a1,3b50 <__subdf3+0xb0>
    3b34:	00c50633          	add	a2,a0,a2
    3b38:	00e78733          	add	a4,a5,a4
    3b3c:	00a637b3          	sltu	a5,a2,a0
    3b40:	00f707b3          	add	a5,a4,a5
    3b44:	00060513          	mv	a0,a2
    3b48:	00100413          	li	s0,1
    3b4c:	0700006f          	j	3bbc <__subdf3+0x11c>
    3b50:	7ff00693          	li	a3,2047
    3b54:	02d81063          	bne	a6,a3,3b74 <__subdf3+0xd4>
    3b58:	7ff00413          	li	s0,2047
    3b5c:	2140006f          	j	3d70 <__subdf3+0x2d0>
    3b60:	7ff00693          	li	a3,2047
    3b64:	20d40663          	beq	s0,a3,3d70 <__subdf3+0x2d0>
    3b68:	008006b7          	lui	a3,0x800
    3b6c:	00d76733          	or	a4,a4,a3
    3b70:	00080593          	mv	a1,a6
    3b74:	03800693          	li	a3,56
    3b78:	0ab6cc63          	blt	a3,a1,3c30 <__subdf3+0x190>
    3b7c:	01f00693          	li	a3,31
    3b80:	06b6ce63          	blt	a3,a1,3bfc <__subdf3+0x15c>
    3b84:	02000813          	li	a6,32
    3b88:	40b80833          	sub	a6,a6,a1
    3b8c:	010716b3          	sll	a3,a4,a6
    3b90:	00b658b3          	srl	a7,a2,a1
    3b94:	01061833          	sll	a6,a2,a6
    3b98:	0116e6b3          	or	a3,a3,a7
    3b9c:	01003833          	snez	a6,a6
    3ba0:	0106e6b3          	or	a3,a3,a6
    3ba4:	00b755b3          	srl	a1,a4,a1
    3ba8:	00a686b3          	add	a3,a3,a0
    3bac:	00f585b3          	add	a1,a1,a5
    3bb0:	00a6b7b3          	sltu	a5,a3,a0
    3bb4:	00f587b3          	add	a5,a1,a5
    3bb8:	00068513          	mv	a0,a3
    3bbc:	00800737          	lui	a4,0x800
    3bc0:	00e7f733          	and	a4,a5,a4
    3bc4:	1a070663          	beqz	a4,3d70 <__subdf3+0x2d0>
    3bc8:	00140413          	addi	s0,s0,1 # 80001 <seed+0x6e135>
    3bcc:	7ff00713          	li	a4,2047
    3bd0:	5ce40a63          	beq	s0,a4,41a4 <__subdf3+0x704>
    3bd4:	ff800737          	lui	a4,0xff800
    3bd8:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    3bdc:	00e7f7b3          	and	a5,a5,a4
    3be0:	00155713          	srli	a4,a0,0x1
    3be4:	00157513          	andi	a0,a0,1
    3be8:	00a76733          	or	a4,a4,a0
    3bec:	01f79513          	slli	a0,a5,0x1f
    3bf0:	00e56533          	or	a0,a0,a4
    3bf4:	0017d793          	srli	a5,a5,0x1
    3bf8:	1780006f          	j	3d70 <__subdf3+0x2d0>
    3bfc:	fe058693          	addi	a3,a1,-32 # 7ffe0 <seed+0x6e114>
    3c00:	02000893          	li	a7,32
    3c04:	00d756b3          	srl	a3,a4,a3
    3c08:	00000813          	li	a6,0
    3c0c:	01158863          	beq	a1,a7,3c1c <__subdf3+0x17c>
    3c10:	04000813          	li	a6,64
    3c14:	40b80833          	sub	a6,a6,a1
    3c18:	01071833          	sll	a6,a4,a6
    3c1c:	00c86833          	or	a6,a6,a2
    3c20:	01003833          	snez	a6,a6
    3c24:	0106e6b3          	or	a3,a3,a6
    3c28:	00000593          	li	a1,0
    3c2c:	f7dff06f          	j	3ba8 <__subdf3+0x108>
    3c30:	00c766b3          	or	a3,a4,a2
    3c34:	00d036b3          	snez	a3,a3
    3c38:	ff1ff06f          	j	3c28 <__subdf3+0x188>
    3c3c:	0e080263          	beqz	a6,3d20 <__subdf3+0x280>
    3c40:	408885b3          	sub	a1,a7,s0
    3c44:	02041e63          	bnez	s0,3c80 <__subdf3+0x1e0>
    3c48:	00a7e6b3          	or	a3,a5,a0
    3c4c:	52068c63          	beqz	a3,4184 <__subdf3+0x6e4>
    3c50:	fff58693          	addi	a3,a1,-1
    3c54:	00069c63          	bnez	a3,3c6c <__subdf3+0x1cc>
    3c58:	00c50533          	add	a0,a0,a2
    3c5c:	00e78733          	add	a4,a5,a4
    3c60:	00c53633          	sltu	a2,a0,a2
    3c64:	00c707b3          	add	a5,a4,a2
    3c68:	ee1ff06f          	j	3b48 <__subdf3+0xa8>
    3c6c:	7ff00813          	li	a6,2047
    3c70:	03059263          	bne	a1,a6,3c94 <__subdf3+0x1f4>
    3c74:	00070793          	mv	a5,a4
    3c78:	00060513          	mv	a0,a2
    3c7c:	eddff06f          	j	3b58 <__subdf3+0xb8>
    3c80:	7ff00693          	li	a3,2047
    3c84:	fed888e3          	beq	a7,a3,3c74 <__subdf3+0x1d4>
    3c88:	008006b7          	lui	a3,0x800
    3c8c:	00d7e7b3          	or	a5,a5,a3
    3c90:	00058693          	mv	a3,a1
    3c94:	03800593          	li	a1,56
    3c98:	06d5ce63          	blt	a1,a3,3d14 <__subdf3+0x274>
    3c9c:	01f00593          	li	a1,31
    3ca0:	04d5c063          	blt	a1,a3,3ce0 <__subdf3+0x240>
    3ca4:	02000813          	li	a6,32
    3ca8:	40d80833          	sub	a6,a6,a3
    3cac:	010795b3          	sll	a1,a5,a6
    3cb0:	00d55333          	srl	t1,a0,a3
    3cb4:	01051833          	sll	a6,a0,a6
    3cb8:	0065e5b3          	or	a1,a1,t1
    3cbc:	01003833          	snez	a6,a6
    3cc0:	0105e5b3          	or	a1,a1,a6
    3cc4:	00d7d6b3          	srl	a3,a5,a3
    3cc8:	00c58533          	add	a0,a1,a2
    3ccc:	00e686b3          	add	a3,a3,a4
    3cd0:	00c53633          	sltu	a2,a0,a2
    3cd4:	00c687b3          	add	a5,a3,a2
    3cd8:	00088413          	mv	s0,a7
    3cdc:	ee1ff06f          	j	3bbc <__subdf3+0x11c>
    3ce0:	fe068593          	addi	a1,a3,-32 # 7fffe0 <seed+0x7ee114>
    3ce4:	02000313          	li	t1,32
    3ce8:	00b7d5b3          	srl	a1,a5,a1
    3cec:	00000813          	li	a6,0
    3cf0:	00668863          	beq	a3,t1,3d00 <__subdf3+0x260>
    3cf4:	04000813          	li	a6,64
    3cf8:	40d80833          	sub	a6,a6,a3
    3cfc:	01079833          	sll	a6,a5,a6
    3d00:	00a86833          	or	a6,a6,a0
    3d04:	01003833          	snez	a6,a6
    3d08:	0105e5b3          	or	a1,a1,a6
    3d0c:	00000693          	li	a3,0
    3d10:	fb9ff06f          	j	3cc8 <__subdf3+0x228>
    3d14:	00a7e5b3          	or	a1,a5,a0
    3d18:	00b035b3          	snez	a1,a1
    3d1c:	ff1ff06f          	j	3d0c <__subdf3+0x26c>
    3d20:	00140693          	addi	a3,s0,1
    3d24:	7fe6f593          	andi	a1,a3,2046
    3d28:	08059863          	bnez	a1,3db8 <__subdf3+0x318>
    3d2c:	00a7e6b3          	or	a3,a5,a0
    3d30:	06041463          	bnez	s0,3d98 <__subdf3+0x2f8>
    3d34:	46068063          	beqz	a3,4194 <__subdf3+0x6f4>
    3d38:	00c766b3          	or	a3,a4,a2
    3d3c:	02068a63          	beqz	a3,3d70 <__subdf3+0x2d0>
    3d40:	00c50633          	add	a2,a0,a2
    3d44:	00e78733          	add	a4,a5,a4
    3d48:	00a637b3          	sltu	a5,a2,a0
    3d4c:	00f707b3          	add	a5,a4,a5
    3d50:	00800737          	lui	a4,0x800
    3d54:	00e7f733          	and	a4,a5,a4
    3d58:	00060513          	mv	a0,a2
    3d5c:	00070a63          	beqz	a4,3d70 <__subdf3+0x2d0>
    3d60:	ff800737          	lui	a4,0xff800
    3d64:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    3d68:	00e7f7b3          	and	a5,a5,a4
    3d6c:	00100413          	li	s0,1
    3d70:	00757713          	andi	a4,a0,7
    3d74:	42070c63          	beqz	a4,41ac <__subdf3+0x70c>
    3d78:	00f57713          	andi	a4,a0,15
    3d7c:	00400693          	li	a3,4
    3d80:	42d70663          	beq	a4,a3,41ac <__subdf3+0x70c>
    3d84:	00450713          	addi	a4,a0,4
    3d88:	00a73533          	sltu	a0,a4,a0
    3d8c:	00a787b3          	add	a5,a5,a0
    3d90:	00070513          	mv	a0,a4
    3d94:	4180006f          	j	41ac <__subdf3+0x70c>
    3d98:	ec068ee3          	beqz	a3,3c74 <__subdf3+0x1d4>
    3d9c:	00c76733          	or	a4,a4,a2
    3da0:	da070ce3          	beqz	a4,3b58 <__subdf3+0xb8>
    3da4:	00000493          	li	s1,0
    3da8:	004007b7          	lui	a5,0x400
    3dac:	00000513          	li	a0,0
    3db0:	7ff00413          	li	s0,2047
    3db4:	3f80006f          	j	41ac <__subdf3+0x70c>
    3db8:	7ff00593          	li	a1,2047
    3dbc:	3eb68263          	beq	a3,a1,41a0 <__subdf3+0x700>
    3dc0:	00c50633          	add	a2,a0,a2
    3dc4:	00a63533          	sltu	a0,a2,a0
    3dc8:	00e78733          	add	a4,a5,a4
    3dcc:	00a70733          	add	a4,a4,a0
    3dd0:	01f71513          	slli	a0,a4,0x1f
    3dd4:	00165613          	srli	a2,a2,0x1
    3dd8:	00c56533          	or	a0,a0,a2
    3ddc:	00175793          	srli	a5,a4,0x1
    3de0:	00068413          	mv	s0,a3
    3de4:	f8dff06f          	j	3d70 <__subdf3+0x2d0>
    3de8:	0f005c63          	blez	a6,3ee0 <__subdf3+0x440>
    3dec:	08089e63          	bnez	a7,3e88 <__subdf3+0x3e8>
    3df0:	00c766b3          	or	a3,a4,a2
    3df4:	44068863          	beqz	a3,4244 <__subdf3+0x7a4>
    3df8:	fff80593          	addi	a1,a6,-1
    3dfc:	02059063          	bnez	a1,3e1c <__subdf3+0x37c>
    3e00:	40c50633          	sub	a2,a0,a2
    3e04:	40e78733          	sub	a4,a5,a4
    3e08:	00c537b3          	sltu	a5,a0,a2
    3e0c:	40f707b3          	sub	a5,a4,a5
    3e10:	00060513          	mv	a0,a2
    3e14:	00100413          	li	s0,1
    3e18:	0540006f          	j	3e6c <__subdf3+0x3cc>
    3e1c:	7ff00693          	li	a3,2047
    3e20:	d2d80ce3          	beq	a6,a3,3b58 <__subdf3+0xb8>
    3e24:	03800693          	li	a3,56
    3e28:	0ab6c663          	blt	a3,a1,3ed4 <__subdf3+0x434>
    3e2c:	01f00693          	li	a3,31
    3e30:	06b6c863          	blt	a3,a1,3ea0 <__subdf3+0x400>
    3e34:	02000813          	li	a6,32
    3e38:	40b80833          	sub	a6,a6,a1
    3e3c:	010716b3          	sll	a3,a4,a6
    3e40:	00b658b3          	srl	a7,a2,a1
    3e44:	01061833          	sll	a6,a2,a6
    3e48:	0116e6b3          	or	a3,a3,a7
    3e4c:	01003833          	snez	a6,a6
    3e50:	0106e6b3          	or	a3,a3,a6
    3e54:	00b755b3          	srl	a1,a4,a1
    3e58:	40d506b3          	sub	a3,a0,a3
    3e5c:	40b785b3          	sub	a1,a5,a1
    3e60:	00d537b3          	sltu	a5,a0,a3
    3e64:	40f587b3          	sub	a5,a1,a5
    3e68:	00068513          	mv	a0,a3
    3e6c:	00800937          	lui	s2,0x800
    3e70:	0127f733          	and	a4,a5,s2
    3e74:	ee070ee3          	beqz	a4,3d70 <__subdf3+0x2d0>
    3e78:	fff90913          	addi	s2,s2,-1 # 7fffff <seed+0x7ee133>
    3e7c:	0127f933          	and	s2,a5,s2
    3e80:	00050993          	mv	s3,a0
    3e84:	2140006f          	j	4098 <__subdf3+0x5f8>
    3e88:	7ff00693          	li	a3,2047
    3e8c:	eed402e3          	beq	s0,a3,3d70 <__subdf3+0x2d0>
    3e90:	008006b7          	lui	a3,0x800
    3e94:	00d76733          	or	a4,a4,a3
    3e98:	00080593          	mv	a1,a6
    3e9c:	f89ff06f          	j	3e24 <__subdf3+0x384>
    3ea0:	fe058693          	addi	a3,a1,-32
    3ea4:	02000893          	li	a7,32
    3ea8:	00d756b3          	srl	a3,a4,a3
    3eac:	00000813          	li	a6,0
    3eb0:	01158863          	beq	a1,a7,3ec0 <__subdf3+0x420>
    3eb4:	04000813          	li	a6,64
    3eb8:	40b80833          	sub	a6,a6,a1
    3ebc:	01071833          	sll	a6,a4,a6
    3ec0:	00c86833          	or	a6,a6,a2
    3ec4:	01003833          	snez	a6,a6
    3ec8:	0106e6b3          	or	a3,a3,a6
    3ecc:	00000593          	li	a1,0
    3ed0:	f89ff06f          	j	3e58 <__subdf3+0x3b8>
    3ed4:	00c766b3          	or	a3,a4,a2
    3ed8:	00d036b3          	snez	a3,a3
    3edc:	ff1ff06f          	j	3ecc <__subdf3+0x42c>
    3ee0:	0e080863          	beqz	a6,3fd0 <__subdf3+0x530>
    3ee4:	40888833          	sub	a6,a7,s0
    3ee8:	04041263          	bnez	s0,3f2c <__subdf3+0x48c>
    3eec:	00a7e5b3          	or	a1,a5,a0
    3ef0:	34058e63          	beqz	a1,424c <__subdf3+0x7ac>
    3ef4:	fff80593          	addi	a1,a6,-1
    3ef8:	00059e63          	bnez	a1,3f14 <__subdf3+0x474>
    3efc:	40a60533          	sub	a0,a2,a0
    3f00:	40f70733          	sub	a4,a4,a5
    3f04:	00a63633          	sltu	a2,a2,a0
    3f08:	40c707b3          	sub	a5,a4,a2
    3f0c:	00068493          	mv	s1,a3
    3f10:	f05ff06f          	j	3e14 <__subdf3+0x374>
    3f14:	7ff00313          	li	t1,2047
    3f18:	02681463          	bne	a6,t1,3f40 <__subdf3+0x4a0>
    3f1c:	00070793          	mv	a5,a4
    3f20:	00060513          	mv	a0,a2
    3f24:	7ff00413          	li	s0,2047
    3f28:	0d00006f          	j	3ff8 <__subdf3+0x558>
    3f2c:	7ff00593          	li	a1,2047
    3f30:	feb886e3          	beq	a7,a1,3f1c <__subdf3+0x47c>
    3f34:	008005b7          	lui	a1,0x800
    3f38:	00b7e7b3          	or	a5,a5,a1
    3f3c:	00080593          	mv	a1,a6
    3f40:	03800813          	li	a6,56
    3f44:	08b84063          	blt	a6,a1,3fc4 <__subdf3+0x524>
    3f48:	01f00813          	li	a6,31
    3f4c:	04b84263          	blt	a6,a1,3f90 <__subdf3+0x4f0>
    3f50:	02000313          	li	t1,32
    3f54:	40b30333          	sub	t1,t1,a1
    3f58:	00b55e33          	srl	t3,a0,a1
    3f5c:	00679833          	sll	a6,a5,t1
    3f60:	00651333          	sll	t1,a0,t1
    3f64:	01c86833          	or	a6,a6,t3
    3f68:	00603333          	snez	t1,t1
    3f6c:	00686533          	or	a0,a6,t1
    3f70:	00b7d5b3          	srl	a1,a5,a1
    3f74:	40a60533          	sub	a0,a2,a0
    3f78:	40b705b3          	sub	a1,a4,a1
    3f7c:	00a63633          	sltu	a2,a2,a0
    3f80:	40c587b3          	sub	a5,a1,a2
    3f84:	00088413          	mv	s0,a7
    3f88:	00068493          	mv	s1,a3
    3f8c:	ee1ff06f          	j	3e6c <__subdf3+0x3cc>
    3f90:	fe058813          	addi	a6,a1,-32 # 7fffe0 <seed+0x7ee114>
    3f94:	02000e13          	li	t3,32
    3f98:	0107d833          	srl	a6,a5,a6
    3f9c:	00000313          	li	t1,0
    3fa0:	01c58863          	beq	a1,t3,3fb0 <__subdf3+0x510>
    3fa4:	04000313          	li	t1,64
    3fa8:	40b30333          	sub	t1,t1,a1
    3fac:	00679333          	sll	t1,a5,t1
    3fb0:	00a36333          	or	t1,t1,a0
    3fb4:	00603333          	snez	t1,t1
    3fb8:	00686533          	or	a0,a6,t1
    3fbc:	00000593          	li	a1,0
    3fc0:	fb5ff06f          	j	3f74 <__subdf3+0x4d4>
    3fc4:	00a7e533          	or	a0,a5,a0
    3fc8:	00a03533          	snez	a0,a0
    3fcc:	ff1ff06f          	j	3fbc <__subdf3+0x51c>
    3fd0:	00140593          	addi	a1,s0,1
    3fd4:	7fe5f593          	andi	a1,a1,2046
    3fd8:	08059863          	bnez	a1,4068 <__subdf3+0x5c8>
    3fdc:	00c765b3          	or	a1,a4,a2
    3fe0:	00a7e833          	or	a6,a5,a0
    3fe4:	06041263          	bnez	s0,4048 <__subdf3+0x5a8>
    3fe8:	00081c63          	bnez	a6,4000 <__subdf3+0x560>
    3fec:	26058863          	beqz	a1,425c <__subdf3+0x7bc>
    3ff0:	00070793          	mv	a5,a4
    3ff4:	00060513          	mv	a0,a2
    3ff8:	00068493          	mv	s1,a3
    3ffc:	d75ff06f          	j	3d70 <__subdf3+0x2d0>
    4000:	d60588e3          	beqz	a1,3d70 <__subdf3+0x2d0>
    4004:	40c50833          	sub	a6,a0,a2
    4008:	010538b3          	sltu	a7,a0,a6
    400c:	40e785b3          	sub	a1,a5,a4
    4010:	411585b3          	sub	a1,a1,a7
    4014:	008008b7          	lui	a7,0x800
    4018:	0115f8b3          	and	a7,a1,a7
    401c:	00088c63          	beqz	a7,4034 <__subdf3+0x594>
    4020:	40a60533          	sub	a0,a2,a0
    4024:	40f70733          	sub	a4,a4,a5
    4028:	00a63633          	sltu	a2,a2,a0
    402c:	40c707b3          	sub	a5,a4,a2
    4030:	fc9ff06f          	j	3ff8 <__subdf3+0x558>
    4034:	00b86533          	or	a0,a6,a1
    4038:	22050a63          	beqz	a0,426c <__subdf3+0x7cc>
    403c:	00058793          	mv	a5,a1
    4040:	00080513          	mv	a0,a6
    4044:	d2dff06f          	j	3d70 <__subdf3+0x2d0>
    4048:	00081c63          	bnez	a6,4060 <__subdf3+0x5c0>
    404c:	22058463          	beqz	a1,4274 <__subdf3+0x7d4>
    4050:	00070793          	mv	a5,a4
    4054:	00060513          	mv	a0,a2
    4058:	00068493          	mv	s1,a3
    405c:	afdff06f          	j	3b58 <__subdf3+0xb8>
    4060:	ae058ce3          	beqz	a1,3b58 <__subdf3+0xb8>
    4064:	d41ff06f          	j	3da4 <__subdf3+0x304>
    4068:	40c509b3          	sub	s3,a0,a2
    406c:	013535b3          	sltu	a1,a0,s3
    4070:	40e78933          	sub	s2,a5,a4
    4074:	40b90933          	sub	s2,s2,a1
    4078:	008005b7          	lui	a1,0x800
    407c:	00b975b3          	and	a1,s2,a1
    4080:	08058463          	beqz	a1,4108 <__subdf3+0x668>
    4084:	40a609b3          	sub	s3,a2,a0
    4088:	40f70933          	sub	s2,a4,a5
    408c:	01363633          	sltu	a2,a2,s3
    4090:	40c90933          	sub	s2,s2,a2
    4094:	00068493          	mv	s1,a3
    4098:	08090263          	beqz	s2,411c <__subdf3+0x67c>
    409c:	00090513          	mv	a0,s2
    40a0:	43c000ef          	jal	ra,44dc <__clzsi2>
    40a4:	ff850713          	addi	a4,a0,-8
    40a8:	01f00793          	li	a5,31
    40ac:	08e7c063          	blt	a5,a4,412c <__subdf3+0x68c>
    40b0:	02000793          	li	a5,32
    40b4:	40e787b3          	sub	a5,a5,a4
    40b8:	00e91933          	sll	s2,s2,a4
    40bc:	00f9d7b3          	srl	a5,s3,a5
    40c0:	0127e7b3          	or	a5,a5,s2
    40c4:	00e99533          	sll	a0,s3,a4
    40c8:	0a874463          	blt	a4,s0,4170 <__subdf3+0x6d0>
    40cc:	40870733          	sub	a4,a4,s0
    40d0:	00170613          	addi	a2,a4,1
    40d4:	01f00693          	li	a3,31
    40d8:	06c6c263          	blt	a3,a2,413c <__subdf3+0x69c>
    40dc:	02000713          	li	a4,32
    40e0:	40c70733          	sub	a4,a4,a2
    40e4:	00e796b3          	sll	a3,a5,a4
    40e8:	00c555b3          	srl	a1,a0,a2
    40ec:	00e51733          	sll	a4,a0,a4
    40f0:	00b6e6b3          	or	a3,a3,a1
    40f4:	00e03733          	snez	a4,a4
    40f8:	00e6e533          	or	a0,a3,a4
    40fc:	00c7d7b3          	srl	a5,a5,a2
    4100:	00000413          	li	s0,0
    4104:	c6dff06f          	j	3d70 <__subdf3+0x2d0>
    4108:	0129e533          	or	a0,s3,s2
    410c:	f80516e3          	bnez	a0,4098 <__subdf3+0x5f8>
    4110:	00000793          	li	a5,0
    4114:	00000413          	li	s0,0
    4118:	14c0006f          	j	4264 <__subdf3+0x7c4>
    411c:	00098513          	mv	a0,s3
    4120:	3bc000ef          	jal	ra,44dc <__clzsi2>
    4124:	02050513          	addi	a0,a0,32
    4128:	f7dff06f          	j	40a4 <__subdf3+0x604>
    412c:	fd850793          	addi	a5,a0,-40
    4130:	00f997b3          	sll	a5,s3,a5
    4134:	00000513          	li	a0,0
    4138:	f91ff06f          	j	40c8 <__subdf3+0x628>
    413c:	fe170713          	addi	a4,a4,-31
    4140:	02000593          	li	a1,32
    4144:	00e7d733          	srl	a4,a5,a4
    4148:	00000693          	li	a3,0
    414c:	00b60863          	beq	a2,a1,415c <__subdf3+0x6bc>
    4150:	04000693          	li	a3,64
    4154:	40c686b3          	sub	a3,a3,a2
    4158:	00d796b3          	sll	a3,a5,a3
    415c:	00d566b3          	or	a3,a0,a3
    4160:	00d036b3          	snez	a3,a3
    4164:	00d76533          	or	a0,a4,a3
    4168:	00000793          	li	a5,0
    416c:	f95ff06f          	j	4100 <__subdf3+0x660>
    4170:	40e40433          	sub	s0,s0,a4
    4174:	ff800737          	lui	a4,0xff800
    4178:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    417c:	00e7f7b3          	and	a5,a5,a4
    4180:	bf1ff06f          	j	3d70 <__subdf3+0x2d0>
    4184:	00070793          	mv	a5,a4
    4188:	00060513          	mv	a0,a2
    418c:	00058413          	mv	s0,a1
    4190:	be1ff06f          	j	3d70 <__subdf3+0x2d0>
    4194:	00070793          	mv	a5,a4
    4198:	00060513          	mv	a0,a2
    419c:	bd5ff06f          	j	3d70 <__subdf3+0x2d0>
    41a0:	7ff00413          	li	s0,2047
    41a4:	00000793          	li	a5,0
    41a8:	00000513          	li	a0,0
    41ac:	00800737          	lui	a4,0x800
    41b0:	00e7f733          	and	a4,a5,a4
    41b4:	00070e63          	beqz	a4,41d0 <__subdf3+0x730>
    41b8:	00140413          	addi	s0,s0,1
    41bc:	7ff00713          	li	a4,2047
    41c0:	0ce40263          	beq	s0,a4,4284 <__subdf3+0x7e4>
    41c4:	ff800737          	lui	a4,0xff800
    41c8:	fff70713          	addi	a4,a4,-1 # ff7fffff <seed+0xff7ee133>
    41cc:	00e7f7b3          	and	a5,a5,a4
    41d0:	01d79693          	slli	a3,a5,0x1d
    41d4:	00355513          	srli	a0,a0,0x3
    41d8:	7ff00713          	li	a4,2047
    41dc:	00a6e6b3          	or	a3,a3,a0
    41e0:	0037d793          	srli	a5,a5,0x3
    41e4:	00e41e63          	bne	s0,a4,4200 <__subdf3+0x760>
    41e8:	00f6e6b3          	or	a3,a3,a5
    41ec:	00000793          	li	a5,0
    41f0:	00068863          	beqz	a3,4200 <__subdf3+0x760>
    41f4:	000807b7          	lui	a5,0x80
    41f8:	00000693          	li	a3,0
    41fc:	00000493          	li	s1,0
    4200:	01441713          	slli	a4,s0,0x14
    4204:	7ff00637          	lui	a2,0x7ff00
    4208:	00c79793          	slli	a5,a5,0xc
    420c:	01c12083          	lw	ra,28(sp)
    4210:	01812403          	lw	s0,24(sp)
    4214:	00c77733          	and	a4,a4,a2
    4218:	00c7d793          	srli	a5,a5,0xc
    421c:	01f49493          	slli	s1,s1,0x1f
    4220:	00f767b3          	or	a5,a4,a5
    4224:	0097e733          	or	a4,a5,s1
    4228:	01012903          	lw	s2,16(sp)
    422c:	01412483          	lw	s1,20(sp)
    4230:	00c12983          	lw	s3,12(sp)
    4234:	00068513          	mv	a0,a3
    4238:	00070593          	mv	a1,a4
    423c:	02010113          	addi	sp,sp,32
    4240:	00008067          	ret
    4244:	00080413          	mv	s0,a6
    4248:	b29ff06f          	j	3d70 <__subdf3+0x2d0>
    424c:	00070793          	mv	a5,a4
    4250:	00060513          	mv	a0,a2
    4254:	00080413          	mv	s0,a6
    4258:	da1ff06f          	j	3ff8 <__subdf3+0x558>
    425c:	00000793          	li	a5,0
    4260:	00000513          	li	a0,0
    4264:	00000493          	li	s1,0
    4268:	f45ff06f          	j	41ac <__subdf3+0x70c>
    426c:	00000793          	li	a5,0
    4270:	ff5ff06f          	j	4264 <__subdf3+0x7c4>
    4274:	00000513          	li	a0,0
    4278:	00000493          	li	s1,0
    427c:	004007b7          	lui	a5,0x400
    4280:	b31ff06f          	j	3db0 <__subdf3+0x310>
    4284:	00000793          	li	a5,0
    4288:	00000513          	li	a0,0
    428c:	f45ff06f          	j	41d0 <__subdf3+0x730>

00004290 <__unorddf2>:
    4290:	001007b7          	lui	a5,0x100
    4294:	fff78793          	addi	a5,a5,-1 # fffff <seed+0xee133>
    4298:	00b7f733          	and	a4,a5,a1
    429c:	0145d593          	srli	a1,a1,0x14
    42a0:	00d7f7b3          	and	a5,a5,a3
    42a4:	7ff5f593          	andi	a1,a1,2047
    42a8:	0146d693          	srli	a3,a3,0x14
    42ac:	7ff00813          	li	a6,2047
    42b0:	7ff6f693          	andi	a3,a3,2047
    42b4:	01059863          	bne	a1,a6,42c4 <__unorddf2+0x34>
    42b8:	00a76733          	or	a4,a4,a0
    42bc:	00100513          	li	a0,1
    42c0:	00071c63          	bnez	a4,42d8 <__unorddf2+0x48>
    42c4:	7ff00713          	li	a4,2047
    42c8:	00000513          	li	a0,0
    42cc:	00e69663          	bne	a3,a4,42d8 <__unorddf2+0x48>
    42d0:	00c7e7b3          	or	a5,a5,a2
    42d4:	00f03533          	snez	a0,a5
    42d8:	00008067          	ret

000042dc <__fixdfsi>:
    42dc:	0145d713          	srli	a4,a1,0x14
    42e0:	001006b7          	lui	a3,0x100
    42e4:	fff68793          	addi	a5,a3,-1 # fffff <seed+0xee133>
    42e8:	7ff77713          	andi	a4,a4,2047
    42ec:	3fe00613          	li	a2,1022
    42f0:	00b7f7b3          	and	a5,a5,a1
    42f4:	01f5d593          	srli	a1,a1,0x1f
    42f8:	04e65e63          	bge	a2,a4,4354 <__fixdfsi+0x78>
    42fc:	41d00613          	li	a2,1053
    4300:	00e65a63          	bge	a2,a4,4314 <__fixdfsi+0x38>
    4304:	80000537          	lui	a0,0x80000
    4308:	fff54513          	not	a0,a0
    430c:	00a58533          	add	a0,a1,a0
    4310:	00008067          	ret
    4314:	00d7e7b3          	or	a5,a5,a3
    4318:	43300693          	li	a3,1075
    431c:	40e686b3          	sub	a3,a3,a4
    4320:	01f00613          	li	a2,31
    4324:	02d64063          	blt	a2,a3,4344 <__fixdfsi+0x68>
    4328:	bed70713          	addi	a4,a4,-1043
    432c:	00e797b3          	sll	a5,a5,a4
    4330:	00d55533          	srl	a0,a0,a3
    4334:	00a7e533          	or	a0,a5,a0
    4338:	02058063          	beqz	a1,4358 <__fixdfsi+0x7c>
    433c:	40a00533          	neg	a0,a0
    4340:	00008067          	ret
    4344:	41300693          	li	a3,1043
    4348:	40e68733          	sub	a4,a3,a4
    434c:	00e7d533          	srl	a0,a5,a4
    4350:	fe9ff06f          	j	4338 <__fixdfsi+0x5c>
    4354:	00000513          	li	a0,0
    4358:	00008067          	ret

0000435c <__floatsidf>:
    435c:	ff010113          	addi	sp,sp,-16
    4360:	00112623          	sw	ra,12(sp)
    4364:	00812423          	sw	s0,8(sp)
    4368:	00912223          	sw	s1,4(sp)
    436c:	08050663          	beqz	a0,43f8 <__floatsidf+0x9c>
    4370:	41f55793          	srai	a5,a0,0x1f
    4374:	00a7c433          	xor	s0,a5,a0
    4378:	40f40433          	sub	s0,s0,a5
    437c:	01f55493          	srli	s1,a0,0x1f
    4380:	00040513          	mv	a0,s0
    4384:	158000ef          	jal	ra,44dc <__clzsi2>
    4388:	41e00713          	li	a4,1054
    438c:	00a00793          	li	a5,10
    4390:	40a70733          	sub	a4,a4,a0
    4394:	04a7c863          	blt	a5,a0,43e4 <__floatsidf+0x88>
    4398:	00b00793          	li	a5,11
    439c:	40a787b3          	sub	a5,a5,a0
    43a0:	01550513          	addi	a0,a0,21 # 80000015 <seed+0x7ffee149>
    43a4:	00f457b3          	srl	a5,s0,a5
    43a8:	00a41433          	sll	s0,s0,a0
    43ac:	00048513          	mv	a0,s1
    43b0:	00c79793          	slli	a5,a5,0xc
    43b4:	00c7d793          	srli	a5,a5,0xc
    43b8:	01471713          	slli	a4,a4,0x14
    43bc:	01f51513          	slli	a0,a0,0x1f
    43c0:	00f76733          	or	a4,a4,a5
    43c4:	00c12083          	lw	ra,12(sp)
    43c8:	00a767b3          	or	a5,a4,a0
    43cc:	00040513          	mv	a0,s0
    43d0:	00812403          	lw	s0,8(sp)
    43d4:	00412483          	lw	s1,4(sp)
    43d8:	00078593          	mv	a1,a5
    43dc:	01010113          	addi	sp,sp,16
    43e0:	00008067          	ret
    43e4:	ff550513          	addi	a0,a0,-11
    43e8:	00a417b3          	sll	a5,s0,a0
    43ec:	00048513          	mv	a0,s1
    43f0:	00000413          	li	s0,0
    43f4:	fbdff06f          	j	43b0 <__floatsidf+0x54>
    43f8:	00000713          	li	a4,0
    43fc:	00000793          	li	a5,0
    4400:	ff1ff06f          	j	43f0 <__floatsidf+0x94>

00004404 <__mulsi3>:
    4404:	00050613          	mv	a2,a0
    4408:	00000513          	li	a0,0
    440c:	0015f693          	andi	a3,a1,1
    4410:	00068463          	beqz	a3,4418 <__mulsi3+0x14>
    4414:	00c50533          	add	a0,a0,a2
    4418:	0015d593          	srli	a1,a1,0x1
    441c:	00161613          	slli	a2,a2,0x1
    4420:	fe0596e3          	bnez	a1,440c <__mulsi3+0x8>
    4424:	00008067          	ret

00004428 <__divsi3>:
    4428:	06054063          	bltz	a0,4488 <__umodsi3+0x10>
    442c:	0605c663          	bltz	a1,4498 <__umodsi3+0x20>

00004430 <__udivsi3>:
    4430:	00058613          	mv	a2,a1
    4434:	00050593          	mv	a1,a0
    4438:	fff00513          	li	a0,-1
    443c:	02060c63          	beqz	a2,4474 <__udivsi3+0x44>
    4440:	00100693          	li	a3,1
    4444:	00b67a63          	bgeu	a2,a1,4458 <__udivsi3+0x28>
    4448:	00c05863          	blez	a2,4458 <__udivsi3+0x28>
    444c:	00161613          	slli	a2,a2,0x1
    4450:	00169693          	slli	a3,a3,0x1
    4454:	feb66ae3          	bltu	a2,a1,4448 <__udivsi3+0x18>
    4458:	00000513          	li	a0,0
    445c:	00c5e663          	bltu	a1,a2,4468 <__udivsi3+0x38>
    4460:	40c585b3          	sub	a1,a1,a2
    4464:	00d56533          	or	a0,a0,a3
    4468:	0016d693          	srli	a3,a3,0x1
    446c:	00165613          	srli	a2,a2,0x1
    4470:	fe0696e3          	bnez	a3,445c <__udivsi3+0x2c>
    4474:	00008067          	ret

00004478 <__umodsi3>:
    4478:	00008293          	mv	t0,ra
    447c:	fb5ff0ef          	jal	ra,4430 <__udivsi3>
    4480:	00058513          	mv	a0,a1
    4484:	00028067          	jr	t0 # 1000 <WikiSort+0x474>
    4488:	40a00533          	neg	a0,a0
    448c:	00b04863          	bgtz	a1,449c <__umodsi3+0x24>
    4490:	40b005b3          	neg	a1,a1
    4494:	f9dff06f          	j	4430 <__udivsi3>
    4498:	40b005b3          	neg	a1,a1
    449c:	00008293          	mv	t0,ra
    44a0:	f91ff0ef          	jal	ra,4430 <__udivsi3>
    44a4:	40a00533          	neg	a0,a0
    44a8:	00028067          	jr	t0

000044ac <__modsi3>:
    44ac:	00008293          	mv	t0,ra
    44b0:	0005ca63          	bltz	a1,44c4 <__modsi3+0x18>
    44b4:	00054c63          	bltz	a0,44cc <__modsi3+0x20>
    44b8:	f79ff0ef          	jal	ra,4430 <__udivsi3>
    44bc:	00058513          	mv	a0,a1
    44c0:	00028067          	jr	t0
    44c4:	40b005b3          	neg	a1,a1
    44c8:	fe0558e3          	bgez	a0,44b8 <__modsi3+0xc>
    44cc:	40a00533          	neg	a0,a0
    44d0:	f61ff0ef          	jal	ra,4430 <__udivsi3>
    44d4:	40b00533          	neg	a0,a1
    44d8:	00028067          	jr	t0

000044dc <__clzsi2>:
    44dc:	000107b7          	lui	a5,0x10
    44e0:	02f57a63          	bgeu	a0,a5,4514 <__clzsi2+0x38>
    44e4:	10053793          	sltiu	a5,a0,256
    44e8:	0017c793          	xori	a5,a5,1
    44ec:	00379793          	slli	a5,a5,0x3
    44f0:	00011737          	lui	a4,0x11
    44f4:	02000693          	li	a3,32
    44f8:	40f686b3          	sub	a3,a3,a5
    44fc:	00f55533          	srl	a0,a0,a5
    4500:	11470793          	addi	a5,a4,276 # 11114 <__clz_tab>
    4504:	00a787b3          	add	a5,a5,a0
    4508:	0007c503          	lbu	a0,0(a5) # 10000 <impure_data>
    450c:	40a68533          	sub	a0,a3,a0
    4510:	00008067          	ret
    4514:	01000737          	lui	a4,0x1000
    4518:	01000793          	li	a5,16
    451c:	fce56ae3          	bltu	a0,a4,44f0 <__clzsi2+0x14>
    4520:	01800793          	li	a5,24
    4524:	fcdff06f          	j	44f0 <__clzsi2+0x14>

00004528 <__errno>:
    4528:	000107b7          	lui	a5,0x10
    452c:	4287a503          	lw	a0,1064(a5) # 10428 <_impure_ptr>
    4530:	00008067          	ret

00004534 <memcmp>:
    4534:	00300793          	li	a5,3
    4538:	04c7f063          	bgeu	a5,a2,4578 <memcmp+0x44>
    453c:	00b567b3          	or	a5,a0,a1
    4540:	0037f793          	andi	a5,a5,3
    4544:	00300693          	li	a3,3
    4548:	00078a63          	beqz	a5,455c <memcmp+0x28>
    454c:	fff60713          	addi	a4,a2,-1 # 7fefffff <seed+0x7feee133>
    4550:	0300006f          	j	4580 <memcmp+0x4c>
    4554:	00000513          	li	a0,0
    4558:	00008067          	ret
    455c:	00052703          	lw	a4,0(a0)
    4560:	0005a783          	lw	a5,0(a1) # 800000 <seed+0x7ee134>
    4564:	00f71a63          	bne	a4,a5,4578 <memcmp+0x44>
    4568:	00450513          	addi	a0,a0,4
    456c:	00458593          	addi	a1,a1,4
    4570:	ffc60613          	addi	a2,a2,-4
    4574:	fec6e4e3          	bltu	a3,a2,455c <memcmp+0x28>
    4578:	fff60713          	addi	a4,a2,-1
    457c:	fc060ce3          	beqz	a2,4554 <memcmp+0x20>
    4580:	00050793          	mv	a5,a0
    4584:	00170713          	addi	a4,a4,1 # 1000001 <seed+0xfee135>
    4588:	00e50533          	add	a0,a0,a4
    458c:	0007c703          	lbu	a4,0(a5)
    4590:	0005c683          	lbu	a3,0(a1)
    4594:	00d71c63          	bne	a4,a3,45ac <memcmp+0x78>
    4598:	00178793          	addi	a5,a5,1
    459c:	00158593          	addi	a1,a1,1
    45a0:	fea796e3          	bne	a5,a0,458c <memcmp+0x58>
    45a4:	00000513          	li	a0,0
    45a8:	00008067          	ret
    45ac:	40d70533          	sub	a0,a4,a3
    45b0:	00008067          	ret

000045b4 <memcpy>:
    45b4:	00c50333          	add	t1,a0,a2
    45b8:	00b547b3          	xor	a5,a0,a1
    45bc:	0037f793          	andi	a5,a5,3
    45c0:	06079663          	bnez	a5,462c <memcpy+0x78>
    45c4:	00300793          	li	a5,3
    45c8:	06c7f263          	bgeu	a5,a2,462c <memcpy+0x78>
    45cc:	00357793          	andi	a5,a0,3
    45d0:	00050713          	mv	a4,a0
    45d4:	08079863          	bnez	a5,4664 <memcpy+0xb0>
    45d8:	ffc37813          	andi	a6,t1,-4
    45dc:	00080893          	mv	a7,a6
    45e0:	40e806b3          	sub	a3,a6,a4
    45e4:	02000793          	li	a5,32
    45e8:	08d7cc63          	blt	a5,a3,4680 <memcpy+0xcc>
    45ec:	00058693          	mv	a3,a1
    45f0:	00070793          	mv	a5,a4
    45f4:	03077863          	bgeu	a4,a6,4624 <memcpy+0x70>
    45f8:	0006a603          	lw	a2,0(a3)
    45fc:	00478793          	addi	a5,a5,4
    4600:	00468693          	addi	a3,a3,4
    4604:	fec7ae23          	sw	a2,-4(a5)
    4608:	ff17e8e3          	bltu	a5,a7,45f8 <memcpy+0x44>
    460c:	fff80793          	addi	a5,a6,-1
    4610:	40e787b3          	sub	a5,a5,a4
    4614:	ffc7f793          	andi	a5,a5,-4
    4618:	00478793          	addi	a5,a5,4
    461c:	00f70733          	add	a4,a4,a5
    4620:	00f585b3          	add	a1,a1,a5
    4624:	00676863          	bltu	a4,t1,4634 <memcpy+0x80>
    4628:	00008067          	ret
    462c:	10657063          	bgeu	a0,t1,472c <memcpy+0x178>
    4630:	00050713          	mv	a4,a0
    4634:	0005c783          	lbu	a5,0(a1)
    4638:	00170713          	addi	a4,a4,1
    463c:	00158593          	addi	a1,a1,1
    4640:	fef70fa3          	sb	a5,-1(a4)
    4644:	fee318e3          	bne	t1,a4,4634 <memcpy+0x80>
    4648:	00008067          	ret
    464c:	0005c783          	lbu	a5,0(a1)
    4650:	00170713          	addi	a4,a4,1
    4654:	00158593          	addi	a1,a1,1
    4658:	fef70fa3          	sb	a5,-1(a4)
    465c:	fee318e3          	bne	t1,a4,464c <memcpy+0x98>
    4660:	0c00006f          	j	4720 <memcpy+0x16c>
    4664:	0005c783          	lbu	a5,0(a1)
    4668:	00170713          	addi	a4,a4,1
    466c:	00158593          	addi	a1,a1,1
    4670:	fef70fa3          	sb	a5,-1(a4)
    4674:	00377793          	andi	a5,a4,3
    4678:	fe0796e3          	bnez	a5,4664 <memcpy+0xb0>
    467c:	f5dff06f          	j	45d8 <memcpy+0x24>
    4680:	ff010113          	addi	sp,sp,-16
    4684:	00812623          	sw	s0,12(sp)
    4688:	02000413          	li	s0,32
    468c:	0005a383          	lw	t2,0(a1)
    4690:	0045a283          	lw	t0,4(a1)
    4694:	0085af83          	lw	t6,8(a1)
    4698:	00c5af03          	lw	t5,12(a1)
    469c:	0105ae83          	lw	t4,16(a1)
    46a0:	0145ae03          	lw	t3,20(a1)
    46a4:	0185a603          	lw	a2,24(a1)
    46a8:	01c5a683          	lw	a3,28(a1)
    46ac:	02458593          	addi	a1,a1,36
    46b0:	ffc5a783          	lw	a5,-4(a1)
    46b4:	00772023          	sw	t2,0(a4)
    46b8:	00572223          	sw	t0,4(a4)
    46bc:	01f72423          	sw	t6,8(a4)
    46c0:	01e72623          	sw	t5,12(a4)
    46c4:	01d72823          	sw	t4,16(a4)
    46c8:	01c72a23          	sw	t3,20(a4)
    46cc:	00c72c23          	sw	a2,24(a4)
    46d0:	00d72e23          	sw	a3,28(a4)
    46d4:	02470713          	addi	a4,a4,36
    46d8:	fef72e23          	sw	a5,-4(a4)
    46dc:	40e807b3          	sub	a5,a6,a4
    46e0:	faf446e3          	blt	s0,a5,468c <memcpy+0xd8>
    46e4:	00058693          	mv	a3,a1
    46e8:	00070793          	mv	a5,a4
    46ec:	03177863          	bgeu	a4,a7,471c <memcpy+0x168>
    46f0:	0006a603          	lw	a2,0(a3)
    46f4:	00478793          	addi	a5,a5,4
    46f8:	00468693          	addi	a3,a3,4
    46fc:	fec7ae23          	sw	a2,-4(a5)
    4700:	ff17e8e3          	bltu	a5,a7,46f0 <memcpy+0x13c>
    4704:	fff80793          	addi	a5,a6,-1
    4708:	40e787b3          	sub	a5,a5,a4
    470c:	ffc7f793          	andi	a5,a5,-4
    4710:	00478793          	addi	a5,a5,4
    4714:	00f70733          	add	a4,a4,a5
    4718:	00f585b3          	add	a1,a1,a5
    471c:	f26768e3          	bltu	a4,t1,464c <memcpy+0x98>
    4720:	00c12403          	lw	s0,12(sp)
    4724:	01010113          	addi	sp,sp,16
    4728:	00008067          	ret
    472c:	00008067          	ret

00004730 <memmove>:
    4730:	02a5f663          	bgeu	a1,a0,475c <memmove+0x2c>
    4734:	00c58733          	add	a4,a1,a2
    4738:	02e57263          	bgeu	a0,a4,475c <memmove+0x2c>
    473c:	00c507b3          	add	a5,a0,a2
    4740:	10060063          	beqz	a2,4840 <memmove+0x110>
    4744:	fff70713          	addi	a4,a4,-1
    4748:	fff78793          	addi	a5,a5,-1
    474c:	00074683          	lbu	a3,0(a4)
    4750:	00d78023          	sb	a3,0(a5)
    4754:	fef518e3          	bne	a0,a5,4744 <memmove+0x14>
    4758:	00008067          	ret
    475c:	00f00793          	li	a5,15
    4760:	00c7fe63          	bgeu	a5,a2,477c <memmove+0x4c>
    4764:	00b567b3          	or	a5,a0,a1
    4768:	0037f793          	andi	a5,a5,3
    476c:	04078663          	beqz	a5,47b8 <memmove+0x88>
    4770:	fff60693          	addi	a3,a2,-1
    4774:	00050793          	mv	a5,a0
    4778:	0100006f          	j	4788 <memmove+0x58>
    477c:	00050793          	mv	a5,a0
    4780:	fff60693          	addi	a3,a2,-1
    4784:	02060863          	beqz	a2,47b4 <memmove+0x84>
    4788:	00168693          	addi	a3,a3,1
    478c:	00d786b3          	add	a3,a5,a3
    4790:	00158593          	addi	a1,a1,1
    4794:	00178793          	addi	a5,a5,1
    4798:	fff5c703          	lbu	a4,-1(a1)
    479c:	fee78fa3          	sb	a4,-1(a5)
    47a0:	fed798e3          	bne	a5,a3,4790 <memmove+0x60>
    47a4:	00008067          	ret
    47a8:	00070793          	mv	a5,a4
    47ac:	00068613          	mv	a2,a3
    47b0:	fd1ff06f          	j	4780 <memmove+0x50>
    47b4:	00008067          	ret
    47b8:	ff060893          	addi	a7,a2,-16
    47bc:	ff08f893          	andi	a7,a7,-16
    47c0:	01088893          	addi	a7,a7,16 # 800010 <seed+0x7ee144>
    47c4:	01150833          	add	a6,a0,a7
    47c8:	00058793          	mv	a5,a1
    47cc:	00050713          	mv	a4,a0
    47d0:	0007a683          	lw	a3,0(a5)
    47d4:	00d72023          	sw	a3,0(a4)
    47d8:	0047a683          	lw	a3,4(a5)
    47dc:	00d72223          	sw	a3,4(a4)
    47e0:	0087a683          	lw	a3,8(a5)
    47e4:	00d72423          	sw	a3,8(a4)
    47e8:	01078793          	addi	a5,a5,16
    47ec:	01070713          	addi	a4,a4,16
    47f0:	ffc7a683          	lw	a3,-4(a5)
    47f4:	fed72e23          	sw	a3,-4(a4)
    47f8:	fce81ce3          	bne	a6,a4,47d0 <memmove+0xa0>
    47fc:	011585b3          	add	a1,a1,a7
    4800:	00f67693          	andi	a3,a2,15
    4804:	00c67793          	andi	a5,a2,12
    4808:	fa0780e3          	beqz	a5,47a8 <memmove+0x78>
    480c:	ffc68813          	addi	a6,a3,-4
    4810:	ffc87813          	andi	a6,a6,-4
    4814:	00480813          	addi	a6,a6,4
    4818:	010707b3          	add	a5,a4,a6
    481c:	00058693          	mv	a3,a1
    4820:	00468693          	addi	a3,a3,4
    4824:	00470713          	addi	a4,a4,4
    4828:	ffc6a883          	lw	a7,-4(a3)
    482c:	ff172e23          	sw	a7,-4(a4)
    4830:	fef718e3          	bne	a4,a5,4820 <memmove+0xf0>
    4834:	010585b3          	add	a1,a1,a6
    4838:	00367613          	andi	a2,a2,3
    483c:	f45ff06f          	j	4780 <memmove+0x50>
    4840:	00008067          	ret

00004844 <memset>:
    4844:	00f00313          	li	t1,15
    4848:	00050713          	mv	a4,a0
    484c:	02c37e63          	bgeu	t1,a2,4888 <memset+0x44>
    4850:	00f77793          	andi	a5,a4,15
    4854:	0a079063          	bnez	a5,48f4 <memset+0xb0>
    4858:	08059263          	bnez	a1,48dc <memset+0x98>
    485c:	ff067693          	andi	a3,a2,-16
    4860:	00f67613          	andi	a2,a2,15
    4864:	00e686b3          	add	a3,a3,a4
    4868:	00b72023          	sw	a1,0(a4)
    486c:	00b72223          	sw	a1,4(a4)
    4870:	00b72423          	sw	a1,8(a4)
    4874:	00b72623          	sw	a1,12(a4)
    4878:	01070713          	addi	a4,a4,16
    487c:	fed766e3          	bltu	a4,a3,4868 <memset+0x24>
    4880:	00061463          	bnez	a2,4888 <memset+0x44>
    4884:	00008067          	ret
    4888:	40c306b3          	sub	a3,t1,a2
    488c:	00269693          	slli	a3,a3,0x2
    4890:	00000297          	auipc	t0,0x0
    4894:	005686b3          	add	a3,a3,t0
    4898:	00c68067          	jr	12(a3)
    489c:	00b70723          	sb	a1,14(a4)
    48a0:	00b706a3          	sb	a1,13(a4)
    48a4:	00b70623          	sb	a1,12(a4)
    48a8:	00b705a3          	sb	a1,11(a4)
    48ac:	00b70523          	sb	a1,10(a4)
    48b0:	00b704a3          	sb	a1,9(a4)
    48b4:	00b70423          	sb	a1,8(a4)
    48b8:	00b703a3          	sb	a1,7(a4)
    48bc:	00b70323          	sb	a1,6(a4)
    48c0:	00b702a3          	sb	a1,5(a4)
    48c4:	00b70223          	sb	a1,4(a4)
    48c8:	00b701a3          	sb	a1,3(a4)
    48cc:	00b70123          	sb	a1,2(a4)
    48d0:	00b700a3          	sb	a1,1(a4)
    48d4:	00b70023          	sb	a1,0(a4)
    48d8:	00008067          	ret
    48dc:	0ff5f593          	zext.b	a1,a1
    48e0:	00859693          	slli	a3,a1,0x8
    48e4:	00d5e5b3          	or	a1,a1,a3
    48e8:	01059693          	slli	a3,a1,0x10
    48ec:	00d5e5b3          	or	a1,a1,a3
    48f0:	f6dff06f          	j	485c <memset+0x18>
    48f4:	00279693          	slli	a3,a5,0x2
    48f8:	00000297          	auipc	t0,0x0
    48fc:	005686b3          	add	a3,a3,t0
    4900:	00008293          	mv	t0,ra
    4904:	fa0680e7          	jalr	-96(a3)
    4908:	00028093          	mv	ra,t0
    490c:	ff078793          	addi	a5,a5,-16
    4910:	40f70733          	sub	a4,a4,a5
    4914:	00f60633          	add	a2,a2,a5
    4918:	f6c378e3          	bgeu	t1,a2,4888 <memset+0x44>
    491c:	f3dff06f          	j	4858 <memset+0x14>

Disassembly of section .text.startup:

00004920 <main>:
    4920:	fe010113          	addi	sp,sp,-32
    4924:	00112e23          	sw	ra,28(sp)
    4928:	f98fb0ef          	jal	ra,c0 <initialise_board>
    492c:	cd0fd0ef          	jal	ra,1dfc <initialise_benchmark>
    4930:	00100513          	li	a0,1
    4934:	cccfd0ef          	jal	ra,1e00 <warm_caches>
    4938:	f8cfb0ef          	jal	ra,c4 <start_trigger>
    493c:	cdcfd0ef          	jal	ra,1e18 <benchmark>
    4940:	00a12623          	sw	a0,12(sp)
    4944:	facfb0ef          	jal	ra,f0 <stop_trigger>
    4948:	00c12503          	lw	a0,12(sp)
    494c:	c08fd0ef          	jal	ra,1d54 <verify_benchmark>
    4950:	00051a63          	bnez	a0,4964 <main+0x44>
    4954:	110007b7          	lui	a5,0x11000
    4958:	fff00713          	li	a4,-1
    495c:	00e7a823          	sw	a4,16(a5) # 11000010 <seed+0x10fee144>
    4960:	00e7aa23          	sw	a4,20(a5)
    4964:	110007b7          	lui	a5,0x11000
    4968:	00100713          	li	a4,1
    496c:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fee1b4>
    4970:	0000006f          	j	4970 <main+0x50>
