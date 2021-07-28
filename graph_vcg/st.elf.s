
st.elf:     file format elf32-littleriscv


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
  84:	00c030ef          	jal	ra,3090 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <Seed+0x10fef3f0>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <Seed+0x10fef3f0>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <Seed+0x10fef470>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <Seed+0xf3e0>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	bea7a823          	sw	a0,-1040(a5) # 10bf0 <start_time>
      e4:	bee7aa23          	sw	a4,-1036(a5)
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
     114:	bf07a583          	lw	a1,-1040(a5) # 10bf0 <start_time>
     118:	bf47a703          	lw	a4,-1036(a5)
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

00000150 <initialise_benchmark>:
     150:	00008067          	ret

00000154 <InitSeed>:
     154:	000117b7          	lui	a5,0x11
     158:	c007a823          	sw	zero,-1008(a5) # 10c10 <Seed>
     15c:	00008067          	ret

00000160 <Calc_Sum_Mean>:
     160:	fe010113          	addi	sp,sp,-32
     164:	00812c23          	sw	s0,24(sp)
     168:	00912a23          	sw	s1,20(sp)
     16c:	01212823          	sw	s2,16(sp)
     170:	01312623          	sw	s3,12(sp)
     174:	00112e23          	sw	ra,28(sp)
     178:	00058493          	mv	s1,a1
     17c:	00050413          	mv	s0,a0
     180:	00060993          	mv	s3,a2
     184:	0005a023          	sw	zero,0(a1)
     188:	0005a223          	sw	zero,4(a1)
     18c:	32050913          	addi	s2,a0,800
     190:	00000713          	li	a4,0
     194:	00000793          	li	a5,0
     198:	00042603          	lw	a2,0(s0)
     19c:	00442683          	lw	a3,4(s0)
     1a0:	00070513          	mv	a0,a4
     1a4:	00078593          	mv	a1,a5
     1a8:	485000ef          	jal	ra,e2c <__adddf3>
     1ac:	00a4a023          	sw	a0,0(s1)
     1b0:	00b4a223          	sw	a1,4(s1)
     1b4:	00840413          	addi	s0,s0,8
     1b8:	00050713          	mv	a4,a0
     1bc:	00058793          	mv	a5,a1
     1c0:	fd241ce3          	bne	s0,s2,198 <Calc_Sum_Mean+0x38>
     1c4:	000107b7          	lui	a5,0x10
     1c8:	5707a603          	lw	a2,1392(a5) # 10570 <__clz_tab+0x104>
     1cc:	5747a683          	lw	a3,1396(a5)
     1d0:	438010ef          	jal	ra,1608 <__divdf3>
     1d4:	01c12083          	lw	ra,28(sp)
     1d8:	01812403          	lw	s0,24(sp)
     1dc:	00a9a023          	sw	a0,0(s3)
     1e0:	00b9a223          	sw	a1,4(s3)
     1e4:	01412483          	lw	s1,20(sp)
     1e8:	01012903          	lw	s2,16(sp)
     1ec:	00c12983          	lw	s3,12(sp)
     1f0:	02010113          	addi	sp,sp,32
     1f4:	00008067          	ret

000001f8 <Square>:
     1f8:	ff010113          	addi	sp,sp,-16
     1fc:	00050613          	mv	a2,a0
     200:	00058693          	mv	a3,a1
     204:	00112623          	sw	ra,12(sp)
     208:	5a9010ef          	jal	ra,1fb0 <__muldf3>
     20c:	00c12083          	lw	ra,12(sp)
     210:	01010113          	addi	sp,sp,16
     214:	00008067          	ret

00000218 <Calc_Var_Stddev>:
     218:	fd010113          	addi	sp,sp,-48
     21c:	02812423          	sw	s0,40(sp)
     220:	02912223          	sw	s1,36(sp)
     224:	03212023          	sw	s2,32(sp)
     228:	01312e23          	sw	s3,28(sp)
     22c:	01412c23          	sw	s4,24(sp)
     230:	01512a23          	sw	s5,20(sp)
     234:	01612823          	sw	s6,16(sp)
     238:	01712623          	sw	s7,12(sp)
     23c:	02112623          	sw	ra,44(sp)
     240:	00050413          	mv	s0,a0
     244:	00058a13          	mv	s4,a1
     248:	00060993          	mv	s3,a2
     24c:	00068b93          	mv	s7,a3
     250:	00070b13          	mv	s6,a4
     254:	32050a93          	addi	s5,a0,800
     258:	00000913          	li	s2,0
     25c:	00000493          	li	s1,0
     260:	00042503          	lw	a0,0(s0)
     264:	00442583          	lw	a1,4(s0)
     268:	000a0613          	mv	a2,s4
     26c:	00098693          	mv	a3,s3
     270:	40c020ef          	jal	ra,267c <__subdf3>
     274:	00050613          	mv	a2,a0
     278:	00058693          	mv	a3,a1
     27c:	535010ef          	jal	ra,1fb0 <__muldf3>
     280:	00050613          	mv	a2,a0
     284:	00058693          	mv	a3,a1
     288:	00090513          	mv	a0,s2
     28c:	00048593          	mv	a1,s1
     290:	39d000ef          	jal	ra,e2c <__adddf3>
     294:	00840413          	addi	s0,s0,8
     298:	00050913          	mv	s2,a0
     29c:	00058493          	mv	s1,a1
     2a0:	fc8a90e3          	bne	s5,s0,260 <Calc_Var_Stddev+0x48>
     2a4:	000107b7          	lui	a5,0x10
     2a8:	5707a603          	lw	a2,1392(a5) # 10570 <__clz_tab+0x104>
     2ac:	5747a683          	lw	a3,1396(a5)
     2b0:	358010ef          	jal	ra,1608 <__divdf3>
     2b4:	00aba023          	sw	a0,0(s7)
     2b8:	00bba223          	sw	a1,4(s7)
     2bc:	041000ef          	jal	ra,afc <sqrt>
     2c0:	02c12083          	lw	ra,44(sp)
     2c4:	02812403          	lw	s0,40(sp)
     2c8:	00ab2023          	sw	a0,0(s6)
     2cc:	00bb2223          	sw	a1,4(s6)
     2d0:	02412483          	lw	s1,36(sp)
     2d4:	02012903          	lw	s2,32(sp)
     2d8:	01c12983          	lw	s3,28(sp)
     2dc:	01812a03          	lw	s4,24(sp)
     2e0:	01412a83          	lw	s5,20(sp)
     2e4:	01012b03          	lw	s6,16(sp)
     2e8:	00c12b83          	lw	s7,12(sp)
     2ec:	03010113          	addi	sp,sp,48
     2f0:	00008067          	ret

000002f4 <Calc_LinCorrCoef>:
     2f4:	fa010113          	addi	sp,sp,-96
     2f8:	00f12e23          	sw	a5,28(sp)
     2fc:	32050793          	addi	a5,a0,800
     300:	05212823          	sw	s2,80(sp)
     304:	05312623          	sw	s3,76(sp)
     308:	05412423          	sw	s4,72(sp)
     30c:	05512223          	sw	s5,68(sp)
     310:	05612023          	sw	s6,64(sp)
     314:	03712e23          	sw	s7,60(sp)
     318:	03812c23          	sw	s8,56(sp)
     31c:	03912a23          	sw	s9,52(sp)
     320:	04112e23          	sw	ra,92(sp)
     324:	04812c23          	sw	s0,88(sp)
     328:	04912a23          	sw	s1,84(sp)
     32c:	03a12823          	sw	s10,48(sp)
     330:	03b12623          	sw	s11,44(sp)
     334:	00050c93          	mv	s9,a0
     338:	00c12823          	sw	a2,16(sp)
     33c:	00d12a23          	sw	a3,20(sp)
     340:	00e12c23          	sw	a4,24(sp)
     344:	00058b13          	mv	s6,a1
     348:	00f12623          	sw	a5,12(sp)
     34c:	00000c13          	li	s8,0
     350:	00000b93          	li	s7,0
     354:	00000a93          	li	s5,0
     358:	00000a13          	li	s4,0
     35c:	00000993          	li	s3,0
     360:	00000913          	li	s2,0
     364:	000ca503          	lw	a0,0(s9)
     368:	004ca583          	lw	a1,4(s9)
     36c:	01012603          	lw	a2,16(sp)
     370:	01412683          	lw	a3,20(sp)
     374:	008c8c93          	addi	s9,s9,8
     378:	008b0b13          	addi	s6,s6,8
     37c:	300020ef          	jal	ra,267c <__subdf3>
     380:	00050d93          	mv	s11,a0
     384:	00058d13          	mv	s10,a1
     388:	01812603          	lw	a2,24(sp)
     38c:	01c12683          	lw	a3,28(sp)
     390:	ff8b2503          	lw	a0,-8(s6)
     394:	ffcb2583          	lw	a1,-4(s6)
     398:	2e4020ef          	jal	ra,267c <__subdf3>
     39c:	00050493          	mv	s1,a0
     3a0:	00058413          	mv	s0,a1
     3a4:	00048613          	mv	a2,s1
     3a8:	00040693          	mv	a3,s0
     3ac:	000d8513          	mv	a0,s11
     3b0:	000d0593          	mv	a1,s10
     3b4:	3fd010ef          	jal	ra,1fb0 <__muldf3>
     3b8:	00050613          	mv	a2,a0
     3bc:	00058693          	mv	a3,a1
     3c0:	00098513          	mv	a0,s3
     3c4:	00090593          	mv	a1,s2
     3c8:	265000ef          	jal	ra,e2c <__adddf3>
     3cc:	000d8613          	mv	a2,s11
     3d0:	000d0693          	mv	a3,s10
     3d4:	00050993          	mv	s3,a0
     3d8:	00058913          	mv	s2,a1
     3dc:	000d8513          	mv	a0,s11
     3e0:	000d0593          	mv	a1,s10
     3e4:	3cd010ef          	jal	ra,1fb0 <__muldf3>
     3e8:	00050613          	mv	a2,a0
     3ec:	00058693          	mv	a3,a1
     3f0:	000a8513          	mv	a0,s5
     3f4:	000a0593          	mv	a1,s4
     3f8:	235000ef          	jal	ra,e2c <__adddf3>
     3fc:	00048613          	mv	a2,s1
     400:	00040693          	mv	a3,s0
     404:	00050a93          	mv	s5,a0
     408:	00058a13          	mv	s4,a1
     40c:	00048513          	mv	a0,s1
     410:	00040593          	mv	a1,s0
     414:	39d010ef          	jal	ra,1fb0 <__muldf3>
     418:	00050613          	mv	a2,a0
     41c:	00058693          	mv	a3,a1
     420:	000c0513          	mv	a0,s8
     424:	000b8593          	mv	a1,s7
     428:	205000ef          	jal	ra,e2c <__adddf3>
     42c:	00c12783          	lw	a5,12(sp)
     430:	00050c13          	mv	s8,a0
     434:	00058b93          	mv	s7,a1
     438:	f39796e3          	bne	a5,s9,364 <Calc_LinCorrCoef+0x70>
     43c:	000a8513          	mv	a0,s5
     440:	000a0593          	mv	a1,s4
     444:	6b8000ef          	jal	ra,afc <sqrt>
     448:	00050493          	mv	s1,a0
     44c:	00058413          	mv	s0,a1
     450:	000c0513          	mv	a0,s8
     454:	000b8593          	mv	a1,s7
     458:	6a4000ef          	jal	ra,afc <sqrt>
     45c:	00050613          	mv	a2,a0
     460:	00058693          	mv	a3,a1
     464:	00048513          	mv	a0,s1
     468:	00040593          	mv	a1,s0
     46c:	345010ef          	jal	ra,1fb0 <__muldf3>
     470:	00050613          	mv	a2,a0
     474:	00058693          	mv	a3,a1
     478:	00098513          	mv	a0,s3
     47c:	00090593          	mv	a1,s2
     480:	188010ef          	jal	ra,1608 <__divdf3>
     484:	05c12083          	lw	ra,92(sp)
     488:	05812403          	lw	s0,88(sp)
     48c:	000117b7          	lui	a5,0x11
     490:	bea7ac23          	sw	a0,-1032(a5) # 10bf8 <Coef>
     494:	beb7ae23          	sw	a1,-1028(a5)
     498:	05412483          	lw	s1,84(sp)
     49c:	05012903          	lw	s2,80(sp)
     4a0:	04c12983          	lw	s3,76(sp)
     4a4:	04812a03          	lw	s4,72(sp)
     4a8:	04412a83          	lw	s5,68(sp)
     4ac:	04012b03          	lw	s6,64(sp)
     4b0:	03c12b83          	lw	s7,60(sp)
     4b4:	03812c03          	lw	s8,56(sp)
     4b8:	03412c83          	lw	s9,52(sp)
     4bc:	03012d03          	lw	s10,48(sp)
     4c0:	02c12d83          	lw	s11,44(sp)
     4c4:	06010113          	addi	sp,sp,96
     4c8:	00008067          	ret

000004cc <benchmark_body>:
     4cc:	fa010113          	addi	sp,sp,-96
     4d0:	04112e23          	sw	ra,92(sp)
     4d4:	04812c23          	sw	s0,88(sp)
     4d8:	04912a23          	sw	s1,84(sp)
     4dc:	05212823          	sw	s2,80(sp)
     4e0:	05312623          	sw	s3,76(sp)
     4e4:	05412423          	sw	s4,72(sp)
     4e8:	05512223          	sw	s5,68(sp)
     4ec:	05612023          	sw	s6,64(sp)
     4f0:	03712e23          	sw	s7,60(sp)
     4f4:	03812c23          	sw	s8,56(sp)
     4f8:	03912a23          	sw	s9,52(sp)
     4fc:	03a12823          	sw	s10,48(sp)
     500:	03b12623          	sw	s11,44(sp)
     504:	00a12e23          	sw	a0,28(sp)
     508:	32a05663          	blez	a0,834 <benchmark_body+0x368>
     50c:	000107b7          	lui	a5,0x10
     510:	5787aa03          	lw	s4,1400(a5) # 10578 <__clz_tab+0x10c>
     514:	57c7aa83          	lw	s5,1404(a5)
     518:	000107b7          	lui	a5,0x10
     51c:	5747a803          	lw	a6,1396(a5) # 10574 <__clz_tab+0x108>
     520:	5707a783          	lw	a5,1392(a5)
     524:	00011937          	lui	s2,0x11
     528:	00011c37          	lui	s8,0x11
     52c:	000029b7          	lui	s3,0x2
     530:	00f12823          	sw	a5,16(sp)
     534:	01012a23          	sw	a6,20(sp)
     538:	00012c23          	sw	zero,24(sp)
     53c:	8d090913          	addi	s2,s2,-1840 # 108d0 <ArrayB>
     540:	bf0c0c13          	addi	s8,s8,-1040 # 10bf0 <start_time>
     544:	f9f98993          	addi	s3,s3,-97 # 1f9f <__ledf2+0xd3>
     548:	000107b7          	lui	a5,0x10
     54c:	5b078493          	addi	s1,a5,1456 # 105b0 <ArrayA>
     550:	5b078d93          	addi	s11,a5,1456
     554:	00000413          	li	s0,0
     558:	00000d13          	li	s10,0
     55c:	06400c93          	li	s9,100
     560:	00541513          	slli	a0,s0,0x5
     564:	00850533          	add	a0,a0,s0
     568:	00251513          	slli	a0,a0,0x2
     56c:	00850533          	add	a0,a0,s0
     570:	00098593          	mv	a1,s3
     574:	05150513          	addi	a0,a0,81
     578:	291020ef          	jal	ra,3008 <__modsi3>
     57c:	00050413          	mv	s0,a0
     580:	139020ef          	jal	ra,2eb8 <__floatsidf>
     584:	000a0613          	mv	a2,s4
     588:	000a8693          	mv	a3,s5
     58c:	07c010ef          	jal	ra,1608 <__divdf3>
     590:	00050b93          	mv	s7,a0
     594:	000d0513          	mv	a0,s10
     598:	00058b13          	mv	s6,a1
     59c:	11d020ef          	jal	ra,2eb8 <__floatsidf>
     5a0:	00050613          	mv	a2,a0
     5a4:	00058693          	mv	a3,a1
     5a8:	000b8513          	mv	a0,s7
     5ac:	000b0593          	mv	a1,s6
     5b0:	07d000ef          	jal	ra,e2c <__adddf3>
     5b4:	00ada023          	sw	a0,0(s11)
     5b8:	00bda223          	sw	a1,4(s11)
     5bc:	001d0d13          	addi	s10,s10,1
     5c0:	008d8d93          	addi	s11,s11,8
     5c4:	f99d1ee3          	bne	s10,s9,560 <benchmark_body+0x94>
     5c8:	000107b7          	lui	a5,0x10
     5cc:	5b078c93          	addi	s9,a5,1456 # 105b0 <ArrayA>
     5d0:	00000713          	li	a4,0
     5d4:	00000793          	li	a5,0
     5d8:	000ca603          	lw	a2,0(s9)
     5dc:	004ca683          	lw	a3,4(s9)
     5e0:	00070513          	mv	a0,a4
     5e4:	00078593          	mv	a1,a5
     5e8:	045000ef          	jal	ra,e2c <__adddf3>
     5ec:	008c8c93          	addi	s9,s9,8
     5f0:	00050713          	mv	a4,a0
     5f4:	00058793          	mv	a5,a1
     5f8:	ff9910e3          	bne	s2,s9,5d8 <benchmark_body+0x10c>
     5fc:	01012603          	lw	a2,16(sp)
     600:	01412683          	lw	a3,20(sp)
     604:	000117b7          	lui	a5,0x11
     608:	c0a7a423          	sw	a0,-1016(a5) # 10c08 <SumA>
     60c:	c0b7a623          	sw	a1,-1012(a5)
     610:	7f9000ef          	jal	ra,1608 <__divdf3>
     614:	00050d13          	mv	s10,a0
     618:	00b12623          	sw	a1,12(sp)
     61c:	00000b13          	li	s6,0
     620:	00000d93          	li	s11,0
     624:	0004a503          	lw	a0,0(s1)
     628:	0044a583          	lw	a1,4(s1)
     62c:	00c12683          	lw	a3,12(sp)
     630:	000d0613          	mv	a2,s10
     634:	00848493          	addi	s1,s1,8
     638:	044020ef          	jal	ra,267c <__subdf3>
     63c:	00050613          	mv	a2,a0
     640:	00058693          	mv	a3,a1
     644:	16d010ef          	jal	ra,1fb0 <__muldf3>
     648:	00050613          	mv	a2,a0
     64c:	00058693          	mv	a3,a1
     650:	000b0513          	mv	a0,s6
     654:	000d8593          	mv	a1,s11
     658:	7d4000ef          	jal	ra,e2c <__adddf3>
     65c:	00050b13          	mv	s6,a0
     660:	00058d93          	mv	s11,a1
     664:	fc9910e3          	bne	s2,s1,624 <benchmark_body+0x158>
     668:	01012603          	lw	a2,16(sp)
     66c:	01412683          	lw	a3,20(sp)
     670:	799000ef          	jal	ra,1608 <__divdf3>
     674:	00000613          	li	a2,0
     678:	00000693          	li	a3,0
     67c:	00050493          	mv	s1,a0
     680:	00058d93          	mv	s11,a1
     684:	7e8020ef          	jal	ra,2e6c <__unorddf2>
     688:	00051e63          	bnez	a0,6a4 <benchmark_body+0x1d8>
     68c:	00048513          	mv	a0,s1
     690:	000d8593          	mv	a1,s11
     694:	00000613          	li	a2,0
     698:	00000693          	li	a3,0
     69c:	74c010ef          	jal	ra,1de8 <__gedf2>
     6a0:	1c054a63          	bltz	a0,874 <benchmark_body+0x3a8>
     6a4:	00090493          	mv	s1,s2
     6a8:	00090b93          	mv	s7,s2
     6ac:	00000b13          	li	s6,0
     6b0:	00541513          	slli	a0,s0,0x5
     6b4:	00850533          	add	a0,a0,s0
     6b8:	00251513          	slli	a0,a0,0x2
     6bc:	00850533          	add	a0,a0,s0
     6c0:	00098593          	mv	a1,s3
     6c4:	05150513          	addi	a0,a0,81
     6c8:	141020ef          	jal	ra,3008 <__modsi3>
     6cc:	00050413          	mv	s0,a0
     6d0:	7e8020ef          	jal	ra,2eb8 <__floatsidf>
     6d4:	000a0613          	mv	a2,s4
     6d8:	000a8693          	mv	a3,s5
     6dc:	72d000ef          	jal	ra,1608 <__divdf3>
     6e0:	00050c93          	mv	s9,a0
     6e4:	000b0513          	mv	a0,s6
     6e8:	00058d93          	mv	s11,a1
     6ec:	7cc020ef          	jal	ra,2eb8 <__floatsidf>
     6f0:	00050613          	mv	a2,a0
     6f4:	00058693          	mv	a3,a1
     6f8:	000c8513          	mv	a0,s9
     6fc:	000d8593          	mv	a1,s11
     700:	72c000ef          	jal	ra,e2c <__adddf3>
     704:	00aba023          	sw	a0,0(s7)
     708:	00bba223          	sw	a1,4(s7)
     70c:	001b0b13          	addi	s6,s6,1
     710:	06400793          	li	a5,100
     714:	008b8b93          	addi	s7,s7,8
     718:	f8fb1ce3          	bne	s6,a5,6b0 <benchmark_body+0x1e4>
     71c:	000117b7          	lui	a5,0x11
     720:	c087a823          	sw	s0,-1008(a5) # 10c10 <Seed>
     724:	00000713          	li	a4,0
     728:	00090413          	mv	s0,s2
     72c:	00000793          	li	a5,0
     730:	00042603          	lw	a2,0(s0)
     734:	00442683          	lw	a3,4(s0)
     738:	00070513          	mv	a0,a4
     73c:	00078593          	mv	a1,a5
     740:	6ec000ef          	jal	ra,e2c <__adddf3>
     744:	00840413          	addi	s0,s0,8
     748:	00050713          	mv	a4,a0
     74c:	00058793          	mv	a5,a1
     750:	fe8c10e3          	bne	s8,s0,730 <benchmark_body+0x264>
     754:	01012603          	lw	a2,16(sp)
     758:	01412683          	lw	a3,20(sp)
     75c:	000117b7          	lui	a5,0x11
     760:	c0a7a023          	sw	a0,-1024(a5) # 10c00 <SumB>
     764:	c0b7a223          	sw	a1,-1020(a5)
     768:	6a1000ef          	jal	ra,1608 <__divdf3>
     76c:	00050d93          	mv	s11,a0
     770:	00058413          	mv	s0,a1
     774:	00000b93          	li	s7,0
     778:	00000b13          	li	s6,0
     77c:	0004a503          	lw	a0,0(s1)
     780:	0044a583          	lw	a1,4(s1)
     784:	000d8613          	mv	a2,s11
     788:	00040693          	mv	a3,s0
     78c:	6f1010ef          	jal	ra,267c <__subdf3>
     790:	00050613          	mv	a2,a0
     794:	00058693          	mv	a3,a1
     798:	019010ef          	jal	ra,1fb0 <__muldf3>
     79c:	00050613          	mv	a2,a0
     7a0:	00058693          	mv	a3,a1
     7a4:	000b8513          	mv	a0,s7
     7a8:	000b0593          	mv	a1,s6
     7ac:	680000ef          	jal	ra,e2c <__adddf3>
     7b0:	00848493          	addi	s1,s1,8
     7b4:	00050b93          	mv	s7,a0
     7b8:	00058b13          	mv	s6,a1
     7bc:	fc9c10e3          	bne	s8,s1,77c <benchmark_body+0x2b0>
     7c0:	01012603          	lw	a2,16(sp)
     7c4:	01412683          	lw	a3,20(sp)
     7c8:	641000ef          	jal	ra,1608 <__divdf3>
     7cc:	00000613          	li	a2,0
     7d0:	00000693          	li	a3,0
     7d4:	00050493          	mv	s1,a0
     7d8:	00058b13          	mv	s6,a1
     7dc:	690020ef          	jal	ra,2e6c <__unorddf2>
     7e0:	00051e63          	bnez	a0,7fc <benchmark_body+0x330>
     7e4:	00048513          	mv	a0,s1
     7e8:	000b0593          	mv	a1,s6
     7ec:	00000613          	li	a2,0
     7f0:	00000693          	li	a3,0
     7f4:	5f4010ef          	jal	ra,1de8 <__gedf2>
     7f8:	08054663          	bltz	a0,884 <benchmark_body+0x3b8>
     7fc:	01812803          	lw	a6,24(sp)
     800:	00c12683          	lw	a3,12(sp)
     804:	00010537          	lui	a0,0x10
     808:	00040793          	mv	a5,s0
     80c:	00180813          	addi	a6,a6,1
     810:	000d8713          	mv	a4,s11
     814:	000d0613          	mv	a2,s10
     818:	00090593          	mv	a1,s2
     81c:	5b050513          	addi	a0,a0,1456 # 105b0 <ArrayA>
     820:	00080413          	mv	s0,a6
     824:	01012c23          	sw	a6,24(sp)
     828:	acdff0ef          	jal	ra,2f4 <Calc_LinCorrCoef>
     82c:	01c12783          	lw	a5,28(sp)
     830:	d0879ce3          	bne	a5,s0,548 <benchmark_body+0x7c>
     834:	05c12083          	lw	ra,92(sp)
     838:	05812403          	lw	s0,88(sp)
     83c:	05412483          	lw	s1,84(sp)
     840:	05012903          	lw	s2,80(sp)
     844:	04c12983          	lw	s3,76(sp)
     848:	04812a03          	lw	s4,72(sp)
     84c:	04412a83          	lw	s5,68(sp)
     850:	04012b03          	lw	s6,64(sp)
     854:	03c12b83          	lw	s7,60(sp)
     858:	03812c03          	lw	s8,56(sp)
     85c:	03412c83          	lw	s9,52(sp)
     860:	03012d03          	lw	s10,48(sp)
     864:	02c12d83          	lw	s11,44(sp)
     868:	00000513          	li	a0,0
     86c:	06010113          	addi	sp,sp,96
     870:	00008067          	ret
     874:	00048513          	mv	a0,s1
     878:	000d8593          	mv	a1,s11
     87c:	280000ef          	jal	ra,afc <sqrt>
     880:	e25ff06f          	j	6a4 <benchmark_body+0x1d8>
     884:	00048513          	mv	a0,s1
     888:	000b0593          	mv	a1,s6
     88c:	270000ef          	jal	ra,afc <sqrt>
     890:	f6dff06f          	j	7fc <benchmark_body+0x330>

00000894 <warm_caches>:
     894:	ff010113          	addi	sp,sp,-16
     898:	00112623          	sw	ra,12(sp)
     89c:	c31ff0ef          	jal	ra,4cc <benchmark_body>
     8a0:	00c12083          	lw	ra,12(sp)
     8a4:	01010113          	addi	sp,sp,16
     8a8:	00008067          	ret

000008ac <benchmark>:
     8ac:	ff010113          	addi	sp,sp,-16
     8b0:	44c00513          	li	a0,1100
     8b4:	00112623          	sw	ra,12(sp)
     8b8:	c15ff0ef          	jal	ra,4cc <benchmark_body>
     8bc:	00c12083          	lw	ra,12(sp)
     8c0:	01010113          	addi	sp,sp,16
     8c4:	00008067          	ret

000008c8 <Initialize>:
     8c8:	fd010113          	addi	sp,sp,-48
     8cc:	000107b7          	lui	a5,0x10
     8d0:	01612823          	sw	s6,16(sp)
     8d4:	00011b37          	lui	s6,0x11
     8d8:	02812423          	sw	s0,40(sp)
     8dc:	03212023          	sw	s2,32(sp)
     8e0:	01312e23          	sw	s3,28(sp)
     8e4:	c10b2403          	lw	s0,-1008(s6) # 10c10 <Seed>
     8e8:	5787a903          	lw	s2,1400(a5) # 10578 <__clz_tab+0x10c>
     8ec:	57c7a983          	lw	s3,1404(a5)
     8f0:	02912223          	sw	s1,36(sp)
     8f4:	000024b7          	lui	s1,0x2
     8f8:	01412c23          	sw	s4,24(sp)
     8fc:	01512a23          	sw	s5,20(sp)
     900:	01712623          	sw	s7,12(sp)
     904:	01912223          	sw	s9,4(sp)
     908:	02112623          	sw	ra,44(sp)
     90c:	01812423          	sw	s8,8(sp)
     910:	01a12023          	sw	s10,0(sp)
     914:	00050a93          	mv	s5,a0
     918:	00050c93          	mv	s9,a0
     91c:	00000b93          	li	s7,0
     920:	f9f48493          	addi	s1,s1,-97 # 1f9f <__ledf2+0xd3>
     924:	06400a13          	li	s4,100
     928:	00541513          	slli	a0,s0,0x5
     92c:	00850533          	add	a0,a0,s0
     930:	00251513          	slli	a0,a0,0x2
     934:	00850533          	add	a0,a0,s0
     938:	00048593          	mv	a1,s1
     93c:	05150513          	addi	a0,a0,81
     940:	6c8020ef          	jal	ra,3008 <__modsi3>
     944:	00050413          	mv	s0,a0
     948:	570020ef          	jal	ra,2eb8 <__floatsidf>
     94c:	00090613          	mv	a2,s2
     950:	00098693          	mv	a3,s3
     954:	4b5000ef          	jal	ra,1608 <__divdf3>
     958:	00050d13          	mv	s10,a0
     95c:	000b8513          	mv	a0,s7
     960:	00058c13          	mv	s8,a1
     964:	554020ef          	jal	ra,2eb8 <__floatsidf>
     968:	00050613          	mv	a2,a0
     96c:	00058693          	mv	a3,a1
     970:	000d0513          	mv	a0,s10
     974:	000c0593          	mv	a1,s8
     978:	4b4000ef          	jal	ra,e2c <__adddf3>
     97c:	00aca023          	sw	a0,0(s9)
     980:	00bca223          	sw	a1,4(s9)
     984:	001b8b93          	addi	s7,s7,1
     988:	008c8c93          	addi	s9,s9,8
     98c:	f94b9ee3          	bne	s7,s4,928 <Initialize+0x60>
     990:	c08b2823          	sw	s0,-1008(s6)
     994:	02c12083          	lw	ra,44(sp)
     998:	02812403          	lw	s0,40(sp)
     99c:	30aaac23          	sw	a0,792(s5)
     9a0:	30baae23          	sw	a1,796(s5)
     9a4:	02412483          	lw	s1,36(sp)
     9a8:	02012903          	lw	s2,32(sp)
     9ac:	01c12983          	lw	s3,28(sp)
     9b0:	01812a03          	lw	s4,24(sp)
     9b4:	01412a83          	lw	s5,20(sp)
     9b8:	01012b03          	lw	s6,16(sp)
     9bc:	00c12b83          	lw	s7,12(sp)
     9c0:	00812c03          	lw	s8,8(sp)
     9c4:	00412c83          	lw	s9,4(sp)
     9c8:	00012d03          	lw	s10,0(sp)
     9cc:	03010113          	addi	sp,sp,48
     9d0:	00008067          	ret

000009d4 <RandomInteger>:
     9d4:	ff010113          	addi	sp,sp,-16
     9d8:	00812423          	sw	s0,8(sp)
     9dc:	00011437          	lui	s0,0x11
     9e0:	c1042783          	lw	a5,-1008(s0) # 10c10 <Seed>
     9e4:	000025b7          	lui	a1,0x2
     9e8:	f9f58593          	addi	a1,a1,-97 # 1f9f <__ledf2+0xd3>
     9ec:	00579513          	slli	a0,a5,0x5
     9f0:	00f50533          	add	a0,a0,a5
     9f4:	00251513          	slli	a0,a0,0x2
     9f8:	00f50533          	add	a0,a0,a5
     9fc:	05150513          	addi	a0,a0,81
     a00:	00112623          	sw	ra,12(sp)
     a04:	604020ef          	jal	ra,3008 <__modsi3>
     a08:	00c12083          	lw	ra,12(sp)
     a0c:	c0a42823          	sw	a0,-1008(s0)
     a10:	00812403          	lw	s0,8(sp)
     a14:	01010113          	addi	sp,sp,16
     a18:	00008067          	ret

00000a1c <verify_benchmark>:
     a1c:	000117b7          	lui	a5,0x11
     a20:	c087a603          	lw	a2,-1016(a5) # 10c08 <SumA>
     a24:	c0c7a683          	lw	a3,-1012(a5)
     a28:	000107b7          	lui	a5,0x10
     a2c:	5807a503          	lw	a0,1408(a5) # 10580 <__clz_tab+0x114>
     a30:	5847a583          	lw	a1,1412(a5)
     a34:	ff010113          	addi	sp,sp,-16
     a38:	00812423          	sw	s0,8(sp)
     a3c:	00112623          	sw	ra,12(sp)
     a40:	43d010ef          	jal	ra,267c <__subdf3>
     a44:	000106b7          	lui	a3,0x10
     a48:	80000437          	lui	s0,0x80000
     a4c:	5886a603          	lw	a2,1416(a3) # 10588 <__clz_tab+0x11c>
     a50:	fff44413          	not	s0,s0
     a54:	58c6a683          	lw	a3,1420(a3)
     a58:	0085f7b3          	and	a5,a1,s0
     a5c:	00078593          	mv	a1,a5
     a60:	46c010ef          	jal	ra,1ecc <__ledf2>
     a64:	02055e63          	bgez	a0,aa0 <verify_benchmark+0x84>
     a68:	000117b7          	lui	a5,0x11
     a6c:	c007a603          	lw	a2,-1024(a5) # 10c00 <SumB>
     a70:	c047a683          	lw	a3,-1020(a5)
     a74:	000107b7          	lui	a5,0x10
     a78:	5907a503          	lw	a0,1424(a5) # 10590 <__clz_tab+0x124>
     a7c:	5947a583          	lw	a1,1428(a5)
     a80:	3fd010ef          	jal	ra,267c <__subdf3>
     a84:	000106b7          	lui	a3,0x10
     a88:	5986a603          	lw	a2,1432(a3) # 10598 <__clz_tab+0x12c>
     a8c:	59c6a683          	lw	a3,1436(a3)
     a90:	0085f7b3          	and	a5,a1,s0
     a94:	00078593          	mv	a1,a5
     a98:	434010ef          	jal	ra,1ecc <__ledf2>
     a9c:	00054c63          	bltz	a0,ab4 <verify_benchmark+0x98>
     aa0:	00c12083          	lw	ra,12(sp)
     aa4:	00812403          	lw	s0,8(sp)
     aa8:	00000513          	li	a0,0
     aac:	01010113          	addi	sp,sp,16
     ab0:	00008067          	ret
     ab4:	000117b7          	lui	a5,0x11
     ab8:	bf87a603          	lw	a2,-1032(a5) # 10bf8 <Coef>
     abc:	bfc7a683          	lw	a3,-1028(a5)
     ac0:	000107b7          	lui	a5,0x10
     ac4:	5a07a503          	lw	a0,1440(a5) # 105a0 <__clz_tab+0x134>
     ac8:	5a47a583          	lw	a1,1444(a5)
     acc:	3b1010ef          	jal	ra,267c <__subdf3>
     ad0:	000106b7          	lui	a3,0x10
     ad4:	5a86a603          	lw	a2,1448(a3) # 105a8 <__clz_tab+0x13c>
     ad8:	5ac6a683          	lw	a3,1452(a3)
     adc:	0085f7b3          	and	a5,a1,s0
     ae0:	00078593          	mv	a1,a5
     ae4:	3e8010ef          	jal	ra,1ecc <__ledf2>
     ae8:	00c12083          	lw	ra,12(sp)
     aec:	00812403          	lw	s0,8(sp)
     af0:	00052513          	slti	a0,a0,0
     af4:	01010113          	addi	sp,sp,16
     af8:	00008067          	ret

00000afc <sqrt>:
     afc:	fe010113          	addi	sp,sp,-32
     b00:	00112e23          	sw	ra,28(sp)
     b04:	00812c23          	sw	s0,24(sp)
     b08:	00912a23          	sw	s1,20(sp)
     b0c:	01212823          	sw	s2,16(sp)
     b10:	01312623          	sw	s3,12(sp)
     b14:	00050493          	mv	s1,a0
     b18:	00058413          	mv	s0,a1
     b1c:	08c000ef          	jal	ra,ba8 <__ieee754_sqrt>
     b20:	00050993          	mv	s3,a0
     b24:	00058913          	mv	s2,a1
     b28:	00048613          	mv	a2,s1
     b2c:	00040693          	mv	a3,s0
     b30:	00048513          	mv	a0,s1
     b34:	00040593          	mv	a1,s0
     b38:	334020ef          	jal	ra,2e6c <__unorddf2>
     b3c:	00051e63          	bnez	a0,b58 <sqrt+0x5c>
     b40:	00000613          	li	a2,0
     b44:	00000693          	li	a3,0
     b48:	00048513          	mv	a0,s1
     b4c:	00040593          	mv	a1,s0
     b50:	37c010ef          	jal	ra,1ecc <__ledf2>
     b54:	02054463          	bltz	a0,b7c <sqrt+0x80>
     b58:	00098513          	mv	a0,s3
     b5c:	00090593          	mv	a1,s2
     b60:	01c12083          	lw	ra,28(sp)
     b64:	01812403          	lw	s0,24(sp)
     b68:	01412483          	lw	s1,20(sp)
     b6c:	01012903          	lw	s2,16(sp)
     b70:	00c12983          	lw	s3,12(sp)
     b74:	02010113          	addi	sp,sp,32
     b78:	00008067          	ret
     b7c:	508020ef          	jal	ra,3084 <__errno>
     b80:	02100793          	li	a5,33
     b84:	00f52023          	sw	a5,0(a0)
     b88:	00000613          	li	a2,0
     b8c:	00000693          	li	a3,0
     b90:	00060513          	mv	a0,a2
     b94:	00068593          	mv	a1,a3
     b98:	271000ef          	jal	ra,1608 <__divdf3>
     b9c:	00050993          	mv	s3,a0
     ba0:	00058913          	mv	s2,a1
     ba4:	fb5ff06f          	j	b58 <sqrt+0x5c>

00000ba8 <__ieee754_sqrt>:
     ba8:	ff010113          	addi	sp,sp,-16
     bac:	00112623          	sw	ra,12(sp)
     bb0:	00812423          	sw	s0,8(sp)
     bb4:	00912223          	sw	s1,4(sp)
     bb8:	00050493          	mv	s1,a0
     bbc:	00058413          	mv	s0,a1
     bc0:	7ff006b7          	lui	a3,0x7ff00
     bc4:	00b6f633          	and	a2,a3,a1
     bc8:	06d60663          	beq	a2,a3,c34 <__ieee754_sqrt+0x8c>
     bcc:	00058793          	mv	a5,a1
     bd0:	00050713          	mv	a4,a0
     bd4:	08b05463          	blez	a1,c5c <__ieee754_sqrt+0xb4>
     bd8:	4145de93          	srai	t4,a1,0x14
     bdc:	120e8063          	beqz	t4,cfc <__ieee754_sqrt+0x154>
     be0:	c01e8e93          	addi	t4,t4,-1023
     be4:	001006b7          	lui	a3,0x100
     be8:	fff68613          	addi	a2,a3,-1 # fffff <Seed+0xef3ef>
     bec:	00c7f7b3          	and	a5,a5,a2
     bf0:	00d7e6b3          	or	a3,a5,a3
     bf4:	001ef793          	andi	a5,t4,1
     bf8:	00078a63          	beqz	a5,c0c <__ieee754_sqrt+0x64>
     bfc:	01f75793          	srli	a5,a4,0x1f
     c00:	00169693          	slli	a3,a3,0x1
     c04:	00d786b3          	add	a3,a5,a3
     c08:	00171713          	slli	a4,a4,0x1
     c0c:	401ede93          	srai	t4,t4,0x1
     c10:	01f75793          	srli	a5,a4,0x1f
     c14:	00169693          	slli	a3,a3,0x1
     c18:	00d787b3          	add	a5,a5,a3
     c1c:	00171713          	slli	a4,a4,0x1
     c20:	01600593          	li	a1,22
     c24:	00000e13          	li	t3,0
     c28:	00000693          	li	a3,0
     c2c:	00200637          	lui	a2,0x200
     c30:	0f80006f          	j	d28 <__ieee754_sqrt+0x180>
     c34:	00050613          	mv	a2,a0
     c38:	00058693          	mv	a3,a1
     c3c:	00048513          	mv	a0,s1
     c40:	00040593          	mv	a1,s0
     c44:	36c010ef          	jal	ra,1fb0 <__muldf3>
     c48:	00048613          	mv	a2,s1
     c4c:	00040693          	mv	a3,s0
     c50:	1dc000ef          	jal	ra,e2c <__adddf3>
     c54:	00050693          	mv	a3,a0
     c58:	1b00006f          	j	e08 <__ieee754_sqrt+0x260>
     c5c:	00159613          	slli	a2,a1,0x1
     c60:	00165613          	srli	a2,a2,0x1
     c64:	00a66633          	or	a2,a2,a0
     c68:	00050693          	mv	a3,a0
     c6c:	18060e63          	beqz	a2,e08 <__ieee754_sqrt+0x260>
     c70:	0605c263          	bltz	a1,cd4 <__ieee754_sqrt+0x12c>
     c74:	4145de93          	srai	t4,a1,0x14
     c78:	f60e94e3          	bnez	t4,be0 <__ieee754_sqrt+0x38>
     c7c:	02059063          	bnez	a1,c9c <__ieee754_sqrt+0xf4>
     c80:	00058e93          	mv	t4,a1
     c84:	febe8e93          	addi	t4,t4,-21
     c88:	00b75793          	srli	a5,a4,0xb
     c8c:	01571713          	slli	a4,a4,0x15
     c90:	fe078ae3          	beqz	a5,c84 <__ieee754_sqrt+0xdc>
     c94:	0147d693          	srli	a3,a5,0x14
     c98:	06069663          	bnez	a3,d04 <__ieee754_sqrt+0x15c>
     c9c:	00000593          	li	a1,0
     ca0:	00100637          	lui	a2,0x100
     ca4:	00179793          	slli	a5,a5,0x1
     ca8:	00158593          	addi	a1,a1,1
     cac:	00c7f6b3          	and	a3,a5,a2
     cb0:	fe068ae3          	beqz	a3,ca4 <__ieee754_sqrt+0xfc>
     cb4:	fff58693          	addi	a3,a1,-1
     cb8:	40de8eb3          	sub	t4,t4,a3
     cbc:	02000693          	li	a3,32
     cc0:	40b686b3          	sub	a3,a3,a1
     cc4:	00d756b3          	srl	a3,a4,a3
     cc8:	00f6e7b3          	or	a5,a3,a5
     ccc:	00b71733          	sll	a4,a4,a1
     cd0:	f11ff06f          	j	be0 <__ieee754_sqrt+0x38>
     cd4:	00050613          	mv	a2,a0
     cd8:	00058693          	mv	a3,a1
     cdc:	00048513          	mv	a0,s1
     ce0:	00040593          	mv	a1,s0
     ce4:	199010ef          	jal	ra,267c <__subdf3>
     ce8:	00050613          	mv	a2,a0
     cec:	00058693          	mv	a3,a1
     cf0:	119000ef          	jal	ra,1608 <__divdf3>
     cf4:	00050693          	mv	a3,a0
     cf8:	1100006f          	j	e08 <__ieee754_sqrt+0x260>
     cfc:	00040793          	mv	a5,s0
     d00:	f9dff06f          	j	c9c <__ieee754_sqrt+0xf4>
     d04:	00040593          	mv	a1,s0
     d08:	fadff06f          	j	cb4 <__ieee754_sqrt+0x10c>
     d0c:	01f75513          	srli	a0,a4,0x1f
     d10:	00179793          	slli	a5,a5,0x1
     d14:	00f507b3          	add	a5,a0,a5
     d18:	00171713          	slli	a4,a4,0x1
     d1c:	00165613          	srli	a2,a2,0x1
     d20:	fff58593          	addi	a1,a1,-1
     d24:	00058e63          	beqz	a1,d40 <__ieee754_sqrt+0x198>
     d28:	00c68533          	add	a0,a3,a2
     d2c:	fea7c0e3          	blt	a5,a0,d0c <__ieee754_sqrt+0x164>
     d30:	00c506b3          	add	a3,a0,a2
     d34:	40a787b3          	sub	a5,a5,a0
     d38:	00ce0e33          	add	t3,t3,a2
     d3c:	fd1ff06f          	j	d0c <__ieee754_sqrt+0x164>
     d40:	00058313          	mv	t1,a1
     d44:	02000813          	li	a6,32
     d48:	80000637          	lui	a2,0x80000
     d4c:	0440006f          	j	d90 <__ieee754_sqrt+0x1e8>
     d50:	00c505b3          	add	a1,a0,a2
     d54:	00068893          	mv	a7,a3
     d58:	04054e63          	bltz	a0,db4 <__ieee754_sqrt+0x20c>
     d5c:	40d787b3          	sub	a5,a5,a3
     d60:	00a736b3          	sltu	a3,a4,a0
     d64:	40d787b3          	sub	a5,a5,a3
     d68:	40a70733          	sub	a4,a4,a0
     d6c:	00c30333          	add	t1,t1,a2
     d70:	00088693          	mv	a3,a7
     d74:	01f75513          	srli	a0,a4,0x1f
     d78:	00179793          	slli	a5,a5,0x1
     d7c:	00f507b3          	add	a5,a0,a5
     d80:	00171713          	slli	a4,a4,0x1
     d84:	00165613          	srli	a2,a2,0x1
     d88:	fff80813          	addi	a6,a6,-1
     d8c:	02080c63          	beqz	a6,dc4 <__ieee754_sqrt+0x21c>
     d90:	00b60533          	add	a0,a2,a1
     d94:	faf6cee3          	blt	a3,a5,d50 <__ieee754_sqrt+0x1a8>
     d98:	fcd79ee3          	bne	a5,a3,d74 <__ieee754_sqrt+0x1cc>
     d9c:	fca76ce3          	bltu	a4,a0,d74 <__ieee754_sqrt+0x1cc>
     da0:	00c505b3          	add	a1,a0,a2
     da4:	00054863          	bltz	a0,db4 <__ieee754_sqrt+0x20c>
     da8:	40d787b3          	sub	a5,a5,a3
     dac:	00068893          	mv	a7,a3
     db0:	fb9ff06f          	j	d68 <__ieee754_sqrt+0x1c0>
     db4:	fff5c893          	not	a7,a1
     db8:	01f8d893          	srli	a7,a7,0x1f
     dbc:	011688b3          	add	a7,a3,a7
     dc0:	f9dff06f          	j	d5c <__ieee754_sqrt+0x1b4>
     dc4:	00e7e533          	or	a0,a5,a4
     dc8:	00050a63          	beqz	a0,ddc <__ieee754_sqrt+0x234>
     dcc:	fff00793          	li	a5,-1
     dd0:	04f30863          	beq	t1,a5,e20 <__ieee754_sqrt+0x278>
     dd4:	00130313          	addi	t1,t1,1
     dd8:	ffe37313          	andi	t1,t1,-2
     ddc:	401e5793          	srai	a5,t3,0x1
     de0:	3fe00737          	lui	a4,0x3fe00
     de4:	00e787b3          	add	a5,a5,a4
     de8:	00135313          	srli	t1,t1,0x1
     dec:	001e7e13          	andi	t3,t3,1
     df0:	000e0663          	beqz	t3,dfc <__ieee754_sqrt+0x254>
     df4:	80000737          	lui	a4,0x80000
     df8:	00e36333          	or	t1,t1,a4
     dfc:	014e9e93          	slli	t4,t4,0x14
     e00:	00030693          	mv	a3,t1
     e04:	00fe85b3          	add	a1,t4,a5
     e08:	00068513          	mv	a0,a3
     e0c:	00c12083          	lw	ra,12(sp)
     e10:	00812403          	lw	s0,8(sp)
     e14:	00412483          	lw	s1,4(sp)
     e18:	01010113          	addi	sp,sp,16
     e1c:	00008067          	ret
     e20:	001e0e13          	addi	t3,t3,1
     e24:	00080313          	mv	t1,a6
     e28:	fb5ff06f          	j	ddc <__ieee754_sqrt+0x234>

00000e2c <__adddf3>:
     e2c:	00100837          	lui	a6,0x100
     e30:	fff80813          	addi	a6,a6,-1 # fffff <Seed+0xef3ef>
     e34:	fe010113          	addi	sp,sp,-32
     e38:	00b878b3          	and	a7,a6,a1
     e3c:	0145d713          	srli	a4,a1,0x14
     e40:	01d55793          	srli	a5,a0,0x1d
     e44:	00d87833          	and	a6,a6,a3
     e48:	00812c23          	sw	s0,24(sp)
     e4c:	7ff77413          	andi	s0,a4,2047
     e50:	00389713          	slli	a4,a7,0x3
     e54:	0146d893          	srli	a7,a3,0x14
     e58:	00381813          	slli	a6,a6,0x3
     e5c:	00912a23          	sw	s1,20(sp)
     e60:	00e7e7b3          	or	a5,a5,a4
     e64:	7ff8f893          	andi	a7,a7,2047
     e68:	01d65713          	srli	a4,a2,0x1d
     e6c:	00112e23          	sw	ra,28(sp)
     e70:	01212823          	sw	s2,16(sp)
     e74:	01312623          	sw	s3,12(sp)
     e78:	01f5d493          	srli	s1,a1,0x1f
     e7c:	01f6d693          	srli	a3,a3,0x1f
     e80:	01076733          	or	a4,a4,a6
     e84:	00351513          	slli	a0,a0,0x3
     e88:	00361613          	slli	a2,a2,0x3
     e8c:	41140833          	sub	a6,s0,a7
     e90:	2cd49863          	bne	s1,a3,1160 <__adddf3+0x334>
     e94:	13005063          	blez	a6,fb4 <__adddf3+0x188>
     e98:	04089063          	bnez	a7,ed8 <__adddf3+0xac>
     e9c:	00c766b3          	or	a3,a4,a2
     ea0:	70068e63          	beqz	a3,15bc <__adddf3+0x790>
     ea4:	fff80593          	addi	a1,a6,-1
     ea8:	02059063          	bnez	a1,ec8 <__adddf3+0x9c>
     eac:	00c50633          	add	a2,a0,a2
     eb0:	00e78733          	add	a4,a5,a4
     eb4:	00a637b3          	sltu	a5,a2,a0
     eb8:	00f707b3          	add	a5,a4,a5
     ebc:	00060513          	mv	a0,a2
     ec0:	00100413          	li	s0,1
     ec4:	0700006f          	j	f34 <__adddf3+0x108>
     ec8:	7ff00693          	li	a3,2047
     ecc:	02d81063          	bne	a6,a3,eec <__adddf3+0xc0>
     ed0:	7ff00413          	li	s0,2047
     ed4:	2140006f          	j	10e8 <__adddf3+0x2bc>
     ed8:	7ff00693          	li	a3,2047
     edc:	20d40663          	beq	s0,a3,10e8 <__adddf3+0x2bc>
     ee0:	008006b7          	lui	a3,0x800
     ee4:	00d76733          	or	a4,a4,a3
     ee8:	00080593          	mv	a1,a6
     eec:	03800693          	li	a3,56
     ef0:	0ab6cc63          	blt	a3,a1,fa8 <__adddf3+0x17c>
     ef4:	01f00693          	li	a3,31
     ef8:	06b6ce63          	blt	a3,a1,f74 <__adddf3+0x148>
     efc:	02000813          	li	a6,32
     f00:	40b80833          	sub	a6,a6,a1
     f04:	010716b3          	sll	a3,a4,a6
     f08:	00b658b3          	srl	a7,a2,a1
     f0c:	01061833          	sll	a6,a2,a6
     f10:	0116e6b3          	or	a3,a3,a7
     f14:	01003833          	snez	a6,a6
     f18:	0106e6b3          	or	a3,a3,a6
     f1c:	00b755b3          	srl	a1,a4,a1
     f20:	00a686b3          	add	a3,a3,a0
     f24:	00f585b3          	add	a1,a1,a5
     f28:	00a6b7b3          	sltu	a5,a3,a0
     f2c:	00f587b3          	add	a5,a1,a5
     f30:	00068513          	mv	a0,a3
     f34:	00800737          	lui	a4,0x800
     f38:	00e7f733          	and	a4,a5,a4
     f3c:	1a070663          	beqz	a4,10e8 <__adddf3+0x2bc>
     f40:	00140413          	addi	s0,s0,1 # 80000001 <Seed+0x7ffef3f1>
     f44:	7ff00713          	li	a4,2047
     f48:	5ce40a63          	beq	s0,a4,151c <__adddf3+0x6f0>
     f4c:	ff800737          	lui	a4,0xff800
     f50:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
     f54:	00e7f7b3          	and	a5,a5,a4
     f58:	00155713          	srli	a4,a0,0x1
     f5c:	00157513          	andi	a0,a0,1
     f60:	00a76733          	or	a4,a4,a0
     f64:	01f79513          	slli	a0,a5,0x1f
     f68:	00e56533          	or	a0,a0,a4
     f6c:	0017d793          	srli	a5,a5,0x1
     f70:	1780006f          	j	10e8 <__adddf3+0x2bc>
     f74:	fe058693          	addi	a3,a1,-32
     f78:	02000893          	li	a7,32
     f7c:	00d756b3          	srl	a3,a4,a3
     f80:	00000813          	li	a6,0
     f84:	01158863          	beq	a1,a7,f94 <__adddf3+0x168>
     f88:	04000813          	li	a6,64
     f8c:	40b80833          	sub	a6,a6,a1
     f90:	01071833          	sll	a6,a4,a6
     f94:	00c86833          	or	a6,a6,a2
     f98:	01003833          	snez	a6,a6
     f9c:	0106e6b3          	or	a3,a3,a6
     fa0:	00000593          	li	a1,0
     fa4:	f7dff06f          	j	f20 <__adddf3+0xf4>
     fa8:	00c766b3          	or	a3,a4,a2
     fac:	00d036b3          	snez	a3,a3
     fb0:	ff1ff06f          	j	fa0 <__adddf3+0x174>
     fb4:	0e080263          	beqz	a6,1098 <__adddf3+0x26c>
     fb8:	408885b3          	sub	a1,a7,s0
     fbc:	02041e63          	bnez	s0,ff8 <__adddf3+0x1cc>
     fc0:	00a7e6b3          	or	a3,a5,a0
     fc4:	52068c63          	beqz	a3,14fc <__adddf3+0x6d0>
     fc8:	fff58693          	addi	a3,a1,-1
     fcc:	00069c63          	bnez	a3,fe4 <__adddf3+0x1b8>
     fd0:	00c50533          	add	a0,a0,a2
     fd4:	00e78733          	add	a4,a5,a4
     fd8:	00c53633          	sltu	a2,a0,a2
     fdc:	00c707b3          	add	a5,a4,a2
     fe0:	ee1ff06f          	j	ec0 <__adddf3+0x94>
     fe4:	7ff00813          	li	a6,2047
     fe8:	03059263          	bne	a1,a6,100c <__adddf3+0x1e0>
     fec:	00070793          	mv	a5,a4
     ff0:	00060513          	mv	a0,a2
     ff4:	eddff06f          	j	ed0 <__adddf3+0xa4>
     ff8:	7ff00693          	li	a3,2047
     ffc:	fed888e3          	beq	a7,a3,fec <__adddf3+0x1c0>
    1000:	008006b7          	lui	a3,0x800
    1004:	00d7e7b3          	or	a5,a5,a3
    1008:	00058693          	mv	a3,a1
    100c:	03800593          	li	a1,56
    1010:	06d5ce63          	blt	a1,a3,108c <__adddf3+0x260>
    1014:	01f00593          	li	a1,31
    1018:	04d5c063          	blt	a1,a3,1058 <__adddf3+0x22c>
    101c:	02000813          	li	a6,32
    1020:	40d80833          	sub	a6,a6,a3
    1024:	010795b3          	sll	a1,a5,a6
    1028:	00d55333          	srl	t1,a0,a3
    102c:	01051833          	sll	a6,a0,a6
    1030:	0065e5b3          	or	a1,a1,t1
    1034:	01003833          	snez	a6,a6
    1038:	0105e5b3          	or	a1,a1,a6
    103c:	00d7d6b3          	srl	a3,a5,a3
    1040:	00c58533          	add	a0,a1,a2
    1044:	00e686b3          	add	a3,a3,a4
    1048:	00c53633          	sltu	a2,a0,a2
    104c:	00c687b3          	add	a5,a3,a2
    1050:	00088413          	mv	s0,a7
    1054:	ee1ff06f          	j	f34 <__adddf3+0x108>
    1058:	fe068593          	addi	a1,a3,-32 # 7fffe0 <Seed+0x7ef3d0>
    105c:	02000313          	li	t1,32
    1060:	00b7d5b3          	srl	a1,a5,a1
    1064:	00000813          	li	a6,0
    1068:	00668863          	beq	a3,t1,1078 <__adddf3+0x24c>
    106c:	04000813          	li	a6,64
    1070:	40d80833          	sub	a6,a6,a3
    1074:	01079833          	sll	a6,a5,a6
    1078:	00a86833          	or	a6,a6,a0
    107c:	01003833          	snez	a6,a6
    1080:	0105e5b3          	or	a1,a1,a6
    1084:	00000693          	li	a3,0
    1088:	fb9ff06f          	j	1040 <__adddf3+0x214>
    108c:	00a7e5b3          	or	a1,a5,a0
    1090:	00b035b3          	snez	a1,a1
    1094:	ff1ff06f          	j	1084 <__adddf3+0x258>
    1098:	00140693          	addi	a3,s0,1
    109c:	7fe6f593          	andi	a1,a3,2046
    10a0:	08059863          	bnez	a1,1130 <__adddf3+0x304>
    10a4:	00a7e6b3          	or	a3,a5,a0
    10a8:	06041463          	bnez	s0,1110 <__adddf3+0x2e4>
    10ac:	46068063          	beqz	a3,150c <__adddf3+0x6e0>
    10b0:	00c766b3          	or	a3,a4,a2
    10b4:	02068a63          	beqz	a3,10e8 <__adddf3+0x2bc>
    10b8:	00c50633          	add	a2,a0,a2
    10bc:	00e78733          	add	a4,a5,a4
    10c0:	00a637b3          	sltu	a5,a2,a0
    10c4:	00f707b3          	add	a5,a4,a5
    10c8:	00800737          	lui	a4,0x800
    10cc:	00e7f733          	and	a4,a5,a4
    10d0:	00060513          	mv	a0,a2
    10d4:	00070a63          	beqz	a4,10e8 <__adddf3+0x2bc>
    10d8:	ff800737          	lui	a4,0xff800
    10dc:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    10e0:	00e7f7b3          	and	a5,a5,a4
    10e4:	00100413          	li	s0,1
    10e8:	00757713          	andi	a4,a0,7
    10ec:	42070c63          	beqz	a4,1524 <__adddf3+0x6f8>
    10f0:	00f57713          	andi	a4,a0,15
    10f4:	00400693          	li	a3,4
    10f8:	42d70663          	beq	a4,a3,1524 <__adddf3+0x6f8>
    10fc:	00450713          	addi	a4,a0,4
    1100:	00a73533          	sltu	a0,a4,a0
    1104:	00a787b3          	add	a5,a5,a0
    1108:	00070513          	mv	a0,a4
    110c:	4180006f          	j	1524 <__adddf3+0x6f8>
    1110:	ec068ee3          	beqz	a3,fec <__adddf3+0x1c0>
    1114:	00c76733          	or	a4,a4,a2
    1118:	da070ce3          	beqz	a4,ed0 <__adddf3+0xa4>
    111c:	00000493          	li	s1,0
    1120:	004007b7          	lui	a5,0x400
    1124:	00000513          	li	a0,0
    1128:	7ff00413          	li	s0,2047
    112c:	3f80006f          	j	1524 <__adddf3+0x6f8>
    1130:	7ff00593          	li	a1,2047
    1134:	3eb68263          	beq	a3,a1,1518 <__adddf3+0x6ec>
    1138:	00c50633          	add	a2,a0,a2
    113c:	00a63533          	sltu	a0,a2,a0
    1140:	00e78733          	add	a4,a5,a4
    1144:	00a70733          	add	a4,a4,a0
    1148:	01f71513          	slli	a0,a4,0x1f
    114c:	00165613          	srli	a2,a2,0x1
    1150:	00c56533          	or	a0,a0,a2
    1154:	00175793          	srli	a5,a4,0x1
    1158:	00068413          	mv	s0,a3
    115c:	f8dff06f          	j	10e8 <__adddf3+0x2bc>
    1160:	0f005c63          	blez	a6,1258 <__adddf3+0x42c>
    1164:	08089e63          	bnez	a7,1200 <__adddf3+0x3d4>
    1168:	00c766b3          	or	a3,a4,a2
    116c:	44068863          	beqz	a3,15bc <__adddf3+0x790>
    1170:	fff80593          	addi	a1,a6,-1
    1174:	02059063          	bnez	a1,1194 <__adddf3+0x368>
    1178:	40c50633          	sub	a2,a0,a2
    117c:	40e78733          	sub	a4,a5,a4
    1180:	00c537b3          	sltu	a5,a0,a2
    1184:	40f707b3          	sub	a5,a4,a5
    1188:	00060513          	mv	a0,a2
    118c:	00100413          	li	s0,1
    1190:	0540006f          	j	11e4 <__adddf3+0x3b8>
    1194:	7ff00693          	li	a3,2047
    1198:	d2d80ce3          	beq	a6,a3,ed0 <__adddf3+0xa4>
    119c:	03800693          	li	a3,56
    11a0:	0ab6c663          	blt	a3,a1,124c <__adddf3+0x420>
    11a4:	01f00693          	li	a3,31
    11a8:	06b6c863          	blt	a3,a1,1218 <__adddf3+0x3ec>
    11ac:	02000813          	li	a6,32
    11b0:	40b80833          	sub	a6,a6,a1
    11b4:	010716b3          	sll	a3,a4,a6
    11b8:	00b658b3          	srl	a7,a2,a1
    11bc:	01061833          	sll	a6,a2,a6
    11c0:	0116e6b3          	or	a3,a3,a7
    11c4:	01003833          	snez	a6,a6
    11c8:	0106e6b3          	or	a3,a3,a6
    11cc:	00b755b3          	srl	a1,a4,a1
    11d0:	40d506b3          	sub	a3,a0,a3
    11d4:	40b785b3          	sub	a1,a5,a1
    11d8:	00d537b3          	sltu	a5,a0,a3
    11dc:	40f587b3          	sub	a5,a1,a5
    11e0:	00068513          	mv	a0,a3
    11e4:	00800937          	lui	s2,0x800
    11e8:	0127f733          	and	a4,a5,s2
    11ec:	ee070ee3          	beqz	a4,10e8 <__adddf3+0x2bc>
    11f0:	fff90913          	addi	s2,s2,-1 # 7fffff <Seed+0x7ef3ef>
    11f4:	0127f933          	and	s2,a5,s2
    11f8:	00050993          	mv	s3,a0
    11fc:	2140006f          	j	1410 <__adddf3+0x5e4>
    1200:	7ff00693          	li	a3,2047
    1204:	eed402e3          	beq	s0,a3,10e8 <__adddf3+0x2bc>
    1208:	008006b7          	lui	a3,0x800
    120c:	00d76733          	or	a4,a4,a3
    1210:	00080593          	mv	a1,a6
    1214:	f89ff06f          	j	119c <__adddf3+0x370>
    1218:	fe058693          	addi	a3,a1,-32
    121c:	02000893          	li	a7,32
    1220:	00d756b3          	srl	a3,a4,a3
    1224:	00000813          	li	a6,0
    1228:	01158863          	beq	a1,a7,1238 <__adddf3+0x40c>
    122c:	04000813          	li	a6,64
    1230:	40b80833          	sub	a6,a6,a1
    1234:	01071833          	sll	a6,a4,a6
    1238:	00c86833          	or	a6,a6,a2
    123c:	01003833          	snez	a6,a6
    1240:	0106e6b3          	or	a3,a3,a6
    1244:	00000593          	li	a1,0
    1248:	f89ff06f          	j	11d0 <__adddf3+0x3a4>
    124c:	00c766b3          	or	a3,a4,a2
    1250:	00d036b3          	snez	a3,a3
    1254:	ff1ff06f          	j	1244 <__adddf3+0x418>
    1258:	0e080863          	beqz	a6,1348 <__adddf3+0x51c>
    125c:	40888833          	sub	a6,a7,s0
    1260:	04041263          	bnez	s0,12a4 <__adddf3+0x478>
    1264:	00a7e5b3          	or	a1,a5,a0
    1268:	34058e63          	beqz	a1,15c4 <__adddf3+0x798>
    126c:	fff80593          	addi	a1,a6,-1
    1270:	00059e63          	bnez	a1,128c <__adddf3+0x460>
    1274:	40a60533          	sub	a0,a2,a0
    1278:	40f70733          	sub	a4,a4,a5
    127c:	00a63633          	sltu	a2,a2,a0
    1280:	40c707b3          	sub	a5,a4,a2
    1284:	00068493          	mv	s1,a3
    1288:	f05ff06f          	j	118c <__adddf3+0x360>
    128c:	7ff00313          	li	t1,2047
    1290:	02681463          	bne	a6,t1,12b8 <__adddf3+0x48c>
    1294:	00070793          	mv	a5,a4
    1298:	00060513          	mv	a0,a2
    129c:	7ff00413          	li	s0,2047
    12a0:	0d00006f          	j	1370 <__adddf3+0x544>
    12a4:	7ff00593          	li	a1,2047
    12a8:	feb886e3          	beq	a7,a1,1294 <__adddf3+0x468>
    12ac:	008005b7          	lui	a1,0x800
    12b0:	00b7e7b3          	or	a5,a5,a1
    12b4:	00080593          	mv	a1,a6
    12b8:	03800813          	li	a6,56
    12bc:	08b84063          	blt	a6,a1,133c <__adddf3+0x510>
    12c0:	01f00813          	li	a6,31
    12c4:	04b84263          	blt	a6,a1,1308 <__adddf3+0x4dc>
    12c8:	02000313          	li	t1,32
    12cc:	40b30333          	sub	t1,t1,a1
    12d0:	00b55e33          	srl	t3,a0,a1
    12d4:	00679833          	sll	a6,a5,t1
    12d8:	00651333          	sll	t1,a0,t1
    12dc:	01c86833          	or	a6,a6,t3
    12e0:	00603333          	snez	t1,t1
    12e4:	00686533          	or	a0,a6,t1
    12e8:	00b7d5b3          	srl	a1,a5,a1
    12ec:	40a60533          	sub	a0,a2,a0
    12f0:	40b705b3          	sub	a1,a4,a1
    12f4:	00a63633          	sltu	a2,a2,a0
    12f8:	40c587b3          	sub	a5,a1,a2
    12fc:	00088413          	mv	s0,a7
    1300:	00068493          	mv	s1,a3
    1304:	ee1ff06f          	j	11e4 <__adddf3+0x3b8>
    1308:	fe058813          	addi	a6,a1,-32 # 7fffe0 <Seed+0x7ef3d0>
    130c:	02000e13          	li	t3,32
    1310:	0107d833          	srl	a6,a5,a6
    1314:	00000313          	li	t1,0
    1318:	01c58863          	beq	a1,t3,1328 <__adddf3+0x4fc>
    131c:	04000313          	li	t1,64
    1320:	40b30333          	sub	t1,t1,a1
    1324:	00679333          	sll	t1,a5,t1
    1328:	00a36333          	or	t1,t1,a0
    132c:	00603333          	snez	t1,t1
    1330:	00686533          	or	a0,a6,t1
    1334:	00000593          	li	a1,0
    1338:	fb5ff06f          	j	12ec <__adddf3+0x4c0>
    133c:	00a7e533          	or	a0,a5,a0
    1340:	00a03533          	snez	a0,a0
    1344:	ff1ff06f          	j	1334 <__adddf3+0x508>
    1348:	00140593          	addi	a1,s0,1
    134c:	7fe5f593          	andi	a1,a1,2046
    1350:	08059863          	bnez	a1,13e0 <__adddf3+0x5b4>
    1354:	00a7e833          	or	a6,a5,a0
    1358:	00c765b3          	or	a1,a4,a2
    135c:	06041263          	bnez	s0,13c0 <__adddf3+0x594>
    1360:	00081c63          	bnez	a6,1378 <__adddf3+0x54c>
    1364:	26058863          	beqz	a1,15d4 <__adddf3+0x7a8>
    1368:	00070793          	mv	a5,a4
    136c:	00060513          	mv	a0,a2
    1370:	00068493          	mv	s1,a3
    1374:	d75ff06f          	j	10e8 <__adddf3+0x2bc>
    1378:	d60588e3          	beqz	a1,10e8 <__adddf3+0x2bc>
    137c:	40c50833          	sub	a6,a0,a2
    1380:	010538b3          	sltu	a7,a0,a6
    1384:	40e785b3          	sub	a1,a5,a4
    1388:	411585b3          	sub	a1,a1,a7
    138c:	008008b7          	lui	a7,0x800
    1390:	0115f8b3          	and	a7,a1,a7
    1394:	00088c63          	beqz	a7,13ac <__adddf3+0x580>
    1398:	40a60533          	sub	a0,a2,a0
    139c:	40f70733          	sub	a4,a4,a5
    13a0:	00a63633          	sltu	a2,a2,a0
    13a4:	40c707b3          	sub	a5,a4,a2
    13a8:	fc9ff06f          	j	1370 <__adddf3+0x544>
    13ac:	00b86533          	or	a0,a6,a1
    13b0:	22050a63          	beqz	a0,15e4 <__adddf3+0x7b8>
    13b4:	00058793          	mv	a5,a1
    13b8:	00080513          	mv	a0,a6
    13bc:	d2dff06f          	j	10e8 <__adddf3+0x2bc>
    13c0:	00081c63          	bnez	a6,13d8 <__adddf3+0x5ac>
    13c4:	22058463          	beqz	a1,15ec <__adddf3+0x7c0>
    13c8:	00070793          	mv	a5,a4
    13cc:	00060513          	mv	a0,a2
    13d0:	00068493          	mv	s1,a3
    13d4:	afdff06f          	j	ed0 <__adddf3+0xa4>
    13d8:	ae058ce3          	beqz	a1,ed0 <__adddf3+0xa4>
    13dc:	d41ff06f          	j	111c <__adddf3+0x2f0>
    13e0:	40c509b3          	sub	s3,a0,a2
    13e4:	013535b3          	sltu	a1,a0,s3
    13e8:	40e78933          	sub	s2,a5,a4
    13ec:	40b90933          	sub	s2,s2,a1
    13f0:	008005b7          	lui	a1,0x800
    13f4:	00b975b3          	and	a1,s2,a1
    13f8:	08058463          	beqz	a1,1480 <__adddf3+0x654>
    13fc:	40a609b3          	sub	s3,a2,a0
    1400:	40f70933          	sub	s2,a4,a5
    1404:	01363633          	sltu	a2,a2,s3
    1408:	40c90933          	sub	s2,s2,a2
    140c:	00068493          	mv	s1,a3
    1410:	08090263          	beqz	s2,1494 <__adddf3+0x668>
    1414:	00090513          	mv	a0,s2
    1418:	421010ef          	jal	ra,3038 <__clzsi2>
    141c:	ff850713          	addi	a4,a0,-8
    1420:	01f00793          	li	a5,31
    1424:	08e7c063          	blt	a5,a4,14a4 <__adddf3+0x678>
    1428:	02000793          	li	a5,32
    142c:	40e787b3          	sub	a5,a5,a4
    1430:	00e91933          	sll	s2,s2,a4
    1434:	00f9d7b3          	srl	a5,s3,a5
    1438:	0127e7b3          	or	a5,a5,s2
    143c:	00e99533          	sll	a0,s3,a4
    1440:	0a874463          	blt	a4,s0,14e8 <__adddf3+0x6bc>
    1444:	40870733          	sub	a4,a4,s0
    1448:	00170613          	addi	a2,a4,1
    144c:	01f00693          	li	a3,31
    1450:	06c6c263          	blt	a3,a2,14b4 <__adddf3+0x688>
    1454:	02000713          	li	a4,32
    1458:	40c70733          	sub	a4,a4,a2
    145c:	00e796b3          	sll	a3,a5,a4
    1460:	00c555b3          	srl	a1,a0,a2
    1464:	00e51733          	sll	a4,a0,a4
    1468:	00b6e6b3          	or	a3,a3,a1
    146c:	00e03733          	snez	a4,a4
    1470:	00e6e533          	or	a0,a3,a4
    1474:	00c7d7b3          	srl	a5,a5,a2
    1478:	00000413          	li	s0,0
    147c:	c6dff06f          	j	10e8 <__adddf3+0x2bc>
    1480:	0129e533          	or	a0,s3,s2
    1484:	f80516e3          	bnez	a0,1410 <__adddf3+0x5e4>
    1488:	00000793          	li	a5,0
    148c:	00000413          	li	s0,0
    1490:	14c0006f          	j	15dc <__adddf3+0x7b0>
    1494:	00098513          	mv	a0,s3
    1498:	3a1010ef          	jal	ra,3038 <__clzsi2>
    149c:	02050513          	addi	a0,a0,32
    14a0:	f7dff06f          	j	141c <__adddf3+0x5f0>
    14a4:	fd850793          	addi	a5,a0,-40
    14a8:	00f997b3          	sll	a5,s3,a5
    14ac:	00000513          	li	a0,0
    14b0:	f91ff06f          	j	1440 <__adddf3+0x614>
    14b4:	fe170713          	addi	a4,a4,-31
    14b8:	02000593          	li	a1,32
    14bc:	00e7d733          	srl	a4,a5,a4
    14c0:	00000693          	li	a3,0
    14c4:	00b60863          	beq	a2,a1,14d4 <__adddf3+0x6a8>
    14c8:	04000693          	li	a3,64
    14cc:	40c686b3          	sub	a3,a3,a2
    14d0:	00d796b3          	sll	a3,a5,a3
    14d4:	00d566b3          	or	a3,a0,a3
    14d8:	00d036b3          	snez	a3,a3
    14dc:	00d76533          	or	a0,a4,a3
    14e0:	00000793          	li	a5,0
    14e4:	f95ff06f          	j	1478 <__adddf3+0x64c>
    14e8:	40e40433          	sub	s0,s0,a4
    14ec:	ff800737          	lui	a4,0xff800
    14f0:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    14f4:	00e7f7b3          	and	a5,a5,a4
    14f8:	bf1ff06f          	j	10e8 <__adddf3+0x2bc>
    14fc:	00070793          	mv	a5,a4
    1500:	00060513          	mv	a0,a2
    1504:	00058413          	mv	s0,a1
    1508:	be1ff06f          	j	10e8 <__adddf3+0x2bc>
    150c:	00070793          	mv	a5,a4
    1510:	00060513          	mv	a0,a2
    1514:	bd5ff06f          	j	10e8 <__adddf3+0x2bc>
    1518:	7ff00413          	li	s0,2047
    151c:	00000793          	li	a5,0
    1520:	00000513          	li	a0,0
    1524:	00800737          	lui	a4,0x800
    1528:	00e7f733          	and	a4,a5,a4
    152c:	00070e63          	beqz	a4,1548 <__adddf3+0x71c>
    1530:	00140413          	addi	s0,s0,1
    1534:	7ff00713          	li	a4,2047
    1538:	0ce40263          	beq	s0,a4,15fc <__adddf3+0x7d0>
    153c:	ff800737          	lui	a4,0xff800
    1540:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    1544:	00e7f7b3          	and	a5,a5,a4
    1548:	01d79693          	slli	a3,a5,0x1d
    154c:	00355513          	srli	a0,a0,0x3
    1550:	7ff00713          	li	a4,2047
    1554:	00a6e6b3          	or	a3,a3,a0
    1558:	0037d793          	srli	a5,a5,0x3
    155c:	00e41e63          	bne	s0,a4,1578 <__adddf3+0x74c>
    1560:	00f6e6b3          	or	a3,a3,a5
    1564:	00000793          	li	a5,0
    1568:	00068863          	beqz	a3,1578 <__adddf3+0x74c>
    156c:	000807b7          	lui	a5,0x80
    1570:	00000693          	li	a3,0
    1574:	00000493          	li	s1,0
    1578:	01441713          	slli	a4,s0,0x14
    157c:	7ff00637          	lui	a2,0x7ff00
    1580:	00c79793          	slli	a5,a5,0xc
    1584:	01c12083          	lw	ra,28(sp)
    1588:	01812403          	lw	s0,24(sp)
    158c:	00c77733          	and	a4,a4,a2
    1590:	00c7d793          	srli	a5,a5,0xc
    1594:	01f49493          	slli	s1,s1,0x1f
    1598:	00f767b3          	or	a5,a4,a5
    159c:	0097e733          	or	a4,a5,s1
    15a0:	01012903          	lw	s2,16(sp)
    15a4:	01412483          	lw	s1,20(sp)
    15a8:	00c12983          	lw	s3,12(sp)
    15ac:	00068513          	mv	a0,a3
    15b0:	00070593          	mv	a1,a4
    15b4:	02010113          	addi	sp,sp,32
    15b8:	00008067          	ret
    15bc:	00080413          	mv	s0,a6
    15c0:	b29ff06f          	j	10e8 <__adddf3+0x2bc>
    15c4:	00070793          	mv	a5,a4
    15c8:	00060513          	mv	a0,a2
    15cc:	00080413          	mv	s0,a6
    15d0:	da1ff06f          	j	1370 <__adddf3+0x544>
    15d4:	00000793          	li	a5,0
    15d8:	00000513          	li	a0,0
    15dc:	00000493          	li	s1,0
    15e0:	f45ff06f          	j	1524 <__adddf3+0x6f8>
    15e4:	00000793          	li	a5,0
    15e8:	ff5ff06f          	j	15dc <__adddf3+0x7b0>
    15ec:	00000513          	li	a0,0
    15f0:	00000493          	li	s1,0
    15f4:	004007b7          	lui	a5,0x400
    15f8:	b31ff06f          	j	1128 <__adddf3+0x2fc>
    15fc:	00000793          	li	a5,0
    1600:	00000513          	li	a0,0
    1604:	f45ff06f          	j	1548 <__adddf3+0x71c>

00001608 <__divdf3>:
    1608:	fb010113          	addi	sp,sp,-80
    160c:	05212023          	sw	s2,64(sp)
    1610:	0145d913          	srli	s2,a1,0x14
    1614:	04912223          	sw	s1,68(sp)
    1618:	03312e23          	sw	s3,60(sp)
    161c:	03412c23          	sw	s4,56(sp)
    1620:	03512a23          	sw	s5,52(sp)
    1624:	03612823          	sw	s6,48(sp)
    1628:	00c59493          	slli	s1,a1,0xc
    162c:	04112623          	sw	ra,76(sp)
    1630:	04812423          	sw	s0,72(sp)
    1634:	03712623          	sw	s7,44(sp)
    1638:	03812423          	sw	s8,40(sp)
    163c:	03912223          	sw	s9,36(sp)
    1640:	03a12023          	sw	s10,32(sp)
    1644:	01b12e23          	sw	s11,28(sp)
    1648:	7ff97913          	andi	s2,s2,2047
    164c:	00050993          	mv	s3,a0
    1650:	00060b13          	mv	s6,a2
    1654:	00068a93          	mv	s5,a3
    1658:	00c4d493          	srli	s1,s1,0xc
    165c:	01f5da13          	srli	s4,a1,0x1f
    1660:	0a090063          	beqz	s2,1700 <__divdf3+0xf8>
    1664:	7ff00793          	li	a5,2047
    1668:	0ef90e63          	beq	s2,a5,1764 <__divdf3+0x15c>
    166c:	01d55c93          	srli	s9,a0,0x1d
    1670:	00349493          	slli	s1,s1,0x3
    1674:	009cecb3          	or	s9,s9,s1
    1678:	008007b7          	lui	a5,0x800
    167c:	00fcecb3          	or	s9,s9,a5
    1680:	00351413          	slli	s0,a0,0x3
    1684:	c0190913          	addi	s2,s2,-1023
    1688:	00000b93          	li	s7,0
    168c:	014ad793          	srli	a5,s5,0x14
    1690:	00ca9993          	slli	s3,s5,0xc
    1694:	7ff7f793          	andi	a5,a5,2047
    1698:	00c9d993          	srli	s3,s3,0xc
    169c:	01fada93          	srli	s5,s5,0x1f
    16a0:	10078063          	beqz	a5,17a0 <__divdf3+0x198>
    16a4:	7ff00713          	li	a4,2047
    16a8:	16e78063          	beq	a5,a4,1808 <__divdf3+0x200>
    16ac:	00399993          	slli	s3,s3,0x3
    16b0:	01db5713          	srli	a4,s6,0x1d
    16b4:	01376733          	or	a4,a4,s3
    16b8:	008009b7          	lui	s3,0x800
    16bc:	013769b3          	or	s3,a4,s3
    16c0:	003b1813          	slli	a6,s6,0x3
    16c4:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <Seed+0x7eeff1>
    16c8:	00000713          	li	a4,0
    16cc:	40f90933          	sub	s2,s2,a5
    16d0:	002b9793          	slli	a5,s7,0x2
    16d4:	00e7e7b3          	or	a5,a5,a4
    16d8:	fff78793          	addi	a5,a5,-1
    16dc:	00e00693          	li	a3,14
    16e0:	015a44b3          	xor	s1,s4,s5
    16e4:	14f6ee63          	bltu	a3,a5,1840 <__divdf3+0x238>
    16e8:	000106b7          	lui	a3,0x10
    16ec:	00279793          	slli	a5,a5,0x2
    16f0:	43068693          	addi	a3,a3,1072 # 10430 <_global_impure_ptr+0x4>
    16f4:	00d787b3          	add	a5,a5,a3
    16f8:	0007a783          	lw	a5,0(a5)
    16fc:	00078067          	jr	a5
    1700:	00a4ecb3          	or	s9,s1,a0
    1704:	060c8e63          	beqz	s9,1780 <__divdf3+0x178>
    1708:	04048063          	beqz	s1,1748 <__divdf3+0x140>
    170c:	00048513          	mv	a0,s1
    1710:	129010ef          	jal	ra,3038 <__clzsi2>
    1714:	ff550793          	addi	a5,a0,-11
    1718:	01c00713          	li	a4,28
    171c:	02f74c63          	blt	a4,a5,1754 <__divdf3+0x14c>
    1720:	01d00c93          	li	s9,29
    1724:	ff850413          	addi	s0,a0,-8
    1728:	40fc8cb3          	sub	s9,s9,a5
    172c:	008494b3          	sll	s1,s1,s0
    1730:	0199dcb3          	srl	s9,s3,s9
    1734:	009cecb3          	or	s9,s9,s1
    1738:	00899433          	sll	s0,s3,s0
    173c:	c0d00913          	li	s2,-1011
    1740:	40a90933          	sub	s2,s2,a0
    1744:	f45ff06f          	j	1688 <__divdf3+0x80>
    1748:	0f1010ef          	jal	ra,3038 <__clzsi2>
    174c:	02050513          	addi	a0,a0,32
    1750:	fc5ff06f          	j	1714 <__divdf3+0x10c>
    1754:	fd850c93          	addi	s9,a0,-40
    1758:	01999cb3          	sll	s9,s3,s9
    175c:	00000413          	li	s0,0
    1760:	fddff06f          	j	173c <__divdf3+0x134>
    1764:	00a4ecb3          	or	s9,s1,a0
    1768:	020c8463          	beqz	s9,1790 <__divdf3+0x188>
    176c:	00050413          	mv	s0,a0
    1770:	00048c93          	mv	s9,s1
    1774:	7ff00913          	li	s2,2047
    1778:	00300b93          	li	s7,3
    177c:	f11ff06f          	j	168c <__divdf3+0x84>
    1780:	00000413          	li	s0,0
    1784:	00000913          	li	s2,0
    1788:	00100b93          	li	s7,1
    178c:	f01ff06f          	j	168c <__divdf3+0x84>
    1790:	00000413          	li	s0,0
    1794:	7ff00913          	li	s2,2047
    1798:	00200b93          	li	s7,2
    179c:	ef1ff06f          	j	168c <__divdf3+0x84>
    17a0:	0169e833          	or	a6,s3,s6
    17a4:	06080e63          	beqz	a6,1820 <__divdf3+0x218>
    17a8:	04098063          	beqz	s3,17e8 <__divdf3+0x1e0>
    17ac:	00098513          	mv	a0,s3
    17b0:	089010ef          	jal	ra,3038 <__clzsi2>
    17b4:	ff550713          	addi	a4,a0,-11
    17b8:	01c00793          	li	a5,28
    17bc:	02e7ce63          	blt	a5,a4,17f8 <__divdf3+0x1f0>
    17c0:	01d00793          	li	a5,29
    17c4:	ff850813          	addi	a6,a0,-8
    17c8:	40e787b3          	sub	a5,a5,a4
    17cc:	010999b3          	sll	s3,s3,a6
    17d0:	00fb57b3          	srl	a5,s6,a5
    17d4:	0137e9b3          	or	s3,a5,s3
    17d8:	010b1833          	sll	a6,s6,a6
    17dc:	c0d00793          	li	a5,-1011
    17e0:	40a787b3          	sub	a5,a5,a0
    17e4:	ee5ff06f          	j	16c8 <__divdf3+0xc0>
    17e8:	000b0513          	mv	a0,s6
    17ec:	04d010ef          	jal	ra,3038 <__clzsi2>
    17f0:	02050513          	addi	a0,a0,32
    17f4:	fc1ff06f          	j	17b4 <__divdf3+0x1ac>
    17f8:	fd850993          	addi	s3,a0,-40
    17fc:	013b19b3          	sll	s3,s6,s3
    1800:	00000813          	li	a6,0
    1804:	fd9ff06f          	j	17dc <__divdf3+0x1d4>
    1808:	0169e833          	or	a6,s3,s6
    180c:	02080263          	beqz	a6,1830 <__divdf3+0x228>
    1810:	000b0813          	mv	a6,s6
    1814:	7ff00793          	li	a5,2047
    1818:	00300713          	li	a4,3
    181c:	eb1ff06f          	j	16cc <__divdf3+0xc4>
    1820:	00000993          	li	s3,0
    1824:	00000793          	li	a5,0
    1828:	00100713          	li	a4,1
    182c:	ea1ff06f          	j	16cc <__divdf3+0xc4>
    1830:	00000993          	li	s3,0
    1834:	7ff00793          	li	a5,2047
    1838:	00200713          	li	a4,2
    183c:	e91ff06f          	j	16cc <__divdf3+0xc4>
    1840:	0199e663          	bltu	s3,s9,184c <__divdf3+0x244>
    1844:	453c9a63          	bne	s9,s3,1c98 <__divdf3+0x690>
    1848:	45046863          	bltu	s0,a6,1c98 <__divdf3+0x690>
    184c:	01fc9713          	slli	a4,s9,0x1f
    1850:	00145793          	srli	a5,s0,0x1
    1854:	01f41d93          	slli	s11,s0,0x1f
    1858:	001cdc93          	srli	s9,s9,0x1
    185c:	00f76433          	or	s0,a4,a5
    1860:	01885a93          	srli	s5,a6,0x18
    1864:	00899b93          	slli	s7,s3,0x8
    1868:	017aeab3          	or	s5,s5,s7
    186c:	010bdb93          	srli	s7,s7,0x10
    1870:	000b8593          	mv	a1,s7
    1874:	010a9c13          	slli	s8,s5,0x10
    1878:	000c8513          	mv	a0,s9
    187c:	00881b13          	slli	s6,a6,0x8
    1880:	010c5c13          	srli	s8,s8,0x10
    1884:	708010ef          	jal	ra,2f8c <__udivsi3>
    1888:	00050593          	mv	a1,a0
    188c:	00050d13          	mv	s10,a0
    1890:	000c0513          	mv	a0,s8
    1894:	6cc010ef          	jal	ra,2f60 <__mulsi3>
    1898:	00050993          	mv	s3,a0
    189c:	000b8593          	mv	a1,s7
    18a0:	000c8513          	mv	a0,s9
    18a4:	730010ef          	jal	ra,2fd4 <__umodsi3>
    18a8:	01051513          	slli	a0,a0,0x10
    18ac:	01045713          	srli	a4,s0,0x10
    18b0:	00a76733          	or	a4,a4,a0
    18b4:	000d0a13          	mv	s4,s10
    18b8:	01377e63          	bgeu	a4,s3,18d4 <__divdf3+0x2cc>
    18bc:	01570733          	add	a4,a4,s5
    18c0:	fffd0a13          	addi	s4,s10,-1
    18c4:	01576863          	bltu	a4,s5,18d4 <__divdf3+0x2cc>
    18c8:	01377663          	bgeu	a4,s3,18d4 <__divdf3+0x2cc>
    18cc:	ffed0a13          	addi	s4,s10,-2
    18d0:	01570733          	add	a4,a4,s5
    18d4:	413709b3          	sub	s3,a4,s3
    18d8:	000b8593          	mv	a1,s7
    18dc:	00098513          	mv	a0,s3
    18e0:	6ac010ef          	jal	ra,2f8c <__udivsi3>
    18e4:	00050593          	mv	a1,a0
    18e8:	00050d13          	mv	s10,a0
    18ec:	000c0513          	mv	a0,s8
    18f0:	670010ef          	jal	ra,2f60 <__mulsi3>
    18f4:	00050c93          	mv	s9,a0
    18f8:	000b8593          	mv	a1,s7
    18fc:	00098513          	mv	a0,s3
    1900:	6d4010ef          	jal	ra,2fd4 <__umodsi3>
    1904:	01041413          	slli	s0,s0,0x10
    1908:	01051513          	slli	a0,a0,0x10
    190c:	01045413          	srli	s0,s0,0x10
    1910:	00a46433          	or	s0,s0,a0
    1914:	000d0793          	mv	a5,s10
    1918:	01947e63          	bgeu	s0,s9,1934 <__divdf3+0x32c>
    191c:	01540433          	add	s0,s0,s5
    1920:	fffd0793          	addi	a5,s10,-1
    1924:	01546863          	bltu	s0,s5,1934 <__divdf3+0x32c>
    1928:	01947663          	bgeu	s0,s9,1934 <__divdf3+0x32c>
    192c:	ffed0793          	addi	a5,s10,-2
    1930:	01540433          	add	s0,s0,s5
    1934:	010a1713          	slli	a4,s4,0x10
    1938:	00010337          	lui	t1,0x10
    193c:	00f76733          	or	a4,a4,a5
    1940:	41940433          	sub	s0,s0,s9
    1944:	fff30c93          	addi	s9,t1,-1 # ffff <main+0xcf6f>
    1948:	019777b3          	and	a5,a4,s9
    194c:	019b7cb3          	and	s9,s6,s9
    1950:	01075e13          	srli	t3,a4,0x10
    1954:	010b5d13          	srli	s10,s6,0x10
    1958:	00078513          	mv	a0,a5
    195c:	000c8593          	mv	a1,s9
    1960:	600010ef          	jal	ra,2f60 <__mulsi3>
    1964:	00050813          	mv	a6,a0
    1968:	000d0593          	mv	a1,s10
    196c:	00078513          	mv	a0,a5
    1970:	5f0010ef          	jal	ra,2f60 <__mulsi3>
    1974:	00050793          	mv	a5,a0
    1978:	000c8593          	mv	a1,s9
    197c:	000e0513          	mv	a0,t3
    1980:	5e0010ef          	jal	ra,2f60 <__mulsi3>
    1984:	00050893          	mv	a7,a0
    1988:	000d0593          	mv	a1,s10
    198c:	000e0513          	mv	a0,t3
    1990:	5d0010ef          	jal	ra,2f60 <__mulsi3>
    1994:	01085a13          	srli	s4,a6,0x10
    1998:	011787b3          	add	a5,a5,a7
    199c:	00fa0a33          	add	s4,s4,a5
    19a0:	00050693          	mv	a3,a0
    19a4:	011a7463          	bgeu	s4,a7,19ac <__divdf3+0x3a4>
    19a8:	006506b3          	add	a3,a0,t1
    19ac:	010a5793          	srli	a5,s4,0x10
    19b0:	00d787b3          	add	a5,a5,a3
    19b4:	000106b7          	lui	a3,0x10
    19b8:	fff68693          	addi	a3,a3,-1 # ffff <main+0xcf6f>
    19bc:	00da7a33          	and	s4,s4,a3
    19c0:	010a1a13          	slli	s4,s4,0x10
    19c4:	00d87833          	and	a6,a6,a3
    19c8:	010a0a33          	add	s4,s4,a6
    19cc:	00f46863          	bltu	s0,a5,19dc <__divdf3+0x3d4>
    19d0:	00070993          	mv	s3,a4
    19d4:	04f41463          	bne	s0,a5,1a1c <__divdf3+0x414>
    19d8:	054df263          	bgeu	s11,s4,1a1c <__divdf3+0x414>
    19dc:	016d8db3          	add	s11,s11,s6
    19e0:	016db6b3          	sltu	a3,s11,s6
    19e4:	015686b3          	add	a3,a3,s5
    19e8:	00d40433          	add	s0,s0,a3
    19ec:	fff70993          	addi	s3,a4,-1
    19f0:	008ae663          	bltu	s5,s0,19fc <__divdf3+0x3f4>
    19f4:	028a9463          	bne	s5,s0,1a1c <__divdf3+0x414>
    19f8:	036de263          	bltu	s11,s6,1a1c <__divdf3+0x414>
    19fc:	00f46663          	bltu	s0,a5,1a08 <__divdf3+0x400>
    1a00:	00879e63          	bne	a5,s0,1a1c <__divdf3+0x414>
    1a04:	014dfc63          	bgeu	s11,s4,1a1c <__divdf3+0x414>
    1a08:	016d8db3          	add	s11,s11,s6
    1a0c:	ffe70993          	addi	s3,a4,-2
    1a10:	016db733          	sltu	a4,s11,s6
    1a14:	01570733          	add	a4,a4,s5
    1a18:	00e40433          	add	s0,s0,a4
    1a1c:	414d8a33          	sub	s4,s11,s4
    1a20:	40f40433          	sub	s0,s0,a5
    1a24:	014db7b3          	sltu	a5,s11,s4
    1a28:	40f40433          	sub	s0,s0,a5
    1a2c:	fff00813          	li	a6,-1
    1a30:	1a8a8263          	beq	s5,s0,1bd4 <__divdf3+0x5cc>
    1a34:	000b8593          	mv	a1,s7
    1a38:	00040513          	mv	a0,s0
    1a3c:	550010ef          	jal	ra,2f8c <__udivsi3>
    1a40:	00050593          	mv	a1,a0
    1a44:	00a12623          	sw	a0,12(sp)
    1a48:	000c0513          	mv	a0,s8
    1a4c:	514010ef          	jal	ra,2f60 <__mulsi3>
    1a50:	00a12423          	sw	a0,8(sp)
    1a54:	000b8593          	mv	a1,s7
    1a58:	00040513          	mv	a0,s0
    1a5c:	578010ef          	jal	ra,2fd4 <__umodsi3>
    1a60:	00c12683          	lw	a3,12(sp)
    1a64:	00812783          	lw	a5,8(sp)
    1a68:	01051513          	slli	a0,a0,0x10
    1a6c:	010a5713          	srli	a4,s4,0x10
    1a70:	00a76733          	or	a4,a4,a0
    1a74:	00068d93          	mv	s11,a3
    1a78:	00f77e63          	bgeu	a4,a5,1a94 <__divdf3+0x48c>
    1a7c:	01570733          	add	a4,a4,s5
    1a80:	fff68d93          	addi	s11,a3,-1
    1a84:	01576863          	bltu	a4,s5,1a94 <__divdf3+0x48c>
    1a88:	00f77663          	bgeu	a4,a5,1a94 <__divdf3+0x48c>
    1a8c:	ffe68d93          	addi	s11,a3,-2
    1a90:	01570733          	add	a4,a4,s5
    1a94:	40f70433          	sub	s0,a4,a5
    1a98:	000b8593          	mv	a1,s7
    1a9c:	00040513          	mv	a0,s0
    1aa0:	4ec010ef          	jal	ra,2f8c <__udivsi3>
    1aa4:	00050593          	mv	a1,a0
    1aa8:	00a12423          	sw	a0,8(sp)
    1aac:	000c0513          	mv	a0,s8
    1ab0:	4b0010ef          	jal	ra,2f60 <__mulsi3>
    1ab4:	00050c13          	mv	s8,a0
    1ab8:	000b8593          	mv	a1,s7
    1abc:	00040513          	mv	a0,s0
    1ac0:	514010ef          	jal	ra,2fd4 <__umodsi3>
    1ac4:	00812783          	lw	a5,8(sp)
    1ac8:	010a1713          	slli	a4,s4,0x10
    1acc:	01051513          	slli	a0,a0,0x10
    1ad0:	01075713          	srli	a4,a4,0x10
    1ad4:	00a76733          	or	a4,a4,a0
    1ad8:	00078693          	mv	a3,a5
    1adc:	01877e63          	bgeu	a4,s8,1af8 <__divdf3+0x4f0>
    1ae0:	01570733          	add	a4,a4,s5
    1ae4:	fff78693          	addi	a3,a5,-1
    1ae8:	01576863          	bltu	a4,s5,1af8 <__divdf3+0x4f0>
    1aec:	01877663          	bgeu	a4,s8,1af8 <__divdf3+0x4f0>
    1af0:	ffe78693          	addi	a3,a5,-2
    1af4:	01570733          	add	a4,a4,s5
    1af8:	010d9793          	slli	a5,s11,0x10
    1afc:	00d7e7b3          	or	a5,a5,a3
    1b00:	01079813          	slli	a6,a5,0x10
    1b04:	01085813          	srli	a6,a6,0x10
    1b08:	41870733          	sub	a4,a4,s8
    1b0c:	0107de13          	srli	t3,a5,0x10
    1b10:	00080513          	mv	a0,a6
    1b14:	000c8593          	mv	a1,s9
    1b18:	448010ef          	jal	ra,2f60 <__mulsi3>
    1b1c:	00050893          	mv	a7,a0
    1b20:	000d0593          	mv	a1,s10
    1b24:	00080513          	mv	a0,a6
    1b28:	438010ef          	jal	ra,2f60 <__mulsi3>
    1b2c:	00050813          	mv	a6,a0
    1b30:	000c8593          	mv	a1,s9
    1b34:	000e0513          	mv	a0,t3
    1b38:	428010ef          	jal	ra,2f60 <__mulsi3>
    1b3c:	00050313          	mv	t1,a0
    1b40:	000d0593          	mv	a1,s10
    1b44:	000e0513          	mv	a0,t3
    1b48:	418010ef          	jal	ra,2f60 <__mulsi3>
    1b4c:	0108d693          	srli	a3,a7,0x10
    1b50:	00680833          	add	a6,a6,t1
    1b54:	010686b3          	add	a3,a3,a6
    1b58:	00050593          	mv	a1,a0
    1b5c:	0066f663          	bgeu	a3,t1,1b68 <__divdf3+0x560>
    1b60:	00010637          	lui	a2,0x10
    1b64:	00c505b3          	add	a1,a0,a2
    1b68:	0106d613          	srli	a2,a3,0x10
    1b6c:	00b60633          	add	a2,a2,a1
    1b70:	000105b7          	lui	a1,0x10
    1b74:	fff58593          	addi	a1,a1,-1 # ffff <main+0xcf6f>
    1b78:	00b6f6b3          	and	a3,a3,a1
    1b7c:	01069693          	slli	a3,a3,0x10
    1b80:	00b8f8b3          	and	a7,a7,a1
    1b84:	011686b3          	add	a3,a3,a7
    1b88:	00c76863          	bltu	a4,a2,1b98 <__divdf3+0x590>
    1b8c:	24c71a63          	bne	a4,a2,1de0 <__divdf3+0x7d8>
    1b90:	00078813          	mv	a6,a5
    1b94:	04068063          	beqz	a3,1bd4 <__divdf3+0x5cc>
    1b98:	00ea8733          	add	a4,s5,a4
    1b9c:	fff78813          	addi	a6,a5,-1
    1ba0:	03576463          	bltu	a4,s5,1bc8 <__divdf3+0x5c0>
    1ba4:	00c76663          	bltu	a4,a2,1bb0 <__divdf3+0x5a8>
    1ba8:	22c71a63          	bne	a4,a2,1ddc <__divdf3+0x7d4>
    1bac:	02db7063          	bgeu	s6,a3,1bcc <__divdf3+0x5c4>
    1bb0:	ffe78813          	addi	a6,a5,-2
    1bb4:	001b1793          	slli	a5,s6,0x1
    1bb8:	0167bb33          	sltu	s6,a5,s6
    1bbc:	015b0b33          	add	s6,s6,s5
    1bc0:	01670733          	add	a4,a4,s6
    1bc4:	00078b13          	mv	s6,a5
    1bc8:	00c71463          	bne	a4,a2,1bd0 <__divdf3+0x5c8>
    1bcc:	00db0463          	beq	s6,a3,1bd4 <__divdf3+0x5cc>
    1bd0:	00186813          	ori	a6,a6,1
    1bd4:	3ff90793          	addi	a5,s2,1023
    1bd8:	12f05063          	blez	a5,1cf8 <__divdf3+0x6f0>
    1bdc:	00787713          	andi	a4,a6,7
    1be0:	02070063          	beqz	a4,1c00 <__divdf3+0x5f8>
    1be4:	00f87713          	andi	a4,a6,15
    1be8:	00400693          	li	a3,4
    1bec:	00d70a63          	beq	a4,a3,1c00 <__divdf3+0x5f8>
    1bf0:	00480713          	addi	a4,a6,4
    1bf4:	01073833          	sltu	a6,a4,a6
    1bf8:	010989b3          	add	s3,s3,a6
    1bfc:	00070813          	mv	a6,a4
    1c00:	01000737          	lui	a4,0x1000
    1c04:	00e9f733          	and	a4,s3,a4
    1c08:	00070a63          	beqz	a4,1c1c <__divdf3+0x614>
    1c0c:	ff0007b7          	lui	a5,0xff000
    1c10:	fff78793          	addi	a5,a5,-1 # feffffff <Seed+0xfefef3ef>
    1c14:	00f9f9b3          	and	s3,s3,a5
    1c18:	40090793          	addi	a5,s2,1024
    1c1c:	7fe00713          	li	a4,2046
    1c20:	0af74663          	blt	a4,a5,1ccc <__divdf3+0x6c4>
    1c24:	00385813          	srli	a6,a6,0x3
    1c28:	01d99713          	slli	a4,s3,0x1d
    1c2c:	01076733          	or	a4,a4,a6
    1c30:	0039d593          	srli	a1,s3,0x3
    1c34:	7ff006b7          	lui	a3,0x7ff00
    1c38:	01479793          	slli	a5,a5,0x14
    1c3c:	00c59593          	slli	a1,a1,0xc
    1c40:	04c12083          	lw	ra,76(sp)
    1c44:	04812403          	lw	s0,72(sp)
    1c48:	00d7f7b3          	and	a5,a5,a3
    1c4c:	00c5d593          	srli	a1,a1,0xc
    1c50:	00b7e7b3          	or	a5,a5,a1
    1c54:	01f49493          	slli	s1,s1,0x1f
    1c58:	0097e6b3          	or	a3,a5,s1
    1c5c:	04012903          	lw	s2,64(sp)
    1c60:	04412483          	lw	s1,68(sp)
    1c64:	03c12983          	lw	s3,60(sp)
    1c68:	03812a03          	lw	s4,56(sp)
    1c6c:	03412a83          	lw	s5,52(sp)
    1c70:	03012b03          	lw	s6,48(sp)
    1c74:	02c12b83          	lw	s7,44(sp)
    1c78:	02812c03          	lw	s8,40(sp)
    1c7c:	02412c83          	lw	s9,36(sp)
    1c80:	02012d03          	lw	s10,32(sp)
    1c84:	01c12d83          	lw	s11,28(sp)
    1c88:	00070513          	mv	a0,a4
    1c8c:	00068593          	mv	a1,a3
    1c90:	05010113          	addi	sp,sp,80
    1c94:	00008067          	ret
    1c98:	fff90913          	addi	s2,s2,-1
    1c9c:	00000d93          	li	s11,0
    1ca0:	bc1ff06f          	j	1860 <__divdf3+0x258>
    1ca4:	000a0493          	mv	s1,s4
    1ca8:	000c8993          	mv	s3,s9
    1cac:	00040813          	mv	a6,s0
    1cb0:	000b8713          	mv	a4,s7
    1cb4:	00300793          	li	a5,3
    1cb8:	10f70063          	beq	a4,a5,1db8 <__divdf3+0x7b0>
    1cbc:	00100793          	li	a5,1
    1cc0:	0ef70663          	beq	a4,a5,1dac <__divdf3+0x7a4>
    1cc4:	00200793          	li	a5,2
    1cc8:	f0f716e3          	bne	a4,a5,1bd4 <__divdf3+0x5cc>
    1ccc:	00000593          	li	a1,0
    1cd0:	00000713          	li	a4,0
    1cd4:	7ff00793          	li	a5,2047
    1cd8:	f5dff06f          	j	1c34 <__divdf3+0x62c>
    1cdc:	000a8493          	mv	s1,s5
    1ce0:	fd5ff06f          	j	1cb4 <__divdf3+0x6ac>
    1ce4:	000809b7          	lui	s3,0x80
    1ce8:	00000813          	li	a6,0
    1cec:	00000493          	li	s1,0
    1cf0:	00300713          	li	a4,3
    1cf4:	fc1ff06f          	j	1cb4 <__divdf3+0x6ac>
    1cf8:	00100593          	li	a1,1
    1cfc:	40f585b3          	sub	a1,a1,a5
    1d00:	03800713          	li	a4,56
    1d04:	0ab74463          	blt	a4,a1,1dac <__divdf3+0x7a4>
    1d08:	01f00713          	li	a4,31
    1d0c:	06b74663          	blt	a4,a1,1d78 <__divdf3+0x770>
    1d10:	41e90913          	addi	s2,s2,1054
    1d14:	012997b3          	sll	a5,s3,s2
    1d18:	00b85733          	srl	a4,a6,a1
    1d1c:	01281933          	sll	s2,a6,s2
    1d20:	00e7e7b3          	or	a5,a5,a4
    1d24:	01203933          	snez	s2,s2
    1d28:	0127e7b3          	or	a5,a5,s2
    1d2c:	00b9d5b3          	srl	a1,s3,a1
    1d30:	0077f713          	andi	a4,a5,7
    1d34:	02070063          	beqz	a4,1d54 <__divdf3+0x74c>
    1d38:	00f7f713          	andi	a4,a5,15
    1d3c:	00400693          	li	a3,4
    1d40:	00d70a63          	beq	a4,a3,1d54 <__divdf3+0x74c>
    1d44:	00478713          	addi	a4,a5,4
    1d48:	00f737b3          	sltu	a5,a4,a5
    1d4c:	00f585b3          	add	a1,a1,a5
    1d50:	00070793          	mv	a5,a4
    1d54:	00800737          	lui	a4,0x800
    1d58:	00e5f733          	and	a4,a1,a4
    1d5c:	06071863          	bnez	a4,1dcc <__divdf3+0x7c4>
    1d60:	01d59713          	slli	a4,a1,0x1d
    1d64:	0037d793          	srli	a5,a5,0x3
    1d68:	00f76733          	or	a4,a4,a5
    1d6c:	0035d593          	srli	a1,a1,0x3
    1d70:	00000793          	li	a5,0
    1d74:	ec1ff06f          	j	1c34 <__divdf3+0x62c>
    1d78:	fe100713          	li	a4,-31
    1d7c:	40f707b3          	sub	a5,a4,a5
    1d80:	02000693          	li	a3,32
    1d84:	00f9d7b3          	srl	a5,s3,a5
    1d88:	00000713          	li	a4,0
    1d8c:	00d58663          	beq	a1,a3,1d98 <__divdf3+0x790>
    1d90:	43e90713          	addi	a4,s2,1086
    1d94:	00e99733          	sll	a4,s3,a4
    1d98:	01076733          	or	a4,a4,a6
    1d9c:	00e03733          	snez	a4,a4
    1da0:	00e7e7b3          	or	a5,a5,a4
    1da4:	00000593          	li	a1,0
    1da8:	f89ff06f          	j	1d30 <__divdf3+0x728>
    1dac:	00000593          	li	a1,0
    1db0:	00000713          	li	a4,0
    1db4:	fbdff06f          	j	1d70 <__divdf3+0x768>
    1db8:	000805b7          	lui	a1,0x80
    1dbc:	00000713          	li	a4,0
    1dc0:	7ff00793          	li	a5,2047
    1dc4:	00000493          	li	s1,0
    1dc8:	e6dff06f          	j	1c34 <__divdf3+0x62c>
    1dcc:	00000593          	li	a1,0
    1dd0:	00000713          	li	a4,0
    1dd4:	00100793          	li	a5,1
    1dd8:	e5dff06f          	j	1c34 <__divdf3+0x62c>
    1ddc:	00080793          	mv	a5,a6
    1de0:	00078813          	mv	a6,a5
    1de4:	dedff06f          	j	1bd0 <__divdf3+0x5c8>

00001de8 <__gedf2>:
    1de8:	00100737          	lui	a4,0x100
    1dec:	fff70713          	addi	a4,a4,-1 # fffff <Seed+0xef3ef>
    1df0:	0145d813          	srli	a6,a1,0x14
    1df4:	00b778b3          	and	a7,a4,a1
    1df8:	00050793          	mv	a5,a0
    1dfc:	00050313          	mv	t1,a0
    1e00:	7ff87813          	andi	a6,a6,2047
    1e04:	01f5d513          	srli	a0,a1,0x1f
    1e08:	7ff00e93          	li	t4,2047
    1e0c:	0146d593          	srli	a1,a3,0x14
    1e10:	00d77733          	and	a4,a4,a3
    1e14:	00060e13          	mv	t3,a2
    1e18:	7ff5f593          	andi	a1,a1,2047
    1e1c:	01f6d693          	srli	a3,a3,0x1f
    1e20:	01d81a63          	bne	a6,t4,1e34 <__gedf2+0x4c>
    1e24:	00f8eeb3          	or	t4,a7,a5
    1e28:	080e8a63          	beqz	t4,1ebc <__gedf2+0xd4>
    1e2c:	ffe00513          	li	a0,-2
    1e30:	00008067          	ret
    1e34:	01d59663          	bne	a1,t4,1e40 <__gedf2+0x58>
    1e38:	00c76eb3          	or	t4,a4,a2
    1e3c:	fe0e98e3          	bnez	t4,1e2c <__gedf2+0x44>
    1e40:	08081063          	bnez	a6,1ec0 <__gedf2+0xd8>
    1e44:	00f8e7b3          	or	a5,a7,a5
    1e48:	0017b793          	seqz	a5,a5
    1e4c:	00059663          	bnez	a1,1e58 <__gedf2+0x70>
    1e50:	00c76633          	or	a2,a4,a2
    1e54:	04060c63          	beqz	a2,1eac <__gedf2+0xc4>
    1e58:	00079c63          	bnez	a5,1e70 <__gedf2+0x88>
    1e5c:	00d51463          	bne	a0,a3,1e64 <__gedf2+0x7c>
    1e60:	0305d063          	bge	a1,a6,1e80 <__gedf2+0x98>
    1e64:	04050063          	beqz	a0,1ea4 <__gedf2+0xbc>
    1e68:	fff00513          	li	a0,-1
    1e6c:	00008067          	ret
    1e70:	fff00513          	li	a0,-1
    1e74:	00068a63          	beqz	a3,1e88 <__gedf2+0xa0>
    1e78:	00068513          	mv	a0,a3
    1e7c:	00008067          	ret
    1e80:	00b85663          	bge	a6,a1,1e8c <__gedf2+0xa4>
    1e84:	fe0502e3          	beqz	a0,1e68 <__gedf2+0x80>
    1e88:	00008067          	ret
    1e8c:	fd176ce3          	bltu	a4,a7,1e64 <__gedf2+0x7c>
    1e90:	02e89263          	bne	a7,a4,1eb4 <__gedf2+0xcc>
    1e94:	fc6e68e3          	bltu	t3,t1,1e64 <__gedf2+0x7c>
    1e98:	ffc366e3          	bltu	t1,t3,1e84 <__gedf2+0x9c>
    1e9c:	00000513          	li	a0,0
    1ea0:	00008067          	ret
    1ea4:	00100513          	li	a0,1
    1ea8:	00008067          	ret
    1eac:	fe0798e3          	bnez	a5,1e9c <__gedf2+0xb4>
    1eb0:	fb5ff06f          	j	1e64 <__gedf2+0x7c>
    1eb4:	fce8e8e3          	bltu	a7,a4,1e84 <__gedf2+0x9c>
    1eb8:	fe5ff06f          	j	1e9c <__gedf2+0xb4>
    1ebc:	f7058ee3          	beq	a1,a6,1e38 <__gedf2+0x50>
    1ec0:	f8059ee3          	bnez	a1,1e5c <__gedf2+0x74>
    1ec4:	00000793          	li	a5,0
    1ec8:	f89ff06f          	j	1e50 <__gedf2+0x68>

00001ecc <__ledf2>:
    1ecc:	00100737          	lui	a4,0x100
    1ed0:	fff70713          	addi	a4,a4,-1 # fffff <Seed+0xef3ef>
    1ed4:	0145d813          	srli	a6,a1,0x14
    1ed8:	00b778b3          	and	a7,a4,a1
    1edc:	00050793          	mv	a5,a0
    1ee0:	00050313          	mv	t1,a0
    1ee4:	7ff87813          	andi	a6,a6,2047
    1ee8:	01f5d513          	srli	a0,a1,0x1f
    1eec:	7ff00e93          	li	t4,2047
    1ef0:	0146d593          	srli	a1,a3,0x14
    1ef4:	00d77733          	and	a4,a4,a3
    1ef8:	00060e13          	mv	t3,a2
    1efc:	7ff5f593          	andi	a1,a1,2047
    1f00:	01f6d693          	srli	a3,a3,0x1f
    1f04:	01d81a63          	bne	a6,t4,1f18 <__ledf2+0x4c>
    1f08:	00f8eeb3          	or	t4,a7,a5
    1f0c:	080e8a63          	beqz	t4,1fa0 <__ledf2+0xd4>
    1f10:	00200513          	li	a0,2
    1f14:	00008067          	ret
    1f18:	01d59663          	bne	a1,t4,1f24 <__ledf2+0x58>
    1f1c:	00c76eb3          	or	t4,a4,a2
    1f20:	fe0e98e3          	bnez	t4,1f10 <__ledf2+0x44>
    1f24:	08081063          	bnez	a6,1fa4 <__ledf2+0xd8>
    1f28:	00f8e7b3          	or	a5,a7,a5
    1f2c:	0017b793          	seqz	a5,a5
    1f30:	00059663          	bnez	a1,1f3c <__ledf2+0x70>
    1f34:	00c76633          	or	a2,a4,a2
    1f38:	04060c63          	beqz	a2,1f90 <__ledf2+0xc4>
    1f3c:	00079c63          	bnez	a5,1f54 <__ledf2+0x88>
    1f40:	00d51463          	bne	a0,a3,1f48 <__ledf2+0x7c>
    1f44:	0305d063          	bge	a1,a6,1f64 <__ledf2+0x98>
    1f48:	04050063          	beqz	a0,1f88 <__ledf2+0xbc>
    1f4c:	fff00513          	li	a0,-1
    1f50:	00008067          	ret
    1f54:	fff00513          	li	a0,-1
    1f58:	00068a63          	beqz	a3,1f6c <__ledf2+0xa0>
    1f5c:	00068513          	mv	a0,a3
    1f60:	00008067          	ret
    1f64:	00b85663          	bge	a6,a1,1f70 <__ledf2+0xa4>
    1f68:	fe0502e3          	beqz	a0,1f4c <__ledf2+0x80>
    1f6c:	00008067          	ret
    1f70:	fd176ce3          	bltu	a4,a7,1f48 <__ledf2+0x7c>
    1f74:	02e89263          	bne	a7,a4,1f98 <__ledf2+0xcc>
    1f78:	fc6e68e3          	bltu	t3,t1,1f48 <__ledf2+0x7c>
    1f7c:	ffc366e3          	bltu	t1,t3,1f68 <__ledf2+0x9c>
    1f80:	00000513          	li	a0,0
    1f84:	00008067          	ret
    1f88:	00100513          	li	a0,1
    1f8c:	00008067          	ret
    1f90:	fe0798e3          	bnez	a5,1f80 <__ledf2+0xb4>
    1f94:	fb5ff06f          	j	1f48 <__ledf2+0x7c>
    1f98:	fce8e8e3          	bltu	a7,a4,1f68 <__ledf2+0x9c>
    1f9c:	fe5ff06f          	j	1f80 <__ledf2+0xb4>
    1fa0:	f7058ee3          	beq	a1,a6,1f1c <__ledf2+0x50>
    1fa4:	f8059ee3          	bnez	a1,1f40 <__ledf2+0x74>
    1fa8:	00000793          	li	a5,0
    1fac:	f89ff06f          	j	1f34 <__ledf2+0x68>

00001fb0 <__muldf3>:
    1fb0:	fd010113          	addi	sp,sp,-48
    1fb4:	01312e23          	sw	s3,28(sp)
    1fb8:	0145d993          	srli	s3,a1,0x14
    1fbc:	02812423          	sw	s0,40(sp)
    1fc0:	02912223          	sw	s1,36(sp)
    1fc4:	01412c23          	sw	s4,24(sp)
    1fc8:	01512a23          	sw	s5,20(sp)
    1fcc:	01712623          	sw	s7,12(sp)
    1fd0:	00c59493          	slli	s1,a1,0xc
    1fd4:	02112623          	sw	ra,44(sp)
    1fd8:	03212023          	sw	s2,32(sp)
    1fdc:	01612823          	sw	s6,16(sp)
    1fe0:	7ff9f993          	andi	s3,s3,2047
    1fe4:	00050413          	mv	s0,a0
    1fe8:	00060b93          	mv	s7,a2
    1fec:	00068a13          	mv	s4,a3
    1ff0:	00c4d493          	srli	s1,s1,0xc
    1ff4:	01f5da93          	srli	s5,a1,0x1f
    1ff8:	3c098863          	beqz	s3,23c8 <__muldf3+0x418>
    1ffc:	7ff00793          	li	a5,2047
    2000:	42f98663          	beq	s3,a5,242c <__muldf3+0x47c>
    2004:	00349493          	slli	s1,s1,0x3
    2008:	01d55793          	srli	a5,a0,0x1d
    200c:	0097e7b3          	or	a5,a5,s1
    2010:	008004b7          	lui	s1,0x800
    2014:	0097e4b3          	or	s1,a5,s1
    2018:	00351913          	slli	s2,a0,0x3
    201c:	c0198993          	addi	s3,s3,-1023 # 7fc01 <Seed+0x6eff1>
    2020:	00000b13          	li	s6,0
    2024:	014a5713          	srli	a4,s4,0x14
    2028:	00ca1413          	slli	s0,s4,0xc
    202c:	7ff77713          	andi	a4,a4,2047
    2030:	00c45413          	srli	s0,s0,0xc
    2034:	01fa5a13          	srli	s4,s4,0x1f
    2038:	42070663          	beqz	a4,2464 <__muldf3+0x4b4>
    203c:	7ff00793          	li	a5,2047
    2040:	48f70663          	beq	a4,a5,24cc <__muldf3+0x51c>
    2044:	00341413          	slli	s0,s0,0x3
    2048:	01dbd793          	srli	a5,s7,0x1d
    204c:	0087e7b3          	or	a5,a5,s0
    2050:	00800437          	lui	s0,0x800
    2054:	0087e433          	or	s0,a5,s0
    2058:	c0170713          	addi	a4,a4,-1023
    205c:	003b9793          	slli	a5,s7,0x3
    2060:	00000613          	li	a2,0
    2064:	00e989b3          	add	s3,s3,a4
    2068:	002b1713          	slli	a4,s6,0x2
    206c:	00c76733          	or	a4,a4,a2
    2070:	00a00693          	li	a3,10
    2074:	014ac833          	xor	a6,s5,s4
    2078:	00198893          	addi	a7,s3,1
    207c:	4ce6c863          	blt	a3,a4,254c <__muldf3+0x59c>
    2080:	00200693          	li	a3,2
    2084:	48e6c063          	blt	a3,a4,2504 <__muldf3+0x554>
    2088:	fff70713          	addi	a4,a4,-1
    208c:	00100693          	li	a3,1
    2090:	48e6fc63          	bgeu	a3,a4,2528 <__muldf3+0x578>
    2094:	00010a37          	lui	s4,0x10
    2098:	fffa0393          	addi	t2,s4,-1 # ffff <main+0xcf6f>
    209c:	0107d293          	srli	t0,a5,0x10
    20a0:	00797e33          	and	t3,s2,t2
    20a4:	0077f7b3          	and	a5,a5,t2
    20a8:	01095f93          	srli	t6,s2,0x10
    20ac:	000e0513          	mv	a0,t3
    20b0:	00078593          	mv	a1,a5
    20b4:	6ad000ef          	jal	ra,2f60 <__mulsi3>
    20b8:	00050e93          	mv	t4,a0
    20bc:	00028593          	mv	a1,t0
    20c0:	000e0513          	mv	a0,t3
    20c4:	69d000ef          	jal	ra,2f60 <__mulsi3>
    20c8:	00050713          	mv	a4,a0
    20cc:	00078593          	mv	a1,a5
    20d0:	000f8513          	mv	a0,t6
    20d4:	68d000ef          	jal	ra,2f60 <__mulsi3>
    20d8:	00050913          	mv	s2,a0
    20dc:	00028593          	mv	a1,t0
    20e0:	000f8513          	mv	a0,t6
    20e4:	67d000ef          	jal	ra,2f60 <__mulsi3>
    20e8:	010ed313          	srli	t1,t4,0x10
    20ec:	01270733          	add	a4,a4,s2
    20f0:	00e30333          	add	t1,t1,a4
    20f4:	00050f13          	mv	t5,a0
    20f8:	01237463          	bgeu	t1,s2,2100 <__muldf3+0x150>
    20fc:	01450f33          	add	t5,a0,s4
    2100:	01035913          	srli	s2,t1,0x10
    2104:	00737333          	and	t1,t1,t2
    2108:	007efeb3          	and	t4,t4,t2
    210c:	01031313          	slli	t1,t1,0x10
    2110:	007473b3          	and	t2,s0,t2
    2114:	01d30333          	add	t1,t1,t4
    2118:	01045a13          	srli	s4,s0,0x10
    211c:	000e0513          	mv	a0,t3
    2120:	00038593          	mv	a1,t2
    2124:	63d000ef          	jal	ra,2f60 <__mulsi3>
    2128:	00050e93          	mv	t4,a0
    212c:	000a0593          	mv	a1,s4
    2130:	000e0513          	mv	a0,t3
    2134:	62d000ef          	jal	ra,2f60 <__mulsi3>
    2138:	00050e13          	mv	t3,a0
    213c:	00038593          	mv	a1,t2
    2140:	000f8513          	mv	a0,t6
    2144:	61d000ef          	jal	ra,2f60 <__mulsi3>
    2148:	00050413          	mv	s0,a0
    214c:	000a0593          	mv	a1,s4
    2150:	000f8513          	mv	a0,t6
    2154:	60d000ef          	jal	ra,2f60 <__mulsi3>
    2158:	010ed713          	srli	a4,t4,0x10
    215c:	008e0e33          	add	t3,t3,s0
    2160:	01c70733          	add	a4,a4,t3
    2164:	00050693          	mv	a3,a0
    2168:	00877663          	bgeu	a4,s0,2174 <__muldf3+0x1c4>
    216c:	00010637          	lui	a2,0x10
    2170:	00c506b3          	add	a3,a0,a2
    2174:	00010b37          	lui	s6,0x10
    2178:	fffb0e13          	addi	t3,s6,-1 # ffff <main+0xcf6f>
    217c:	01075f93          	srli	t6,a4,0x10
    2180:	01c77733          	and	a4,a4,t3
    2184:	01071713          	slli	a4,a4,0x10
    2188:	01cefeb3          	and	t4,t4,t3
    218c:	01d70eb3          	add	t4,a4,t4
    2190:	01c4fe33          	and	t3,s1,t3
    2194:	00df8fb3          	add	t6,t6,a3
    2198:	01d90933          	add	s2,s2,t4
    219c:	0104da93          	srli	s5,s1,0x10
    21a0:	000e0513          	mv	a0,t3
    21a4:	00078593          	mv	a1,a5
    21a8:	5b9000ef          	jal	ra,2f60 <__mulsi3>
    21ac:	00050413          	mv	s0,a0
    21b0:	00028593          	mv	a1,t0
    21b4:	000e0513          	mv	a0,t3
    21b8:	5a9000ef          	jal	ra,2f60 <__mulsi3>
    21bc:	00050493          	mv	s1,a0
    21c0:	00078593          	mv	a1,a5
    21c4:	000a8513          	mv	a0,s5
    21c8:	599000ef          	jal	ra,2f60 <__mulsi3>
    21cc:	00050b93          	mv	s7,a0
    21d0:	00028593          	mv	a1,t0
    21d4:	000a8513          	mv	a0,s5
    21d8:	589000ef          	jal	ra,2f60 <__mulsi3>
    21dc:	01045793          	srli	a5,s0,0x10
    21e0:	017484b3          	add	s1,s1,s7
    21e4:	009787b3          	add	a5,a5,s1
    21e8:	00050713          	mv	a4,a0
    21ec:	0177f463          	bgeu	a5,s7,21f4 <__muldf3+0x244>
    21f0:	01650733          	add	a4,a0,s6
    21f4:	000104b7          	lui	s1,0x10
    21f8:	fff48693          	addi	a3,s1,-1 # ffff <main+0xcf6f>
    21fc:	0107d293          	srli	t0,a5,0x10
    2200:	00e282b3          	add	t0,t0,a4
    2204:	00d7f733          	and	a4,a5,a3
    2208:	00d47433          	and	s0,s0,a3
    220c:	01071713          	slli	a4,a4,0x10
    2210:	00870733          	add	a4,a4,s0
    2214:	000e0513          	mv	a0,t3
    2218:	00038593          	mv	a1,t2
    221c:	545000ef          	jal	ra,2f60 <__mulsi3>
    2220:	00050413          	mv	s0,a0
    2224:	000a0593          	mv	a1,s4
    2228:	000e0513          	mv	a0,t3
    222c:	535000ef          	jal	ra,2f60 <__mulsi3>
    2230:	00050e13          	mv	t3,a0
    2234:	00038593          	mv	a1,t2
    2238:	000a8513          	mv	a0,s5
    223c:	525000ef          	jal	ra,2f60 <__mulsi3>
    2240:	00050393          	mv	t2,a0
    2244:	000a0593          	mv	a1,s4
    2248:	000a8513          	mv	a0,s5
    224c:	515000ef          	jal	ra,2f60 <__mulsi3>
    2250:	01045793          	srli	a5,s0,0x10
    2254:	007e0e33          	add	t3,t3,t2
    2258:	01c78e33          	add	t3,a5,t3
    225c:	00050593          	mv	a1,a0
    2260:	007e7463          	bgeu	t3,t2,2268 <__muldf3+0x2b8>
    2264:	009505b3          	add	a1,a0,s1
    2268:	000106b7          	lui	a3,0x10
    226c:	fff68693          	addi	a3,a3,-1 # ffff <main+0xcf6f>
    2270:	00de77b3          	and	a5,t3,a3
    2274:	00d47433          	and	s0,s0,a3
    2278:	01079793          	slli	a5,a5,0x10
    227c:	012f0f33          	add	t5,t5,s2
    2280:	008787b3          	add	a5,a5,s0
    2284:	01df3eb3          	sltu	t4,t5,t4
    2288:	01f787b3          	add	a5,a5,t6
    228c:	01d78533          	add	a0,a5,t4
    2290:	00ef0f33          	add	t5,t5,a4
    2294:	00ef3733          	sltu	a4,t5,a4
    2298:	005506b3          	add	a3,a0,t0
    229c:	00e68633          	add	a2,a3,a4
    22a0:	01f7b433          	sltu	s0,a5,t6
    22a4:	01d53533          	sltu	a0,a0,t4
    22a8:	010e5793          	srli	a5,t3,0x10
    22ac:	00e63733          	sltu	a4,a2,a4
    22b0:	00a46433          	or	s0,s0,a0
    22b4:	0056b6b3          	sltu	a3,a3,t0
    22b8:	00f40433          	add	s0,s0,a5
    22bc:	00e6e6b3          	or	a3,a3,a4
    22c0:	00d40433          	add	s0,s0,a3
    22c4:	00b40433          	add	s0,s0,a1
    22c8:	01765793          	srli	a5,a2,0x17
    22cc:	00941413          	slli	s0,s0,0x9
    22d0:	00f46433          	or	s0,s0,a5
    22d4:	009f1793          	slli	a5,t5,0x9
    22d8:	0067e7b3          	or	a5,a5,t1
    22dc:	00f037b3          	snez	a5,a5
    22e0:	017f5f13          	srli	t5,t5,0x17
    22e4:	00961713          	slli	a4,a2,0x9
    22e8:	01e7e7b3          	or	a5,a5,t5
    22ec:	00e7e7b3          	or	a5,a5,a4
    22f0:	01000737          	lui	a4,0x1000
    22f4:	00e47733          	and	a4,s0,a4
    22f8:	28070663          	beqz	a4,2584 <__muldf3+0x5d4>
    22fc:	0017d713          	srli	a4,a5,0x1
    2300:	0017f793          	andi	a5,a5,1
    2304:	00f76733          	or	a4,a4,a5
    2308:	01f41793          	slli	a5,s0,0x1f
    230c:	00f767b3          	or	a5,a4,a5
    2310:	00145413          	srli	s0,s0,0x1
    2314:	3ff88693          	addi	a3,a7,1023 # 8003ff <Seed+0x7ef7ef>
    2318:	26d05a63          	blez	a3,258c <__muldf3+0x5dc>
    231c:	0077f713          	andi	a4,a5,7
    2320:	02070063          	beqz	a4,2340 <__muldf3+0x390>
    2324:	00f7f713          	andi	a4,a5,15
    2328:	00400613          	li	a2,4
    232c:	00c70a63          	beq	a4,a2,2340 <__muldf3+0x390>
    2330:	00478713          	addi	a4,a5,4
    2334:	00f737b3          	sltu	a5,a4,a5
    2338:	00f40433          	add	s0,s0,a5
    233c:	00070793          	mv	a5,a4
    2340:	01000737          	lui	a4,0x1000
    2344:	00e47733          	and	a4,s0,a4
    2348:	00070a63          	beqz	a4,235c <__muldf3+0x3ac>
    234c:	ff000737          	lui	a4,0xff000
    2350:	fff70713          	addi	a4,a4,-1 # feffffff <Seed+0xfefef3ef>
    2354:	00e47433          	and	s0,s0,a4
    2358:	40088693          	addi	a3,a7,1024
    235c:	7fe00713          	li	a4,2046
    2360:	2ed74e63          	blt	a4,a3,265c <__muldf3+0x6ac>
    2364:	01d41713          	slli	a4,s0,0x1d
    2368:	0037d793          	srli	a5,a5,0x3
    236c:	00f76733          	or	a4,a4,a5
    2370:	00345413          	srli	s0,s0,0x3
    2374:	7ff007b7          	lui	a5,0x7ff00
    2378:	01469693          	slli	a3,a3,0x14
    237c:	00c41413          	slli	s0,s0,0xc
    2380:	00f6f6b3          	and	a3,a3,a5
    2384:	00c45413          	srli	s0,s0,0xc
    2388:	02c12083          	lw	ra,44(sp)
    238c:	0086e6b3          	or	a3,a3,s0
    2390:	02812403          	lw	s0,40(sp)
    2394:	01f81813          	slli	a6,a6,0x1f
    2398:	0106e7b3          	or	a5,a3,a6
    239c:	02412483          	lw	s1,36(sp)
    23a0:	02012903          	lw	s2,32(sp)
    23a4:	01c12983          	lw	s3,28(sp)
    23a8:	01812a03          	lw	s4,24(sp)
    23ac:	01412a83          	lw	s5,20(sp)
    23b0:	01012b03          	lw	s6,16(sp)
    23b4:	00c12b83          	lw	s7,12(sp)
    23b8:	00070513          	mv	a0,a4
    23bc:	00078593          	mv	a1,a5
    23c0:	03010113          	addi	sp,sp,48
    23c4:	00008067          	ret
    23c8:	00a4e933          	or	s2,s1,a0
    23cc:	06090c63          	beqz	s2,2444 <__muldf3+0x494>
    23d0:	04048063          	beqz	s1,2410 <__muldf3+0x460>
    23d4:	00048513          	mv	a0,s1
    23d8:	461000ef          	jal	ra,3038 <__clzsi2>
    23dc:	ff550713          	addi	a4,a0,-11
    23e0:	01c00793          	li	a5,28
    23e4:	02e7cc63          	blt	a5,a4,241c <__muldf3+0x46c>
    23e8:	01d00793          	li	a5,29
    23ec:	ff850913          	addi	s2,a0,-8
    23f0:	40e787b3          	sub	a5,a5,a4
    23f4:	012494b3          	sll	s1,s1,s2
    23f8:	00f457b3          	srl	a5,s0,a5
    23fc:	0097e4b3          	or	s1,a5,s1
    2400:	01241933          	sll	s2,s0,s2
    2404:	c0d00993          	li	s3,-1011
    2408:	40a989b3          	sub	s3,s3,a0
    240c:	c15ff06f          	j	2020 <__muldf3+0x70>
    2410:	429000ef          	jal	ra,3038 <__clzsi2>
    2414:	02050513          	addi	a0,a0,32
    2418:	fc5ff06f          	j	23dc <__muldf3+0x42c>
    241c:	fd850493          	addi	s1,a0,-40
    2420:	009414b3          	sll	s1,s0,s1
    2424:	00000913          	li	s2,0
    2428:	fddff06f          	j	2404 <__muldf3+0x454>
    242c:	00a4e933          	or	s2,s1,a0
    2430:	02090263          	beqz	s2,2454 <__muldf3+0x4a4>
    2434:	00050913          	mv	s2,a0
    2438:	7ff00993          	li	s3,2047
    243c:	00300b13          	li	s6,3
    2440:	be5ff06f          	j	2024 <__muldf3+0x74>
    2444:	00000493          	li	s1,0
    2448:	00000993          	li	s3,0
    244c:	00100b13          	li	s6,1
    2450:	bd5ff06f          	j	2024 <__muldf3+0x74>
    2454:	00000493          	li	s1,0
    2458:	7ff00993          	li	s3,2047
    245c:	00200b13          	li	s6,2
    2460:	bc5ff06f          	j	2024 <__muldf3+0x74>
    2464:	017467b3          	or	a5,s0,s7
    2468:	06078e63          	beqz	a5,24e4 <__muldf3+0x534>
    246c:	04040063          	beqz	s0,24ac <__muldf3+0x4fc>
    2470:	00040513          	mv	a0,s0
    2474:	3c5000ef          	jal	ra,3038 <__clzsi2>
    2478:	ff550693          	addi	a3,a0,-11
    247c:	01c00793          	li	a5,28
    2480:	02d7ce63          	blt	a5,a3,24bc <__muldf3+0x50c>
    2484:	01d00713          	li	a4,29
    2488:	ff850793          	addi	a5,a0,-8
    248c:	40d70733          	sub	a4,a4,a3
    2490:	00f41433          	sll	s0,s0,a5
    2494:	00ebd733          	srl	a4,s7,a4
    2498:	00876433          	or	s0,a4,s0
    249c:	00fb97b3          	sll	a5,s7,a5
    24a0:	c0d00713          	li	a4,-1011
    24a4:	40a70733          	sub	a4,a4,a0
    24a8:	bb9ff06f          	j	2060 <__muldf3+0xb0>
    24ac:	000b8513          	mv	a0,s7
    24b0:	389000ef          	jal	ra,3038 <__clzsi2>
    24b4:	02050513          	addi	a0,a0,32
    24b8:	fc1ff06f          	j	2478 <__muldf3+0x4c8>
    24bc:	fd850413          	addi	s0,a0,-40
    24c0:	008b9433          	sll	s0,s7,s0
    24c4:	00000793          	li	a5,0
    24c8:	fd9ff06f          	j	24a0 <__muldf3+0x4f0>
    24cc:	017467b3          	or	a5,s0,s7
    24d0:	02078263          	beqz	a5,24f4 <__muldf3+0x544>
    24d4:	000b8793          	mv	a5,s7
    24d8:	7ff00713          	li	a4,2047
    24dc:	00300613          	li	a2,3
    24e0:	b85ff06f          	j	2064 <__muldf3+0xb4>
    24e4:	00000413          	li	s0,0
    24e8:	00000713          	li	a4,0
    24ec:	00100613          	li	a2,1
    24f0:	b75ff06f          	j	2064 <__muldf3+0xb4>
    24f4:	00000413          	li	s0,0
    24f8:	7ff00713          	li	a4,2047
    24fc:	00200613          	li	a2,2
    2500:	b65ff06f          	j	2064 <__muldf3+0xb4>
    2504:	00100693          	li	a3,1
    2508:	00e696b3          	sll	a3,a3,a4
    250c:	5306f713          	andi	a4,a3,1328
    2510:	04071863          	bnez	a4,2560 <__muldf3+0x5b0>
    2514:	2406f593          	andi	a1,a3,576
    2518:	12059463          	bnez	a1,2640 <__muldf3+0x690>
    251c:	0886f693          	andi	a3,a3,136
    2520:	b6068ae3          	beqz	a3,2094 <__muldf3+0xe4>
    2524:	000a0813          	mv	a6,s4
    2528:	00200713          	li	a4,2
    252c:	12e60863          	beq	a2,a4,265c <__muldf3+0x6ac>
    2530:	00300713          	li	a4,3
    2534:	10e60e63          	beq	a2,a4,2650 <__muldf3+0x6a0>
    2538:	00100713          	li	a4,1
    253c:	dce61ce3          	bne	a2,a4,2314 <__muldf3+0x364>
    2540:	00000413          	li	s0,0
    2544:	00000713          	li	a4,0
    2548:	0bc0006f          	j	2604 <__muldf3+0x654>
    254c:	00f00693          	li	a3,15
    2550:	02d70063          	beq	a4,a3,2570 <__muldf3+0x5c0>
    2554:	00b00693          	li	a3,11
    2558:	fcd706e3          	beq	a4,a3,2524 <__muldf3+0x574>
    255c:	000a8813          	mv	a6,s5
    2560:	00048413          	mv	s0,s1
    2564:	00090793          	mv	a5,s2
    2568:	000b0613          	mv	a2,s6
    256c:	fbdff06f          	j	2528 <__muldf3+0x578>
    2570:	00080437          	lui	s0,0x80
    2574:	00000793          	li	a5,0
    2578:	00000813          	li	a6,0
    257c:	00300613          	li	a2,3
    2580:	fb1ff06f          	j	2530 <__muldf3+0x580>
    2584:	00098893          	mv	a7,s3
    2588:	d8dff06f          	j	2314 <__muldf3+0x364>
    258c:	00100613          	li	a2,1
    2590:	40d60633          	sub	a2,a2,a3
    2594:	03800713          	li	a4,56
    2598:	fac744e3          	blt	a4,a2,2540 <__muldf3+0x590>
    259c:	01f00713          	li	a4,31
    25a0:	06c74663          	blt	a4,a2,260c <__muldf3+0x65c>
    25a4:	41e88893          	addi	a7,a7,1054
    25a8:	01141733          	sll	a4,s0,a7
    25ac:	00c7d6b3          	srl	a3,a5,a2
    25b0:	011798b3          	sll	a7,a5,a7
    25b4:	00d76733          	or	a4,a4,a3
    25b8:	011038b3          	snez	a7,a7
    25bc:	011767b3          	or	a5,a4,a7
    25c0:	00c45433          	srl	s0,s0,a2
    25c4:	0077f713          	andi	a4,a5,7
    25c8:	02070063          	beqz	a4,25e8 <__muldf3+0x638>
    25cc:	00f7f713          	andi	a4,a5,15
    25d0:	00400693          	li	a3,4
    25d4:	00d70a63          	beq	a4,a3,25e8 <__muldf3+0x638>
    25d8:	00478713          	addi	a4,a5,4 # 7ff00004 <Seed+0x7feef3f4>
    25dc:	00f737b3          	sltu	a5,a4,a5
    25e0:	00f40433          	add	s0,s0,a5
    25e4:	00070793          	mv	a5,a4
    25e8:	00800737          	lui	a4,0x800
    25ec:	00e47733          	and	a4,s0,a4
    25f0:	06071e63          	bnez	a4,266c <__muldf3+0x6bc>
    25f4:	01d41713          	slli	a4,s0,0x1d
    25f8:	0037d793          	srli	a5,a5,0x3
    25fc:	00f76733          	or	a4,a4,a5
    2600:	00345413          	srli	s0,s0,0x3
    2604:	00000693          	li	a3,0
    2608:	d6dff06f          	j	2374 <__muldf3+0x3c4>
    260c:	fe100713          	li	a4,-31
    2610:	40d70733          	sub	a4,a4,a3
    2614:	02000593          	li	a1,32
    2618:	00e45733          	srl	a4,s0,a4
    261c:	00000693          	li	a3,0
    2620:	00b60663          	beq	a2,a1,262c <__muldf3+0x67c>
    2624:	43e88893          	addi	a7,a7,1086
    2628:	011416b3          	sll	a3,s0,a7
    262c:	00f6e6b3          	or	a3,a3,a5
    2630:	00d036b3          	snez	a3,a3
    2634:	00d767b3          	or	a5,a4,a3
    2638:	00000413          	li	s0,0
    263c:	f89ff06f          	j	25c4 <__muldf3+0x614>
    2640:	00080437          	lui	s0,0x80
    2644:	7ff00693          	li	a3,2047
    2648:	00000813          	li	a6,0
    264c:	d29ff06f          	j	2374 <__muldf3+0x3c4>
    2650:	00080437          	lui	s0,0x80
    2654:	00000713          	li	a4,0
    2658:	fedff06f          	j	2644 <__muldf3+0x694>
    265c:	00000413          	li	s0,0
    2660:	00000713          	li	a4,0
    2664:	7ff00693          	li	a3,2047
    2668:	d0dff06f          	j	2374 <__muldf3+0x3c4>
    266c:	00000413          	li	s0,0
    2670:	00000713          	li	a4,0
    2674:	00100693          	li	a3,1
    2678:	cfdff06f          	j	2374 <__muldf3+0x3c4>

0000267c <__subdf3>:
    267c:	00100837          	lui	a6,0x100
    2680:	fff80813          	addi	a6,a6,-1 # fffff <Seed+0xef3ef>
    2684:	fe010113          	addi	sp,sp,-32
    2688:	00b878b3          	and	a7,a6,a1
    268c:	0145d713          	srli	a4,a1,0x14
    2690:	01d55793          	srli	a5,a0,0x1d
    2694:	00d87833          	and	a6,a6,a3
    2698:	00812c23          	sw	s0,24(sp)
    269c:	7ff77413          	andi	s0,a4,2047
    26a0:	00389713          	slli	a4,a7,0x3
    26a4:	0146d893          	srli	a7,a3,0x14
    26a8:	00912a23          	sw	s1,20(sp)
    26ac:	00e7e7b3          	or	a5,a5,a4
    26b0:	01f5d493          	srli	s1,a1,0x1f
    26b4:	01d65713          	srli	a4,a2,0x1d
    26b8:	00381813          	slli	a6,a6,0x3
    26bc:	00112e23          	sw	ra,28(sp)
    26c0:	01212823          	sw	s2,16(sp)
    26c4:	01312623          	sw	s3,12(sp)
    26c8:	7ff8f893          	andi	a7,a7,2047
    26cc:	7ff00593          	li	a1,2047
    26d0:	00351513          	slli	a0,a0,0x3
    26d4:	01f6d693          	srli	a3,a3,0x1f
    26d8:	01076733          	or	a4,a4,a6
    26dc:	00361613          	slli	a2,a2,0x3
    26e0:	00b89663          	bne	a7,a1,26ec <__subdf3+0x70>
    26e4:	00c765b3          	or	a1,a4,a2
    26e8:	00059463          	bnez	a1,26f0 <__subdf3+0x74>
    26ec:	0016c693          	xori	a3,a3,1
    26f0:	41140833          	sub	a6,s0,a7
    26f4:	2c969863          	bne	a3,s1,29c4 <__subdf3+0x348>
    26f8:	13005063          	blez	a6,2818 <__subdf3+0x19c>
    26fc:	04089063          	bnez	a7,273c <__subdf3+0xc0>
    2700:	00c766b3          	or	a3,a4,a2
    2704:	70068e63          	beqz	a3,2e20 <__subdf3+0x7a4>
    2708:	fff80593          	addi	a1,a6,-1
    270c:	02059063          	bnez	a1,272c <__subdf3+0xb0>
    2710:	00c50633          	add	a2,a0,a2
    2714:	00e78733          	add	a4,a5,a4
    2718:	00a637b3          	sltu	a5,a2,a0
    271c:	00f707b3          	add	a5,a4,a5
    2720:	00060513          	mv	a0,a2
    2724:	00100413          	li	s0,1
    2728:	0700006f          	j	2798 <__subdf3+0x11c>
    272c:	7ff00693          	li	a3,2047
    2730:	02d81063          	bne	a6,a3,2750 <__subdf3+0xd4>
    2734:	7ff00413          	li	s0,2047
    2738:	2140006f          	j	294c <__subdf3+0x2d0>
    273c:	7ff00693          	li	a3,2047
    2740:	20d40663          	beq	s0,a3,294c <__subdf3+0x2d0>
    2744:	008006b7          	lui	a3,0x800
    2748:	00d76733          	or	a4,a4,a3
    274c:	00080593          	mv	a1,a6
    2750:	03800693          	li	a3,56
    2754:	0ab6cc63          	blt	a3,a1,280c <__subdf3+0x190>
    2758:	01f00693          	li	a3,31
    275c:	06b6ce63          	blt	a3,a1,27d8 <__subdf3+0x15c>
    2760:	02000813          	li	a6,32
    2764:	40b80833          	sub	a6,a6,a1
    2768:	010716b3          	sll	a3,a4,a6
    276c:	00b658b3          	srl	a7,a2,a1
    2770:	01061833          	sll	a6,a2,a6
    2774:	0116e6b3          	or	a3,a3,a7
    2778:	01003833          	snez	a6,a6
    277c:	0106e6b3          	or	a3,a3,a6
    2780:	00b755b3          	srl	a1,a4,a1
    2784:	00a686b3          	add	a3,a3,a0
    2788:	00f585b3          	add	a1,a1,a5
    278c:	00a6b7b3          	sltu	a5,a3,a0
    2790:	00f587b3          	add	a5,a1,a5
    2794:	00068513          	mv	a0,a3
    2798:	00800737          	lui	a4,0x800
    279c:	00e7f733          	and	a4,a5,a4
    27a0:	1a070663          	beqz	a4,294c <__subdf3+0x2d0>
    27a4:	00140413          	addi	s0,s0,1 # 80001 <Seed+0x6f3f1>
    27a8:	7ff00713          	li	a4,2047
    27ac:	5ce40a63          	beq	s0,a4,2d80 <__subdf3+0x704>
    27b0:	ff800737          	lui	a4,0xff800
    27b4:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    27b8:	00e7f7b3          	and	a5,a5,a4
    27bc:	00155713          	srli	a4,a0,0x1
    27c0:	00157513          	andi	a0,a0,1
    27c4:	00a76733          	or	a4,a4,a0
    27c8:	01f79513          	slli	a0,a5,0x1f
    27cc:	00e56533          	or	a0,a0,a4
    27d0:	0017d793          	srli	a5,a5,0x1
    27d4:	1780006f          	j	294c <__subdf3+0x2d0>
    27d8:	fe058693          	addi	a3,a1,-32 # 7ffe0 <Seed+0x6f3d0>
    27dc:	02000893          	li	a7,32
    27e0:	00d756b3          	srl	a3,a4,a3
    27e4:	00000813          	li	a6,0
    27e8:	01158863          	beq	a1,a7,27f8 <__subdf3+0x17c>
    27ec:	04000813          	li	a6,64
    27f0:	40b80833          	sub	a6,a6,a1
    27f4:	01071833          	sll	a6,a4,a6
    27f8:	00c86833          	or	a6,a6,a2
    27fc:	01003833          	snez	a6,a6
    2800:	0106e6b3          	or	a3,a3,a6
    2804:	00000593          	li	a1,0
    2808:	f7dff06f          	j	2784 <__subdf3+0x108>
    280c:	00c766b3          	or	a3,a4,a2
    2810:	00d036b3          	snez	a3,a3
    2814:	ff1ff06f          	j	2804 <__subdf3+0x188>
    2818:	0e080263          	beqz	a6,28fc <__subdf3+0x280>
    281c:	408885b3          	sub	a1,a7,s0
    2820:	02041e63          	bnez	s0,285c <__subdf3+0x1e0>
    2824:	00a7e6b3          	or	a3,a5,a0
    2828:	52068c63          	beqz	a3,2d60 <__subdf3+0x6e4>
    282c:	fff58693          	addi	a3,a1,-1
    2830:	00069c63          	bnez	a3,2848 <__subdf3+0x1cc>
    2834:	00c50533          	add	a0,a0,a2
    2838:	00e78733          	add	a4,a5,a4
    283c:	00c53633          	sltu	a2,a0,a2
    2840:	00c707b3          	add	a5,a4,a2
    2844:	ee1ff06f          	j	2724 <__subdf3+0xa8>
    2848:	7ff00813          	li	a6,2047
    284c:	03059263          	bne	a1,a6,2870 <__subdf3+0x1f4>
    2850:	00070793          	mv	a5,a4
    2854:	00060513          	mv	a0,a2
    2858:	eddff06f          	j	2734 <__subdf3+0xb8>
    285c:	7ff00693          	li	a3,2047
    2860:	fed888e3          	beq	a7,a3,2850 <__subdf3+0x1d4>
    2864:	008006b7          	lui	a3,0x800
    2868:	00d7e7b3          	or	a5,a5,a3
    286c:	00058693          	mv	a3,a1
    2870:	03800593          	li	a1,56
    2874:	06d5ce63          	blt	a1,a3,28f0 <__subdf3+0x274>
    2878:	01f00593          	li	a1,31
    287c:	04d5c063          	blt	a1,a3,28bc <__subdf3+0x240>
    2880:	02000813          	li	a6,32
    2884:	40d80833          	sub	a6,a6,a3
    2888:	010795b3          	sll	a1,a5,a6
    288c:	00d55333          	srl	t1,a0,a3
    2890:	01051833          	sll	a6,a0,a6
    2894:	0065e5b3          	or	a1,a1,t1
    2898:	01003833          	snez	a6,a6
    289c:	0105e5b3          	or	a1,a1,a6
    28a0:	00d7d6b3          	srl	a3,a5,a3
    28a4:	00c58533          	add	a0,a1,a2
    28a8:	00e686b3          	add	a3,a3,a4
    28ac:	00c53633          	sltu	a2,a0,a2
    28b0:	00c687b3          	add	a5,a3,a2
    28b4:	00088413          	mv	s0,a7
    28b8:	ee1ff06f          	j	2798 <__subdf3+0x11c>
    28bc:	fe068593          	addi	a1,a3,-32 # 7fffe0 <Seed+0x7ef3d0>
    28c0:	02000313          	li	t1,32
    28c4:	00b7d5b3          	srl	a1,a5,a1
    28c8:	00000813          	li	a6,0
    28cc:	00668863          	beq	a3,t1,28dc <__subdf3+0x260>
    28d0:	04000813          	li	a6,64
    28d4:	40d80833          	sub	a6,a6,a3
    28d8:	01079833          	sll	a6,a5,a6
    28dc:	00a86833          	or	a6,a6,a0
    28e0:	01003833          	snez	a6,a6
    28e4:	0105e5b3          	or	a1,a1,a6
    28e8:	00000693          	li	a3,0
    28ec:	fb9ff06f          	j	28a4 <__subdf3+0x228>
    28f0:	00a7e5b3          	or	a1,a5,a0
    28f4:	00b035b3          	snez	a1,a1
    28f8:	ff1ff06f          	j	28e8 <__subdf3+0x26c>
    28fc:	00140693          	addi	a3,s0,1
    2900:	7fe6f593          	andi	a1,a3,2046
    2904:	08059863          	bnez	a1,2994 <__subdf3+0x318>
    2908:	00a7e6b3          	or	a3,a5,a0
    290c:	06041463          	bnez	s0,2974 <__subdf3+0x2f8>
    2910:	46068063          	beqz	a3,2d70 <__subdf3+0x6f4>
    2914:	00c766b3          	or	a3,a4,a2
    2918:	02068a63          	beqz	a3,294c <__subdf3+0x2d0>
    291c:	00c50633          	add	a2,a0,a2
    2920:	00e78733          	add	a4,a5,a4
    2924:	00a637b3          	sltu	a5,a2,a0
    2928:	00f707b3          	add	a5,a4,a5
    292c:	00800737          	lui	a4,0x800
    2930:	00e7f733          	and	a4,a5,a4
    2934:	00060513          	mv	a0,a2
    2938:	00070a63          	beqz	a4,294c <__subdf3+0x2d0>
    293c:	ff800737          	lui	a4,0xff800
    2940:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    2944:	00e7f7b3          	and	a5,a5,a4
    2948:	00100413          	li	s0,1
    294c:	00757713          	andi	a4,a0,7
    2950:	42070c63          	beqz	a4,2d88 <__subdf3+0x70c>
    2954:	00f57713          	andi	a4,a0,15
    2958:	00400693          	li	a3,4
    295c:	42d70663          	beq	a4,a3,2d88 <__subdf3+0x70c>
    2960:	00450713          	addi	a4,a0,4
    2964:	00a73533          	sltu	a0,a4,a0
    2968:	00a787b3          	add	a5,a5,a0
    296c:	00070513          	mv	a0,a4
    2970:	4180006f          	j	2d88 <__subdf3+0x70c>
    2974:	ec068ee3          	beqz	a3,2850 <__subdf3+0x1d4>
    2978:	00c76733          	or	a4,a4,a2
    297c:	da070ce3          	beqz	a4,2734 <__subdf3+0xb8>
    2980:	00000493          	li	s1,0
    2984:	004007b7          	lui	a5,0x400
    2988:	00000513          	li	a0,0
    298c:	7ff00413          	li	s0,2047
    2990:	3f80006f          	j	2d88 <__subdf3+0x70c>
    2994:	7ff00593          	li	a1,2047
    2998:	3eb68263          	beq	a3,a1,2d7c <__subdf3+0x700>
    299c:	00c50633          	add	a2,a0,a2
    29a0:	00a63533          	sltu	a0,a2,a0
    29a4:	00e78733          	add	a4,a5,a4
    29a8:	00a70733          	add	a4,a4,a0
    29ac:	01f71513          	slli	a0,a4,0x1f
    29b0:	00165613          	srli	a2,a2,0x1
    29b4:	00c56533          	or	a0,a0,a2
    29b8:	00175793          	srli	a5,a4,0x1
    29bc:	00068413          	mv	s0,a3
    29c0:	f8dff06f          	j	294c <__subdf3+0x2d0>
    29c4:	0f005c63          	blez	a6,2abc <__subdf3+0x440>
    29c8:	08089e63          	bnez	a7,2a64 <__subdf3+0x3e8>
    29cc:	00c766b3          	or	a3,a4,a2
    29d0:	44068863          	beqz	a3,2e20 <__subdf3+0x7a4>
    29d4:	fff80593          	addi	a1,a6,-1
    29d8:	02059063          	bnez	a1,29f8 <__subdf3+0x37c>
    29dc:	40c50633          	sub	a2,a0,a2
    29e0:	40e78733          	sub	a4,a5,a4
    29e4:	00c537b3          	sltu	a5,a0,a2
    29e8:	40f707b3          	sub	a5,a4,a5
    29ec:	00060513          	mv	a0,a2
    29f0:	00100413          	li	s0,1
    29f4:	0540006f          	j	2a48 <__subdf3+0x3cc>
    29f8:	7ff00693          	li	a3,2047
    29fc:	d2d80ce3          	beq	a6,a3,2734 <__subdf3+0xb8>
    2a00:	03800693          	li	a3,56
    2a04:	0ab6c663          	blt	a3,a1,2ab0 <__subdf3+0x434>
    2a08:	01f00693          	li	a3,31
    2a0c:	06b6c863          	blt	a3,a1,2a7c <__subdf3+0x400>
    2a10:	02000813          	li	a6,32
    2a14:	40b80833          	sub	a6,a6,a1
    2a18:	010716b3          	sll	a3,a4,a6
    2a1c:	00b658b3          	srl	a7,a2,a1
    2a20:	01061833          	sll	a6,a2,a6
    2a24:	0116e6b3          	or	a3,a3,a7
    2a28:	01003833          	snez	a6,a6
    2a2c:	0106e6b3          	or	a3,a3,a6
    2a30:	00b755b3          	srl	a1,a4,a1
    2a34:	40d506b3          	sub	a3,a0,a3
    2a38:	40b785b3          	sub	a1,a5,a1
    2a3c:	00d537b3          	sltu	a5,a0,a3
    2a40:	40f587b3          	sub	a5,a1,a5
    2a44:	00068513          	mv	a0,a3
    2a48:	00800937          	lui	s2,0x800
    2a4c:	0127f733          	and	a4,a5,s2
    2a50:	ee070ee3          	beqz	a4,294c <__subdf3+0x2d0>
    2a54:	fff90913          	addi	s2,s2,-1 # 7fffff <Seed+0x7ef3ef>
    2a58:	0127f933          	and	s2,a5,s2
    2a5c:	00050993          	mv	s3,a0
    2a60:	2140006f          	j	2c74 <__subdf3+0x5f8>
    2a64:	7ff00693          	li	a3,2047
    2a68:	eed402e3          	beq	s0,a3,294c <__subdf3+0x2d0>
    2a6c:	008006b7          	lui	a3,0x800
    2a70:	00d76733          	or	a4,a4,a3
    2a74:	00080593          	mv	a1,a6
    2a78:	f89ff06f          	j	2a00 <__subdf3+0x384>
    2a7c:	fe058693          	addi	a3,a1,-32
    2a80:	02000893          	li	a7,32
    2a84:	00d756b3          	srl	a3,a4,a3
    2a88:	00000813          	li	a6,0
    2a8c:	01158863          	beq	a1,a7,2a9c <__subdf3+0x420>
    2a90:	04000813          	li	a6,64
    2a94:	40b80833          	sub	a6,a6,a1
    2a98:	01071833          	sll	a6,a4,a6
    2a9c:	00c86833          	or	a6,a6,a2
    2aa0:	01003833          	snez	a6,a6
    2aa4:	0106e6b3          	or	a3,a3,a6
    2aa8:	00000593          	li	a1,0
    2aac:	f89ff06f          	j	2a34 <__subdf3+0x3b8>
    2ab0:	00c766b3          	or	a3,a4,a2
    2ab4:	00d036b3          	snez	a3,a3
    2ab8:	ff1ff06f          	j	2aa8 <__subdf3+0x42c>
    2abc:	0e080863          	beqz	a6,2bac <__subdf3+0x530>
    2ac0:	40888833          	sub	a6,a7,s0
    2ac4:	04041263          	bnez	s0,2b08 <__subdf3+0x48c>
    2ac8:	00a7e5b3          	or	a1,a5,a0
    2acc:	34058e63          	beqz	a1,2e28 <__subdf3+0x7ac>
    2ad0:	fff80593          	addi	a1,a6,-1
    2ad4:	00059e63          	bnez	a1,2af0 <__subdf3+0x474>
    2ad8:	40a60533          	sub	a0,a2,a0
    2adc:	40f70733          	sub	a4,a4,a5
    2ae0:	00a63633          	sltu	a2,a2,a0
    2ae4:	40c707b3          	sub	a5,a4,a2
    2ae8:	00068493          	mv	s1,a3
    2aec:	f05ff06f          	j	29f0 <__subdf3+0x374>
    2af0:	7ff00313          	li	t1,2047
    2af4:	02681463          	bne	a6,t1,2b1c <__subdf3+0x4a0>
    2af8:	00070793          	mv	a5,a4
    2afc:	00060513          	mv	a0,a2
    2b00:	7ff00413          	li	s0,2047
    2b04:	0d00006f          	j	2bd4 <__subdf3+0x558>
    2b08:	7ff00593          	li	a1,2047
    2b0c:	feb886e3          	beq	a7,a1,2af8 <__subdf3+0x47c>
    2b10:	008005b7          	lui	a1,0x800
    2b14:	00b7e7b3          	or	a5,a5,a1
    2b18:	00080593          	mv	a1,a6
    2b1c:	03800813          	li	a6,56
    2b20:	08b84063          	blt	a6,a1,2ba0 <__subdf3+0x524>
    2b24:	01f00813          	li	a6,31
    2b28:	04b84263          	blt	a6,a1,2b6c <__subdf3+0x4f0>
    2b2c:	02000313          	li	t1,32
    2b30:	40b30333          	sub	t1,t1,a1
    2b34:	00b55e33          	srl	t3,a0,a1
    2b38:	00679833          	sll	a6,a5,t1
    2b3c:	00651333          	sll	t1,a0,t1
    2b40:	01c86833          	or	a6,a6,t3
    2b44:	00603333          	snez	t1,t1
    2b48:	00686533          	or	a0,a6,t1
    2b4c:	00b7d5b3          	srl	a1,a5,a1
    2b50:	40a60533          	sub	a0,a2,a0
    2b54:	40b705b3          	sub	a1,a4,a1
    2b58:	00a63633          	sltu	a2,a2,a0
    2b5c:	40c587b3          	sub	a5,a1,a2
    2b60:	00088413          	mv	s0,a7
    2b64:	00068493          	mv	s1,a3
    2b68:	ee1ff06f          	j	2a48 <__subdf3+0x3cc>
    2b6c:	fe058813          	addi	a6,a1,-32 # 7fffe0 <Seed+0x7ef3d0>
    2b70:	02000e13          	li	t3,32
    2b74:	0107d833          	srl	a6,a5,a6
    2b78:	00000313          	li	t1,0
    2b7c:	01c58863          	beq	a1,t3,2b8c <__subdf3+0x510>
    2b80:	04000313          	li	t1,64
    2b84:	40b30333          	sub	t1,t1,a1
    2b88:	00679333          	sll	t1,a5,t1
    2b8c:	00a36333          	or	t1,t1,a0
    2b90:	00603333          	snez	t1,t1
    2b94:	00686533          	or	a0,a6,t1
    2b98:	00000593          	li	a1,0
    2b9c:	fb5ff06f          	j	2b50 <__subdf3+0x4d4>
    2ba0:	00a7e533          	or	a0,a5,a0
    2ba4:	00a03533          	snez	a0,a0
    2ba8:	ff1ff06f          	j	2b98 <__subdf3+0x51c>
    2bac:	00140593          	addi	a1,s0,1
    2bb0:	7fe5f593          	andi	a1,a1,2046
    2bb4:	08059863          	bnez	a1,2c44 <__subdf3+0x5c8>
    2bb8:	00c765b3          	or	a1,a4,a2
    2bbc:	00a7e833          	or	a6,a5,a0
    2bc0:	06041263          	bnez	s0,2c24 <__subdf3+0x5a8>
    2bc4:	00081c63          	bnez	a6,2bdc <__subdf3+0x560>
    2bc8:	26058863          	beqz	a1,2e38 <__subdf3+0x7bc>
    2bcc:	00070793          	mv	a5,a4
    2bd0:	00060513          	mv	a0,a2
    2bd4:	00068493          	mv	s1,a3
    2bd8:	d75ff06f          	j	294c <__subdf3+0x2d0>
    2bdc:	d60588e3          	beqz	a1,294c <__subdf3+0x2d0>
    2be0:	40c50833          	sub	a6,a0,a2
    2be4:	010538b3          	sltu	a7,a0,a6
    2be8:	40e785b3          	sub	a1,a5,a4
    2bec:	411585b3          	sub	a1,a1,a7
    2bf0:	008008b7          	lui	a7,0x800
    2bf4:	0115f8b3          	and	a7,a1,a7
    2bf8:	00088c63          	beqz	a7,2c10 <__subdf3+0x594>
    2bfc:	40a60533          	sub	a0,a2,a0
    2c00:	40f70733          	sub	a4,a4,a5
    2c04:	00a63633          	sltu	a2,a2,a0
    2c08:	40c707b3          	sub	a5,a4,a2
    2c0c:	fc9ff06f          	j	2bd4 <__subdf3+0x558>
    2c10:	00b86533          	or	a0,a6,a1
    2c14:	22050a63          	beqz	a0,2e48 <__subdf3+0x7cc>
    2c18:	00058793          	mv	a5,a1
    2c1c:	00080513          	mv	a0,a6
    2c20:	d2dff06f          	j	294c <__subdf3+0x2d0>
    2c24:	00081c63          	bnez	a6,2c3c <__subdf3+0x5c0>
    2c28:	22058463          	beqz	a1,2e50 <__subdf3+0x7d4>
    2c2c:	00070793          	mv	a5,a4
    2c30:	00060513          	mv	a0,a2
    2c34:	00068493          	mv	s1,a3
    2c38:	afdff06f          	j	2734 <__subdf3+0xb8>
    2c3c:	ae058ce3          	beqz	a1,2734 <__subdf3+0xb8>
    2c40:	d41ff06f          	j	2980 <__subdf3+0x304>
    2c44:	40c509b3          	sub	s3,a0,a2
    2c48:	013535b3          	sltu	a1,a0,s3
    2c4c:	40e78933          	sub	s2,a5,a4
    2c50:	40b90933          	sub	s2,s2,a1
    2c54:	008005b7          	lui	a1,0x800
    2c58:	00b975b3          	and	a1,s2,a1
    2c5c:	08058463          	beqz	a1,2ce4 <__subdf3+0x668>
    2c60:	40a609b3          	sub	s3,a2,a0
    2c64:	40f70933          	sub	s2,a4,a5
    2c68:	01363633          	sltu	a2,a2,s3
    2c6c:	40c90933          	sub	s2,s2,a2
    2c70:	00068493          	mv	s1,a3
    2c74:	08090263          	beqz	s2,2cf8 <__subdf3+0x67c>
    2c78:	00090513          	mv	a0,s2
    2c7c:	3bc000ef          	jal	ra,3038 <__clzsi2>
    2c80:	ff850713          	addi	a4,a0,-8
    2c84:	01f00793          	li	a5,31
    2c88:	08e7c063          	blt	a5,a4,2d08 <__subdf3+0x68c>
    2c8c:	02000793          	li	a5,32
    2c90:	40e787b3          	sub	a5,a5,a4
    2c94:	00e91933          	sll	s2,s2,a4
    2c98:	00f9d7b3          	srl	a5,s3,a5
    2c9c:	0127e7b3          	or	a5,a5,s2
    2ca0:	00e99533          	sll	a0,s3,a4
    2ca4:	0a874463          	blt	a4,s0,2d4c <__subdf3+0x6d0>
    2ca8:	40870733          	sub	a4,a4,s0
    2cac:	00170613          	addi	a2,a4,1
    2cb0:	01f00693          	li	a3,31
    2cb4:	06c6c263          	blt	a3,a2,2d18 <__subdf3+0x69c>
    2cb8:	02000713          	li	a4,32
    2cbc:	40c70733          	sub	a4,a4,a2
    2cc0:	00e796b3          	sll	a3,a5,a4
    2cc4:	00c555b3          	srl	a1,a0,a2
    2cc8:	00e51733          	sll	a4,a0,a4
    2ccc:	00b6e6b3          	or	a3,a3,a1
    2cd0:	00e03733          	snez	a4,a4
    2cd4:	00e6e533          	or	a0,a3,a4
    2cd8:	00c7d7b3          	srl	a5,a5,a2
    2cdc:	00000413          	li	s0,0
    2ce0:	c6dff06f          	j	294c <__subdf3+0x2d0>
    2ce4:	0129e533          	or	a0,s3,s2
    2ce8:	f80516e3          	bnez	a0,2c74 <__subdf3+0x5f8>
    2cec:	00000793          	li	a5,0
    2cf0:	00000413          	li	s0,0
    2cf4:	14c0006f          	j	2e40 <__subdf3+0x7c4>
    2cf8:	00098513          	mv	a0,s3
    2cfc:	33c000ef          	jal	ra,3038 <__clzsi2>
    2d00:	02050513          	addi	a0,a0,32
    2d04:	f7dff06f          	j	2c80 <__subdf3+0x604>
    2d08:	fd850793          	addi	a5,a0,-40
    2d0c:	00f997b3          	sll	a5,s3,a5
    2d10:	00000513          	li	a0,0
    2d14:	f91ff06f          	j	2ca4 <__subdf3+0x628>
    2d18:	fe170713          	addi	a4,a4,-31
    2d1c:	02000593          	li	a1,32
    2d20:	00e7d733          	srl	a4,a5,a4
    2d24:	00000693          	li	a3,0
    2d28:	00b60863          	beq	a2,a1,2d38 <__subdf3+0x6bc>
    2d2c:	04000693          	li	a3,64
    2d30:	40c686b3          	sub	a3,a3,a2
    2d34:	00d796b3          	sll	a3,a5,a3
    2d38:	00d566b3          	or	a3,a0,a3
    2d3c:	00d036b3          	snez	a3,a3
    2d40:	00d76533          	or	a0,a4,a3
    2d44:	00000793          	li	a5,0
    2d48:	f95ff06f          	j	2cdc <__subdf3+0x660>
    2d4c:	40e40433          	sub	s0,s0,a4
    2d50:	ff800737          	lui	a4,0xff800
    2d54:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    2d58:	00e7f7b3          	and	a5,a5,a4
    2d5c:	bf1ff06f          	j	294c <__subdf3+0x2d0>
    2d60:	00070793          	mv	a5,a4
    2d64:	00060513          	mv	a0,a2
    2d68:	00058413          	mv	s0,a1
    2d6c:	be1ff06f          	j	294c <__subdf3+0x2d0>
    2d70:	00070793          	mv	a5,a4
    2d74:	00060513          	mv	a0,a2
    2d78:	bd5ff06f          	j	294c <__subdf3+0x2d0>
    2d7c:	7ff00413          	li	s0,2047
    2d80:	00000793          	li	a5,0
    2d84:	00000513          	li	a0,0
    2d88:	00800737          	lui	a4,0x800
    2d8c:	00e7f733          	and	a4,a5,a4
    2d90:	00070e63          	beqz	a4,2dac <__subdf3+0x730>
    2d94:	00140413          	addi	s0,s0,1
    2d98:	7ff00713          	li	a4,2047
    2d9c:	0ce40263          	beq	s0,a4,2e60 <__subdf3+0x7e4>
    2da0:	ff800737          	lui	a4,0xff800
    2da4:	fff70713          	addi	a4,a4,-1 # ff7fffff <Seed+0xff7ef3ef>
    2da8:	00e7f7b3          	and	a5,a5,a4
    2dac:	01d79693          	slli	a3,a5,0x1d
    2db0:	00355513          	srli	a0,a0,0x3
    2db4:	7ff00713          	li	a4,2047
    2db8:	00a6e6b3          	or	a3,a3,a0
    2dbc:	0037d793          	srli	a5,a5,0x3
    2dc0:	00e41e63          	bne	s0,a4,2ddc <__subdf3+0x760>
    2dc4:	00f6e6b3          	or	a3,a3,a5
    2dc8:	00000793          	li	a5,0
    2dcc:	00068863          	beqz	a3,2ddc <__subdf3+0x760>
    2dd0:	000807b7          	lui	a5,0x80
    2dd4:	00000693          	li	a3,0
    2dd8:	00000493          	li	s1,0
    2ddc:	01441713          	slli	a4,s0,0x14
    2de0:	7ff00637          	lui	a2,0x7ff00
    2de4:	00c79793          	slli	a5,a5,0xc
    2de8:	01c12083          	lw	ra,28(sp)
    2dec:	01812403          	lw	s0,24(sp)
    2df0:	00c77733          	and	a4,a4,a2
    2df4:	00c7d793          	srli	a5,a5,0xc
    2df8:	01f49493          	slli	s1,s1,0x1f
    2dfc:	00f767b3          	or	a5,a4,a5
    2e00:	0097e733          	or	a4,a5,s1
    2e04:	01012903          	lw	s2,16(sp)
    2e08:	01412483          	lw	s1,20(sp)
    2e0c:	00c12983          	lw	s3,12(sp)
    2e10:	00068513          	mv	a0,a3
    2e14:	00070593          	mv	a1,a4
    2e18:	02010113          	addi	sp,sp,32
    2e1c:	00008067          	ret
    2e20:	00080413          	mv	s0,a6
    2e24:	b29ff06f          	j	294c <__subdf3+0x2d0>
    2e28:	00070793          	mv	a5,a4
    2e2c:	00060513          	mv	a0,a2
    2e30:	00080413          	mv	s0,a6
    2e34:	da1ff06f          	j	2bd4 <__subdf3+0x558>
    2e38:	00000793          	li	a5,0
    2e3c:	00000513          	li	a0,0
    2e40:	00000493          	li	s1,0
    2e44:	f45ff06f          	j	2d88 <__subdf3+0x70c>
    2e48:	00000793          	li	a5,0
    2e4c:	ff5ff06f          	j	2e40 <__subdf3+0x7c4>
    2e50:	00000513          	li	a0,0
    2e54:	00000493          	li	s1,0
    2e58:	004007b7          	lui	a5,0x400
    2e5c:	b31ff06f          	j	298c <__subdf3+0x310>
    2e60:	00000793          	li	a5,0
    2e64:	00000513          	li	a0,0
    2e68:	f45ff06f          	j	2dac <__subdf3+0x730>

00002e6c <__unorddf2>:
    2e6c:	001007b7          	lui	a5,0x100
    2e70:	fff78793          	addi	a5,a5,-1 # fffff <Seed+0xef3ef>
    2e74:	00b7f733          	and	a4,a5,a1
    2e78:	0145d593          	srli	a1,a1,0x14
    2e7c:	00d7f7b3          	and	a5,a5,a3
    2e80:	7ff5f593          	andi	a1,a1,2047
    2e84:	0146d693          	srli	a3,a3,0x14
    2e88:	7ff00813          	li	a6,2047
    2e8c:	7ff6f693          	andi	a3,a3,2047
    2e90:	01059863          	bne	a1,a6,2ea0 <__unorddf2+0x34>
    2e94:	00a76733          	or	a4,a4,a0
    2e98:	00100513          	li	a0,1
    2e9c:	00071c63          	bnez	a4,2eb4 <__unorddf2+0x48>
    2ea0:	7ff00713          	li	a4,2047
    2ea4:	00000513          	li	a0,0
    2ea8:	00e69663          	bne	a3,a4,2eb4 <__unorddf2+0x48>
    2eac:	00c7e7b3          	or	a5,a5,a2
    2eb0:	00f03533          	snez	a0,a5
    2eb4:	00008067          	ret

00002eb8 <__floatsidf>:
    2eb8:	ff010113          	addi	sp,sp,-16
    2ebc:	00112623          	sw	ra,12(sp)
    2ec0:	00812423          	sw	s0,8(sp)
    2ec4:	00912223          	sw	s1,4(sp)
    2ec8:	08050663          	beqz	a0,2f54 <__floatsidf+0x9c>
    2ecc:	41f55793          	srai	a5,a0,0x1f
    2ed0:	00a7c433          	xor	s0,a5,a0
    2ed4:	40f40433          	sub	s0,s0,a5
    2ed8:	01f55493          	srli	s1,a0,0x1f
    2edc:	00040513          	mv	a0,s0
    2ee0:	158000ef          	jal	ra,3038 <__clzsi2>
    2ee4:	41e00713          	li	a4,1054
    2ee8:	00a00793          	li	a5,10
    2eec:	40a70733          	sub	a4,a4,a0
    2ef0:	04a7c863          	blt	a5,a0,2f40 <__floatsidf+0x88>
    2ef4:	00b00793          	li	a5,11
    2ef8:	40a787b3          	sub	a5,a5,a0
    2efc:	01550513          	addi	a0,a0,21
    2f00:	00f457b3          	srl	a5,s0,a5
    2f04:	00a41433          	sll	s0,s0,a0
    2f08:	00048513          	mv	a0,s1
    2f0c:	00c79793          	slli	a5,a5,0xc
    2f10:	00c7d793          	srli	a5,a5,0xc
    2f14:	01471713          	slli	a4,a4,0x14
    2f18:	01f51513          	slli	a0,a0,0x1f
    2f1c:	00f76733          	or	a4,a4,a5
    2f20:	00c12083          	lw	ra,12(sp)
    2f24:	00a767b3          	or	a5,a4,a0
    2f28:	00040513          	mv	a0,s0
    2f2c:	00812403          	lw	s0,8(sp)
    2f30:	00412483          	lw	s1,4(sp)
    2f34:	00078593          	mv	a1,a5
    2f38:	01010113          	addi	sp,sp,16
    2f3c:	00008067          	ret
    2f40:	ff550513          	addi	a0,a0,-11
    2f44:	00a417b3          	sll	a5,s0,a0
    2f48:	00048513          	mv	a0,s1
    2f4c:	00000413          	li	s0,0
    2f50:	fbdff06f          	j	2f0c <__floatsidf+0x54>
    2f54:	00000713          	li	a4,0
    2f58:	00000793          	li	a5,0
    2f5c:	ff1ff06f          	j	2f4c <__floatsidf+0x94>

00002f60 <__mulsi3>:
    2f60:	00050613          	mv	a2,a0
    2f64:	00000513          	li	a0,0
    2f68:	0015f693          	andi	a3,a1,1
    2f6c:	00068463          	beqz	a3,2f74 <__mulsi3+0x14>
    2f70:	00c50533          	add	a0,a0,a2
    2f74:	0015d593          	srli	a1,a1,0x1
    2f78:	00161613          	slli	a2,a2,0x1
    2f7c:	fe0596e3          	bnez	a1,2f68 <__mulsi3+0x8>
    2f80:	00008067          	ret

00002f84 <__divsi3>:
    2f84:	06054063          	bltz	a0,2fe4 <__umodsi3+0x10>
    2f88:	0605c663          	bltz	a1,2ff4 <__umodsi3+0x20>

00002f8c <__udivsi3>:
    2f8c:	00058613          	mv	a2,a1
    2f90:	00050593          	mv	a1,a0
    2f94:	fff00513          	li	a0,-1
    2f98:	02060c63          	beqz	a2,2fd0 <__udivsi3+0x44>
    2f9c:	00100693          	li	a3,1
    2fa0:	00b67a63          	bgeu	a2,a1,2fb4 <__udivsi3+0x28>
    2fa4:	00c05863          	blez	a2,2fb4 <__udivsi3+0x28>
    2fa8:	00161613          	slli	a2,a2,0x1
    2fac:	00169693          	slli	a3,a3,0x1
    2fb0:	feb66ae3          	bltu	a2,a1,2fa4 <__udivsi3+0x18>
    2fb4:	00000513          	li	a0,0
    2fb8:	00c5e663          	bltu	a1,a2,2fc4 <__udivsi3+0x38>
    2fbc:	40c585b3          	sub	a1,a1,a2
    2fc0:	00d56533          	or	a0,a0,a3
    2fc4:	0016d693          	srli	a3,a3,0x1
    2fc8:	00165613          	srli	a2,a2,0x1
    2fcc:	fe0696e3          	bnez	a3,2fb8 <__udivsi3+0x2c>
    2fd0:	00008067          	ret

00002fd4 <__umodsi3>:
    2fd4:	00008293          	mv	t0,ra
    2fd8:	fb5ff0ef          	jal	ra,2f8c <__udivsi3>
    2fdc:	00058513          	mv	a0,a1
    2fe0:	00028067          	jr	t0
    2fe4:	40a00533          	neg	a0,a0
    2fe8:	00b04863          	bgtz	a1,2ff8 <__umodsi3+0x24>
    2fec:	40b005b3          	neg	a1,a1
    2ff0:	f9dff06f          	j	2f8c <__udivsi3>
    2ff4:	40b005b3          	neg	a1,a1
    2ff8:	00008293          	mv	t0,ra
    2ffc:	f91ff0ef          	jal	ra,2f8c <__udivsi3>
    3000:	40a00533          	neg	a0,a0
    3004:	00028067          	jr	t0

00003008 <__modsi3>:
    3008:	00008293          	mv	t0,ra
    300c:	0005ca63          	bltz	a1,3020 <__modsi3+0x18>
    3010:	00054c63          	bltz	a0,3028 <__modsi3+0x20>
    3014:	f79ff0ef          	jal	ra,2f8c <__udivsi3>
    3018:	00058513          	mv	a0,a1
    301c:	00028067          	jr	t0
    3020:	40b005b3          	neg	a1,a1
    3024:	fe0558e3          	bgez	a0,3014 <__modsi3+0xc>
    3028:	40a00533          	neg	a0,a0
    302c:	f61ff0ef          	jal	ra,2f8c <__udivsi3>
    3030:	40b00533          	neg	a0,a1
    3034:	00028067          	jr	t0

00003038 <__clzsi2>:
    3038:	000107b7          	lui	a5,0x10
    303c:	02f57a63          	bgeu	a0,a5,3070 <__clzsi2+0x38>
    3040:	10053793          	sltiu	a5,a0,256
    3044:	0017c793          	xori	a5,a5,1
    3048:	00379793          	slli	a5,a5,0x3
    304c:	00010737          	lui	a4,0x10
    3050:	02000693          	li	a3,32
    3054:	40f686b3          	sub	a3,a3,a5
    3058:	00f55533          	srl	a0,a0,a5
    305c:	46c70793          	addi	a5,a4,1132 # 1046c <__clz_tab>
    3060:	00a787b3          	add	a5,a5,a0
    3064:	0007c503          	lbu	a0,0(a5) # 10000 <impure_data>
    3068:	40a68533          	sub	a0,a3,a0
    306c:	00008067          	ret
    3070:	01000737          	lui	a4,0x1000
    3074:	01000793          	li	a5,16
    3078:	fce56ae3          	bltu	a0,a4,304c <__clzsi2+0x14>
    307c:	01800793          	li	a5,24
    3080:	fcdff06f          	j	304c <__clzsi2+0x14>

00003084 <__errno>:
    3084:	000107b7          	lui	a5,0x10
    3088:	4287a503          	lw	a0,1064(a5) # 10428 <_impure_ptr>
    308c:	00008067          	ret

Disassembly of section .text.startup:

00003090 <main>:
    3090:	fe010113          	addi	sp,sp,-32
    3094:	00112e23          	sw	ra,28(sp)
    3098:	828fd0ef          	jal	ra,c0 <initialise_board>
    309c:	8b4fd0ef          	jal	ra,150 <initialise_benchmark>
    30a0:	00100513          	li	a0,1
    30a4:	ff0fd0ef          	jal	ra,894 <warm_caches>
    30a8:	81cfd0ef          	jal	ra,c4 <start_trigger>
    30ac:	801fd0ef          	jal	ra,8ac <benchmark>
    30b0:	00a12623          	sw	a0,12(sp)
    30b4:	83cfd0ef          	jal	ra,f0 <stop_trigger>
    30b8:	00c12503          	lw	a0,12(sp)
    30bc:	961fd0ef          	jal	ra,a1c <verify_benchmark>
    30c0:	00051a63          	bnez	a0,30d4 <main+0x44>
    30c4:	110007b7          	lui	a5,0x11000
    30c8:	fff00713          	li	a4,-1
    30cc:	00e7a823          	sw	a4,16(a5) # 11000010 <Seed+0x10fef400>
    30d0:	00e7aa23          	sw	a4,20(a5)
    30d4:	110007b7          	lui	a5,0x11000
    30d8:	00100713          	li	a4,1
    30dc:	08e7a023          	sw	a4,128(a5) # 11000080 <Seed+0x10fef470>
    30e0:	0000006f          	j	30e0 <main+0x50>
