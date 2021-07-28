
cubic.elf:     file format elf32-littleriscv


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
  84:	6300c0ef          	jal	ra,c6b4 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <soln_cnt0+0x10fef524>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <soln_cnt0+0x10fef524>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <soln_cnt0+0x10fef5a4>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <soln_cnt0+0xf514>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	aca7a423          	sw	a0,-1336(a5) # 10ac8 <start_time>
      e4:	ace7a623          	sw	a4,-1332(a5)
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
     114:	ac87a583          	lw	a1,-1336(a5) # 10ac8 <start_time>
     118:	acc7a703          	lw	a4,-1332(a5)
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
     150:	db010113          	addi	sp,sp,-592
     154:	24112623          	sw	ra,588(sp)
     158:	24812423          	sw	s0,584(sp)
     15c:	24912223          	sw	s1,580(sp)
     160:	25212023          	sw	s2,576(sp)
     164:	23312e23          	sw	s3,572(sp)
     168:	23412c23          	sw	s4,568(sp)
     16c:	23512a23          	sw	s5,564(sp)
     170:	23612823          	sw	s6,560(sp)
     174:	23712623          	sw	s7,556(sp)
     178:	23812423          	sw	s8,552(sp)
     17c:	23912223          	sw	s9,548(sp)
     180:	23a12023          	sw	s10,544(sp)
     184:	21b12e23          	sw	s11,540(sp)
     188:	06a12c23          	sw	a0,120(sp)
     18c:	32a05e63          	blez	a0,4c8 <benchmark_body+0x378>
     190:	00010637          	lui	a2,0x10
     194:	7c862583          	lw	a1,1992(a2) # 107c8 <__clz_tab+0x118>
     198:	7cc62603          	lw	a2,1996(a2)
     19c:	000106b7          	lui	a3,0x10
     1a0:	02b12c23          	sw	a1,56(sp)
     1a4:	02c12e23          	sw	a2,60(sp)
     1a8:	00010637          	lui	a2,0x10
     1ac:	7d062583          	lw	a1,2000(a2) # 107d0 <__clz_tab+0x120>
     1b0:	7d462603          	lw	a2,2004(a2)
     1b4:	7c06ab03          	lw	s6,1984(a3) # 107c0 <__clz_tab+0x110>
     1b8:	04b12023          	sw	a1,64(sp)
     1bc:	04c12223          	sw	a2,68(sp)
     1c0:	00010637          	lui	a2,0x10
     1c4:	7d862583          	lw	a1,2008(a2) # 107d8 <__clz_tab+0x128>
     1c8:	7dc62603          	lw	a2,2012(a2)
     1cc:	7c46ab83          	lw	s7,1988(a3)
     1d0:	000106b7          	lui	a3,0x10
     1d4:	04c12623          	sw	a2,76(sp)
     1d8:	7e06a603          	lw	a2,2016(a3) # 107e0 <__clz_tab+0x130>
     1dc:	7e46a683          	lw	a3,2020(a3)
     1e0:	00010737          	lui	a4,0x10
     1e4:	04c12823          	sw	a2,80(sp)
     1e8:	04d12a23          	sw	a3,84(sp)
     1ec:	000106b7          	lui	a3,0x10
     1f0:	7e86a603          	lw	a2,2024(a3) # 107e8 <__clz_tab+0x138>
     1f4:	7ec6a683          	lw	a3,2028(a3)
     1f8:	04b12423          	sw	a1,72(sp)
     1fc:	04c12c23          	sw	a2,88(sp)
     200:	04d12e23          	sw	a3,92(sp)
     204:	000106b7          	lui	a3,0x10
     208:	7f06a603          	lw	a2,2032(a3) # 107f0 <__clz_tab+0x140>
     20c:	7f46a683          	lw	a3,2036(a3)
     210:	000107b7          	lui	a5,0x10
     214:	06c12023          	sw	a2,96(sp)
     218:	06d12223          	sw	a3,100(sp)
     21c:	000106b7          	lui	a3,0x10
     220:	7f86a603          	lw	a2,2040(a3) # 107f8 <__clz_tab+0x148>
     224:	7fc6a683          	lw	a3,2044(a3)
     228:	00000a93          	li	s5,0
     22c:	06c12423          	sw	a2,104(sp)
     230:	06d12623          	sw	a3,108(sp)
     234:	000116b7          	lui	a3,0x11
     238:	8006a603          	lw	a2,-2048(a3) # 10800 <__clz_tab+0x150>
     23c:	8046a683          	lw	a3,-2044(a3)
     240:	09010913          	addi	s2,sp,144
     244:	06c12823          	sw	a2,112(sp)
     248:	06d12a23          	sw	a3,116(sp)
     24c:	7b872683          	lw	a3,1976(a4) # 107b8 <__clz_tab+0x108>
     250:	7bc72703          	lw	a4,1980(a4)
     254:	08c10c93          	addi	s9,sp,140
     258:	02d12623          	sw	a3,44(sp)
     25c:	02e12823          	sw	a4,48(sp)
     260:	7b07a703          	lw	a4,1968(a5) # 107b0 <__clz_tab+0x100>
     264:	7b47a783          	lw	a5,1972(a5)
     268:	03512a23          	sw	s5,52(sp)
     26c:	02e12023          	sw	a4,32(sp)
     270:	02f12223          	sw	a5,36(sp)
     274:	000117b7          	lui	a5,0x11
     278:	ab078793          	addi	a5,a5,-1360 # 10ab0 <res0>
     27c:	06f12e23          	sw	a5,124(sp)
     280:	18000613          	li	a2,384
     284:	00000593          	li	a1,0
     288:	00090513          	mv	a0,s2
     28c:	34c0c0ef          	jal	ra,c5d8 <memset>
     290:	03812403          	lw	s0,56(sp)
     294:	03c12483          	lw	s1,60(sp)
     298:	04012703          	lw	a4,64(sp)
     29c:	04412783          	lw	a5,68(sp)
     2a0:	04812603          	lw	a2,72(sp)
     2a4:	04c12683          	lw	a3,76(sp)
     2a8:	000b0513          	mv	a0,s6
     2ac:	000b8593          	mv	a1,s7
     2b0:	00040813          	mv	a6,s0
     2b4:	00048893          	mv	a7,s1
     2b8:	01212223          	sw	s2,4(sp)
     2bc:	01912023          	sw	s9,0(sp)
     2c0:	400000ef          	jal	ra,6c0 <SolveCubic>
     2c4:	08c12303          	lw	t1,140(sp)
     2c8:	00011e37          	lui	t3,0x11
     2cc:	01212223          	sw	s2,4(sp)
     2d0:	ac6e2e23          	sw	t1,-1316(t3) # 10adc <soln_cnt0>
     2d4:	07c12e03          	lw	t3,124(sp)
     2d8:	09012303          	lw	t1,144(sp)
     2dc:	01912023          	sw	s9,0(sp)
     2e0:	05012703          	lw	a4,80(sp)
     2e4:	006e2023          	sw	t1,0(t3)
     2e8:	09412303          	lw	t1,148(sp)
     2ec:	05412783          	lw	a5,84(sp)
     2f0:	05812603          	lw	a2,88(sp)
     2f4:	006e2223          	sw	t1,4(t3)
     2f8:	09812303          	lw	t1,152(sp)
     2fc:	05c12683          	lw	a3,92(sp)
     300:	000b0513          	mv	a0,s6
     304:	006e2423          	sw	t1,8(t3)
     308:	09c12303          	lw	t1,156(sp)
     30c:	000b8593          	mv	a1,s7
     310:	00040813          	mv	a6,s0
     314:	006e2623          	sw	t1,12(t3)
     318:	0a012303          	lw	t1,160(sp)
     31c:	00048893          	mv	a7,s1
     320:	000b0a13          	mv	s4,s6
     324:	006e2823          	sw	t1,16(t3)
     328:	0a412303          	lw	t1,164(sp)
     32c:	000b8993          	mv	s3,s7
     330:	006e2a23          	sw	t1,20(t3)
     334:	38c000ef          	jal	ra,6c0 <SolveCubic>
     338:	08c12303          	lw	t1,140(sp)
     33c:	00011e37          	lui	t3,0x11
     340:	09412383          	lw	t2,148(sp)
     344:	ac6e2c23          	sw	t1,-1320(t3) # 10ad8 <soln_cnt1>
     348:	06012803          	lw	a6,96(sp)
     34c:	09012303          	lw	t1,144(sp)
     350:	06412883          	lw	a7,100(sp)
     354:	06812703          	lw	a4,104(sp)
     358:	06c12783          	lw	a5,108(sp)
     35c:	07012603          	lw	a2,112(sp)
     360:	07412683          	lw	a3,116(sp)
     364:	00011e37          	lui	t3,0x11
     368:	000b0513          	mv	a0,s6
     36c:	000b8593          	mv	a1,s7
     370:	01212223          	sw	s2,4(sp)
     374:	01912023          	sw	s9,0(sp)
     378:	ac6e2823          	sw	t1,-1328(t3) # 10ad0 <res1>
     37c:	ac7e2a23          	sw	t2,-1324(t3)
     380:	340000ef          	jal	ra,6c0 <SolveCubic>
     384:	000117b7          	lui	a5,0x11
     388:	8087a803          	lw	a6,-2040(a5) # 10808 <__clz_tab+0x158>
     38c:	80c7a883          	lw	a7,-2036(a5)
     390:	000117b7          	lui	a5,0x11
     394:	8107a603          	lw	a2,-2032(a5) # 10810 <__clz_tab+0x160>
     398:	8147a683          	lw	a3,-2028(a5)
     39c:	000b0713          	mv	a4,s6
     3a0:	000b8793          	mv	a5,s7
     3a4:	000b0513          	mv	a0,s6
     3a8:	000b8593          	mv	a1,s7
     3ac:	01212223          	sw	s2,4(sp)
     3b0:	01912023          	sw	s9,0(sp)
     3b4:	30c000ef          	jal	ra,6c0 <SolveCubic>
     3b8:	00200793          	li	a5,2
     3bc:	02f12423          	sw	a5,40(sp)
     3c0:	01612e23          	sw	s6,28(sp)
     3c4:	02c12483          	lw	s1,44(sp)
     3c8:	03012403          	lw	s0,48(sp)
     3cc:	00200d13          	li	s10,2
     3d0:	00100c13          	li	s8,1
     3d4:	02012d83          	lw	s11,32(sp)
     3d8:	02412b03          	lw	s6,36(sp)
     3dc:	00200a93          	li	s5,2
     3e0:	00011837          	lui	a6,0x11
     3e4:	81c82883          	lw	a7,-2020(a6) # 1081c <__clz_tab+0x16c>
     3e8:	81882803          	lw	a6,-2024(a6)
     3ec:	000d8713          	mv	a4,s11
     3f0:	000b0793          	mv	a5,s6
     3f4:	00048613          	mv	a2,s1
     3f8:	000a0513          	mv	a0,s4
     3fc:	00040693          	mv	a3,s0
     400:	00098593          	mv	a1,s3
     404:	01212223          	sw	s2,4(sp)
     408:	01912023          	sw	s9,0(sp)
     40c:	2b4000ef          	jal	ra,6c0 <SolveCubic>
     410:	00011837          	lui	a6,0x11
     414:	82482883          	lw	a7,-2012(a6) # 10824 <__clz_tab+0x174>
     418:	82082803          	lw	a6,-2016(a6)
     41c:	000d8713          	mv	a4,s11
     420:	000b0793          	mv	a5,s6
     424:	00048613          	mv	a2,s1
     428:	000a0513          	mv	a0,s4
     42c:	00040693          	mv	a3,s0
     430:	00098593          	mv	a1,s3
     434:	01212223          	sw	s2,4(sp)
     438:	01912023          	sw	s9,0(sp)
     43c:	284000ef          	jal	ra,6c0 <SolveCubic>
     440:	000117b7          	lui	a5,0x11
     444:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
     448:	82c7a683          	lw	a3,-2004(a5)
     44c:	000d8513          	mv	a0,s11
     450:	000b0593          	mv	a1,s6
     454:	309040ef          	jal	ra,4f5c <__adddf3>
     458:	00050d93          	mv	s11,a0
     45c:	00058b13          	mv	s6,a1
     460:	018a8663          	beq	s5,s8,46c <benchmark_body+0x31c>
     464:	00100a93          	li	s5,1
     468:	f79ff06f          	j	3e0 <benchmark_body+0x290>
     46c:	01c12b03          	lw	s6,28(sp)
     470:	00048513          	mv	a0,s1
     474:	00040593          	mv	a1,s0
     478:	000b0613          	mv	a2,s6
     47c:	000b8693          	mv	a3,s7
     480:	3b8060ef          	jal	ra,6838 <__subdf3>
     484:	00050493          	mv	s1,a0
     488:	00058413          	mv	s0,a1
     48c:	075d1e63          	bne	s10,s5,508 <benchmark_body+0x3b8>
     490:	000a0513          	mv	a0,s4
     494:	00098593          	mv	a1,s3
     498:	000b0613          	mv	a2,s6
     49c:	000b8693          	mv	a3,s7
     4a0:	2bd040ef          	jal	ra,4f5c <__adddf3>
     4a4:	02812783          	lw	a5,40(sp)
     4a8:	00050a13          	mv	s4,a0
     4ac:	00058993          	mv	s3,a1
     4b0:	07a79063          	bne	a5,s10,510 <benchmark_body+0x3c0>
     4b4:	03412783          	lw	a5,52(sp)
     4b8:	07812703          	lw	a4,120(sp)
     4bc:	00178793          	addi	a5,a5,1
     4c0:	02f12a23          	sw	a5,52(sp)
     4c4:	daf71ee3          	bne	a4,a5,280 <benchmark_body+0x130>
     4c8:	24c12083          	lw	ra,588(sp)
     4cc:	24812403          	lw	s0,584(sp)
     4d0:	24412483          	lw	s1,580(sp)
     4d4:	24012903          	lw	s2,576(sp)
     4d8:	23c12983          	lw	s3,572(sp)
     4dc:	23812a03          	lw	s4,568(sp)
     4e0:	23412a83          	lw	s5,564(sp)
     4e4:	23012b03          	lw	s6,560(sp)
     4e8:	22c12b83          	lw	s7,556(sp)
     4ec:	22812c03          	lw	s8,552(sp)
     4f0:	22412c83          	lw	s9,548(sp)
     4f4:	22012d03          	lw	s10,544(sp)
     4f8:	21c12d83          	lw	s11,540(sp)
     4fc:	00000513          	li	a0,0
     500:	25010113          	addi	sp,sp,592
     504:	00008067          	ret
     508:	00100d13          	li	s10,1
     50c:	ec9ff06f          	j	3d4 <benchmark_body+0x284>
     510:	00100793          	li	a5,1
     514:	02f12423          	sw	a5,40(sp)
     518:	eadff06f          	j	3c4 <benchmark_body+0x274>

0000051c <verify_benchmark>:
     51c:	000117b7          	lui	a5,0x11
     520:	adc7a703          	lw	a4,-1316(a5) # 10adc <soln_cnt0>
     524:	fe010113          	addi	sp,sp,-32
     528:	00812c23          	sw	s0,24(sp)
     52c:	00112e23          	sw	ra,28(sp)
     530:	00912a23          	sw	s1,20(sp)
     534:	01212823          	sw	s2,16(sp)
     538:	01312623          	sw	s3,12(sp)
     53c:	01412423          	sw	s4,8(sp)
     540:	01512223          	sw	s5,4(sp)
     544:	00300793          	li	a5,3
     548:	00000413          	li	s0,0
     54c:	02f70663          	beq	a4,a5,578 <verify_benchmark+0x5c>
     550:	01c12083          	lw	ra,28(sp)
     554:	00040513          	mv	a0,s0
     558:	01812403          	lw	s0,24(sp)
     55c:	01412483          	lw	s1,20(sp)
     560:	01012903          	lw	s2,16(sp)
     564:	00c12983          	lw	s3,12(sp)
     568:	00812a03          	lw	s4,8(sp)
     56c:	00412a83          	lw	s5,4(sp)
     570:	02010113          	addi	sp,sp,32
     574:	00008067          	ret
     578:	00011937          	lui	s2,0x11
     57c:	000117b7          	lui	a5,0x11
     580:	ab090913          	addi	s2,s2,-1360 # 10ab0 <res0>
     584:	00092603          	lw	a2,0(s2)
     588:	00492683          	lw	a3,4(s2)
     58c:	8307a503          	lw	a0,-2000(a5) # 10830 <__clz_tab+0x180>
     590:	8347a583          	lw	a1,-1996(a5)
     594:	800004b7          	lui	s1,0x80000
     598:	fff4c493          	not	s1,s1
     59c:	29c060ef          	jal	ra,6838 <__subdf3>
     5a0:	000117b7          	lui	a5,0x11
     5a4:	8387aa03          	lw	s4,-1992(a5) # 10838 <__clz_tab+0x188>
     5a8:	83c7aa83          	lw	s5,-1988(a5)
     5ac:	00050713          	mv	a4,a0
     5b0:	0095f7b3          	and	a5,a1,s1
     5b4:	00070513          	mv	a0,a4
     5b8:	00078593          	mv	a1,a5
     5bc:	000a0613          	mv	a2,s4
     5c0:	000a8693          	mv	a3,s5
     5c4:	2c5050ef          	jal	ra,6088 <__ledf2>
     5c8:	f80554e3          	bgez	a0,550 <verify_benchmark+0x34>
     5cc:	000117b7          	lui	a5,0x11
     5d0:	00892603          	lw	a2,8(s2)
     5d4:	00c92683          	lw	a3,12(s2)
     5d8:	8407a503          	lw	a0,-1984(a5) # 10840 <__clz_tab+0x190>
     5dc:	8447a583          	lw	a1,-1980(a5)
     5e0:	258060ef          	jal	ra,6838 <__subdf3>
     5e4:	00050713          	mv	a4,a0
     5e8:	0095f7b3          	and	a5,a1,s1
     5ec:	000a0613          	mv	a2,s4
     5f0:	000a8693          	mv	a3,s5
     5f4:	00070513          	mv	a0,a4
     5f8:	00078593          	mv	a1,a5
     5fc:	28d050ef          	jal	ra,6088 <__ledf2>
     600:	f40558e3          	bgez	a0,550 <verify_benchmark+0x34>
     604:	000119b7          	lui	s3,0x11
     608:	01092603          	lw	a2,16(s2)
     60c:	01492683          	lw	a3,20(s2)
     610:	8489a503          	lw	a0,-1976(s3) # 10848 <__clz_tab+0x198>
     614:	84c9a583          	lw	a1,-1972(s3)
     618:	220060ef          	jal	ra,6838 <__subdf3>
     61c:	00050713          	mv	a4,a0
     620:	0095f7b3          	and	a5,a1,s1
     624:	000a0613          	mv	a2,s4
     628:	000a8693          	mv	a3,s5
     62c:	00070513          	mv	a0,a4
     630:	00078593          	mv	a1,a5
     634:	255050ef          	jal	ra,6088 <__ledf2>
     638:	f0055ce3          	bgez	a0,550 <verify_benchmark+0x34>
     63c:	000117b7          	lui	a5,0x11
     640:	ad87a703          	lw	a4,-1320(a5) # 10ad8 <soln_cnt1>
     644:	00100793          	li	a5,1
     648:	f0f714e3          	bne	a4,a5,550 <verify_benchmark+0x34>
     64c:	000117b7          	lui	a5,0x11
     650:	ad07a603          	lw	a2,-1328(a5) # 10ad0 <res1>
     654:	ad47a683          	lw	a3,-1324(a5)
     658:	8489a503          	lw	a0,-1976(s3)
     65c:	84c9a583          	lw	a1,-1972(s3)
     660:	1d8060ef          	jal	ra,6838 <__subdf3>
     664:	00050713          	mv	a4,a0
     668:	0095f7b3          	and	a5,a1,s1
     66c:	000a0613          	mv	a2,s4
     670:	000a8693          	mv	a3,s5
     674:	00070513          	mv	a0,a4
     678:	00078593          	mv	a1,a5
     67c:	20d050ef          	jal	ra,6088 <__ledf2>
     680:	00052413          	slti	s0,a0,0
     684:	ecdff06f          	j	550 <verify_benchmark+0x34>

00000688 <initialise_benchmark>:
     688:	00008067          	ret

0000068c <warm_caches>:
     68c:	ff010113          	addi	sp,sp,-16
     690:	00112623          	sw	ra,12(sp)
     694:	abdff0ef          	jal	ra,150 <benchmark_body>
     698:	00c12083          	lw	ra,12(sp)
     69c:	01010113          	addi	sp,sp,16
     6a0:	00008067          	ret

000006a4 <benchmark>:
     6a4:	ff010113          	addi	sp,sp,-16
     6a8:	1f400513          	li	a0,500
     6ac:	00112623          	sw	ra,12(sp)
     6b0:	aa1ff0ef          	jal	ra,150 <benchmark_body>
     6b4:	00c12083          	lw	ra,12(sp)
     6b8:	01010113          	addi	sp,sp,16
     6bc:	00008067          	ret

000006c0 <SolveCubic>:
     6c0:	ed010113          	addi	sp,sp,-304
     6c4:	11612823          	sw	s6,272(sp)
     6c8:	11712623          	sw	s7,268(sp)
     6cc:	00058b13          	mv	s6,a1
     6d0:	00050b93          	mv	s7,a0
     6d4:	00068593          	mv	a1,a3
     6d8:	00060513          	mv	a0,a2
     6dc:	000b0693          	mv	a3,s6
     6e0:	000b8613          	mv	a2,s7
     6e4:	12112623          	sw	ra,300(sp)
     6e8:	03012223          	sw	a6,36(sp)
     6ec:	03112023          	sw	a7,32(sp)
     6f0:	12812423          	sw	s0,296(sp)
     6f4:	12912223          	sw	s1,292(sp)
     6f8:	00078413          	mv	s0,a5
     6fc:	00070493          	mv	s1,a4
     700:	13212023          	sw	s2,288(sp)
     704:	11312e23          	sw	s3,284(sp)
     708:	11412c23          	sw	s4,280(sp)
     70c:	11512a23          	sw	s5,276(sp)
     710:	11812423          	sw	s8,264(sp)
     714:	11912223          	sw	s9,260(sp)
     718:	11a12023          	sw	s10,256(sp)
     71c:	0fb12e23          	sw	s11,252(sp)
     720:	018050ef          	jal	ra,5738 <__divdf3>
     724:	00058793          	mv	a5,a1
     728:	00078613          	mv	a2,a5
     72c:	02a12423          	sw	a0,40(sp)
     730:	02b12623          	sw	a1,44(sp)
     734:	00050593          	mv	a1,a0
     738:	0e010513          	addi	a0,sp,224
     73c:	0290b0ef          	jal	ra,bf64 <__extenddftf2>
     740:	000b0693          	mv	a3,s6
     744:	000b8613          	mv	a2,s7
     748:	00048513          	mv	a0,s1
     74c:	00040593          	mv	a1,s0
     750:	7e9040ef          	jal	ra,5738 <__divdf3>
     754:	0e012483          	lw	s1,224(sp)
     758:	0e412403          	lw	s0,228(sp)
     75c:	0e812d83          	lw	s11,232(sp)
     760:	0ec12c83          	lw	s9,236(sp)
     764:	00058613          	mv	a2,a1
     768:	00050593          	mv	a1,a0
     76c:	0e010513          	addi	a0,sp,224
     770:	7f40b0ef          	jal	ra,bf64 <__extenddftf2>
     774:	0c010613          	addi	a2,sp,192
     778:	0d010593          	addi	a1,sp,208
     77c:	0e010513          	addi	a0,sp,224
     780:	0e012a83          	lw	s5,224(sp)
     784:	0e412a03          	lw	s4,228(sp)
     788:	0e812983          	lw	s3,232(sp)
     78c:	0ec12903          	lw	s2,236(sp)
     790:	0c912823          	sw	s1,208(sp)
     794:	0c812a23          	sw	s0,212(sp)
     798:	0db12c23          	sw	s11,216(sp)
     79c:	0d912e23          	sw	s9,220(sp)
     7a0:	0c912023          	sw	s1,192(sp)
     7a4:	0c812223          	sw	s0,196(sp)
     7a8:	0db12423          	sw	s11,200(sp)
     7ac:	0d912623          	sw	s9,204(sp)
     7b0:	6d5080ef          	jal	ra,9684 <__multf3>
     7b4:	400087b7          	lui	a5,0x40008
     7b8:	0e012703          	lw	a4,224(sp)
     7bc:	0af12e23          	sw	a5,188(sp)
     7c0:	0e412783          	lw	a5,228(sp)
     7c4:	0b010613          	addi	a2,sp,176
     7c8:	0c010593          	addi	a1,sp,192
     7cc:	0d010513          	addi	a0,sp,208
     7d0:	0e812c03          	lw	s8,232(sp)
     7d4:	0ec12d03          	lw	s10,236(sp)
     7d8:	0d512023          	sw	s5,192(sp)
     7dc:	0d412223          	sw	s4,196(sp)
     7e0:	0d312423          	sw	s3,200(sp)
     7e4:	0d212623          	sw	s2,204(sp)
     7e8:	00e12623          	sw	a4,12(sp)
     7ec:	00f12423          	sw	a5,8(sp)
     7f0:	0a012823          	sw	zero,176(sp)
     7f4:	0a012a23          	sw	zero,180(sp)
     7f8:	0a012c23          	sw	zero,184(sp)
     7fc:	689080ef          	jal	ra,9684 <__multf3>
     800:	00812783          	lw	a5,8(sp)
     804:	00c12703          	lw	a4,12(sp)
     808:	0a010613          	addi	a2,sp,160
     80c:	0af12a23          	sw	a5,180(sp)
     810:	0d012783          	lw	a5,208(sp)
     814:	0b010593          	addi	a1,sp,176
     818:	0c010513          	addi	a0,sp,192
     81c:	0af12023          	sw	a5,160(sp)
     820:	0d412783          	lw	a5,212(sp)
     824:	0ae12823          	sw	a4,176(sp)
     828:	0b812c23          	sw	s8,184(sp)
     82c:	0af12223          	sw	a5,164(sp)
     830:	0d812783          	lw	a5,216(sp)
     834:	0ba12e23          	sw	s10,188(sp)
     838:	40022d37          	lui	s10,0x40022
     83c:	0af12423          	sw	a5,168(sp)
     840:	0dc12783          	lw	a5,220(sp)
     844:	0af12623          	sw	a5,172(sp)
     848:	2000a0ef          	jal	ra,aa48 <__subtf3>
     84c:	0c012783          	lw	a5,192(sp)
     850:	09010613          	addi	a2,sp,144
     854:	0a010593          	addi	a1,sp,160
     858:	0af12023          	sw	a5,160(sp)
     85c:	0c412783          	lw	a5,196(sp)
     860:	0b010513          	addi	a0,sp,176
     864:	09a12e23          	sw	s10,156(sp)
     868:	0af12223          	sw	a5,164(sp)
     86c:	0c812783          	lw	a5,200(sp)
     870:	08012823          	sw	zero,144(sp)
     874:	08012a23          	sw	zero,148(sp)
     878:	0af12423          	sw	a5,168(sp)
     87c:	0cc12783          	lw	a5,204(sp)
     880:	08012c23          	sw	zero,152(sp)
     884:	0af12623          	sw	a5,172(sp)
     888:	605070ef          	jal	ra,868c <__divtf3>
     88c:	0b812683          	lw	a3,184(sp)
     890:	0b412703          	lw	a4,180(sp)
     894:	0b012783          	lw	a5,176(sp)
     898:	0c010613          	addi	a2,sp,192
     89c:	0d010593          	addi	a1,sp,208
     8a0:	0e010513          	addi	a0,sp,224
     8a4:	00d12823          	sw	a3,16(sp)
     8a8:	0bc12c03          	lw	s8,188(sp)
     8ac:	00e12623          	sw	a4,12(sp)
     8b0:	00f12423          	sw	a5,8(sp)
     8b4:	0c912823          	sw	s1,208(sp)
     8b8:	0c812a23          	sw	s0,212(sp)
     8bc:	0db12c23          	sw	s11,216(sp)
     8c0:	0d912e23          	sw	s9,220(sp)
     8c4:	0c912023          	sw	s1,192(sp)
     8c8:	0c812223          	sw	s0,196(sp)
     8cc:	0db12423          	sw	s11,200(sp)
     8d0:	0d912623          	sw	s9,204(sp)
     8d4:	0c9060ef          	jal	ra,719c <__addtf3>
     8d8:	0e012783          	lw	a5,224(sp)
     8dc:	0b010613          	addi	a2,sp,176
     8e0:	0c010593          	addi	a1,sp,192
     8e4:	0cf12023          	sw	a5,192(sp)
     8e8:	0e412783          	lw	a5,228(sp)
     8ec:	0d010513          	addi	a0,sp,208
     8f0:	0a912823          	sw	s1,176(sp)
     8f4:	0cf12223          	sw	a5,196(sp)
     8f8:	0e812783          	lw	a5,232(sp)
     8fc:	0a812a23          	sw	s0,180(sp)
     900:	0bb12c23          	sw	s11,184(sp)
     904:	0cf12423          	sw	a5,200(sp)
     908:	0ec12783          	lw	a5,236(sp)
     90c:	0b912e23          	sw	s9,188(sp)
     910:	0cf12623          	sw	a5,204(sp)
     914:	571080ef          	jal	ra,9684 <__multf3>
     918:	0d012783          	lw	a5,208(sp)
     91c:	0a010613          	addi	a2,sp,160
     920:	0b010593          	addi	a1,sp,176
     924:	0af12823          	sw	a5,176(sp)
     928:	0d412783          	lw	a5,212(sp)
     92c:	0c010513          	addi	a0,sp,192
     930:	0a912023          	sw	s1,160(sp)
     934:	0af12a23          	sw	a5,180(sp)
     938:	0d812783          	lw	a5,216(sp)
     93c:	0a812223          	sw	s0,164(sp)
     940:	0bb12423          	sw	s11,168(sp)
     944:	0af12c23          	sw	a5,184(sp)
     948:	0dc12783          	lw	a5,220(sp)
     94c:	0b912623          	sw	s9,172(sp)
     950:	0af12e23          	sw	a5,188(sp)
     954:	531080ef          	jal	ra,9684 <__multf3>
     958:	0c012703          	lw	a4,192(sp)
     95c:	0c412783          	lw	a5,196(sp)
     960:	0c812303          	lw	t1,200(sp)
     964:	09010613          	addi	a2,sp,144
     968:	0a010593          	addi	a1,sp,160
     96c:	0b010513          	addi	a0,sp,176
     970:	00e12e23          	sw	a4,28(sp)
     974:	00f12c23          	sw	a5,24(sp)
     978:	00612a23          	sw	t1,20(sp)
     97c:	09a12e23          	sw	s10,156(sp)
     980:	0a912023          	sw	s1,160(sp)
     984:	0cc12d03          	lw	s10,204(sp)
     988:	0a812223          	sw	s0,164(sp)
     98c:	0bb12423          	sw	s11,168(sp)
     990:	0b912623          	sw	s9,172(sp)
     994:	08012823          	sw	zero,144(sp)
     998:	08012a23          	sw	zero,148(sp)
     99c:	08012c23          	sw	zero,152(sp)
     9a0:	4e5080ef          	jal	ra,9684 <__multf3>
     9a4:	0b012683          	lw	a3,176(sp)
     9a8:	08010613          	addi	a2,sp,128
     9ac:	09010593          	addi	a1,sp,144
     9b0:	08d12823          	sw	a3,144(sp)
     9b4:	0b412683          	lw	a3,180(sp)
     9b8:	0a010513          	addi	a0,sp,160
     9bc:	09512023          	sw	s5,128(sp)
     9c0:	08d12a23          	sw	a3,148(sp)
     9c4:	0b812683          	lw	a3,184(sp)
     9c8:	09412223          	sw	s4,132(sp)
     9cc:	09312423          	sw	s3,136(sp)
     9d0:	08d12c23          	sw	a3,152(sp)
     9d4:	0bc12683          	lw	a3,188(sp)
     9d8:	09212623          	sw	s2,140(sp)
     9dc:	08d12e23          	sw	a3,156(sp)
     9e0:	4a5080ef          	jal	ra,9684 <__multf3>
     9e4:	01812783          	lw	a5,24(sp)
     9e8:	01412303          	lw	t1,20(sp)
     9ec:	01c12703          	lw	a4,28(sp)
     9f0:	08f12223          	sw	a5,132(sp)
     9f4:	0a012783          	lw	a5,160(sp)
     9f8:	07010613          	addi	a2,sp,112
     9fc:	08010593          	addi	a1,sp,128
     a00:	06f12823          	sw	a5,112(sp)
     a04:	0a412783          	lw	a5,164(sp)
     a08:	09010513          	addi	a0,sp,144
     a0c:	08612423          	sw	t1,136(sp)
     a10:	06f12a23          	sw	a5,116(sp)
     a14:	0a812783          	lw	a5,168(sp)
     a18:	08e12023          	sw	a4,128(sp)
     a1c:	09a12623          	sw	s10,140(sp)
     a20:	06f12c23          	sw	a5,120(sp)
     a24:	0ac12783          	lw	a5,172(sp)
     a28:	06f12e23          	sw	a5,124(sp)
     a2c:	01c0a0ef          	jal	ra,aa48 <__subtf3>
     a30:	02412803          	lw	a6,36(sp)
     a34:	02012883          	lw	a7,32(sp)
     a38:	000b0693          	mv	a3,s6
     a3c:	00080513          	mv	a0,a6
     a40:	00088593          	mv	a1,a7
     a44:	000b8613          	mv	a2,s7
     a48:	4f1040ef          	jal	ra,5738 <__divdf3>
     a4c:	00058613          	mv	a2,a1
     a50:	00050593          	mv	a1,a0
     a54:	08010513          	addi	a0,sp,128
     a58:	09012a83          	lw	s5,144(sp)
     a5c:	09412a03          	lw	s4,148(sp)
     a60:	09812983          	lw	s3,152(sp)
     a64:	09c12903          	lw	s2,156(sp)
     a68:	4fc0b0ef          	jal	ra,bf64 <__extenddftf2>
     a6c:	08012783          	lw	a5,128(sp)
     a70:	05010613          	addi	a2,sp,80
     a74:	06010593          	addi	a1,sp,96
     a78:	06f12023          	sw	a5,96(sp)
     a7c:	08412783          	lw	a5,132(sp)
     a80:	07010513          	addi	a0,sp,112
     a84:	04012823          	sw	zero,80(sp)
     a88:	06f12223          	sw	a5,100(sp)
     a8c:	08812783          	lw	a5,136(sp)
     a90:	04012a23          	sw	zero,84(sp)
     a94:	04012c23          	sw	zero,88(sp)
     a98:	06f12423          	sw	a5,104(sp)
     a9c:	08c12783          	lw	a5,140(sp)
     aa0:	06f12623          	sw	a5,108(sp)
     aa4:	4003b7b7          	lui	a5,0x4003b
     aa8:	04f12e23          	sw	a5,92(sp)
     aac:	3d9080ef          	jal	ra,9684 <__multf3>
     ab0:	07012783          	lw	a5,112(sp)
     ab4:	04010613          	addi	a2,sp,64
     ab8:	05010593          	addi	a1,sp,80
     abc:	04f12023          	sw	a5,64(sp)
     ac0:	07412783          	lw	a5,116(sp)
     ac4:	06010513          	addi	a0,sp,96
     ac8:	05512823          	sw	s5,80(sp)
     acc:	04f12223          	sw	a5,68(sp)
     ad0:	07812783          	lw	a5,120(sp)
     ad4:	05412a23          	sw	s4,84(sp)
     ad8:	05312c23          	sw	s3,88(sp)
     adc:	04f12423          	sw	a5,72(sp)
     ae0:	07c12783          	lw	a5,124(sp)
     ae4:	05212e23          	sw	s2,92(sp)
     ae8:	04f12623          	sw	a5,76(sp)
     aec:	6b0060ef          	jal	ra,719c <__addtf3>
     af0:	06012783          	lw	a5,96(sp)
     af4:	03010613          	addi	a2,sp,48
     af8:	04010593          	addi	a1,sp,64
     afc:	04f12023          	sw	a5,64(sp)
     b00:	06412783          	lw	a5,100(sp)
     b04:	05010513          	addi	a0,sp,80
     b08:	02012823          	sw	zero,48(sp)
     b0c:	04f12223          	sw	a5,68(sp)
     b10:	06812783          	lw	a5,104(sp)
     b14:	02012a23          	sw	zero,52(sp)
     b18:	02012c23          	sw	zero,56(sp)
     b1c:	04f12423          	sw	a5,72(sp)
     b20:	06c12783          	lw	a5,108(sp)
     b24:	04f12623          	sw	a5,76(sp)
     b28:	4004b7b7          	lui	a5,0x4004b
     b2c:	02f12e23          	sw	a5,60(sp)
     b30:	35d070ef          	jal	ra,868c <__divtf3>
     b34:	00812b03          	lw	s6,8(sp)
     b38:	00c12b83          	lw	s7,12(sp)
     b3c:	01012d03          	lw	s10,16(sp)
     b40:	0c010613          	addi	a2,sp,192
     b44:	0d010593          	addi	a1,sp,208
     b48:	0e010513          	addi	a0,sp,224
     b4c:	05012a83          	lw	s5,80(sp)
     b50:	05412a03          	lw	s4,84(sp)
     b54:	05812983          	lw	s3,88(sp)
     b58:	05c12903          	lw	s2,92(sp)
     b5c:	0d612823          	sw	s6,208(sp)
     b60:	0d712a23          	sw	s7,212(sp)
     b64:	0da12c23          	sw	s10,216(sp)
     b68:	0d612023          	sw	s6,192(sp)
     b6c:	0d712223          	sw	s7,196(sp)
     b70:	0da12423          	sw	s10,200(sp)
     b74:	0d812e23          	sw	s8,220(sp)
     b78:	0d812623          	sw	s8,204(sp)
     b7c:	309080ef          	jal	ra,9684 <__multf3>
     b80:	0e012783          	lw	a5,224(sp)
     b84:	0b010613          	addi	a2,sp,176
     b88:	0c010593          	addi	a1,sp,192
     b8c:	0cf12023          	sw	a5,192(sp)
     b90:	0e412783          	lw	a5,228(sp)
     b94:	0d010513          	addi	a0,sp,208
     b98:	01612423          	sw	s6,8(sp)
     b9c:	0cf12223          	sw	a5,196(sp)
     ba0:	0e812783          	lw	a5,232(sp)
     ba4:	0b612823          	sw	s6,176(sp)
     ba8:	01712623          	sw	s7,12(sp)
     bac:	0cf12423          	sw	a5,200(sp)
     bb0:	0ec12783          	lw	a5,236(sp)
     bb4:	0b712a23          	sw	s7,180(sp)
     bb8:	01a12823          	sw	s10,16(sp)
     bbc:	0cf12623          	sw	a5,204(sp)
     bc0:	0ba12c23          	sw	s10,184(sp)
     bc4:	0b812e23          	sw	s8,188(sp)
     bc8:	2bd080ef          	jal	ra,9684 <__multf3>
     bcc:	0d012703          	lw	a4,208(sp)
     bd0:	0c010613          	addi	a2,sp,192
     bd4:	0d010593          	addi	a1,sp,208
     bd8:	0e010513          	addi	a0,sp,224
     bdc:	0d412d03          	lw	s10,212(sp)
     be0:	0d812b83          	lw	s7,216(sp)
     be4:	0dc12b03          	lw	s6,220(sp)
     be8:	00e12a23          	sw	a4,20(sp)
     bec:	0d512823          	sw	s5,208(sp)
     bf0:	0d412a23          	sw	s4,212(sp)
     bf4:	0d312c23          	sw	s3,216(sp)
     bf8:	0d212e23          	sw	s2,220(sp)
     bfc:	0d512023          	sw	s5,192(sp)
     c00:	0d412223          	sw	s4,196(sp)
     c04:	0d312423          	sw	s3,200(sp)
     c08:	0d212623          	sw	s2,204(sp)
     c0c:	279080ef          	jal	ra,9684 <__multf3>
     c10:	0e012783          	lw	a5,224(sp)
     c14:	01412703          	lw	a4,20(sp)
     c18:	0b010613          	addi	a2,sp,176
     c1c:	0cf12023          	sw	a5,192(sp)
     c20:	0e412783          	lw	a5,228(sp)
     c24:	0c010593          	addi	a1,sp,192
     c28:	0d010513          	addi	a0,sp,208
     c2c:	0cf12223          	sw	a5,196(sp)
     c30:	0e812783          	lw	a5,232(sp)
     c34:	0ae12823          	sw	a4,176(sp)
     c38:	0ba12a23          	sw	s10,180(sp)
     c3c:	0cf12423          	sw	a5,200(sp)
     c40:	0ec12783          	lw	a5,236(sp)
     c44:	0b712c23          	sw	s7,184(sp)
     c48:	0b612e23          	sw	s6,188(sp)
     c4c:	0cf12623          	sw	a5,204(sp)
     c50:	5f9090ef          	jal	ra,aa48 <__subtf3>
     c54:	0d012783          	lw	a5,208(sp)
     c58:	0c010513          	addi	a0,sp,192
     c5c:	0cf12023          	sw	a5,192(sp)
     c60:	0d412783          	lw	a5,212(sp)
     c64:	0cf12223          	sw	a5,196(sp)
     c68:	0d812783          	lw	a5,216(sp)
     c6c:	0cf12423          	sw	a5,200(sp)
     c70:	0dc12783          	lw	a5,220(sp)
     c74:	0cf12623          	sw	a5,204(sp)
     c78:	4e40b0ef          	jal	ra,c15c <__trunctfdf2>
     c7c:	00000613          	li	a2,0
     c80:	00000693          	li	a3,0
     c84:	00a12c23          	sw	a0,24(sp)
     c88:	00b12e23          	sw	a1,28(sp)
     c8c:	3fc050ef          	jal	ra,6088 <__ledf2>
     c90:	16a05663          	blez	a0,dfc <SolveCubic+0x73c>
     c94:	13012703          	lw	a4,304(sp)
     c98:	01812503          	lw	a0,24(sp)
     c9c:	01c12583          	lw	a1,28(sp)
     ca0:	00100793          	li	a5,1
     ca4:	00f72023          	sw	a5,0(a4)
     ca8:	035000ef          	jal	ra,14dc <sqrt>
     cac:	00050b93          	mv	s7,a0
     cb0:	0e010513          	addi	a0,sp,224
     cb4:	00058493          	mv	s1,a1
     cb8:	0f312423          	sw	s3,232(sp)
     cbc:	0f212623          	sw	s2,236(sp)
     cc0:	0f512023          	sw	s5,224(sp)
     cc4:	0f412223          	sw	s4,228(sp)
     cc8:	80000437          	lui	s0,0x80000
     ccc:	4900b0ef          	jal	ra,c15c <__trunctfdf2>
     cd0:	fff44793          	not	a5,s0
     cd4:	00050713          	mv	a4,a0
     cd8:	00f5f7b3          	and	a5,a1,a5
     cdc:	00070513          	mv	a0,a4
     ce0:	00048693          	mv	a3,s1
     ce4:	00078593          	mv	a1,a5
     ce8:	000b8613          	mv	a2,s7
     cec:	270040ef          	jal	ra,4f5c <__adddf3>
     cf0:	00011b37          	lui	s6,0x11
     cf4:	868b2603          	lw	a2,-1944(s6) # 10868 <__clz_tab+0x1b8>
     cf8:	86cb2683          	lw	a3,-1940(s6)
     cfc:	63c000ef          	jal	ra,1338 <pow>
     d00:	00812783          	lw	a5,8(sp)
     d04:	00050b13          	mv	s6,a0
     d08:	0e010513          	addi	a0,sp,224
     d0c:	0ef12023          	sw	a5,224(sp)
     d10:	00c12783          	lw	a5,12(sp)
     d14:	00058493          	mv	s1,a1
     d18:	0f812623          	sw	s8,236(sp)
     d1c:	0ef12223          	sw	a5,228(sp)
     d20:	01012783          	lw	a5,16(sp)
     d24:	0ef12423          	sw	a5,232(sp)
     d28:	4340b0ef          	jal	ra,c15c <__trunctfdf2>
     d2c:	00048693          	mv	a3,s1
     d30:	000b0613          	mv	a2,s6
     d34:	205040ef          	jal	ra,5738 <__divdf3>
     d38:	00048693          	mv	a3,s1
     d3c:	000b0613          	mv	a2,s6
     d40:	21c040ef          	jal	ra,4f5c <__adddf3>
     d44:	00058793          	mv	a5,a1
     d48:	00050493          	mv	s1,a0
     d4c:	0d010593          	addi	a1,sp,208
     d50:	0e010513          	addi	a0,sp,224
     d54:	0f312423          	sw	s3,232(sp)
     d58:	0f212623          	sw	s2,236(sp)
     d5c:	00078993          	mv	s3,a5
     d60:	0f512023          	sw	s5,224(sp)
     d64:	0f412223          	sw	s4,228(sp)
     d68:	0c012823          	sw	zero,208(sp)
     d6c:	0c012a23          	sw	zero,212(sp)
     d70:	0c012c23          	sw	zero,216(sp)
     d74:	0c012e23          	sw	zero,220(sp)
     d78:	7c8080ef          	jal	ra,9540 <__letf2>
     d7c:	00098913          	mv	s2,s3
     d80:	00054463          	bltz	a0,d88 <SolveCubic+0x6c8>
     d84:	01344933          	xor	s2,s0,s3
     d88:	000117b7          	lui	a5,0x11
     d8c:	8507a603          	lw	a2,-1968(a5) # 10850 <__clz_tab+0x1a0>
     d90:	8547a683          	lw	a3,-1964(a5)
     d94:	02812503          	lw	a0,40(sp)
     d98:	02c12583          	lw	a1,44(sp)
     d9c:	19d040ef          	jal	ra,5738 <__divdf3>
     da0:	00050613          	mv	a2,a0
     da4:	00058693          	mv	a3,a1
     da8:	00048513          	mv	a0,s1
     dac:	00090593          	mv	a1,s2
     db0:	289050ef          	jal	ra,6838 <__subdf3>
     db4:	13412783          	lw	a5,308(sp)
     db8:	00a7a023          	sw	a0,0(a5)
     dbc:	00b7a223          	sw	a1,4(a5)
     dc0:	12c12083          	lw	ra,300(sp)
     dc4:	12812403          	lw	s0,296(sp)
     dc8:	12412483          	lw	s1,292(sp)
     dcc:	12012903          	lw	s2,288(sp)
     dd0:	11c12983          	lw	s3,284(sp)
     dd4:	11812a03          	lw	s4,280(sp)
     dd8:	11412a83          	lw	s5,276(sp)
     ddc:	11012b03          	lw	s6,272(sp)
     de0:	10c12b83          	lw	s7,268(sp)
     de4:	10812c03          	lw	s8,264(sp)
     de8:	10412c83          	lw	s9,260(sp)
     dec:	10012d03          	lw	s10,256(sp)
     df0:	0fc12d83          	lw	s11,252(sp)
     df4:	13010113          	addi	sp,sp,304
     df8:	00008067          	ret
     dfc:	13012603          	lw	a2,304(sp)
     e00:	01412703          	lw	a4,20(sp)
     e04:	00300793          	li	a5,3
     e08:	00f62023          	sw	a5,0(a2)
     e0c:	0e010513          	addi	a0,sp,224
     e10:	0ee12023          	sw	a4,224(sp)
     e14:	0fa12223          	sw	s10,228(sp)
     e18:	0f712423          	sw	s7,232(sp)
     e1c:	0f612623          	sw	s6,236(sp)
     e20:	33c0b0ef          	jal	ra,c15c <__trunctfdf2>
     e24:	6b8000ef          	jal	ra,14dc <sqrt>
     e28:	00050793          	mv	a5,a0
     e2c:	0e010513          	addi	a0,sp,224
     e30:	0f512023          	sw	s5,224(sp)
     e34:	0f412223          	sw	s4,228(sp)
     e38:	0f312423          	sw	s3,232(sp)
     e3c:	0f212623          	sw	s2,236(sp)
     e40:	00078993          	mv	s3,a5
     e44:	00058913          	mv	s2,a1
     e48:	3140b0ef          	jal	ra,c15c <__trunctfdf2>
     e4c:	00098613          	mv	a2,s3
     e50:	00090693          	mv	a3,s2
     e54:	0e5040ef          	jal	ra,5738 <__divdf3>
     e58:	434000ef          	jal	ra,128c <acos>
     e5c:	00812b03          	lw	s6,8(sp)
     e60:	00c12b83          	lw	s7,12(sp)
     e64:	01012d03          	lw	s10,16(sp)
     e68:	00050993          	mv	s3,a0
     e6c:	0e010513          	addi	a0,sp,224
     e70:	00058913          	mv	s2,a1
     e74:	0f612023          	sw	s6,224(sp)
     e78:	0f712223          	sw	s7,228(sp)
     e7c:	0fa12423          	sw	s10,232(sp)
     e80:	0f812623          	sw	s8,236(sp)
     e84:	2d80b0ef          	jal	ra,c15c <__trunctfdf2>
     e88:	00011b37          	lui	s6,0x11
     e8c:	00050a93          	mv	s5,a0
     e90:	00058a13          	mv	s4,a1
     e94:	648000ef          	jal	ra,14dc <sqrt>
     e98:	850b2603          	lw	a2,-1968(s6) # 10850 <__clz_tab+0x1a0>
     e9c:	854b2683          	lw	a3,-1964(s6)
     ea0:	00050c13          	mv	s8,a0
     ea4:	00058b93          	mv	s7,a1
     ea8:	00098513          	mv	a0,s3
     eac:	00090593          	mv	a1,s2
     eb0:	089040ef          	jal	ra,5738 <__divdf3>
     eb4:	2e4000ef          	jal	ra,1198 <cos>
     eb8:	00050713          	mv	a4,a0
     ebc:	00058793          	mv	a5,a1
     ec0:	400086b7          	lui	a3,0x40008
     ec4:	0c010613          	addi	a2,sp,192
     ec8:	0d010593          	addi	a1,sp,208
     ecc:	0e010513          	addi	a0,sp,224
     ed0:	0c912823          	sw	s1,208(sp)
     ed4:	0c812a23          	sw	s0,212(sp)
     ed8:	00070493          	mv	s1,a4
     edc:	00078413          	mv	s0,a5
     ee0:	0db12c23          	sw	s11,216(sp)
     ee4:	0d912e23          	sw	s9,220(sp)
     ee8:	0cd12623          	sw	a3,204(sp)
     eec:	00011cb7          	lui	s9,0x11
     ef0:	0c012023          	sw	zero,192(sp)
     ef4:	0c012223          	sw	zero,196(sp)
     ef8:	0c012423          	sw	zero,200(sp)
     efc:	790070ef          	jal	ra,868c <__divtf3>
     f00:	820ca603          	lw	a2,-2016(s9) # 10820 <__clz_tab+0x170>
     f04:	824ca683          	lw	a3,-2012(s9)
     f08:	000c0513          	mv	a0,s8
     f0c:	000b8593          	mv	a1,s7
     f10:	25c050ef          	jal	ra,616c <__muldf3>
     f14:	00040693          	mv	a3,s0
     f18:	00048613          	mv	a2,s1
     f1c:	250050ef          	jal	ra,616c <__muldf3>
     f20:	00058613          	mv	a2,a1
     f24:	00050593          	mv	a1,a0
     f28:	0e010513          	addi	a0,sp,224
     f2c:	0e012c03          	lw	s8,224(sp)
     f30:	0e412b83          	lw	s7,228(sp)
     f34:	0e812483          	lw	s1,232(sp)
     f38:	0ec12403          	lw	s0,236(sp)
     f3c:	0280b0ef          	jal	ra,bf64 <__extenddftf2>
     f40:	0e012783          	lw	a5,224(sp)
     f44:	0b010613          	addi	a2,sp,176
     f48:	0c010593          	addi	a1,sp,192
     f4c:	0cf12023          	sw	a5,192(sp)
     f50:	0e412783          	lw	a5,228(sp)
     f54:	0d010513          	addi	a0,sp,208
     f58:	0b812823          	sw	s8,176(sp)
     f5c:	0cf12223          	sw	a5,196(sp)
     f60:	0e812783          	lw	a5,232(sp)
     f64:	0b712a23          	sw	s7,180(sp)
     f68:	0a912c23          	sw	s1,184(sp)
     f6c:	0cf12423          	sw	a5,200(sp)
     f70:	0ec12783          	lw	a5,236(sp)
     f74:	0a812e23          	sw	s0,188(sp)
     f78:	0cf12623          	sw	a5,204(sp)
     f7c:	2cd090ef          	jal	ra,aa48 <__subtf3>
     f80:	0d012783          	lw	a5,208(sp)
     f84:	0c010513          	addi	a0,sp,192
     f88:	0cf12023          	sw	a5,192(sp)
     f8c:	0d412783          	lw	a5,212(sp)
     f90:	0cf12223          	sw	a5,196(sp)
     f94:	0d812783          	lw	a5,216(sp)
     f98:	0cf12423          	sw	a5,200(sp)
     f9c:	0dc12783          	lw	a5,220(sp)
     fa0:	0cf12623          	sw	a5,204(sp)
     fa4:	1b80b0ef          	jal	ra,c15c <__trunctfdf2>
     fa8:	13412683          	lw	a3,308(sp)
     fac:	00a6a023          	sw	a0,0(a3) # 40008000 <soln_cnt0+0x3fff7524>
     fb0:	00b6a223          	sw	a1,4(a3)
     fb4:	000a8513          	mv	a0,s5
     fb8:	000a0593          	mv	a1,s4
     fbc:	520000ef          	jal	ra,14dc <sqrt>
     fc0:	000116b7          	lui	a3,0x11
     fc4:	8586a603          	lw	a2,-1960(a3) # 10858 <__clz_tab+0x1a8>
     fc8:	85c6a683          	lw	a3,-1956(a3)
     fcc:	00050713          	mv	a4,a0
     fd0:	00058793          	mv	a5,a1
     fd4:	00098513          	mv	a0,s3
     fd8:	00090593          	mv	a1,s2
     fdc:	00e12623          	sw	a4,12(sp)
     fe0:	00f12423          	sw	a5,8(sp)
     fe4:	779030ef          	jal	ra,4f5c <__adddf3>
     fe8:	850b2603          	lw	a2,-1968(s6)
     fec:	854b2683          	lw	a3,-1964(s6)
     ff0:	748040ef          	jal	ra,5738 <__divdf3>
     ff4:	1a4000ef          	jal	ra,1198 <cos>
     ff8:	00c12703          	lw	a4,12(sp)
     ffc:	00812783          	lw	a5,8(sp)
    1000:	820ca603          	lw	a2,-2016(s9)
    1004:	824ca683          	lw	a3,-2012(s9)
    1008:	00050d93          	mv	s11,a0
    100c:	00058d13          	mv	s10,a1
    1010:	00070513          	mv	a0,a4
    1014:	00078593          	mv	a1,a5
    1018:	154050ef          	jal	ra,616c <__muldf3>
    101c:	000d0693          	mv	a3,s10
    1020:	000d8613          	mv	a2,s11
    1024:	148050ef          	jal	ra,616c <__muldf3>
    1028:	00058613          	mv	a2,a1
    102c:	00050593          	mv	a1,a0
    1030:	0e010513          	addi	a0,sp,224
    1034:	7310a0ef          	jal	ra,bf64 <__extenddftf2>
    1038:	0e012783          	lw	a5,224(sp)
    103c:	0b010613          	addi	a2,sp,176
    1040:	0c010593          	addi	a1,sp,192
    1044:	0cf12023          	sw	a5,192(sp)
    1048:	0e412783          	lw	a5,228(sp)
    104c:	0d010513          	addi	a0,sp,208
    1050:	0b812823          	sw	s8,176(sp)
    1054:	0cf12223          	sw	a5,196(sp)
    1058:	0e812783          	lw	a5,232(sp)
    105c:	0b712a23          	sw	s7,180(sp)
    1060:	0a912c23          	sw	s1,184(sp)
    1064:	0cf12423          	sw	a5,200(sp)
    1068:	0ec12783          	lw	a5,236(sp)
    106c:	0a812e23          	sw	s0,188(sp)
    1070:	0cf12623          	sw	a5,204(sp)
    1074:	1d5090ef          	jal	ra,aa48 <__subtf3>
    1078:	0d012783          	lw	a5,208(sp)
    107c:	0c010513          	addi	a0,sp,192
    1080:	0cf12023          	sw	a5,192(sp)
    1084:	0d412783          	lw	a5,212(sp)
    1088:	0cf12223          	sw	a5,196(sp)
    108c:	0d812783          	lw	a5,216(sp)
    1090:	0cf12423          	sw	a5,200(sp)
    1094:	0dc12783          	lw	a5,220(sp)
    1098:	0cf12623          	sw	a5,204(sp)
    109c:	0c00b0ef          	jal	ra,c15c <__trunctfdf2>
    10a0:	13412683          	lw	a3,308(sp)
    10a4:	00a6a423          	sw	a0,8(a3)
    10a8:	00b6a623          	sw	a1,12(a3)
    10ac:	000a8513          	mv	a0,s5
    10b0:	000a0593          	mv	a1,s4
    10b4:	428000ef          	jal	ra,14dc <sqrt>
    10b8:	000117b7          	lui	a5,0x11
    10bc:	8607a603          	lw	a2,-1952(a5) # 10860 <__clz_tab+0x1b0>
    10c0:	8647a683          	lw	a3,-1948(a5)
    10c4:	00050a93          	mv	s5,a0
    10c8:	00058a13          	mv	s4,a1
    10cc:	00098513          	mv	a0,s3
    10d0:	00090593          	mv	a1,s2
    10d4:	689030ef          	jal	ra,4f5c <__adddf3>
    10d8:	850b2603          	lw	a2,-1968(s6)
    10dc:	854b2683          	lw	a3,-1964(s6)
    10e0:	658040ef          	jal	ra,5738 <__divdf3>
    10e4:	0b4000ef          	jal	ra,1198 <cos>
    10e8:	820ca603          	lw	a2,-2016(s9)
    10ec:	824ca683          	lw	a3,-2012(s9)
    10f0:	00050993          	mv	s3,a0
    10f4:	00058913          	mv	s2,a1
    10f8:	000a8513          	mv	a0,s5
    10fc:	000a0593          	mv	a1,s4
    1100:	06c050ef          	jal	ra,616c <__muldf3>
    1104:	00090693          	mv	a3,s2
    1108:	00098613          	mv	a2,s3
    110c:	060050ef          	jal	ra,616c <__muldf3>
    1110:	00058613          	mv	a2,a1
    1114:	00050593          	mv	a1,a0
    1118:	0e010513          	addi	a0,sp,224
    111c:	6490a0ef          	jal	ra,bf64 <__extenddftf2>
    1120:	0e012783          	lw	a5,224(sp)
    1124:	0b010613          	addi	a2,sp,176
    1128:	0c010593          	addi	a1,sp,192
    112c:	0cf12023          	sw	a5,192(sp)
    1130:	0e412783          	lw	a5,228(sp)
    1134:	0d010513          	addi	a0,sp,208
    1138:	0b812823          	sw	s8,176(sp)
    113c:	0cf12223          	sw	a5,196(sp)
    1140:	0e812783          	lw	a5,232(sp)
    1144:	0b712a23          	sw	s7,180(sp)
    1148:	0a912c23          	sw	s1,184(sp)
    114c:	0cf12423          	sw	a5,200(sp)
    1150:	0ec12783          	lw	a5,236(sp)
    1154:	0a812e23          	sw	s0,188(sp)
    1158:	0cf12623          	sw	a5,204(sp)
    115c:	0ed090ef          	jal	ra,aa48 <__subtf3>
    1160:	0d012783          	lw	a5,208(sp)
    1164:	0c010513          	addi	a0,sp,192
    1168:	0cf12023          	sw	a5,192(sp)
    116c:	0d412783          	lw	a5,212(sp)
    1170:	0cf12223          	sw	a5,196(sp)
    1174:	0d812783          	lw	a5,216(sp)
    1178:	0cf12423          	sw	a5,200(sp)
    117c:	0dc12783          	lw	a5,220(sp)
    1180:	0cf12623          	sw	a5,204(sp)
    1184:	7d90a0ef          	jal	ra,c15c <__trunctfdf2>
    1188:	13412783          	lw	a5,308(sp)
    118c:	00a7a823          	sw	a0,16(a5)
    1190:	00b7aa23          	sw	a1,20(a5)
    1194:	c2dff06f          	j	dc0 <SolveCubic+0x700>

00001198 <cos>:
    1198:	fe010113          	addi	sp,sp,-32
    119c:	00112e23          	sw	ra,28(sp)
    11a0:	00159793          	slli	a5,a1,0x1
    11a4:	0017d793          	srli	a5,a5,0x1
    11a8:	3fe926b7          	lui	a3,0x3fe92
    11ac:	1fb68693          	addi	a3,a3,507 # 3fe921fb <soln_cnt0+0x3fe8171f>
    11b0:	02f6da63          	bge	a3,a5,11e4 <cos+0x4c>
    11b4:	7ff006b7          	lui	a3,0x7ff00
    11b8:	02d7ce63          	blt	a5,a3,11f4 <cos+0x5c>
    11bc:	00050613          	mv	a2,a0
    11c0:	00058693          	mv	a3,a1
    11c4:	674050ef          	jal	ra,6838 <__subdf3>
    11c8:	00050713          	mv	a4,a0
    11cc:	00058793          	mv	a5,a1
    11d0:	00070513          	mv	a0,a4
    11d4:	00078593          	mv	a1,a5
    11d8:	01c12083          	lw	ra,28(sp)
    11dc:	02010113          	addi	sp,sp,32
    11e0:	00008067          	ret
    11e4:	00000613          	li	a2,0
    11e8:	00000693          	li	a3,0
    11ec:	32c020ef          	jal	ra,3518 <__kernel_cos>
    11f0:	fd9ff06f          	j	11c8 <cos+0x30>
    11f4:	00010613          	mv	a2,sp
    11f8:	219010ef          	jal	ra,2c10 <__ieee754_rem_pio2>
    11fc:	00357513          	andi	a0,a0,3
    1200:	00100793          	li	a5,1
    1204:	04f50263          	beq	a0,a5,1248 <cos+0xb0>
    1208:	00200793          	li	a5,2
    120c:	06f50063          	beq	a0,a5,126c <cos+0xd4>
    1210:	02050063          	beqz	a0,1230 <cos+0x98>
    1214:	00100713          	li	a4,1
    1218:	00812603          	lw	a2,8(sp)
    121c:	00c12683          	lw	a3,12(sp)
    1220:	00012503          	lw	a0,0(sp)
    1224:	00412583          	lw	a1,4(sp)
    1228:	3bc030ef          	jal	ra,45e4 <__kernel_sin>
    122c:	f9dff06f          	j	11c8 <cos+0x30>
    1230:	00812603          	lw	a2,8(sp)
    1234:	00c12683          	lw	a3,12(sp)
    1238:	00012503          	lw	a0,0(sp)
    123c:	00412583          	lw	a1,4(sp)
    1240:	2d8020ef          	jal	ra,3518 <__kernel_cos>
    1244:	f85ff06f          	j	11c8 <cos+0x30>
    1248:	00100713          	li	a4,1
    124c:	00812603          	lw	a2,8(sp)
    1250:	00c12683          	lw	a3,12(sp)
    1254:	00012503          	lw	a0,0(sp)
    1258:	00412583          	lw	a1,4(sp)
    125c:	388030ef          	jal	ra,45e4 <__kernel_sin>
    1260:	800007b7          	lui	a5,0x80000
    1264:	00b7c5b3          	xor	a1,a5,a1
    1268:	f61ff06f          	j	11c8 <cos+0x30>
    126c:	00812603          	lw	a2,8(sp)
    1270:	00c12683          	lw	a3,12(sp)
    1274:	00012503          	lw	a0,0(sp)
    1278:	00412583          	lw	a1,4(sp)
    127c:	29c020ef          	jal	ra,3518 <__kernel_cos>
    1280:	800007b7          	lui	a5,0x80000
    1284:	00b7c5b3          	xor	a1,a5,a1
    1288:	f41ff06f          	j	11c8 <cos+0x30>

0000128c <acos>:
    128c:	fe010113          	addi	sp,sp,-32
    1290:	00112e23          	sw	ra,28(sp)
    1294:	00812c23          	sw	s0,24(sp)
    1298:	00912a23          	sw	s1,20(sp)
    129c:	01212823          	sw	s2,16(sp)
    12a0:	01312623          	sw	s3,12(sp)
    12a4:	00050493          	mv	s1,a0
    12a8:	00058413          	mv	s0,a1
    12ac:	2dc000ef          	jal	ra,1588 <__ieee754_acos>
    12b0:	00050993          	mv	s3,a0
    12b4:	00058913          	mv	s2,a1
    12b8:	00048613          	mv	a2,s1
    12bc:	00040693          	mv	a3,s0
    12c0:	00048513          	mv	a0,s1
    12c4:	00040593          	mv	a1,s0
    12c8:	561050ef          	jal	ra,7028 <__unorddf2>
    12cc:	02051263          	bnez	a0,12f0 <acos+0x64>
    12d0:	00048513          	mv	a0,s1
    12d4:	00040593          	mv	a1,s0
    12d8:	071030ef          	jal	ra,4b48 <fabs>
    12dc:	000107b7          	lui	a5,0x10
    12e0:	7c07a603          	lw	a2,1984(a5) # 107c0 <__clz_tab+0x110>
    12e4:	7c47a683          	lw	a3,1988(a5)
    12e8:	4bd040ef          	jal	ra,5fa4 <__gedf2>
    12ec:	02a04463          	bgtz	a0,1314 <acos+0x88>
    12f0:	00098513          	mv	a0,s3
    12f4:	00090593          	mv	a1,s2
    12f8:	01c12083          	lw	ra,28(sp)
    12fc:	01812403          	lw	s0,24(sp)
    1300:	01412483          	lw	s1,20(sp)
    1304:	01012903          	lw	s2,16(sp)
    1308:	00c12983          	lw	s3,12(sp)
    130c:	02010113          	addi	sp,sp,32
    1310:	00008067          	ret
    1314:	2b80b0ef          	jal	ra,c5cc <__errno>
    1318:	02100793          	li	a5,33
    131c:	00f52023          	sw	a5,0(a0)
    1320:	00011537          	lui	a0,0x11
    1324:	aa850513          	addi	a0,a0,-1368 # 10aa8 <__clz_tab+0x3f8>
    1328:	239030ef          	jal	ra,4d60 <nan>
    132c:	00050993          	mv	s3,a0
    1330:	00058913          	mv	s2,a1
    1334:	fbdff06f          	j	12f0 <acos+0x64>

00001338 <pow>:
    1338:	fe010113          	addi	sp,sp,-32
    133c:	00112e23          	sw	ra,28(sp)
    1340:	00812c23          	sw	s0,24(sp)
    1344:	00912a23          	sw	s1,20(sp)
    1348:	01212823          	sw	s2,16(sp)
    134c:	01312623          	sw	s3,12(sp)
    1350:	01412423          	sw	s4,8(sp)
    1354:	01512223          	sw	s5,4(sp)
    1358:	00050a93          	mv	s5,a0
    135c:	00058a13          	mv	s4,a1
    1360:	00060493          	mv	s1,a2
    1364:	00068413          	mv	s0,a3
    1368:	0a9000ef          	jal	ra,1c10 <__ieee754_pow>
    136c:	00050993          	mv	s3,a0
    1370:	00058913          	mv	s2,a1
    1374:	00048613          	mv	a2,s1
    1378:	00040693          	mv	a3,s0
    137c:	00048513          	mv	a0,s1
    1380:	00040593          	mv	a1,s0
    1384:	4a5050ef          	jal	ra,7028 <__unorddf2>
    1388:	04051063          	bnez	a0,13c8 <pow+0x90>
    138c:	00000613          	li	a2,0
    1390:	00000693          	li	a3,0
    1394:	000a8513          	mv	a0,s5
    1398:	000a0593          	mv	a1,s4
    139c:	37d040ef          	jal	ra,5f18 <__eqdf2>
    13a0:	08051663          	bnez	a0,142c <pow+0xf4>
    13a4:	00000613          	li	a2,0
    13a8:	00000693          	li	a3,0
    13ac:	00048513          	mv	a0,s1
    13b0:	00040593          	mv	a1,s0
    13b4:	365040ef          	jal	ra,5f18 <__eqdf2>
    13b8:	02051e63          	bnez	a0,13f4 <pow+0xbc>
    13bc:	000107b7          	lui	a5,0x10
    13c0:	7c07a983          	lw	s3,1984(a5) # 107c0 <__clz_tab+0x110>
    13c4:	7c47a903          	lw	s2,1988(a5)
    13c8:	00098513          	mv	a0,s3
    13cc:	00090593          	mv	a1,s2
    13d0:	01c12083          	lw	ra,28(sp)
    13d4:	01812403          	lw	s0,24(sp)
    13d8:	01412483          	lw	s1,20(sp)
    13dc:	01012903          	lw	s2,16(sp)
    13e0:	00c12983          	lw	s3,12(sp)
    13e4:	00812a03          	lw	s4,8(sp)
    13e8:	00412a83          	lw	s5,4(sp)
    13ec:	02010113          	addi	sp,sp,32
    13f0:	00008067          	ret
    13f4:	00048513          	mv	a0,s1
    13f8:	00040593          	mv	a1,s0
    13fc:	764030ef          	jal	ra,4b60 <finite>
    1400:	fc0504e3          	beqz	a0,13c8 <pow+0x90>
    1404:	00000613          	li	a2,0
    1408:	00000693          	li	a3,0
    140c:	00048513          	mv	a0,s1
    1410:	00040593          	mv	a1,s0
    1414:	475040ef          	jal	ra,6088 <__ledf2>
    1418:	fa0558e3          	bgez	a0,13c8 <pow+0x90>
    141c:	1b00b0ef          	jal	ra,c5cc <__errno>
    1420:	02200793          	li	a5,34
    1424:	00f52023          	sw	a5,0(a0)
    1428:	fa1ff06f          	j	13c8 <pow+0x90>
    142c:	00098513          	mv	a0,s3
    1430:	00090593          	mv	a1,s2
    1434:	72c030ef          	jal	ra,4b60 <finite>
    1438:	04050663          	beqz	a0,1484 <pow+0x14c>
    143c:	00000613          	li	a2,0
    1440:	00000693          	li	a3,0
    1444:	00098513          	mv	a0,s3
    1448:	00090593          	mv	a1,s2
    144c:	2cd040ef          	jal	ra,5f18 <__eqdf2>
    1450:	f6051ce3          	bnez	a0,13c8 <pow+0x90>
    1454:	000a8513          	mv	a0,s5
    1458:	000a0593          	mv	a1,s4
    145c:	704030ef          	jal	ra,4b60 <finite>
    1460:	f60504e3          	beqz	a0,13c8 <pow+0x90>
    1464:	00048513          	mv	a0,s1
    1468:	00040593          	mv	a1,s0
    146c:	6f4030ef          	jal	ra,4b60 <finite>
    1470:	f4050ce3          	beqz	a0,13c8 <pow+0x90>
    1474:	1580b0ef          	jal	ra,c5cc <__errno>
    1478:	02200793          	li	a5,34
    147c:	00f52023          	sw	a5,0(a0)
    1480:	f49ff06f          	j	13c8 <pow+0x90>
    1484:	000a8513          	mv	a0,s5
    1488:	000a0593          	mv	a1,s4
    148c:	6d4030ef          	jal	ra,4b60 <finite>
    1490:	fa0506e3          	beqz	a0,143c <pow+0x104>
    1494:	00048513          	mv	a0,s1
    1498:	00040593          	mv	a1,s0
    149c:	6c4030ef          	jal	ra,4b60 <finite>
    14a0:	f8050ee3          	beqz	a0,143c <pow+0x104>
    14a4:	00098613          	mv	a2,s3
    14a8:	00090693          	mv	a3,s2
    14ac:	00098513          	mv	a0,s3
    14b0:	00090593          	mv	a1,s2
    14b4:	375050ef          	jal	ra,7028 <__unorddf2>
    14b8:	00051a63          	bnez	a0,14cc <pow+0x194>
    14bc:	1100b0ef          	jal	ra,c5cc <__errno>
    14c0:	02200793          	li	a5,34
    14c4:	00f52023          	sw	a5,0(a0)
    14c8:	f01ff06f          	j	13c8 <pow+0x90>
    14cc:	1000b0ef          	jal	ra,c5cc <__errno>
    14d0:	02100793          	li	a5,33
    14d4:	00f52023          	sw	a5,0(a0)
    14d8:	ef1ff06f          	j	13c8 <pow+0x90>

000014dc <sqrt>:
    14dc:	fe010113          	addi	sp,sp,-32
    14e0:	00112e23          	sw	ra,28(sp)
    14e4:	00812c23          	sw	s0,24(sp)
    14e8:	00912a23          	sw	s1,20(sp)
    14ec:	01212823          	sw	s2,16(sp)
    14f0:	01312623          	sw	s3,12(sp)
    14f4:	00050493          	mv	s1,a0
    14f8:	00058413          	mv	s0,a1
    14fc:	599010ef          	jal	ra,3294 <__ieee754_sqrt>
    1500:	00050993          	mv	s3,a0
    1504:	00058913          	mv	s2,a1
    1508:	00048613          	mv	a2,s1
    150c:	00040693          	mv	a3,s0
    1510:	00048513          	mv	a0,s1
    1514:	00040593          	mv	a1,s0
    1518:	311050ef          	jal	ra,7028 <__unorddf2>
    151c:	00051e63          	bnez	a0,1538 <sqrt+0x5c>
    1520:	00000613          	li	a2,0
    1524:	00000693          	li	a3,0
    1528:	00048513          	mv	a0,s1
    152c:	00040593          	mv	a1,s0
    1530:	359040ef          	jal	ra,6088 <__ledf2>
    1534:	02054463          	bltz	a0,155c <sqrt+0x80>
    1538:	00098513          	mv	a0,s3
    153c:	00090593          	mv	a1,s2
    1540:	01c12083          	lw	ra,28(sp)
    1544:	01812403          	lw	s0,24(sp)
    1548:	01412483          	lw	s1,20(sp)
    154c:	01012903          	lw	s2,16(sp)
    1550:	00c12983          	lw	s3,12(sp)
    1554:	02010113          	addi	sp,sp,32
    1558:	00008067          	ret
    155c:	0700b0ef          	jal	ra,c5cc <__errno>
    1560:	02100793          	li	a5,33
    1564:	00f52023          	sw	a5,0(a0)
    1568:	00000613          	li	a2,0
    156c:	00000693          	li	a3,0
    1570:	00060513          	mv	a0,a2
    1574:	00068593          	mv	a1,a3
    1578:	1c0040ef          	jal	ra,5738 <__divdf3>
    157c:	00050993          	mv	s3,a0
    1580:	00058913          	mv	s2,a1
    1584:	fb5ff06f          	j	1538 <sqrt+0x5c>

00001588 <__ieee754_acos>:
    1588:	fd010113          	addi	sp,sp,-48
    158c:	02112623          	sw	ra,44(sp)
    1590:	02812423          	sw	s0,40(sp)
    1594:	02912223          	sw	s1,36(sp)
    1598:	03212023          	sw	s2,32(sp)
    159c:	01312e23          	sw	s3,28(sp)
    15a0:	01412c23          	sw	s4,24(sp)
    15a4:	01512a23          	sw	s5,20(sp)
    15a8:	01612823          	sw	s6,16(sp)
    15ac:	01712623          	sw	s7,12(sp)
    15b0:	01812423          	sw	s8,8(sp)
    15b4:	00050493          	mv	s1,a0
    15b8:	00058413          	mv	s0,a1
    15bc:	00159793          	slli	a5,a1,0x1
    15c0:	0017d793          	srli	a5,a5,0x1
    15c4:	3ff00737          	lui	a4,0x3ff00
    15c8:	08e7c863          	blt	a5,a4,1658 <__ieee754_acos+0xd0>
    15cc:	c0100737          	lui	a4,0xc0100
    15d0:	00e787b3          	add	a5,a5,a4
    15d4:	00a7e7b3          	or	a5,a5,a0
    15d8:	04079a63          	bnez	a5,162c <__ieee754_acos+0xa4>
    15dc:	00000713          	li	a4,0
    15e0:	02b05e63          	blez	a1,161c <__ieee754_acos+0x94>
    15e4:	00070513          	mv	a0,a4
    15e8:	00078593          	mv	a1,a5
    15ec:	02c12083          	lw	ra,44(sp)
    15f0:	02812403          	lw	s0,40(sp)
    15f4:	02412483          	lw	s1,36(sp)
    15f8:	02012903          	lw	s2,32(sp)
    15fc:	01c12983          	lw	s3,28(sp)
    1600:	01812a03          	lw	s4,24(sp)
    1604:	01412a83          	lw	s5,20(sp)
    1608:	01012b03          	lw	s6,16(sp)
    160c:	00c12b83          	lw	s7,12(sp)
    1610:	00812c03          	lw	s8,8(sp)
    1614:	03010113          	addi	sp,sp,48
    1618:	00008067          	ret
    161c:	000117b7          	lui	a5,0x11
    1620:	8707a703          	lw	a4,-1936(a5) # 10870 <__clz_tab+0x1c0>
    1624:	8747a783          	lw	a5,-1932(a5)
    1628:	fbdff06f          	j	15e4 <__ieee754_acos+0x5c>
    162c:	00050613          	mv	a2,a0
    1630:	00058693          	mv	a3,a1
    1634:	00048513          	mv	a0,s1
    1638:	00040593          	mv	a1,s0
    163c:	1fc050ef          	jal	ra,6838 <__subdf3>
    1640:	00050613          	mv	a2,a0
    1644:	00058693          	mv	a3,a1
    1648:	0f0040ef          	jal	ra,5738 <__divdf3>
    164c:	00050713          	mv	a4,a0
    1650:	00058793          	mv	a5,a1
    1654:	f91ff06f          	j	15e4 <__ieee754_acos+0x5c>
    1658:	3fe00737          	lui	a4,0x3fe00
    165c:	1ae7dc63          	bge	a5,a4,1814 <__ieee754_acos+0x28c>
    1660:	3c600737          	lui	a4,0x3c600
    1664:	58f75e63          	bge	a4,a5,1c00 <__ieee754_acos+0x678>
    1668:	00050613          	mv	a2,a0
    166c:	00058693          	mv	a3,a1
    1670:	00048513          	mv	a0,s1
    1674:	00040593          	mv	a1,s0
    1678:	2f5040ef          	jal	ra,616c <__muldf3>
    167c:	00050993          	mv	s3,a0
    1680:	00058913          	mv	s2,a1
    1684:	000117b7          	lui	a5,0x11
    1688:	8807a603          	lw	a2,-1920(a5) # 10880 <__clz_tab+0x1d0>
    168c:	8847a683          	lw	a3,-1916(a5)
    1690:	2dd040ef          	jal	ra,616c <__muldf3>
    1694:	000117b7          	lui	a5,0x11
    1698:	8887a603          	lw	a2,-1912(a5) # 10888 <__clz_tab+0x1d8>
    169c:	88c7a683          	lw	a3,-1908(a5)
    16a0:	0bd030ef          	jal	ra,4f5c <__adddf3>
    16a4:	00098613          	mv	a2,s3
    16a8:	00090693          	mv	a3,s2
    16ac:	2c1040ef          	jal	ra,616c <__muldf3>
    16b0:	000117b7          	lui	a5,0x11
    16b4:	8907a603          	lw	a2,-1904(a5) # 10890 <__clz_tab+0x1e0>
    16b8:	8947a683          	lw	a3,-1900(a5)
    16bc:	17c050ef          	jal	ra,6838 <__subdf3>
    16c0:	00098613          	mv	a2,s3
    16c4:	00090693          	mv	a3,s2
    16c8:	2a5040ef          	jal	ra,616c <__muldf3>
    16cc:	000117b7          	lui	a5,0x11
    16d0:	8987a603          	lw	a2,-1896(a5) # 10898 <__clz_tab+0x1e8>
    16d4:	89c7a683          	lw	a3,-1892(a5)
    16d8:	085030ef          	jal	ra,4f5c <__adddf3>
    16dc:	00098613          	mv	a2,s3
    16e0:	00090693          	mv	a3,s2
    16e4:	289040ef          	jal	ra,616c <__muldf3>
    16e8:	000117b7          	lui	a5,0x11
    16ec:	8a07a603          	lw	a2,-1888(a5) # 108a0 <__clz_tab+0x1f0>
    16f0:	8a47a683          	lw	a3,-1884(a5)
    16f4:	144050ef          	jal	ra,6838 <__subdf3>
    16f8:	00098613          	mv	a2,s3
    16fc:	00090693          	mv	a3,s2
    1700:	26d040ef          	jal	ra,616c <__muldf3>
    1704:	000117b7          	lui	a5,0x11
    1708:	8a87a603          	lw	a2,-1880(a5) # 108a8 <__clz_tab+0x1f8>
    170c:	8ac7a683          	lw	a3,-1876(a5)
    1710:	04d030ef          	jal	ra,4f5c <__adddf3>
    1714:	00098613          	mv	a2,s3
    1718:	00090693          	mv	a3,s2
    171c:	251040ef          	jal	ra,616c <__muldf3>
    1720:	00050a93          	mv	s5,a0
    1724:	00058a13          	mv	s4,a1
    1728:	000117b7          	lui	a5,0x11
    172c:	8b07a603          	lw	a2,-1872(a5) # 108b0 <__clz_tab+0x200>
    1730:	8b47a683          	lw	a3,-1868(a5)
    1734:	00098513          	mv	a0,s3
    1738:	00090593          	mv	a1,s2
    173c:	231040ef          	jal	ra,616c <__muldf3>
    1740:	000117b7          	lui	a5,0x11
    1744:	8b87a603          	lw	a2,-1864(a5) # 108b8 <__clz_tab+0x208>
    1748:	8bc7a683          	lw	a3,-1860(a5)
    174c:	0ec050ef          	jal	ra,6838 <__subdf3>
    1750:	00098613          	mv	a2,s3
    1754:	00090693          	mv	a3,s2
    1758:	215040ef          	jal	ra,616c <__muldf3>
    175c:	000117b7          	lui	a5,0x11
    1760:	8c07a603          	lw	a2,-1856(a5) # 108c0 <__clz_tab+0x210>
    1764:	8c47a683          	lw	a3,-1852(a5)
    1768:	7f4030ef          	jal	ra,4f5c <__adddf3>
    176c:	00098613          	mv	a2,s3
    1770:	00090693          	mv	a3,s2
    1774:	1f9040ef          	jal	ra,616c <__muldf3>
    1778:	000117b7          	lui	a5,0x11
    177c:	8c87a603          	lw	a2,-1848(a5) # 108c8 <__clz_tab+0x218>
    1780:	8cc7a683          	lw	a3,-1844(a5)
    1784:	0b4050ef          	jal	ra,6838 <__subdf3>
    1788:	00098613          	mv	a2,s3
    178c:	00090693          	mv	a3,s2
    1790:	1dd040ef          	jal	ra,616c <__muldf3>
    1794:	000107b7          	lui	a5,0x10
    1798:	7c07a603          	lw	a2,1984(a5) # 107c0 <__clz_tab+0x110>
    179c:	7c47a683          	lw	a3,1988(a5)
    17a0:	7bc030ef          	jal	ra,4f5c <__adddf3>
    17a4:	00050613          	mv	a2,a0
    17a8:	00058693          	mv	a3,a1
    17ac:	000a8513          	mv	a0,s5
    17b0:	000a0593          	mv	a1,s4
    17b4:	785030ef          	jal	ra,5738 <__divdf3>
    17b8:	00048613          	mv	a2,s1
    17bc:	00040693          	mv	a3,s0
    17c0:	1ad040ef          	jal	ra,616c <__muldf3>
    17c4:	00050613          	mv	a2,a0
    17c8:	00058693          	mv	a3,a1
    17cc:	000117b7          	lui	a5,0x11
    17d0:	8d07a503          	lw	a0,-1840(a5) # 108d0 <__clz_tab+0x220>
    17d4:	8d47a583          	lw	a1,-1836(a5)
    17d8:	060050ef          	jal	ra,6838 <__subdf3>
    17dc:	00050613          	mv	a2,a0
    17e0:	00058693          	mv	a3,a1
    17e4:	00048513          	mv	a0,s1
    17e8:	00040593          	mv	a1,s0
    17ec:	04c050ef          	jal	ra,6838 <__subdf3>
    17f0:	00050613          	mv	a2,a0
    17f4:	00058693          	mv	a3,a1
    17f8:	000117b7          	lui	a5,0x11
    17fc:	8787a503          	lw	a0,-1928(a5) # 10878 <__clz_tab+0x1c8>
    1800:	87c7a583          	lw	a1,-1924(a5)
    1804:	034050ef          	jal	ra,6838 <__subdf3>
    1808:	00050713          	mv	a4,a0
    180c:	00058793          	mv	a5,a1
    1810:	dd5ff06f          	j	15e4 <__ieee754_acos+0x5c>
    1814:	2205c063          	bltz	a1,1a34 <__ieee754_acos+0x4ac>
    1818:	00010c37          	lui	s8,0x10
    181c:	00050613          	mv	a2,a0
    1820:	00058693          	mv	a3,a1
    1824:	7c0c2503          	lw	a0,1984(s8) # 107c0 <__clz_tab+0x110>
    1828:	7c4c2583          	lw	a1,1988(s8)
    182c:	00c050ef          	jal	ra,6838 <__subdf3>
    1830:	000117b7          	lui	a5,0x11
    1834:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    1838:	82c7a683          	lw	a3,-2004(a5)
    183c:	131040ef          	jal	ra,616c <__muldf3>
    1840:	00050493          	mv	s1,a0
    1844:	00058413          	mv	s0,a1
    1848:	24d010ef          	jal	ra,3294 <__ieee754_sqrt>
    184c:	00050a93          	mv	s5,a0
    1850:	00058a13          	mv	s4,a1
    1854:	00000993          	li	s3,0
    1858:	000117b7          	lui	a5,0x11
    185c:	8807a603          	lw	a2,-1920(a5) # 10880 <__clz_tab+0x1d0>
    1860:	8847a683          	lw	a3,-1916(a5)
    1864:	00048513          	mv	a0,s1
    1868:	00040593          	mv	a1,s0
    186c:	101040ef          	jal	ra,616c <__muldf3>
    1870:	000117b7          	lui	a5,0x11
    1874:	8887a603          	lw	a2,-1912(a5) # 10888 <__clz_tab+0x1d8>
    1878:	88c7a683          	lw	a3,-1908(a5)
    187c:	6e0030ef          	jal	ra,4f5c <__adddf3>
    1880:	00048613          	mv	a2,s1
    1884:	00040693          	mv	a3,s0
    1888:	0e5040ef          	jal	ra,616c <__muldf3>
    188c:	000117b7          	lui	a5,0x11
    1890:	8907a603          	lw	a2,-1904(a5) # 10890 <__clz_tab+0x1e0>
    1894:	8947a683          	lw	a3,-1900(a5)
    1898:	7a1040ef          	jal	ra,6838 <__subdf3>
    189c:	00048613          	mv	a2,s1
    18a0:	00040693          	mv	a3,s0
    18a4:	0c9040ef          	jal	ra,616c <__muldf3>
    18a8:	000117b7          	lui	a5,0x11
    18ac:	8987a603          	lw	a2,-1896(a5) # 10898 <__clz_tab+0x1e8>
    18b0:	89c7a683          	lw	a3,-1892(a5)
    18b4:	6a8030ef          	jal	ra,4f5c <__adddf3>
    18b8:	00048613          	mv	a2,s1
    18bc:	00040693          	mv	a3,s0
    18c0:	0ad040ef          	jal	ra,616c <__muldf3>
    18c4:	000117b7          	lui	a5,0x11
    18c8:	8a07a603          	lw	a2,-1888(a5) # 108a0 <__clz_tab+0x1f0>
    18cc:	8a47a683          	lw	a3,-1884(a5)
    18d0:	769040ef          	jal	ra,6838 <__subdf3>
    18d4:	00048613          	mv	a2,s1
    18d8:	00040693          	mv	a3,s0
    18dc:	091040ef          	jal	ra,616c <__muldf3>
    18e0:	000117b7          	lui	a5,0x11
    18e4:	8a87a603          	lw	a2,-1880(a5) # 108a8 <__clz_tab+0x1f8>
    18e8:	8ac7a683          	lw	a3,-1876(a5)
    18ec:	670030ef          	jal	ra,4f5c <__adddf3>
    18f0:	00048613          	mv	a2,s1
    18f4:	00040693          	mv	a3,s0
    18f8:	075040ef          	jal	ra,616c <__muldf3>
    18fc:	00050b93          	mv	s7,a0
    1900:	00058b13          	mv	s6,a1
    1904:	000117b7          	lui	a5,0x11
    1908:	8b07a603          	lw	a2,-1872(a5) # 108b0 <__clz_tab+0x200>
    190c:	8b47a683          	lw	a3,-1868(a5)
    1910:	00048513          	mv	a0,s1
    1914:	00040593          	mv	a1,s0
    1918:	055040ef          	jal	ra,616c <__muldf3>
    191c:	000117b7          	lui	a5,0x11
    1920:	8b87a603          	lw	a2,-1864(a5) # 108b8 <__clz_tab+0x208>
    1924:	8bc7a683          	lw	a3,-1860(a5)
    1928:	711040ef          	jal	ra,6838 <__subdf3>
    192c:	00048613          	mv	a2,s1
    1930:	00040693          	mv	a3,s0
    1934:	039040ef          	jal	ra,616c <__muldf3>
    1938:	000117b7          	lui	a5,0x11
    193c:	8c07a603          	lw	a2,-1856(a5) # 108c0 <__clz_tab+0x210>
    1940:	8c47a683          	lw	a3,-1852(a5)
    1944:	618030ef          	jal	ra,4f5c <__adddf3>
    1948:	00048613          	mv	a2,s1
    194c:	00040693          	mv	a3,s0
    1950:	01d040ef          	jal	ra,616c <__muldf3>
    1954:	000117b7          	lui	a5,0x11
    1958:	8c87a603          	lw	a2,-1848(a5) # 108c8 <__clz_tab+0x218>
    195c:	8cc7a683          	lw	a3,-1844(a5)
    1960:	6d9040ef          	jal	ra,6838 <__subdf3>
    1964:	00048613          	mv	a2,s1
    1968:	00040693          	mv	a3,s0
    196c:	001040ef          	jal	ra,616c <__muldf3>
    1970:	7c0c2603          	lw	a2,1984(s8)
    1974:	7c4c2683          	lw	a3,1988(s8)
    1978:	5e4030ef          	jal	ra,4f5c <__adddf3>
    197c:	00050613          	mv	a2,a0
    1980:	00058693          	mv	a3,a1
    1984:	000b8513          	mv	a0,s7
    1988:	000b0593          	mv	a1,s6
    198c:	5ad030ef          	jal	ra,5738 <__divdf3>
    1990:	000a8613          	mv	a2,s5
    1994:	000a0693          	mv	a3,s4
    1998:	7d4040ef          	jal	ra,616c <__muldf3>
    199c:	00050b93          	mv	s7,a0
    19a0:	00058b13          	mv	s6,a1
    19a4:	00098613          	mv	a2,s3
    19a8:	000a0693          	mv	a3,s4
    19ac:	00098513          	mv	a0,s3
    19b0:	000a0593          	mv	a1,s4
    19b4:	7b8040ef          	jal	ra,616c <__muldf3>
    19b8:	00050613          	mv	a2,a0
    19bc:	00058693          	mv	a3,a1
    19c0:	00048513          	mv	a0,s1
    19c4:	00040593          	mv	a1,s0
    19c8:	671040ef          	jal	ra,6838 <__subdf3>
    19cc:	00050493          	mv	s1,a0
    19d0:	00058413          	mv	s0,a1
    19d4:	00098613          	mv	a2,s3
    19d8:	000a0693          	mv	a3,s4
    19dc:	000a8513          	mv	a0,s5
    19e0:	000a0593          	mv	a1,s4
    19e4:	578030ef          	jal	ra,4f5c <__adddf3>
    19e8:	00050613          	mv	a2,a0
    19ec:	00058693          	mv	a3,a1
    19f0:	00048513          	mv	a0,s1
    19f4:	00040593          	mv	a1,s0
    19f8:	541030ef          	jal	ra,5738 <__divdf3>
    19fc:	00050613          	mv	a2,a0
    1a00:	00058693          	mv	a3,a1
    1a04:	000b8513          	mv	a0,s7
    1a08:	000b0593          	mv	a1,s6
    1a0c:	550030ef          	jal	ra,4f5c <__adddf3>
    1a10:	00098613          	mv	a2,s3
    1a14:	000a0693          	mv	a3,s4
    1a18:	544030ef          	jal	ra,4f5c <__adddf3>
    1a1c:	00050613          	mv	a2,a0
    1a20:	00058693          	mv	a3,a1
    1a24:	538030ef          	jal	ra,4f5c <__adddf3>
    1a28:	00050713          	mv	a4,a0
    1a2c:	00058793          	mv	a5,a1
    1a30:	bb5ff06f          	j	15e4 <__ieee754_acos+0x5c>
    1a34:	00010b37          	lui	s6,0x10
    1a38:	7c0b2603          	lw	a2,1984(s6) # 107c0 <__clz_tab+0x110>
    1a3c:	7c4b2683          	lw	a3,1988(s6)
    1a40:	00048513          	mv	a0,s1
    1a44:	00040593          	mv	a1,s0
    1a48:	514030ef          	jal	ra,4f5c <__adddf3>
    1a4c:	000117b7          	lui	a5,0x11
    1a50:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    1a54:	82c7a683          	lw	a3,-2004(a5)
    1a58:	714040ef          	jal	ra,616c <__muldf3>
    1a5c:	00050493          	mv	s1,a0
    1a60:	00058413          	mv	s0,a1
    1a64:	000117b7          	lui	a5,0x11
    1a68:	8807a603          	lw	a2,-1920(a5) # 10880 <__clz_tab+0x1d0>
    1a6c:	8847a683          	lw	a3,-1916(a5)
    1a70:	6fc040ef          	jal	ra,616c <__muldf3>
    1a74:	000117b7          	lui	a5,0x11
    1a78:	8887a603          	lw	a2,-1912(a5) # 10888 <__clz_tab+0x1d8>
    1a7c:	88c7a683          	lw	a3,-1908(a5)
    1a80:	4dc030ef          	jal	ra,4f5c <__adddf3>
    1a84:	00048613          	mv	a2,s1
    1a88:	00040693          	mv	a3,s0
    1a8c:	6e0040ef          	jal	ra,616c <__muldf3>
    1a90:	000117b7          	lui	a5,0x11
    1a94:	8907a603          	lw	a2,-1904(a5) # 10890 <__clz_tab+0x1e0>
    1a98:	8947a683          	lw	a3,-1900(a5)
    1a9c:	59d040ef          	jal	ra,6838 <__subdf3>
    1aa0:	00048613          	mv	a2,s1
    1aa4:	00040693          	mv	a3,s0
    1aa8:	6c4040ef          	jal	ra,616c <__muldf3>
    1aac:	000117b7          	lui	a5,0x11
    1ab0:	8987a603          	lw	a2,-1896(a5) # 10898 <__clz_tab+0x1e8>
    1ab4:	89c7a683          	lw	a3,-1892(a5)
    1ab8:	4a4030ef          	jal	ra,4f5c <__adddf3>
    1abc:	00048613          	mv	a2,s1
    1ac0:	00040693          	mv	a3,s0
    1ac4:	6a8040ef          	jal	ra,616c <__muldf3>
    1ac8:	000117b7          	lui	a5,0x11
    1acc:	8a07a603          	lw	a2,-1888(a5) # 108a0 <__clz_tab+0x1f0>
    1ad0:	8a47a683          	lw	a3,-1884(a5)
    1ad4:	565040ef          	jal	ra,6838 <__subdf3>
    1ad8:	00048613          	mv	a2,s1
    1adc:	00040693          	mv	a3,s0
    1ae0:	68c040ef          	jal	ra,616c <__muldf3>
    1ae4:	000117b7          	lui	a5,0x11
    1ae8:	8a87a603          	lw	a2,-1880(a5) # 108a8 <__clz_tab+0x1f8>
    1aec:	8ac7a683          	lw	a3,-1876(a5)
    1af0:	46c030ef          	jal	ra,4f5c <__adddf3>
    1af4:	00048613          	mv	a2,s1
    1af8:	00040693          	mv	a3,s0
    1afc:	670040ef          	jal	ra,616c <__muldf3>
    1b00:	00050a93          	mv	s5,a0
    1b04:	00058a13          	mv	s4,a1
    1b08:	00048513          	mv	a0,s1
    1b0c:	00040593          	mv	a1,s0
    1b10:	784010ef          	jal	ra,3294 <__ieee754_sqrt>
    1b14:	00050993          	mv	s3,a0
    1b18:	00058913          	mv	s2,a1
    1b1c:	000117b7          	lui	a5,0x11
    1b20:	8b07a603          	lw	a2,-1872(a5) # 108b0 <__clz_tab+0x200>
    1b24:	8b47a683          	lw	a3,-1868(a5)
    1b28:	00048513          	mv	a0,s1
    1b2c:	00040593          	mv	a1,s0
    1b30:	63c040ef          	jal	ra,616c <__muldf3>
    1b34:	000117b7          	lui	a5,0x11
    1b38:	8b87a603          	lw	a2,-1864(a5) # 108b8 <__clz_tab+0x208>
    1b3c:	8bc7a683          	lw	a3,-1860(a5)
    1b40:	4f9040ef          	jal	ra,6838 <__subdf3>
    1b44:	00048613          	mv	a2,s1
    1b48:	00040693          	mv	a3,s0
    1b4c:	620040ef          	jal	ra,616c <__muldf3>
    1b50:	000117b7          	lui	a5,0x11
    1b54:	8c07a603          	lw	a2,-1856(a5) # 108c0 <__clz_tab+0x210>
    1b58:	8c47a683          	lw	a3,-1852(a5)
    1b5c:	400030ef          	jal	ra,4f5c <__adddf3>
    1b60:	00048613          	mv	a2,s1
    1b64:	00040693          	mv	a3,s0
    1b68:	604040ef          	jal	ra,616c <__muldf3>
    1b6c:	000117b7          	lui	a5,0x11
    1b70:	8c87a603          	lw	a2,-1848(a5) # 108c8 <__clz_tab+0x218>
    1b74:	8cc7a683          	lw	a3,-1844(a5)
    1b78:	4c1040ef          	jal	ra,6838 <__subdf3>
    1b7c:	00048613          	mv	a2,s1
    1b80:	00040693          	mv	a3,s0
    1b84:	5e8040ef          	jal	ra,616c <__muldf3>
    1b88:	7c0b2603          	lw	a2,1984(s6)
    1b8c:	7c4b2683          	lw	a3,1988(s6)
    1b90:	3cc030ef          	jal	ra,4f5c <__adddf3>
    1b94:	00050613          	mv	a2,a0
    1b98:	00058693          	mv	a3,a1
    1b9c:	000a8513          	mv	a0,s5
    1ba0:	000a0593          	mv	a1,s4
    1ba4:	395030ef          	jal	ra,5738 <__divdf3>
    1ba8:	00098613          	mv	a2,s3
    1bac:	00090693          	mv	a3,s2
    1bb0:	5bc040ef          	jal	ra,616c <__muldf3>
    1bb4:	000117b7          	lui	a5,0x11
    1bb8:	8d07a603          	lw	a2,-1840(a5) # 108d0 <__clz_tab+0x220>
    1bbc:	8d47a683          	lw	a3,-1836(a5)
    1bc0:	479040ef          	jal	ra,6838 <__subdf3>
    1bc4:	00098613          	mv	a2,s3
    1bc8:	00090693          	mv	a3,s2
    1bcc:	390030ef          	jal	ra,4f5c <__adddf3>
    1bd0:	00050613          	mv	a2,a0
    1bd4:	00058693          	mv	a3,a1
    1bd8:	384030ef          	jal	ra,4f5c <__adddf3>
    1bdc:	00050613          	mv	a2,a0
    1be0:	00058693          	mv	a3,a1
    1be4:	000117b7          	lui	a5,0x11
    1be8:	8707a503          	lw	a0,-1936(a5) # 10870 <__clz_tab+0x1c0>
    1bec:	8747a583          	lw	a1,-1932(a5)
    1bf0:	449040ef          	jal	ra,6838 <__subdf3>
    1bf4:	00050713          	mv	a4,a0
    1bf8:	00058793          	mv	a5,a1
    1bfc:	9e9ff06f          	j	15e4 <__ieee754_acos+0x5c>
    1c00:	000117b7          	lui	a5,0x11
    1c04:	8787a703          	lw	a4,-1928(a5) # 10878 <__clz_tab+0x1c8>
    1c08:	87c7a783          	lw	a5,-1924(a5)
    1c0c:	9d9ff06f          	j	15e4 <__ieee754_acos+0x5c>

00001c10 <__ieee754_pow>:
    1c10:	fa010113          	addi	sp,sp,-96
    1c14:	04112e23          	sw	ra,92(sp)
    1c18:	04812c23          	sw	s0,88(sp)
    1c1c:	04912a23          	sw	s1,84(sp)
    1c20:	05212823          	sw	s2,80(sp)
    1c24:	05312623          	sw	s3,76(sp)
    1c28:	05412423          	sw	s4,72(sp)
    1c2c:	05512223          	sw	s5,68(sp)
    1c30:	05612023          	sw	s6,64(sp)
    1c34:	03712e23          	sw	s7,60(sp)
    1c38:	03812c23          	sw	s8,56(sp)
    1c3c:	03912a23          	sw	s9,52(sp)
    1c40:	03a12823          	sw	s10,48(sp)
    1c44:	03b12623          	sw	s11,44(sp)
    1c48:	00050a93          	mv	s5,a0
    1c4c:	00058a13          	mv	s4,a1
    1c50:	00060413          	mv	s0,a2
    1c54:	00068493          	mv	s1,a3
    1c58:	00169b13          	slli	s6,a3,0x1
    1c5c:	001b5b13          	srli	s6,s6,0x1
    1c60:	00cb67b3          	or	a5,s6,a2
    1c64:	04079663          	bnez	a5,1cb0 <__ieee754_pow+0xa0>
    1c68:	000807b7          	lui	a5,0x80
    1c6c:	00b7c7b3          	xor	a5,a5,a1
    1c70:	01f55713          	srli	a4,a0,0x1f
    1c74:	00179793          	slli	a5,a5,0x1
    1c78:	00f767b3          	or	a5,a4,a5
    1c7c:	00151693          	slli	a3,a0,0x1
    1c80:	fff00737          	lui	a4,0xfff00
    1c84:	00f76a63          	bltu	a4,a5,1c98 <__ieee754_pow+0x88>
    1c88:	00e78463          	beq	a5,a4,1c90 <__ieee754_pow+0x80>
    1c8c:	7210006f          	j	2bac <__ieee754_pow+0xf9c>
    1c90:	00069463          	bnez	a3,1c98 <__ieee754_pow+0x88>
    1c94:	7190006f          	j	2bac <__ieee754_pow+0xf9c>
    1c98:	00040613          	mv	a2,s0
    1c9c:	00048693          	mv	a3,s1
    1ca0:	000a8513          	mv	a0,s5
    1ca4:	000a0593          	mv	a1,s4
    1ca8:	2b4030ef          	jal	ra,4f5c <__adddf3>
    1cac:	0c40006f          	j	1d70 <__ieee754_pow+0x160>
    1cb0:	00068c13          	mv	s8,a3
    1cb4:	00060713          	mv	a4,a2
    1cb8:	00058c93          	mv	s9,a1
    1cbc:	00050993          	mv	s3,a0
    1cc0:	00159b93          	slli	s7,a1,0x1
    1cc4:	001bdb93          	srli	s7,s7,0x1
    1cc8:	7ff007b7          	lui	a5,0x7ff00
    1ccc:	0f77ca63          	blt	a5,s7,1dc0 <__ieee754_pow+0x1b0>
    1cd0:	08fb8463          	beq	s7,a5,1d58 <__ieee754_pow+0x148>
    1cd4:	7ff007b7          	lui	a5,0x7ff00
    1cd8:	0f67c463          	blt	a5,s6,1dc0 <__ieee754_pow+0x1b0>
    1cdc:	0efb0063          	beq	s6,a5,1dbc <__ieee754_pow+0x1ac>
    1ce0:	00000913          	li	s2,0
    1ce4:	120cc263          	bltz	s9,1e08 <__ieee754_pow+0x1f8>
    1ce8:	02071263          	bnez	a4,1d0c <__ieee754_pow+0xfc>
    1cec:	7ff007b7          	lui	a5,0x7ff00
    1cf0:	18fb0863          	beq	s6,a5,1e80 <__ieee754_pow+0x270>
    1cf4:	3ff007b7          	lui	a5,0x3ff00
    1cf8:	1cfb0a63          	beq	s6,a5,1ecc <__ieee754_pow+0x2bc>
    1cfc:	400007b7          	lui	a5,0x40000
    1d00:	1efc0a63          	beq	s8,a5,1ef4 <__ieee754_pow+0x2e4>
    1d04:	3fe007b7          	lui	a5,0x3fe00
    1d08:	20fc0263          	beq	s8,a5,1f0c <__ieee754_pow+0x2fc>
    1d0c:	000a8513          	mv	a0,s5
    1d10:	000a0593          	mv	a1,s4
    1d14:	635020ef          	jal	ra,4b48 <fabs>
    1d18:	20098663          	beqz	s3,1f24 <__ieee754_pow+0x314>
    1d1c:	01fa5993          	srli	s3,s4,0x1f
    1d20:	fff98993          	addi	s3,s3,-1
    1d24:	013967b3          	or	a5,s2,s3
    1d28:	00079463          	bnez	a5,1d30 <__ieee754_pow+0x120>
    1d2c:	6c10006f          	j	2bec <__ieee754_pow+0xfdc>
    1d30:	41e007b7          	lui	a5,0x41e00
    1d34:	4567d663          	bge	a5,s6,2180 <__ieee754_pow+0x570>
    1d38:	43f007b7          	lui	a5,0x43f00
    1d3c:	2967d863          	bge	a5,s6,1fcc <__ieee754_pow+0x3bc>
    1d40:	3ff007b7          	lui	a5,0x3ff00
    1d44:	26fbd663          	bge	s7,a5,1fb0 <__ieee754_pow+0x3a0>
    1d48:	240c4e63          	bltz	s8,1fa4 <__ieee754_pow+0x394>
    1d4c:	00000513          	li	a0,0
    1d50:	3a9020ef          	jal	ra,48f8 <__math_uflow>
    1d54:	01c0006f          	j	1d70 <__ieee754_pow+0x160>
    1d58:	f6050ee3          	beqz	a0,1cd4 <__ieee754_pow+0xc4>
    1d5c:	00040613          	mv	a2,s0
    1d60:	00048693          	mv	a3,s1
    1d64:	000a8513          	mv	a0,s5
    1d68:	000a0593          	mv	a1,s4
    1d6c:	1f0030ef          	jal	ra,4f5c <__adddf3>
    1d70:	00050713          	mv	a4,a0
    1d74:	00058793          	mv	a5,a1
    1d78:	00070513          	mv	a0,a4
    1d7c:	00078593          	mv	a1,a5
    1d80:	05c12083          	lw	ra,92(sp)
    1d84:	05812403          	lw	s0,88(sp)
    1d88:	05412483          	lw	s1,84(sp)
    1d8c:	05012903          	lw	s2,80(sp)
    1d90:	04c12983          	lw	s3,76(sp)
    1d94:	04812a03          	lw	s4,72(sp)
    1d98:	04412a83          	lw	s5,68(sp)
    1d9c:	04012b03          	lw	s6,64(sp)
    1da0:	03c12b83          	lw	s7,60(sp)
    1da4:	03812c03          	lw	s8,56(sp)
    1da8:	03412c83          	lw	s9,52(sp)
    1dac:	03012d03          	lw	s10,48(sp)
    1db0:	02c12d83          	lw	s11,44(sp)
    1db4:	06010113          	addi	sp,sp,96
    1db8:	00008067          	ret
    1dbc:	f20702e3          	beqz	a4,1ce0 <__ieee754_pow+0xd0>
    1dc0:	c01007b7          	lui	a5,0xc0100
    1dc4:	00fa07b3          	add	a5,s4,a5
    1dc8:	0157e7b3          	or	a5,a5,s5
    1dcc:	f80798e3          	bnez	a5,1d5c <__ieee754_pow+0x14c>
    1dd0:	000807b7          	lui	a5,0x80
    1dd4:	0097c7b3          	xor	a5,a5,s1
    1dd8:	01f45713          	srli	a4,s0,0x1f
    1ddc:	00179793          	slli	a5,a5,0x1
    1de0:	00f767b3          	or	a5,a4,a5
    1de4:	00141693          	slli	a3,s0,0x1
    1de8:	fff00737          	lui	a4,0xfff00
    1dec:	f6f768e3          	bltu	a4,a5,1d5c <__ieee754_pow+0x14c>
    1df0:	00e79463          	bne	a5,a4,1df8 <__ieee754_pow+0x1e8>
    1df4:	f60694e3          	bnez	a3,1d5c <__ieee754_pow+0x14c>
    1df8:	00000513          	li	a0,0
    1dfc:	000107b7          	lui	a5,0x10
    1e00:	7c47a583          	lw	a1,1988(a5) # 107c4 <__clz_tab+0x114>
    1e04:	f6dff06f          	j	1d70 <__ieee754_pow+0x160>
    1e08:	434007b7          	lui	a5,0x43400
    1e0c:	06fb5663          	bge	s6,a5,1e78 <__ieee754_pow+0x268>
    1e10:	3ff007b7          	lui	a5,0x3ff00
    1e14:	5afb4ce3          	blt	s6,a5,2bcc <__ieee754_pow+0xfbc>
    1e18:	414b5793          	srai	a5,s6,0x14
    1e1c:	c0178793          	addi	a5,a5,-1023 # 3feffc01 <soln_cnt0+0x3feef125>
    1e20:	01400693          	li	a3,20
    1e24:	02f6d463          	bge	a3,a5,1e4c <__ieee754_pow+0x23c>
    1e28:	03400693          	li	a3,52
    1e2c:	40f687b3          	sub	a5,a3,a5
    1e30:	00f456b3          	srl	a3,s0,a5
    1e34:	00f697b3          	sll	a5,a3,a5
    1e38:	58e79ce3          	bne	a5,a4,2bd0 <__ieee754_pow+0xfc0>
    1e3c:	0016f693          	andi	a3,a3,1
    1e40:	00200913          	li	s2,2
    1e44:	40d90933          	sub	s2,s2,a3
    1e48:	5890006f          	j	2bd0 <__ieee754_pow+0xfc0>
    1e4c:	580718e3          	bnez	a4,2bdc <__ieee754_pow+0xfcc>
    1e50:	01400713          	li	a4,20
    1e54:	40f707b3          	sub	a5,a4,a5
    1e58:	40fb5733          	sra	a4,s6,a5
    1e5c:	00f717b3          	sll	a5,a4,a5
    1e60:	00000913          	li	s2,0
    1e64:	e96798e3          	bne	a5,s6,1cf4 <__ieee754_pow+0xe4>
    1e68:	00177713          	andi	a4,a4,1
    1e6c:	00200913          	li	s2,2
    1e70:	40e90933          	sub	s2,s2,a4
    1e74:	e81ff06f          	j	1cf4 <__ieee754_pow+0xe4>
    1e78:	00200913          	li	s2,2
    1e7c:	e6dff06f          	j	1ce8 <__ieee754_pow+0xd8>
    1e80:	c01007b7          	lui	a5,0xc0100
    1e84:	00fb87b3          	add	a5,s7,a5
    1e88:	0157e7b3          	or	a5,a5,s5
    1e8c:	520788e3          	beqz	a5,2bbc <__ieee754_pow+0xfac>
    1e90:	3ff007b7          	lui	a5,0x3ff00
    1e94:	00fbce63          	blt	s7,a5,1eb0 <__ieee754_pow+0x2a0>
    1e98:	00040513          	mv	a0,s0
    1e9c:	00048593          	mv	a1,s1
    1ea0:	ec0c58e3          	bgez	s8,1d70 <__ieee754_pow+0x160>
    1ea4:	00000513          	li	a0,0
    1ea8:	00000593          	li	a1,0
    1eac:	ec5ff06f          	j	1d70 <__ieee754_pow+0x160>
    1eb0:	00000513          	li	a0,0
    1eb4:	00000593          	li	a1,0
    1eb8:	ea0c5ce3          	bgez	s8,1d70 <__ieee754_pow+0x160>
    1ebc:	00040513          	mv	a0,s0
    1ec0:	800005b7          	lui	a1,0x80000
    1ec4:	0095c5b3          	xor	a1,a1,s1
    1ec8:	ea9ff06f          	j	1d70 <__ieee754_pow+0x160>
    1ecc:	000a8513          	mv	a0,s5
    1ed0:	000a0593          	mv	a1,s4
    1ed4:	e80c5ee3          	bgez	s8,1d70 <__ieee754_pow+0x160>
    1ed8:	00050613          	mv	a2,a0
    1edc:	00058693          	mv	a3,a1
    1ee0:	000107b7          	lui	a5,0x10
    1ee4:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    1ee8:	7c47a583          	lw	a1,1988(a5)
    1eec:	04d030ef          	jal	ra,5738 <__divdf3>
    1ef0:	e81ff06f          	j	1d70 <__ieee754_pow+0x160>
    1ef4:	000a8613          	mv	a2,s5
    1ef8:	000a0693          	mv	a3,s4
    1efc:	000a8513          	mv	a0,s5
    1f00:	000a0593          	mv	a1,s4
    1f04:	268040ef          	jal	ra,616c <__muldf3>
    1f08:	e69ff06f          	j	1d70 <__ieee754_pow+0x160>
    1f0c:	e00cc0e3          	bltz	s9,1d0c <__ieee754_pow+0xfc>
    1f10:	000a8513          	mv	a0,s5
    1f14:	000a0593          	mv	a1,s4
    1f18:	37c010ef          	jal	ra,3294 <__ieee754_sqrt>
    1f1c:	e55ff06f          	j	1d70 <__ieee754_pow+0x160>
    1f20:	00000913          	li	s2,0
    1f24:	000b8a63          	beqz	s7,1f38 <__ieee754_pow+0x328>
    1f28:	002a1793          	slli	a5,s4,0x2
    1f2c:	0027d793          	srli	a5,a5,0x2
    1f30:	3ff00737          	lui	a4,0x3ff00
    1f34:	dee794e3          	bne	a5,a4,1d1c <__ieee754_pow+0x10c>
    1f38:	020c4e63          	bltz	s8,1f74 <__ieee754_pow+0x364>
    1f3c:	e20cdae3          	bgez	s9,1d70 <__ieee754_pow+0x160>
    1f40:	c01007b7          	lui	a5,0xc0100
    1f44:	00fb87b3          	add	a5,s7,a5
    1f48:	0127e7b3          	or	a5,a5,s2
    1f4c:	04079263          	bnez	a5,1f90 <__ieee754_pow+0x380>
    1f50:	00050613          	mv	a2,a0
    1f54:	00058693          	mv	a3,a1
    1f58:	00060513          	mv	a0,a2
    1f5c:	00068593          	mv	a1,a3
    1f60:	0d9040ef          	jal	ra,6838 <__subdf3>
    1f64:	00050613          	mv	a2,a0
    1f68:	00058693          	mv	a3,a1
    1f6c:	7cc030ef          	jal	ra,5738 <__divdf3>
    1f70:	e01ff06f          	j	1d70 <__ieee754_pow+0x160>
    1f74:	00050613          	mv	a2,a0
    1f78:	00058693          	mv	a3,a1
    1f7c:	000107b7          	lui	a5,0x10
    1f80:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    1f84:	7c47a583          	lw	a1,1988(a5)
    1f88:	7b0030ef          	jal	ra,5738 <__divdf3>
    1f8c:	fb1ff06f          	j	1f3c <__ieee754_pow+0x32c>
    1f90:	00100793          	li	a5,1
    1f94:	dcf91ee3          	bne	s2,a5,1d70 <__ieee754_pow+0x160>
    1f98:	800007b7          	lui	a5,0x80000
    1f9c:	00b7c5b3          	xor	a1,a5,a1
    1fa0:	dd1ff06f          	j	1d70 <__ieee754_pow+0x160>
    1fa4:	00000513          	li	a0,0
    1fa8:	199020ef          	jal	ra,4940 <__math_oflow>
    1fac:	dc5ff06f          	j	1d70 <__ieee754_pow+0x160>
    1fb0:	01805863          	blez	s8,1fc0 <__ieee754_pow+0x3b0>
    1fb4:	00000513          	li	a0,0
    1fb8:	189020ef          	jal	ra,4940 <__math_oflow>
    1fbc:	db5ff06f          	j	1d70 <__ieee754_pow+0x160>
    1fc0:	00000513          	li	a0,0
    1fc4:	135020ef          	jal	ra,48f8 <__math_uflow>
    1fc8:	da9ff06f          	j	1d70 <__ieee754_pow+0x160>
    1fcc:	3ff007b7          	lui	a5,0x3ff00
    1fd0:	ffe78793          	addi	a5,a5,-2 # 3feffffe <soln_cnt0+0x3feef522>
    1fd4:	1777da63          	bge	a5,s7,2148 <__ieee754_pow+0x538>
    1fd8:	3ff007b7          	lui	a5,0x3ff00
    1fdc:	1977c463          	blt	a5,s7,2164 <__ieee754_pow+0x554>
    1fe0:	000107b7          	lui	a5,0x10
    1fe4:	7c07a603          	lw	a2,1984(a5) # 107c0 <__clz_tab+0x110>
    1fe8:	7c47a683          	lw	a3,1988(a5)
    1fec:	00050713          	mv	a4,a0
    1ff0:	00058793          	mv	a5,a1
    1ff4:	00070513          	mv	a0,a4
    1ff8:	00078593          	mv	a1,a5
    1ffc:	03d040ef          	jal	ra,6838 <__subdf3>
    2000:	00050a93          	mv	s5,a0
    2004:	00058a13          	mv	s4,a1
    2008:	000117b7          	lui	a5,0x11
    200c:	8d87a603          	lw	a2,-1832(a5) # 108d8 <__clz_tab+0x228>
    2010:	8dc7a683          	lw	a3,-1828(a5)
    2014:	158040ef          	jal	ra,616c <__muldf3>
    2018:	00050c93          	mv	s9,a0
    201c:	00058c13          	mv	s8,a1
    2020:	000117b7          	lui	a5,0x11
    2024:	8e07a603          	lw	a2,-1824(a5) # 108e0 <__clz_tab+0x230>
    2028:	8e47a683          	lw	a3,-1820(a5)
    202c:	000a8513          	mv	a0,s5
    2030:	000a0593          	mv	a1,s4
    2034:	138040ef          	jal	ra,616c <__muldf3>
    2038:	00050b93          	mv	s7,a0
    203c:	00058b13          	mv	s6,a1
    2040:	000117b7          	lui	a5,0x11
    2044:	8e87a603          	lw	a2,-1816(a5) # 108e8 <__clz_tab+0x238>
    2048:	8ec7a683          	lw	a3,-1812(a5)
    204c:	000a8513          	mv	a0,s5
    2050:	000a0593          	mv	a1,s4
    2054:	118040ef          	jal	ra,616c <__muldf3>
    2058:	00050613          	mv	a2,a0
    205c:	00058693          	mv	a3,a1
    2060:	000117b7          	lui	a5,0x11
    2064:	8687a503          	lw	a0,-1944(a5) # 10868 <__clz_tab+0x1b8>
    2068:	86c7a583          	lw	a1,-1940(a5)
    206c:	7cc040ef          	jal	ra,6838 <__subdf3>
    2070:	000a8613          	mv	a2,s5
    2074:	000a0693          	mv	a3,s4
    2078:	0f4040ef          	jal	ra,616c <__muldf3>
    207c:	00050613          	mv	a2,a0
    2080:	00058693          	mv	a3,a1
    2084:	000117b7          	lui	a5,0x11
    2088:	8287a503          	lw	a0,-2008(a5) # 10828 <__clz_tab+0x178>
    208c:	82c7a583          	lw	a1,-2004(a5)
    2090:	7a8040ef          	jal	ra,6838 <__subdf3>
    2094:	00050d93          	mv	s11,a0
    2098:	00058d13          	mv	s10,a1
    209c:	000a8613          	mv	a2,s5
    20a0:	000a0693          	mv	a3,s4
    20a4:	000a8513          	mv	a0,s5
    20a8:	000a0593          	mv	a1,s4
    20ac:	0c0040ef          	jal	ra,616c <__muldf3>
    20b0:	00050613          	mv	a2,a0
    20b4:	00058693          	mv	a3,a1
    20b8:	000d8513          	mv	a0,s11
    20bc:	000d0593          	mv	a1,s10
    20c0:	0ac040ef          	jal	ra,616c <__muldf3>
    20c4:	000117b7          	lui	a5,0x11
    20c8:	8f07a603          	lw	a2,-1808(a5) # 108f0 <__clz_tab+0x240>
    20cc:	8f47a683          	lw	a3,-1804(a5)
    20d0:	09c040ef          	jal	ra,616c <__muldf3>
    20d4:	00050613          	mv	a2,a0
    20d8:	00058693          	mv	a3,a1
    20dc:	000b8513          	mv	a0,s7
    20e0:	000b0593          	mv	a1,s6
    20e4:	754040ef          	jal	ra,6838 <__subdf3>
    20e8:	00050b93          	mv	s7,a0
    20ec:	00058b13          	mv	s6,a1
    20f0:	00050613          	mv	a2,a0
    20f4:	00058693          	mv	a3,a1
    20f8:	000c8513          	mv	a0,s9
    20fc:	000c0593          	mv	a1,s8
    2100:	65d020ef          	jal	ra,4f5c <__adddf3>
    2104:	00000713          	li	a4,0
    2108:	00058793          	mv	a5,a1
    210c:	00070a13          	mv	s4,a4
    2110:	00058a93          	mv	s5,a1
    2114:	000c8613          	mv	a2,s9
    2118:	000c0693          	mv	a3,s8
    211c:	00070513          	mv	a0,a4
    2120:	00078593          	mv	a1,a5
    2124:	714040ef          	jal	ra,6838 <__subdf3>
    2128:	00050613          	mv	a2,a0
    212c:	00058693          	mv	a3,a1
    2130:	000b8513          	mv	a0,s7
    2134:	000b0593          	mv	a1,s6
    2138:	700040ef          	jal	ra,6838 <__subdf3>
    213c:	00050b93          	mv	s7,a0
    2140:	00058b13          	mv	s6,a1
    2144:	5580006f          	j	269c <__ieee754_pow+0xa8c>
    2148:	000c4863          	bltz	s8,2158 <__ieee754_pow+0x548>
    214c:	00000513          	li	a0,0
    2150:	7a8020ef          	jal	ra,48f8 <__math_uflow>
    2154:	c1dff06f          	j	1d70 <__ieee754_pow+0x160>
    2158:	00000513          	li	a0,0
    215c:	7e4020ef          	jal	ra,4940 <__math_oflow>
    2160:	c11ff06f          	j	1d70 <__ieee754_pow+0x160>
    2164:	01805863          	blez	s8,2174 <__ieee754_pow+0x564>
    2168:	00000513          	li	a0,0
    216c:	7d4020ef          	jal	ra,4940 <__math_oflow>
    2170:	c01ff06f          	j	1d70 <__ieee754_pow+0x160>
    2174:	00000513          	li	a0,0
    2178:	780020ef          	jal	ra,48f8 <__math_uflow>
    217c:	bf5ff06f          	j	1d70 <__ieee754_pow+0x160>
    2180:	7ff007b7          	lui	a5,0x7ff00
    2184:	00fa77b3          	and	a5,s4,a5
    2188:	00000713          	li	a4,0
    218c:	02079663          	bnez	a5,21b8 <__ieee754_pow+0x5a8>
    2190:	000117b7          	lui	a5,0x11
    2194:	8f87a603          	lw	a2,-1800(a5) # 108f8 <__clz_tab+0x248>
    2198:	8fc7a683          	lw	a3,-1796(a5)
    219c:	00050713          	mv	a4,a0
    21a0:	00058793          	mv	a5,a1
    21a4:	00070513          	mv	a0,a4
    21a8:	00078593          	mv	a1,a5
    21ac:	7c1030ef          	jal	ra,616c <__muldf3>
    21b0:	00058b93          	mv	s7,a1
    21b4:	fcb00713          	li	a4,-53
    21b8:	414bdd13          	srai	s10,s7,0x14
    21bc:	c01d0d13          	addi	s10,s10,-1023 # 40021c01 <soln_cnt0+0x40011125>
    21c0:	00ed0d33          	add	s10,s10,a4
    21c4:	00cb9793          	slli	a5,s7,0xc
    21c8:	00c7d793          	srli	a5,a5,0xc
    21cc:	3ff00b37          	lui	s6,0x3ff00
    21d0:	0167eb33          	or	s6,a5,s6
    21d4:	0003a737          	lui	a4,0x3a
    21d8:	88e70713          	addi	a4,a4,-1906 # 3988e <soln_cnt0+0x28db2>
    21dc:	00000d93          	li	s11,0
    21e0:	02f75263          	bge	a4,a5,2204 <__ieee754_pow+0x5f4>
    21e4:	000bb737          	lui	a4,0xbb
    21e8:	67970713          	addi	a4,a4,1657 # bb679 <soln_cnt0+0xaab9d>
    21ec:	00100d93          	li	s11,1
    21f0:	00f75a63          	bge	a4,a5,2204 <__ieee754_pow+0x5f4>
    21f4:	001d0d13          	addi	s10,s10,1
    21f8:	fff007b7          	lui	a5,0xfff00
    21fc:	00fb0b33          	add	s6,s6,a5
    2200:	00000d93          	li	s11,0
    2204:	00050c93          	mv	s9,a0
    2208:	003d9793          	slli	a5,s11,0x3
    220c:	00010bb7          	lui	s7,0x10
    2210:	430b8b93          	addi	s7,s7,1072 # 10430 <bp>
    2214:	00fb8bb3          	add	s7,s7,a5
    2218:	000baa03          	lw	s4,0(s7)
    221c:	004baa83          	lw	s5,4(s7)
    2220:	000a0613          	mv	a2,s4
    2224:	000a8693          	mv	a3,s5
    2228:	000c8513          	mv	a0,s9
    222c:	000b0593          	mv	a1,s6
    2230:	608040ef          	jal	ra,6838 <__subdf3>
    2234:	00a12423          	sw	a0,8(sp)
    2238:	00b12623          	sw	a1,12(sp)
    223c:	01912823          	sw	s9,16(sp)
    2240:	000c8613          	mv	a2,s9
    2244:	01612a23          	sw	s6,20(sp)
    2248:	000b0693          	mv	a3,s6
    224c:	000a0513          	mv	a0,s4
    2250:	000a8593          	mv	a1,s5
    2254:	509020ef          	jal	ra,4f5c <__adddf3>
    2258:	00050613          	mv	a2,a0
    225c:	00058693          	mv	a3,a1
    2260:	000107b7          	lui	a5,0x10
    2264:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    2268:	7c47a583          	lw	a1,1988(a5)
    226c:	4cc030ef          	jal	ra,5738 <__divdf3>
    2270:	00a12c23          	sw	a0,24(sp)
    2274:	00050613          	mv	a2,a0
    2278:	00b12e23          	sw	a1,28(sp)
    227c:	00058693          	mv	a3,a1
    2280:	00812503          	lw	a0,8(sp)
    2284:	00c12583          	lw	a1,12(sp)
    2288:	6e5030ef          	jal	ra,616c <__muldf3>
    228c:	00a12023          	sw	a0,0(sp)
    2290:	00000c93          	li	s9,0
    2294:	00b12223          	sw	a1,4(sp)
    2298:	00058c13          	mv	s8,a1
    229c:	401b5793          	srai	a5,s6,0x1
    22a0:	20000737          	lui	a4,0x20000
    22a4:	00e7e7b3          	or	a5,a5,a4
    22a8:	00080737          	lui	a4,0x80
    22ac:	00e787b3          	add	a5,a5,a4
    22b0:	012d9713          	slli	a4,s11,0x12
    22b4:	00000d93          	li	s11,0
    22b8:	00e78b33          	add	s6,a5,a4
    22bc:	000d8613          	mv	a2,s11
    22c0:	000b0693          	mv	a3,s6
    22c4:	000c8513          	mv	a0,s9
    22c8:	000c0593          	mv	a1,s8
    22cc:	6a1030ef          	jal	ra,616c <__muldf3>
    22d0:	00050613          	mv	a2,a0
    22d4:	00058693          	mv	a3,a1
    22d8:	00812503          	lw	a0,8(sp)
    22dc:	00c12583          	lw	a1,12(sp)
    22e0:	558040ef          	jal	ra,6838 <__subdf3>
    22e4:	00a12423          	sw	a0,8(sp)
    22e8:	00b12623          	sw	a1,12(sp)
    22ec:	000a0613          	mv	a2,s4
    22f0:	000a8693          	mv	a3,s5
    22f4:	000d8513          	mv	a0,s11
    22f8:	000b0593          	mv	a1,s6
    22fc:	53c040ef          	jal	ra,6838 <__subdf3>
    2300:	00050613          	mv	a2,a0
    2304:	00058693          	mv	a3,a1
    2308:	01012503          	lw	a0,16(sp)
    230c:	01412583          	lw	a1,20(sp)
    2310:	528040ef          	jal	ra,6838 <__subdf3>
    2314:	000c8613          	mv	a2,s9
    2318:	000c0693          	mv	a3,s8
    231c:	651030ef          	jal	ra,616c <__muldf3>
    2320:	00050613          	mv	a2,a0
    2324:	00058693          	mv	a3,a1
    2328:	00812503          	lw	a0,8(sp)
    232c:	00c12583          	lw	a1,12(sp)
    2330:	508040ef          	jal	ra,6838 <__subdf3>
    2334:	01812603          	lw	a2,24(sp)
    2338:	01c12683          	lw	a3,28(sp)
    233c:	631030ef          	jal	ra,616c <__muldf3>
    2340:	00a12423          	sw	a0,8(sp)
    2344:	00b12623          	sw	a1,12(sp)
    2348:	00012703          	lw	a4,0(sp)
    234c:	00070613          	mv	a2,a4
    2350:	000c0693          	mv	a3,s8
    2354:	00070513          	mv	a0,a4
    2358:	000c0593          	mv	a1,s8
    235c:	611030ef          	jal	ra,616c <__muldf3>
    2360:	00050a93          	mv	s5,a0
    2364:	00058a13          	mv	s4,a1
    2368:	000117b7          	lui	a5,0x11
    236c:	9007a603          	lw	a2,-1792(a5) # 10900 <__clz_tab+0x250>
    2370:	9047a683          	lw	a3,-1788(a5)
    2374:	5f9030ef          	jal	ra,616c <__muldf3>
    2378:	000117b7          	lui	a5,0x11
    237c:	9087a603          	lw	a2,-1784(a5) # 10908 <__clz_tab+0x258>
    2380:	90c7a683          	lw	a3,-1780(a5)
    2384:	3d9020ef          	jal	ra,4f5c <__adddf3>
    2388:	000a8613          	mv	a2,s5
    238c:	000a0693          	mv	a3,s4
    2390:	5dd030ef          	jal	ra,616c <__muldf3>
    2394:	000117b7          	lui	a5,0x11
    2398:	9107a603          	lw	a2,-1776(a5) # 10910 <__clz_tab+0x260>
    239c:	9147a683          	lw	a3,-1772(a5)
    23a0:	3bd020ef          	jal	ra,4f5c <__adddf3>
    23a4:	000a8613          	mv	a2,s5
    23a8:	000a0693          	mv	a3,s4
    23ac:	5c1030ef          	jal	ra,616c <__muldf3>
    23b0:	000117b7          	lui	a5,0x11
    23b4:	9187a603          	lw	a2,-1768(a5) # 10918 <__clz_tab+0x268>
    23b8:	91c7a683          	lw	a3,-1764(a5)
    23bc:	3a1020ef          	jal	ra,4f5c <__adddf3>
    23c0:	000a8613          	mv	a2,s5
    23c4:	000a0693          	mv	a3,s4
    23c8:	5a5030ef          	jal	ra,616c <__muldf3>
    23cc:	000117b7          	lui	a5,0x11
    23d0:	9207a603          	lw	a2,-1760(a5) # 10920 <__clz_tab+0x270>
    23d4:	9247a683          	lw	a3,-1756(a5)
    23d8:	385020ef          	jal	ra,4f5c <__adddf3>
    23dc:	000a8613          	mv	a2,s5
    23e0:	000a0693          	mv	a3,s4
    23e4:	589030ef          	jal	ra,616c <__muldf3>
    23e8:	000117b7          	lui	a5,0x11
    23ec:	9287a603          	lw	a2,-1752(a5) # 10928 <__clz_tab+0x278>
    23f0:	92c7a683          	lw	a3,-1748(a5)
    23f4:	369020ef          	jal	ra,4f5c <__adddf3>
    23f8:	00050b13          	mv	s6,a0
    23fc:	00058d93          	mv	s11,a1
    2400:	000a8613          	mv	a2,s5
    2404:	000a0693          	mv	a3,s4
    2408:	000a8513          	mv	a0,s5
    240c:	000a0593          	mv	a1,s4
    2410:	55d030ef          	jal	ra,616c <__muldf3>
    2414:	00050613          	mv	a2,a0
    2418:	00058693          	mv	a3,a1
    241c:	000b0513          	mv	a0,s6
    2420:	000d8593          	mv	a1,s11
    2424:	549030ef          	jal	ra,616c <__muldf3>
    2428:	00050a13          	mv	s4,a0
    242c:	00058a93          	mv	s5,a1
    2430:	000c8613          	mv	a2,s9
    2434:	000c0693          	mv	a3,s8
    2438:	00012503          	lw	a0,0(sp)
    243c:	000c0593          	mv	a1,s8
    2440:	31d020ef          	jal	ra,4f5c <__adddf3>
    2444:	00812603          	lw	a2,8(sp)
    2448:	00c12683          	lw	a3,12(sp)
    244c:	521030ef          	jal	ra,616c <__muldf3>
    2450:	000a0613          	mv	a2,s4
    2454:	000a8693          	mv	a3,s5
    2458:	305020ef          	jal	ra,4f5c <__adddf3>
    245c:	00050d93          	mv	s11,a0
    2460:	00058a13          	mv	s4,a1
    2464:	000c8613          	mv	a2,s9
    2468:	000c0693          	mv	a3,s8
    246c:	000c8513          	mv	a0,s9
    2470:	000c0593          	mv	a1,s8
    2474:	4f9030ef          	jal	ra,616c <__muldf3>
    2478:	00a12a23          	sw	a0,20(sp)
    247c:	00b12c23          	sw	a1,24(sp)
    2480:	00011ab7          	lui	s5,0x11
    2484:	850aa603          	lw	a2,-1968(s5) # 10850 <__clz_tab+0x1a0>
    2488:	854aa683          	lw	a3,-1964(s5)
    248c:	2d1020ef          	jal	ra,4f5c <__adddf3>
    2490:	000d8613          	mv	a2,s11
    2494:	01412823          	sw	s4,16(sp)
    2498:	000a0693          	mv	a3,s4
    249c:	2c1020ef          	jal	ra,4f5c <__adddf3>
    24a0:	00000a13          	li	s4,0
    24a4:	00058b13          	mv	s6,a1
    24a8:	000a0613          	mv	a2,s4
    24ac:	00058693          	mv	a3,a1
    24b0:	000c8513          	mv	a0,s9
    24b4:	000c0593          	mv	a1,s8
    24b8:	4b5030ef          	jal	ra,616c <__muldf3>
    24bc:	00050c13          	mv	s8,a0
    24c0:	00058c93          	mv	s9,a1
    24c4:	850aa603          	lw	a2,-1968(s5)
    24c8:	854aa683          	lw	a3,-1964(s5)
    24cc:	000a0513          	mv	a0,s4
    24d0:	000b0593          	mv	a1,s6
    24d4:	364040ef          	jal	ra,6838 <__subdf3>
    24d8:	01412603          	lw	a2,20(sp)
    24dc:	01812683          	lw	a3,24(sp)
    24e0:	358040ef          	jal	ra,6838 <__subdf3>
    24e4:	00050613          	mv	a2,a0
    24e8:	00058693          	mv	a3,a1
    24ec:	000d8513          	mv	a0,s11
    24f0:	01012583          	lw	a1,16(sp)
    24f4:	344040ef          	jal	ra,6838 <__subdf3>
    24f8:	00012603          	lw	a2,0(sp)
    24fc:	00412683          	lw	a3,4(sp)
    2500:	46d030ef          	jal	ra,616c <__muldf3>
    2504:	00050a93          	mv	s5,a0
    2508:	00058d93          	mv	s11,a1
    250c:	000a0613          	mv	a2,s4
    2510:	000b0693          	mv	a3,s6
    2514:	00812503          	lw	a0,8(sp)
    2518:	00c12583          	lw	a1,12(sp)
    251c:	451030ef          	jal	ra,616c <__muldf3>
    2520:	00050613          	mv	a2,a0
    2524:	00058693          	mv	a3,a1
    2528:	000a8513          	mv	a0,s5
    252c:	000d8593          	mv	a1,s11
    2530:	22d020ef          	jal	ra,4f5c <__adddf3>
    2534:	00050d93          	mv	s11,a0
    2538:	00058b13          	mv	s6,a1
    253c:	00050613          	mv	a2,a0
    2540:	00058693          	mv	a3,a1
    2544:	000c0513          	mv	a0,s8
    2548:	000c8593          	mv	a1,s9
    254c:	211020ef          	jal	ra,4f5c <__adddf3>
    2550:	00000a93          	li	s5,0
    2554:	00058a13          	mv	s4,a1
    2558:	000117b7          	lui	a5,0x11
    255c:	9307a603          	lw	a2,-1744(a5) # 10930 <__clz_tab+0x280>
    2560:	9347a683          	lw	a3,-1740(a5)
    2564:	000a8513          	mv	a0,s5
    2568:	000a0593          	mv	a1,s4
    256c:	401030ef          	jal	ra,616c <__muldf3>
    2570:	00a12023          	sw	a0,0(sp)
    2574:	00b12223          	sw	a1,4(sp)
    2578:	000c0613          	mv	a2,s8
    257c:	000c8693          	mv	a3,s9
    2580:	000a8513          	mv	a0,s5
    2584:	000a0593          	mv	a1,s4
    2588:	2b0040ef          	jal	ra,6838 <__subdf3>
    258c:	00050613          	mv	a2,a0
    2590:	00058693          	mv	a3,a1
    2594:	000d8513          	mv	a0,s11
    2598:	000b0593          	mv	a1,s6
    259c:	29c040ef          	jal	ra,6838 <__subdf3>
    25a0:	000117b7          	lui	a5,0x11
    25a4:	9387a603          	lw	a2,-1736(a5) # 10938 <__clz_tab+0x288>
    25a8:	93c7a683          	lw	a3,-1732(a5)
    25ac:	3c1030ef          	jal	ra,616c <__muldf3>
    25b0:	00050c13          	mv	s8,a0
    25b4:	00058b13          	mv	s6,a1
    25b8:	000117b7          	lui	a5,0x11
    25bc:	9407a603          	lw	a2,-1728(a5) # 10940 <__clz_tab+0x290>
    25c0:	9447a683          	lw	a3,-1724(a5)
    25c4:	000a8513          	mv	a0,s5
    25c8:	000a0593          	mv	a1,s4
    25cc:	3a1030ef          	jal	ra,616c <__muldf3>
    25d0:	00050613          	mv	a2,a0
    25d4:	00058693          	mv	a3,a1
    25d8:	000c0513          	mv	a0,s8
    25dc:	000b0593          	mv	a1,s6
    25e0:	17d020ef          	jal	ra,4f5c <__adddf3>
    25e4:	010ba603          	lw	a2,16(s7)
    25e8:	014ba683          	lw	a3,20(s7)
    25ec:	171020ef          	jal	ra,4f5c <__adddf3>
    25f0:	00050d93          	mv	s11,a0
    25f4:	00058a13          	mv	s4,a1
    25f8:	000d0513          	mv	a0,s10
    25fc:	2f9040ef          	jal	ra,70f4 <__floatsidf>
    2600:	00050c93          	mv	s9,a0
    2604:	00058c13          	mv	s8,a1
    2608:	020bab03          	lw	s6,32(s7)
    260c:	024bab83          	lw	s7,36(s7)
    2610:	000d8613          	mv	a2,s11
    2614:	01412423          	sw	s4,8(sp)
    2618:	000a0693          	mv	a3,s4
    261c:	00012503          	lw	a0,0(sp)
    2620:	00412d03          	lw	s10,4(sp)
    2624:	000d0593          	mv	a1,s10
    2628:	135020ef          	jal	ra,4f5c <__adddf3>
    262c:	000b0613          	mv	a2,s6
    2630:	000b8693          	mv	a3,s7
    2634:	129020ef          	jal	ra,4f5c <__adddf3>
    2638:	000c8613          	mv	a2,s9
    263c:	000c0693          	mv	a3,s8
    2640:	11d020ef          	jal	ra,4f5c <__adddf3>
    2644:	00000713          	li	a4,0
    2648:	00058793          	mv	a5,a1
    264c:	00070a13          	mv	s4,a4
    2650:	00058a93          	mv	s5,a1
    2654:	000c8613          	mv	a2,s9
    2658:	000c0693          	mv	a3,s8
    265c:	00070513          	mv	a0,a4
    2660:	00078593          	mv	a1,a5
    2664:	1d4040ef          	jal	ra,6838 <__subdf3>
    2668:	000b0613          	mv	a2,s6
    266c:	000b8693          	mv	a3,s7
    2670:	1c8040ef          	jal	ra,6838 <__subdf3>
    2674:	00012603          	lw	a2,0(sp)
    2678:	000d0693          	mv	a3,s10
    267c:	1bc040ef          	jal	ra,6838 <__subdf3>
    2680:	00050613          	mv	a2,a0
    2684:	00058693          	mv	a3,a1
    2688:	000d8513          	mv	a0,s11
    268c:	00812583          	lw	a1,8(sp)
    2690:	1a8040ef          	jal	ra,6838 <__subdf3>
    2694:	00050b93          	mv	s7,a0
    2698:	00058b13          	mv	s6,a1
    269c:	fff90793          	addi	a5,s2,-1
    26a0:	0137e7b3          	or	a5,a5,s3
    26a4:	3e079e63          	bnez	a5,2aa0 <__ieee754_pow+0xe90>
    26a8:	000117b7          	lui	a5,0x11
    26ac:	8187a903          	lw	s2,-2024(a5) # 10818 <__clz_tab+0x168>
    26b0:	81c7a983          	lw	s3,-2020(a5)
    26b4:	00000c93          	li	s9,0
    26b8:	000c8613          	mv	a2,s9
    26bc:	00048693          	mv	a3,s1
    26c0:	00040513          	mv	a0,s0
    26c4:	00048593          	mv	a1,s1
    26c8:	170040ef          	jal	ra,6838 <__subdf3>
    26cc:	000a0613          	mv	a2,s4
    26d0:	000a8693          	mv	a3,s5
    26d4:	299030ef          	jal	ra,616c <__muldf3>
    26d8:	00050d93          	mv	s11,a0
    26dc:	00058d13          	mv	s10,a1
    26e0:	00040613          	mv	a2,s0
    26e4:	00048693          	mv	a3,s1
    26e8:	000b8513          	mv	a0,s7
    26ec:	000b0593          	mv	a1,s6
    26f0:	27d030ef          	jal	ra,616c <__muldf3>
    26f4:	00050613          	mv	a2,a0
    26f8:	00058693          	mv	a3,a1
    26fc:	000d8513          	mv	a0,s11
    2700:	000d0593          	mv	a1,s10
    2704:	059020ef          	jal	ra,4f5c <__adddf3>
    2708:	00050b13          	mv	s6,a0
    270c:	00058b93          	mv	s7,a1
    2710:	000c8613          	mv	a2,s9
    2714:	00048693          	mv	a3,s1
    2718:	000a0513          	mv	a0,s4
    271c:	000a8593          	mv	a1,s5
    2720:	24d030ef          	jal	ra,616c <__muldf3>
    2724:	00050493          	mv	s1,a0
    2728:	00058a13          	mv	s4,a1
    272c:	00050613          	mv	a2,a0
    2730:	00058693          	mv	a3,a1
    2734:	000b0513          	mv	a0,s6
    2738:	000b8593          	mv	a1,s7
    273c:	021020ef          	jal	ra,4f5c <__adddf3>
    2740:	00050c13          	mv	s8,a0
    2744:	00058413          	mv	s0,a1
    2748:	00058a93          	mv	s5,a1
    274c:	409007b7          	lui	a5,0x40900
    2750:	3af5c063          	blt	a1,a5,2af0 <__ieee754_pow+0xee0>
    2754:	bf7007b7          	lui	a5,0xbf700
    2758:	00b787b3          	add	a5,a5,a1
    275c:	00a7e7b3          	or	a5,a5,a0
    2760:	34079863          	bnez	a5,2ab0 <__ieee754_pow+0xea0>
    2764:	000117b7          	lui	a5,0x11
    2768:	9487a603          	lw	a2,-1720(a5) # 10948 <__clz_tab+0x298>
    276c:	94c7a683          	lw	a3,-1716(a5)
    2770:	000b0513          	mv	a0,s6
    2774:	000b8593          	mv	a1,s7
    2778:	7e4020ef          	jal	ra,4f5c <__adddf3>
    277c:	00050d13          	mv	s10,a0
    2780:	00058c93          	mv	s9,a1
    2784:	00048613          	mv	a2,s1
    2788:	000a0693          	mv	a3,s4
    278c:	000c0513          	mv	a0,s8
    2790:	00040593          	mv	a1,s0
    2794:	0a4040ef          	jal	ra,6838 <__subdf3>
    2798:	00050613          	mv	a2,a0
    279c:	00058693          	mv	a3,a1
    27a0:	000d0513          	mv	a0,s10
    27a4:	000c8593          	mv	a1,s9
    27a8:	7fc030ef          	jal	ra,5fa4 <__gedf2>
    27ac:	32a04263          	bgtz	a0,2ad0 <__ieee754_pow+0xec0>
    27b0:	41445793          	srai	a5,s0,0x14
    27b4:	7ff7f793          	andi	a5,a5,2047
    27b8:	c0278793          	addi	a5,a5,-1022
    27bc:	001005b7          	lui	a1,0x100
    27c0:	40f5d7b3          	sra	a5,a1,a5
    27c4:	008787b3          	add	a5,a5,s0
    27c8:	4147d713          	srai	a4,a5,0x14
    27cc:	7ff77713          	andi	a4,a4,2047
    27d0:	c0170713          	addi	a4,a4,-1023 # 7fc01 <soln_cnt0+0x6f125>
    27d4:	fff006b7          	lui	a3,0xfff00
    27d8:	40e6d6b3          	sra	a3,a3,a4
    27dc:	00000813          	li	a6,0
    27e0:	00f6f533          	and	a0,a3,a5
    27e4:	00080613          	mv	a2,a6
    27e8:	00050693          	mv	a3,a0
    27ec:	fff58513          	addi	a0,a1,-1 # fffff <soln_cnt0+0xef523>
    27f0:	00a7f7b3          	and	a5,a5,a0
    27f4:	00b7e7b3          	or	a5,a5,a1
    27f8:	01400c13          	li	s8,20
    27fc:	40ec0c33          	sub	s8,s8,a4
    2800:	4187dc33          	sra	s8,a5,s8
    2804:	380ac663          	bltz	s5,2b90 <__ieee754_pow+0xf80>
    2808:	00048513          	mv	a0,s1
    280c:	000a0593          	mv	a1,s4
    2810:	028040ef          	jal	ra,6838 <__subdf3>
    2814:	00050493          	mv	s1,a0
    2818:	00058a13          	mv	s4,a1
    281c:	000b0613          	mv	a2,s6
    2820:	000b8693          	mv	a3,s7
    2824:	00048513          	mv	a0,s1
    2828:	000a0593          	mv	a1,s4
    282c:	730020ef          	jal	ra,4f5c <__adddf3>
    2830:	00000d13          	li	s10,0
    2834:	00058413          	mv	s0,a1
    2838:	000117b7          	lui	a5,0x11
    283c:	9507a603          	lw	a2,-1712(a5) # 10950 <__clz_tab+0x2a0>
    2840:	9547a683          	lw	a3,-1708(a5)
    2844:	000d0513          	mv	a0,s10
    2848:	00040593          	mv	a1,s0
    284c:	121030ef          	jal	ra,616c <__muldf3>
    2850:	00050c93          	mv	s9,a0
    2854:	00058a93          	mv	s5,a1
    2858:	00048613          	mv	a2,s1
    285c:	000a0693          	mv	a3,s4
    2860:	000d0513          	mv	a0,s10
    2864:	00040593          	mv	a1,s0
    2868:	7d1030ef          	jal	ra,6838 <__subdf3>
    286c:	00050613          	mv	a2,a0
    2870:	00058693          	mv	a3,a1
    2874:	000b0513          	mv	a0,s6
    2878:	000b8593          	mv	a1,s7
    287c:	7bd030ef          	jal	ra,6838 <__subdf3>
    2880:	000117b7          	lui	a5,0x11
    2884:	9587a603          	lw	a2,-1704(a5) # 10958 <__clz_tab+0x2a8>
    2888:	95c7a683          	lw	a3,-1700(a5)
    288c:	0e1030ef          	jal	ra,616c <__muldf3>
    2890:	00050a13          	mv	s4,a0
    2894:	00058493          	mv	s1,a1
    2898:	000117b7          	lui	a5,0x11
    289c:	9607a603          	lw	a2,-1696(a5) # 10960 <__clz_tab+0x2b0>
    28a0:	9647a683          	lw	a3,-1692(a5)
    28a4:	000d0513          	mv	a0,s10
    28a8:	00040593          	mv	a1,s0
    28ac:	0c1030ef          	jal	ra,616c <__muldf3>
    28b0:	00050613          	mv	a2,a0
    28b4:	00058693          	mv	a3,a1
    28b8:	000a0513          	mv	a0,s4
    28bc:	00048593          	mv	a1,s1
    28c0:	69c020ef          	jal	ra,4f5c <__adddf3>
    28c4:	00050b13          	mv	s6,a0
    28c8:	00058a13          	mv	s4,a1
    28cc:	00050613          	mv	a2,a0
    28d0:	00058693          	mv	a3,a1
    28d4:	000c8513          	mv	a0,s9
    28d8:	000a8593          	mv	a1,s5
    28dc:	680020ef          	jal	ra,4f5c <__adddf3>
    28e0:	00050493          	mv	s1,a0
    28e4:	00058413          	mv	s0,a1
    28e8:	000c8613          	mv	a2,s9
    28ec:	000a8693          	mv	a3,s5
    28f0:	749030ef          	jal	ra,6838 <__subdf3>
    28f4:	00050613          	mv	a2,a0
    28f8:	00058693          	mv	a3,a1
    28fc:	000b0513          	mv	a0,s6
    2900:	000a0593          	mv	a1,s4
    2904:	735030ef          	jal	ra,6838 <__subdf3>
    2908:	00050b93          	mv	s7,a0
    290c:	00058b13          	mv	s6,a1
    2910:	00048613          	mv	a2,s1
    2914:	00040693          	mv	a3,s0
    2918:	00048513          	mv	a0,s1
    291c:	00040593          	mv	a1,s0
    2920:	04d030ef          	jal	ra,616c <__muldf3>
    2924:	00050a93          	mv	s5,a0
    2928:	00058a13          	mv	s4,a1
    292c:	000117b7          	lui	a5,0x11
    2930:	9687a603          	lw	a2,-1688(a5) # 10968 <__clz_tab+0x2b8>
    2934:	96c7a683          	lw	a3,-1684(a5)
    2938:	035030ef          	jal	ra,616c <__muldf3>
    293c:	000117b7          	lui	a5,0x11
    2940:	9707a603          	lw	a2,-1680(a5) # 10970 <__clz_tab+0x2c0>
    2944:	9747a683          	lw	a3,-1676(a5)
    2948:	6f1030ef          	jal	ra,6838 <__subdf3>
    294c:	000a8613          	mv	a2,s5
    2950:	000a0693          	mv	a3,s4
    2954:	019030ef          	jal	ra,616c <__muldf3>
    2958:	000117b7          	lui	a5,0x11
    295c:	9787a603          	lw	a2,-1672(a5) # 10978 <__clz_tab+0x2c8>
    2960:	97c7a683          	lw	a3,-1668(a5)
    2964:	5f8020ef          	jal	ra,4f5c <__adddf3>
    2968:	000a8613          	mv	a2,s5
    296c:	000a0693          	mv	a3,s4
    2970:	7fc030ef          	jal	ra,616c <__muldf3>
    2974:	000117b7          	lui	a5,0x11
    2978:	9807a603          	lw	a2,-1664(a5) # 10980 <__clz_tab+0x2d0>
    297c:	9847a683          	lw	a3,-1660(a5)
    2980:	6b9030ef          	jal	ra,6838 <__subdf3>
    2984:	000a8613          	mv	a2,s5
    2988:	000a0693          	mv	a3,s4
    298c:	7e0030ef          	jal	ra,616c <__muldf3>
    2990:	000117b7          	lui	a5,0x11
    2994:	9887a603          	lw	a2,-1656(a5) # 10988 <__clz_tab+0x2d8>
    2998:	98c7a683          	lw	a3,-1652(a5)
    299c:	5c0020ef          	jal	ra,4f5c <__adddf3>
    29a0:	000a8613          	mv	a2,s5
    29a4:	000a0693          	mv	a3,s4
    29a8:	7c4030ef          	jal	ra,616c <__muldf3>
    29ac:	00050613          	mv	a2,a0
    29b0:	00058693          	mv	a3,a1
    29b4:	00048513          	mv	a0,s1
    29b8:	00040593          	mv	a1,s0
    29bc:	67d030ef          	jal	ra,6838 <__subdf3>
    29c0:	00050a93          	mv	s5,a0
    29c4:	00058a13          	mv	s4,a1
    29c8:	00050613          	mv	a2,a0
    29cc:	00058693          	mv	a3,a1
    29d0:	00048513          	mv	a0,s1
    29d4:	00040593          	mv	a1,s0
    29d8:	794030ef          	jal	ra,616c <__muldf3>
    29dc:	00050d13          	mv	s10,a0
    29e0:	00058c93          	mv	s9,a1
    29e4:	000117b7          	lui	a5,0x11
    29e8:	8307a603          	lw	a2,-2000(a5) # 10830 <__clz_tab+0x180>
    29ec:	8347a683          	lw	a3,-1996(a5)
    29f0:	000a8513          	mv	a0,s5
    29f4:	000a0593          	mv	a1,s4
    29f8:	641030ef          	jal	ra,6838 <__subdf3>
    29fc:	00050613          	mv	a2,a0
    2a00:	00058693          	mv	a3,a1
    2a04:	000d0513          	mv	a0,s10
    2a08:	000c8593          	mv	a1,s9
    2a0c:	52d020ef          	jal	ra,5738 <__divdf3>
    2a10:	00050a93          	mv	s5,a0
    2a14:	00058a13          	mv	s4,a1
    2a18:	000b8613          	mv	a2,s7
    2a1c:	000b0693          	mv	a3,s6
    2a20:	00048513          	mv	a0,s1
    2a24:	00040593          	mv	a1,s0
    2a28:	744030ef          	jal	ra,616c <__muldf3>
    2a2c:	000b8613          	mv	a2,s7
    2a30:	000b0693          	mv	a3,s6
    2a34:	528020ef          	jal	ra,4f5c <__adddf3>
    2a38:	00050613          	mv	a2,a0
    2a3c:	00058693          	mv	a3,a1
    2a40:	000a8513          	mv	a0,s5
    2a44:	000a0593          	mv	a1,s4
    2a48:	5f1030ef          	jal	ra,6838 <__subdf3>
    2a4c:	00048613          	mv	a2,s1
    2a50:	00040693          	mv	a3,s0
    2a54:	5e5030ef          	jal	ra,6838 <__subdf3>
    2a58:	00050613          	mv	a2,a0
    2a5c:	00058693          	mv	a3,a1
    2a60:	000107b7          	lui	a5,0x10
    2a64:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    2a68:	7c47a583          	lw	a1,1988(a5)
    2a6c:	5cd030ef          	jal	ra,6838 <__subdf3>
    2a70:	014c1693          	slli	a3,s8,0x14
    2a74:	00b686b3          	add	a3,a3,a1
    2a78:	4146d793          	srai	a5,a3,0x14
    2a7c:	10f05e63          	blez	a5,2b98 <__ieee754_pow+0xf88>
    2a80:	00050713          	mv	a4,a0
    2a84:	00068793          	mv	a5,a3
    2a88:	00090613          	mv	a2,s2
    2a8c:	00098693          	mv	a3,s3
    2a90:	00070513          	mv	a0,a4
    2a94:	00078593          	mv	a1,a5
    2a98:	6d4030ef          	jal	ra,616c <__muldf3>
    2a9c:	ad4ff06f          	j	1d70 <__ieee754_pow+0x160>
    2aa0:	000107b7          	lui	a5,0x10
    2aa4:	7c07a903          	lw	s2,1984(a5) # 107c0 <__clz_tab+0x110>
    2aa8:	7c47a983          	lw	s3,1988(a5)
    2aac:	c09ff06f          	j	26b4 <__ieee754_pow+0xaa4>
    2ab0:	00000613          	li	a2,0
    2ab4:	00000693          	li	a3,0
    2ab8:	00090513          	mv	a0,s2
    2abc:	00098593          	mv	a1,s3
    2ac0:	5c8030ef          	jal	ra,6088 <__ledf2>
    2ac4:	00052513          	slti	a0,a0,0
    2ac8:	679010ef          	jal	ra,4940 <__math_oflow>
    2acc:	aa4ff06f          	j	1d70 <__ieee754_pow+0x160>
    2ad0:	00000613          	li	a2,0
    2ad4:	00000693          	li	a3,0
    2ad8:	00090513          	mv	a0,s2
    2adc:	00098593          	mv	a1,s3
    2ae0:	5a8030ef          	jal	ra,6088 <__ledf2>
    2ae4:	00052513          	slti	a0,a0,0
    2ae8:	659010ef          	jal	ra,4940 <__math_oflow>
    2aec:	a84ff06f          	j	1d70 <__ieee754_pow+0x160>
    2af0:	00159793          	slli	a5,a1,0x1
    2af4:	0017d793          	srli	a5,a5,0x1
    2af8:	4090d737          	lui	a4,0x4090d
    2afc:	bff70713          	addi	a4,a4,-1025 # 4090cbff <soln_cnt0+0x408fc123>
    2b00:	06f75e63          	bge	a4,a5,2b7c <__ieee754_pow+0xf6c>
    2b04:	3f6f37b7          	lui	a5,0x3f6f3
    2b08:	40078793          	addi	a5,a5,1024 # 3f6f3400 <soln_cnt0+0x3f6e2924>
    2b0c:	00b787b3          	add	a5,a5,a1
    2b10:	00a7e7b3          	or	a5,a5,a0
    2b14:	04079463          	bnez	a5,2b5c <__ieee754_pow+0xf4c>
    2b18:	00048613          	mv	a2,s1
    2b1c:	000a0693          	mv	a3,s4
    2b20:	000c0513          	mv	a0,s8
    2b24:	00040593          	mv	a1,s0
    2b28:	511030ef          	jal	ra,6838 <__subdf3>
    2b2c:	000b0613          	mv	a2,s6
    2b30:	000b8693          	mv	a3,s7
    2b34:	470030ef          	jal	ra,5fa4 <__gedf2>
    2b38:	c6054ce3          	bltz	a0,27b0 <__ieee754_pow+0xba0>
    2b3c:	00000613          	li	a2,0
    2b40:	00000693          	li	a3,0
    2b44:	00090513          	mv	a0,s2
    2b48:	00098593          	mv	a1,s3
    2b4c:	53c030ef          	jal	ra,6088 <__ledf2>
    2b50:	00052513          	slti	a0,a0,0
    2b54:	5a5010ef          	jal	ra,48f8 <__math_uflow>
    2b58:	a18ff06f          	j	1d70 <__ieee754_pow+0x160>
    2b5c:	00000613          	li	a2,0
    2b60:	00000693          	li	a3,0
    2b64:	00090513          	mv	a0,s2
    2b68:	00098593          	mv	a1,s3
    2b6c:	51c030ef          	jal	ra,6088 <__ledf2>
    2b70:	00052513          	slti	a0,a0,0
    2b74:	585010ef          	jal	ra,48f8 <__math_uflow>
    2b78:	9f8ff06f          	j	1d70 <__ieee754_pow+0x160>
    2b7c:	3fe00737          	lui	a4,0x3fe00
    2b80:	00000c13          	li	s8,0
    2b84:	c8f75ce3          	bge	a4,a5,281c <__ieee754_pow+0xc0c>
    2b88:	4147d793          	srai	a5,a5,0x14
    2b8c:	c2dff06f          	j	27b8 <__ieee754_pow+0xba8>
    2b90:	41800c33          	neg	s8,s8
    2b94:	c75ff06f          	j	2808 <__ieee754_pow+0xbf8>
    2b98:	000c0613          	mv	a2,s8
    2b9c:	1d4020ef          	jal	ra,4d70 <scalbn>
    2ba0:	00050713          	mv	a4,a0
    2ba4:	00058793          	mv	a5,a1
    2ba8:	ee1ff06f          	j	2a88 <__ieee754_pow+0xe78>
    2bac:	00000513          	li	a0,0
    2bb0:	000107b7          	lui	a5,0x10
    2bb4:	7c47a583          	lw	a1,1988(a5) # 107c4 <__clz_tab+0x114>
    2bb8:	9b8ff06f          	j	1d70 <__ieee754_pow+0x160>
    2bbc:	00000513          	li	a0,0
    2bc0:	000107b7          	lui	a5,0x10
    2bc4:	7c47a583          	lw	a1,1988(a5) # 107c4 <__clz_tab+0x114>
    2bc8:	9a8ff06f          	j	1d70 <__ieee754_pow+0x160>
    2bcc:	00000913          	li	s2,0
    2bd0:	00071463          	bnez	a4,2bd8 <__ieee754_pow+0xfc8>
    2bd4:	920ff06f          	j	1cf4 <__ieee754_pow+0xe4>
    2bd8:	934ff06f          	j	1d0c <__ieee754_pow+0xfc>
    2bdc:	000a8513          	mv	a0,s5
    2be0:	000a0593          	mv	a1,s4
    2be4:	765010ef          	jal	ra,4b48 <fabs>
    2be8:	b2098c63          	beqz	s3,1f20 <__ieee754_pow+0x310>
    2bec:	000a8613          	mv	a2,s5
    2bf0:	000a0693          	mv	a3,s4
    2bf4:	000a8513          	mv	a0,s5
    2bf8:	000a0593          	mv	a1,s4
    2bfc:	43d030ef          	jal	ra,6838 <__subdf3>
    2c00:	00050613          	mv	a2,a0
    2c04:	00058693          	mv	a3,a1
    2c08:	331020ef          	jal	ra,5738 <__divdf3>
    2c0c:	964ff06f          	j	1d70 <__ieee754_pow+0x160>

00002c10 <__ieee754_rem_pio2>:
    2c10:	fa010113          	addi	sp,sp,-96
    2c14:	04112e23          	sw	ra,92(sp)
    2c18:	04812c23          	sw	s0,88(sp)
    2c1c:	04912a23          	sw	s1,84(sp)
    2c20:	05212823          	sw	s2,80(sp)
    2c24:	05312623          	sw	s3,76(sp)
    2c28:	05412423          	sw	s4,72(sp)
    2c2c:	05512223          	sw	s5,68(sp)
    2c30:	05612023          	sw	s6,64(sp)
    2c34:	03712e23          	sw	s7,60(sp)
    2c38:	03812c23          	sw	s8,56(sp)
    2c3c:	03912a23          	sw	s9,52(sp)
    2c40:	03a12823          	sw	s10,48(sp)
    2c44:	03b12623          	sw	s11,44(sp)
    2c48:	00060493          	mv	s1,a2
    2c4c:	00159413          	slli	s0,a1,0x1
    2c50:	00145413          	srli	s0,s0,0x1
    2c54:	3fe927b7          	lui	a5,0x3fe92
    2c58:	1fb78793          	addi	a5,a5,507 # 3fe921fb <soln_cnt0+0x3fe8171f>
    2c5c:	0887d663          	bge	a5,s0,2ce8 <__ieee754_rem_pio2+0xd8>
    2c60:	00058993          	mv	s3,a1
    2c64:	4002e7b7          	lui	a5,0x4002e
    2c68:	97b78793          	addi	a5,a5,-1669 # 4002d97b <soln_cnt0+0x4001ce9f>
    2c6c:	2087ca63          	blt	a5,s0,2e80 <__ieee754_rem_pio2+0x270>
    2c70:	12b05a63          	blez	a1,2da4 <__ieee754_rem_pio2+0x194>
    2c74:	000117b7          	lui	a5,0x11
    2c78:	9907a603          	lw	a2,-1648(a5) # 10990 <__clz_tab+0x2e0>
    2c7c:	9947a683          	lw	a3,-1644(a5)
    2c80:	3b9030ef          	jal	ra,6838 <__subdf3>
    2c84:	00050993          	mv	s3,a0
    2c88:	00058913          	mv	s2,a1
    2c8c:	3ff927b7          	lui	a5,0x3ff92
    2c90:	1fb78793          	addi	a5,a5,507 # 3ff921fb <soln_cnt0+0x3ff8171f>
    2c94:	0af40463          	beq	s0,a5,2d3c <__ieee754_rem_pio2+0x12c>
    2c98:	00011437          	lui	s0,0x11
    2c9c:	99842603          	lw	a2,-1640(s0) # 10998 <__clz_tab+0x2e8>
    2ca0:	99c42683          	lw	a3,-1636(s0)
    2ca4:	00098513          	mv	a0,s3
    2ca8:	00090593          	mv	a1,s2
    2cac:	38d030ef          	jal	ra,6838 <__subdf3>
    2cb0:	00a4a023          	sw	a0,0(s1) # 80000000 <soln_cnt0+0x7ffef524>
    2cb4:	00b4a223          	sw	a1,4(s1)
    2cb8:	00050613          	mv	a2,a0
    2cbc:	00058693          	mv	a3,a1
    2cc0:	00098513          	mv	a0,s3
    2cc4:	00090593          	mv	a1,s2
    2cc8:	371030ef          	jal	ra,6838 <__subdf3>
    2ccc:	99842603          	lw	a2,-1640(s0)
    2cd0:	99c42683          	lw	a3,-1636(s0)
    2cd4:	365030ef          	jal	ra,6838 <__subdf3>
    2cd8:	00a4a423          	sw	a0,8(s1)
    2cdc:	00b4a623          	sw	a1,12(s1)
    2ce0:	00100913          	li	s2,1
    2ce4:	0180006f          	j	2cfc <__ieee754_rem_pio2+0xec>
    2ce8:	00a4a023          	sw	a0,0(s1)
    2cec:	00b4a223          	sw	a1,4(s1)
    2cf0:	0004a423          	sw	zero,8(s1)
    2cf4:	0004a623          	sw	zero,12(s1)
    2cf8:	00000913          	li	s2,0
    2cfc:	00090513          	mv	a0,s2
    2d00:	05c12083          	lw	ra,92(sp)
    2d04:	05812403          	lw	s0,88(sp)
    2d08:	05412483          	lw	s1,84(sp)
    2d0c:	05012903          	lw	s2,80(sp)
    2d10:	04c12983          	lw	s3,76(sp)
    2d14:	04812a03          	lw	s4,72(sp)
    2d18:	04412a83          	lw	s5,68(sp)
    2d1c:	04012b03          	lw	s6,64(sp)
    2d20:	03c12b83          	lw	s7,60(sp)
    2d24:	03812c03          	lw	s8,56(sp)
    2d28:	03412c83          	lw	s9,52(sp)
    2d2c:	03012d03          	lw	s10,48(sp)
    2d30:	02c12d83          	lw	s11,44(sp)
    2d34:	06010113          	addi	sp,sp,96
    2d38:	00008067          	ret
    2d3c:	000117b7          	lui	a5,0x11
    2d40:	9a07a603          	lw	a2,-1632(a5) # 109a0 <__clz_tab+0x2f0>
    2d44:	9a47a683          	lw	a3,-1628(a5)
    2d48:	00098513          	mv	a0,s3
    2d4c:	00090593          	mv	a1,s2
    2d50:	2e9030ef          	jal	ra,6838 <__subdf3>
    2d54:	00050913          	mv	s2,a0
    2d58:	00058413          	mv	s0,a1
    2d5c:	000119b7          	lui	s3,0x11
    2d60:	9a89a603          	lw	a2,-1624(s3) # 109a8 <__clz_tab+0x2f8>
    2d64:	9ac9a683          	lw	a3,-1620(s3)
    2d68:	2d1030ef          	jal	ra,6838 <__subdf3>
    2d6c:	00a4a023          	sw	a0,0(s1)
    2d70:	00b4a223          	sw	a1,4(s1)
    2d74:	00050613          	mv	a2,a0
    2d78:	00058693          	mv	a3,a1
    2d7c:	00090513          	mv	a0,s2
    2d80:	00040593          	mv	a1,s0
    2d84:	2b5030ef          	jal	ra,6838 <__subdf3>
    2d88:	9a89a603          	lw	a2,-1624(s3)
    2d8c:	9ac9a683          	lw	a3,-1620(s3)
    2d90:	2a9030ef          	jal	ra,6838 <__subdf3>
    2d94:	00a4a423          	sw	a0,8(s1)
    2d98:	00b4a623          	sw	a1,12(s1)
    2d9c:	00100913          	li	s2,1
    2da0:	f5dff06f          	j	2cfc <__ieee754_rem_pio2+0xec>
    2da4:	000117b7          	lui	a5,0x11
    2da8:	9907a603          	lw	a2,-1648(a5) # 10990 <__clz_tab+0x2e0>
    2dac:	9947a683          	lw	a3,-1644(a5)
    2db0:	1ac020ef          	jal	ra,4f5c <__adddf3>
    2db4:	00050993          	mv	s3,a0
    2db8:	00058913          	mv	s2,a1
    2dbc:	3ff927b7          	lui	a5,0x3ff92
    2dc0:	1fb78793          	addi	a5,a5,507 # 3ff921fb <soln_cnt0+0x3ff8171f>
    2dc4:	04f40a63          	beq	s0,a5,2e18 <__ieee754_rem_pio2+0x208>
    2dc8:	00011437          	lui	s0,0x11
    2dcc:	99842603          	lw	a2,-1640(s0) # 10998 <__clz_tab+0x2e8>
    2dd0:	99c42683          	lw	a3,-1636(s0)
    2dd4:	00098513          	mv	a0,s3
    2dd8:	00090593          	mv	a1,s2
    2ddc:	180020ef          	jal	ra,4f5c <__adddf3>
    2de0:	00a4a023          	sw	a0,0(s1)
    2de4:	00b4a223          	sw	a1,4(s1)
    2de8:	00050613          	mv	a2,a0
    2dec:	00058693          	mv	a3,a1
    2df0:	00098513          	mv	a0,s3
    2df4:	00090593          	mv	a1,s2
    2df8:	241030ef          	jal	ra,6838 <__subdf3>
    2dfc:	99842603          	lw	a2,-1640(s0)
    2e00:	99c42683          	lw	a3,-1636(s0)
    2e04:	158020ef          	jal	ra,4f5c <__adddf3>
    2e08:	00a4a423          	sw	a0,8(s1)
    2e0c:	00b4a623          	sw	a1,12(s1)
    2e10:	fff00913          	li	s2,-1
    2e14:	ee9ff06f          	j	2cfc <__ieee754_rem_pio2+0xec>
    2e18:	000117b7          	lui	a5,0x11
    2e1c:	9a07a603          	lw	a2,-1632(a5) # 109a0 <__clz_tab+0x2f0>
    2e20:	9a47a683          	lw	a3,-1628(a5)
    2e24:	00098513          	mv	a0,s3
    2e28:	00090593          	mv	a1,s2
    2e2c:	130020ef          	jal	ra,4f5c <__adddf3>
    2e30:	00050913          	mv	s2,a0
    2e34:	00058413          	mv	s0,a1
    2e38:	000119b7          	lui	s3,0x11
    2e3c:	9a89a603          	lw	a2,-1624(s3) # 109a8 <__clz_tab+0x2f8>
    2e40:	9ac9a683          	lw	a3,-1620(s3)
    2e44:	118020ef          	jal	ra,4f5c <__adddf3>
    2e48:	00a4a023          	sw	a0,0(s1)
    2e4c:	00b4a223          	sw	a1,4(s1)
    2e50:	00050613          	mv	a2,a0
    2e54:	00058693          	mv	a3,a1
    2e58:	00090513          	mv	a0,s2
    2e5c:	00040593          	mv	a1,s0
    2e60:	1d9030ef          	jal	ra,6838 <__subdf3>
    2e64:	9a89a603          	lw	a2,-1624(s3)
    2e68:	9ac9a683          	lw	a3,-1620(s3)
    2e6c:	0f0020ef          	jal	ra,4f5c <__adddf3>
    2e70:	00a4a423          	sw	a0,8(s1)
    2e74:	00b4a623          	sw	a1,12(s1)
    2e78:	fff00913          	li	s2,-1
    2e7c:	e81ff06f          	j	2cfc <__ieee754_rem_pio2+0xec>
    2e80:	413927b7          	lui	a5,0x41392
    2e84:	1fb78793          	addi	a5,a5,507 # 413921fb <soln_cnt0+0x4138171f>
    2e88:	1087dc63          	bge	a5,s0,2fa0 <__ieee754_rem_pio2+0x390>
    2e8c:	7ff007b7          	lui	a5,0x7ff00
    2e90:	3ef45063          	bge	s0,a5,3270 <__ieee754_rem_pio2+0x660>
    2e94:	00050793          	mv	a5,a0
    2e98:	41445a13          	srai	s4,s0,0x14
    2e9c:	beaa0a13          	addi	s4,s4,-1046
    2ea0:	014a1713          	slli	a4,s4,0x14
    2ea4:	00050a93          	mv	s5,a0
    2ea8:	40e40933          	sub	s2,s0,a4
    2eac:	00078513          	mv	a0,a5
    2eb0:	00090593          	mv	a1,s2
    2eb4:	1c0040ef          	jal	ra,7074 <__fixdfsi>
    2eb8:	23c040ef          	jal	ra,70f4 <__floatsidf>
    2ebc:	00a12423          	sw	a0,8(sp)
    2ec0:	00b12623          	sw	a1,12(sp)
    2ec4:	00050613          	mv	a2,a0
    2ec8:	00058693          	mv	a3,a1
    2ecc:	000a8513          	mv	a0,s5
    2ed0:	00090593          	mv	a1,s2
    2ed4:	165030ef          	jal	ra,6838 <__subdf3>
    2ed8:	00011ab7          	lui	s5,0x11
    2edc:	9c8aa603          	lw	a2,-1592(s5) # 109c8 <__clz_tab+0x318>
    2ee0:	9ccaa683          	lw	a3,-1588(s5)
    2ee4:	288030ef          	jal	ra,616c <__muldf3>
    2ee8:	00050913          	mv	s2,a0
    2eec:	00058413          	mv	s0,a1
    2ef0:	184040ef          	jal	ra,7074 <__fixdfsi>
    2ef4:	200040ef          	jal	ra,70f4 <__floatsidf>
    2ef8:	00a12823          	sw	a0,16(sp)
    2efc:	00b12a23          	sw	a1,20(sp)
    2f00:	00050613          	mv	a2,a0
    2f04:	00058693          	mv	a3,a1
    2f08:	00090513          	mv	a0,s2
    2f0c:	00040593          	mv	a1,s0
    2f10:	129030ef          	jal	ra,6838 <__subdf3>
    2f14:	9c8aa603          	lw	a2,-1592(s5)
    2f18:	9ccaa683          	lw	a3,-1588(s5)
    2f1c:	250030ef          	jal	ra,616c <__muldf3>
    2f20:	00a12c23          	sw	a0,24(sp)
    2f24:	00b12e23          	sw	a1,28(sp)
    2f28:	00810913          	addi	s2,sp,8
    2f2c:	00300413          	li	s0,3
    2f30:	00040a93          	mv	s5,s0
    2f34:	fff40413          	addi	s0,s0,-1
    2f38:	ff890913          	addi	s2,s2,-8
    2f3c:	00000613          	li	a2,0
    2f40:	00000693          	li	a3,0
    2f44:	01892503          	lw	a0,24(s2)
    2f48:	01c92583          	lw	a1,28(s2)
    2f4c:	7cd020ef          	jal	ra,5f18 <__eqdf2>
    2f50:	fe0500e3          	beqz	a0,2f30 <__ieee754_rem_pio2+0x320>
    2f54:	000107b7          	lui	a5,0x10
    2f58:	4e078793          	addi	a5,a5,1248 # 104e0 <two_over_pi>
    2f5c:	00200713          	li	a4,2
    2f60:	000a8693          	mv	a3,s5
    2f64:	000a0613          	mv	a2,s4
    2f68:	00048593          	mv	a1,s1
    2f6c:	00810513          	addi	a0,sp,8
    2f70:	179000ef          	jal	ra,38e8 <__kernel_rem_pio2>
    2f74:	00050913          	mv	s2,a0
    2f78:	d809d2e3          	bgez	s3,2cfc <__ieee754_rem_pio2+0xec>
    2f7c:	800006b7          	lui	a3,0x80000
    2f80:	0044a603          	lw	a2,4(s1)
    2f84:	00d647b3          	xor	a5,a2,a3
    2f88:	00f4a223          	sw	a5,4(s1)
    2f8c:	00c4a603          	lw	a2,12(s1)
    2f90:	00d647b3          	xor	a5,a2,a3
    2f94:	00f4a623          	sw	a5,12(s1)
    2f98:	40a00933          	neg	s2,a0
    2f9c:	d61ff06f          	j	2cfc <__ieee754_rem_pio2+0xec>
    2fa0:	3a9010ef          	jal	ra,4b48 <fabs>
    2fa4:	00050a93          	mv	s5,a0
    2fa8:	00058a13          	mv	s4,a1
    2fac:	000117b7          	lui	a5,0x11
    2fb0:	9b07a603          	lw	a2,-1616(a5) # 109b0 <__clz_tab+0x300>
    2fb4:	9b47a683          	lw	a3,-1612(a5)
    2fb8:	1b4030ef          	jal	ra,616c <__muldf3>
    2fbc:	000117b7          	lui	a5,0x11
    2fc0:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    2fc4:	82c7a683          	lw	a3,-2004(a5)
    2fc8:	795010ef          	jal	ra,4f5c <__adddf3>
    2fcc:	0a8040ef          	jal	ra,7074 <__fixdfsi>
    2fd0:	00050913          	mv	s2,a0
    2fd4:	120040ef          	jal	ra,70f4 <__floatsidf>
    2fd8:	00050c93          	mv	s9,a0
    2fdc:	00058c13          	mv	s8,a1
    2fe0:	000117b7          	lui	a5,0x11
    2fe4:	9907a603          	lw	a2,-1648(a5) # 10990 <__clz_tab+0x2e0>
    2fe8:	9947a683          	lw	a3,-1644(a5)
    2fec:	180030ef          	jal	ra,616c <__muldf3>
    2ff0:	00050613          	mv	a2,a0
    2ff4:	00058693          	mv	a3,a1
    2ff8:	000a8513          	mv	a0,s5
    2ffc:	000a0593          	mv	a1,s4
    3000:	039030ef          	jal	ra,6838 <__subdf3>
    3004:	00050b93          	mv	s7,a0
    3008:	00058b13          	mv	s6,a1
    300c:	000117b7          	lui	a5,0x11
    3010:	9987a603          	lw	a2,-1640(a5) # 10998 <__clz_tab+0x2e8>
    3014:	99c7a683          	lw	a3,-1636(a5)
    3018:	000c8513          	mv	a0,s9
    301c:	000c0593          	mv	a1,s8
    3020:	14c030ef          	jal	ra,616c <__muldf3>
    3024:	00050a93          	mv	s5,a0
    3028:	00058a13          	mv	s4,a1
    302c:	01f00793          	li	a5,31
    3030:	0527c063          	blt	a5,s2,3070 <__ieee754_rem_pio2+0x460>
    3034:	fff90713          	addi	a4,s2,-1
    3038:	00271713          	slli	a4,a4,0x2
    303c:	000107b7          	lui	a5,0x10
    3040:	46078793          	addi	a5,a5,1120 # 10460 <npio2_hw>
    3044:	00e787b3          	add	a5,a5,a4
    3048:	0007a783          	lw	a5,0(a5)
    304c:	02878263          	beq	a5,s0,3070 <__ieee754_rem_pio2+0x460>
    3050:	00050613          	mv	a2,a0
    3054:	00058693          	mv	a3,a1
    3058:	000b8513          	mv	a0,s7
    305c:	000b0593          	mv	a1,s6
    3060:	7d8030ef          	jal	ra,6838 <__subdf3>
    3064:	00a4a023          	sw	a0,0(s1)
    3068:	00b4a223          	sw	a1,4(s1)
    306c:	0380006f          	j	30a4 <__ieee754_rem_pio2+0x494>
    3070:	000a8613          	mv	a2,s5
    3074:	000a0693          	mv	a3,s4
    3078:	000b8513          	mv	a0,s7
    307c:	000b0593          	mv	a1,s6
    3080:	7b8030ef          	jal	ra,6838 <__subdf3>
    3084:	41445413          	srai	s0,s0,0x14
    3088:	0145d793          	srli	a5,a1,0x14
    308c:	7ff7f793          	andi	a5,a5,2047
    3090:	40f407b3          	sub	a5,s0,a5
    3094:	01000713          	li	a4,16
    3098:	04f74e63          	blt	a4,a5,30f4 <__ieee754_rem_pio2+0x4e4>
    309c:	00a4a023          	sw	a0,0(s1)
    30a0:	00b4a223          	sw	a1,4(s1)
    30a4:	0004ac03          	lw	s8,0(s1)
    30a8:	0044a403          	lw	s0,4(s1)
    30ac:	000c0613          	mv	a2,s8
    30b0:	00040693          	mv	a3,s0
    30b4:	000b8513          	mv	a0,s7
    30b8:	000b0593          	mv	a1,s6
    30bc:	77c030ef          	jal	ra,6838 <__subdf3>
    30c0:	000a8613          	mv	a2,s5
    30c4:	000a0693          	mv	a3,s4
    30c8:	770030ef          	jal	ra,6838 <__subdf3>
    30cc:	00a4a423          	sw	a0,8(s1)
    30d0:	00b4a623          	sw	a1,12(s1)
    30d4:	c209d4e3          	bgez	s3,2cfc <__ieee754_rem_pio2+0xec>
    30d8:	800007b7          	lui	a5,0x80000
    30dc:	0087c433          	xor	s0,a5,s0
    30e0:	0084a223          	sw	s0,4(s1)
    30e4:	00b7c7b3          	xor	a5,a5,a1
    30e8:	00f4a623          	sw	a5,12(s1)
    30ec:	41200933          	neg	s2,s2
    30f0:	c0dff06f          	j	2cfc <__ieee754_rem_pio2+0xec>
    30f4:	000117b7          	lui	a5,0x11
    30f8:	9a07a603          	lw	a2,-1632(a5) # 109a0 <__clz_tab+0x2f0>
    30fc:	9a47a683          	lw	a3,-1628(a5)
    3100:	000c8513          	mv	a0,s9
    3104:	000c0593          	mv	a1,s8
    3108:	064030ef          	jal	ra,616c <__muldf3>
    310c:	00050a93          	mv	s5,a0
    3110:	00058a13          	mv	s4,a1
    3114:	00050613          	mv	a2,a0
    3118:	00058693          	mv	a3,a1
    311c:	000b8513          	mv	a0,s7
    3120:	000b0593          	mv	a1,s6
    3124:	714030ef          	jal	ra,6838 <__subdf3>
    3128:	00050d93          	mv	s11,a0
    312c:	00058d13          	mv	s10,a1
    3130:	00050613          	mv	a2,a0
    3134:	00058693          	mv	a3,a1
    3138:	000b8513          	mv	a0,s7
    313c:	000b0593          	mv	a1,s6
    3140:	6f8030ef          	jal	ra,6838 <__subdf3>
    3144:	000a8613          	mv	a2,s5
    3148:	000a0693          	mv	a3,s4
    314c:	6ec030ef          	jal	ra,6838 <__subdf3>
    3150:	00050a93          	mv	s5,a0
    3154:	00058a13          	mv	s4,a1
    3158:	000117b7          	lui	a5,0x11
    315c:	9a87a603          	lw	a2,-1624(a5) # 109a8 <__clz_tab+0x2f8>
    3160:	9ac7a683          	lw	a3,-1620(a5)
    3164:	000c8513          	mv	a0,s9
    3168:	000c0593          	mv	a1,s8
    316c:	000030ef          	jal	ra,616c <__muldf3>
    3170:	000a8613          	mv	a2,s5
    3174:	000a0693          	mv	a3,s4
    3178:	6c0030ef          	jal	ra,6838 <__subdf3>
    317c:	00050a93          	mv	s5,a0
    3180:	00058a13          	mv	s4,a1
    3184:	00050613          	mv	a2,a0
    3188:	00058693          	mv	a3,a1
    318c:	000d8513          	mv	a0,s11
    3190:	000d0593          	mv	a1,s10
    3194:	6a4030ef          	jal	ra,6838 <__subdf3>
    3198:	0145d793          	srli	a5,a1,0x14
    319c:	7ff7f793          	andi	a5,a5,2047
    31a0:	40f40433          	sub	s0,s0,a5
    31a4:	03100793          	li	a5,49
    31a8:	0087cc63          	blt	a5,s0,31c0 <__ieee754_rem_pio2+0x5b0>
    31ac:	00a4a023          	sw	a0,0(s1)
    31b0:	00b4a223          	sw	a1,4(s1)
    31b4:	000d8b93          	mv	s7,s11
    31b8:	000d0b13          	mv	s6,s10
    31bc:	ee9ff06f          	j	30a4 <__ieee754_rem_pio2+0x494>
    31c0:	000117b7          	lui	a5,0x11
    31c4:	9b87a603          	lw	a2,-1608(a5) # 109b8 <__clz_tab+0x308>
    31c8:	9bc7a683          	lw	a3,-1604(a5)
    31cc:	000c8513          	mv	a0,s9
    31d0:	000c0593          	mv	a1,s8
    31d4:	799020ef          	jal	ra,616c <__muldf3>
    31d8:	00050a13          	mv	s4,a0
    31dc:	00058413          	mv	s0,a1
    31e0:	00050613          	mv	a2,a0
    31e4:	00058693          	mv	a3,a1
    31e8:	000d8513          	mv	a0,s11
    31ec:	000d0593          	mv	a1,s10
    31f0:	648030ef          	jal	ra,6838 <__subdf3>
    31f4:	00050b93          	mv	s7,a0
    31f8:	00058b13          	mv	s6,a1
    31fc:	00050613          	mv	a2,a0
    3200:	00058693          	mv	a3,a1
    3204:	000d8513          	mv	a0,s11
    3208:	000d0593          	mv	a1,s10
    320c:	62c030ef          	jal	ra,6838 <__subdf3>
    3210:	000a0613          	mv	a2,s4
    3214:	00040693          	mv	a3,s0
    3218:	620030ef          	jal	ra,6838 <__subdf3>
    321c:	00050a13          	mv	s4,a0
    3220:	00058413          	mv	s0,a1
    3224:	000117b7          	lui	a5,0x11
    3228:	9c07a603          	lw	a2,-1600(a5) # 109c0 <__clz_tab+0x310>
    322c:	9c47a683          	lw	a3,-1596(a5)
    3230:	000c8513          	mv	a0,s9
    3234:	000c0593          	mv	a1,s8
    3238:	735020ef          	jal	ra,616c <__muldf3>
    323c:	000a0613          	mv	a2,s4
    3240:	00040693          	mv	a3,s0
    3244:	5f4030ef          	jal	ra,6838 <__subdf3>
    3248:	00050a93          	mv	s5,a0
    324c:	00058a13          	mv	s4,a1
    3250:	00050613          	mv	a2,a0
    3254:	00058693          	mv	a3,a1
    3258:	000b8513          	mv	a0,s7
    325c:	000b0593          	mv	a1,s6
    3260:	5d8030ef          	jal	ra,6838 <__subdf3>
    3264:	00a4a023          	sw	a0,0(s1)
    3268:	00b4a223          	sw	a1,4(s1)
    326c:	e39ff06f          	j	30a4 <__ieee754_rem_pio2+0x494>
    3270:	00050613          	mv	a2,a0
    3274:	00058693          	mv	a3,a1
    3278:	5c0030ef          	jal	ra,6838 <__subdf3>
    327c:	00a4a423          	sw	a0,8(s1)
    3280:	00b4a623          	sw	a1,12(s1)
    3284:	00a4a023          	sw	a0,0(s1)
    3288:	00b4a223          	sw	a1,4(s1)
    328c:	00000913          	li	s2,0
    3290:	a6dff06f          	j	2cfc <__ieee754_rem_pio2+0xec>

00003294 <__ieee754_sqrt>:
    3294:	ff010113          	addi	sp,sp,-16
    3298:	00112623          	sw	ra,12(sp)
    329c:	00812423          	sw	s0,8(sp)
    32a0:	00912223          	sw	s1,4(sp)
    32a4:	00050493          	mv	s1,a0
    32a8:	00058413          	mv	s0,a1
    32ac:	7ff006b7          	lui	a3,0x7ff00
    32b0:	00b6f633          	and	a2,a3,a1
    32b4:	06d60663          	beq	a2,a3,3320 <__ieee754_sqrt+0x8c>
    32b8:	00058793          	mv	a5,a1
    32bc:	00050713          	mv	a4,a0
    32c0:	08b05463          	blez	a1,3348 <__ieee754_sqrt+0xb4>
    32c4:	4145de93          	srai	t4,a1,0x14
    32c8:	120e8063          	beqz	t4,33e8 <__ieee754_sqrt+0x154>
    32cc:	c01e8e93          	addi	t4,t4,-1023
    32d0:	001006b7          	lui	a3,0x100
    32d4:	fff68613          	addi	a2,a3,-1 # fffff <soln_cnt0+0xef523>
    32d8:	00c7f7b3          	and	a5,a5,a2
    32dc:	00d7e6b3          	or	a3,a5,a3
    32e0:	001ef793          	andi	a5,t4,1
    32e4:	00078a63          	beqz	a5,32f8 <__ieee754_sqrt+0x64>
    32e8:	01f75793          	srli	a5,a4,0x1f
    32ec:	00169693          	slli	a3,a3,0x1
    32f0:	00d786b3          	add	a3,a5,a3
    32f4:	00171713          	slli	a4,a4,0x1
    32f8:	401ede93          	srai	t4,t4,0x1
    32fc:	01f75793          	srli	a5,a4,0x1f
    3300:	00169693          	slli	a3,a3,0x1
    3304:	00d787b3          	add	a5,a5,a3
    3308:	00171713          	slli	a4,a4,0x1
    330c:	01600593          	li	a1,22
    3310:	00000e13          	li	t3,0
    3314:	00000693          	li	a3,0
    3318:	00200637          	lui	a2,0x200
    331c:	0f80006f          	j	3414 <__ieee754_sqrt+0x180>
    3320:	00050613          	mv	a2,a0
    3324:	00058693          	mv	a3,a1
    3328:	00048513          	mv	a0,s1
    332c:	00040593          	mv	a1,s0
    3330:	63d020ef          	jal	ra,616c <__muldf3>
    3334:	00048613          	mv	a2,s1
    3338:	00040693          	mv	a3,s0
    333c:	421010ef          	jal	ra,4f5c <__adddf3>
    3340:	00050693          	mv	a3,a0
    3344:	1b00006f          	j	34f4 <__ieee754_sqrt+0x260>
    3348:	00159613          	slli	a2,a1,0x1
    334c:	00165613          	srli	a2,a2,0x1
    3350:	00a66633          	or	a2,a2,a0
    3354:	00050693          	mv	a3,a0
    3358:	18060e63          	beqz	a2,34f4 <__ieee754_sqrt+0x260>
    335c:	0605c263          	bltz	a1,33c0 <__ieee754_sqrt+0x12c>
    3360:	4145de93          	srai	t4,a1,0x14
    3364:	f60e94e3          	bnez	t4,32cc <__ieee754_sqrt+0x38>
    3368:	02059063          	bnez	a1,3388 <__ieee754_sqrt+0xf4>
    336c:	00058e93          	mv	t4,a1
    3370:	febe8e93          	addi	t4,t4,-21
    3374:	00b75793          	srli	a5,a4,0xb
    3378:	01571713          	slli	a4,a4,0x15
    337c:	fe078ae3          	beqz	a5,3370 <__ieee754_sqrt+0xdc>
    3380:	0147d693          	srli	a3,a5,0x14
    3384:	06069663          	bnez	a3,33f0 <__ieee754_sqrt+0x15c>
    3388:	00000593          	li	a1,0
    338c:	00100637          	lui	a2,0x100
    3390:	00179793          	slli	a5,a5,0x1
    3394:	00158593          	addi	a1,a1,1
    3398:	00c7f6b3          	and	a3,a5,a2
    339c:	fe068ae3          	beqz	a3,3390 <__ieee754_sqrt+0xfc>
    33a0:	fff58693          	addi	a3,a1,-1
    33a4:	40de8eb3          	sub	t4,t4,a3
    33a8:	02000693          	li	a3,32
    33ac:	40b686b3          	sub	a3,a3,a1
    33b0:	00d756b3          	srl	a3,a4,a3
    33b4:	00f6e7b3          	or	a5,a3,a5
    33b8:	00b71733          	sll	a4,a4,a1
    33bc:	f11ff06f          	j	32cc <__ieee754_sqrt+0x38>
    33c0:	00050613          	mv	a2,a0
    33c4:	00058693          	mv	a3,a1
    33c8:	00048513          	mv	a0,s1
    33cc:	00040593          	mv	a1,s0
    33d0:	468030ef          	jal	ra,6838 <__subdf3>
    33d4:	00050613          	mv	a2,a0
    33d8:	00058693          	mv	a3,a1
    33dc:	35c020ef          	jal	ra,5738 <__divdf3>
    33e0:	00050693          	mv	a3,a0
    33e4:	1100006f          	j	34f4 <__ieee754_sqrt+0x260>
    33e8:	00040793          	mv	a5,s0
    33ec:	f9dff06f          	j	3388 <__ieee754_sqrt+0xf4>
    33f0:	00040593          	mv	a1,s0
    33f4:	fadff06f          	j	33a0 <__ieee754_sqrt+0x10c>
    33f8:	01f75513          	srli	a0,a4,0x1f
    33fc:	00179793          	slli	a5,a5,0x1
    3400:	00f507b3          	add	a5,a0,a5
    3404:	00171713          	slli	a4,a4,0x1
    3408:	00165613          	srli	a2,a2,0x1
    340c:	fff58593          	addi	a1,a1,-1
    3410:	00058e63          	beqz	a1,342c <__ieee754_sqrt+0x198>
    3414:	00c68533          	add	a0,a3,a2
    3418:	fea7c0e3          	blt	a5,a0,33f8 <__ieee754_sqrt+0x164>
    341c:	00c506b3          	add	a3,a0,a2
    3420:	40a787b3          	sub	a5,a5,a0
    3424:	00ce0e33          	add	t3,t3,a2
    3428:	fd1ff06f          	j	33f8 <__ieee754_sqrt+0x164>
    342c:	00058313          	mv	t1,a1
    3430:	02000813          	li	a6,32
    3434:	80000637          	lui	a2,0x80000
    3438:	0440006f          	j	347c <__ieee754_sqrt+0x1e8>
    343c:	00c505b3          	add	a1,a0,a2
    3440:	00068893          	mv	a7,a3
    3444:	04054e63          	bltz	a0,34a0 <__ieee754_sqrt+0x20c>
    3448:	40d787b3          	sub	a5,a5,a3
    344c:	00a736b3          	sltu	a3,a4,a0
    3450:	40d787b3          	sub	a5,a5,a3
    3454:	40a70733          	sub	a4,a4,a0
    3458:	00c30333          	add	t1,t1,a2
    345c:	00088693          	mv	a3,a7
    3460:	01f75513          	srli	a0,a4,0x1f
    3464:	00179793          	slli	a5,a5,0x1
    3468:	00f507b3          	add	a5,a0,a5
    346c:	00171713          	slli	a4,a4,0x1
    3470:	00165613          	srli	a2,a2,0x1
    3474:	fff80813          	addi	a6,a6,-1
    3478:	02080c63          	beqz	a6,34b0 <__ieee754_sqrt+0x21c>
    347c:	00b60533          	add	a0,a2,a1
    3480:	faf6cee3          	blt	a3,a5,343c <__ieee754_sqrt+0x1a8>
    3484:	fcd79ee3          	bne	a5,a3,3460 <__ieee754_sqrt+0x1cc>
    3488:	fca76ce3          	bltu	a4,a0,3460 <__ieee754_sqrt+0x1cc>
    348c:	00c505b3          	add	a1,a0,a2
    3490:	00054863          	bltz	a0,34a0 <__ieee754_sqrt+0x20c>
    3494:	40d787b3          	sub	a5,a5,a3
    3498:	00068893          	mv	a7,a3
    349c:	fb9ff06f          	j	3454 <__ieee754_sqrt+0x1c0>
    34a0:	fff5c893          	not	a7,a1
    34a4:	01f8d893          	srli	a7,a7,0x1f
    34a8:	011688b3          	add	a7,a3,a7
    34ac:	f9dff06f          	j	3448 <__ieee754_sqrt+0x1b4>
    34b0:	00e7e533          	or	a0,a5,a4
    34b4:	00050a63          	beqz	a0,34c8 <__ieee754_sqrt+0x234>
    34b8:	fff00793          	li	a5,-1
    34bc:	04f30863          	beq	t1,a5,350c <__ieee754_sqrt+0x278>
    34c0:	00130313          	addi	t1,t1,1
    34c4:	ffe37313          	andi	t1,t1,-2
    34c8:	401e5793          	srai	a5,t3,0x1
    34cc:	3fe00737          	lui	a4,0x3fe00
    34d0:	00e787b3          	add	a5,a5,a4
    34d4:	00135313          	srli	t1,t1,0x1
    34d8:	001e7e13          	andi	t3,t3,1
    34dc:	000e0663          	beqz	t3,34e8 <__ieee754_sqrt+0x254>
    34e0:	80000737          	lui	a4,0x80000
    34e4:	00e36333          	or	t1,t1,a4
    34e8:	014e9e93          	slli	t4,t4,0x14
    34ec:	00030693          	mv	a3,t1
    34f0:	00fe85b3          	add	a1,t4,a5
    34f4:	00068513          	mv	a0,a3
    34f8:	00c12083          	lw	ra,12(sp)
    34fc:	00812403          	lw	s0,8(sp)
    3500:	00412483          	lw	s1,4(sp)
    3504:	01010113          	addi	sp,sp,16
    3508:	00008067          	ret
    350c:	001e0e13          	addi	t3,t3,1
    3510:	00080313          	mv	t1,a6
    3514:	fb5ff06f          	j	34c8 <__ieee754_sqrt+0x234>

00003518 <__kernel_cos>:
    3518:	fc010113          	addi	sp,sp,-64
    351c:	02112e23          	sw	ra,60(sp)
    3520:	02812c23          	sw	s0,56(sp)
    3524:	02912a23          	sw	s1,52(sp)
    3528:	03212823          	sw	s2,48(sp)
    352c:	03312623          	sw	s3,44(sp)
    3530:	03412423          	sw	s4,40(sp)
    3534:	03512223          	sw	s5,36(sp)
    3538:	03612023          	sw	s6,32(sp)
    353c:	01712e23          	sw	s7,28(sp)
    3540:	01812c23          	sw	s8,24(sp)
    3544:	01912a23          	sw	s9,20(sp)
    3548:	01a12823          	sw	s10,16(sp)
    354c:	01b12623          	sw	s11,12(sp)
    3550:	00050993          	mv	s3,a0
    3554:	00058913          	mv	s2,a1
    3558:	00060b13          	mv	s6,a2
    355c:	00068b93          	mv	s7,a3
    3560:	00159a13          	slli	s4,a1,0x1
    3564:	001a5a13          	srli	s4,s4,0x1
    3568:	3e4007b7          	lui	a5,0x3e400
    356c:	1afa5863          	bge	s4,a5,371c <__kernel_cos+0x204>
    3570:	00098513          	mv	a0,s3
    3574:	00090593          	mv	a1,s2
    3578:	2fd030ef          	jal	ra,7074 <__fixdfsi>
    357c:	34050e63          	beqz	a0,38d8 <__kernel_cos+0x3c0>
    3580:	00098613          	mv	a2,s3
    3584:	00090693          	mv	a3,s2
    3588:	00098513          	mv	a0,s3
    358c:	00090593          	mv	a1,s2
    3590:	3dd020ef          	jal	ra,616c <__muldf3>
    3594:	00050493          	mv	s1,a0
    3598:	00058413          	mv	s0,a1
    359c:	000117b7          	lui	a5,0x11
    35a0:	9d87a603          	lw	a2,-1576(a5) # 109d8 <__clz_tab+0x328>
    35a4:	9dc7a683          	lw	a3,-1572(a5)
    35a8:	3c5020ef          	jal	ra,616c <__muldf3>
    35ac:	000117b7          	lui	a5,0x11
    35b0:	9e07a603          	lw	a2,-1568(a5) # 109e0 <__clz_tab+0x330>
    35b4:	9e47a683          	lw	a3,-1564(a5)
    35b8:	1a5010ef          	jal	ra,4f5c <__adddf3>
    35bc:	00048613          	mv	a2,s1
    35c0:	00040693          	mv	a3,s0
    35c4:	3a9020ef          	jal	ra,616c <__muldf3>
    35c8:	000117b7          	lui	a5,0x11
    35cc:	9e87a603          	lw	a2,-1560(a5) # 109e8 <__clz_tab+0x338>
    35d0:	9ec7a683          	lw	a3,-1556(a5)
    35d4:	264030ef          	jal	ra,6838 <__subdf3>
    35d8:	00048613          	mv	a2,s1
    35dc:	00040693          	mv	a3,s0
    35e0:	38d020ef          	jal	ra,616c <__muldf3>
    35e4:	000117b7          	lui	a5,0x11
    35e8:	9f07a603          	lw	a2,-1552(a5) # 109f0 <__clz_tab+0x340>
    35ec:	9f47a683          	lw	a3,-1548(a5)
    35f0:	16d010ef          	jal	ra,4f5c <__adddf3>
    35f4:	00048613          	mv	a2,s1
    35f8:	00040693          	mv	a3,s0
    35fc:	371020ef          	jal	ra,616c <__muldf3>
    3600:	000117b7          	lui	a5,0x11
    3604:	9f87a603          	lw	a2,-1544(a5) # 109f8 <__clz_tab+0x348>
    3608:	9fc7a683          	lw	a3,-1540(a5)
    360c:	22c030ef          	jal	ra,6838 <__subdf3>
    3610:	00048613          	mv	a2,s1
    3614:	00040693          	mv	a3,s0
    3618:	355020ef          	jal	ra,616c <__muldf3>
    361c:	000117b7          	lui	a5,0x11
    3620:	a007a603          	lw	a2,-1536(a5) # 10a00 <__clz_tab+0x350>
    3624:	a047a683          	lw	a3,-1532(a5)
    3628:	135010ef          	jal	ra,4f5c <__adddf3>
    362c:	00048613          	mv	a2,s1
    3630:	00040693          	mv	a3,s0
    3634:	339020ef          	jal	ra,616c <__muldf3>
    3638:	00050c93          	mv	s9,a0
    363c:	00058c13          	mv	s8,a1
    3640:	000117b7          	lui	a5,0x11
    3644:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    3648:	82c7a683          	lw	a3,-2004(a5)
    364c:	00048513          	mv	a0,s1
    3650:	00040593          	mv	a1,s0
    3654:	319020ef          	jal	ra,616c <__muldf3>
    3658:	00050a93          	mv	s5,a0
    365c:	00058a13          	mv	s4,a1
    3660:	000c8613          	mv	a2,s9
    3664:	000c0693          	mv	a3,s8
    3668:	00048513          	mv	a0,s1
    366c:	00040593          	mv	a1,s0
    3670:	2fd020ef          	jal	ra,616c <__muldf3>
    3674:	00050493          	mv	s1,a0
    3678:	00058413          	mv	s0,a1
    367c:	000b0613          	mv	a2,s6
    3680:	000b8693          	mv	a3,s7
    3684:	00098513          	mv	a0,s3
    3688:	00090593          	mv	a1,s2
    368c:	2e1020ef          	jal	ra,616c <__muldf3>
    3690:	00050613          	mv	a2,a0
    3694:	00058693          	mv	a3,a1
    3698:	00048513          	mv	a0,s1
    369c:	00040593          	mv	a1,s0
    36a0:	198030ef          	jal	ra,6838 <__subdf3>
    36a4:	00050613          	mv	a2,a0
    36a8:	00058693          	mv	a3,a1
    36ac:	000a8513          	mv	a0,s5
    36b0:	000a0593          	mv	a1,s4
    36b4:	184030ef          	jal	ra,6838 <__subdf3>
    36b8:	00050613          	mv	a2,a0
    36bc:	00058693          	mv	a3,a1
    36c0:	000107b7          	lui	a5,0x10
    36c4:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    36c8:	7c47a583          	lw	a1,1988(a5)
    36cc:	16c030ef          	jal	ra,6838 <__subdf3>
    36d0:	00050713          	mv	a4,a0
    36d4:	00058793          	mv	a5,a1
    36d8:	00070513          	mv	a0,a4
    36dc:	00078593          	mv	a1,a5
    36e0:	03c12083          	lw	ra,60(sp)
    36e4:	03812403          	lw	s0,56(sp)
    36e8:	03412483          	lw	s1,52(sp)
    36ec:	03012903          	lw	s2,48(sp)
    36f0:	02c12983          	lw	s3,44(sp)
    36f4:	02812a03          	lw	s4,40(sp)
    36f8:	02412a83          	lw	s5,36(sp)
    36fc:	02012b03          	lw	s6,32(sp)
    3700:	01c12b83          	lw	s7,28(sp)
    3704:	01812c03          	lw	s8,24(sp)
    3708:	01412c83          	lw	s9,20(sp)
    370c:	01012d03          	lw	s10,16(sp)
    3710:	00c12d83          	lw	s11,12(sp)
    3714:	04010113          	addi	sp,sp,64
    3718:	00008067          	ret
    371c:	00050613          	mv	a2,a0
    3720:	00058693          	mv	a3,a1
    3724:	00098513          	mv	a0,s3
    3728:	00090593          	mv	a1,s2
    372c:	241020ef          	jal	ra,616c <__muldf3>
    3730:	00050493          	mv	s1,a0
    3734:	00058413          	mv	s0,a1
    3738:	000117b7          	lui	a5,0x11
    373c:	9d87a603          	lw	a2,-1576(a5) # 109d8 <__clz_tab+0x328>
    3740:	9dc7a683          	lw	a3,-1572(a5)
    3744:	229020ef          	jal	ra,616c <__muldf3>
    3748:	000117b7          	lui	a5,0x11
    374c:	9e07a603          	lw	a2,-1568(a5) # 109e0 <__clz_tab+0x330>
    3750:	9e47a683          	lw	a3,-1564(a5)
    3754:	009010ef          	jal	ra,4f5c <__adddf3>
    3758:	00048613          	mv	a2,s1
    375c:	00040693          	mv	a3,s0
    3760:	20d020ef          	jal	ra,616c <__muldf3>
    3764:	000117b7          	lui	a5,0x11
    3768:	9e87a603          	lw	a2,-1560(a5) # 109e8 <__clz_tab+0x338>
    376c:	9ec7a683          	lw	a3,-1556(a5)
    3770:	0c8030ef          	jal	ra,6838 <__subdf3>
    3774:	00048613          	mv	a2,s1
    3778:	00040693          	mv	a3,s0
    377c:	1f1020ef          	jal	ra,616c <__muldf3>
    3780:	000117b7          	lui	a5,0x11
    3784:	9f07a603          	lw	a2,-1552(a5) # 109f0 <__clz_tab+0x340>
    3788:	9f47a683          	lw	a3,-1548(a5)
    378c:	7d0010ef          	jal	ra,4f5c <__adddf3>
    3790:	00048613          	mv	a2,s1
    3794:	00040693          	mv	a3,s0
    3798:	1d5020ef          	jal	ra,616c <__muldf3>
    379c:	000117b7          	lui	a5,0x11
    37a0:	9f87a603          	lw	a2,-1544(a5) # 109f8 <__clz_tab+0x348>
    37a4:	9fc7a683          	lw	a3,-1540(a5)
    37a8:	090030ef          	jal	ra,6838 <__subdf3>
    37ac:	00048613          	mv	a2,s1
    37b0:	00040693          	mv	a3,s0
    37b4:	1b9020ef          	jal	ra,616c <__muldf3>
    37b8:	000117b7          	lui	a5,0x11
    37bc:	a007a603          	lw	a2,-1536(a5) # 10a00 <__clz_tab+0x350>
    37c0:	a047a683          	lw	a3,-1532(a5)
    37c4:	798010ef          	jal	ra,4f5c <__adddf3>
    37c8:	00048613          	mv	a2,s1
    37cc:	00040693          	mv	a3,s0
    37d0:	19d020ef          	jal	ra,616c <__muldf3>
    37d4:	00050c93          	mv	s9,a0
    37d8:	00058c13          	mv	s8,a1
    37dc:	3fd337b7          	lui	a5,0x3fd33
    37e0:	33278793          	addi	a5,a5,818 # 3fd33332 <soln_cnt0+0x3fd22856>
    37e4:	e547dee3          	bge	a5,s4,3640 <__kernel_cos+0x128>
    37e8:	3fe907b7          	lui	a5,0x3fe90
    37ec:	0d47ce63          	blt	a5,s4,38c8 <__kernel_cos+0x3b0>
    37f0:	00000713          	li	a4,0
    37f4:	ffe007b7          	lui	a5,0xffe00
    37f8:	00fa07b3          	add	a5,s4,a5
    37fc:	00070a13          	mv	s4,a4
    3800:	00078a93          	mv	s5,a5
    3804:	000a0613          	mv	a2,s4
    3808:	000a8693          	mv	a3,s5
    380c:	000107b7          	lui	a5,0x10
    3810:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    3814:	7c47a583          	lw	a1,1988(a5)
    3818:	020030ef          	jal	ra,6838 <__subdf3>
    381c:	00050d93          	mv	s11,a0
    3820:	00058d13          	mv	s10,a1
    3824:	000117b7          	lui	a5,0x11
    3828:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    382c:	82c7a683          	lw	a3,-2004(a5)
    3830:	00048513          	mv	a0,s1
    3834:	00040593          	mv	a1,s0
    3838:	135020ef          	jal	ra,616c <__muldf3>
    383c:	000a0613          	mv	a2,s4
    3840:	000a8693          	mv	a3,s5
    3844:	7f5020ef          	jal	ra,6838 <__subdf3>
    3848:	00050a93          	mv	s5,a0
    384c:	00058a13          	mv	s4,a1
    3850:	000c8613          	mv	a2,s9
    3854:	000c0693          	mv	a3,s8
    3858:	00048513          	mv	a0,s1
    385c:	00040593          	mv	a1,s0
    3860:	10d020ef          	jal	ra,616c <__muldf3>
    3864:	00050493          	mv	s1,a0
    3868:	00058413          	mv	s0,a1
    386c:	000b0613          	mv	a2,s6
    3870:	000b8693          	mv	a3,s7
    3874:	00098513          	mv	a0,s3
    3878:	00090593          	mv	a1,s2
    387c:	0f1020ef          	jal	ra,616c <__muldf3>
    3880:	00050613          	mv	a2,a0
    3884:	00058693          	mv	a3,a1
    3888:	00048513          	mv	a0,s1
    388c:	00040593          	mv	a1,s0
    3890:	7a9020ef          	jal	ra,6838 <__subdf3>
    3894:	00050613          	mv	a2,a0
    3898:	00058693          	mv	a3,a1
    389c:	000a8513          	mv	a0,s5
    38a0:	000a0593          	mv	a1,s4
    38a4:	795020ef          	jal	ra,6838 <__subdf3>
    38a8:	00050613          	mv	a2,a0
    38ac:	00058693          	mv	a3,a1
    38b0:	000d8513          	mv	a0,s11
    38b4:	000d0593          	mv	a1,s10
    38b8:	781020ef          	jal	ra,6838 <__subdf3>
    38bc:	00050713          	mv	a4,a0
    38c0:	00058793          	mv	a5,a1
    38c4:	e15ff06f          	j	36d8 <__kernel_cos+0x1c0>
    38c8:	000117b7          	lui	a5,0x11
    38cc:	9d07aa03          	lw	s4,-1584(a5) # 109d0 <__clz_tab+0x320>
    38d0:	9d47aa83          	lw	s5,-1580(a5)
    38d4:	f31ff06f          	j	3804 <__kernel_cos+0x2ec>
    38d8:	000107b7          	lui	a5,0x10
    38dc:	7c07a703          	lw	a4,1984(a5) # 107c0 <__clz_tab+0x110>
    38e0:	7c47a783          	lw	a5,1988(a5)
    38e4:	df5ff06f          	j	36d8 <__kernel_cos+0x1c0>

000038e8 <__kernel_rem_pio2>:
    38e8:	d3010113          	addi	sp,sp,-720
    38ec:	2c112623          	sw	ra,716(sp)
    38f0:	2c812423          	sw	s0,712(sp)
    38f4:	2c912223          	sw	s1,708(sp)
    38f8:	2d212023          	sw	s2,704(sp)
    38fc:	2b312e23          	sw	s3,700(sp)
    3900:	2b412c23          	sw	s4,696(sp)
    3904:	2b512a23          	sw	s5,692(sp)
    3908:	2b612823          	sw	s6,688(sp)
    390c:	2b712623          	sw	s7,684(sp)
    3910:	2b812423          	sw	s8,680(sp)
    3914:	2b912223          	sw	s9,676(sp)
    3918:	2ba12023          	sw	s10,672(sp)
    391c:	29b12e23          	sw	s11,668(sp)
    3920:	00a12a23          	sw	a0,20(sp)
    3924:	04b12023          	sw	a1,64(sp)
    3928:	00060413          	mv	s0,a2
    392c:	02d12a23          	sw	a3,52(sp)
    3930:	04e12223          	sw	a4,68(sp)
    3934:	02f12c23          	sw	a5,56(sp)
    3938:	00271713          	slli	a4,a4,0x2
    393c:	000107b7          	lui	a5,0x10
    3940:	5e878793          	addi	a5,a5,1512 # 105e8 <init_jk>
    3944:	00e787b3          	add	a5,a5,a4
    3948:	0007ad03          	lw	s10,0(a5)
    394c:	fff68d93          	addi	s11,a3,-1
    3950:	fec00793          	li	a5,-20
    3954:	02012823          	sw	zero,48(sp)
    3958:	00f64a63          	blt	a2,a5,396c <__kernel_rem_pio2+0x84>
    395c:	01800593          	li	a1,24
    3960:	ffd60513          	addi	a0,a2,-3 # 7ffffffd <soln_cnt0+0x7ffef521>
    3964:	369080ef          	jal	ra,c4cc <__divsi3>
    3968:	02a12823          	sw	a0,48(sp)
    396c:	03012683          	lw	a3,48(sp)
    3970:	00168793          	addi	a5,a3,1
    3974:	00279713          	slli	a4,a5,0x2
    3978:	40e787b3          	sub	a5,a5,a4
    397c:	00379793          	slli	a5,a5,0x3
    3980:	008787b3          	add	a5,a5,s0
    3984:	00f12c23          	sw	a5,24(sp)
    3988:	41b68433          	sub	s0,a3,s11
    398c:	01bd07b3          	add	a5,s10,s11
    3990:	0407cc63          	bltz	a5,39e8 <__kernel_rem_pio2+0x100>
    3994:	1a010493          	addi	s1,sp,416
    3998:	00241913          	slli	s2,s0,0x2
    399c:	03812703          	lw	a4,56(sp)
    39a0:	01270933          	add	s2,a4,s2
    39a4:	00178793          	addi	a5,a5,1
    39a8:	008789b3          	add	s3,a5,s0
    39ac:	00000a93          	li	s5,0
    39b0:	00000a13          	li	s4,0
    39b4:	01c0006f          	j	39d0 <__kernel_rem_pio2+0xe8>
    39b8:	00a4a023          	sw	a0,0(s1)
    39bc:	00b4a223          	sw	a1,4(s1)
    39c0:	00140413          	addi	s0,s0,1
    39c4:	00848493          	addi	s1,s1,8
    39c8:	00490913          	addi	s2,s2,4
    39cc:	01340e63          	beq	s0,s3,39e8 <__kernel_rem_pio2+0x100>
    39d0:	000a8513          	mv	a0,s5
    39d4:	000a0593          	mv	a1,s4
    39d8:	fe0440e3          	bltz	s0,39b8 <__kernel_rem_pio2+0xd0>
    39dc:	00092503          	lw	a0,0(s2)
    39e0:	714030ef          	jal	ra,70f4 <__floatsidf>
    39e4:	fd5ff06f          	j	39b8 <__kernel_rem_pio2+0xd0>
    39e8:	080d4863          	bltz	s10,3a78 <__kernel_rem_pio2+0x190>
    39ec:	06010b13          	addi	s6,sp,96
    39f0:	000d8a93          	mv	s5,s11
    39f4:	1a010a13          	addi	s4,sp,416
    39f8:	03412783          	lw	a5,52(sp)
    39fc:	00fd0bb3          	add	s7,s10,a5
    3a00:	00379c93          	slli	s9,a5,0x3
    3a04:	00000c13          	li	s8,0
    3a08:	0580006f          	j	3a60 <__kernel_rem_pio2+0x178>
    3a0c:	ff892603          	lw	a2,-8(s2)
    3a10:	ffc92683          	lw	a3,-4(s2)
    3a14:	0009a503          	lw	a0,0(s3)
    3a18:	0049a583          	lw	a1,4(s3)
    3a1c:	750020ef          	jal	ra,616c <__muldf3>
    3a20:	00050613          	mv	a2,a0
    3a24:	00058693          	mv	a3,a1
    3a28:	00048513          	mv	a0,s1
    3a2c:	00040593          	mv	a1,s0
    3a30:	52c010ef          	jal	ra,4f5c <__adddf3>
    3a34:	00050493          	mv	s1,a0
    3a38:	00058413          	mv	s0,a1
    3a3c:	00898993          	addi	s3,s3,8
    3a40:	ff890913          	addi	s2,s2,-8
    3a44:	fd4914e3          	bne	s2,s4,3a0c <__kernel_rem_pio2+0x124>
    3a48:	009b2023          	sw	s1,0(s6) # 3ff00000 <soln_cnt0+0x3feef524>
    3a4c:	008b2223          	sw	s0,4(s6)
    3a50:	008b0b13          	addi	s6,s6,8
    3a54:	001a8a93          	addi	s5,s5,1
    3a58:	008a0a13          	addi	s4,s4,8
    3a5c:	017a8e63          	beq	s5,s7,3a78 <__kernel_rem_pio2+0x190>
    3a60:	01412983          	lw	s3,20(sp)
    3a64:	019a0933          	add	s2,s4,s9
    3a68:	000c0493          	mv	s1,s8
    3a6c:	00000413          	li	s0,0
    3a70:	f80ddee3          	bgez	s11,3a0c <__kernel_rem_pio2+0x124>
    3a74:	fd5ff06f          	j	3a48 <__kernel_rem_pio2+0x160>
    3a78:	002d1793          	slli	a5,s10,0x2
    3a7c:	23c10713          	addi	a4,sp,572
    3a80:	00f70633          	add	a2,a4,a5
    3a84:	ff878793          	addi	a5,a5,-8
    3a88:	24010713          	addi	a4,sp,576
    3a8c:	00f707b3          	add	a5,a4,a5
    3a90:	02f12e23          	sw	a5,60(sp)
    3a94:	03412783          	lw	a5,52(sp)
    3a98:	00379a13          	slli	s4,a5,0x3
    3a9c:	01412783          	lw	a5,20(sp)
    3aa0:	01478a33          	add	s4,a5,s4
    3aa4:	000d0913          	mv	s2,s10
    3aa8:	000117b7          	lui	a5,0x11
    3aac:	a0c7a803          	lw	a6,-1524(a5) # 10a0c <__clz_tab+0x35c>
    3ab0:	a087a783          	lw	a5,-1528(a5)
    3ab4:	00f12023          	sw	a5,0(sp)
    3ab8:	01012223          	sw	a6,4(sp)
    3abc:	000117b7          	lui	a5,0x11
    3ac0:	9cc7a803          	lw	a6,-1588(a5) # 109cc <__clz_tab+0x31c>
    3ac4:	9c87a783          	lw	a5,-1592(a5)
    3ac8:	00f12423          	sw	a5,8(sp)
    3acc:	01012623          	sw	a6,12(sp)
    3ad0:	000117b7          	lui	a5,0x11
    3ad4:	a147a803          	lw	a6,-1516(a5) # 10a14 <__clz_tab+0x364>
    3ad8:	a107a783          	lw	a5,-1520(a5)
    3adc:	02f12023          	sw	a5,32(sp)
    3ae0:	03012223          	sw	a6,36(sp)
    3ae4:	000117b7          	lui	a5,0x11
    3ae8:	a1c7a803          	lw	a6,-1508(a5) # 10a1c <__clz_tab+0x36c>
    3aec:	a187a783          	lw	a5,-1512(a5)
    3af0:	02f12423          	sw	a5,40(sp)
    3af4:	03012623          	sw	a6,44(sp)
    3af8:	000107b7          	lui	a5,0x10
    3afc:	7c07a683          	lw	a3,1984(a5) # 107c0 <__clz_tab+0x110>
    3b00:	7c47a703          	lw	a4,1988(a5)
    3b04:	04d12823          	sw	a3,80(sp)
    3b08:	04e12a23          	sw	a4,84(sp)
    3b0c:	04d12c23          	sw	a3,88(sp)
    3b10:	04e12e23          	sw	a4,92(sp)
    3b14:	000117b7          	lui	a5,0x11
    3b18:	82c7a803          	lw	a6,-2004(a5) # 1082c <__clz_tab+0x17c>
    3b1c:	8287a783          	lw	a5,-2008(a5)
    3b20:	04f12423          	sw	a5,72(sp)
    3b24:	05012623          	sw	a6,76(sp)
    3b28:	01a12e23          	sw	s10,28(sp)
    3b2c:	00060d13          	mv	s10,a2
    3b30:	1f80006f          	j	3d28 <__kernel_rem_pio2+0x440>
    3b34:	01812783          	lw	a5,24(sp)
    3b38:	02079263          	bnez	a5,3b5c <__kernel_rem_pio2+0x274>
    3b3c:	fff90793          	addi	a5,s2,-1
    3b40:	00279793          	slli	a5,a5,0x2
    3b44:	23078793          	addi	a5,a5,560
    3b48:	06010713          	addi	a4,sp,96
    3b4c:	00e787b3          	add	a5,a5,a4
    3b50:	fb07a783          	lw	a5,-80(a5)
    3b54:	4177d493          	srai	s1,a5,0x17
    3b58:	3380006f          	j	3e90 <__kernel_rem_pio2+0x5a8>
    3b5c:	04812603          	lw	a2,72(sp)
    3b60:	04c12683          	lw	a3,76(sp)
    3b64:	000a8513          	mv	a0,s5
    3b68:	00098593          	mv	a1,s3
    3b6c:	438020ef          	jal	ra,5fa4 <__gedf2>
    3b70:	00000493          	li	s1,0
    3b74:	06054663          	bltz	a0,3be0 <__kernel_rem_pio2+0x2f8>
    3b78:	001c8c93          	addi	s9,s9,1
    3b7c:	00200493          	li	s1,2
    3b80:	00000413          	li	s0,0
    3b84:	31204c63          	bgtz	s2,3e9c <__kernel_rem_pio2+0x5b4>
    3b88:	0500006f          	j	3bd8 <__kernel_rem_pio2+0x2f0>
    3b8c:	40e58733          	sub	a4,a1,a4
    3b90:	00e7a023          	sw	a4,0(a5)
    3b94:	00478793          	addi	a5,a5,4
    3b98:	02d78463          	beq	a5,a3,3bc0 <__kernel_rem_pio2+0x2d8>
    3b9c:	0007a703          	lw	a4,0(a5)
    3ba0:	fe0416e3          	bnez	s0,3b8c <__kernel_rem_pio2+0x2a4>
    3ba4:	00070413          	mv	s0,a4
    3ba8:	fe0706e3          	beqz	a4,3b94 <__kernel_rem_pio2+0x2ac>
    3bac:	40e50733          	sub	a4,a0,a4
    3bb0:	00e7a023          	sw	a4,0(a5)
    3bb4:	00080413          	mv	s0,a6
    3bb8:	fddff06f          	j	3b94 <__kernel_rem_pio2+0x2ac>
    3bbc:	00000413          	li	s0,0
    3bc0:	01812703          	lw	a4,24(sp)
    3bc4:	00e05a63          	blez	a4,3bd8 <__kernel_rem_pio2+0x2f0>
    3bc8:	00100793          	li	a5,1
    3bcc:	2ef70863          	beq	a4,a5,3ebc <__kernel_rem_pio2+0x5d4>
    3bd0:	00200793          	li	a5,2
    3bd4:	30f70863          	beq	a4,a5,3ee4 <__kernel_rem_pio2+0x5fc>
    3bd8:	00200793          	li	a5,2
    3bdc:	32f48863          	beq	s1,a5,3f0c <__kernel_rem_pio2+0x624>
    3be0:	00000613          	li	a2,0
    3be4:	00000693          	li	a3,0
    3be8:	000a8513          	mv	a0,s5
    3bec:	00098593          	mv	a1,s3
    3bf0:	328020ef          	jal	ra,5f18 <__eqdf2>
    3bf4:	48051a63          	bnez	a0,4088 <__kernel_rem_pio2+0x7a0>
    3bf8:	fff90593          	addi	a1,s2,-1
    3bfc:	01c12783          	lw	a5,28(sp)
    3c00:	02f5c663          	blt	a1,a5,3c2c <__kernel_rem_pio2+0x344>
    3c04:	00291613          	slli	a2,s2,0x2
    3c08:	ffc60613          	addi	a2,a2,-4
    3c0c:	24010793          	addi	a5,sp,576
    3c10:	00c787b3          	add	a5,a5,a2
    3c14:	00000713          	li	a4,0
    3c18:	0007a683          	lw	a3,0(a5)
    3c1c:	00d76733          	or	a4,a4,a3
    3c20:	ffc78793          	addi	a5,a5,-4
    3c24:	ffa79ae3          	bne	a5,s10,3c18 <__kernel_rem_pio2+0x330>
    3c28:	34071063          	bnez	a4,3f68 <__kernel_rem_pio2+0x680>
    3c2c:	01c12783          	lw	a5,28(sp)
    3c30:	fff78793          	addi	a5,a5,-1
    3c34:	00279793          	slli	a5,a5,0x2
    3c38:	23078793          	addi	a5,a5,560
    3c3c:	06010713          	addi	a4,sp,96
    3c40:	00e787b3          	add	a5,a5,a4
    3c44:	fb07a783          	lw	a5,-80(a5)
    3c48:	0a079ae3          	bnez	a5,44fc <__kernel_rem_pio2+0xc14>
    3c4c:	03c12783          	lw	a5,60(sp)
    3c50:	00100713          	li	a4,1
    3c54:	00170713          	addi	a4,a4,1 # 80000001 <soln_cnt0+0x7ffef525>
    3c58:	ffc78793          	addi	a5,a5,-4
    3c5c:	0047a683          	lw	a3,4(a5)
    3c60:	fe068ae3          	beqz	a3,3c54 <__kernel_rem_pio2+0x36c>
    3c64:	00190c13          	addi	s8,s2,1
    3c68:	00e90cb3          	add	s9,s2,a4
    3c6c:	0ae05c63          	blez	a4,3d24 <__kernel_rem_pio2+0x43c>
    3c70:	03012783          	lw	a5,48(sp)
    3c74:	01878b33          	add	s6,a5,s8
    3c78:	002b1b13          	slli	s6,s6,0x2
    3c7c:	03812783          	lw	a5,56(sp)
    3c80:	01678b33          	add	s6,a5,s6
    3c84:	03412783          	lw	a5,52(sp)
    3c88:	012787b3          	add	a5,a5,s2
    3c8c:	00379793          	slli	a5,a5,0x3
    3c90:	1a010713          	addi	a4,sp,416
    3c94:	00f70ab3          	add	s5,a4,a5
    3c98:	00190793          	addi	a5,s2,1
    3c9c:	00379793          	slli	a5,a5,0x3
    3ca0:	06078793          	addi	a5,a5,96
    3ca4:	00278bb3          	add	s7,a5,sp
    3ca8:	000b2503          	lw	a0,0(s6)
    3cac:	448030ef          	jal	ra,70f4 <__floatsidf>
    3cb0:	00aaa023          	sw	a0,0(s5)
    3cb4:	00baa223          	sw	a1,4(s5)
    3cb8:	2a0dc263          	bltz	s11,3f5c <__kernel_rem_pio2+0x674>
    3cbc:	000a8993          	mv	s3,s5
    3cc0:	01412903          	lw	s2,20(sp)
    3cc4:	00000493          	li	s1,0
    3cc8:	00000413          	li	s0,0
    3ccc:	0009a603          	lw	a2,0(s3)
    3cd0:	0049a683          	lw	a3,4(s3)
    3cd4:	00092503          	lw	a0,0(s2)
    3cd8:	00492583          	lw	a1,4(s2)
    3cdc:	490020ef          	jal	ra,616c <__muldf3>
    3ce0:	00050613          	mv	a2,a0
    3ce4:	00058693          	mv	a3,a1
    3ce8:	00048513          	mv	a0,s1
    3cec:	00040593          	mv	a1,s0
    3cf0:	26c010ef          	jal	ra,4f5c <__adddf3>
    3cf4:	00050493          	mv	s1,a0
    3cf8:	00058413          	mv	s0,a1
    3cfc:	00890913          	addi	s2,s2,8
    3d00:	ff898993          	addi	s3,s3,-8
    3d04:	fd4914e3          	bne	s2,s4,3ccc <__kernel_rem_pio2+0x3e4>
    3d08:	009ba023          	sw	s1,0(s7)
    3d0c:	008ba223          	sw	s0,4(s7)
    3d10:	001c0c13          	addi	s8,s8,1
    3d14:	004b0b13          	addi	s6,s6,4
    3d18:	008a8a93          	addi	s5,s5,8
    3d1c:	008b8b93          	addi	s7,s7,8
    3d20:	f98cd4e3          	bge	s9,s8,3ca8 <__kernel_rem_pio2+0x3c0>
    3d24:	000c8913          	mv	s2,s9
    3d28:	00391793          	slli	a5,s2,0x3
    3d2c:	23078793          	addi	a5,a5,560
    3d30:	06010713          	addi	a4,sp,96
    3d34:	00e787b3          	add	a5,a5,a4
    3d38:	dd07a483          	lw	s1,-560(a5)
    3d3c:	dd47a403          	lw	s0,-556(a5)
    3d40:	09205863          	blez	s2,3dd0 <__kernel_rem_pio2+0x4e8>
    3d44:	00070c13          	mv	s8,a4
    3d48:	00391993          	slli	s3,s2,0x3
    3d4c:	ff898993          	addi	s3,s3,-8
    3d50:	013709b3          	add	s3,a4,s3
    3d54:	24010b93          	addi	s7,sp,576
    3d58:	00012603          	lw	a2,0(sp)
    3d5c:	00412683          	lw	a3,4(sp)
    3d60:	00048513          	mv	a0,s1
    3d64:	00040593          	mv	a1,s0
    3d68:	404020ef          	jal	ra,616c <__muldf3>
    3d6c:	308030ef          	jal	ra,7074 <__fixdfsi>
    3d70:	384030ef          	jal	ra,70f4 <__floatsidf>
    3d74:	00050b13          	mv	s6,a0
    3d78:	00058a93          	mv	s5,a1
    3d7c:	00812603          	lw	a2,8(sp)
    3d80:	00c12683          	lw	a3,12(sp)
    3d84:	3e8020ef          	jal	ra,616c <__muldf3>
    3d88:	00050613          	mv	a2,a0
    3d8c:	00058693          	mv	a3,a1
    3d90:	00048513          	mv	a0,s1
    3d94:	00040593          	mv	a1,s0
    3d98:	2a1020ef          	jal	ra,6838 <__subdf3>
    3d9c:	2d8030ef          	jal	ra,7074 <__fixdfsi>
    3da0:	00aba023          	sw	a0,0(s7)
    3da4:	0009a603          	lw	a2,0(s3)
    3da8:	0049a683          	lw	a3,4(s3)
    3dac:	000b0513          	mv	a0,s6
    3db0:	000a8593          	mv	a1,s5
    3db4:	1a8010ef          	jal	ra,4f5c <__adddf3>
    3db8:	00050493          	mv	s1,a0
    3dbc:	00058413          	mv	s0,a1
    3dc0:	004b8b93          	addi	s7,s7,4
    3dc4:	00098793          	mv	a5,s3
    3dc8:	ff898993          	addi	s3,s3,-8
    3dcc:	f98796e3          	bne	a5,s8,3d58 <__kernel_rem_pio2+0x470>
    3dd0:	01812b03          	lw	s6,24(sp)
    3dd4:	000b0613          	mv	a2,s6
    3dd8:	00048513          	mv	a0,s1
    3ddc:	00040593          	mv	a1,s0
    3de0:	791000ef          	jal	ra,4d70 <scalbn>
    3de4:	00050493          	mv	s1,a0
    3de8:	00058413          	mv	s0,a1
    3dec:	02012603          	lw	a2,32(sp)
    3df0:	02412683          	lw	a3,36(sp)
    3df4:	378020ef          	jal	ra,616c <__muldf3>
    3df8:	581000ef          	jal	ra,4b78 <floor>
    3dfc:	02812603          	lw	a2,40(sp)
    3e00:	02c12683          	lw	a3,44(sp)
    3e04:	368020ef          	jal	ra,616c <__muldf3>
    3e08:	00050613          	mv	a2,a0
    3e0c:	00058693          	mv	a3,a1
    3e10:	00048513          	mv	a0,s1
    3e14:	00040593          	mv	a1,s0
    3e18:	221020ef          	jal	ra,6838 <__subdf3>
    3e1c:	00050493          	mv	s1,a0
    3e20:	00058413          	mv	s0,a1
    3e24:	250030ef          	jal	ra,7074 <__fixdfsi>
    3e28:	00050c93          	mv	s9,a0
    3e2c:	2c8030ef          	jal	ra,70f4 <__floatsidf>
    3e30:	00050613          	mv	a2,a0
    3e34:	00058693          	mv	a3,a1
    3e38:	00048513          	mv	a0,s1
    3e3c:	00040593          	mv	a1,s0
    3e40:	1f9020ef          	jal	ra,6838 <__subdf3>
    3e44:	00050a93          	mv	s5,a0
    3e48:	00058993          	mv	s3,a1
    3e4c:	cf6054e3          	blez	s6,3b34 <__kernel_rem_pio2+0x24c>
    3e50:	fff90793          	addi	a5,s2,-1
    3e54:	00279793          	slli	a5,a5,0x2
    3e58:	23078793          	addi	a5,a5,560
    3e5c:	06010713          	addi	a4,sp,96
    3e60:	00e787b3          	add	a5,a5,a4
    3e64:	fb07a703          	lw	a4,-80(a5)
    3e68:	01800613          	li	a2,24
    3e6c:	41660633          	sub	a2,a2,s6
    3e70:	40c756b3          	sra	a3,a4,a2
    3e74:	00dc8cb3          	add	s9,s9,a3
    3e78:	00c696b3          	sll	a3,a3,a2
    3e7c:	40d70733          	sub	a4,a4,a3
    3e80:	fae7a823          	sw	a4,-80(a5)
    3e84:	01700793          	li	a5,23
    3e88:	416787b3          	sub	a5,a5,s6
    3e8c:	40f754b3          	sra	s1,a4,a5
    3e90:	d49058e3          	blez	s1,3be0 <__kernel_rem_pio2+0x2f8>
    3e94:	001c8c93          	addi	s9,s9,1
    3e98:	d32052e3          	blez	s2,3bbc <__kernel_rem_pio2+0x2d4>
    3e9c:	00291693          	slli	a3,s2,0x2
    3ea0:	24010793          	addi	a5,sp,576
    3ea4:	00f686b3          	add	a3,a3,a5
    3ea8:	00000413          	li	s0,0
    3eac:	01000537          	lui	a0,0x1000
    3eb0:	fff50593          	addi	a1,a0,-1 # ffffff <soln_cnt0+0xfef523>
    3eb4:	00100813          	li	a6,1
    3eb8:	ce5ff06f          	j	3b9c <__kernel_rem_pio2+0x2b4>
    3ebc:	fff90793          	addi	a5,s2,-1
    3ec0:	00279793          	slli	a5,a5,0x2
    3ec4:	23078793          	addi	a5,a5,560
    3ec8:	06010713          	addi	a4,sp,96
    3ecc:	00e787b3          	add	a5,a5,a4
    3ed0:	fb07a703          	lw	a4,-80(a5)
    3ed4:	00971713          	slli	a4,a4,0x9
    3ed8:	00975713          	srli	a4,a4,0x9
    3edc:	fae7a823          	sw	a4,-80(a5)
    3ee0:	cf9ff06f          	j	3bd8 <__kernel_rem_pio2+0x2f0>
    3ee4:	fff90793          	addi	a5,s2,-1
    3ee8:	00279793          	slli	a5,a5,0x2
    3eec:	23078793          	addi	a5,a5,560
    3ef0:	06010713          	addi	a4,sp,96
    3ef4:	00e787b3          	add	a5,a5,a4
    3ef8:	fb07a703          	lw	a4,-80(a5)
    3efc:	00a71713          	slli	a4,a4,0xa
    3f00:	00a75713          	srli	a4,a4,0xa
    3f04:	fae7a823          	sw	a4,-80(a5)
    3f08:	cd1ff06f          	j	3bd8 <__kernel_rem_pio2+0x2f0>
    3f0c:	000a8613          	mv	a2,s5
    3f10:	00098693          	mv	a3,s3
    3f14:	05012503          	lw	a0,80(sp)
    3f18:	05412583          	lw	a1,84(sp)
    3f1c:	11d020ef          	jal	ra,6838 <__subdf3>
    3f20:	00050a93          	mv	s5,a0
    3f24:	00058993          	mv	s3,a1
    3f28:	ca040ce3          	beqz	s0,3be0 <__kernel_rem_pio2+0x2f8>
    3f2c:	01812603          	lw	a2,24(sp)
    3f30:	05812503          	lw	a0,88(sp)
    3f34:	05c12583          	lw	a1,92(sp)
    3f38:	639000ef          	jal	ra,4d70 <scalbn>
    3f3c:	00050613          	mv	a2,a0
    3f40:	00058693          	mv	a3,a1
    3f44:	000a8513          	mv	a0,s5
    3f48:	00098593          	mv	a1,s3
    3f4c:	0ed020ef          	jal	ra,6838 <__subdf3>
    3f50:	00050a93          	mv	s5,a0
    3f54:	00058993          	mv	s3,a1
    3f58:	c89ff06f          	j	3be0 <__kernel_rem_pio2+0x2f8>
    3f5c:	00000493          	li	s1,0
    3f60:	00000413          	li	s0,0
    3f64:	da5ff06f          	j	3d08 <__kernel_rem_pio2+0x420>
    3f68:	00912a23          	sw	s1,20(sp)
    3f6c:	01c12d03          	lw	s10,28(sp)
    3f70:	00058713          	mv	a4,a1
    3f74:	00b12023          	sw	a1,0(sp)
    3f78:	01812783          	lw	a5,24(sp)
    3f7c:	fe878693          	addi	a3,a5,-24
    3f80:	00d12c23          	sw	a3,24(sp)
    3f84:	00259793          	slli	a5,a1,0x2
    3f88:	23078793          	addi	a5,a5,560
    3f8c:	06010593          	addi	a1,sp,96
    3f90:	00b787b3          	add	a5,a5,a1
    3f94:	fb07a783          	lw	a5,-80(a5)
    3f98:	02079663          	bnez	a5,3fc4 <__kernel_rem_pio2+0x6dc>
    3f9c:	23060793          	addi	a5,a2,560
    3fa0:	00b787b3          	add	a5,a5,a1
    3fa4:	fac78793          	addi	a5,a5,-84
    3fa8:	fff70713          	addi	a4,a4,-1
    3fac:	fe868693          	addi	a3,a3,-24
    3fb0:	ffc78793          	addi	a5,a5,-4
    3fb4:	0047a603          	lw	a2,4(a5)
    3fb8:	fe0608e3          	beqz	a2,3fa8 <__kernel_rem_pio2+0x6c0>
    3fbc:	00e12023          	sw	a4,0(sp)
    3fc0:	00d12c23          	sw	a3,24(sp)
    3fc4:	01812603          	lw	a2,24(sp)
    3fc8:	000107b7          	lui	a5,0x10
    3fcc:	7c07a503          	lw	a0,1984(a5) # 107c0 <__clz_tab+0x110>
    3fd0:	7c47a583          	lw	a1,1988(a5)
    3fd4:	59d000ef          	jal	ra,4d70 <scalbn>
    3fd8:	00050913          	mv	s2,a0
    3fdc:	00058993          	mv	s3,a1
    3fe0:	00012703          	lw	a4,0(sp)
    3fe4:	4e074463          	bltz	a4,44cc <__kernel_rem_pio2+0xbe4>
    3fe8:	00e12c23          	sw	a4,24(sp)
    3fec:	00271793          	slli	a5,a4,0x2
    3ff0:	24010693          	addi	a3,sp,576
    3ff4:	00f68a33          	add	s4,a3,a5
    3ff8:	00371793          	slli	a5,a4,0x3
    3ffc:	00f12e23          	sw	a5,28(sp)
    4000:	06078793          	addi	a5,a5,96
    4004:	00278bb3          	add	s7,a5,sp
    4008:	000b8a93          	mv	s5,s7
    400c:	000117b7          	lui	a5,0x11
    4010:	a087a403          	lw	s0,-1528(a5) # 10a08 <__clz_tab+0x358>
    4014:	a0c7a483          	lw	s1,-1524(a5)
    4018:	000a2503          	lw	a0,0(s4)
    401c:	0d8030ef          	jal	ra,70f4 <__floatsidf>
    4020:	00090613          	mv	a2,s2
    4024:	00098693          	mv	a3,s3
    4028:	144020ef          	jal	ra,616c <__muldf3>
    402c:	00aaa023          	sw	a0,0(s5)
    4030:	00baa223          	sw	a1,4(s5)
    4034:	00040613          	mv	a2,s0
    4038:	00048693          	mv	a3,s1
    403c:	00090513          	mv	a0,s2
    4040:	00098593          	mv	a1,s3
    4044:	128020ef          	jal	ra,616c <__muldf3>
    4048:	00050913          	mv	s2,a0
    404c:	00058993          	mv	s3,a1
    4050:	000a0793          	mv	a5,s4
    4054:	ffca0a13          	addi	s4,s4,-4
    4058:	ff8a8a93          	addi	s5,s5,-8
    405c:	24010713          	addi	a4,sp,576
    4060:	fae79ce3          	bne	a5,a4,4018 <__kernel_rem_pio2+0x730>
    4064:	10010d93          	addi	s11,sp,256
    4068:	000d8c13          	mv	s8,s11
    406c:	00000b13          	li	s6,0
    4070:	000107b7          	lui	a5,0x10
    4074:	5e878793          	addi	a5,a5,1512 # 105e8 <init_jk>
    4078:	00f12423          	sw	a5,8(sp)
    407c:	03912023          	sw	s9,32(sp)
    4080:	01812c83          	lw	s9,24(sp)
    4084:	1140006f          	j	4198 <__kernel_rem_pio2+0x8b0>
    4088:	00912a23          	sw	s1,20(sp)
    408c:	01c12d03          	lw	s10,28(sp)
    4090:	000a8493          	mv	s1,s5
    4094:	01812a83          	lw	s5,24(sp)
    4098:	41500633          	neg	a2,s5
    409c:	00048513          	mv	a0,s1
    40a0:	00098593          	mv	a1,s3
    40a4:	4cd000ef          	jal	ra,4d70 <scalbn>
    40a8:	00050493          	mv	s1,a0
    40ac:	00058413          	mv	s0,a1
    40b0:	000117b7          	lui	a5,0x11
    40b4:	9c87a603          	lw	a2,-1592(a5) # 109c8 <__clz_tab+0x318>
    40b8:	9cc7a683          	lw	a3,-1588(a5)
    40bc:	6e9010ef          	jal	ra,5fa4 <__gedf2>
    40c0:	08054663          	bltz	a0,414c <__kernel_rem_pio2+0x864>
    40c4:	000117b7          	lui	a5,0x11
    40c8:	a087a603          	lw	a2,-1528(a5) # 10a08 <__clz_tab+0x358>
    40cc:	a0c7a683          	lw	a3,-1524(a5)
    40d0:	00048513          	mv	a0,s1
    40d4:	00040593          	mv	a1,s0
    40d8:	094020ef          	jal	ra,616c <__muldf3>
    40dc:	799020ef          	jal	ra,7074 <__fixdfsi>
    40e0:	00050993          	mv	s3,a0
    40e4:	00291a13          	slli	s4,s2,0x2
    40e8:	230a0793          	addi	a5,s4,560
    40ec:	06010713          	addi	a4,sp,96
    40f0:	00e78a33          	add	s4,a5,a4
    40f4:	000030ef          	jal	ra,70f4 <__floatsidf>
    40f8:	000117b7          	lui	a5,0x11
    40fc:	9c87a603          	lw	a2,-1592(a5) # 109c8 <__clz_tab+0x318>
    4100:	9cc7a683          	lw	a3,-1588(a5)
    4104:	068020ef          	jal	ra,616c <__muldf3>
    4108:	00050613          	mv	a2,a0
    410c:	00058693          	mv	a3,a1
    4110:	00048513          	mv	a0,s1
    4114:	00040593          	mv	a1,s0
    4118:	720020ef          	jal	ra,6838 <__subdf3>
    411c:	759020ef          	jal	ra,7074 <__fixdfsi>
    4120:	faaa2823          	sw	a0,-80(s4)
    4124:	00190793          	addi	a5,s2,1
    4128:	00f12023          	sw	a5,0(sp)
    412c:	018a8713          	addi	a4,s5,24
    4130:	00e12c23          	sw	a4,24(sp)
    4134:	00279793          	slli	a5,a5,0x2
    4138:	23078793          	addi	a5,a5,560
    413c:	06010713          	addi	a4,sp,96
    4140:	00e787b3          	add	a5,a5,a4
    4144:	fb37a823          	sw	s3,-80(a5)
    4148:	e7dff06f          	j	3fc4 <__kernel_rem_pio2+0x6dc>
    414c:	00291993          	slli	s3,s2,0x2
    4150:	23098793          	addi	a5,s3,560
    4154:	06010713          	addi	a4,sp,96
    4158:	00e789b3          	add	s3,a5,a4
    415c:	00048513          	mv	a0,s1
    4160:	00040593          	mv	a1,s0
    4164:	711020ef          	jal	ra,7074 <__fixdfsi>
    4168:	faa9a823          	sw	a0,-80(s3)
    416c:	01212023          	sw	s2,0(sp)
    4170:	e55ff06f          	j	3fc4 <__kernel_rem_pio2+0x6dc>
    4174:	00000493          	li	s1,0
    4178:	00000413          	li	s0,0
    417c:	009c2023          	sw	s1,0(s8)
    4180:	008c2223          	sw	s0,4(s8)
    4184:	001b0793          	addi	a5,s6,1
    4188:	008c0c13          	addi	s8,s8,8
    418c:	ff8b8b93          	addi	s7,s7,-8
    4190:	119b0463          	beq	s6,s9,4298 <__kernel_rem_pio2+0x9b0>
    4194:	00078b13          	mv	s6,a5
    4198:	fc0d4ee3          	bltz	s10,4174 <__kernel_rem_pio2+0x88c>
    419c:	000b0a93          	mv	s5,s6
    41a0:	00000493          	li	s1,0
    41a4:	00000413          	li	s0,0
    41a8:	fc0b4ae3          	bltz	s6,417c <__kernel_rem_pio2+0x894>
    41ac:	00812783          	lw	a5,8(sp)
    41b0:	01078a13          	addi	s4,a5,16
    41b4:	000b8993          	mv	s3,s7
    41b8:	00000493          	li	s1,0
    41bc:	00000413          	li	s0,0
    41c0:	00000913          	li	s2,0
    41c4:	0009a603          	lw	a2,0(s3)
    41c8:	0049a683          	lw	a3,4(s3)
    41cc:	000a2503          	lw	a0,0(s4)
    41d0:	004a2583          	lw	a1,4(s4)
    41d4:	799010ef          	jal	ra,616c <__muldf3>
    41d8:	00050613          	mv	a2,a0
    41dc:	00058693          	mv	a3,a1
    41e0:	00048513          	mv	a0,s1
    41e4:	00040593          	mv	a1,s0
    41e8:	575000ef          	jal	ra,4f5c <__adddf3>
    41ec:	00050493          	mv	s1,a0
    41f0:	00058413          	mv	s0,a1
    41f4:	00190913          	addi	s2,s2,1
    41f8:	f92d42e3          	blt	s10,s2,417c <__kernel_rem_pio2+0x894>
    41fc:	008a0a13          	addi	s4,s4,8
    4200:	00898993          	addi	s3,s3,8
    4204:	fd2ad0e3          	bge	s5,s2,41c4 <__kernel_rem_pio2+0x8dc>
    4208:	f75ff06f          	j	417c <__kernel_rem_pio2+0x894>
    420c:	00000713          	li	a4,0
    4210:	00000793          	li	a5,0
    4214:	3380006f          	j	454c <__kernel_rem_pio2+0xc64>
    4218:	00000713          	li	a4,0
    421c:	00000793          	li	a5,0
    4220:	2740006f          	j	4494 <__kernel_rem_pio2+0xbac>
    4224:	800006b7          	lui	a3,0x80000
    4228:	10012583          	lw	a1,256(sp)
    422c:	10412603          	lw	a2,260(sp)
    4230:	00d64633          	xor	a2,a2,a3
    4234:	04012503          	lw	a0,64(sp)
    4238:	00b52023          	sw	a1,0(a0)
    423c:	00c52223          	sw	a2,4(a0)
    4240:	10812583          	lw	a1,264(sp)
    4244:	10c12603          	lw	a2,268(sp)
    4248:	00d64633          	xor	a2,a2,a3
    424c:	00b52423          	sw	a1,8(a0)
    4250:	00c52623          	sw	a2,12(a0)
    4254:	00e52823          	sw	a4,16(a0)
    4258:	00f6c6b3          	xor	a3,a3,a5
    425c:	00d52a23          	sw	a3,20(a0)
    4260:	0ac0006f          	j	430c <__kernel_rem_pio2+0xa24>
    4264:	04012583          	lw	a1,64(sp)
    4268:	00e5a023          	sw	a4,0(a1)
    426c:	00f5a223          	sw	a5,4(a1)
    4270:	00070613          	mv	a2,a4
    4274:	00078693          	mv	a3,a5
    4278:	10012503          	lw	a0,256(sp)
    427c:	10412583          	lw	a1,260(sp)
    4280:	5b8020ef          	jal	ra,6838 <__subdf3>
    4284:	00050713          	mv	a4,a0
    4288:	00058793          	mv	a5,a1
    428c:	00012683          	lw	a3,0(sp)
    4290:	2ed04e63          	bgtz	a3,458c <__kernel_rem_pio2+0xca4>
    4294:	33c0006f          	j	45d0 <__kernel_rem_pio2+0xce8>
    4298:	02012c83          	lw	s9,32(sp)
    429c:	00200793          	li	a5,2
    42a0:	04412703          	lw	a4,68(sp)
    42a4:	0ae7c463          	blt	a5,a4,434c <__kernel_rem_pio2+0xa64>
    42a8:	26e04063          	bgtz	a4,4508 <__kernel_rem_pio2+0xc20>
    42ac:	06071063          	bnez	a4,430c <__kernel_rem_pio2+0xa24>
    42b0:	10010793          	addi	a5,sp,256
    42b4:	01c12703          	lw	a4,28(sp)
    42b8:	00e78433          	add	s0,a5,a4
    42bc:	00000713          	li	a4,0
    42c0:	00000793          	li	a5,0
    42c4:	00042603          	lw	a2,0(s0)
    42c8:	00442683          	lw	a3,4(s0)
    42cc:	00070513          	mv	a0,a4
    42d0:	00078593          	mv	a1,a5
    42d4:	489000ef          	jal	ra,4f5c <__adddf3>
    42d8:	00050713          	mv	a4,a0
    42dc:	00058793          	mv	a5,a1
    42e0:	00040693          	mv	a3,s0
    42e4:	ff840413          	addi	s0,s0,-8
    42e8:	fdb69ee3          	bne	a3,s11,42c4 <__kernel_rem_pio2+0x9dc>
    42ec:	01412683          	lw	a3,20(sp)
    42f0:	00068663          	beqz	a3,42fc <__kernel_rem_pio2+0xa14>
    42f4:	800006b7          	lui	a3,0x80000
    42f8:	00f6c7b3          	xor	a5,a3,a5
    42fc:	00078693          	mv	a3,a5
    4300:	04012783          	lw	a5,64(sp)
    4304:	00e7a023          	sw	a4,0(a5)
    4308:	00d7a223          	sw	a3,4(a5)
    430c:	007cf513          	andi	a0,s9,7
    4310:	2cc12083          	lw	ra,716(sp)
    4314:	2c812403          	lw	s0,712(sp)
    4318:	2c412483          	lw	s1,708(sp)
    431c:	2c012903          	lw	s2,704(sp)
    4320:	2bc12983          	lw	s3,700(sp)
    4324:	2b812a03          	lw	s4,696(sp)
    4328:	2b412a83          	lw	s5,692(sp)
    432c:	2b012b03          	lw	s6,688(sp)
    4330:	2ac12b83          	lw	s7,684(sp)
    4334:	2a812c03          	lw	s8,680(sp)
    4338:	2a412c83          	lw	s9,676(sp)
    433c:	2a012d03          	lw	s10,672(sp)
    4340:	29c12d83          	lw	s11,668(sp)
    4344:	2d010113          	addi	sp,sp,720
    4348:	00008067          	ret
    434c:	00300793          	li	a5,3
    4350:	04412703          	lw	a4,68(sp)
    4354:	faf71ce3          	bne	a4,a5,430c <__kernel_rem_pio2+0xa24>
    4358:	00012783          	lw	a5,0(sp)
    435c:	08f05063          	blez	a5,43dc <__kernel_rem_pio2+0xaf4>
    4360:	10010b93          	addi	s7,sp,256
    4364:	00012783          	lw	a5,0(sp)
    4368:	00379a13          	slli	s4,a5,0x3
    436c:	014b8a33          	add	s4,s7,s4
    4370:	000c8a93          	mv	s5,s9
    4374:	ff8a2c03          	lw	s8,-8(s4)
    4378:	ffca2c83          	lw	s9,-4(s4)
    437c:	000a2903          	lw	s2,0(s4)
    4380:	004a2983          	lw	s3,4(s4)
    4384:	00090613          	mv	a2,s2
    4388:	00098693          	mv	a3,s3
    438c:	000c0513          	mv	a0,s8
    4390:	000c8593          	mv	a1,s9
    4394:	3c9000ef          	jal	ra,4f5c <__adddf3>
    4398:	00050493          	mv	s1,a0
    439c:	00058413          	mv	s0,a1
    43a0:	00050613          	mv	a2,a0
    43a4:	00058693          	mv	a3,a1
    43a8:	000c0513          	mv	a0,s8
    43ac:	000c8593          	mv	a1,s9
    43b0:	488020ef          	jal	ra,6838 <__subdf3>
    43b4:	00090613          	mv	a2,s2
    43b8:	00098693          	mv	a3,s3
    43bc:	3a1000ef          	jal	ra,4f5c <__adddf3>
    43c0:	00aa2023          	sw	a0,0(s4)
    43c4:	00ba2223          	sw	a1,4(s4)
    43c8:	fe9a2c23          	sw	s1,-8(s4)
    43cc:	fe8a2e23          	sw	s0,-4(s4)
    43d0:	ff8a0a13          	addi	s4,s4,-8
    43d4:	fb4b90e3          	bne	s7,s4,4374 <__kernel_rem_pio2+0xa8c>
    43d8:	000a8c93          	mv	s9,s5
    43dc:	00100793          	li	a5,1
    43e0:	00012703          	lw	a4,0(sp)
    43e4:	e2e7dae3          	bge	a5,a4,4218 <__kernel_rem_pio2+0x930>
    43e8:	00371793          	slli	a5,a4,0x3
    43ec:	10010713          	addi	a4,sp,256
    43f0:	00f70a33          	add	s4,a4,a5
    43f4:	10810a93          	addi	s5,sp,264
    43f8:	000a0b13          	mv	s6,s4
    43fc:	000c8b93          	mv	s7,s9
    4400:	ff8b2c03          	lw	s8,-8(s6)
    4404:	ffcb2c83          	lw	s9,-4(s6)
    4408:	000b2903          	lw	s2,0(s6)
    440c:	004b2983          	lw	s3,4(s6)
    4410:	00090613          	mv	a2,s2
    4414:	00098693          	mv	a3,s3
    4418:	000c0513          	mv	a0,s8
    441c:	000c8593          	mv	a1,s9
    4420:	33d000ef          	jal	ra,4f5c <__adddf3>
    4424:	00050493          	mv	s1,a0
    4428:	00058413          	mv	s0,a1
    442c:	00050613          	mv	a2,a0
    4430:	00058693          	mv	a3,a1
    4434:	000c0513          	mv	a0,s8
    4438:	000c8593          	mv	a1,s9
    443c:	3fc020ef          	jal	ra,6838 <__subdf3>
    4440:	00090613          	mv	a2,s2
    4444:	00098693          	mv	a3,s3
    4448:	315000ef          	jal	ra,4f5c <__adddf3>
    444c:	00ab2023          	sw	a0,0(s6)
    4450:	00bb2223          	sw	a1,4(s6)
    4454:	fe9b2c23          	sw	s1,-8(s6)
    4458:	fe8b2e23          	sw	s0,-4(s6)
    445c:	ff8b0b13          	addi	s6,s6,-8
    4460:	fb5b10e3          	bne	s6,s5,4400 <__kernel_rem_pio2+0xb18>
    4464:	000b8c93          	mv	s9,s7
    4468:	00000713          	li	a4,0
    446c:	00000793          	li	a5,0
    4470:	000a2603          	lw	a2,0(s4)
    4474:	004a2683          	lw	a3,4(s4)
    4478:	00070513          	mv	a0,a4
    447c:	00078593          	mv	a1,a5
    4480:	2dd000ef          	jal	ra,4f5c <__adddf3>
    4484:	00050713          	mv	a4,a0
    4488:	00058793          	mv	a5,a1
    448c:	ff8a0a13          	addi	s4,s4,-8
    4490:	ff5a10e3          	bne	s4,s5,4470 <__kernel_rem_pio2+0xb88>
    4494:	01412683          	lw	a3,20(sp)
    4498:	d80696e3          	bnez	a3,4224 <__kernel_rem_pio2+0x93c>
    449c:	10012603          	lw	a2,256(sp)
    44a0:	10412683          	lw	a3,260(sp)
    44a4:	04012583          	lw	a1,64(sp)
    44a8:	00c5a023          	sw	a2,0(a1)
    44ac:	00d5a223          	sw	a3,4(a1)
    44b0:	10812603          	lw	a2,264(sp)
    44b4:	10c12683          	lw	a3,268(sp)
    44b8:	00c5a423          	sw	a2,8(a1)
    44bc:	00d5a623          	sw	a3,12(a1)
    44c0:	00e5a823          	sw	a4,16(a1)
    44c4:	00f5aa23          	sw	a5,20(a1)
    44c8:	e45ff06f          	j	430c <__kernel_rem_pio2+0xa24>
    44cc:	00200793          	li	a5,2
    44d0:	04412683          	lw	a3,68(sp)
    44d4:	00d7cc63          	blt	a5,a3,44ec <__kernel_rem_pio2+0xc04>
    44d8:	d2d04ae3          	bgtz	a3,420c <__kernel_rem_pio2+0x924>
    44dc:	00000713          	li	a4,0
    44e0:	00000793          	li	a5,0
    44e4:	e00684e3          	beqz	a3,42ec <__kernel_rem_pio2+0xa04>
    44e8:	e25ff06f          	j	430c <__kernel_rem_pio2+0xa24>
    44ec:	00300793          	li	a5,3
    44f0:	04412703          	lw	a4,68(sp)
    44f4:	eef704e3          	beq	a4,a5,43dc <__kernel_rem_pio2+0xaf4>
    44f8:	e15ff06f          	j	430c <__kernel_rem_pio2+0xa24>
    44fc:	00190c13          	addi	s8,s2,1
    4500:	000c0c93          	mv	s9,s8
    4504:	f6cff06f          	j	3c70 <__kernel_rem_pio2+0x388>
    4508:	00012783          	lw	a5,0(sp)
    450c:	00379413          	slli	s0,a5,0x3
    4510:	10010793          	addi	a5,sp,256
    4514:	00878433          	add	s0,a5,s0
    4518:	00078493          	mv	s1,a5
    451c:	00000713          	li	a4,0
    4520:	00000793          	li	a5,0
    4524:	00042603          	lw	a2,0(s0)
    4528:	00442683          	lw	a3,4(s0)
    452c:	00070513          	mv	a0,a4
    4530:	00078593          	mv	a1,a5
    4534:	229000ef          	jal	ra,4f5c <__adddf3>
    4538:	00050713          	mv	a4,a0
    453c:	00058793          	mv	a5,a1
    4540:	00040693          	mv	a3,s0
    4544:	ff840413          	addi	s0,s0,-8
    4548:	fc969ee3          	bne	a3,s1,4524 <__kernel_rem_pio2+0xc3c>
    454c:	01412683          	lw	a3,20(sp)
    4550:	d0068ae3          	beqz	a3,4264 <__kernel_rem_pio2+0x97c>
    4554:	04012603          	lw	a2,64(sp)
    4558:	00e62023          	sw	a4,0(a2)
    455c:	800006b7          	lui	a3,0x80000
    4560:	00f6c6b3          	xor	a3,a3,a5
    4564:	00d62223          	sw	a3,4(a2)
    4568:	00070613          	mv	a2,a4
    456c:	00078693          	mv	a3,a5
    4570:	10012503          	lw	a0,256(sp)
    4574:	10412583          	lw	a1,260(sp)
    4578:	2c0020ef          	jal	ra,6838 <__subdf3>
    457c:	00050713          	mv	a4,a0
    4580:	00058793          	mv	a5,a1
    4584:	00012683          	lw	a3,0(sp)
    4588:	04d05063          	blez	a3,45c8 <__kernel_rem_pio2+0xce0>
    458c:	10810493          	addi	s1,sp,264
    4590:	00100413          	li	s0,1
    4594:	00012903          	lw	s2,0(sp)
    4598:	0004a603          	lw	a2,0(s1)
    459c:	0044a683          	lw	a3,4(s1)
    45a0:	00070513          	mv	a0,a4
    45a4:	00078593          	mv	a1,a5
    45a8:	1b5000ef          	jal	ra,4f5c <__adddf3>
    45ac:	00050713          	mv	a4,a0
    45b0:	00058793          	mv	a5,a1
    45b4:	00140413          	addi	s0,s0,1
    45b8:	00848493          	addi	s1,s1,8
    45bc:	fc895ee3          	bge	s2,s0,4598 <__kernel_rem_pio2+0xcb0>
    45c0:	01412683          	lw	a3,20(sp)
    45c4:	00068663          	beqz	a3,45d0 <__kernel_rem_pio2+0xce8>
    45c8:	800006b7          	lui	a3,0x80000
    45cc:	00f6c7b3          	xor	a5,a3,a5
    45d0:	00078693          	mv	a3,a5
    45d4:	04012783          	lw	a5,64(sp)
    45d8:	00e7a423          	sw	a4,8(a5)
    45dc:	00d7a623          	sw	a3,12(a5)
    45e0:	d2dff06f          	j	430c <__kernel_rem_pio2+0xa24>

000045e4 <__kernel_sin>:
    45e4:	fc010113          	addi	sp,sp,-64
    45e8:	02112e23          	sw	ra,60(sp)
    45ec:	02812c23          	sw	s0,56(sp)
    45f0:	02912a23          	sw	s1,52(sp)
    45f4:	03212823          	sw	s2,48(sp)
    45f8:	03312623          	sw	s3,44(sp)
    45fc:	03412423          	sw	s4,40(sp)
    4600:	03512223          	sw	s5,36(sp)
    4604:	03612023          	sw	s6,32(sp)
    4608:	01712e23          	sw	s7,28(sp)
    460c:	01812c23          	sw	s8,24(sp)
    4610:	01912a23          	sw	s9,20(sp)
    4614:	01a12823          	sw	s10,16(sp)
    4618:	01b12623          	sw	s11,12(sp)
    461c:	00050993          	mv	s3,a0
    4620:	00058413          	mv	s0,a1
    4624:	00060a93          	mv	s5,a2
    4628:	00068a13          	mv	s4,a3
    462c:	00070b13          	mv	s6,a4
    4630:	00159793          	slli	a5,a1,0x1
    4634:	0017d793          	srli	a5,a5,0x1
    4638:	3e400737          	lui	a4,0x3e400
    463c:	00e7de63          	bge	a5,a4,4658 <__kernel_sin+0x74>
    4640:	00098513          	mv	a0,s3
    4644:	00040593          	mv	a1,s0
    4648:	22d020ef          	jal	ra,7074 <__fixdfsi>
    464c:	00098813          	mv	a6,s3
    4650:	00040793          	mv	a5,s0
    4654:	10050463          	beqz	a0,475c <__kernel_sin+0x178>
    4658:	00098613          	mv	a2,s3
    465c:	00040693          	mv	a3,s0
    4660:	00098513          	mv	a0,s3
    4664:	00040593          	mv	a1,s0
    4668:	305010ef          	jal	ra,616c <__muldf3>
    466c:	00050913          	mv	s2,a0
    4670:	00058493          	mv	s1,a1
    4674:	00050613          	mv	a2,a0
    4678:	00058693          	mv	a3,a1
    467c:	00098513          	mv	a0,s3
    4680:	00040593          	mv	a1,s0
    4684:	2e9010ef          	jal	ra,616c <__muldf3>
    4688:	00050c13          	mv	s8,a0
    468c:	00058b93          	mv	s7,a1
    4690:	000117b7          	lui	a5,0x11
    4694:	a207a603          	lw	a2,-1504(a5) # 10a20 <__clz_tab+0x370>
    4698:	a247a683          	lw	a3,-1500(a5)
    469c:	00090513          	mv	a0,s2
    46a0:	00048593          	mv	a1,s1
    46a4:	2c9010ef          	jal	ra,616c <__muldf3>
    46a8:	000117b7          	lui	a5,0x11
    46ac:	a287a603          	lw	a2,-1496(a5) # 10a28 <__clz_tab+0x378>
    46b0:	a2c7a683          	lw	a3,-1492(a5)
    46b4:	184020ef          	jal	ra,6838 <__subdf3>
    46b8:	00090613          	mv	a2,s2
    46bc:	00048693          	mv	a3,s1
    46c0:	2ad010ef          	jal	ra,616c <__muldf3>
    46c4:	000117b7          	lui	a5,0x11
    46c8:	a307a603          	lw	a2,-1488(a5) # 10a30 <__clz_tab+0x380>
    46cc:	a347a683          	lw	a3,-1484(a5)
    46d0:	08d000ef          	jal	ra,4f5c <__adddf3>
    46d4:	00090613          	mv	a2,s2
    46d8:	00048693          	mv	a3,s1
    46dc:	291010ef          	jal	ra,616c <__muldf3>
    46e0:	000117b7          	lui	a5,0x11
    46e4:	a387a603          	lw	a2,-1480(a5) # 10a38 <__clz_tab+0x388>
    46e8:	a3c7a683          	lw	a3,-1476(a5)
    46ec:	14c020ef          	jal	ra,6838 <__subdf3>
    46f0:	00090613          	mv	a2,s2
    46f4:	00048693          	mv	a3,s1
    46f8:	275010ef          	jal	ra,616c <__muldf3>
    46fc:	000117b7          	lui	a5,0x11
    4700:	a407a603          	lw	a2,-1472(a5) # 10a40 <__clz_tab+0x390>
    4704:	a447a683          	lw	a3,-1468(a5)
    4708:	055000ef          	jal	ra,4f5c <__adddf3>
    470c:	00050d13          	mv	s10,a0
    4710:	00058c93          	mv	s9,a1
    4714:	080b1663          	bnez	s6,47a0 <__kernel_sin+0x1bc>
    4718:	00050613          	mv	a2,a0
    471c:	00058693          	mv	a3,a1
    4720:	00090513          	mv	a0,s2
    4724:	00048593          	mv	a1,s1
    4728:	245010ef          	jal	ra,616c <__muldf3>
    472c:	000117b7          	lui	a5,0x11
    4730:	a487a603          	lw	a2,-1464(a5) # 10a48 <__clz_tab+0x398>
    4734:	a4c7a683          	lw	a3,-1460(a5)
    4738:	100020ef          	jal	ra,6838 <__subdf3>
    473c:	000c0613          	mv	a2,s8
    4740:	000b8693          	mv	a3,s7
    4744:	229010ef          	jal	ra,616c <__muldf3>
    4748:	00098613          	mv	a2,s3
    474c:	00040693          	mv	a3,s0
    4750:	00d000ef          	jal	ra,4f5c <__adddf3>
    4754:	00050813          	mv	a6,a0
    4758:	00058793          	mv	a5,a1
    475c:	00080513          	mv	a0,a6
    4760:	00078593          	mv	a1,a5
    4764:	03c12083          	lw	ra,60(sp)
    4768:	03812403          	lw	s0,56(sp)
    476c:	03412483          	lw	s1,52(sp)
    4770:	03012903          	lw	s2,48(sp)
    4774:	02c12983          	lw	s3,44(sp)
    4778:	02812a03          	lw	s4,40(sp)
    477c:	02412a83          	lw	s5,36(sp)
    4780:	02012b03          	lw	s6,32(sp)
    4784:	01c12b83          	lw	s7,28(sp)
    4788:	01812c03          	lw	s8,24(sp)
    478c:	01412c83          	lw	s9,20(sp)
    4790:	01012d03          	lw	s10,16(sp)
    4794:	00c12d83          	lw	s11,12(sp)
    4798:	04010113          	addi	sp,sp,64
    479c:	00008067          	ret
    47a0:	000117b7          	lui	a5,0x11
    47a4:	8287a603          	lw	a2,-2008(a5) # 10828 <__clz_tab+0x178>
    47a8:	82c7a683          	lw	a3,-2004(a5)
    47ac:	000a8513          	mv	a0,s5
    47b0:	000a0593          	mv	a1,s4
    47b4:	1b9010ef          	jal	ra,616c <__muldf3>
    47b8:	00050d93          	mv	s11,a0
    47bc:	00058b13          	mv	s6,a1
    47c0:	000d0613          	mv	a2,s10
    47c4:	000c8693          	mv	a3,s9
    47c8:	000c0513          	mv	a0,s8
    47cc:	000b8593          	mv	a1,s7
    47d0:	19d010ef          	jal	ra,616c <__muldf3>
    47d4:	00050613          	mv	a2,a0
    47d8:	00058693          	mv	a3,a1
    47dc:	000d8513          	mv	a0,s11
    47e0:	000b0593          	mv	a1,s6
    47e4:	054020ef          	jal	ra,6838 <__subdf3>
    47e8:	00090613          	mv	a2,s2
    47ec:	00048693          	mv	a3,s1
    47f0:	17d010ef          	jal	ra,616c <__muldf3>
    47f4:	000a8613          	mv	a2,s5
    47f8:	000a0693          	mv	a3,s4
    47fc:	03c020ef          	jal	ra,6838 <__subdf3>
    4800:	00050913          	mv	s2,a0
    4804:	00058493          	mv	s1,a1
    4808:	000117b7          	lui	a5,0x11
    480c:	a487a603          	lw	a2,-1464(a5) # 10a48 <__clz_tab+0x398>
    4810:	a4c7a683          	lw	a3,-1460(a5)
    4814:	000c0513          	mv	a0,s8
    4818:	000b8593          	mv	a1,s7
    481c:	151010ef          	jal	ra,616c <__muldf3>
    4820:	00050613          	mv	a2,a0
    4824:	00058693          	mv	a3,a1
    4828:	00090513          	mv	a0,s2
    482c:	00048593          	mv	a1,s1
    4830:	72c000ef          	jal	ra,4f5c <__adddf3>
    4834:	00050613          	mv	a2,a0
    4838:	00058693          	mv	a3,a1
    483c:	00098513          	mv	a0,s3
    4840:	00040593          	mv	a1,s0
    4844:	7f5010ef          	jal	ra,6838 <__subdf3>
    4848:	00050813          	mv	a6,a0
    484c:	00058793          	mv	a5,a1
    4850:	f0dff06f          	j	475c <__kernel_sin+0x178>

00004854 <with_errno>:
    4854:	ff010113          	addi	sp,sp,-16
    4858:	00112623          	sw	ra,12(sp)
    485c:	00812423          	sw	s0,8(sp)
    4860:	00912223          	sw	s1,4(sp)
    4864:	01212023          	sw	s2,0(sp)
    4868:	00050493          	mv	s1,a0
    486c:	00058413          	mv	s0,a1
    4870:	00060913          	mv	s2,a2
    4874:	559070ef          	jal	ra,c5cc <__errno>
    4878:	01252023          	sw	s2,0(a0)
    487c:	00048513          	mv	a0,s1
    4880:	00040593          	mv	a1,s0
    4884:	00c12083          	lw	ra,12(sp)
    4888:	00812403          	lw	s0,8(sp)
    488c:	00412483          	lw	s1,4(sp)
    4890:	00012903          	lw	s2,0(sp)
    4894:	01010113          	addi	sp,sp,16
    4898:	00008067          	ret

0000489c <xflow>:
    489c:	fe010113          	addi	sp,sp,-32
    48a0:	00112e23          	sw	ra,28(sp)
    48a4:	00060793          	mv	a5,a2
    48a8:	04050263          	beqz	a0,48ec <xflow+0x50>
    48ac:	00058613          	mv	a2,a1
    48b0:	80000737          	lui	a4,0x80000
    48b4:	00f746b3          	xor	a3,a4,a5
    48b8:	00c12423          	sw	a2,8(sp)
    48bc:	00d12623          	sw	a3,12(sp)
    48c0:	00812603          	lw	a2,8(sp)
    48c4:	00c12683          	lw	a3,12(sp)
    48c8:	00058813          	mv	a6,a1
    48cc:	00080513          	mv	a0,a6
    48d0:	00078593          	mv	a1,a5
    48d4:	099010ef          	jal	ra,616c <__muldf3>
    48d8:	02200613          	li	a2,34
    48dc:	f79ff0ef          	jal	ra,4854 <with_errno>
    48e0:	01c12083          	lw	ra,28(sp)
    48e4:	02010113          	addi	sp,sp,32
    48e8:	00008067          	ret
    48ec:	00058613          	mv	a2,a1
    48f0:	00078693          	mv	a3,a5
    48f4:	fc5ff06f          	j	48b8 <xflow+0x1c>

000048f8 <__math_uflow>:
    48f8:	ff010113          	addi	sp,sp,-16
    48fc:	00112623          	sw	ra,12(sp)
    4900:	000117b7          	lui	a5,0x11
    4904:	a507a583          	lw	a1,-1456(a5) # 10a50 <__clz_tab+0x3a0>
    4908:	a547a603          	lw	a2,-1452(a5)
    490c:	f91ff0ef          	jal	ra,489c <xflow>
    4910:	00c12083          	lw	ra,12(sp)
    4914:	01010113          	addi	sp,sp,16
    4918:	00008067          	ret

0000491c <__math_may_uflow>:
    491c:	ff010113          	addi	sp,sp,-16
    4920:	00112623          	sw	ra,12(sp)
    4924:	000117b7          	lui	a5,0x11
    4928:	a587a583          	lw	a1,-1448(a5) # 10a58 <__clz_tab+0x3a8>
    492c:	a5c7a603          	lw	a2,-1444(a5)
    4930:	f6dff0ef          	jal	ra,489c <xflow>
    4934:	00c12083          	lw	ra,12(sp)
    4938:	01010113          	addi	sp,sp,16
    493c:	00008067          	ret

00004940 <__math_oflow>:
    4940:	ff010113          	addi	sp,sp,-16
    4944:	00112623          	sw	ra,12(sp)
    4948:	000117b7          	lui	a5,0x11
    494c:	a607a583          	lw	a1,-1440(a5) # 10a60 <__clz_tab+0x3b0>
    4950:	a647a603          	lw	a2,-1436(a5)
    4954:	f49ff0ef          	jal	ra,489c <xflow>
    4958:	00c12083          	lw	ra,12(sp)
    495c:	01010113          	addi	sp,sp,16
    4960:	00008067          	ret

00004964 <__math_divzero>:
    4964:	fe010113          	addi	sp,sp,-32
    4968:	00112e23          	sw	ra,28(sp)
    496c:	04051063          	bnez	a0,49ac <__math_divzero+0x48>
    4970:	000107b7          	lui	a5,0x10
    4974:	7c07a703          	lw	a4,1984(a5) # 107c0 <__clz_tab+0x110>
    4978:	7c47a783          	lw	a5,1988(a5)
    497c:	00e12423          	sw	a4,8(sp)
    4980:	00f12623          	sw	a5,12(sp)
    4984:	00812503          	lw	a0,8(sp)
    4988:	00c12583          	lw	a1,12(sp)
    498c:	00000613          	li	a2,0
    4990:	00000693          	li	a3,0
    4994:	5a5000ef          	jal	ra,5738 <__divdf3>
    4998:	02200613          	li	a2,34
    499c:	eb9ff0ef          	jal	ra,4854 <with_errno>
    49a0:	01c12083          	lw	ra,28(sp)
    49a4:	02010113          	addi	sp,sp,32
    49a8:	00008067          	ret
    49ac:	000117b7          	lui	a5,0x11
    49b0:	8187a703          	lw	a4,-2024(a5) # 10818 <__clz_tab+0x168>
    49b4:	81c7a783          	lw	a5,-2020(a5)
    49b8:	fc5ff06f          	j	497c <__math_divzero+0x18>

000049bc <__math_invalid>:
    49bc:	fe010113          	addi	sp,sp,-32
    49c0:	00112e23          	sw	ra,28(sp)
    49c4:	00812c23          	sw	s0,24(sp)
    49c8:	00912a23          	sw	s1,20(sp)
    49cc:	01212823          	sw	s2,16(sp)
    49d0:	01312623          	sw	s3,12(sp)
    49d4:	00050993          	mv	s3,a0
    49d8:	00058913          	mv	s2,a1
    49dc:	00050613          	mv	a2,a0
    49e0:	00058693          	mv	a3,a1
    49e4:	655010ef          	jal	ra,6838 <__subdf3>
    49e8:	00050613          	mv	a2,a0
    49ec:	00058693          	mv	a3,a1
    49f0:	549000ef          	jal	ra,5738 <__divdf3>
    49f4:	00050493          	mv	s1,a0
    49f8:	00058413          	mv	s0,a1
    49fc:	00098613          	mv	a2,s3
    4a00:	00090693          	mv	a3,s2
    4a04:	00098513          	mv	a0,s3
    4a08:	00090593          	mv	a1,s2
    4a0c:	61c020ef          	jal	ra,7028 <__unorddf2>
    4a10:	00051e63          	bnez	a0,4a2c <__math_invalid+0x70>
    4a14:	02100613          	li	a2,33
    4a18:	00048513          	mv	a0,s1
    4a1c:	00040593          	mv	a1,s0
    4a20:	e35ff0ef          	jal	ra,4854 <with_errno>
    4a24:	00050493          	mv	s1,a0
    4a28:	00058413          	mv	s0,a1
    4a2c:	00048513          	mv	a0,s1
    4a30:	00040593          	mv	a1,s0
    4a34:	01c12083          	lw	ra,28(sp)
    4a38:	01812403          	lw	s0,24(sp)
    4a3c:	01412483          	lw	s1,20(sp)
    4a40:	01012903          	lw	s2,16(sp)
    4a44:	00c12983          	lw	s3,12(sp)
    4a48:	02010113          	addi	sp,sp,32
    4a4c:	00008067          	ret

00004a50 <__math_check_uflow>:
    4a50:	ff010113          	addi	sp,sp,-16
    4a54:	00112623          	sw	ra,12(sp)
    4a58:	00812423          	sw	s0,8(sp)
    4a5c:	00912223          	sw	s1,4(sp)
    4a60:	00050493          	mv	s1,a0
    4a64:	00058413          	mv	s0,a1
    4a68:	00000613          	li	a2,0
    4a6c:	00000693          	li	a3,0
    4a70:	4a8010ef          	jal	ra,5f18 <__eqdf2>
    4a74:	02050063          	beqz	a0,4a94 <__math_check_uflow+0x44>
    4a78:	00048513          	mv	a0,s1
    4a7c:	00040593          	mv	a1,s0
    4a80:	00c12083          	lw	ra,12(sp)
    4a84:	00812403          	lw	s0,8(sp)
    4a88:	00412483          	lw	s1,4(sp)
    4a8c:	01010113          	addi	sp,sp,16
    4a90:	00008067          	ret
    4a94:	02200613          	li	a2,34
    4a98:	00048513          	mv	a0,s1
    4a9c:	00040593          	mv	a1,s0
    4aa0:	db5ff0ef          	jal	ra,4854 <with_errno>
    4aa4:	00050493          	mv	s1,a0
    4aa8:	00058413          	mv	s0,a1
    4aac:	fcdff06f          	j	4a78 <__math_check_uflow+0x28>

00004ab0 <__math_check_oflow>:
    4ab0:	ff010113          	addi	sp,sp,-16
    4ab4:	00112623          	sw	ra,12(sp)
    4ab8:	00812423          	sw	s0,8(sp)
    4abc:	00912223          	sw	s1,4(sp)
    4ac0:	01212023          	sw	s2,0(sp)
    4ac4:	00050413          	mv	s0,a0
    4ac8:	00058493          	mv	s1,a1
    4acc:	00159913          	slli	s2,a1,0x1
    4ad0:	00195913          	srli	s2,s2,0x1
    4ad4:	000117b7          	lui	a5,0x11
    4ad8:	a687a603          	lw	a2,-1432(a5) # 10a68 <__clz_tab+0x3b8>
    4adc:	a6c7a683          	lw	a3,-1428(a5)
    4ae0:	00040513          	mv	a0,s0
    4ae4:	00090593          	mv	a1,s2
    4ae8:	540020ef          	jal	ra,7028 <__unorddf2>
    4aec:	02051063          	bnez	a0,4b0c <__math_check_oflow+0x5c>
    4af0:	000117b7          	lui	a5,0x11
    4af4:	a687a603          	lw	a2,-1432(a5) # 10a68 <__clz_tab+0x3b8>
    4af8:	a6c7a683          	lw	a3,-1428(a5)
    4afc:	00040513          	mv	a0,s0
    4b00:	00090593          	mv	a1,s2
    4b04:	584010ef          	jal	ra,6088 <__ledf2>
    4b08:	02a04263          	bgtz	a0,4b2c <__math_check_oflow+0x7c>
    4b0c:	00040513          	mv	a0,s0
    4b10:	00048593          	mv	a1,s1
    4b14:	00c12083          	lw	ra,12(sp)
    4b18:	00812403          	lw	s0,8(sp)
    4b1c:	00412483          	lw	s1,4(sp)
    4b20:	00012903          	lw	s2,0(sp)
    4b24:	01010113          	addi	sp,sp,16
    4b28:	00008067          	ret
    4b2c:	02200613          	li	a2,34
    4b30:	00040513          	mv	a0,s0
    4b34:	00048593          	mv	a1,s1
    4b38:	d1dff0ef          	jal	ra,4854 <with_errno>
    4b3c:	00050413          	mv	s0,a0
    4b40:	00058493          	mv	s1,a1
    4b44:	fc9ff06f          	j	4b0c <__math_check_oflow+0x5c>

00004b48 <fabs>:
    4b48:	00159593          	slli	a1,a1,0x1
    4b4c:	00050713          	mv	a4,a0
    4b50:	0015d793          	srli	a5,a1,0x1
    4b54:	00070513          	mv	a0,a4
    4b58:	00078593          	mv	a1,a5
    4b5c:	00008067          	ret

00004b60 <finite>:
    4b60:	00159513          	slli	a0,a1,0x1
    4b64:	00155513          	srli	a0,a0,0x1
    4b68:	801007b7          	lui	a5,0x80100
    4b6c:	00f50533          	add	a0,a0,a5
    4b70:	01f55513          	srli	a0,a0,0x1f
    4b74:	00008067          	ret

00004b78 <floor>:
    4b78:	fe010113          	addi	sp,sp,-32
    4b7c:	00112e23          	sw	ra,28(sp)
    4b80:	00812c23          	sw	s0,24(sp)
    4b84:	00912a23          	sw	s1,20(sp)
    4b88:	01212823          	sw	s2,16(sp)
    4b8c:	01312623          	sw	s3,12(sp)
    4b90:	01412423          	sw	s4,8(sp)
    4b94:	01512223          	sw	s5,4(sp)
    4b98:	01612023          	sw	s6,0(sp)
    4b9c:	00050413          	mv	s0,a0
    4ba0:	00058493          	mv	s1,a1
    4ba4:	00058993          	mv	s3,a1
    4ba8:	00050a13          	mv	s4,a0
    4bac:	4145d793          	srai	a5,a1,0x14
    4bb0:	7ff7f793          	andi	a5,a5,2047
    4bb4:	c0178913          	addi	s2,a5,-1023 # 800ffc01 <soln_cnt0+0x800ef125>
    4bb8:	01300713          	li	a4,19
    4bbc:	0f274a63          	blt	a4,s2,4cb0 <floor+0x138>
    4bc0:	08094663          	bltz	s2,4c4c <floor+0xd4>
    4bc4:	00100ab7          	lui	s5,0x100
    4bc8:	fffa8a93          	addi	s5,s5,-1 # fffff <soln_cnt0+0xef523>
    4bcc:	412adab3          	sra	s5,s5,s2
    4bd0:	00baf733          	and	a4,s5,a1
    4bd4:	00a76733          	or	a4,a4,a0
    4bd8:	00050793          	mv	a5,a0
    4bdc:	04070263          	beqz	a4,4c20 <floor+0xa8>
    4be0:	000117b7          	lui	a5,0x11
    4be4:	a707a603          	lw	a2,-1424(a5) # 10a70 <__clz_tab+0x3c0>
    4be8:	a747a683          	lw	a3,-1420(a5)
    4bec:	00040513          	mv	a0,s0
    4bf0:	00048593          	mv	a1,s1
    4bf4:	368000ef          	jal	ra,4f5c <__adddf3>
    4bf8:	00000613          	li	a2,0
    4bfc:	00000693          	li	a3,0
    4c00:	3a4010ef          	jal	ra,5fa4 <__gedf2>
    4c04:	00a05a63          	blez	a0,4c18 <floor+0xa0>
    4c08:	0804cc63          	bltz	s1,4ca0 <floor+0x128>
    4c0c:	fffaca93          	not	s5,s5
    4c10:	0159f9b3          	and	s3,s3,s5
    4c14:	00000a13          	li	s4,0
    4c18:	000a0793          	mv	a5,s4
    4c1c:	00098593          	mv	a1,s3
    4c20:	00078513          	mv	a0,a5
    4c24:	01c12083          	lw	ra,28(sp)
    4c28:	01812403          	lw	s0,24(sp)
    4c2c:	01412483          	lw	s1,20(sp)
    4c30:	01012903          	lw	s2,16(sp)
    4c34:	00c12983          	lw	s3,12(sp)
    4c38:	00812a03          	lw	s4,8(sp)
    4c3c:	00412a83          	lw	s5,4(sp)
    4c40:	00012b03          	lw	s6,0(sp)
    4c44:	02010113          	addi	sp,sp,32
    4c48:	00008067          	ret
    4c4c:	000117b7          	lui	a5,0x11
    4c50:	a707a603          	lw	a2,-1424(a5) # 10a70 <__clz_tab+0x3c0>
    4c54:	a747a683          	lw	a3,-1420(a5)
    4c58:	00040513          	mv	a0,s0
    4c5c:	00048593          	mv	a1,s1
    4c60:	2fc000ef          	jal	ra,4f5c <__adddf3>
    4c64:	00000613          	li	a2,0
    4c68:	00000693          	li	a3,0
    4c6c:	338010ef          	jal	ra,5fa4 <__gedf2>
    4c70:	faa054e3          	blez	a0,4c18 <floor+0xa0>
    4c74:	0004c863          	bltz	s1,4c84 <floor+0x10c>
    4c78:	00000a13          	li	s4,0
    4c7c:	00000993          	li	s3,0
    4c80:	f99ff06f          	j	4c18 <floor+0xa0>
    4c84:	00149493          	slli	s1,s1,0x1
    4c88:	0014d493          	srli	s1,s1,0x1
    4c8c:	0084ea33          	or	s4,s1,s0
    4c90:	f80a04e3          	beqz	s4,4c18 <floor+0xa0>
    4c94:	00000a13          	li	s4,0
    4c98:	bff009b7          	lui	s3,0xbff00
    4c9c:	f7dff06f          	j	4c18 <floor+0xa0>
    4ca0:	001009b7          	lui	s3,0x100
    4ca4:	4129d9b3          	sra	s3,s3,s2
    4ca8:	009989b3          	add	s3,s3,s1
    4cac:	f61ff06f          	j	4c0c <floor+0x94>
    4cb0:	03300713          	li	a4,51
    4cb4:	03275663          	bge	a4,s2,4ce0 <floor+0x168>
    4cb8:	40000713          	li	a4,1024
    4cbc:	00050793          	mv	a5,a0
    4cc0:	f6e910e3          	bne	s2,a4,4c20 <floor+0xa8>
    4cc4:	00050613          	mv	a2,a0
    4cc8:	00058693          	mv	a3,a1
    4ccc:	00040513          	mv	a0,s0
    4cd0:	00048593          	mv	a1,s1
    4cd4:	288000ef          	jal	ra,4f5c <__adddf3>
    4cd8:	00050793          	mv	a5,a0
    4cdc:	f45ff06f          	j	4c20 <floor+0xa8>
    4ce0:	bed78793          	addi	a5,a5,-1043
    4ce4:	fff00b13          	li	s6,-1
    4ce8:	00fb5b33          	srl	s6,s6,a5
    4cec:	00ab7733          	and	a4,s6,a0
    4cf0:	00050793          	mv	a5,a0
    4cf4:	f20706e3          	beqz	a4,4c20 <floor+0xa8>
    4cf8:	000117b7          	lui	a5,0x11
    4cfc:	a707a603          	lw	a2,-1424(a5) # 10a70 <__clz_tab+0x3c0>
    4d00:	a747a683          	lw	a3,-1420(a5)
    4d04:	00040513          	mv	a0,s0
    4d08:	00048593          	mv	a1,s1
    4d0c:	250000ef          	jal	ra,4f5c <__adddf3>
    4d10:	00000613          	li	a2,0
    4d14:	00000693          	li	a3,0
    4d18:	28c010ef          	jal	ra,5fa4 <__gedf2>
    4d1c:	eea05ee3          	blez	a0,4c18 <floor+0xa0>
    4d20:	0004c863          	bltz	s1,4d30 <floor+0x1b8>
    4d24:	fffb4b13          	not	s6,s6
    4d28:	016a7a33          	and	s4,s4,s6
    4d2c:	eedff06f          	j	4c18 <floor+0xa0>
    4d30:	01400793          	li	a5,20
    4d34:	02f90263          	beq	s2,a5,4d58 <floor+0x1e0>
    4d38:	03400793          	li	a5,52
    4d3c:	412787b3          	sub	a5,a5,s2
    4d40:	00100a13          	li	s4,1
    4d44:	00fa1a33          	sll	s4,s4,a5
    4d48:	008a0a33          	add	s4,s4,s0
    4d4c:	fc8a7ce3          	bgeu	s4,s0,4d24 <floor+0x1ac>
    4d50:	00148993          	addi	s3,s1,1
    4d54:	fd1ff06f          	j	4d24 <floor+0x1ac>
    4d58:	00148993          	addi	s3,s1,1
    4d5c:	fc9ff06f          	j	4d24 <floor+0x1ac>

00004d60 <nan>:
    4d60:	000117b7          	lui	a5,0x11
    4d64:	a787a503          	lw	a0,-1416(a5) # 10a78 <__clz_tab+0x3c8>
    4d68:	a7c7a583          	lw	a1,-1412(a5)
    4d6c:	00008067          	ret

00004d70 <scalbn>:
    4d70:	ff010113          	addi	sp,sp,-16
    4d74:	00112623          	sw	ra,12(sp)
    4d78:	00812423          	sw	s0,8(sp)
    4d7c:	00060413          	mv	s0,a2
    4d80:	4145d793          	srai	a5,a1,0x14
    4d84:	7ff7f793          	andi	a5,a5,2047
    4d88:	06079c63          	bnez	a5,4e00 <scalbn+0x90>
    4d8c:	00159793          	slli	a5,a1,0x1
    4d90:	0017d793          	srli	a5,a5,0x1
    4d94:	00a7e7b3          	or	a5,a5,a0
    4d98:	10078e63          	beqz	a5,4eb4 <scalbn+0x144>
    4d9c:	000117b7          	lui	a5,0x11
    4da0:	a807a603          	lw	a2,-1408(a5) # 10a80 <__clz_tab+0x3d0>
    4da4:	a847a683          	lw	a3,-1404(a5)
    4da8:	00050713          	mv	a4,a0
    4dac:	00058793          	mv	a5,a1
    4db0:	00070513          	mv	a0,a4
    4db4:	00078593          	mv	a1,a5
    4db8:	3b4010ef          	jal	ra,616c <__muldf3>
    4dbc:	00050713          	mv	a4,a0
    4dc0:	00058793          	mv	a5,a1
    4dc4:	ffff46b7          	lui	a3,0xffff4
    4dc8:	cb068693          	addi	a3,a3,-848 # ffff3cb0 <soln_cnt0+0xfffe31d4>
    4dcc:	00d44c63          	blt	s0,a3,4de4 <scalbn+0x74>
    4dd0:	00058713          	mv	a4,a1
    4dd4:	4145d793          	srai	a5,a1,0x14
    4dd8:	7ff7f793          	andi	a5,a5,2047
    4ddc:	fca78793          	addi	a5,a5,-54
    4de0:	02c0006f          	j	4e0c <scalbn+0x9c>
    4de4:	000116b7          	lui	a3,0x11
    4de8:	a886a603          	lw	a2,-1400(a3) # 10a88 <__clz_tab+0x3d8>
    4dec:	a8c6a683          	lw	a3,-1396(a3)
    4df0:	00070513          	mv	a0,a4
    4df4:	00078593          	mv	a1,a5
    4df8:	374010ef          	jal	ra,616c <__muldf3>
    4dfc:	0b80006f          	j	4eb4 <scalbn+0x144>
    4e00:	00058713          	mv	a4,a1
    4e04:	7ff00693          	li	a3,2047
    4e08:	06d78063          	beq	a5,a3,4e68 <scalbn+0xf8>
    4e0c:	00f407b3          	add	a5,s0,a5
    4e10:	7fe00693          	li	a3,2046
    4e14:	06f6c663          	blt	a3,a5,4e80 <scalbn+0x110>
    4e18:	0af04e63          	bgtz	a5,4ed4 <scalbn+0x164>
    4e1c:	fcb00693          	li	a3,-53
    4e20:	10d7d263          	bge	a5,a3,4f24 <scalbn+0x1b4>
    4e24:	0000c7b7          	lui	a5,0xc
    4e28:	35078793          	addi	a5,a5,848 # c350 <__trunctfdf2+0x1f4>
    4e2c:	0c87d063          	bge	a5,s0,4eec <scalbn+0x17c>
    4e30:	000117b7          	lui	a5,0x11
    4e34:	a707a703          	lw	a4,-1424(a5) # 10a70 <__clz_tab+0x3c0>
    4e38:	a747a783          	lw	a5,-1420(a5)
    4e3c:	0005d863          	bgez	a1,4e4c <scalbn+0xdc>
    4e40:	000117b7          	lui	a5,0x11
    4e44:	a907a703          	lw	a4,-1392(a5) # 10a90 <__clz_tab+0x3e0>
    4e48:	a947a783          	lw	a5,-1388(a5)
    4e4c:	000116b7          	lui	a3,0x11
    4e50:	a706a603          	lw	a2,-1424(a3) # 10a70 <__clz_tab+0x3c0>
    4e54:	a746a683          	lw	a3,-1420(a3)
    4e58:	00070513          	mv	a0,a4
    4e5c:	00078593          	mv	a1,a5
    4e60:	30c010ef          	jal	ra,616c <__muldf3>
    4e64:	0500006f          	j	4eb4 <scalbn+0x144>
    4e68:	00050613          	mv	a2,a0
    4e6c:	00058693          	mv	a3,a1
    4e70:	00060513          	mv	a0,a2
    4e74:	00068593          	mv	a1,a3
    4e78:	0e4000ef          	jal	ra,4f5c <__adddf3>
    4e7c:	0380006f          	j	4eb4 <scalbn+0x144>
    4e80:	000117b7          	lui	a5,0x11
    4e84:	a707a703          	lw	a4,-1424(a5) # 10a70 <__clz_tab+0x3c0>
    4e88:	a747a783          	lw	a5,-1420(a5)
    4e8c:	0005d863          	bgez	a1,4e9c <scalbn+0x12c>
    4e90:	000117b7          	lui	a5,0x11
    4e94:	a907a703          	lw	a4,-1392(a5) # 10a90 <__clz_tab+0x3e0>
    4e98:	a947a783          	lw	a5,-1388(a5)
    4e9c:	000116b7          	lui	a3,0x11
    4ea0:	a706a603          	lw	a2,-1424(a3) # 10a70 <__clz_tab+0x3c0>
    4ea4:	a746a683          	lw	a3,-1420(a3)
    4ea8:	00070513          	mv	a0,a4
    4eac:	00078593          	mv	a1,a5
    4eb0:	2bc010ef          	jal	ra,616c <__muldf3>
    4eb4:	00050713          	mv	a4,a0
    4eb8:	00058793          	mv	a5,a1
    4ebc:	00070513          	mv	a0,a4
    4ec0:	00078593          	mv	a1,a5
    4ec4:	00c12083          	lw	ra,12(sp)
    4ec8:	00812403          	lw	s0,8(sp)
    4ecc:	01010113          	addi	sp,sp,16
    4ed0:	00008067          	ret
    4ed4:	801006b7          	lui	a3,0x80100
    4ed8:	fff68693          	addi	a3,a3,-1 # 800fffff <soln_cnt0+0x800ef523>
    4edc:	00d77733          	and	a4,a4,a3
    4ee0:	01479793          	slli	a5,a5,0x14
    4ee4:	00f765b3          	or	a1,a4,a5
    4ee8:	fcdff06f          	j	4eb4 <scalbn+0x144>
    4eec:	000117b7          	lui	a5,0x11
    4ef0:	a887a703          	lw	a4,-1400(a5) # 10a88 <__clz_tab+0x3d8>
    4ef4:	a8c7a783          	lw	a5,-1396(a5)
    4ef8:	0005d863          	bgez	a1,4f08 <scalbn+0x198>
    4efc:	000117b7          	lui	a5,0x11
    4f00:	a987a703          	lw	a4,-1384(a5) # 10a98 <__clz_tab+0x3e8>
    4f04:	a9c7a783          	lw	a5,-1380(a5)
    4f08:	000116b7          	lui	a3,0x11
    4f0c:	a886a603          	lw	a2,-1400(a3) # 10a88 <__clz_tab+0x3d8>
    4f10:	a8c6a683          	lw	a3,-1396(a3)
    4f14:	00070513          	mv	a0,a4
    4f18:	00078593          	mv	a1,a5
    4f1c:	250010ef          	jal	ra,616c <__muldf3>
    4f20:	f95ff06f          	j	4eb4 <scalbn+0x144>
    4f24:	03678793          	addi	a5,a5,54
    4f28:	01479793          	slli	a5,a5,0x14
    4f2c:	801006b7          	lui	a3,0x80100
    4f30:	fff68693          	addi	a3,a3,-1 # 800fffff <soln_cnt0+0x800ef523>
    4f34:	00d77733          	and	a4,a4,a3
    4f38:	00050893          	mv	a7,a0
    4f3c:	00e7e833          	or	a6,a5,a4
    4f40:	000117b7          	lui	a5,0x11
    4f44:	aa07a603          	lw	a2,-1376(a5) # 10aa0 <__clz_tab+0x3f0>
    4f48:	aa47a683          	lw	a3,-1372(a5)
    4f4c:	00088513          	mv	a0,a7
    4f50:	00080593          	mv	a1,a6
    4f54:	218010ef          	jal	ra,616c <__muldf3>
    4f58:	f5dff06f          	j	4eb4 <scalbn+0x144>

00004f5c <__adddf3>:
    4f5c:	00100837          	lui	a6,0x100
    4f60:	fff80813          	addi	a6,a6,-1 # fffff <soln_cnt0+0xef523>
    4f64:	fe010113          	addi	sp,sp,-32
    4f68:	00b878b3          	and	a7,a6,a1
    4f6c:	0145d713          	srli	a4,a1,0x14
    4f70:	01d55793          	srli	a5,a0,0x1d
    4f74:	00d87833          	and	a6,a6,a3
    4f78:	00812c23          	sw	s0,24(sp)
    4f7c:	7ff77413          	andi	s0,a4,2047
    4f80:	00389713          	slli	a4,a7,0x3
    4f84:	0146d893          	srli	a7,a3,0x14
    4f88:	00381813          	slli	a6,a6,0x3
    4f8c:	00912a23          	sw	s1,20(sp)
    4f90:	00e7e7b3          	or	a5,a5,a4
    4f94:	7ff8f893          	andi	a7,a7,2047
    4f98:	01d65713          	srli	a4,a2,0x1d
    4f9c:	00112e23          	sw	ra,28(sp)
    4fa0:	01212823          	sw	s2,16(sp)
    4fa4:	01312623          	sw	s3,12(sp)
    4fa8:	01f5d493          	srli	s1,a1,0x1f
    4fac:	01f6d693          	srli	a3,a3,0x1f
    4fb0:	01076733          	or	a4,a4,a6
    4fb4:	00351513          	slli	a0,a0,0x3
    4fb8:	00361613          	slli	a2,a2,0x3
    4fbc:	41140833          	sub	a6,s0,a7
    4fc0:	2cd49863          	bne	s1,a3,5290 <__adddf3+0x334>
    4fc4:	13005063          	blez	a6,50e4 <__adddf3+0x188>
    4fc8:	04089063          	bnez	a7,5008 <__adddf3+0xac>
    4fcc:	00c766b3          	or	a3,a4,a2
    4fd0:	70068e63          	beqz	a3,56ec <__adddf3+0x790>
    4fd4:	fff80593          	addi	a1,a6,-1
    4fd8:	02059063          	bnez	a1,4ff8 <__adddf3+0x9c>
    4fdc:	00c50633          	add	a2,a0,a2
    4fe0:	00e78733          	add	a4,a5,a4
    4fe4:	00a637b3          	sltu	a5,a2,a0
    4fe8:	00f707b3          	add	a5,a4,a5
    4fec:	00060513          	mv	a0,a2
    4ff0:	00100413          	li	s0,1
    4ff4:	0700006f          	j	5064 <__adddf3+0x108>
    4ff8:	7ff00693          	li	a3,2047
    4ffc:	02d81063          	bne	a6,a3,501c <__adddf3+0xc0>
    5000:	7ff00413          	li	s0,2047
    5004:	2140006f          	j	5218 <__adddf3+0x2bc>
    5008:	7ff00693          	li	a3,2047
    500c:	20d40663          	beq	s0,a3,5218 <__adddf3+0x2bc>
    5010:	008006b7          	lui	a3,0x800
    5014:	00d76733          	or	a4,a4,a3
    5018:	00080593          	mv	a1,a6
    501c:	03800693          	li	a3,56
    5020:	0ab6cc63          	blt	a3,a1,50d8 <__adddf3+0x17c>
    5024:	01f00693          	li	a3,31
    5028:	06b6ce63          	blt	a3,a1,50a4 <__adddf3+0x148>
    502c:	02000813          	li	a6,32
    5030:	40b80833          	sub	a6,a6,a1
    5034:	010716b3          	sll	a3,a4,a6
    5038:	00b658b3          	srl	a7,a2,a1
    503c:	01061833          	sll	a6,a2,a6
    5040:	0116e6b3          	or	a3,a3,a7
    5044:	01003833          	snez	a6,a6
    5048:	0106e6b3          	or	a3,a3,a6
    504c:	00b755b3          	srl	a1,a4,a1
    5050:	00a686b3          	add	a3,a3,a0
    5054:	00f585b3          	add	a1,a1,a5
    5058:	00a6b7b3          	sltu	a5,a3,a0
    505c:	00f587b3          	add	a5,a1,a5
    5060:	00068513          	mv	a0,a3
    5064:	00800737          	lui	a4,0x800
    5068:	00e7f733          	and	a4,a5,a4
    506c:	1a070663          	beqz	a4,5218 <__adddf3+0x2bc>
    5070:	00140413          	addi	s0,s0,1
    5074:	7ff00713          	li	a4,2047
    5078:	5ce40a63          	beq	s0,a4,564c <__adddf3+0x6f0>
    507c:	ff800737          	lui	a4,0xff800
    5080:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    5084:	00e7f7b3          	and	a5,a5,a4
    5088:	00155713          	srli	a4,a0,0x1
    508c:	00157513          	andi	a0,a0,1
    5090:	00a76733          	or	a4,a4,a0
    5094:	01f79513          	slli	a0,a5,0x1f
    5098:	00e56533          	or	a0,a0,a4
    509c:	0017d793          	srli	a5,a5,0x1
    50a0:	1780006f          	j	5218 <__adddf3+0x2bc>
    50a4:	fe058693          	addi	a3,a1,-32
    50a8:	02000893          	li	a7,32
    50ac:	00d756b3          	srl	a3,a4,a3
    50b0:	00000813          	li	a6,0
    50b4:	01158863          	beq	a1,a7,50c4 <__adddf3+0x168>
    50b8:	04000813          	li	a6,64
    50bc:	40b80833          	sub	a6,a6,a1
    50c0:	01071833          	sll	a6,a4,a6
    50c4:	00c86833          	or	a6,a6,a2
    50c8:	01003833          	snez	a6,a6
    50cc:	0106e6b3          	or	a3,a3,a6
    50d0:	00000593          	li	a1,0
    50d4:	f7dff06f          	j	5050 <__adddf3+0xf4>
    50d8:	00c766b3          	or	a3,a4,a2
    50dc:	00d036b3          	snez	a3,a3
    50e0:	ff1ff06f          	j	50d0 <__adddf3+0x174>
    50e4:	0e080263          	beqz	a6,51c8 <__adddf3+0x26c>
    50e8:	408885b3          	sub	a1,a7,s0
    50ec:	02041e63          	bnez	s0,5128 <__adddf3+0x1cc>
    50f0:	00a7e6b3          	or	a3,a5,a0
    50f4:	52068c63          	beqz	a3,562c <__adddf3+0x6d0>
    50f8:	fff58693          	addi	a3,a1,-1
    50fc:	00069c63          	bnez	a3,5114 <__adddf3+0x1b8>
    5100:	00c50533          	add	a0,a0,a2
    5104:	00e78733          	add	a4,a5,a4
    5108:	00c53633          	sltu	a2,a0,a2
    510c:	00c707b3          	add	a5,a4,a2
    5110:	ee1ff06f          	j	4ff0 <__adddf3+0x94>
    5114:	7ff00813          	li	a6,2047
    5118:	03059263          	bne	a1,a6,513c <__adddf3+0x1e0>
    511c:	00070793          	mv	a5,a4
    5120:	00060513          	mv	a0,a2
    5124:	eddff06f          	j	5000 <__adddf3+0xa4>
    5128:	7ff00693          	li	a3,2047
    512c:	fed888e3          	beq	a7,a3,511c <__adddf3+0x1c0>
    5130:	008006b7          	lui	a3,0x800
    5134:	00d7e7b3          	or	a5,a5,a3
    5138:	00058693          	mv	a3,a1
    513c:	03800593          	li	a1,56
    5140:	06d5ce63          	blt	a1,a3,51bc <__adddf3+0x260>
    5144:	01f00593          	li	a1,31
    5148:	04d5c063          	blt	a1,a3,5188 <__adddf3+0x22c>
    514c:	02000813          	li	a6,32
    5150:	40d80833          	sub	a6,a6,a3
    5154:	010795b3          	sll	a1,a5,a6
    5158:	00d55333          	srl	t1,a0,a3
    515c:	01051833          	sll	a6,a0,a6
    5160:	0065e5b3          	or	a1,a1,t1
    5164:	01003833          	snez	a6,a6
    5168:	0105e5b3          	or	a1,a1,a6
    516c:	00d7d6b3          	srl	a3,a5,a3
    5170:	00c58533          	add	a0,a1,a2
    5174:	00e686b3          	add	a3,a3,a4
    5178:	00c53633          	sltu	a2,a0,a2
    517c:	00c687b3          	add	a5,a3,a2
    5180:	00088413          	mv	s0,a7
    5184:	ee1ff06f          	j	5064 <__adddf3+0x108>
    5188:	fe068593          	addi	a1,a3,-32 # 7fffe0 <soln_cnt0+0x7ef504>
    518c:	02000313          	li	t1,32
    5190:	00b7d5b3          	srl	a1,a5,a1
    5194:	00000813          	li	a6,0
    5198:	00668863          	beq	a3,t1,51a8 <__adddf3+0x24c>
    519c:	04000813          	li	a6,64
    51a0:	40d80833          	sub	a6,a6,a3
    51a4:	01079833          	sll	a6,a5,a6
    51a8:	00a86833          	or	a6,a6,a0
    51ac:	01003833          	snez	a6,a6
    51b0:	0105e5b3          	or	a1,a1,a6
    51b4:	00000693          	li	a3,0
    51b8:	fb9ff06f          	j	5170 <__adddf3+0x214>
    51bc:	00a7e5b3          	or	a1,a5,a0
    51c0:	00b035b3          	snez	a1,a1
    51c4:	ff1ff06f          	j	51b4 <__adddf3+0x258>
    51c8:	00140693          	addi	a3,s0,1
    51cc:	7fe6f593          	andi	a1,a3,2046
    51d0:	08059863          	bnez	a1,5260 <__adddf3+0x304>
    51d4:	00a7e6b3          	or	a3,a5,a0
    51d8:	06041463          	bnez	s0,5240 <__adddf3+0x2e4>
    51dc:	46068063          	beqz	a3,563c <__adddf3+0x6e0>
    51e0:	00c766b3          	or	a3,a4,a2
    51e4:	02068a63          	beqz	a3,5218 <__adddf3+0x2bc>
    51e8:	00c50633          	add	a2,a0,a2
    51ec:	00e78733          	add	a4,a5,a4
    51f0:	00a637b3          	sltu	a5,a2,a0
    51f4:	00f707b3          	add	a5,a4,a5
    51f8:	00800737          	lui	a4,0x800
    51fc:	00e7f733          	and	a4,a5,a4
    5200:	00060513          	mv	a0,a2
    5204:	00070a63          	beqz	a4,5218 <__adddf3+0x2bc>
    5208:	ff800737          	lui	a4,0xff800
    520c:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    5210:	00e7f7b3          	and	a5,a5,a4
    5214:	00100413          	li	s0,1
    5218:	00757713          	andi	a4,a0,7
    521c:	42070c63          	beqz	a4,5654 <__adddf3+0x6f8>
    5220:	00f57713          	andi	a4,a0,15
    5224:	00400693          	li	a3,4
    5228:	42d70663          	beq	a4,a3,5654 <__adddf3+0x6f8>
    522c:	00450713          	addi	a4,a0,4
    5230:	00a73533          	sltu	a0,a4,a0
    5234:	00a787b3          	add	a5,a5,a0
    5238:	00070513          	mv	a0,a4
    523c:	4180006f          	j	5654 <__adddf3+0x6f8>
    5240:	ec068ee3          	beqz	a3,511c <__adddf3+0x1c0>
    5244:	00c76733          	or	a4,a4,a2
    5248:	da070ce3          	beqz	a4,5000 <__adddf3+0xa4>
    524c:	00000493          	li	s1,0
    5250:	004007b7          	lui	a5,0x400
    5254:	00000513          	li	a0,0
    5258:	7ff00413          	li	s0,2047
    525c:	3f80006f          	j	5654 <__adddf3+0x6f8>
    5260:	7ff00593          	li	a1,2047
    5264:	3eb68263          	beq	a3,a1,5648 <__adddf3+0x6ec>
    5268:	00c50633          	add	a2,a0,a2
    526c:	00a63533          	sltu	a0,a2,a0
    5270:	00e78733          	add	a4,a5,a4
    5274:	00a70733          	add	a4,a4,a0
    5278:	01f71513          	slli	a0,a4,0x1f
    527c:	00165613          	srli	a2,a2,0x1
    5280:	00c56533          	or	a0,a0,a2
    5284:	00175793          	srli	a5,a4,0x1
    5288:	00068413          	mv	s0,a3
    528c:	f8dff06f          	j	5218 <__adddf3+0x2bc>
    5290:	0f005c63          	blez	a6,5388 <__adddf3+0x42c>
    5294:	08089e63          	bnez	a7,5330 <__adddf3+0x3d4>
    5298:	00c766b3          	or	a3,a4,a2
    529c:	44068863          	beqz	a3,56ec <__adddf3+0x790>
    52a0:	fff80593          	addi	a1,a6,-1
    52a4:	02059063          	bnez	a1,52c4 <__adddf3+0x368>
    52a8:	40c50633          	sub	a2,a0,a2
    52ac:	40e78733          	sub	a4,a5,a4
    52b0:	00c537b3          	sltu	a5,a0,a2
    52b4:	40f707b3          	sub	a5,a4,a5
    52b8:	00060513          	mv	a0,a2
    52bc:	00100413          	li	s0,1
    52c0:	0540006f          	j	5314 <__adddf3+0x3b8>
    52c4:	7ff00693          	li	a3,2047
    52c8:	d2d80ce3          	beq	a6,a3,5000 <__adddf3+0xa4>
    52cc:	03800693          	li	a3,56
    52d0:	0ab6c663          	blt	a3,a1,537c <__adddf3+0x420>
    52d4:	01f00693          	li	a3,31
    52d8:	06b6c863          	blt	a3,a1,5348 <__adddf3+0x3ec>
    52dc:	02000813          	li	a6,32
    52e0:	40b80833          	sub	a6,a6,a1
    52e4:	010716b3          	sll	a3,a4,a6
    52e8:	00b658b3          	srl	a7,a2,a1
    52ec:	01061833          	sll	a6,a2,a6
    52f0:	0116e6b3          	or	a3,a3,a7
    52f4:	01003833          	snez	a6,a6
    52f8:	0106e6b3          	or	a3,a3,a6
    52fc:	00b755b3          	srl	a1,a4,a1
    5300:	40d506b3          	sub	a3,a0,a3
    5304:	40b785b3          	sub	a1,a5,a1
    5308:	00d537b3          	sltu	a5,a0,a3
    530c:	40f587b3          	sub	a5,a1,a5
    5310:	00068513          	mv	a0,a3
    5314:	00800937          	lui	s2,0x800
    5318:	0127f733          	and	a4,a5,s2
    531c:	ee070ee3          	beqz	a4,5218 <__adddf3+0x2bc>
    5320:	fff90913          	addi	s2,s2,-1 # 7fffff <soln_cnt0+0x7ef523>
    5324:	0127f933          	and	s2,a5,s2
    5328:	00050993          	mv	s3,a0
    532c:	2140006f          	j	5540 <__adddf3+0x5e4>
    5330:	7ff00693          	li	a3,2047
    5334:	eed402e3          	beq	s0,a3,5218 <__adddf3+0x2bc>
    5338:	008006b7          	lui	a3,0x800
    533c:	00d76733          	or	a4,a4,a3
    5340:	00080593          	mv	a1,a6
    5344:	f89ff06f          	j	52cc <__adddf3+0x370>
    5348:	fe058693          	addi	a3,a1,-32
    534c:	02000893          	li	a7,32
    5350:	00d756b3          	srl	a3,a4,a3
    5354:	00000813          	li	a6,0
    5358:	01158863          	beq	a1,a7,5368 <__adddf3+0x40c>
    535c:	04000813          	li	a6,64
    5360:	40b80833          	sub	a6,a6,a1
    5364:	01071833          	sll	a6,a4,a6
    5368:	00c86833          	or	a6,a6,a2
    536c:	01003833          	snez	a6,a6
    5370:	0106e6b3          	or	a3,a3,a6
    5374:	00000593          	li	a1,0
    5378:	f89ff06f          	j	5300 <__adddf3+0x3a4>
    537c:	00c766b3          	or	a3,a4,a2
    5380:	00d036b3          	snez	a3,a3
    5384:	ff1ff06f          	j	5374 <__adddf3+0x418>
    5388:	0e080863          	beqz	a6,5478 <__adddf3+0x51c>
    538c:	40888833          	sub	a6,a7,s0
    5390:	04041263          	bnez	s0,53d4 <__adddf3+0x478>
    5394:	00a7e5b3          	or	a1,a5,a0
    5398:	34058e63          	beqz	a1,56f4 <__adddf3+0x798>
    539c:	fff80593          	addi	a1,a6,-1
    53a0:	00059e63          	bnez	a1,53bc <__adddf3+0x460>
    53a4:	40a60533          	sub	a0,a2,a0
    53a8:	40f70733          	sub	a4,a4,a5
    53ac:	00a63633          	sltu	a2,a2,a0
    53b0:	40c707b3          	sub	a5,a4,a2
    53b4:	00068493          	mv	s1,a3
    53b8:	f05ff06f          	j	52bc <__adddf3+0x360>
    53bc:	7ff00313          	li	t1,2047
    53c0:	02681463          	bne	a6,t1,53e8 <__adddf3+0x48c>
    53c4:	00070793          	mv	a5,a4
    53c8:	00060513          	mv	a0,a2
    53cc:	7ff00413          	li	s0,2047
    53d0:	0d00006f          	j	54a0 <__adddf3+0x544>
    53d4:	7ff00593          	li	a1,2047
    53d8:	feb886e3          	beq	a7,a1,53c4 <__adddf3+0x468>
    53dc:	008005b7          	lui	a1,0x800
    53e0:	00b7e7b3          	or	a5,a5,a1
    53e4:	00080593          	mv	a1,a6
    53e8:	03800813          	li	a6,56
    53ec:	08b84063          	blt	a6,a1,546c <__adddf3+0x510>
    53f0:	01f00813          	li	a6,31
    53f4:	04b84263          	blt	a6,a1,5438 <__adddf3+0x4dc>
    53f8:	02000313          	li	t1,32
    53fc:	40b30333          	sub	t1,t1,a1
    5400:	00b55e33          	srl	t3,a0,a1
    5404:	00679833          	sll	a6,a5,t1
    5408:	00651333          	sll	t1,a0,t1
    540c:	01c86833          	or	a6,a6,t3
    5410:	00603333          	snez	t1,t1
    5414:	00686533          	or	a0,a6,t1
    5418:	00b7d5b3          	srl	a1,a5,a1
    541c:	40a60533          	sub	a0,a2,a0
    5420:	40b705b3          	sub	a1,a4,a1
    5424:	00a63633          	sltu	a2,a2,a0
    5428:	40c587b3          	sub	a5,a1,a2
    542c:	00088413          	mv	s0,a7
    5430:	00068493          	mv	s1,a3
    5434:	ee1ff06f          	j	5314 <__adddf3+0x3b8>
    5438:	fe058813          	addi	a6,a1,-32 # 7fffe0 <soln_cnt0+0x7ef504>
    543c:	02000e13          	li	t3,32
    5440:	0107d833          	srl	a6,a5,a6
    5444:	00000313          	li	t1,0
    5448:	01c58863          	beq	a1,t3,5458 <__adddf3+0x4fc>
    544c:	04000313          	li	t1,64
    5450:	40b30333          	sub	t1,t1,a1
    5454:	00679333          	sll	t1,a5,t1
    5458:	00a36333          	or	t1,t1,a0
    545c:	00603333          	snez	t1,t1
    5460:	00686533          	or	a0,a6,t1
    5464:	00000593          	li	a1,0
    5468:	fb5ff06f          	j	541c <__adddf3+0x4c0>
    546c:	00a7e533          	or	a0,a5,a0
    5470:	00a03533          	snez	a0,a0
    5474:	ff1ff06f          	j	5464 <__adddf3+0x508>
    5478:	00140593          	addi	a1,s0,1
    547c:	7fe5f593          	andi	a1,a1,2046
    5480:	08059863          	bnez	a1,5510 <__adddf3+0x5b4>
    5484:	00a7e833          	or	a6,a5,a0
    5488:	00c765b3          	or	a1,a4,a2
    548c:	06041263          	bnez	s0,54f0 <__adddf3+0x594>
    5490:	00081c63          	bnez	a6,54a8 <__adddf3+0x54c>
    5494:	26058863          	beqz	a1,5704 <__adddf3+0x7a8>
    5498:	00070793          	mv	a5,a4
    549c:	00060513          	mv	a0,a2
    54a0:	00068493          	mv	s1,a3
    54a4:	d75ff06f          	j	5218 <__adddf3+0x2bc>
    54a8:	d60588e3          	beqz	a1,5218 <__adddf3+0x2bc>
    54ac:	40c50833          	sub	a6,a0,a2
    54b0:	010538b3          	sltu	a7,a0,a6
    54b4:	40e785b3          	sub	a1,a5,a4
    54b8:	411585b3          	sub	a1,a1,a7
    54bc:	008008b7          	lui	a7,0x800
    54c0:	0115f8b3          	and	a7,a1,a7
    54c4:	00088c63          	beqz	a7,54dc <__adddf3+0x580>
    54c8:	40a60533          	sub	a0,a2,a0
    54cc:	40f70733          	sub	a4,a4,a5
    54d0:	00a63633          	sltu	a2,a2,a0
    54d4:	40c707b3          	sub	a5,a4,a2
    54d8:	fc9ff06f          	j	54a0 <__adddf3+0x544>
    54dc:	00b86533          	or	a0,a6,a1
    54e0:	22050a63          	beqz	a0,5714 <__adddf3+0x7b8>
    54e4:	00058793          	mv	a5,a1
    54e8:	00080513          	mv	a0,a6
    54ec:	d2dff06f          	j	5218 <__adddf3+0x2bc>
    54f0:	00081c63          	bnez	a6,5508 <__adddf3+0x5ac>
    54f4:	22058463          	beqz	a1,571c <__adddf3+0x7c0>
    54f8:	00070793          	mv	a5,a4
    54fc:	00060513          	mv	a0,a2
    5500:	00068493          	mv	s1,a3
    5504:	afdff06f          	j	5000 <__adddf3+0xa4>
    5508:	ae058ce3          	beqz	a1,5000 <__adddf3+0xa4>
    550c:	d41ff06f          	j	524c <__adddf3+0x2f0>
    5510:	40c509b3          	sub	s3,a0,a2
    5514:	013535b3          	sltu	a1,a0,s3
    5518:	40e78933          	sub	s2,a5,a4
    551c:	40b90933          	sub	s2,s2,a1
    5520:	008005b7          	lui	a1,0x800
    5524:	00b975b3          	and	a1,s2,a1
    5528:	08058463          	beqz	a1,55b0 <__adddf3+0x654>
    552c:	40a609b3          	sub	s3,a2,a0
    5530:	40f70933          	sub	s2,a4,a5
    5534:	01363633          	sltu	a2,a2,s3
    5538:	40c90933          	sub	s2,s2,a2
    553c:	00068493          	mv	s1,a3
    5540:	08090263          	beqz	s2,55c4 <__adddf3+0x668>
    5544:	00090513          	mv	a0,s2
    5548:	038070ef          	jal	ra,c580 <__clzsi2>
    554c:	ff850713          	addi	a4,a0,-8
    5550:	01f00793          	li	a5,31
    5554:	08e7c063          	blt	a5,a4,55d4 <__adddf3+0x678>
    5558:	02000793          	li	a5,32
    555c:	40e787b3          	sub	a5,a5,a4
    5560:	00e91933          	sll	s2,s2,a4
    5564:	00f9d7b3          	srl	a5,s3,a5
    5568:	0127e7b3          	or	a5,a5,s2
    556c:	00e99533          	sll	a0,s3,a4
    5570:	0a874463          	blt	a4,s0,5618 <__adddf3+0x6bc>
    5574:	40870733          	sub	a4,a4,s0
    5578:	00170613          	addi	a2,a4,1
    557c:	01f00693          	li	a3,31
    5580:	06c6c263          	blt	a3,a2,55e4 <__adddf3+0x688>
    5584:	02000713          	li	a4,32
    5588:	40c70733          	sub	a4,a4,a2
    558c:	00e796b3          	sll	a3,a5,a4
    5590:	00c555b3          	srl	a1,a0,a2
    5594:	00e51733          	sll	a4,a0,a4
    5598:	00b6e6b3          	or	a3,a3,a1
    559c:	00e03733          	snez	a4,a4
    55a0:	00e6e533          	or	a0,a3,a4
    55a4:	00c7d7b3          	srl	a5,a5,a2
    55a8:	00000413          	li	s0,0
    55ac:	c6dff06f          	j	5218 <__adddf3+0x2bc>
    55b0:	0129e533          	or	a0,s3,s2
    55b4:	f80516e3          	bnez	a0,5540 <__adddf3+0x5e4>
    55b8:	00000793          	li	a5,0
    55bc:	00000413          	li	s0,0
    55c0:	14c0006f          	j	570c <__adddf3+0x7b0>
    55c4:	00098513          	mv	a0,s3
    55c8:	7b9060ef          	jal	ra,c580 <__clzsi2>
    55cc:	02050513          	addi	a0,a0,32
    55d0:	f7dff06f          	j	554c <__adddf3+0x5f0>
    55d4:	fd850793          	addi	a5,a0,-40
    55d8:	00f997b3          	sll	a5,s3,a5
    55dc:	00000513          	li	a0,0
    55e0:	f91ff06f          	j	5570 <__adddf3+0x614>
    55e4:	fe170713          	addi	a4,a4,-31
    55e8:	02000593          	li	a1,32
    55ec:	00e7d733          	srl	a4,a5,a4
    55f0:	00000693          	li	a3,0
    55f4:	00b60863          	beq	a2,a1,5604 <__adddf3+0x6a8>
    55f8:	04000693          	li	a3,64
    55fc:	40c686b3          	sub	a3,a3,a2
    5600:	00d796b3          	sll	a3,a5,a3
    5604:	00d566b3          	or	a3,a0,a3
    5608:	00d036b3          	snez	a3,a3
    560c:	00d76533          	or	a0,a4,a3
    5610:	00000793          	li	a5,0
    5614:	f95ff06f          	j	55a8 <__adddf3+0x64c>
    5618:	40e40433          	sub	s0,s0,a4
    561c:	ff800737          	lui	a4,0xff800
    5620:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    5624:	00e7f7b3          	and	a5,a5,a4
    5628:	bf1ff06f          	j	5218 <__adddf3+0x2bc>
    562c:	00070793          	mv	a5,a4
    5630:	00060513          	mv	a0,a2
    5634:	00058413          	mv	s0,a1
    5638:	be1ff06f          	j	5218 <__adddf3+0x2bc>
    563c:	00070793          	mv	a5,a4
    5640:	00060513          	mv	a0,a2
    5644:	bd5ff06f          	j	5218 <__adddf3+0x2bc>
    5648:	7ff00413          	li	s0,2047
    564c:	00000793          	li	a5,0
    5650:	00000513          	li	a0,0
    5654:	00800737          	lui	a4,0x800
    5658:	00e7f733          	and	a4,a5,a4
    565c:	00070e63          	beqz	a4,5678 <__adddf3+0x71c>
    5660:	00140413          	addi	s0,s0,1
    5664:	7ff00713          	li	a4,2047
    5668:	0ce40263          	beq	s0,a4,572c <__adddf3+0x7d0>
    566c:	ff800737          	lui	a4,0xff800
    5670:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    5674:	00e7f7b3          	and	a5,a5,a4
    5678:	01d79693          	slli	a3,a5,0x1d
    567c:	00355513          	srli	a0,a0,0x3
    5680:	7ff00713          	li	a4,2047
    5684:	00a6e6b3          	or	a3,a3,a0
    5688:	0037d793          	srli	a5,a5,0x3
    568c:	00e41e63          	bne	s0,a4,56a8 <__adddf3+0x74c>
    5690:	00f6e6b3          	or	a3,a3,a5
    5694:	00000793          	li	a5,0
    5698:	00068863          	beqz	a3,56a8 <__adddf3+0x74c>
    569c:	000807b7          	lui	a5,0x80
    56a0:	00000693          	li	a3,0
    56a4:	00000493          	li	s1,0
    56a8:	01441713          	slli	a4,s0,0x14
    56ac:	7ff00637          	lui	a2,0x7ff00
    56b0:	00c79793          	slli	a5,a5,0xc
    56b4:	01c12083          	lw	ra,28(sp)
    56b8:	01812403          	lw	s0,24(sp)
    56bc:	00c77733          	and	a4,a4,a2
    56c0:	00c7d793          	srli	a5,a5,0xc
    56c4:	01f49493          	slli	s1,s1,0x1f
    56c8:	00f767b3          	or	a5,a4,a5
    56cc:	0097e733          	or	a4,a5,s1
    56d0:	01012903          	lw	s2,16(sp)
    56d4:	01412483          	lw	s1,20(sp)
    56d8:	00c12983          	lw	s3,12(sp)
    56dc:	00068513          	mv	a0,a3
    56e0:	00070593          	mv	a1,a4
    56e4:	02010113          	addi	sp,sp,32
    56e8:	00008067          	ret
    56ec:	00080413          	mv	s0,a6
    56f0:	b29ff06f          	j	5218 <__adddf3+0x2bc>
    56f4:	00070793          	mv	a5,a4
    56f8:	00060513          	mv	a0,a2
    56fc:	00080413          	mv	s0,a6
    5700:	da1ff06f          	j	54a0 <__adddf3+0x544>
    5704:	00000793          	li	a5,0
    5708:	00000513          	li	a0,0
    570c:	00000493          	li	s1,0
    5710:	f45ff06f          	j	5654 <__adddf3+0x6f8>
    5714:	00000793          	li	a5,0
    5718:	ff5ff06f          	j	570c <__adddf3+0x7b0>
    571c:	00000513          	li	a0,0
    5720:	00000493          	li	s1,0
    5724:	004007b7          	lui	a5,0x400
    5728:	b31ff06f          	j	5258 <__adddf3+0x2fc>
    572c:	00000793          	li	a5,0
    5730:	00000513          	li	a0,0
    5734:	f45ff06f          	j	5678 <__adddf3+0x71c>

00005738 <__divdf3>:
    5738:	fb010113          	addi	sp,sp,-80
    573c:	05212023          	sw	s2,64(sp)
    5740:	0145d913          	srli	s2,a1,0x14
    5744:	04912223          	sw	s1,68(sp)
    5748:	03312e23          	sw	s3,60(sp)
    574c:	03412c23          	sw	s4,56(sp)
    5750:	03512a23          	sw	s5,52(sp)
    5754:	03612823          	sw	s6,48(sp)
    5758:	00c59493          	slli	s1,a1,0xc
    575c:	04112623          	sw	ra,76(sp)
    5760:	04812423          	sw	s0,72(sp)
    5764:	03712623          	sw	s7,44(sp)
    5768:	03812423          	sw	s8,40(sp)
    576c:	03912223          	sw	s9,36(sp)
    5770:	03a12023          	sw	s10,32(sp)
    5774:	01b12e23          	sw	s11,28(sp)
    5778:	7ff97913          	andi	s2,s2,2047
    577c:	00050993          	mv	s3,a0
    5780:	00060b13          	mv	s6,a2
    5784:	00068a93          	mv	s5,a3
    5788:	00c4d493          	srli	s1,s1,0xc
    578c:	01f5da13          	srli	s4,a1,0x1f
    5790:	0a090063          	beqz	s2,5830 <__divdf3+0xf8>
    5794:	7ff00793          	li	a5,2047
    5798:	0ef90e63          	beq	s2,a5,5894 <__divdf3+0x15c>
    579c:	01d55c93          	srli	s9,a0,0x1d
    57a0:	00349493          	slli	s1,s1,0x3
    57a4:	009cecb3          	or	s9,s9,s1
    57a8:	008007b7          	lui	a5,0x800
    57ac:	00fcecb3          	or	s9,s9,a5
    57b0:	00351413          	slli	s0,a0,0x3
    57b4:	c0190913          	addi	s2,s2,-1023
    57b8:	00000b93          	li	s7,0
    57bc:	014ad793          	srli	a5,s5,0x14
    57c0:	00ca9993          	slli	s3,s5,0xc
    57c4:	7ff7f793          	andi	a5,a5,2047
    57c8:	00c9d993          	srli	s3,s3,0xc
    57cc:	01fada93          	srli	s5,s5,0x1f
    57d0:	10078063          	beqz	a5,58d0 <__divdf3+0x198>
    57d4:	7ff00713          	li	a4,2047
    57d8:	16e78063          	beq	a5,a4,5938 <__divdf3+0x200>
    57dc:	00399993          	slli	s3,s3,0x3
    57e0:	01db5713          	srli	a4,s6,0x1d
    57e4:	01376733          	or	a4,a4,s3
    57e8:	008009b7          	lui	s3,0x800
    57ec:	013769b3          	or	s3,a4,s3
    57f0:	003b1813          	slli	a6,s6,0x3
    57f4:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <soln_cnt0+0x7ef125>
    57f8:	00000713          	li	a4,0
    57fc:	40f90933          	sub	s2,s2,a5
    5800:	002b9793          	slli	a5,s7,0x2
    5804:	00e7e7b3          	or	a5,a5,a4
    5808:	fff78793          	addi	a5,a5,-1
    580c:	00e00693          	li	a3,14
    5810:	015a44b3          	xor	s1,s4,s5
    5814:	14f6ee63          	bltu	a3,a5,5970 <__divdf3+0x238>
    5818:	000106b7          	lui	a3,0x10
    581c:	00279793          	slli	a5,a5,0x2
    5820:	63868693          	addi	a3,a3,1592 # 10638 <PIo2+0x40>
    5824:	00d787b3          	add	a5,a5,a3
    5828:	0007a783          	lw	a5,0(a5)
    582c:	00078067          	jr	a5
    5830:	00a4ecb3          	or	s9,s1,a0
    5834:	060c8e63          	beqz	s9,58b0 <__divdf3+0x178>
    5838:	04048063          	beqz	s1,5878 <__divdf3+0x140>
    583c:	00048513          	mv	a0,s1
    5840:	541060ef          	jal	ra,c580 <__clzsi2>
    5844:	ff550793          	addi	a5,a0,-11
    5848:	01c00713          	li	a4,28
    584c:	02f74c63          	blt	a4,a5,5884 <__divdf3+0x14c>
    5850:	01d00c93          	li	s9,29
    5854:	ff850413          	addi	s0,a0,-8
    5858:	40fc8cb3          	sub	s9,s9,a5
    585c:	008494b3          	sll	s1,s1,s0
    5860:	0199dcb3          	srl	s9,s3,s9
    5864:	009cecb3          	or	s9,s9,s1
    5868:	00899433          	sll	s0,s3,s0
    586c:	c0d00913          	li	s2,-1011
    5870:	40a90933          	sub	s2,s2,a0
    5874:	f45ff06f          	j	57b8 <__divdf3+0x80>
    5878:	509060ef          	jal	ra,c580 <__clzsi2>
    587c:	02050513          	addi	a0,a0,32
    5880:	fc5ff06f          	j	5844 <__divdf3+0x10c>
    5884:	fd850c93          	addi	s9,a0,-40
    5888:	01999cb3          	sll	s9,s3,s9
    588c:	00000413          	li	s0,0
    5890:	fddff06f          	j	586c <__divdf3+0x134>
    5894:	00a4ecb3          	or	s9,s1,a0
    5898:	020c8463          	beqz	s9,58c0 <__divdf3+0x188>
    589c:	00050413          	mv	s0,a0
    58a0:	00048c93          	mv	s9,s1
    58a4:	7ff00913          	li	s2,2047
    58a8:	00300b93          	li	s7,3
    58ac:	f11ff06f          	j	57bc <__divdf3+0x84>
    58b0:	00000413          	li	s0,0
    58b4:	00000913          	li	s2,0
    58b8:	00100b93          	li	s7,1
    58bc:	f01ff06f          	j	57bc <__divdf3+0x84>
    58c0:	00000413          	li	s0,0
    58c4:	7ff00913          	li	s2,2047
    58c8:	00200b93          	li	s7,2
    58cc:	ef1ff06f          	j	57bc <__divdf3+0x84>
    58d0:	0169e833          	or	a6,s3,s6
    58d4:	06080e63          	beqz	a6,5950 <__divdf3+0x218>
    58d8:	04098063          	beqz	s3,5918 <__divdf3+0x1e0>
    58dc:	00098513          	mv	a0,s3
    58e0:	4a1060ef          	jal	ra,c580 <__clzsi2>
    58e4:	ff550713          	addi	a4,a0,-11
    58e8:	01c00793          	li	a5,28
    58ec:	02e7ce63          	blt	a5,a4,5928 <__divdf3+0x1f0>
    58f0:	01d00793          	li	a5,29
    58f4:	ff850813          	addi	a6,a0,-8
    58f8:	40e787b3          	sub	a5,a5,a4
    58fc:	010999b3          	sll	s3,s3,a6
    5900:	00fb57b3          	srl	a5,s6,a5
    5904:	0137e9b3          	or	s3,a5,s3
    5908:	010b1833          	sll	a6,s6,a6
    590c:	c0d00793          	li	a5,-1011
    5910:	40a787b3          	sub	a5,a5,a0
    5914:	ee5ff06f          	j	57f8 <__divdf3+0xc0>
    5918:	000b0513          	mv	a0,s6
    591c:	465060ef          	jal	ra,c580 <__clzsi2>
    5920:	02050513          	addi	a0,a0,32
    5924:	fc1ff06f          	j	58e4 <__divdf3+0x1ac>
    5928:	fd850993          	addi	s3,a0,-40
    592c:	013b19b3          	sll	s3,s6,s3
    5930:	00000813          	li	a6,0
    5934:	fd9ff06f          	j	590c <__divdf3+0x1d4>
    5938:	0169e833          	or	a6,s3,s6
    593c:	02080263          	beqz	a6,5960 <__divdf3+0x228>
    5940:	000b0813          	mv	a6,s6
    5944:	7ff00793          	li	a5,2047
    5948:	00300713          	li	a4,3
    594c:	eb1ff06f          	j	57fc <__divdf3+0xc4>
    5950:	00000993          	li	s3,0
    5954:	00000793          	li	a5,0
    5958:	00100713          	li	a4,1
    595c:	ea1ff06f          	j	57fc <__divdf3+0xc4>
    5960:	00000993          	li	s3,0
    5964:	7ff00793          	li	a5,2047
    5968:	00200713          	li	a4,2
    596c:	e91ff06f          	j	57fc <__divdf3+0xc4>
    5970:	0199e663          	bltu	s3,s9,597c <__divdf3+0x244>
    5974:	453c9a63          	bne	s9,s3,5dc8 <__divdf3+0x690>
    5978:	45046863          	bltu	s0,a6,5dc8 <__divdf3+0x690>
    597c:	01fc9713          	slli	a4,s9,0x1f
    5980:	00145793          	srli	a5,s0,0x1
    5984:	01f41d93          	slli	s11,s0,0x1f
    5988:	001cdc93          	srli	s9,s9,0x1
    598c:	00f76433          	or	s0,a4,a5
    5990:	01885a93          	srli	s5,a6,0x18
    5994:	00899b93          	slli	s7,s3,0x8
    5998:	017aeab3          	or	s5,s5,s7
    599c:	010bdb93          	srli	s7,s7,0x10
    59a0:	000b8593          	mv	a1,s7
    59a4:	010a9c13          	slli	s8,s5,0x10
    59a8:	000c8513          	mv	a0,s9
    59ac:	00881b13          	slli	s6,a6,0x8
    59b0:	010c5c13          	srli	s8,s8,0x10
    59b4:	321060ef          	jal	ra,c4d4 <__udivsi3>
    59b8:	00050593          	mv	a1,a0
    59bc:	00050d13          	mv	s10,a0
    59c0:	000c0513          	mv	a0,s8
    59c4:	2e5060ef          	jal	ra,c4a8 <__mulsi3>
    59c8:	00050993          	mv	s3,a0
    59cc:	000b8593          	mv	a1,s7
    59d0:	000c8513          	mv	a0,s9
    59d4:	349060ef          	jal	ra,c51c <__umodsi3>
    59d8:	01051513          	slli	a0,a0,0x10
    59dc:	01045713          	srli	a4,s0,0x10
    59e0:	00a76733          	or	a4,a4,a0
    59e4:	000d0a13          	mv	s4,s10
    59e8:	01377e63          	bgeu	a4,s3,5a04 <__divdf3+0x2cc>
    59ec:	01570733          	add	a4,a4,s5
    59f0:	fffd0a13          	addi	s4,s10,-1
    59f4:	01576863          	bltu	a4,s5,5a04 <__divdf3+0x2cc>
    59f8:	01377663          	bgeu	a4,s3,5a04 <__divdf3+0x2cc>
    59fc:	ffed0a13          	addi	s4,s10,-2
    5a00:	01570733          	add	a4,a4,s5
    5a04:	413709b3          	sub	s3,a4,s3
    5a08:	000b8593          	mv	a1,s7
    5a0c:	00098513          	mv	a0,s3
    5a10:	2c5060ef          	jal	ra,c4d4 <__udivsi3>
    5a14:	00050593          	mv	a1,a0
    5a18:	00050d13          	mv	s10,a0
    5a1c:	000c0513          	mv	a0,s8
    5a20:	289060ef          	jal	ra,c4a8 <__mulsi3>
    5a24:	00050c93          	mv	s9,a0
    5a28:	000b8593          	mv	a1,s7
    5a2c:	00098513          	mv	a0,s3
    5a30:	2ed060ef          	jal	ra,c51c <__umodsi3>
    5a34:	01041413          	slli	s0,s0,0x10
    5a38:	01051513          	slli	a0,a0,0x10
    5a3c:	01045413          	srli	s0,s0,0x10
    5a40:	00a46433          	or	s0,s0,a0
    5a44:	000d0793          	mv	a5,s10
    5a48:	01947e63          	bgeu	s0,s9,5a64 <__divdf3+0x32c>
    5a4c:	01540433          	add	s0,s0,s5
    5a50:	fffd0793          	addi	a5,s10,-1
    5a54:	01546863          	bltu	s0,s5,5a64 <__divdf3+0x32c>
    5a58:	01947663          	bgeu	s0,s9,5a64 <__divdf3+0x32c>
    5a5c:	ffed0793          	addi	a5,s10,-2
    5a60:	01540433          	add	s0,s0,s5
    5a64:	010a1713          	slli	a4,s4,0x10
    5a68:	00010337          	lui	t1,0x10
    5a6c:	00f76733          	or	a4,a4,a5
    5a70:	41940433          	sub	s0,s0,s9
    5a74:	fff30c93          	addi	s9,t1,-1 # ffff <main+0x394b>
    5a78:	019777b3          	and	a5,a4,s9
    5a7c:	019b7cb3          	and	s9,s6,s9
    5a80:	01075e13          	srli	t3,a4,0x10
    5a84:	010b5d13          	srli	s10,s6,0x10
    5a88:	00078513          	mv	a0,a5
    5a8c:	000c8593          	mv	a1,s9
    5a90:	219060ef          	jal	ra,c4a8 <__mulsi3>
    5a94:	00050813          	mv	a6,a0
    5a98:	000d0593          	mv	a1,s10
    5a9c:	00078513          	mv	a0,a5
    5aa0:	209060ef          	jal	ra,c4a8 <__mulsi3>
    5aa4:	00050793          	mv	a5,a0
    5aa8:	000c8593          	mv	a1,s9
    5aac:	000e0513          	mv	a0,t3
    5ab0:	1f9060ef          	jal	ra,c4a8 <__mulsi3>
    5ab4:	00050893          	mv	a7,a0
    5ab8:	000d0593          	mv	a1,s10
    5abc:	000e0513          	mv	a0,t3
    5ac0:	1e9060ef          	jal	ra,c4a8 <__mulsi3>
    5ac4:	01085a13          	srli	s4,a6,0x10
    5ac8:	011787b3          	add	a5,a5,a7
    5acc:	00fa0a33          	add	s4,s4,a5
    5ad0:	00050693          	mv	a3,a0
    5ad4:	011a7463          	bgeu	s4,a7,5adc <__divdf3+0x3a4>
    5ad8:	006506b3          	add	a3,a0,t1
    5adc:	010a5793          	srli	a5,s4,0x10
    5ae0:	00d787b3          	add	a5,a5,a3
    5ae4:	000106b7          	lui	a3,0x10
    5ae8:	fff68693          	addi	a3,a3,-1 # ffff <main+0x394b>
    5aec:	00da7a33          	and	s4,s4,a3
    5af0:	010a1a13          	slli	s4,s4,0x10
    5af4:	00d87833          	and	a6,a6,a3
    5af8:	010a0a33          	add	s4,s4,a6
    5afc:	00f46863          	bltu	s0,a5,5b0c <__divdf3+0x3d4>
    5b00:	00070993          	mv	s3,a4
    5b04:	04f41463          	bne	s0,a5,5b4c <__divdf3+0x414>
    5b08:	054df263          	bgeu	s11,s4,5b4c <__divdf3+0x414>
    5b0c:	016d8db3          	add	s11,s11,s6
    5b10:	016db6b3          	sltu	a3,s11,s6
    5b14:	015686b3          	add	a3,a3,s5
    5b18:	00d40433          	add	s0,s0,a3
    5b1c:	fff70993          	addi	s3,a4,-1
    5b20:	008ae663          	bltu	s5,s0,5b2c <__divdf3+0x3f4>
    5b24:	028a9463          	bne	s5,s0,5b4c <__divdf3+0x414>
    5b28:	036de263          	bltu	s11,s6,5b4c <__divdf3+0x414>
    5b2c:	00f46663          	bltu	s0,a5,5b38 <__divdf3+0x400>
    5b30:	00879e63          	bne	a5,s0,5b4c <__divdf3+0x414>
    5b34:	014dfc63          	bgeu	s11,s4,5b4c <__divdf3+0x414>
    5b38:	016d8db3          	add	s11,s11,s6
    5b3c:	ffe70993          	addi	s3,a4,-2
    5b40:	016db733          	sltu	a4,s11,s6
    5b44:	01570733          	add	a4,a4,s5
    5b48:	00e40433          	add	s0,s0,a4
    5b4c:	414d8a33          	sub	s4,s11,s4
    5b50:	40f40433          	sub	s0,s0,a5
    5b54:	014db7b3          	sltu	a5,s11,s4
    5b58:	40f40433          	sub	s0,s0,a5
    5b5c:	fff00813          	li	a6,-1
    5b60:	1a8a8263          	beq	s5,s0,5d04 <__divdf3+0x5cc>
    5b64:	000b8593          	mv	a1,s7
    5b68:	00040513          	mv	a0,s0
    5b6c:	169060ef          	jal	ra,c4d4 <__udivsi3>
    5b70:	00050593          	mv	a1,a0
    5b74:	00a12623          	sw	a0,12(sp)
    5b78:	000c0513          	mv	a0,s8
    5b7c:	12d060ef          	jal	ra,c4a8 <__mulsi3>
    5b80:	00a12423          	sw	a0,8(sp)
    5b84:	000b8593          	mv	a1,s7
    5b88:	00040513          	mv	a0,s0
    5b8c:	191060ef          	jal	ra,c51c <__umodsi3>
    5b90:	00c12683          	lw	a3,12(sp)
    5b94:	00812783          	lw	a5,8(sp)
    5b98:	01051513          	slli	a0,a0,0x10
    5b9c:	010a5713          	srli	a4,s4,0x10
    5ba0:	00a76733          	or	a4,a4,a0
    5ba4:	00068d93          	mv	s11,a3
    5ba8:	00f77e63          	bgeu	a4,a5,5bc4 <__divdf3+0x48c>
    5bac:	01570733          	add	a4,a4,s5
    5bb0:	fff68d93          	addi	s11,a3,-1
    5bb4:	01576863          	bltu	a4,s5,5bc4 <__divdf3+0x48c>
    5bb8:	00f77663          	bgeu	a4,a5,5bc4 <__divdf3+0x48c>
    5bbc:	ffe68d93          	addi	s11,a3,-2
    5bc0:	01570733          	add	a4,a4,s5
    5bc4:	40f70433          	sub	s0,a4,a5
    5bc8:	000b8593          	mv	a1,s7
    5bcc:	00040513          	mv	a0,s0
    5bd0:	105060ef          	jal	ra,c4d4 <__udivsi3>
    5bd4:	00050593          	mv	a1,a0
    5bd8:	00a12423          	sw	a0,8(sp)
    5bdc:	000c0513          	mv	a0,s8
    5be0:	0c9060ef          	jal	ra,c4a8 <__mulsi3>
    5be4:	00050c13          	mv	s8,a0
    5be8:	000b8593          	mv	a1,s7
    5bec:	00040513          	mv	a0,s0
    5bf0:	12d060ef          	jal	ra,c51c <__umodsi3>
    5bf4:	00812783          	lw	a5,8(sp)
    5bf8:	010a1713          	slli	a4,s4,0x10
    5bfc:	01051513          	slli	a0,a0,0x10
    5c00:	01075713          	srli	a4,a4,0x10
    5c04:	00a76733          	or	a4,a4,a0
    5c08:	00078693          	mv	a3,a5
    5c0c:	01877e63          	bgeu	a4,s8,5c28 <__divdf3+0x4f0>
    5c10:	01570733          	add	a4,a4,s5
    5c14:	fff78693          	addi	a3,a5,-1
    5c18:	01576863          	bltu	a4,s5,5c28 <__divdf3+0x4f0>
    5c1c:	01877663          	bgeu	a4,s8,5c28 <__divdf3+0x4f0>
    5c20:	ffe78693          	addi	a3,a5,-2
    5c24:	01570733          	add	a4,a4,s5
    5c28:	010d9793          	slli	a5,s11,0x10
    5c2c:	00d7e7b3          	or	a5,a5,a3
    5c30:	01079813          	slli	a6,a5,0x10
    5c34:	01085813          	srli	a6,a6,0x10
    5c38:	41870733          	sub	a4,a4,s8
    5c3c:	0107de13          	srli	t3,a5,0x10
    5c40:	00080513          	mv	a0,a6
    5c44:	000c8593          	mv	a1,s9
    5c48:	061060ef          	jal	ra,c4a8 <__mulsi3>
    5c4c:	00050893          	mv	a7,a0
    5c50:	000d0593          	mv	a1,s10
    5c54:	00080513          	mv	a0,a6
    5c58:	051060ef          	jal	ra,c4a8 <__mulsi3>
    5c5c:	00050813          	mv	a6,a0
    5c60:	000c8593          	mv	a1,s9
    5c64:	000e0513          	mv	a0,t3
    5c68:	041060ef          	jal	ra,c4a8 <__mulsi3>
    5c6c:	00050313          	mv	t1,a0
    5c70:	000d0593          	mv	a1,s10
    5c74:	000e0513          	mv	a0,t3
    5c78:	031060ef          	jal	ra,c4a8 <__mulsi3>
    5c7c:	0108d693          	srli	a3,a7,0x10
    5c80:	00680833          	add	a6,a6,t1
    5c84:	010686b3          	add	a3,a3,a6
    5c88:	00050593          	mv	a1,a0
    5c8c:	0066f663          	bgeu	a3,t1,5c98 <__divdf3+0x560>
    5c90:	00010637          	lui	a2,0x10
    5c94:	00c505b3          	add	a1,a0,a2
    5c98:	0106d613          	srli	a2,a3,0x10
    5c9c:	00b60633          	add	a2,a2,a1
    5ca0:	000105b7          	lui	a1,0x10
    5ca4:	fff58593          	addi	a1,a1,-1 # ffff <main+0x394b>
    5ca8:	00b6f6b3          	and	a3,a3,a1
    5cac:	01069693          	slli	a3,a3,0x10
    5cb0:	00b8f8b3          	and	a7,a7,a1
    5cb4:	011686b3          	add	a3,a3,a7
    5cb8:	00c76863          	bltu	a4,a2,5cc8 <__divdf3+0x590>
    5cbc:	24c71a63          	bne	a4,a2,5f10 <__divdf3+0x7d8>
    5cc0:	00078813          	mv	a6,a5
    5cc4:	04068063          	beqz	a3,5d04 <__divdf3+0x5cc>
    5cc8:	00ea8733          	add	a4,s5,a4
    5ccc:	fff78813          	addi	a6,a5,-1
    5cd0:	03576463          	bltu	a4,s5,5cf8 <__divdf3+0x5c0>
    5cd4:	00c76663          	bltu	a4,a2,5ce0 <__divdf3+0x5a8>
    5cd8:	22c71a63          	bne	a4,a2,5f0c <__divdf3+0x7d4>
    5cdc:	02db7063          	bgeu	s6,a3,5cfc <__divdf3+0x5c4>
    5ce0:	ffe78813          	addi	a6,a5,-2
    5ce4:	001b1793          	slli	a5,s6,0x1
    5ce8:	0167bb33          	sltu	s6,a5,s6
    5cec:	015b0b33          	add	s6,s6,s5
    5cf0:	01670733          	add	a4,a4,s6
    5cf4:	00078b13          	mv	s6,a5
    5cf8:	00c71463          	bne	a4,a2,5d00 <__divdf3+0x5c8>
    5cfc:	00db0463          	beq	s6,a3,5d04 <__divdf3+0x5cc>
    5d00:	00186813          	ori	a6,a6,1
    5d04:	3ff90793          	addi	a5,s2,1023
    5d08:	12f05063          	blez	a5,5e28 <__divdf3+0x6f0>
    5d0c:	00787713          	andi	a4,a6,7
    5d10:	02070063          	beqz	a4,5d30 <__divdf3+0x5f8>
    5d14:	00f87713          	andi	a4,a6,15
    5d18:	00400693          	li	a3,4
    5d1c:	00d70a63          	beq	a4,a3,5d30 <__divdf3+0x5f8>
    5d20:	00480713          	addi	a4,a6,4
    5d24:	01073833          	sltu	a6,a4,a6
    5d28:	010989b3          	add	s3,s3,a6
    5d2c:	00070813          	mv	a6,a4
    5d30:	01000737          	lui	a4,0x1000
    5d34:	00e9f733          	and	a4,s3,a4
    5d38:	00070a63          	beqz	a4,5d4c <__divdf3+0x614>
    5d3c:	ff0007b7          	lui	a5,0xff000
    5d40:	fff78793          	addi	a5,a5,-1 # feffffff <soln_cnt0+0xfefef523>
    5d44:	00f9f9b3          	and	s3,s3,a5
    5d48:	40090793          	addi	a5,s2,1024
    5d4c:	7fe00713          	li	a4,2046
    5d50:	0af74663          	blt	a4,a5,5dfc <__divdf3+0x6c4>
    5d54:	00385813          	srli	a6,a6,0x3
    5d58:	01d99713          	slli	a4,s3,0x1d
    5d5c:	01076733          	or	a4,a4,a6
    5d60:	0039d593          	srli	a1,s3,0x3
    5d64:	7ff006b7          	lui	a3,0x7ff00
    5d68:	01479793          	slli	a5,a5,0x14
    5d6c:	00c59593          	slli	a1,a1,0xc
    5d70:	04c12083          	lw	ra,76(sp)
    5d74:	04812403          	lw	s0,72(sp)
    5d78:	00d7f7b3          	and	a5,a5,a3
    5d7c:	00c5d593          	srli	a1,a1,0xc
    5d80:	00b7e7b3          	or	a5,a5,a1
    5d84:	01f49493          	slli	s1,s1,0x1f
    5d88:	0097e6b3          	or	a3,a5,s1
    5d8c:	04012903          	lw	s2,64(sp)
    5d90:	04412483          	lw	s1,68(sp)
    5d94:	03c12983          	lw	s3,60(sp)
    5d98:	03812a03          	lw	s4,56(sp)
    5d9c:	03412a83          	lw	s5,52(sp)
    5da0:	03012b03          	lw	s6,48(sp)
    5da4:	02c12b83          	lw	s7,44(sp)
    5da8:	02812c03          	lw	s8,40(sp)
    5dac:	02412c83          	lw	s9,36(sp)
    5db0:	02012d03          	lw	s10,32(sp)
    5db4:	01c12d83          	lw	s11,28(sp)
    5db8:	00070513          	mv	a0,a4
    5dbc:	00068593          	mv	a1,a3
    5dc0:	05010113          	addi	sp,sp,80
    5dc4:	00008067          	ret
    5dc8:	fff90913          	addi	s2,s2,-1
    5dcc:	00000d93          	li	s11,0
    5dd0:	bc1ff06f          	j	5990 <__divdf3+0x258>
    5dd4:	000a0493          	mv	s1,s4
    5dd8:	000c8993          	mv	s3,s9
    5ddc:	00040813          	mv	a6,s0
    5de0:	000b8713          	mv	a4,s7
    5de4:	00300793          	li	a5,3
    5de8:	10f70063          	beq	a4,a5,5ee8 <__divdf3+0x7b0>
    5dec:	00100793          	li	a5,1
    5df0:	0ef70663          	beq	a4,a5,5edc <__divdf3+0x7a4>
    5df4:	00200793          	li	a5,2
    5df8:	f0f716e3          	bne	a4,a5,5d04 <__divdf3+0x5cc>
    5dfc:	00000593          	li	a1,0
    5e00:	00000713          	li	a4,0
    5e04:	7ff00793          	li	a5,2047
    5e08:	f5dff06f          	j	5d64 <__divdf3+0x62c>
    5e0c:	000a8493          	mv	s1,s5
    5e10:	fd5ff06f          	j	5de4 <__divdf3+0x6ac>
    5e14:	000809b7          	lui	s3,0x80
    5e18:	00000813          	li	a6,0
    5e1c:	00000493          	li	s1,0
    5e20:	00300713          	li	a4,3
    5e24:	fc1ff06f          	j	5de4 <__divdf3+0x6ac>
    5e28:	00100593          	li	a1,1
    5e2c:	40f585b3          	sub	a1,a1,a5
    5e30:	03800713          	li	a4,56
    5e34:	0ab74463          	blt	a4,a1,5edc <__divdf3+0x7a4>
    5e38:	01f00713          	li	a4,31
    5e3c:	06b74663          	blt	a4,a1,5ea8 <__divdf3+0x770>
    5e40:	41e90913          	addi	s2,s2,1054
    5e44:	012997b3          	sll	a5,s3,s2
    5e48:	00b85733          	srl	a4,a6,a1
    5e4c:	01281933          	sll	s2,a6,s2
    5e50:	00e7e7b3          	or	a5,a5,a4
    5e54:	01203933          	snez	s2,s2
    5e58:	0127e7b3          	or	a5,a5,s2
    5e5c:	00b9d5b3          	srl	a1,s3,a1
    5e60:	0077f713          	andi	a4,a5,7
    5e64:	02070063          	beqz	a4,5e84 <__divdf3+0x74c>
    5e68:	00f7f713          	andi	a4,a5,15
    5e6c:	00400693          	li	a3,4
    5e70:	00d70a63          	beq	a4,a3,5e84 <__divdf3+0x74c>
    5e74:	00478713          	addi	a4,a5,4
    5e78:	00f737b3          	sltu	a5,a4,a5
    5e7c:	00f585b3          	add	a1,a1,a5
    5e80:	00070793          	mv	a5,a4
    5e84:	00800737          	lui	a4,0x800
    5e88:	00e5f733          	and	a4,a1,a4
    5e8c:	06071863          	bnez	a4,5efc <__divdf3+0x7c4>
    5e90:	01d59713          	slli	a4,a1,0x1d
    5e94:	0037d793          	srli	a5,a5,0x3
    5e98:	00f76733          	or	a4,a4,a5
    5e9c:	0035d593          	srli	a1,a1,0x3
    5ea0:	00000793          	li	a5,0
    5ea4:	ec1ff06f          	j	5d64 <__divdf3+0x62c>
    5ea8:	fe100713          	li	a4,-31
    5eac:	40f707b3          	sub	a5,a4,a5
    5eb0:	02000693          	li	a3,32
    5eb4:	00f9d7b3          	srl	a5,s3,a5
    5eb8:	00000713          	li	a4,0
    5ebc:	00d58663          	beq	a1,a3,5ec8 <__divdf3+0x790>
    5ec0:	43e90713          	addi	a4,s2,1086
    5ec4:	00e99733          	sll	a4,s3,a4
    5ec8:	01076733          	or	a4,a4,a6
    5ecc:	00e03733          	snez	a4,a4
    5ed0:	00e7e7b3          	or	a5,a5,a4
    5ed4:	00000593          	li	a1,0
    5ed8:	f89ff06f          	j	5e60 <__divdf3+0x728>
    5edc:	00000593          	li	a1,0
    5ee0:	00000713          	li	a4,0
    5ee4:	fbdff06f          	j	5ea0 <__divdf3+0x768>
    5ee8:	000805b7          	lui	a1,0x80
    5eec:	00000713          	li	a4,0
    5ef0:	7ff00793          	li	a5,2047
    5ef4:	00000493          	li	s1,0
    5ef8:	e6dff06f          	j	5d64 <__divdf3+0x62c>
    5efc:	00000593          	li	a1,0
    5f00:	00000713          	li	a4,0
    5f04:	00100793          	li	a5,1
    5f08:	e5dff06f          	j	5d64 <__divdf3+0x62c>
    5f0c:	00080793          	mv	a5,a6
    5f10:	00078813          	mv	a6,a5
    5f14:	dedff06f          	j	5d00 <__divdf3+0x5c8>

00005f18 <__eqdf2>:
    5f18:	0145d713          	srli	a4,a1,0x14
    5f1c:	001007b7          	lui	a5,0x100
    5f20:	fff78793          	addi	a5,a5,-1 # fffff <soln_cnt0+0xef523>
    5f24:	0146d813          	srli	a6,a3,0x14
    5f28:	00050313          	mv	t1,a0
    5f2c:	00050e93          	mv	t4,a0
    5f30:	7ff77713          	andi	a4,a4,2047
    5f34:	7ff00513          	li	a0,2047
    5f38:	00b7f8b3          	and	a7,a5,a1
    5f3c:	00060f13          	mv	t5,a2
    5f40:	00d7f7b3          	and	a5,a5,a3
    5f44:	01f5d593          	srli	a1,a1,0x1f
    5f48:	7ff87813          	andi	a6,a6,2047
    5f4c:	01f6d693          	srli	a3,a3,0x1f
    5f50:	00a71c63          	bne	a4,a0,5f68 <__eqdf2+0x50>
    5f54:	0068ee33          	or	t3,a7,t1
    5f58:	00100513          	li	a0,1
    5f5c:	000e1463          	bnez	t3,5f64 <__eqdf2+0x4c>
    5f60:	00e80663          	beq	a6,a4,5f6c <__eqdf2+0x54>
    5f64:	00008067          	ret
    5f68:	00a81863          	bne	a6,a0,5f78 <__eqdf2+0x60>
    5f6c:	00c7e633          	or	a2,a5,a2
    5f70:	00100513          	li	a0,1
    5f74:	fe0618e3          	bnez	a2,5f64 <__eqdf2+0x4c>
    5f78:	00100513          	li	a0,1
    5f7c:	ff0714e3          	bne	a4,a6,5f64 <__eqdf2+0x4c>
    5f80:	fef892e3          	bne	a7,a5,5f64 <__eqdf2+0x4c>
    5f84:	ffee90e3          	bne	t4,t5,5f64 <__eqdf2+0x4c>
    5f88:	00d58a63          	beq	a1,a3,5f9c <__eqdf2+0x84>
    5f8c:	fc071ce3          	bnez	a4,5f64 <__eqdf2+0x4c>
    5f90:	0068e8b3          	or	a7,a7,t1
    5f94:	01103533          	snez	a0,a7
    5f98:	00008067          	ret
    5f9c:	00000513          	li	a0,0
    5fa0:	00008067          	ret

00005fa4 <__gedf2>:
    5fa4:	00100737          	lui	a4,0x100
    5fa8:	fff70713          	addi	a4,a4,-1 # fffff <soln_cnt0+0xef523>
    5fac:	0145d813          	srli	a6,a1,0x14
    5fb0:	00b778b3          	and	a7,a4,a1
    5fb4:	00050793          	mv	a5,a0
    5fb8:	00050313          	mv	t1,a0
    5fbc:	7ff87813          	andi	a6,a6,2047
    5fc0:	01f5d513          	srli	a0,a1,0x1f
    5fc4:	7ff00e93          	li	t4,2047
    5fc8:	0146d593          	srli	a1,a3,0x14
    5fcc:	00d77733          	and	a4,a4,a3
    5fd0:	00060e13          	mv	t3,a2
    5fd4:	7ff5f593          	andi	a1,a1,2047
    5fd8:	01f6d693          	srli	a3,a3,0x1f
    5fdc:	01d81a63          	bne	a6,t4,5ff0 <__gedf2+0x4c>
    5fe0:	00f8eeb3          	or	t4,a7,a5
    5fe4:	080e8a63          	beqz	t4,6078 <__gedf2+0xd4>
    5fe8:	ffe00513          	li	a0,-2
    5fec:	00008067          	ret
    5ff0:	01d59663          	bne	a1,t4,5ffc <__gedf2+0x58>
    5ff4:	00c76eb3          	or	t4,a4,a2
    5ff8:	fe0e98e3          	bnez	t4,5fe8 <__gedf2+0x44>
    5ffc:	08081063          	bnez	a6,607c <__gedf2+0xd8>
    6000:	00f8e7b3          	or	a5,a7,a5
    6004:	0017b793          	seqz	a5,a5
    6008:	00059663          	bnez	a1,6014 <__gedf2+0x70>
    600c:	00c76633          	or	a2,a4,a2
    6010:	04060c63          	beqz	a2,6068 <__gedf2+0xc4>
    6014:	00079c63          	bnez	a5,602c <__gedf2+0x88>
    6018:	00d51463          	bne	a0,a3,6020 <__gedf2+0x7c>
    601c:	0305d063          	bge	a1,a6,603c <__gedf2+0x98>
    6020:	04050063          	beqz	a0,6060 <__gedf2+0xbc>
    6024:	fff00513          	li	a0,-1
    6028:	00008067          	ret
    602c:	fff00513          	li	a0,-1
    6030:	00068a63          	beqz	a3,6044 <__gedf2+0xa0>
    6034:	00068513          	mv	a0,a3
    6038:	00008067          	ret
    603c:	00b85663          	bge	a6,a1,6048 <__gedf2+0xa4>
    6040:	fe0502e3          	beqz	a0,6024 <__gedf2+0x80>
    6044:	00008067          	ret
    6048:	fd176ce3          	bltu	a4,a7,6020 <__gedf2+0x7c>
    604c:	02e89263          	bne	a7,a4,6070 <__gedf2+0xcc>
    6050:	fc6e68e3          	bltu	t3,t1,6020 <__gedf2+0x7c>
    6054:	ffc366e3          	bltu	t1,t3,6040 <__gedf2+0x9c>
    6058:	00000513          	li	a0,0
    605c:	00008067          	ret
    6060:	00100513          	li	a0,1
    6064:	00008067          	ret
    6068:	fe0798e3          	bnez	a5,6058 <__gedf2+0xb4>
    606c:	fb5ff06f          	j	6020 <__gedf2+0x7c>
    6070:	fce8e8e3          	bltu	a7,a4,6040 <__gedf2+0x9c>
    6074:	fe5ff06f          	j	6058 <__gedf2+0xb4>
    6078:	f7058ee3          	beq	a1,a6,5ff4 <__gedf2+0x50>
    607c:	f8059ee3          	bnez	a1,6018 <__gedf2+0x74>
    6080:	00000793          	li	a5,0
    6084:	f89ff06f          	j	600c <__gedf2+0x68>

00006088 <__ledf2>:
    6088:	00100737          	lui	a4,0x100
    608c:	fff70713          	addi	a4,a4,-1 # fffff <soln_cnt0+0xef523>
    6090:	0145d813          	srli	a6,a1,0x14
    6094:	00b778b3          	and	a7,a4,a1
    6098:	00050793          	mv	a5,a0
    609c:	00050313          	mv	t1,a0
    60a0:	7ff87813          	andi	a6,a6,2047
    60a4:	01f5d513          	srli	a0,a1,0x1f
    60a8:	7ff00e93          	li	t4,2047
    60ac:	0146d593          	srli	a1,a3,0x14
    60b0:	00d77733          	and	a4,a4,a3
    60b4:	00060e13          	mv	t3,a2
    60b8:	7ff5f593          	andi	a1,a1,2047
    60bc:	01f6d693          	srli	a3,a3,0x1f
    60c0:	01d81a63          	bne	a6,t4,60d4 <__ledf2+0x4c>
    60c4:	00f8eeb3          	or	t4,a7,a5
    60c8:	080e8a63          	beqz	t4,615c <__ledf2+0xd4>
    60cc:	00200513          	li	a0,2
    60d0:	00008067          	ret
    60d4:	01d59663          	bne	a1,t4,60e0 <__ledf2+0x58>
    60d8:	00c76eb3          	or	t4,a4,a2
    60dc:	fe0e98e3          	bnez	t4,60cc <__ledf2+0x44>
    60e0:	08081063          	bnez	a6,6160 <__ledf2+0xd8>
    60e4:	00f8e7b3          	or	a5,a7,a5
    60e8:	0017b793          	seqz	a5,a5
    60ec:	00059663          	bnez	a1,60f8 <__ledf2+0x70>
    60f0:	00c76633          	or	a2,a4,a2
    60f4:	04060c63          	beqz	a2,614c <__ledf2+0xc4>
    60f8:	00079c63          	bnez	a5,6110 <__ledf2+0x88>
    60fc:	00d51463          	bne	a0,a3,6104 <__ledf2+0x7c>
    6100:	0305d063          	bge	a1,a6,6120 <__ledf2+0x98>
    6104:	04050063          	beqz	a0,6144 <__ledf2+0xbc>
    6108:	fff00513          	li	a0,-1
    610c:	00008067          	ret
    6110:	fff00513          	li	a0,-1
    6114:	00068a63          	beqz	a3,6128 <__ledf2+0xa0>
    6118:	00068513          	mv	a0,a3
    611c:	00008067          	ret
    6120:	00b85663          	bge	a6,a1,612c <__ledf2+0xa4>
    6124:	fe0502e3          	beqz	a0,6108 <__ledf2+0x80>
    6128:	00008067          	ret
    612c:	fd176ce3          	bltu	a4,a7,6104 <__ledf2+0x7c>
    6130:	02e89263          	bne	a7,a4,6154 <__ledf2+0xcc>
    6134:	fc6e68e3          	bltu	t3,t1,6104 <__ledf2+0x7c>
    6138:	ffc366e3          	bltu	t1,t3,6124 <__ledf2+0x9c>
    613c:	00000513          	li	a0,0
    6140:	00008067          	ret
    6144:	00100513          	li	a0,1
    6148:	00008067          	ret
    614c:	fe0798e3          	bnez	a5,613c <__ledf2+0xb4>
    6150:	fb5ff06f          	j	6104 <__ledf2+0x7c>
    6154:	fce8e8e3          	bltu	a7,a4,6124 <__ledf2+0x9c>
    6158:	fe5ff06f          	j	613c <__ledf2+0xb4>
    615c:	f7058ee3          	beq	a1,a6,60d8 <__ledf2+0x50>
    6160:	f8059ee3          	bnez	a1,60fc <__ledf2+0x74>
    6164:	00000793          	li	a5,0
    6168:	f89ff06f          	j	60f0 <__ledf2+0x68>

0000616c <__muldf3>:
    616c:	fd010113          	addi	sp,sp,-48
    6170:	01312e23          	sw	s3,28(sp)
    6174:	0145d993          	srli	s3,a1,0x14
    6178:	02812423          	sw	s0,40(sp)
    617c:	02912223          	sw	s1,36(sp)
    6180:	01412c23          	sw	s4,24(sp)
    6184:	01512a23          	sw	s5,20(sp)
    6188:	01712623          	sw	s7,12(sp)
    618c:	00c59493          	slli	s1,a1,0xc
    6190:	02112623          	sw	ra,44(sp)
    6194:	03212023          	sw	s2,32(sp)
    6198:	01612823          	sw	s6,16(sp)
    619c:	7ff9f993          	andi	s3,s3,2047
    61a0:	00050413          	mv	s0,a0
    61a4:	00060b93          	mv	s7,a2
    61a8:	00068a13          	mv	s4,a3
    61ac:	00c4d493          	srli	s1,s1,0xc
    61b0:	01f5da93          	srli	s5,a1,0x1f
    61b4:	3c098863          	beqz	s3,6584 <__muldf3+0x418>
    61b8:	7ff00793          	li	a5,2047
    61bc:	42f98663          	beq	s3,a5,65e8 <__muldf3+0x47c>
    61c0:	00349493          	slli	s1,s1,0x3
    61c4:	01d55793          	srli	a5,a0,0x1d
    61c8:	0097e7b3          	or	a5,a5,s1
    61cc:	008004b7          	lui	s1,0x800
    61d0:	0097e4b3          	or	s1,a5,s1
    61d4:	00351913          	slli	s2,a0,0x3
    61d8:	c0198993          	addi	s3,s3,-1023 # 7fc01 <soln_cnt0+0x6f125>
    61dc:	00000b13          	li	s6,0
    61e0:	014a5713          	srli	a4,s4,0x14
    61e4:	00ca1413          	slli	s0,s4,0xc
    61e8:	7ff77713          	andi	a4,a4,2047
    61ec:	00c45413          	srli	s0,s0,0xc
    61f0:	01fa5a13          	srli	s4,s4,0x1f
    61f4:	42070663          	beqz	a4,6620 <__muldf3+0x4b4>
    61f8:	7ff00793          	li	a5,2047
    61fc:	48f70663          	beq	a4,a5,6688 <__muldf3+0x51c>
    6200:	00341413          	slli	s0,s0,0x3
    6204:	01dbd793          	srli	a5,s7,0x1d
    6208:	0087e7b3          	or	a5,a5,s0
    620c:	00800437          	lui	s0,0x800
    6210:	0087e433          	or	s0,a5,s0
    6214:	c0170713          	addi	a4,a4,-1023
    6218:	003b9793          	slli	a5,s7,0x3
    621c:	00000613          	li	a2,0
    6220:	00e989b3          	add	s3,s3,a4
    6224:	002b1713          	slli	a4,s6,0x2
    6228:	00c76733          	or	a4,a4,a2
    622c:	00a00693          	li	a3,10
    6230:	014ac833          	xor	a6,s5,s4
    6234:	00198893          	addi	a7,s3,1
    6238:	4ce6c863          	blt	a3,a4,6708 <__muldf3+0x59c>
    623c:	00200693          	li	a3,2
    6240:	48e6c063          	blt	a3,a4,66c0 <__muldf3+0x554>
    6244:	fff70713          	addi	a4,a4,-1
    6248:	00100693          	li	a3,1
    624c:	48e6fc63          	bgeu	a3,a4,66e4 <__muldf3+0x578>
    6250:	00010a37          	lui	s4,0x10
    6254:	fffa0393          	addi	t2,s4,-1 # ffff <main+0x394b>
    6258:	0107d293          	srli	t0,a5,0x10
    625c:	00797e33          	and	t3,s2,t2
    6260:	0077f7b3          	and	a5,a5,t2
    6264:	01095f93          	srli	t6,s2,0x10
    6268:	000e0513          	mv	a0,t3
    626c:	00078593          	mv	a1,a5
    6270:	238060ef          	jal	ra,c4a8 <__mulsi3>
    6274:	00050e93          	mv	t4,a0
    6278:	00028593          	mv	a1,t0
    627c:	000e0513          	mv	a0,t3
    6280:	228060ef          	jal	ra,c4a8 <__mulsi3>
    6284:	00050713          	mv	a4,a0
    6288:	00078593          	mv	a1,a5
    628c:	000f8513          	mv	a0,t6
    6290:	218060ef          	jal	ra,c4a8 <__mulsi3>
    6294:	00050913          	mv	s2,a0
    6298:	00028593          	mv	a1,t0
    629c:	000f8513          	mv	a0,t6
    62a0:	208060ef          	jal	ra,c4a8 <__mulsi3>
    62a4:	010ed313          	srli	t1,t4,0x10
    62a8:	01270733          	add	a4,a4,s2
    62ac:	00e30333          	add	t1,t1,a4
    62b0:	00050f13          	mv	t5,a0
    62b4:	01237463          	bgeu	t1,s2,62bc <__muldf3+0x150>
    62b8:	01450f33          	add	t5,a0,s4
    62bc:	01035913          	srli	s2,t1,0x10
    62c0:	00737333          	and	t1,t1,t2
    62c4:	007efeb3          	and	t4,t4,t2
    62c8:	01031313          	slli	t1,t1,0x10
    62cc:	007473b3          	and	t2,s0,t2
    62d0:	01d30333          	add	t1,t1,t4
    62d4:	01045a13          	srli	s4,s0,0x10
    62d8:	000e0513          	mv	a0,t3
    62dc:	00038593          	mv	a1,t2
    62e0:	1c8060ef          	jal	ra,c4a8 <__mulsi3>
    62e4:	00050e93          	mv	t4,a0
    62e8:	000a0593          	mv	a1,s4
    62ec:	000e0513          	mv	a0,t3
    62f0:	1b8060ef          	jal	ra,c4a8 <__mulsi3>
    62f4:	00050e13          	mv	t3,a0
    62f8:	00038593          	mv	a1,t2
    62fc:	000f8513          	mv	a0,t6
    6300:	1a8060ef          	jal	ra,c4a8 <__mulsi3>
    6304:	00050413          	mv	s0,a0
    6308:	000a0593          	mv	a1,s4
    630c:	000f8513          	mv	a0,t6
    6310:	198060ef          	jal	ra,c4a8 <__mulsi3>
    6314:	010ed713          	srli	a4,t4,0x10
    6318:	008e0e33          	add	t3,t3,s0
    631c:	01c70733          	add	a4,a4,t3
    6320:	00050693          	mv	a3,a0
    6324:	00877663          	bgeu	a4,s0,6330 <__muldf3+0x1c4>
    6328:	00010637          	lui	a2,0x10
    632c:	00c506b3          	add	a3,a0,a2
    6330:	00010b37          	lui	s6,0x10
    6334:	fffb0e13          	addi	t3,s6,-1 # ffff <main+0x394b>
    6338:	01075f93          	srli	t6,a4,0x10
    633c:	01c77733          	and	a4,a4,t3
    6340:	01071713          	slli	a4,a4,0x10
    6344:	01cefeb3          	and	t4,t4,t3
    6348:	01d70eb3          	add	t4,a4,t4
    634c:	01c4fe33          	and	t3,s1,t3
    6350:	00df8fb3          	add	t6,t6,a3
    6354:	01d90933          	add	s2,s2,t4
    6358:	0104da93          	srli	s5,s1,0x10
    635c:	000e0513          	mv	a0,t3
    6360:	00078593          	mv	a1,a5
    6364:	144060ef          	jal	ra,c4a8 <__mulsi3>
    6368:	00050413          	mv	s0,a0
    636c:	00028593          	mv	a1,t0
    6370:	000e0513          	mv	a0,t3
    6374:	134060ef          	jal	ra,c4a8 <__mulsi3>
    6378:	00050493          	mv	s1,a0
    637c:	00078593          	mv	a1,a5
    6380:	000a8513          	mv	a0,s5
    6384:	124060ef          	jal	ra,c4a8 <__mulsi3>
    6388:	00050b93          	mv	s7,a0
    638c:	00028593          	mv	a1,t0
    6390:	000a8513          	mv	a0,s5
    6394:	114060ef          	jal	ra,c4a8 <__mulsi3>
    6398:	01045793          	srli	a5,s0,0x10
    639c:	017484b3          	add	s1,s1,s7
    63a0:	009787b3          	add	a5,a5,s1
    63a4:	00050713          	mv	a4,a0
    63a8:	0177f463          	bgeu	a5,s7,63b0 <__muldf3+0x244>
    63ac:	01650733          	add	a4,a0,s6
    63b0:	000104b7          	lui	s1,0x10
    63b4:	fff48693          	addi	a3,s1,-1 # ffff <main+0x394b>
    63b8:	0107d293          	srli	t0,a5,0x10
    63bc:	00e282b3          	add	t0,t0,a4
    63c0:	00d7f733          	and	a4,a5,a3
    63c4:	00d47433          	and	s0,s0,a3
    63c8:	01071713          	slli	a4,a4,0x10
    63cc:	00870733          	add	a4,a4,s0
    63d0:	000e0513          	mv	a0,t3
    63d4:	00038593          	mv	a1,t2
    63d8:	0d0060ef          	jal	ra,c4a8 <__mulsi3>
    63dc:	00050413          	mv	s0,a0
    63e0:	000a0593          	mv	a1,s4
    63e4:	000e0513          	mv	a0,t3
    63e8:	0c0060ef          	jal	ra,c4a8 <__mulsi3>
    63ec:	00050e13          	mv	t3,a0
    63f0:	00038593          	mv	a1,t2
    63f4:	000a8513          	mv	a0,s5
    63f8:	0b0060ef          	jal	ra,c4a8 <__mulsi3>
    63fc:	00050393          	mv	t2,a0
    6400:	000a0593          	mv	a1,s4
    6404:	000a8513          	mv	a0,s5
    6408:	0a0060ef          	jal	ra,c4a8 <__mulsi3>
    640c:	01045793          	srli	a5,s0,0x10
    6410:	007e0e33          	add	t3,t3,t2
    6414:	01c78e33          	add	t3,a5,t3
    6418:	00050593          	mv	a1,a0
    641c:	007e7463          	bgeu	t3,t2,6424 <__muldf3+0x2b8>
    6420:	009505b3          	add	a1,a0,s1
    6424:	000106b7          	lui	a3,0x10
    6428:	fff68693          	addi	a3,a3,-1 # ffff <main+0x394b>
    642c:	00de77b3          	and	a5,t3,a3
    6430:	00d47433          	and	s0,s0,a3
    6434:	01079793          	slli	a5,a5,0x10
    6438:	012f0f33          	add	t5,t5,s2
    643c:	008787b3          	add	a5,a5,s0
    6440:	01df3eb3          	sltu	t4,t5,t4
    6444:	01f787b3          	add	a5,a5,t6
    6448:	01d78533          	add	a0,a5,t4
    644c:	00ef0f33          	add	t5,t5,a4
    6450:	00ef3733          	sltu	a4,t5,a4
    6454:	005506b3          	add	a3,a0,t0
    6458:	00e68633          	add	a2,a3,a4
    645c:	01f7b433          	sltu	s0,a5,t6
    6460:	01d53533          	sltu	a0,a0,t4
    6464:	010e5793          	srli	a5,t3,0x10
    6468:	00e63733          	sltu	a4,a2,a4
    646c:	00a46433          	or	s0,s0,a0
    6470:	0056b6b3          	sltu	a3,a3,t0
    6474:	00f40433          	add	s0,s0,a5
    6478:	00e6e6b3          	or	a3,a3,a4
    647c:	00d40433          	add	s0,s0,a3
    6480:	00b40433          	add	s0,s0,a1
    6484:	01765793          	srli	a5,a2,0x17
    6488:	00941413          	slli	s0,s0,0x9
    648c:	00f46433          	or	s0,s0,a5
    6490:	009f1793          	slli	a5,t5,0x9
    6494:	0067e7b3          	or	a5,a5,t1
    6498:	00f037b3          	snez	a5,a5
    649c:	017f5f13          	srli	t5,t5,0x17
    64a0:	00961713          	slli	a4,a2,0x9
    64a4:	01e7e7b3          	or	a5,a5,t5
    64a8:	00e7e7b3          	or	a5,a5,a4
    64ac:	01000737          	lui	a4,0x1000
    64b0:	00e47733          	and	a4,s0,a4
    64b4:	28070663          	beqz	a4,6740 <__muldf3+0x5d4>
    64b8:	0017d713          	srli	a4,a5,0x1
    64bc:	0017f793          	andi	a5,a5,1
    64c0:	00f76733          	or	a4,a4,a5
    64c4:	01f41793          	slli	a5,s0,0x1f
    64c8:	00f767b3          	or	a5,a4,a5
    64cc:	00145413          	srli	s0,s0,0x1
    64d0:	3ff88693          	addi	a3,a7,1023 # 8003ff <soln_cnt0+0x7ef923>
    64d4:	26d05a63          	blez	a3,6748 <__muldf3+0x5dc>
    64d8:	0077f713          	andi	a4,a5,7
    64dc:	02070063          	beqz	a4,64fc <__muldf3+0x390>
    64e0:	00f7f713          	andi	a4,a5,15
    64e4:	00400613          	li	a2,4
    64e8:	00c70a63          	beq	a4,a2,64fc <__muldf3+0x390>
    64ec:	00478713          	addi	a4,a5,4
    64f0:	00f737b3          	sltu	a5,a4,a5
    64f4:	00f40433          	add	s0,s0,a5
    64f8:	00070793          	mv	a5,a4
    64fc:	01000737          	lui	a4,0x1000
    6500:	00e47733          	and	a4,s0,a4
    6504:	00070a63          	beqz	a4,6518 <__muldf3+0x3ac>
    6508:	ff000737          	lui	a4,0xff000
    650c:	fff70713          	addi	a4,a4,-1 # feffffff <soln_cnt0+0xfefef523>
    6510:	00e47433          	and	s0,s0,a4
    6514:	40088693          	addi	a3,a7,1024
    6518:	7fe00713          	li	a4,2046
    651c:	2ed74e63          	blt	a4,a3,6818 <__muldf3+0x6ac>
    6520:	01d41713          	slli	a4,s0,0x1d
    6524:	0037d793          	srli	a5,a5,0x3
    6528:	00f76733          	or	a4,a4,a5
    652c:	00345413          	srli	s0,s0,0x3
    6530:	7ff007b7          	lui	a5,0x7ff00
    6534:	01469693          	slli	a3,a3,0x14
    6538:	00c41413          	slli	s0,s0,0xc
    653c:	00f6f6b3          	and	a3,a3,a5
    6540:	00c45413          	srli	s0,s0,0xc
    6544:	02c12083          	lw	ra,44(sp)
    6548:	0086e6b3          	or	a3,a3,s0
    654c:	02812403          	lw	s0,40(sp)
    6550:	01f81813          	slli	a6,a6,0x1f
    6554:	0106e7b3          	or	a5,a3,a6
    6558:	02412483          	lw	s1,36(sp)
    655c:	02012903          	lw	s2,32(sp)
    6560:	01c12983          	lw	s3,28(sp)
    6564:	01812a03          	lw	s4,24(sp)
    6568:	01412a83          	lw	s5,20(sp)
    656c:	01012b03          	lw	s6,16(sp)
    6570:	00c12b83          	lw	s7,12(sp)
    6574:	00070513          	mv	a0,a4
    6578:	00078593          	mv	a1,a5
    657c:	03010113          	addi	sp,sp,48
    6580:	00008067          	ret
    6584:	00a4e933          	or	s2,s1,a0
    6588:	06090c63          	beqz	s2,6600 <__muldf3+0x494>
    658c:	04048063          	beqz	s1,65cc <__muldf3+0x460>
    6590:	00048513          	mv	a0,s1
    6594:	7ed050ef          	jal	ra,c580 <__clzsi2>
    6598:	ff550713          	addi	a4,a0,-11
    659c:	01c00793          	li	a5,28
    65a0:	02e7cc63          	blt	a5,a4,65d8 <__muldf3+0x46c>
    65a4:	01d00793          	li	a5,29
    65a8:	ff850913          	addi	s2,a0,-8
    65ac:	40e787b3          	sub	a5,a5,a4
    65b0:	012494b3          	sll	s1,s1,s2
    65b4:	00f457b3          	srl	a5,s0,a5
    65b8:	0097e4b3          	or	s1,a5,s1
    65bc:	01241933          	sll	s2,s0,s2
    65c0:	c0d00993          	li	s3,-1011
    65c4:	40a989b3          	sub	s3,s3,a0
    65c8:	c15ff06f          	j	61dc <__muldf3+0x70>
    65cc:	7b5050ef          	jal	ra,c580 <__clzsi2>
    65d0:	02050513          	addi	a0,a0,32
    65d4:	fc5ff06f          	j	6598 <__muldf3+0x42c>
    65d8:	fd850493          	addi	s1,a0,-40
    65dc:	009414b3          	sll	s1,s0,s1
    65e0:	00000913          	li	s2,0
    65e4:	fddff06f          	j	65c0 <__muldf3+0x454>
    65e8:	00a4e933          	or	s2,s1,a0
    65ec:	02090263          	beqz	s2,6610 <__muldf3+0x4a4>
    65f0:	00050913          	mv	s2,a0
    65f4:	7ff00993          	li	s3,2047
    65f8:	00300b13          	li	s6,3
    65fc:	be5ff06f          	j	61e0 <__muldf3+0x74>
    6600:	00000493          	li	s1,0
    6604:	00000993          	li	s3,0
    6608:	00100b13          	li	s6,1
    660c:	bd5ff06f          	j	61e0 <__muldf3+0x74>
    6610:	00000493          	li	s1,0
    6614:	7ff00993          	li	s3,2047
    6618:	00200b13          	li	s6,2
    661c:	bc5ff06f          	j	61e0 <__muldf3+0x74>
    6620:	017467b3          	or	a5,s0,s7
    6624:	06078e63          	beqz	a5,66a0 <__muldf3+0x534>
    6628:	04040063          	beqz	s0,6668 <__muldf3+0x4fc>
    662c:	00040513          	mv	a0,s0
    6630:	751050ef          	jal	ra,c580 <__clzsi2>
    6634:	ff550693          	addi	a3,a0,-11
    6638:	01c00793          	li	a5,28
    663c:	02d7ce63          	blt	a5,a3,6678 <__muldf3+0x50c>
    6640:	01d00713          	li	a4,29
    6644:	ff850793          	addi	a5,a0,-8
    6648:	40d70733          	sub	a4,a4,a3
    664c:	00f41433          	sll	s0,s0,a5
    6650:	00ebd733          	srl	a4,s7,a4
    6654:	00876433          	or	s0,a4,s0
    6658:	00fb97b3          	sll	a5,s7,a5
    665c:	c0d00713          	li	a4,-1011
    6660:	40a70733          	sub	a4,a4,a0
    6664:	bb9ff06f          	j	621c <__muldf3+0xb0>
    6668:	000b8513          	mv	a0,s7
    666c:	715050ef          	jal	ra,c580 <__clzsi2>
    6670:	02050513          	addi	a0,a0,32
    6674:	fc1ff06f          	j	6634 <__muldf3+0x4c8>
    6678:	fd850413          	addi	s0,a0,-40
    667c:	008b9433          	sll	s0,s7,s0
    6680:	00000793          	li	a5,0
    6684:	fd9ff06f          	j	665c <__muldf3+0x4f0>
    6688:	017467b3          	or	a5,s0,s7
    668c:	02078263          	beqz	a5,66b0 <__muldf3+0x544>
    6690:	000b8793          	mv	a5,s7
    6694:	7ff00713          	li	a4,2047
    6698:	00300613          	li	a2,3
    669c:	b85ff06f          	j	6220 <__muldf3+0xb4>
    66a0:	00000413          	li	s0,0
    66a4:	00000713          	li	a4,0
    66a8:	00100613          	li	a2,1
    66ac:	b75ff06f          	j	6220 <__muldf3+0xb4>
    66b0:	00000413          	li	s0,0
    66b4:	7ff00713          	li	a4,2047
    66b8:	00200613          	li	a2,2
    66bc:	b65ff06f          	j	6220 <__muldf3+0xb4>
    66c0:	00100693          	li	a3,1
    66c4:	00e696b3          	sll	a3,a3,a4
    66c8:	5306f713          	andi	a4,a3,1328
    66cc:	04071863          	bnez	a4,671c <__muldf3+0x5b0>
    66d0:	2406f593          	andi	a1,a3,576
    66d4:	12059463          	bnez	a1,67fc <__muldf3+0x690>
    66d8:	0886f693          	andi	a3,a3,136
    66dc:	b6068ae3          	beqz	a3,6250 <__muldf3+0xe4>
    66e0:	000a0813          	mv	a6,s4
    66e4:	00200713          	li	a4,2
    66e8:	12e60863          	beq	a2,a4,6818 <__muldf3+0x6ac>
    66ec:	00300713          	li	a4,3
    66f0:	10e60e63          	beq	a2,a4,680c <__muldf3+0x6a0>
    66f4:	00100713          	li	a4,1
    66f8:	dce61ce3          	bne	a2,a4,64d0 <__muldf3+0x364>
    66fc:	00000413          	li	s0,0
    6700:	00000713          	li	a4,0
    6704:	0bc0006f          	j	67c0 <__muldf3+0x654>
    6708:	00f00693          	li	a3,15
    670c:	02d70063          	beq	a4,a3,672c <__muldf3+0x5c0>
    6710:	00b00693          	li	a3,11
    6714:	fcd706e3          	beq	a4,a3,66e0 <__muldf3+0x574>
    6718:	000a8813          	mv	a6,s5
    671c:	00048413          	mv	s0,s1
    6720:	00090793          	mv	a5,s2
    6724:	000b0613          	mv	a2,s6
    6728:	fbdff06f          	j	66e4 <__muldf3+0x578>
    672c:	00080437          	lui	s0,0x80
    6730:	00000793          	li	a5,0
    6734:	00000813          	li	a6,0
    6738:	00300613          	li	a2,3
    673c:	fb1ff06f          	j	66ec <__muldf3+0x580>
    6740:	00098893          	mv	a7,s3
    6744:	d8dff06f          	j	64d0 <__muldf3+0x364>
    6748:	00100613          	li	a2,1
    674c:	40d60633          	sub	a2,a2,a3
    6750:	03800713          	li	a4,56
    6754:	fac744e3          	blt	a4,a2,66fc <__muldf3+0x590>
    6758:	01f00713          	li	a4,31
    675c:	06c74663          	blt	a4,a2,67c8 <__muldf3+0x65c>
    6760:	41e88893          	addi	a7,a7,1054
    6764:	01141733          	sll	a4,s0,a7
    6768:	00c7d6b3          	srl	a3,a5,a2
    676c:	011798b3          	sll	a7,a5,a7
    6770:	00d76733          	or	a4,a4,a3
    6774:	011038b3          	snez	a7,a7
    6778:	011767b3          	or	a5,a4,a7
    677c:	00c45433          	srl	s0,s0,a2
    6780:	0077f713          	andi	a4,a5,7
    6784:	02070063          	beqz	a4,67a4 <__muldf3+0x638>
    6788:	00f7f713          	andi	a4,a5,15
    678c:	00400693          	li	a3,4
    6790:	00d70a63          	beq	a4,a3,67a4 <__muldf3+0x638>
    6794:	00478713          	addi	a4,a5,4 # 7ff00004 <soln_cnt0+0x7feef528>
    6798:	00f737b3          	sltu	a5,a4,a5
    679c:	00f40433          	add	s0,s0,a5
    67a0:	00070793          	mv	a5,a4
    67a4:	00800737          	lui	a4,0x800
    67a8:	00e47733          	and	a4,s0,a4
    67ac:	06071e63          	bnez	a4,6828 <__muldf3+0x6bc>
    67b0:	01d41713          	slli	a4,s0,0x1d
    67b4:	0037d793          	srli	a5,a5,0x3
    67b8:	00f76733          	or	a4,a4,a5
    67bc:	00345413          	srli	s0,s0,0x3
    67c0:	00000693          	li	a3,0
    67c4:	d6dff06f          	j	6530 <__muldf3+0x3c4>
    67c8:	fe100713          	li	a4,-31
    67cc:	40d70733          	sub	a4,a4,a3
    67d0:	02000593          	li	a1,32
    67d4:	00e45733          	srl	a4,s0,a4
    67d8:	00000693          	li	a3,0
    67dc:	00b60663          	beq	a2,a1,67e8 <__muldf3+0x67c>
    67e0:	43e88893          	addi	a7,a7,1086
    67e4:	011416b3          	sll	a3,s0,a7
    67e8:	00f6e6b3          	or	a3,a3,a5
    67ec:	00d036b3          	snez	a3,a3
    67f0:	00d767b3          	or	a5,a4,a3
    67f4:	00000413          	li	s0,0
    67f8:	f89ff06f          	j	6780 <__muldf3+0x614>
    67fc:	00080437          	lui	s0,0x80
    6800:	7ff00693          	li	a3,2047
    6804:	00000813          	li	a6,0
    6808:	d29ff06f          	j	6530 <__muldf3+0x3c4>
    680c:	00080437          	lui	s0,0x80
    6810:	00000713          	li	a4,0
    6814:	fedff06f          	j	6800 <__muldf3+0x694>
    6818:	00000413          	li	s0,0
    681c:	00000713          	li	a4,0
    6820:	7ff00693          	li	a3,2047
    6824:	d0dff06f          	j	6530 <__muldf3+0x3c4>
    6828:	00000413          	li	s0,0
    682c:	00000713          	li	a4,0
    6830:	00100693          	li	a3,1
    6834:	cfdff06f          	j	6530 <__muldf3+0x3c4>

00006838 <__subdf3>:
    6838:	00100837          	lui	a6,0x100
    683c:	fff80813          	addi	a6,a6,-1 # fffff <soln_cnt0+0xef523>
    6840:	fe010113          	addi	sp,sp,-32
    6844:	00b878b3          	and	a7,a6,a1
    6848:	0145d713          	srli	a4,a1,0x14
    684c:	01d55793          	srli	a5,a0,0x1d
    6850:	00d87833          	and	a6,a6,a3
    6854:	00812c23          	sw	s0,24(sp)
    6858:	7ff77413          	andi	s0,a4,2047
    685c:	00389713          	slli	a4,a7,0x3
    6860:	0146d893          	srli	a7,a3,0x14
    6864:	00912a23          	sw	s1,20(sp)
    6868:	00e7e7b3          	or	a5,a5,a4
    686c:	01f5d493          	srli	s1,a1,0x1f
    6870:	01d65713          	srli	a4,a2,0x1d
    6874:	00381813          	slli	a6,a6,0x3
    6878:	00112e23          	sw	ra,28(sp)
    687c:	01212823          	sw	s2,16(sp)
    6880:	01312623          	sw	s3,12(sp)
    6884:	7ff8f893          	andi	a7,a7,2047
    6888:	7ff00593          	li	a1,2047
    688c:	00351513          	slli	a0,a0,0x3
    6890:	01f6d693          	srli	a3,a3,0x1f
    6894:	01076733          	or	a4,a4,a6
    6898:	00361613          	slli	a2,a2,0x3
    689c:	00b89663          	bne	a7,a1,68a8 <__subdf3+0x70>
    68a0:	00c765b3          	or	a1,a4,a2
    68a4:	00059463          	bnez	a1,68ac <__subdf3+0x74>
    68a8:	0016c693          	xori	a3,a3,1
    68ac:	41140833          	sub	a6,s0,a7
    68b0:	2c969863          	bne	a3,s1,6b80 <__subdf3+0x348>
    68b4:	13005063          	blez	a6,69d4 <__subdf3+0x19c>
    68b8:	04089063          	bnez	a7,68f8 <__subdf3+0xc0>
    68bc:	00c766b3          	or	a3,a4,a2
    68c0:	70068e63          	beqz	a3,6fdc <__subdf3+0x7a4>
    68c4:	fff80593          	addi	a1,a6,-1
    68c8:	02059063          	bnez	a1,68e8 <__subdf3+0xb0>
    68cc:	00c50633          	add	a2,a0,a2
    68d0:	00e78733          	add	a4,a5,a4
    68d4:	00a637b3          	sltu	a5,a2,a0
    68d8:	00f707b3          	add	a5,a4,a5
    68dc:	00060513          	mv	a0,a2
    68e0:	00100413          	li	s0,1
    68e4:	0700006f          	j	6954 <__subdf3+0x11c>
    68e8:	7ff00693          	li	a3,2047
    68ec:	02d81063          	bne	a6,a3,690c <__subdf3+0xd4>
    68f0:	7ff00413          	li	s0,2047
    68f4:	2140006f          	j	6b08 <__subdf3+0x2d0>
    68f8:	7ff00693          	li	a3,2047
    68fc:	20d40663          	beq	s0,a3,6b08 <__subdf3+0x2d0>
    6900:	008006b7          	lui	a3,0x800
    6904:	00d76733          	or	a4,a4,a3
    6908:	00080593          	mv	a1,a6
    690c:	03800693          	li	a3,56
    6910:	0ab6cc63          	blt	a3,a1,69c8 <__subdf3+0x190>
    6914:	01f00693          	li	a3,31
    6918:	06b6ce63          	blt	a3,a1,6994 <__subdf3+0x15c>
    691c:	02000813          	li	a6,32
    6920:	40b80833          	sub	a6,a6,a1
    6924:	010716b3          	sll	a3,a4,a6
    6928:	00b658b3          	srl	a7,a2,a1
    692c:	01061833          	sll	a6,a2,a6
    6930:	0116e6b3          	or	a3,a3,a7
    6934:	01003833          	snez	a6,a6
    6938:	0106e6b3          	or	a3,a3,a6
    693c:	00b755b3          	srl	a1,a4,a1
    6940:	00a686b3          	add	a3,a3,a0
    6944:	00f585b3          	add	a1,a1,a5
    6948:	00a6b7b3          	sltu	a5,a3,a0
    694c:	00f587b3          	add	a5,a1,a5
    6950:	00068513          	mv	a0,a3
    6954:	00800737          	lui	a4,0x800
    6958:	00e7f733          	and	a4,a5,a4
    695c:	1a070663          	beqz	a4,6b08 <__subdf3+0x2d0>
    6960:	00140413          	addi	s0,s0,1 # 80001 <soln_cnt0+0x6f525>
    6964:	7ff00713          	li	a4,2047
    6968:	5ce40a63          	beq	s0,a4,6f3c <__subdf3+0x704>
    696c:	ff800737          	lui	a4,0xff800
    6970:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    6974:	00e7f7b3          	and	a5,a5,a4
    6978:	00155713          	srli	a4,a0,0x1
    697c:	00157513          	andi	a0,a0,1
    6980:	00a76733          	or	a4,a4,a0
    6984:	01f79513          	slli	a0,a5,0x1f
    6988:	00e56533          	or	a0,a0,a4
    698c:	0017d793          	srli	a5,a5,0x1
    6990:	1780006f          	j	6b08 <__subdf3+0x2d0>
    6994:	fe058693          	addi	a3,a1,-32 # 7ffe0 <soln_cnt0+0x6f504>
    6998:	02000893          	li	a7,32
    699c:	00d756b3          	srl	a3,a4,a3
    69a0:	00000813          	li	a6,0
    69a4:	01158863          	beq	a1,a7,69b4 <__subdf3+0x17c>
    69a8:	04000813          	li	a6,64
    69ac:	40b80833          	sub	a6,a6,a1
    69b0:	01071833          	sll	a6,a4,a6
    69b4:	00c86833          	or	a6,a6,a2
    69b8:	01003833          	snez	a6,a6
    69bc:	0106e6b3          	or	a3,a3,a6
    69c0:	00000593          	li	a1,0
    69c4:	f7dff06f          	j	6940 <__subdf3+0x108>
    69c8:	00c766b3          	or	a3,a4,a2
    69cc:	00d036b3          	snez	a3,a3
    69d0:	ff1ff06f          	j	69c0 <__subdf3+0x188>
    69d4:	0e080263          	beqz	a6,6ab8 <__subdf3+0x280>
    69d8:	408885b3          	sub	a1,a7,s0
    69dc:	02041e63          	bnez	s0,6a18 <__subdf3+0x1e0>
    69e0:	00a7e6b3          	or	a3,a5,a0
    69e4:	52068c63          	beqz	a3,6f1c <__subdf3+0x6e4>
    69e8:	fff58693          	addi	a3,a1,-1
    69ec:	00069c63          	bnez	a3,6a04 <__subdf3+0x1cc>
    69f0:	00c50533          	add	a0,a0,a2
    69f4:	00e78733          	add	a4,a5,a4
    69f8:	00c53633          	sltu	a2,a0,a2
    69fc:	00c707b3          	add	a5,a4,a2
    6a00:	ee1ff06f          	j	68e0 <__subdf3+0xa8>
    6a04:	7ff00813          	li	a6,2047
    6a08:	03059263          	bne	a1,a6,6a2c <__subdf3+0x1f4>
    6a0c:	00070793          	mv	a5,a4
    6a10:	00060513          	mv	a0,a2
    6a14:	eddff06f          	j	68f0 <__subdf3+0xb8>
    6a18:	7ff00693          	li	a3,2047
    6a1c:	fed888e3          	beq	a7,a3,6a0c <__subdf3+0x1d4>
    6a20:	008006b7          	lui	a3,0x800
    6a24:	00d7e7b3          	or	a5,a5,a3
    6a28:	00058693          	mv	a3,a1
    6a2c:	03800593          	li	a1,56
    6a30:	06d5ce63          	blt	a1,a3,6aac <__subdf3+0x274>
    6a34:	01f00593          	li	a1,31
    6a38:	04d5c063          	blt	a1,a3,6a78 <__subdf3+0x240>
    6a3c:	02000813          	li	a6,32
    6a40:	40d80833          	sub	a6,a6,a3
    6a44:	010795b3          	sll	a1,a5,a6
    6a48:	00d55333          	srl	t1,a0,a3
    6a4c:	01051833          	sll	a6,a0,a6
    6a50:	0065e5b3          	or	a1,a1,t1
    6a54:	01003833          	snez	a6,a6
    6a58:	0105e5b3          	or	a1,a1,a6
    6a5c:	00d7d6b3          	srl	a3,a5,a3
    6a60:	00c58533          	add	a0,a1,a2
    6a64:	00e686b3          	add	a3,a3,a4
    6a68:	00c53633          	sltu	a2,a0,a2
    6a6c:	00c687b3          	add	a5,a3,a2
    6a70:	00088413          	mv	s0,a7
    6a74:	ee1ff06f          	j	6954 <__subdf3+0x11c>
    6a78:	fe068593          	addi	a1,a3,-32 # 7fffe0 <soln_cnt0+0x7ef504>
    6a7c:	02000313          	li	t1,32
    6a80:	00b7d5b3          	srl	a1,a5,a1
    6a84:	00000813          	li	a6,0
    6a88:	00668863          	beq	a3,t1,6a98 <__subdf3+0x260>
    6a8c:	04000813          	li	a6,64
    6a90:	40d80833          	sub	a6,a6,a3
    6a94:	01079833          	sll	a6,a5,a6
    6a98:	00a86833          	or	a6,a6,a0
    6a9c:	01003833          	snez	a6,a6
    6aa0:	0105e5b3          	or	a1,a1,a6
    6aa4:	00000693          	li	a3,0
    6aa8:	fb9ff06f          	j	6a60 <__subdf3+0x228>
    6aac:	00a7e5b3          	or	a1,a5,a0
    6ab0:	00b035b3          	snez	a1,a1
    6ab4:	ff1ff06f          	j	6aa4 <__subdf3+0x26c>
    6ab8:	00140693          	addi	a3,s0,1
    6abc:	7fe6f593          	andi	a1,a3,2046
    6ac0:	08059863          	bnez	a1,6b50 <__subdf3+0x318>
    6ac4:	00a7e6b3          	or	a3,a5,a0
    6ac8:	06041463          	bnez	s0,6b30 <__subdf3+0x2f8>
    6acc:	46068063          	beqz	a3,6f2c <__subdf3+0x6f4>
    6ad0:	00c766b3          	or	a3,a4,a2
    6ad4:	02068a63          	beqz	a3,6b08 <__subdf3+0x2d0>
    6ad8:	00c50633          	add	a2,a0,a2
    6adc:	00e78733          	add	a4,a5,a4
    6ae0:	00a637b3          	sltu	a5,a2,a0
    6ae4:	00f707b3          	add	a5,a4,a5
    6ae8:	00800737          	lui	a4,0x800
    6aec:	00e7f733          	and	a4,a5,a4
    6af0:	00060513          	mv	a0,a2
    6af4:	00070a63          	beqz	a4,6b08 <__subdf3+0x2d0>
    6af8:	ff800737          	lui	a4,0xff800
    6afc:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    6b00:	00e7f7b3          	and	a5,a5,a4
    6b04:	00100413          	li	s0,1
    6b08:	00757713          	andi	a4,a0,7
    6b0c:	42070c63          	beqz	a4,6f44 <__subdf3+0x70c>
    6b10:	00f57713          	andi	a4,a0,15
    6b14:	00400693          	li	a3,4
    6b18:	42d70663          	beq	a4,a3,6f44 <__subdf3+0x70c>
    6b1c:	00450713          	addi	a4,a0,4
    6b20:	00a73533          	sltu	a0,a4,a0
    6b24:	00a787b3          	add	a5,a5,a0
    6b28:	00070513          	mv	a0,a4
    6b2c:	4180006f          	j	6f44 <__subdf3+0x70c>
    6b30:	ec068ee3          	beqz	a3,6a0c <__subdf3+0x1d4>
    6b34:	00c76733          	or	a4,a4,a2
    6b38:	da070ce3          	beqz	a4,68f0 <__subdf3+0xb8>
    6b3c:	00000493          	li	s1,0
    6b40:	004007b7          	lui	a5,0x400
    6b44:	00000513          	li	a0,0
    6b48:	7ff00413          	li	s0,2047
    6b4c:	3f80006f          	j	6f44 <__subdf3+0x70c>
    6b50:	7ff00593          	li	a1,2047
    6b54:	3eb68263          	beq	a3,a1,6f38 <__subdf3+0x700>
    6b58:	00c50633          	add	a2,a0,a2
    6b5c:	00a63533          	sltu	a0,a2,a0
    6b60:	00e78733          	add	a4,a5,a4
    6b64:	00a70733          	add	a4,a4,a0
    6b68:	01f71513          	slli	a0,a4,0x1f
    6b6c:	00165613          	srli	a2,a2,0x1
    6b70:	00c56533          	or	a0,a0,a2
    6b74:	00175793          	srli	a5,a4,0x1
    6b78:	00068413          	mv	s0,a3
    6b7c:	f8dff06f          	j	6b08 <__subdf3+0x2d0>
    6b80:	0f005c63          	blez	a6,6c78 <__subdf3+0x440>
    6b84:	08089e63          	bnez	a7,6c20 <__subdf3+0x3e8>
    6b88:	00c766b3          	or	a3,a4,a2
    6b8c:	44068863          	beqz	a3,6fdc <__subdf3+0x7a4>
    6b90:	fff80593          	addi	a1,a6,-1
    6b94:	02059063          	bnez	a1,6bb4 <__subdf3+0x37c>
    6b98:	40c50633          	sub	a2,a0,a2
    6b9c:	40e78733          	sub	a4,a5,a4
    6ba0:	00c537b3          	sltu	a5,a0,a2
    6ba4:	40f707b3          	sub	a5,a4,a5
    6ba8:	00060513          	mv	a0,a2
    6bac:	00100413          	li	s0,1
    6bb0:	0540006f          	j	6c04 <__subdf3+0x3cc>
    6bb4:	7ff00693          	li	a3,2047
    6bb8:	d2d80ce3          	beq	a6,a3,68f0 <__subdf3+0xb8>
    6bbc:	03800693          	li	a3,56
    6bc0:	0ab6c663          	blt	a3,a1,6c6c <__subdf3+0x434>
    6bc4:	01f00693          	li	a3,31
    6bc8:	06b6c863          	blt	a3,a1,6c38 <__subdf3+0x400>
    6bcc:	02000813          	li	a6,32
    6bd0:	40b80833          	sub	a6,a6,a1
    6bd4:	010716b3          	sll	a3,a4,a6
    6bd8:	00b658b3          	srl	a7,a2,a1
    6bdc:	01061833          	sll	a6,a2,a6
    6be0:	0116e6b3          	or	a3,a3,a7
    6be4:	01003833          	snez	a6,a6
    6be8:	0106e6b3          	or	a3,a3,a6
    6bec:	00b755b3          	srl	a1,a4,a1
    6bf0:	40d506b3          	sub	a3,a0,a3
    6bf4:	40b785b3          	sub	a1,a5,a1
    6bf8:	00d537b3          	sltu	a5,a0,a3
    6bfc:	40f587b3          	sub	a5,a1,a5
    6c00:	00068513          	mv	a0,a3
    6c04:	00800937          	lui	s2,0x800
    6c08:	0127f733          	and	a4,a5,s2
    6c0c:	ee070ee3          	beqz	a4,6b08 <__subdf3+0x2d0>
    6c10:	fff90913          	addi	s2,s2,-1 # 7fffff <soln_cnt0+0x7ef523>
    6c14:	0127f933          	and	s2,a5,s2
    6c18:	00050993          	mv	s3,a0
    6c1c:	2140006f          	j	6e30 <__subdf3+0x5f8>
    6c20:	7ff00693          	li	a3,2047
    6c24:	eed402e3          	beq	s0,a3,6b08 <__subdf3+0x2d0>
    6c28:	008006b7          	lui	a3,0x800
    6c2c:	00d76733          	or	a4,a4,a3
    6c30:	00080593          	mv	a1,a6
    6c34:	f89ff06f          	j	6bbc <__subdf3+0x384>
    6c38:	fe058693          	addi	a3,a1,-32
    6c3c:	02000893          	li	a7,32
    6c40:	00d756b3          	srl	a3,a4,a3
    6c44:	00000813          	li	a6,0
    6c48:	01158863          	beq	a1,a7,6c58 <__subdf3+0x420>
    6c4c:	04000813          	li	a6,64
    6c50:	40b80833          	sub	a6,a6,a1
    6c54:	01071833          	sll	a6,a4,a6
    6c58:	00c86833          	or	a6,a6,a2
    6c5c:	01003833          	snez	a6,a6
    6c60:	0106e6b3          	or	a3,a3,a6
    6c64:	00000593          	li	a1,0
    6c68:	f89ff06f          	j	6bf0 <__subdf3+0x3b8>
    6c6c:	00c766b3          	or	a3,a4,a2
    6c70:	00d036b3          	snez	a3,a3
    6c74:	ff1ff06f          	j	6c64 <__subdf3+0x42c>
    6c78:	0e080863          	beqz	a6,6d68 <__subdf3+0x530>
    6c7c:	40888833          	sub	a6,a7,s0
    6c80:	04041263          	bnez	s0,6cc4 <__subdf3+0x48c>
    6c84:	00a7e5b3          	or	a1,a5,a0
    6c88:	34058e63          	beqz	a1,6fe4 <__subdf3+0x7ac>
    6c8c:	fff80593          	addi	a1,a6,-1
    6c90:	00059e63          	bnez	a1,6cac <__subdf3+0x474>
    6c94:	40a60533          	sub	a0,a2,a0
    6c98:	40f70733          	sub	a4,a4,a5
    6c9c:	00a63633          	sltu	a2,a2,a0
    6ca0:	40c707b3          	sub	a5,a4,a2
    6ca4:	00068493          	mv	s1,a3
    6ca8:	f05ff06f          	j	6bac <__subdf3+0x374>
    6cac:	7ff00313          	li	t1,2047
    6cb0:	02681463          	bne	a6,t1,6cd8 <__subdf3+0x4a0>
    6cb4:	00070793          	mv	a5,a4
    6cb8:	00060513          	mv	a0,a2
    6cbc:	7ff00413          	li	s0,2047
    6cc0:	0d00006f          	j	6d90 <__subdf3+0x558>
    6cc4:	7ff00593          	li	a1,2047
    6cc8:	feb886e3          	beq	a7,a1,6cb4 <__subdf3+0x47c>
    6ccc:	008005b7          	lui	a1,0x800
    6cd0:	00b7e7b3          	or	a5,a5,a1
    6cd4:	00080593          	mv	a1,a6
    6cd8:	03800813          	li	a6,56
    6cdc:	08b84063          	blt	a6,a1,6d5c <__subdf3+0x524>
    6ce0:	01f00813          	li	a6,31
    6ce4:	04b84263          	blt	a6,a1,6d28 <__subdf3+0x4f0>
    6ce8:	02000313          	li	t1,32
    6cec:	40b30333          	sub	t1,t1,a1
    6cf0:	00b55e33          	srl	t3,a0,a1
    6cf4:	00679833          	sll	a6,a5,t1
    6cf8:	00651333          	sll	t1,a0,t1
    6cfc:	01c86833          	or	a6,a6,t3
    6d00:	00603333          	snez	t1,t1
    6d04:	00686533          	or	a0,a6,t1
    6d08:	00b7d5b3          	srl	a1,a5,a1
    6d0c:	40a60533          	sub	a0,a2,a0
    6d10:	40b705b3          	sub	a1,a4,a1
    6d14:	00a63633          	sltu	a2,a2,a0
    6d18:	40c587b3          	sub	a5,a1,a2
    6d1c:	00088413          	mv	s0,a7
    6d20:	00068493          	mv	s1,a3
    6d24:	ee1ff06f          	j	6c04 <__subdf3+0x3cc>
    6d28:	fe058813          	addi	a6,a1,-32 # 7fffe0 <soln_cnt0+0x7ef504>
    6d2c:	02000e13          	li	t3,32
    6d30:	0107d833          	srl	a6,a5,a6
    6d34:	00000313          	li	t1,0
    6d38:	01c58863          	beq	a1,t3,6d48 <__subdf3+0x510>
    6d3c:	04000313          	li	t1,64
    6d40:	40b30333          	sub	t1,t1,a1
    6d44:	00679333          	sll	t1,a5,t1
    6d48:	00a36333          	or	t1,t1,a0
    6d4c:	00603333          	snez	t1,t1
    6d50:	00686533          	or	a0,a6,t1
    6d54:	00000593          	li	a1,0
    6d58:	fb5ff06f          	j	6d0c <__subdf3+0x4d4>
    6d5c:	00a7e533          	or	a0,a5,a0
    6d60:	00a03533          	snez	a0,a0
    6d64:	ff1ff06f          	j	6d54 <__subdf3+0x51c>
    6d68:	00140593          	addi	a1,s0,1
    6d6c:	7fe5f593          	andi	a1,a1,2046
    6d70:	08059863          	bnez	a1,6e00 <__subdf3+0x5c8>
    6d74:	00c765b3          	or	a1,a4,a2
    6d78:	00a7e833          	or	a6,a5,a0
    6d7c:	06041263          	bnez	s0,6de0 <__subdf3+0x5a8>
    6d80:	00081c63          	bnez	a6,6d98 <__subdf3+0x560>
    6d84:	26058863          	beqz	a1,6ff4 <__subdf3+0x7bc>
    6d88:	00070793          	mv	a5,a4
    6d8c:	00060513          	mv	a0,a2
    6d90:	00068493          	mv	s1,a3
    6d94:	d75ff06f          	j	6b08 <__subdf3+0x2d0>
    6d98:	d60588e3          	beqz	a1,6b08 <__subdf3+0x2d0>
    6d9c:	40c50833          	sub	a6,a0,a2
    6da0:	010538b3          	sltu	a7,a0,a6
    6da4:	40e785b3          	sub	a1,a5,a4
    6da8:	411585b3          	sub	a1,a1,a7
    6dac:	008008b7          	lui	a7,0x800
    6db0:	0115f8b3          	and	a7,a1,a7
    6db4:	00088c63          	beqz	a7,6dcc <__subdf3+0x594>
    6db8:	40a60533          	sub	a0,a2,a0
    6dbc:	40f70733          	sub	a4,a4,a5
    6dc0:	00a63633          	sltu	a2,a2,a0
    6dc4:	40c707b3          	sub	a5,a4,a2
    6dc8:	fc9ff06f          	j	6d90 <__subdf3+0x558>
    6dcc:	00b86533          	or	a0,a6,a1
    6dd0:	22050a63          	beqz	a0,7004 <__subdf3+0x7cc>
    6dd4:	00058793          	mv	a5,a1
    6dd8:	00080513          	mv	a0,a6
    6ddc:	d2dff06f          	j	6b08 <__subdf3+0x2d0>
    6de0:	00081c63          	bnez	a6,6df8 <__subdf3+0x5c0>
    6de4:	22058463          	beqz	a1,700c <__subdf3+0x7d4>
    6de8:	00070793          	mv	a5,a4
    6dec:	00060513          	mv	a0,a2
    6df0:	00068493          	mv	s1,a3
    6df4:	afdff06f          	j	68f0 <__subdf3+0xb8>
    6df8:	ae058ce3          	beqz	a1,68f0 <__subdf3+0xb8>
    6dfc:	d41ff06f          	j	6b3c <__subdf3+0x304>
    6e00:	40c509b3          	sub	s3,a0,a2
    6e04:	013535b3          	sltu	a1,a0,s3
    6e08:	40e78933          	sub	s2,a5,a4
    6e0c:	40b90933          	sub	s2,s2,a1
    6e10:	008005b7          	lui	a1,0x800
    6e14:	00b975b3          	and	a1,s2,a1
    6e18:	08058463          	beqz	a1,6ea0 <__subdf3+0x668>
    6e1c:	40a609b3          	sub	s3,a2,a0
    6e20:	40f70933          	sub	s2,a4,a5
    6e24:	01363633          	sltu	a2,a2,s3
    6e28:	40c90933          	sub	s2,s2,a2
    6e2c:	00068493          	mv	s1,a3
    6e30:	08090263          	beqz	s2,6eb4 <__subdf3+0x67c>
    6e34:	00090513          	mv	a0,s2
    6e38:	748050ef          	jal	ra,c580 <__clzsi2>
    6e3c:	ff850713          	addi	a4,a0,-8
    6e40:	01f00793          	li	a5,31
    6e44:	08e7c063          	blt	a5,a4,6ec4 <__subdf3+0x68c>
    6e48:	02000793          	li	a5,32
    6e4c:	40e787b3          	sub	a5,a5,a4
    6e50:	00e91933          	sll	s2,s2,a4
    6e54:	00f9d7b3          	srl	a5,s3,a5
    6e58:	0127e7b3          	or	a5,a5,s2
    6e5c:	00e99533          	sll	a0,s3,a4
    6e60:	0a874463          	blt	a4,s0,6f08 <__subdf3+0x6d0>
    6e64:	40870733          	sub	a4,a4,s0
    6e68:	00170613          	addi	a2,a4,1
    6e6c:	01f00693          	li	a3,31
    6e70:	06c6c263          	blt	a3,a2,6ed4 <__subdf3+0x69c>
    6e74:	02000713          	li	a4,32
    6e78:	40c70733          	sub	a4,a4,a2
    6e7c:	00e796b3          	sll	a3,a5,a4
    6e80:	00c555b3          	srl	a1,a0,a2
    6e84:	00e51733          	sll	a4,a0,a4
    6e88:	00b6e6b3          	or	a3,a3,a1
    6e8c:	00e03733          	snez	a4,a4
    6e90:	00e6e533          	or	a0,a3,a4
    6e94:	00c7d7b3          	srl	a5,a5,a2
    6e98:	00000413          	li	s0,0
    6e9c:	c6dff06f          	j	6b08 <__subdf3+0x2d0>
    6ea0:	0129e533          	or	a0,s3,s2
    6ea4:	f80516e3          	bnez	a0,6e30 <__subdf3+0x5f8>
    6ea8:	00000793          	li	a5,0
    6eac:	00000413          	li	s0,0
    6eb0:	14c0006f          	j	6ffc <__subdf3+0x7c4>
    6eb4:	00098513          	mv	a0,s3
    6eb8:	6c8050ef          	jal	ra,c580 <__clzsi2>
    6ebc:	02050513          	addi	a0,a0,32
    6ec0:	f7dff06f          	j	6e3c <__subdf3+0x604>
    6ec4:	fd850793          	addi	a5,a0,-40
    6ec8:	00f997b3          	sll	a5,s3,a5
    6ecc:	00000513          	li	a0,0
    6ed0:	f91ff06f          	j	6e60 <__subdf3+0x628>
    6ed4:	fe170713          	addi	a4,a4,-31
    6ed8:	02000593          	li	a1,32
    6edc:	00e7d733          	srl	a4,a5,a4
    6ee0:	00000693          	li	a3,0
    6ee4:	00b60863          	beq	a2,a1,6ef4 <__subdf3+0x6bc>
    6ee8:	04000693          	li	a3,64
    6eec:	40c686b3          	sub	a3,a3,a2
    6ef0:	00d796b3          	sll	a3,a5,a3
    6ef4:	00d566b3          	or	a3,a0,a3
    6ef8:	00d036b3          	snez	a3,a3
    6efc:	00d76533          	or	a0,a4,a3
    6f00:	00000793          	li	a5,0
    6f04:	f95ff06f          	j	6e98 <__subdf3+0x660>
    6f08:	40e40433          	sub	s0,s0,a4
    6f0c:	ff800737          	lui	a4,0xff800
    6f10:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    6f14:	00e7f7b3          	and	a5,a5,a4
    6f18:	bf1ff06f          	j	6b08 <__subdf3+0x2d0>
    6f1c:	00070793          	mv	a5,a4
    6f20:	00060513          	mv	a0,a2
    6f24:	00058413          	mv	s0,a1
    6f28:	be1ff06f          	j	6b08 <__subdf3+0x2d0>
    6f2c:	00070793          	mv	a5,a4
    6f30:	00060513          	mv	a0,a2
    6f34:	bd5ff06f          	j	6b08 <__subdf3+0x2d0>
    6f38:	7ff00413          	li	s0,2047
    6f3c:	00000793          	li	a5,0
    6f40:	00000513          	li	a0,0
    6f44:	00800737          	lui	a4,0x800
    6f48:	00e7f733          	and	a4,a5,a4
    6f4c:	00070e63          	beqz	a4,6f68 <__subdf3+0x730>
    6f50:	00140413          	addi	s0,s0,1
    6f54:	7ff00713          	li	a4,2047
    6f58:	0ce40263          	beq	s0,a4,701c <__subdf3+0x7e4>
    6f5c:	ff800737          	lui	a4,0xff800
    6f60:	fff70713          	addi	a4,a4,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    6f64:	00e7f7b3          	and	a5,a5,a4
    6f68:	01d79693          	slli	a3,a5,0x1d
    6f6c:	00355513          	srli	a0,a0,0x3
    6f70:	7ff00713          	li	a4,2047
    6f74:	00a6e6b3          	or	a3,a3,a0
    6f78:	0037d793          	srli	a5,a5,0x3
    6f7c:	00e41e63          	bne	s0,a4,6f98 <__subdf3+0x760>
    6f80:	00f6e6b3          	or	a3,a3,a5
    6f84:	00000793          	li	a5,0
    6f88:	00068863          	beqz	a3,6f98 <__subdf3+0x760>
    6f8c:	000807b7          	lui	a5,0x80
    6f90:	00000693          	li	a3,0
    6f94:	00000493          	li	s1,0
    6f98:	01441713          	slli	a4,s0,0x14
    6f9c:	7ff00637          	lui	a2,0x7ff00
    6fa0:	00c79793          	slli	a5,a5,0xc
    6fa4:	01c12083          	lw	ra,28(sp)
    6fa8:	01812403          	lw	s0,24(sp)
    6fac:	00c77733          	and	a4,a4,a2
    6fb0:	00c7d793          	srli	a5,a5,0xc
    6fb4:	01f49493          	slli	s1,s1,0x1f
    6fb8:	00f767b3          	or	a5,a4,a5
    6fbc:	0097e733          	or	a4,a5,s1
    6fc0:	01012903          	lw	s2,16(sp)
    6fc4:	01412483          	lw	s1,20(sp)
    6fc8:	00c12983          	lw	s3,12(sp)
    6fcc:	00068513          	mv	a0,a3
    6fd0:	00070593          	mv	a1,a4
    6fd4:	02010113          	addi	sp,sp,32
    6fd8:	00008067          	ret
    6fdc:	00080413          	mv	s0,a6
    6fe0:	b29ff06f          	j	6b08 <__subdf3+0x2d0>
    6fe4:	00070793          	mv	a5,a4
    6fe8:	00060513          	mv	a0,a2
    6fec:	00080413          	mv	s0,a6
    6ff0:	da1ff06f          	j	6d90 <__subdf3+0x558>
    6ff4:	00000793          	li	a5,0
    6ff8:	00000513          	li	a0,0
    6ffc:	00000493          	li	s1,0
    7000:	f45ff06f          	j	6f44 <__subdf3+0x70c>
    7004:	00000793          	li	a5,0
    7008:	ff5ff06f          	j	6ffc <__subdf3+0x7c4>
    700c:	00000513          	li	a0,0
    7010:	00000493          	li	s1,0
    7014:	004007b7          	lui	a5,0x400
    7018:	b31ff06f          	j	6b48 <__subdf3+0x310>
    701c:	00000793          	li	a5,0
    7020:	00000513          	li	a0,0
    7024:	f45ff06f          	j	6f68 <__subdf3+0x730>

00007028 <__unorddf2>:
    7028:	001007b7          	lui	a5,0x100
    702c:	fff78793          	addi	a5,a5,-1 # fffff <soln_cnt0+0xef523>
    7030:	00b7f733          	and	a4,a5,a1
    7034:	0145d593          	srli	a1,a1,0x14
    7038:	00d7f7b3          	and	a5,a5,a3
    703c:	7ff5f593          	andi	a1,a1,2047
    7040:	0146d693          	srli	a3,a3,0x14
    7044:	7ff00813          	li	a6,2047
    7048:	7ff6f693          	andi	a3,a3,2047
    704c:	01059863          	bne	a1,a6,705c <__unorddf2+0x34>
    7050:	00a76733          	or	a4,a4,a0
    7054:	00100513          	li	a0,1
    7058:	00071c63          	bnez	a4,7070 <__unorddf2+0x48>
    705c:	7ff00713          	li	a4,2047
    7060:	00000513          	li	a0,0
    7064:	00e69663          	bne	a3,a4,7070 <__unorddf2+0x48>
    7068:	00c7e7b3          	or	a5,a5,a2
    706c:	00f03533          	snez	a0,a5
    7070:	00008067          	ret

00007074 <__fixdfsi>:
    7074:	0145d713          	srli	a4,a1,0x14
    7078:	001006b7          	lui	a3,0x100
    707c:	fff68793          	addi	a5,a3,-1 # fffff <soln_cnt0+0xef523>
    7080:	7ff77713          	andi	a4,a4,2047
    7084:	3fe00613          	li	a2,1022
    7088:	00b7f7b3          	and	a5,a5,a1
    708c:	01f5d593          	srli	a1,a1,0x1f
    7090:	04e65e63          	bge	a2,a4,70ec <__fixdfsi+0x78>
    7094:	41d00613          	li	a2,1053
    7098:	00e65a63          	bge	a2,a4,70ac <__fixdfsi+0x38>
    709c:	80000537          	lui	a0,0x80000
    70a0:	fff54513          	not	a0,a0
    70a4:	00a58533          	add	a0,a1,a0
    70a8:	00008067          	ret
    70ac:	00d7e7b3          	or	a5,a5,a3
    70b0:	43300693          	li	a3,1075
    70b4:	40e686b3          	sub	a3,a3,a4
    70b8:	01f00613          	li	a2,31
    70bc:	02d64063          	blt	a2,a3,70dc <__fixdfsi+0x68>
    70c0:	bed70713          	addi	a4,a4,-1043
    70c4:	00e797b3          	sll	a5,a5,a4
    70c8:	00d55533          	srl	a0,a0,a3
    70cc:	00a7e533          	or	a0,a5,a0
    70d0:	02058063          	beqz	a1,70f0 <__fixdfsi+0x7c>
    70d4:	40a00533          	neg	a0,a0
    70d8:	00008067          	ret
    70dc:	41300693          	li	a3,1043
    70e0:	40e68733          	sub	a4,a3,a4
    70e4:	00e7d533          	srl	a0,a5,a4
    70e8:	fe9ff06f          	j	70d0 <__fixdfsi+0x5c>
    70ec:	00000513          	li	a0,0
    70f0:	00008067          	ret

000070f4 <__floatsidf>:
    70f4:	ff010113          	addi	sp,sp,-16
    70f8:	00112623          	sw	ra,12(sp)
    70fc:	00812423          	sw	s0,8(sp)
    7100:	00912223          	sw	s1,4(sp)
    7104:	08050663          	beqz	a0,7190 <__floatsidf+0x9c>
    7108:	41f55793          	srai	a5,a0,0x1f
    710c:	00a7c433          	xor	s0,a5,a0
    7110:	40f40433          	sub	s0,s0,a5
    7114:	01f55493          	srli	s1,a0,0x1f
    7118:	00040513          	mv	a0,s0
    711c:	464050ef          	jal	ra,c580 <__clzsi2>
    7120:	41e00713          	li	a4,1054
    7124:	00a00793          	li	a5,10
    7128:	40a70733          	sub	a4,a4,a0
    712c:	04a7c863          	blt	a5,a0,717c <__floatsidf+0x88>
    7130:	00b00793          	li	a5,11
    7134:	40a787b3          	sub	a5,a5,a0
    7138:	01550513          	addi	a0,a0,21 # 80000015 <soln_cnt0+0x7ffef539>
    713c:	00f457b3          	srl	a5,s0,a5
    7140:	00a41433          	sll	s0,s0,a0
    7144:	00048513          	mv	a0,s1
    7148:	00c79793          	slli	a5,a5,0xc
    714c:	00c7d793          	srli	a5,a5,0xc
    7150:	01471713          	slli	a4,a4,0x14
    7154:	01f51513          	slli	a0,a0,0x1f
    7158:	00f76733          	or	a4,a4,a5
    715c:	00c12083          	lw	ra,12(sp)
    7160:	00a767b3          	or	a5,a4,a0
    7164:	00040513          	mv	a0,s0
    7168:	00812403          	lw	s0,8(sp)
    716c:	00412483          	lw	s1,4(sp)
    7170:	00078593          	mv	a1,a5
    7174:	01010113          	addi	sp,sp,16
    7178:	00008067          	ret
    717c:	ff550513          	addi	a0,a0,-11
    7180:	00a417b3          	sll	a5,s0,a0
    7184:	00048513          	mv	a0,s1
    7188:	00000413          	li	s0,0
    718c:	fbdff06f          	j	7148 <__floatsidf+0x54>
    7190:	00000713          	li	a4,0
    7194:	00000793          	li	a5,0
    7198:	ff1ff06f          	j	7188 <__floatsidf+0x94>

0000719c <__addtf3>:
    719c:	f9010113          	addi	sp,sp,-112
    71a0:	0085a783          	lw	a5,8(a1) # 800008 <soln_cnt0+0x7ef52c>
    71a4:	05312e23          	sw	s3,92(sp)
    71a8:	00c5a983          	lw	s3,12(a1)
    71ac:	0005a683          	lw	a3,0(a1)
    71b0:	0045a703          	lw	a4,4(a1)
    71b4:	05412c23          	sw	s4,88(sp)
    71b8:	05712623          	sw	s7,76(sp)
    71bc:	00050a13          	mv	s4,a0
    71c0:	02f12c23          	sw	a5,56(sp)
    71c4:	00f12c23          	sw	a5,24(sp)
    71c8:	00062883          	lw	a7,0(a2) # 7ff00000 <soln_cnt0+0x7feef524>
    71cc:	01099793          	slli	a5,s3,0x10
    71d0:	00462503          	lw	a0,4(a2)
    71d4:	00862583          	lw	a1,8(a2)
    71d8:	00c62b83          	lw	s7,12(a2)
    71dc:	06812423          	sw	s0,104(sp)
    71e0:	0107d793          	srli	a5,a5,0x10
    71e4:	00199413          	slli	s0,s3,0x1
    71e8:	02d12823          	sw	a3,48(sp)
    71ec:	03312e23          	sw	s3,60(sp)
    71f0:	00d12823          	sw	a3,16(sp)
    71f4:	06112623          	sw	ra,108(sp)
    71f8:	06912223          	sw	s1,100(sp)
    71fc:	07212023          	sw	s2,96(sp)
    7200:	05512a23          	sw	s5,84(sp)
    7204:	05612823          	sw	s6,80(sp)
    7208:	05812423          	sw	s8,72(sp)
    720c:	05912223          	sw	s9,68(sp)
    7210:	02e12a23          	sw	a4,52(sp)
    7214:	00e12a23          	sw	a4,20(sp)
    7218:	00f12e23          	sw	a5,28(sp)
    721c:	01145413          	srli	s0,s0,0x11
    7220:	01f9d993          	srli	s3,s3,0x1f
    7224:	01010813          	addi	a6,sp,16
    7228:	01c10693          	addi	a3,sp,28
    722c:	0006a783          	lw	a5,0(a3)
    7230:	ffc6a703          	lw	a4,-4(a3)
    7234:	ffc68693          	addi	a3,a3,-4
    7238:	00379793          	slli	a5,a5,0x3
    723c:	01d75713          	srli	a4,a4,0x1d
    7240:	00e7e7b3          	or	a5,a5,a4
    7244:	00f6a223          	sw	a5,4(a3)
    7248:	fed812e3          	bne	a6,a3,722c <__addtf3+0x90>
    724c:	01012903          	lw	s2,16(sp)
    7250:	010b9793          	slli	a5,s7,0x10
    7254:	001b9b13          	slli	s6,s7,0x1
    7258:	00391913          	slli	s2,s2,0x3
    725c:	0107d793          	srli	a5,a5,0x10
    7260:	02a12a23          	sw	a0,52(sp)
    7264:	03712e23          	sw	s7,60(sp)
    7268:	02a12223          	sw	a0,36(sp)
    726c:	01212823          	sw	s2,16(sp)
    7270:	03112823          	sw	a7,48(sp)
    7274:	02b12c23          	sw	a1,56(sp)
    7278:	03112023          	sw	a7,32(sp)
    727c:	02b12423          	sw	a1,40(sp)
    7280:	02f12623          	sw	a5,44(sp)
    7284:	011b5b13          	srli	s6,s6,0x11
    7288:	01fbdb93          	srli	s7,s7,0x1f
    728c:	02010513          	addi	a0,sp,32
    7290:	02c10713          	addi	a4,sp,44
    7294:	00072783          	lw	a5,0(a4)
    7298:	ffc72603          	lw	a2,-4(a4)
    729c:	ffc70713          	addi	a4,a4,-4
    72a0:	00379793          	slli	a5,a5,0x3
    72a4:	01d65613          	srli	a2,a2,0x1d
    72a8:	00c7e7b3          	or	a5,a5,a2
    72ac:	00f72223          	sw	a5,4(a4)
    72b0:	fee512e3          	bne	a0,a4,7294 <__addtf3+0xf8>
    72b4:	02012483          	lw	s1,32(sp)
    72b8:	416405b3          	sub	a1,s0,s6
    72bc:	00349493          	slli	s1,s1,0x3
    72c0:	02912023          	sw	s1,32(sp)
    72c4:	117994e3          	bne	s3,s7,7bcc <__addtf3+0xa30>
    72c8:	2eb05463          	blez	a1,75b0 <__addtf3+0x414>
    72cc:	01412c03          	lw	s8,20(sp)
    72d0:	01812b83          	lw	s7,24(sp)
    72d4:	01c12a83          	lw	s5,28(sp)
    72d8:	0a0b1a63          	bnez	s6,738c <__addtf3+0x1f0>
    72dc:	02412603          	lw	a2,36(sp)
    72e0:	02812783          	lw	a5,40(sp)
    72e4:	02c12803          	lw	a6,44(sp)
    72e8:	00f666b3          	or	a3,a2,a5
    72ec:	0106e6b3          	or	a3,a3,a6
    72f0:	0096e6b3          	or	a3,a3,s1
    72f4:	00069e63          	bnez	a3,7310 <__addtf3+0x174>
    72f8:	03212823          	sw	s2,48(sp)
    72fc:	03812a23          	sw	s8,52(sp)
    7300:	03712c23          	sw	s7,56(sp)
    7304:	03512e23          	sw	s5,60(sp)
    7308:	00058413          	mv	s0,a1
    730c:	2ec0006f          	j	75f8 <__addtf3+0x45c>
    7310:	fff58693          	addi	a3,a1,-1
    7314:	04069863          	bnez	a3,7364 <__addtf3+0x1c8>
    7318:	009904b3          	add	s1,s2,s1
    731c:	01860633          	add	a2,a2,s8
    7320:	02912823          	sw	s1,48(sp)
    7324:	0124b4b3          	sltu	s1,s1,s2
    7328:	00960733          	add	a4,a2,s1
    732c:	02e12a23          	sw	a4,52(sp)
    7330:	01863633          	sltu	a2,a2,s8
    7334:	00973733          	sltu	a4,a4,s1
    7338:	00e66633          	or	a2,a2,a4
    733c:	017787b3          	add	a5,a5,s7
    7340:	00c78733          	add	a4,a5,a2
    7344:	02e12c23          	sw	a4,56(sp)
    7348:	0177b7b3          	sltu	a5,a5,s7
    734c:	00c73733          	sltu	a4,a4,a2
    7350:	00e7e7b3          	or	a5,a5,a4
    7354:	01580833          	add	a6,a6,s5
    7358:	010787b3          	add	a5,a5,a6
    735c:	00100413          	li	s0,1
    7360:	19c0006f          	j	74fc <__addtf3+0x360>
    7364:	000087b7          	lui	a5,0x8
    7368:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    736c:	f8f586e3          	beq	a1,a5,72f8 <__addtf3+0x15c>
    7370:	07400793          	li	a5,116
    7374:	04d7da63          	bge	a5,a3,73c8 <__addtf3+0x22c>
    7378:	02012623          	sw	zero,44(sp)
    737c:	02012423          	sw	zero,40(sp)
    7380:	02012223          	sw	zero,36(sp)
    7384:	00100793          	li	a5,1
    7388:	11c0006f          	j	74a4 <__addtf3+0x308>
    738c:	000087b7          	lui	a5,0x8
    7390:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7394:	00f41c63          	bne	s0,a5,73ac <__addtf3+0x210>
    7398:	03212823          	sw	s2,48(sp)
    739c:	03812a23          	sw	s8,52(sp)
    73a0:	03712c23          	sw	s7,56(sp)
    73a4:	03512e23          	sw	s5,60(sp)
    73a8:	2500006f          	j	75f8 <__addtf3+0x45c>
    73ac:	02c12783          	lw	a5,44(sp)
    73b0:	000806b7          	lui	a3,0x80
    73b4:	00d7e7b3          	or	a5,a5,a3
    73b8:	02f12623          	sw	a5,44(sp)
    73bc:	07400793          	li	a5,116
    73c0:	fab7cce3          	blt	a5,a1,7378 <__addtf3+0x1dc>
    73c4:	00058693          	mv	a3,a1
    73c8:	4056d793          	srai	a5,a3,0x5
    73cc:	00070593          	mv	a1,a4
    73d0:	00000493          	li	s1,0
    73d4:	00000613          	li	a2,0
    73d8:	02f61e63          	bne	a2,a5,7414 <__addtf3+0x278>
    73dc:	01f6f693          	andi	a3,a3,31
    73e0:	00279593          	slli	a1,a5,0x2
    73e4:	04069263          	bnez	a3,7428 <__addtf3+0x28c>
    73e8:	00300613          	li	a2,3
    73ec:	40f60633          	sub	a2,a2,a5
    73f0:	00b70833          	add	a6,a4,a1
    73f4:	00082803          	lw	a6,0(a6)
    73f8:	00168693          	addi	a3,a3,1 # 80001 <soln_cnt0+0x6f525>
    73fc:	00470713          	addi	a4,a4,4
    7400:	ff072e23          	sw	a6,-4(a4)
    7404:	fed656e3          	bge	a2,a3,73f0 <__addtf3+0x254>
    7408:	00400713          	li	a4,4
    740c:	40f707b3          	sub	a5,a4,a5
    7410:	06c0006f          	j	747c <__addtf3+0x2e0>
    7414:	0005a803          	lw	a6,0(a1)
    7418:	00160613          	addi	a2,a2,1
    741c:	00458593          	addi	a1,a1,4
    7420:	0104e4b3          	or	s1,s1,a6
    7424:	fb5ff06f          	j	73d8 <__addtf3+0x23c>
    7428:	04058613          	addi	a2,a1,64
    742c:	00260633          	add	a2,a2,sp
    7430:	fe062603          	lw	a2,-32(a2)
    7434:	02000893          	li	a7,32
    7438:	40d888b3          	sub	a7,a7,a3
    743c:	01161633          	sll	a2,a2,a7
    7440:	00c4e4b3          	or	s1,s1,a2
    7444:	00300613          	li	a2,3
    7448:	00b505b3          	add	a1,a0,a1
    744c:	00000313          	li	t1,0
    7450:	40f60633          	sub	a2,a2,a5
    7454:	00458593          	addi	a1,a1,4
    7458:	12c34a63          	blt	t1,a2,758c <__addtf3+0x3f0>
    745c:	00400713          	li	a4,4
    7460:	00261613          	slli	a2,a2,0x2
    7464:	40f707b3          	sub	a5,a4,a5
    7468:	04060713          	addi	a4,a2,64
    746c:	00270633          	add	a2,a4,sp
    7470:	02c12703          	lw	a4,44(sp)
    7474:	00d75733          	srl	a4,a4,a3
    7478:	fee62023          	sw	a4,-32(a2)
    747c:	00400613          	li	a2,4
    7480:	40f60633          	sub	a2,a2,a5
    7484:	00279793          	slli	a5,a5,0x2
    7488:	00f50533          	add	a0,a0,a5
    748c:	00261613          	slli	a2,a2,0x2
    7490:	00000593          	li	a1,0
    7494:	144050ef          	jal	ra,c5d8 <memset>
    7498:	02012703          	lw	a4,32(sp)
    749c:	009037b3          	snez	a5,s1
    74a0:	00f767b3          	or	a5,a4,a5
    74a4:	02f12023          	sw	a5,32(sp)
    74a8:	02012783          	lw	a5,32(sp)
    74ac:	02412703          	lw	a4,36(sp)
    74b0:	00f907b3          	add	a5,s2,a5
    74b4:	00ec0733          	add	a4,s8,a4
    74b8:	02f12823          	sw	a5,48(sp)
    74bc:	0127b7b3          	sltu	a5,a5,s2
    74c0:	00f706b3          	add	a3,a4,a5
    74c4:	02d12a23          	sw	a3,52(sp)
    74c8:	00f6b6b3          	sltu	a3,a3,a5
    74cc:	02812783          	lw	a5,40(sp)
    74d0:	01873733          	sltu	a4,a4,s8
    74d4:	00d76733          	or	a4,a4,a3
    74d8:	00fb87b3          	add	a5,s7,a5
    74dc:	00e786b3          	add	a3,a5,a4
    74e0:	02d12c23          	sw	a3,56(sp)
    74e4:	00e6b6b3          	sltu	a3,a3,a4
    74e8:	02c12703          	lw	a4,44(sp)
    74ec:	0177b7b3          	sltu	a5,a5,s7
    74f0:	00d7e7b3          	or	a5,a5,a3
    74f4:	00ea8733          	add	a4,s5,a4
    74f8:	00e787b3          	add	a5,a5,a4
    74fc:	00080737          	lui	a4,0x80
    7500:	02f12e23          	sw	a5,60(sp)
    7504:	00e7f733          	and	a4,a5,a4
    7508:	0e070863          	beqz	a4,75f8 <__addtf3+0x45c>
    750c:	fff80737          	lui	a4,0xfff80
    7510:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    7514:	00e7f7b3          	and	a5,a5,a4
    7518:	02f12e23          	sw	a5,60(sp)
    751c:	03012783          	lw	a5,48(sp)
    7520:	00140413          	addi	s0,s0,1
    7524:	03c10593          	addi	a1,sp,60
    7528:	01f79713          	slli	a4,a5,0x1f
    752c:	03010793          	addi	a5,sp,48
    7530:	0007a683          	lw	a3,0(a5)
    7534:	0047a603          	lw	a2,4(a5)
    7538:	00478793          	addi	a5,a5,4
    753c:	0016d693          	srli	a3,a3,0x1
    7540:	01f61613          	slli	a2,a2,0x1f
    7544:	00c6e6b3          	or	a3,a3,a2
    7548:	fed7ae23          	sw	a3,-4(a5)
    754c:	feb792e3          	bne	a5,a1,7530 <__addtf3+0x394>
    7550:	03c12783          	lw	a5,60(sp)
    7554:	0017d793          	srli	a5,a5,0x1
    7558:	02f12e23          	sw	a5,60(sp)
    755c:	00e037b3          	snez	a5,a4
    7560:	03012703          	lw	a4,48(sp)
    7564:	00f767b3          	or	a5,a4,a5
    7568:	02f12823          	sw	a5,48(sp)
    756c:	000087b7          	lui	a5,0x8
    7570:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7574:	08f41263          	bne	s0,a5,75f8 <__addtf3+0x45c>
    7578:	02012e23          	sw	zero,60(sp)
    757c:	02012c23          	sw	zero,56(sp)
    7580:	02012a23          	sw	zero,52(sp)
    7584:	02012823          	sw	zero,48(sp)
    7588:	0700006f          	j	75f8 <__addtf3+0x45c>
    758c:	ffc5a803          	lw	a6,-4(a1)
    7590:	0005ae03          	lw	t3,0(a1)
    7594:	00130313          	addi	t1,t1,1
    7598:	00d85833          	srl	a6,a6,a3
    759c:	011e1e33          	sll	t3,t3,a7
    75a0:	01c86833          	or	a6,a6,t3
    75a4:	01072023          	sw	a6,0(a4)
    75a8:	00470713          	addi	a4,a4,4
    75ac:	ea9ff06f          	j	7454 <__addtf3+0x2b8>
    75b0:	02412a83          	lw	s5,36(sp)
    75b4:	02812b83          	lw	s7,40(sp)
    75b8:	02c12c03          	lw	s8,44(sp)
    75bc:	40058063          	beqz	a1,79bc <__addtf3+0x820>
    75c0:	408b0633          	sub	a2,s6,s0
    75c4:	20041a63          	bnez	s0,77d8 <__addtf3+0x63c>
    75c8:	01412703          	lw	a4,20(sp)
    75cc:	01812783          	lw	a5,24(sp)
    75d0:	01c12503          	lw	a0,28(sp)
    75d4:	00f765b3          	or	a1,a4,a5
    75d8:	00a5e5b3          	or	a1,a1,a0
    75dc:	0125e5b3          	or	a1,a1,s2
    75e0:	18059063          	bnez	a1,7760 <__addtf3+0x5c4>
    75e4:	02912823          	sw	s1,48(sp)
    75e8:	03512a23          	sw	s5,52(sp)
    75ec:	03712c23          	sw	s7,56(sp)
    75f0:	03812e23          	sw	s8,60(sp)
    75f4:	00060413          	mv	s0,a2
    75f8:	03012783          	lw	a5,48(sp)
    75fc:	0077f713          	andi	a4,a5,7
    7600:	04070463          	beqz	a4,7648 <__addtf3+0x4ac>
    7604:	00f7f713          	andi	a4,a5,15
    7608:	00400693          	li	a3,4
    760c:	02d70e63          	beq	a4,a3,7648 <__addtf3+0x4ac>
    7610:	03412703          	lw	a4,52(sp)
    7614:	00478793          	addi	a5,a5,4
    7618:	02f12823          	sw	a5,48(sp)
    761c:	0047b793          	sltiu	a5,a5,4
    7620:	00e78733          	add	a4,a5,a4
    7624:	02e12a23          	sw	a4,52(sp)
    7628:	00f73733          	sltu	a4,a4,a5
    762c:	03812783          	lw	a5,56(sp)
    7630:	00f707b3          	add	a5,a4,a5
    7634:	02f12c23          	sw	a5,56(sp)
    7638:	00e7b7b3          	sltu	a5,a5,a4
    763c:	03c12703          	lw	a4,60(sp)
    7640:	00e787b3          	add	a5,a5,a4
    7644:	02f12e23          	sw	a5,60(sp)
    7648:	03c12783          	lw	a5,60(sp)
    764c:	00080737          	lui	a4,0x80
    7650:	00e7f733          	and	a4,a5,a4
    7654:	02070463          	beqz	a4,767c <__addtf3+0x4e0>
    7658:	00008737          	lui	a4,0x8
    765c:	00140413          	addi	s0,s0,1
    7660:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    7664:	00e41463          	bne	s0,a4,766c <__addtf3+0x4d0>
    7668:	0100106f          	j	8678 <__addtf3+0x14dc>
    766c:	fff80737          	lui	a4,0xfff80
    7670:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    7674:	00e7f7b3          	and	a5,a5,a4
    7678:	02f12e23          	sw	a5,60(sp)
    767c:	03010793          	addi	a5,sp,48
    7680:	03c10613          	addi	a2,sp,60
    7684:	0007a703          	lw	a4,0(a5)
    7688:	0047a683          	lw	a3,4(a5)
    768c:	00478793          	addi	a5,a5,4
    7690:	00375713          	srli	a4,a4,0x3
    7694:	01d69693          	slli	a3,a3,0x1d
    7698:	00d76733          	or	a4,a4,a3
    769c:	fee7ae23          	sw	a4,-4(a5)
    76a0:	fef612e3          	bne	a2,a5,7684 <__addtf3+0x4e8>
    76a4:	03c12703          	lw	a4,60(sp)
    76a8:	000086b7          	lui	a3,0x8
    76ac:	fff68793          	addi	a5,a3,-1 # 7fff <__addtf3+0xe63>
    76b0:	00375713          	srli	a4,a4,0x3
    76b4:	02e12e23          	sw	a4,60(sp)
    76b8:	02f41a63          	bne	s0,a5,76ec <__addtf3+0x550>
    76bc:	03412603          	lw	a2,52(sp)
    76c0:	03012783          	lw	a5,48(sp)
    76c4:	00c7e7b3          	or	a5,a5,a2
    76c8:	03812603          	lw	a2,56(sp)
    76cc:	00c7e7b3          	or	a5,a5,a2
    76d0:	00e7e7b3          	or	a5,a5,a4
    76d4:	00078c63          	beqz	a5,76ec <__addtf3+0x550>
    76d8:	02d12e23          	sw	a3,60(sp)
    76dc:	02012c23          	sw	zero,56(sp)
    76e0:	02012a23          	sw	zero,52(sp)
    76e4:	02012823          	sw	zero,48(sp)
    76e8:	00000993          	li	s3,0
    76ec:	03c12783          	lw	a5,60(sp)
    76f0:	01141413          	slli	s0,s0,0x11
    76f4:	01145413          	srli	s0,s0,0x11
    76f8:	00f11623          	sh	a5,12(sp)
    76fc:	03012783          	lw	a5,48(sp)
    7700:	00f99993          	slli	s3,s3,0xf
    7704:	0089e9b3          	or	s3,s3,s0
    7708:	00fa2023          	sw	a5,0(s4)
    770c:	03412783          	lw	a5,52(sp)
    7710:	01311723          	sh	s3,14(sp)
    7714:	06c12083          	lw	ra,108(sp)
    7718:	00fa2223          	sw	a5,4(s4)
    771c:	03812783          	lw	a5,56(sp)
    7720:	06812403          	lw	s0,104(sp)
    7724:	06412483          	lw	s1,100(sp)
    7728:	00fa2423          	sw	a5,8(s4)
    772c:	00c12783          	lw	a5,12(sp)
    7730:	06012903          	lw	s2,96(sp)
    7734:	05c12983          	lw	s3,92(sp)
    7738:	00fa2623          	sw	a5,12(s4)
    773c:	05412a83          	lw	s5,84(sp)
    7740:	05012b03          	lw	s6,80(sp)
    7744:	04c12b83          	lw	s7,76(sp)
    7748:	04812c03          	lw	s8,72(sp)
    774c:	04412c83          	lw	s9,68(sp)
    7750:	000a0513          	mv	a0,s4
    7754:	05812a03          	lw	s4,88(sp)
    7758:	07010113          	addi	sp,sp,112
    775c:	00008067          	ret
    7760:	fff60893          	addi	a7,a2,-1
    7764:	04089663          	bnez	a7,77b0 <__addtf3+0x614>
    7768:	00990933          	add	s2,s2,s1
    776c:	01570733          	add	a4,a4,s5
    7770:	03212823          	sw	s2,48(sp)
    7774:	00993933          	sltu	s2,s2,s1
    7778:	012706b3          	add	a3,a4,s2
    777c:	02d12a23          	sw	a3,52(sp)
    7780:	01573733          	sltu	a4,a4,s5
    7784:	0126b6b3          	sltu	a3,a3,s2
    7788:	00d76733          	or	a4,a4,a3
    778c:	017787b3          	add	a5,a5,s7
    7790:	00e786b3          	add	a3,a5,a4
    7794:	02d12c23          	sw	a3,56(sp)
    7798:	0177b7b3          	sltu	a5,a5,s7
    779c:	00e6b6b3          	sltu	a3,a3,a4
    77a0:	00d7e7b3          	or	a5,a5,a3
    77a4:	01850533          	add	a0,a0,s8
    77a8:	00a787b3          	add	a5,a5,a0
    77ac:	bb1ff06f          	j	735c <__addtf3+0x1c0>
    77b0:	000087b7          	lui	a5,0x8
    77b4:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    77b8:	e2f606e3          	beq	a2,a5,75e4 <__addtf3+0x448>
    77bc:	07400793          	li	a5,116
    77c0:	0517dc63          	bge	a5,a7,7818 <__addtf3+0x67c>
    77c4:	00012e23          	sw	zero,28(sp)
    77c8:	00012c23          	sw	zero,24(sp)
    77cc:	00012a23          	sw	zero,20(sp)
    77d0:	00100793          	li	a5,1
    77d4:	1640006f          	j	7938 <__addtf3+0x79c>
    77d8:	000087b7          	lui	a5,0x8
    77dc:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    77e0:	00fb1e63          	bne	s6,a5,77fc <__addtf3+0x660>
    77e4:	02912823          	sw	s1,48(sp)
    77e8:	03512a23          	sw	s5,52(sp)
    77ec:	03712c23          	sw	s7,56(sp)
    77f0:	03812e23          	sw	s8,60(sp)
    77f4:	000b0413          	mv	s0,s6
    77f8:	e01ff06f          	j	75f8 <__addtf3+0x45c>
    77fc:	01c12783          	lw	a5,28(sp)
    7800:	00080737          	lui	a4,0x80
    7804:	00e7e7b3          	or	a5,a5,a4
    7808:	00f12e23          	sw	a5,28(sp)
    780c:	07400793          	li	a5,116
    7810:	fac7cae3          	blt	a5,a2,77c4 <__addtf3+0x628>
    7814:	00060893          	mv	a7,a2
    7818:	41f8d793          	srai	a5,a7,0x1f
    781c:	01f7f793          	andi	a5,a5,31
    7820:	011787b3          	add	a5,a5,a7
    7824:	4057d793          	srai	a5,a5,0x5
    7828:	00068613          	mv	a2,a3
    782c:	00000413          	li	s0,0
    7830:	00000713          	li	a4,0
    7834:	04f74663          	blt	a4,a5,7880 <__addtf3+0x6e4>
    7838:	00078593          	mv	a1,a5
    783c:	0007d463          	bgez	a5,7844 <__addtf3+0x6a8>
    7840:	00000593          	li	a1,0
    7844:	01f8f513          	andi	a0,a7,31
    7848:	00279613          	slli	a2,a5,0x2
    784c:	04051463          	bnez	a0,7894 <__addtf3+0x6f8>
    7850:	00300593          	li	a1,3
    7854:	00000713          	li	a4,0
    7858:	40f585b3          	sub	a1,a1,a5
    785c:	00c68533          	add	a0,a3,a2
    7860:	00052503          	lw	a0,0(a0)
    7864:	00170713          	addi	a4,a4,1 # 80001 <soln_cnt0+0x6f525>
    7868:	00468693          	addi	a3,a3,4
    786c:	fea6ae23          	sw	a0,-4(a3)
    7870:	fee5d6e3          	bge	a1,a4,785c <__addtf3+0x6c0>
    7874:	00400713          	li	a4,4
    7878:	40f707b3          	sub	a5,a4,a5
    787c:	08c0006f          	j	7908 <__addtf3+0x76c>
    7880:	00062583          	lw	a1,0(a2)
    7884:	00170713          	addi	a4,a4,1
    7888:	00460613          	addi	a2,a2,4
    788c:	00b46433          	or	s0,s0,a1
    7890:	fa5ff06f          	j	7834 <__addtf3+0x698>
    7894:	80000737          	lui	a4,0x80000
    7898:	01f70713          	addi	a4,a4,31 # 8000001f <soln_cnt0+0x7ffef543>
    789c:	00e8f733          	and	a4,a7,a4
    78a0:	00075863          	bgez	a4,78b0 <__addtf3+0x714>
    78a4:	fff70713          	addi	a4,a4,-1
    78a8:	fe076713          	ori	a4,a4,-32
    78ac:	00170713          	addi	a4,a4,1
    78b0:	00259593          	slli	a1,a1,0x2
    78b4:	02000893          	li	a7,32
    78b8:	40e888b3          	sub	a7,a7,a4
    78bc:	04058713          	addi	a4,a1,64
    78c0:	002705b3          	add	a1,a4,sp
    78c4:	fd05a703          	lw	a4,-48(a1)
    78c8:	00c80633          	add	a2,a6,a2
    78cc:	00000313          	li	t1,0
    78d0:	01171733          	sll	a4,a4,a7
    78d4:	00e46433          	or	s0,s0,a4
    78d8:	00300713          	li	a4,3
    78dc:	40f70733          	sub	a4,a4,a5
    78e0:	00460613          	addi	a2,a2,4
    78e4:	0ae34a63          	blt	t1,a4,7998 <__addtf3+0x7fc>
    78e8:	00400693          	li	a3,4
    78ec:	40f687b3          	sub	a5,a3,a5
    78f0:	01c12683          	lw	a3,28(sp)
    78f4:	00271713          	slli	a4,a4,0x2
    78f8:	04070713          	addi	a4,a4,64
    78fc:	00270733          	add	a4,a4,sp
    7900:	00a6d6b3          	srl	a3,a3,a0
    7904:	fcd72823          	sw	a3,-48(a4)
    7908:	00400713          	li	a4,4
    790c:	00000613          	li	a2,0
    7910:	00f74663          	blt	a4,a5,791c <__addtf3+0x780>
    7914:	40f70733          	sub	a4,a4,a5
    7918:	00271613          	slli	a2,a4,0x2
    791c:	00279793          	slli	a5,a5,0x2
    7920:	00f80533          	add	a0,a6,a5
    7924:	00000593          	li	a1,0
    7928:	4b1040ef          	jal	ra,c5d8 <memset>
    792c:	01012703          	lw	a4,16(sp)
    7930:	008037b3          	snez	a5,s0
    7934:	00f767b3          	or	a5,a4,a5
    7938:	00f12823          	sw	a5,16(sp)
    793c:	01012783          	lw	a5,16(sp)
    7940:	01412703          	lw	a4,20(sp)
    7944:	000b0413          	mv	s0,s6
    7948:	00f487b3          	add	a5,s1,a5
    794c:	00ea8733          	add	a4,s5,a4
    7950:	02f12823          	sw	a5,48(sp)
    7954:	0097b7b3          	sltu	a5,a5,s1
    7958:	00f706b3          	add	a3,a4,a5
    795c:	02d12a23          	sw	a3,52(sp)
    7960:	00f6b6b3          	sltu	a3,a3,a5
    7964:	01812783          	lw	a5,24(sp)
    7968:	01573733          	sltu	a4,a4,s5
    796c:	00d76733          	or	a4,a4,a3
    7970:	00fb87b3          	add	a5,s7,a5
    7974:	00e786b3          	add	a3,a5,a4
    7978:	02d12c23          	sw	a3,56(sp)
    797c:	00e6b6b3          	sltu	a3,a3,a4
    7980:	01c12703          	lw	a4,28(sp)
    7984:	0177b7b3          	sltu	a5,a5,s7
    7988:	00d7e7b3          	or	a5,a5,a3
    798c:	00ec0733          	add	a4,s8,a4
    7990:	00e787b3          	add	a5,a5,a4
    7994:	b69ff06f          	j	74fc <__addtf3+0x360>
    7998:	ffc62583          	lw	a1,-4(a2)
    799c:	00062e03          	lw	t3,0(a2)
    79a0:	00130313          	addi	t1,t1,1
    79a4:	00a5d5b3          	srl	a1,a1,a0
    79a8:	011e1e33          	sll	t3,t3,a7
    79ac:	01c5e5b3          	or	a1,a1,t3
    79b0:	00b6a023          	sw	a1,0(a3)
    79b4:	00468693          	addi	a3,a3,4
    79b8:	f29ff06f          	j	78e0 <__addtf3+0x744>
    79bc:	00008837          	lui	a6,0x8
    79c0:	00140693          	addi	a3,s0,1
    79c4:	ffe80893          	addi	a7,a6,-2 # 7ffe <__addtf3+0xe62>
    79c8:	0116f8b3          	and	a7,a3,a7
    79cc:	01412503          	lw	a0,20(sp)
    79d0:	01812583          	lw	a1,24(sp)
    79d4:	01c12703          	lw	a4,28(sp)
    79d8:	03010793          	addi	a5,sp,48
    79dc:	03c10613          	addi	a2,sp,60
    79e0:	14089863          	bnez	a7,7b30 <__addtf3+0x994>
    79e4:	00b566b3          	or	a3,a0,a1
    79e8:	00e6e6b3          	or	a3,a3,a4
    79ec:	0126e6b3          	or	a3,a3,s2
    79f0:	0a041863          	bnez	s0,7aa0 <__addtf3+0x904>
    79f4:	00069c63          	bnez	a3,7a0c <__addtf3+0x870>
    79f8:	02912823          	sw	s1,48(sp)
    79fc:	03512a23          	sw	s5,52(sp)
    7a00:	03712c23          	sw	s7,56(sp)
    7a04:	03812e23          	sw	s8,60(sp)
    7a08:	bf1ff06f          	j	75f8 <__addtf3+0x45c>
    7a0c:	017ae7b3          	or	a5,s5,s7
    7a10:	0187e7b3          	or	a5,a5,s8
    7a14:	0097e7b3          	or	a5,a5,s1
    7a18:	00079c63          	bnez	a5,7a30 <__addtf3+0x894>
    7a1c:	03212823          	sw	s2,48(sp)
    7a20:	02a12a23          	sw	a0,52(sp)
    7a24:	02b12c23          	sw	a1,56(sp)
    7a28:	02e12e23          	sw	a4,60(sp)
    7a2c:	bcdff06f          	j	75f8 <__addtf3+0x45c>
    7a30:	009904b3          	add	s1,s2,s1
    7a34:	01550ab3          	add	s5,a0,s5
    7a38:	02912823          	sw	s1,48(sp)
    7a3c:	0124b4b3          	sltu	s1,s1,s2
    7a40:	009a87b3          	add	a5,s5,s1
    7a44:	02f12a23          	sw	a5,52(sp)
    7a48:	00aabab3          	sltu	s5,s5,a0
    7a4c:	0097b7b3          	sltu	a5,a5,s1
    7a50:	00faeab3          	or	s5,s5,a5
    7a54:	01758bb3          	add	s7,a1,s7
    7a58:	015b87b3          	add	a5,s7,s5
    7a5c:	02f12c23          	sw	a5,56(sp)
    7a60:	00bbbbb3          	sltu	s7,s7,a1
    7a64:	0157b7b3          	sltu	a5,a5,s5
    7a68:	00fbebb3          	or	s7,s7,a5
    7a6c:	01870733          	add	a4,a4,s8
    7a70:	00eb8bb3          	add	s7,s7,a4
    7a74:	000807b7          	lui	a5,0x80
    7a78:	00fbf7b3          	and	a5,s7,a5
    7a7c:	00079663          	bnez	a5,7a88 <__addtf3+0x8ec>
    7a80:	03712e23          	sw	s7,60(sp)
    7a84:	b75ff06f          	j	75f8 <__addtf3+0x45c>
    7a88:	fff807b7          	lui	a5,0xfff80
    7a8c:	fff78793          	addi	a5,a5,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    7a90:	00fbfbb3          	and	s7,s7,a5
    7a94:	03712e23          	sw	s7,60(sp)
    7a98:	00100413          	li	s0,1
    7a9c:	b5dff06f          	j	75f8 <__addtf3+0x45c>
    7aa0:	00069e63          	bnez	a3,7abc <__addtf3+0x920>
    7aa4:	02912823          	sw	s1,48(sp)
    7aa8:	03512a23          	sw	s5,52(sp)
    7aac:	03712c23          	sw	s7,56(sp)
    7ab0:	03812e23          	sw	s8,60(sp)
    7ab4:	fff80413          	addi	s0,a6,-1
    7ab8:	b41ff06f          	j	75f8 <__addtf3+0x45c>
    7abc:	017aeab3          	or	s5,s5,s7
    7ac0:	018aeab3          	or	s5,s5,s8
    7ac4:	009aeab3          	or	s5,s5,s1
    7ac8:	000a9c63          	bnez	s5,7ae0 <__addtf3+0x944>
    7acc:	03212823          	sw	s2,48(sp)
    7ad0:	02a12a23          	sw	a0,52(sp)
    7ad4:	02b12c23          	sw	a1,56(sp)
    7ad8:	02e12e23          	sw	a4,60(sp)
    7adc:	fd9ff06f          	j	7ab4 <__addtf3+0x918>
    7ae0:	03012e23          	sw	a6,60(sp)
    7ae4:	02012c23          	sw	zero,56(sp)
    7ae8:	02012a23          	sw	zero,52(sp)
    7aec:	02012823          	sw	zero,48(sp)
    7af0:	00060713          	mv	a4,a2
    7af4:	00072683          	lw	a3,0(a4)
    7af8:	ffc72603          	lw	a2,-4(a4)
    7afc:	ffc70713          	addi	a4,a4,-4
    7b00:	00369693          	slli	a3,a3,0x3
    7b04:	01d65613          	srli	a2,a2,0x1d
    7b08:	00c6e6b3          	or	a3,a3,a2
    7b0c:	00d72223          	sw	a3,4(a4)
    7b10:	fee792e3          	bne	a5,a4,7af4 <__addtf3+0x958>
    7b14:	03012783          	lw	a5,48(sp)
    7b18:	00008437          	lui	s0,0x8
    7b1c:	00000993          	li	s3,0
    7b20:	00379793          	slli	a5,a5,0x3
    7b24:	02f12823          	sw	a5,48(sp)
    7b28:	fff40413          	addi	s0,s0,-1 # 7fff <__addtf3+0xe63>
    7b2c:	acdff06f          	j	75f8 <__addtf3+0x45c>
    7b30:	009904b3          	add	s1,s2,s1
    7b34:	01550ab3          	add	s5,a0,s5
    7b38:	02912823          	sw	s1,48(sp)
    7b3c:	0124b4b3          	sltu	s1,s1,s2
    7b40:	009a8833          	add	a6,s5,s1
    7b44:	03012a23          	sw	a6,52(sp)
    7b48:	00aabab3          	sltu	s5,s5,a0
    7b4c:	00983833          	sltu	a6,a6,s1
    7b50:	010aeab3          	or	s5,s5,a6
    7b54:	01758bb3          	add	s7,a1,s7
    7b58:	015b8533          	add	a0,s7,s5
    7b5c:	02a12c23          	sw	a0,56(sp)
    7b60:	00bbbbb3          	sltu	s7,s7,a1
    7b64:	01553533          	sltu	a0,a0,s5
    7b68:	00abebb3          	or	s7,s7,a0
    7b6c:	01870733          	add	a4,a4,s8
    7b70:	00eb8bb3          	add	s7,s7,a4
    7b74:	03712e23          	sw	s7,60(sp)
    7b78:	0007a703          	lw	a4,0(a5)
    7b7c:	0047a583          	lw	a1,4(a5)
    7b80:	00478793          	addi	a5,a5,4
    7b84:	00175713          	srli	a4,a4,0x1
    7b88:	01f59593          	slli	a1,a1,0x1f
    7b8c:	00b76733          	or	a4,a4,a1
    7b90:	fee7ae23          	sw	a4,-4(a5)
    7b94:	fef612e3          	bne	a2,a5,7b78 <__addtf3+0x9dc>
    7b98:	00008737          	lui	a4,0x8
    7b9c:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    7ba0:	03c12783          	lw	a5,60(sp)
    7ba4:	00e68a63          	beq	a3,a4,7bb8 <__addtf3+0xa1c>
    7ba8:	0017d793          	srli	a5,a5,0x1
    7bac:	02f12e23          	sw	a5,60(sp)
    7bb0:	00068413          	mv	s0,a3
    7bb4:	a45ff06f          	j	75f8 <__addtf3+0x45c>
    7bb8:	02012e23          	sw	zero,60(sp)
    7bbc:	02012c23          	sw	zero,56(sp)
    7bc0:	02012a23          	sw	zero,52(sp)
    7bc4:	02012823          	sw	zero,48(sp)
    7bc8:	fe9ff06f          	j	7bb0 <__addtf3+0xa14>
    7bcc:	26b05863          	blez	a1,7e3c <__addtf3+0xca0>
    7bd0:	01412c03          	lw	s8,20(sp)
    7bd4:	01812b83          	lw	s7,24(sp)
    7bd8:	01c12a83          	lw	s5,28(sp)
    7bdc:	0a0b1263          	bnez	s6,7c80 <__addtf3+0xae4>
    7be0:	02412603          	lw	a2,36(sp)
    7be4:	02812803          	lw	a6,40(sp)
    7be8:	02c12783          	lw	a5,44(sp)
    7bec:	010666b3          	or	a3,a2,a6
    7bf0:	00f6e6b3          	or	a3,a3,a5
    7bf4:	0096e6b3          	or	a3,a3,s1
    7bf8:	f0068063          	beqz	a3,72f8 <__addtf3+0x15c>
    7bfc:	fff58893          	addi	a7,a1,-1
    7c00:	04089c63          	bnez	a7,7c58 <__addtf3+0xabc>
    7c04:	40990733          	sub	a4,s2,s1
    7c08:	40cc06b3          	sub	a3,s8,a2
    7c0c:	00e935b3          	sltu	a1,s2,a4
    7c10:	00dc3533          	sltu	a0,s8,a3
    7c14:	40b686b3          	sub	a3,a3,a1
    7c18:	00000593          	li	a1,0
    7c1c:	00e97663          	bgeu	s2,a4,7c28 <__addtf3+0xa8c>
    7c20:	41860633          	sub	a2,a2,s8
    7c24:	00163593          	seqz	a1,a2
    7c28:	00a5e5b3          	or	a1,a1,a0
    7c2c:	410b8633          	sub	a2,s7,a6
    7c30:	00cbb533          	sltu	a0,s7,a2
    7c34:	40b60633          	sub	a2,a2,a1
    7c38:	00058663          	beqz	a1,7c44 <__addtf3+0xaa8>
    7c3c:	41780833          	sub	a6,a6,s7
    7c40:	00183893          	seqz	a7,a6
    7c44:	40fa87b3          	sub	a5,s5,a5
    7c48:	00a8e5b3          	or	a1,a7,a0
    7c4c:	40b787b3          	sub	a5,a5,a1
    7c50:	00100413          	li	s0,1
    7c54:	1980006f          	j	7dec <__addtf3+0xc50>
    7c58:	000087b7          	lui	a5,0x8
    7c5c:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7c60:	e8f58c63          	beq	a1,a5,72f8 <__addtf3+0x15c>
    7c64:	07400793          	li	a5,116
    7c68:	0517d063          	bge	a5,a7,7ca8 <__addtf3+0xb0c>
    7c6c:	02012623          	sw	zero,44(sp)
    7c70:	02012423          	sw	zero,40(sp)
    7c74:	02012223          	sw	zero,36(sp)
    7c78:	00100793          	li	a5,1
    7c7c:	10c0006f          	j	7d88 <__addtf3+0xbec>
    7c80:	000087b7          	lui	a5,0x8
    7c84:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7c88:	f0f40863          	beq	s0,a5,7398 <__addtf3+0x1fc>
    7c8c:	02c12783          	lw	a5,44(sp)
    7c90:	000806b7          	lui	a3,0x80
    7c94:	00d7e7b3          	or	a5,a5,a3
    7c98:	02f12623          	sw	a5,44(sp)
    7c9c:	07400793          	li	a5,116
    7ca0:	fcb7c6e3          	blt	a5,a1,7c6c <__addtf3+0xad0>
    7ca4:	00058893          	mv	a7,a1
    7ca8:	4058d793          	srai	a5,a7,0x5
    7cac:	00070613          	mv	a2,a4
    7cb0:	00000493          	li	s1,0
    7cb4:	00000693          	li	a3,0
    7cb8:	04f69063          	bne	a3,a5,7cf8 <__addtf3+0xb5c>
    7cbc:	01f8f893          	andi	a7,a7,31
    7cc0:	00279613          	slli	a2,a5,0x2
    7cc4:	04089463          	bnez	a7,7d0c <__addtf3+0xb70>
    7cc8:	00300593          	li	a1,3
    7ccc:	00000693          	li	a3,0
    7cd0:	40f585b3          	sub	a1,a1,a5
    7cd4:	00c70833          	add	a6,a4,a2
    7cd8:	00082803          	lw	a6,0(a6)
    7cdc:	00168693          	addi	a3,a3,1 # 80001 <soln_cnt0+0x6f525>
    7ce0:	00470713          	addi	a4,a4,4
    7ce4:	ff072e23          	sw	a6,-4(a4)
    7ce8:	fed5d6e3          	bge	a1,a3,7cd4 <__addtf3+0xb38>
    7cec:	00400713          	li	a4,4
    7cf0:	40f707b3          	sub	a5,a4,a5
    7cf4:	06c0006f          	j	7d60 <__addtf3+0xbc4>
    7cf8:	00062583          	lw	a1,0(a2)
    7cfc:	00168693          	addi	a3,a3,1
    7d00:	00460613          	addi	a2,a2,4
    7d04:	00b4e4b3          	or	s1,s1,a1
    7d08:	fb1ff06f          	j	7cb8 <__addtf3+0xb1c>
    7d0c:	04060693          	addi	a3,a2,64
    7d10:	002686b3          	add	a3,a3,sp
    7d14:	fe06a683          	lw	a3,-32(a3)
    7d18:	02000813          	li	a6,32
    7d1c:	41180833          	sub	a6,a6,a7
    7d20:	010696b3          	sll	a3,a3,a6
    7d24:	00d4e4b3          	or	s1,s1,a3
    7d28:	00300693          	li	a3,3
    7d2c:	00c50633          	add	a2,a0,a2
    7d30:	00000313          	li	t1,0
    7d34:	40f686b3          	sub	a3,a3,a5
    7d38:	00460613          	addi	a2,a2,4
    7d3c:	0cd34e63          	blt	t1,a3,7e18 <__addtf3+0xc7c>
    7d40:	00400713          	li	a4,4
    7d44:	00269693          	slli	a3,a3,0x2
    7d48:	40f707b3          	sub	a5,a4,a5
    7d4c:	04068713          	addi	a4,a3,64
    7d50:	002706b3          	add	a3,a4,sp
    7d54:	02c12703          	lw	a4,44(sp)
    7d58:	01175733          	srl	a4,a4,a7
    7d5c:	fee6a023          	sw	a4,-32(a3)
    7d60:	00400613          	li	a2,4
    7d64:	40f60633          	sub	a2,a2,a5
    7d68:	00279793          	slli	a5,a5,0x2
    7d6c:	00f50533          	add	a0,a0,a5
    7d70:	00261613          	slli	a2,a2,0x2
    7d74:	00000593          	li	a1,0
    7d78:	061040ef          	jal	ra,c5d8 <memset>
    7d7c:	02012703          	lw	a4,32(sp)
    7d80:	009037b3          	snez	a5,s1
    7d84:	00f767b3          	or	a5,a4,a5
    7d88:	02f12023          	sw	a5,32(sp)
    7d8c:	02012703          	lw	a4,32(sp)
    7d90:	02412603          	lw	a2,36(sp)
    7d94:	40e90733          	sub	a4,s2,a4
    7d98:	40cc06b3          	sub	a3,s8,a2
    7d9c:	00e937b3          	sltu	a5,s2,a4
    7da0:	00dc35b3          	sltu	a1,s8,a3
    7da4:	40f686b3          	sub	a3,a3,a5
    7da8:	00000793          	li	a5,0
    7dac:	00e97663          	bgeu	s2,a4,7db8 <__addtf3+0xc1c>
    7db0:	41860633          	sub	a2,a2,s8
    7db4:	00163793          	seqz	a5,a2
    7db8:	02812503          	lw	a0,40(sp)
    7dbc:	00b7e7b3          	or	a5,a5,a1
    7dc0:	00000593          	li	a1,0
    7dc4:	40ab8633          	sub	a2,s7,a0
    7dc8:	00cbb833          	sltu	a6,s7,a2
    7dcc:	40f60633          	sub	a2,a2,a5
    7dd0:	00078663          	beqz	a5,7ddc <__addtf3+0xc40>
    7dd4:	41750533          	sub	a0,a0,s7
    7dd8:	00153593          	seqz	a1,a0
    7ddc:	02c12783          	lw	a5,44(sp)
    7de0:	0105e5b3          	or	a1,a1,a6
    7de4:	40fa87b3          	sub	a5,s5,a5
    7de8:	40b787b3          	sub	a5,a5,a1
    7dec:	02e12823          	sw	a4,48(sp)
    7df0:	00080737          	lui	a4,0x80
    7df4:	02d12a23          	sw	a3,52(sp)
    7df8:	02f12e23          	sw	a5,60(sp)
    7dfc:	02c12c23          	sw	a2,56(sp)
    7e00:	00e7f6b3          	and	a3,a5,a4
    7e04:	fe068a63          	beqz	a3,75f8 <__addtf3+0x45c>
    7e08:	fff70713          	addi	a4,a4,-1 # 7ffff <soln_cnt0+0x6f523>
    7e0c:	00e7f7b3          	and	a5,a5,a4
    7e10:	02f12e23          	sw	a5,60(sp)
    7e14:	5ac0006f          	j	83c0 <__addtf3+0x1224>
    7e18:	ffc62583          	lw	a1,-4(a2)
    7e1c:	00062e03          	lw	t3,0(a2)
    7e20:	00130313          	addi	t1,t1,1
    7e24:	0115d5b3          	srl	a1,a1,a7
    7e28:	010e1e33          	sll	t3,t3,a6
    7e2c:	01c5e5b3          	or	a1,a1,t3
    7e30:	00b72023          	sw	a1,0(a4)
    7e34:	00470713          	addi	a4,a4,4
    7e38:	f01ff06f          	j	7d38 <__addtf3+0xb9c>
    7e3c:	02412a83          	lw	s5,36(sp)
    7e40:	02812c03          	lw	s8,40(sp)
    7e44:	02c12c83          	lw	s9,44(sp)
    7e48:	2c058063          	beqz	a1,8108 <__addtf3+0xf6c>
    7e4c:	408b0733          	sub	a4,s6,s0
    7e50:	0a041a63          	bnez	s0,7f04 <__addtf3+0xd68>
    7e54:	01412603          	lw	a2,20(sp)
    7e58:	01812583          	lw	a1,24(sp)
    7e5c:	01c12783          	lw	a5,28(sp)
    7e60:	00b66533          	or	a0,a2,a1
    7e64:	00f56533          	or	a0,a0,a5
    7e68:	01256533          	or	a0,a0,s2
    7e6c:	02051063          	bnez	a0,7e8c <__addtf3+0xcf0>
    7e70:	02912823          	sw	s1,48(sp)
    7e74:	03512a23          	sw	s5,52(sp)
    7e78:	03812c23          	sw	s8,56(sp)
    7e7c:	03912e23          	sw	s9,60(sp)
    7e80:	00070413          	mv	s0,a4
    7e84:	000b8993          	mv	s3,s7
    7e88:	f70ff06f          	j	75f8 <__addtf3+0x45c>
    7e8c:	fff70893          	addi	a7,a4,-1
    7e90:	04089c63          	bnez	a7,7ee8 <__addtf3+0xd4c>
    7e94:	41248733          	sub	a4,s1,s2
    7e98:	40ca86b3          	sub	a3,s5,a2
    7e9c:	00e4b533          	sltu	a0,s1,a4
    7ea0:	00dab833          	sltu	a6,s5,a3
    7ea4:	40a686b3          	sub	a3,a3,a0
    7ea8:	00000513          	li	a0,0
    7eac:	00e4f663          	bgeu	s1,a4,7eb8 <__addtf3+0xd1c>
    7eb0:	41560633          	sub	a2,a2,s5
    7eb4:	00163513          	seqz	a0,a2
    7eb8:	01056533          	or	a0,a0,a6
    7ebc:	40bc0633          	sub	a2,s8,a1
    7ec0:	00cc3833          	sltu	a6,s8,a2
    7ec4:	40a60633          	sub	a2,a2,a0
    7ec8:	00050663          	beqz	a0,7ed4 <__addtf3+0xd38>
    7ecc:	418585b3          	sub	a1,a1,s8
    7ed0:	0015b893          	seqz	a7,a1
    7ed4:	40fc87b3          	sub	a5,s9,a5
    7ed8:	0108e5b3          	or	a1,a7,a6
    7edc:	40b787b3          	sub	a5,a5,a1
    7ee0:	000b8993          	mv	s3,s7
    7ee4:	d6dff06f          	j	7c50 <__addtf3+0xab4>
    7ee8:	000087b7          	lui	a5,0x8
    7eec:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7ef0:	f8f700e3          	beq	a4,a5,7e70 <__addtf3+0xcd4>
    7ef4:	07400793          	li	a5,116
    7ef8:	1f17ce63          	blt	a5,a7,80f4 <__addtf3+0xf58>
    7efc:	00088713          	mv	a4,a7
    7f00:	0400006f          	j	7f40 <__addtf3+0xda4>
    7f04:	000087b7          	lui	a5,0x8
    7f08:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    7f0c:	00fb1e63          	bne	s6,a5,7f28 <__addtf3+0xd8c>
    7f10:	02912823          	sw	s1,48(sp)
    7f14:	03512a23          	sw	s5,52(sp)
    7f18:	03812c23          	sw	s8,56(sp)
    7f1c:	03912e23          	sw	s9,60(sp)
    7f20:	000b0413          	mv	s0,s6
    7f24:	f61ff06f          	j	7e84 <__addtf3+0xce8>
    7f28:	01c12783          	lw	a5,28(sp)
    7f2c:	00080637          	lui	a2,0x80
    7f30:	00c7e7b3          	or	a5,a5,a2
    7f34:	00f12e23          	sw	a5,28(sp)
    7f38:	07400793          	li	a5,116
    7f3c:	1ae7cc63          	blt	a5,a4,80f4 <__addtf3+0xf58>
    7f40:	41f75793          	srai	a5,a4,0x1f
    7f44:	01f7f793          	andi	a5,a5,31
    7f48:	00e787b3          	add	a5,a5,a4
    7f4c:	4057d793          	srai	a5,a5,0x5
    7f50:	00068593          	mv	a1,a3
    7f54:	00000413          	li	s0,0
    7f58:	00000613          	li	a2,0
    7f5c:	04f64663          	blt	a2,a5,7fa8 <__addtf3+0xe0c>
    7f60:	00078593          	mv	a1,a5
    7f64:	0007d463          	bgez	a5,7f6c <__addtf3+0xdd0>
    7f68:	00000593          	li	a1,0
    7f6c:	01f77893          	andi	a7,a4,31
    7f70:	00279613          	slli	a2,a5,0x2
    7f74:	04089463          	bnez	a7,7fbc <__addtf3+0xe20>
    7f78:	00300593          	li	a1,3
    7f7c:	00000713          	li	a4,0
    7f80:	40f585b3          	sub	a1,a1,a5
    7f84:	00c68533          	add	a0,a3,a2
    7f88:	00052503          	lw	a0,0(a0)
    7f8c:	00170713          	addi	a4,a4,1
    7f90:	00468693          	addi	a3,a3,4
    7f94:	fea6ae23          	sw	a0,-4(a3)
    7f98:	fee5d6e3          	bge	a1,a4,7f84 <__addtf3+0xde8>
    7f9c:	00400713          	li	a4,4
    7fa0:	40f707b3          	sub	a5,a4,a5
    7fa4:	08c0006f          	j	8030 <__addtf3+0xe94>
    7fa8:	0005a503          	lw	a0,0(a1)
    7fac:	00160613          	addi	a2,a2,1 # 80001 <soln_cnt0+0x6f525>
    7fb0:	00458593          	addi	a1,a1,4
    7fb4:	00a46433          	or	s0,s0,a0
    7fb8:	fa5ff06f          	j	7f5c <__addtf3+0xdc0>
    7fbc:	80000537          	lui	a0,0x80000
    7fc0:	01f50513          	addi	a0,a0,31 # 8000001f <soln_cnt0+0x7ffef543>
    7fc4:	00a77733          	and	a4,a4,a0
    7fc8:	00075863          	bgez	a4,7fd8 <__addtf3+0xe3c>
    7fcc:	fff70713          	addi	a4,a4,-1
    7fd0:	fe076713          	ori	a4,a4,-32
    7fd4:	00170713          	addi	a4,a4,1
    7fd8:	00259593          	slli	a1,a1,0x2
    7fdc:	02000513          	li	a0,32
    7fe0:	40e50533          	sub	a0,a0,a4
    7fe4:	04058713          	addi	a4,a1,64
    7fe8:	002705b3          	add	a1,a4,sp
    7fec:	fd05a703          	lw	a4,-48(a1)
    7ff0:	00c80633          	add	a2,a6,a2
    7ff4:	00000313          	li	t1,0
    7ff8:	00a71733          	sll	a4,a4,a0
    7ffc:	00e46433          	or	s0,s0,a4
    8000:	00300713          	li	a4,3
    8004:	40f70733          	sub	a4,a4,a5
    8008:	00460613          	addi	a2,a2,4
    800c:	0ce34263          	blt	t1,a4,80d0 <__addtf3+0xf34>
    8010:	00400693          	li	a3,4
    8014:	40f687b3          	sub	a5,a3,a5
    8018:	01c12683          	lw	a3,28(sp)
    801c:	00271713          	slli	a4,a4,0x2
    8020:	04070713          	addi	a4,a4,64
    8024:	00270733          	add	a4,a4,sp
    8028:	0116d6b3          	srl	a3,a3,a7
    802c:	fcd72823          	sw	a3,-48(a4)
    8030:	00400713          	li	a4,4
    8034:	00000613          	li	a2,0
    8038:	00f74663          	blt	a4,a5,8044 <__addtf3+0xea8>
    803c:	40f70733          	sub	a4,a4,a5
    8040:	00271613          	slli	a2,a4,0x2
    8044:	00279793          	slli	a5,a5,0x2
    8048:	00f80533          	add	a0,a6,a5
    804c:	00000593          	li	a1,0
    8050:	588040ef          	jal	ra,c5d8 <memset>
    8054:	01012703          	lw	a4,16(sp)
    8058:	008037b3          	snez	a5,s0
    805c:	00f767b3          	or	a5,a4,a5
    8060:	00f12823          	sw	a5,16(sp)
    8064:	01012703          	lw	a4,16(sp)
    8068:	01412603          	lw	a2,20(sp)
    806c:	40e48733          	sub	a4,s1,a4
    8070:	40ca86b3          	sub	a3,s5,a2
    8074:	00e4b7b3          	sltu	a5,s1,a4
    8078:	00dab5b3          	sltu	a1,s5,a3
    807c:	40f686b3          	sub	a3,a3,a5
    8080:	00000793          	li	a5,0
    8084:	00e4f663          	bgeu	s1,a4,8090 <__addtf3+0xef4>
    8088:	41560633          	sub	a2,a2,s5
    808c:	00163793          	seqz	a5,a2
    8090:	01812503          	lw	a0,24(sp)
    8094:	00b7e7b3          	or	a5,a5,a1
    8098:	00000593          	li	a1,0
    809c:	40ac0633          	sub	a2,s8,a0
    80a0:	00cc3833          	sltu	a6,s8,a2
    80a4:	40f60633          	sub	a2,a2,a5
    80a8:	00078663          	beqz	a5,80b4 <__addtf3+0xf18>
    80ac:	41850533          	sub	a0,a0,s8
    80b0:	00153593          	seqz	a1,a0
    80b4:	01c12783          	lw	a5,28(sp)
    80b8:	0105e5b3          	or	a1,a1,a6
    80bc:	000b0413          	mv	s0,s6
    80c0:	40fc87b3          	sub	a5,s9,a5
    80c4:	40b787b3          	sub	a5,a5,a1
    80c8:	000b8993          	mv	s3,s7
    80cc:	d21ff06f          	j	7dec <__addtf3+0xc50>
    80d0:	ffc62583          	lw	a1,-4(a2)
    80d4:	00062e03          	lw	t3,0(a2)
    80d8:	00130313          	addi	t1,t1,1
    80dc:	0115d5b3          	srl	a1,a1,a7
    80e0:	00ae1e33          	sll	t3,t3,a0
    80e4:	01c5e5b3          	or	a1,a1,t3
    80e8:	00b6a023          	sw	a1,0(a3)
    80ec:	00468693          	addi	a3,a3,4
    80f0:	f19ff06f          	j	8008 <__addtf3+0xe6c>
    80f4:	00012e23          	sw	zero,28(sp)
    80f8:	00012c23          	sw	zero,24(sp)
    80fc:	00012a23          	sw	zero,20(sp)
    8100:	00100793          	li	a5,1
    8104:	f5dff06f          	j	8060 <__addtf3+0xec4>
    8108:	00008537          	lui	a0,0x8
    810c:	ffe50713          	addi	a4,a0,-2 # 7ffe <__addtf3+0xe62>
    8110:	00140793          	addi	a5,s0,1
    8114:	00e7f7b3          	and	a5,a5,a4
    8118:	01812683          	lw	a3,24(sp)
    811c:	01412703          	lw	a4,20(sp)
    8120:	01c12603          	lw	a2,28(sp)
    8124:	1e079063          	bnez	a5,8304 <__addtf3+0x1168>
    8128:	00d765b3          	or	a1,a4,a3
    812c:	018ae7b3          	or	a5,s5,s8
    8130:	00c5e5b3          	or	a1,a1,a2
    8134:	0197e7b3          	or	a5,a5,s9
    8138:	0125e5b3          	or	a1,a1,s2
    813c:	0097e7b3          	or	a5,a5,s1
    8140:	10041a63          	bnez	s0,8254 <__addtf3+0x10b8>
    8144:	02059463          	bnez	a1,816c <__addtf3+0xfd0>
    8148:	02912823          	sw	s1,48(sp)
    814c:	03512a23          	sw	s5,52(sp)
    8150:	03812c23          	sw	s8,56(sp)
    8154:	03912e23          	sw	s9,60(sp)
    8158:	000b8993          	mv	s3,s7
    815c:	c8079e63          	bnez	a5,75f8 <__addtf3+0x45c>
    8160:	00000413          	li	s0,0
    8164:	00000993          	li	s3,0
    8168:	c90ff06f          	j	75f8 <__addtf3+0x45c>
    816c:	00079c63          	bnez	a5,8184 <__addtf3+0xfe8>
    8170:	03212823          	sw	s2,48(sp)
    8174:	02e12a23          	sw	a4,52(sp)
    8178:	02d12c23          	sw	a3,56(sp)
    817c:	02c12e23          	sw	a2,60(sp)
    8180:	c78ff06f          	j	75f8 <__addtf3+0x45c>
    8184:	409907b3          	sub	a5,s2,s1
    8188:	41570333          	sub	t1,a4,s5
    818c:	00f93533          	sltu	a0,s2,a5
    8190:	00673833          	sltu	a6,a4,t1
    8194:	40a30533          	sub	a0,t1,a0
    8198:	00000593          	li	a1,0
    819c:	00f97463          	bgeu	s2,a5,81a4 <__addtf3+0x1008>
    81a0:	00133593          	seqz	a1,t1
    81a4:	0105e5b3          	or	a1,a1,a6
    81a8:	41868833          	sub	a6,a3,s8
    81ac:	0106beb3          	sltu	t4,a3,a6
    81b0:	40b80e33          	sub	t3,a6,a1
    81b4:	00000893          	li	a7,0
    81b8:	00058463          	beqz	a1,81c0 <__addtf3+0x1024>
    81bc:	00183893          	seqz	a7,a6
    81c0:	01d8e8b3          	or	a7,a7,t4
    81c4:	419605b3          	sub	a1,a2,s9
    81c8:	411585b3          	sub	a1,a1,a7
    81cc:	000808b7          	lui	a7,0x80
    81d0:	02b12e23          	sw	a1,60(sp)
    81d4:	03c12c23          	sw	t3,56(sp)
    81d8:	02a12a23          	sw	a0,52(sp)
    81dc:	02f12823          	sw	a5,48(sp)
    81e0:	0115f8b3          	and	a7,a1,a7
    81e4:	06088063          	beqz	a7,8244 <__addtf3+0x10a8>
    81e8:	41248933          	sub	s2,s1,s2
    81ec:	40ea8733          	sub	a4,s5,a4
    81f0:	0124b7b3          	sltu	a5,s1,s2
    81f4:	00eabab3          	sltu	s5,s5,a4
    81f8:	40f70733          	sub	a4,a4,a5
    81fc:	00000793          	li	a5,0
    8200:	0124f463          	bgeu	s1,s2,8208 <__addtf3+0x106c>
    8204:	00133793          	seqz	a5,t1
    8208:	0157eab3          	or	s5,a5,s5
    820c:	40dc06b3          	sub	a3,s8,a3
    8210:	00dc3c33          	sltu	s8,s8,a3
    8214:	00000793          	li	a5,0
    8218:	415686b3          	sub	a3,a3,s5
    821c:	000a8463          	beqz	s5,8224 <__addtf3+0x1088>
    8220:	00183793          	seqz	a5,a6
    8224:	40cc8633          	sub	a2,s9,a2
    8228:	0187e7b3          	or	a5,a5,s8
    822c:	40f60633          	sub	a2,a2,a5
    8230:	02c12e23          	sw	a2,60(sp)
    8234:	02d12c23          	sw	a3,56(sp)
    8238:	02e12a23          	sw	a4,52(sp)
    823c:	03212823          	sw	s2,48(sp)
    8240:	c45ff06f          	j	7e84 <__addtf3+0xce8>
    8244:	00a7e7b3          	or	a5,a5,a0
    8248:	01c7e7b3          	or	a5,a5,t3
    824c:	00b7e7b3          	or	a5,a5,a1
    8250:	f0dff06f          	j	815c <__addtf3+0xfc0>
    8254:	03010813          	addi	a6,sp,48
    8258:	04059e63          	bnez	a1,82b4 <__addtf3+0x1118>
    825c:	02079e63          	bnez	a5,8298 <__addtf3+0x10fc>
    8260:	02a12e23          	sw	a0,60(sp)
    8264:	02012c23          	sw	zero,56(sp)
    8268:	02012a23          	sw	zero,52(sp)
    826c:	02012823          	sw	zero,48(sp)
    8270:	03c10793          	addi	a5,sp,60
    8274:	0007a703          	lw	a4,0(a5)
    8278:	ffc7a683          	lw	a3,-4(a5)
    827c:	ffc78793          	addi	a5,a5,-4
    8280:	00371713          	slli	a4,a4,0x3
    8284:	01d6d693          	srli	a3,a3,0x1d
    8288:	00d76733          	or	a4,a4,a3
    828c:	00e7a223          	sw	a4,4(a5)
    8290:	fef812e3          	bne	a6,a5,8274 <__addtf3+0x10d8>
    8294:	881ff06f          	j	7b14 <__addtf3+0x978>
    8298:	02912823          	sw	s1,48(sp)
    829c:	03512a23          	sw	s5,52(sp)
    82a0:	03812c23          	sw	s8,56(sp)
    82a4:	03912e23          	sw	s9,60(sp)
    82a8:	000b8993          	mv	s3,s7
    82ac:	fff50413          	addi	s0,a0,-1
    82b0:	b48ff06f          	j	75f8 <__addtf3+0x45c>
    82b4:	00079c63          	bnez	a5,82cc <__addtf3+0x1130>
    82b8:	03212823          	sw	s2,48(sp)
    82bc:	02e12a23          	sw	a4,52(sp)
    82c0:	02d12c23          	sw	a3,56(sp)
    82c4:	02c12e23          	sw	a2,60(sp)
    82c8:	fe5ff06f          	j	82ac <__addtf3+0x1110>
    82cc:	02a12e23          	sw	a0,60(sp)
    82d0:	02012c23          	sw	zero,56(sp)
    82d4:	02012a23          	sw	zero,52(sp)
    82d8:	02012823          	sw	zero,48(sp)
    82dc:	03c10793          	addi	a5,sp,60
    82e0:	0007a703          	lw	a4,0(a5)
    82e4:	ffc7a683          	lw	a3,-4(a5)
    82e8:	ffc78793          	addi	a5,a5,-4
    82ec:	00371713          	slli	a4,a4,0x3
    82f0:	01d6d693          	srli	a3,a3,0x1d
    82f4:	00d76733          	or	a4,a4,a3
    82f8:	00e7a223          	sw	a4,4(a5)
    82fc:	fef812e3          	bne	a6,a5,82e0 <__addtf3+0x1144>
    8300:	815ff06f          	j	7b14 <__addtf3+0x978>
    8304:	409907b3          	sub	a5,s2,s1
    8308:	41570e33          	sub	t3,a4,s5
    830c:	00f93833          	sltu	a6,s2,a5
    8310:	01c738b3          	sltu	a7,a4,t3
    8314:	410e0833          	sub	a6,t3,a6
    8318:	00000513          	li	a0,0
    831c:	00f97463          	bgeu	s2,a5,8324 <__addtf3+0x1188>
    8320:	001e3513          	seqz	a0,t3
    8324:	01156533          	or	a0,a0,a7
    8328:	418688b3          	sub	a7,a3,s8
    832c:	0116bf33          	sltu	t5,a3,a7
    8330:	40a88eb3          	sub	t4,a7,a0
    8334:	00000313          	li	t1,0
    8338:	00050463          	beqz	a0,8340 <__addtf3+0x11a4>
    833c:	0018b313          	seqz	t1,a7
    8340:	01e36333          	or	t1,t1,t5
    8344:	41960533          	sub	a0,a2,s9
    8348:	40650533          	sub	a0,a0,t1
    834c:	00080337          	lui	t1,0x80
    8350:	02a12e23          	sw	a0,60(sp)
    8354:	03d12c23          	sw	t4,56(sp)
    8358:	03012a23          	sw	a6,52(sp)
    835c:	02f12823          	sw	a5,48(sp)
    8360:	00657333          	and	t1,a0,t1
    8364:	16030663          	beqz	t1,84d0 <__addtf3+0x1334>
    8368:	41248933          	sub	s2,s1,s2
    836c:	40ea8733          	sub	a4,s5,a4
    8370:	0124b7b3          	sltu	a5,s1,s2
    8374:	00eabab3          	sltu	s5,s5,a4
    8378:	40f70733          	sub	a4,a4,a5
    837c:	00000793          	li	a5,0
    8380:	0124f463          	bgeu	s1,s2,8388 <__addtf3+0x11ec>
    8384:	001e3793          	seqz	a5,t3
    8388:	40dc06b3          	sub	a3,s8,a3
    838c:	0157eab3          	or	s5,a5,s5
    8390:	00dc3c33          	sltu	s8,s8,a3
    8394:	415686b3          	sub	a3,a3,s5
    8398:	000a8463          	beqz	s5,83a0 <__addtf3+0x1204>
    839c:	0018b593          	seqz	a1,a7
    83a0:	40cc8633          	sub	a2,s9,a2
    83a4:	0185e7b3          	or	a5,a1,s8
    83a8:	40f60633          	sub	a2,a2,a5
    83ac:	02c12e23          	sw	a2,60(sp)
    83b0:	02d12c23          	sw	a3,56(sp)
    83b4:	02e12a23          	sw	a4,52(sp)
    83b8:	03212823          	sw	s2,48(sp)
    83bc:	000b8993          	mv	s3,s7
    83c0:	03c12503          	lw	a0,60(sp)
    83c4:	12050063          	beqz	a0,84e4 <__addtf3+0x1348>
    83c8:	1b8040ef          	jal	ra,c580 <__clzsi2>
    83cc:	ff450493          	addi	s1,a0,-12
    83d0:	41f4d793          	srai	a5,s1,0x1f
    83d4:	01f7f793          	andi	a5,a5,31
    83d8:	009787b3          	add	a5,a5,s1
    83dc:	4057d793          	srai	a5,a5,0x5
    83e0:	01f4f593          	andi	a1,s1,31
    83e4:	40f006b3          	neg	a3,a5
    83e8:	12058a63          	beqz	a1,851c <__addtf3+0x1380>
    83ec:	80000737          	lui	a4,0x80000
    83f0:	01f70713          	addi	a4,a4,31 # 8000001f <soln_cnt0+0x7ffef543>
    83f4:	00e4f733          	and	a4,s1,a4
    83f8:	00075863          	bgez	a4,8408 <__addtf3+0x126c>
    83fc:	fff70713          	addi	a4,a4,-1
    8400:	fe076713          	ori	a4,a4,-32
    8404:	00170713          	addi	a4,a4,1
    8408:	00269693          	slli	a3,a3,0x2
    840c:	02000513          	li	a0,32
    8410:	40e50533          	sub	a0,a0,a4
    8414:	03010893          	addi	a7,sp,48
    8418:	00c68713          	addi	a4,a3,12
    841c:	00e88733          	add	a4,a7,a4
    8420:	40d006b3          	neg	a3,a3
    8424:	12e89263          	bne	a7,a4,8548 <__addtf3+0x13ac>
    8428:	03012703          	lw	a4,48(sp)
    842c:	fff78613          	addi	a2,a5,-1
    8430:	00279793          	slli	a5,a5,0x2
    8434:	04078793          	addi	a5,a5,64
    8438:	002787b3          	add	a5,a5,sp
    843c:	00b71733          	sll	a4,a4,a1
    8440:	fee7a823          	sw	a4,-16(a5)
    8444:	00160613          	addi	a2,a2,1
    8448:	00261613          	slli	a2,a2,0x2
    844c:	00000593          	li	a1,0
    8450:	03010513          	addi	a0,sp,48
    8454:	184040ef          	jal	ra,c5d8 <memset>
    8458:	2084c263          	blt	s1,s0,865c <__addtf3+0x14c0>
    845c:	408487b3          	sub	a5,s1,s0
    8460:	00178793          	addi	a5,a5,1
    8464:	41f7d513          	srai	a0,a5,0x1f
    8468:	01f57513          	andi	a0,a0,31
    846c:	00f50533          	add	a0,a0,a5
    8470:	03010613          	addi	a2,sp,48
    8474:	40555513          	srai	a0,a0,0x5
    8478:	00060693          	mv	a3,a2
    847c:	00000413          	li	s0,0
    8480:	00000713          	li	a4,0
    8484:	0ea74463          	blt	a4,a0,856c <__addtf3+0x13d0>
    8488:	00050693          	mv	a3,a0
    848c:	00055463          	bgez	a0,8494 <__addtf3+0x12f8>
    8490:	00000693          	li	a3,0
    8494:	01f7f813          	andi	a6,a5,31
    8498:	00251713          	slli	a4,a0,0x2
    849c:	0e081263          	bnez	a6,8580 <__addtf3+0x13e4>
    84a0:	00300693          	li	a3,3
    84a4:	00000793          	li	a5,0
    84a8:	40a686b3          	sub	a3,a3,a0
    84ac:	00e605b3          	add	a1,a2,a4
    84b0:	0005a583          	lw	a1,0(a1)
    84b4:	00178793          	addi	a5,a5,1
    84b8:	00460613          	addi	a2,a2,4
    84bc:	feb62e23          	sw	a1,-4(a2)
    84c0:	fef6d6e3          	bge	a3,a5,84ac <__addtf3+0x1310>
    84c4:	00400793          	li	a5,4
    84c8:	40a78533          	sub	a0,a5,a0
    84cc:	12c0006f          	j	85f8 <__addtf3+0x145c>
    84d0:	0107e7b3          	or	a5,a5,a6
    84d4:	01d7e7b3          	or	a5,a5,t4
    84d8:	00a7e7b3          	or	a5,a5,a0
    84dc:	c80782e3          	beqz	a5,8160 <__addtf3+0xfc4>
    84e0:	ee1ff06f          	j	83c0 <__addtf3+0x1224>
    84e4:	03812503          	lw	a0,56(sp)
    84e8:	00050863          	beqz	a0,84f8 <__addtf3+0x135c>
    84ec:	094040ef          	jal	ra,c580 <__clzsi2>
    84f0:	02050513          	addi	a0,a0,32
    84f4:	ed9ff06f          	j	83cc <__addtf3+0x1230>
    84f8:	03412503          	lw	a0,52(sp)
    84fc:	00050863          	beqz	a0,850c <__addtf3+0x1370>
    8500:	080040ef          	jal	ra,c580 <__clzsi2>
    8504:	04050513          	addi	a0,a0,64
    8508:	ec5ff06f          	j	83cc <__addtf3+0x1230>
    850c:	03012503          	lw	a0,48(sp)
    8510:	070040ef          	jal	ra,c580 <__clzsi2>
    8514:	06050513          	addi	a0,a0,96
    8518:	eb5ff06f          	j	83cc <__addtf3+0x1230>
    851c:	03c10713          	addi	a4,sp,60
    8520:	00269693          	slli	a3,a3,0x2
    8524:	00300613          	li	a2,3
    8528:	00d705b3          	add	a1,a4,a3
    852c:	0005a583          	lw	a1,0(a1)
    8530:	fff60613          	addi	a2,a2,-1
    8534:	ffc70713          	addi	a4,a4,-4
    8538:	00b72223          	sw	a1,4(a4)
    853c:	fef656e3          	bge	a2,a5,8528 <__addtf3+0x138c>
    8540:	fff78613          	addi	a2,a5,-1
    8544:	f01ff06f          	j	8444 <__addtf3+0x12a8>
    8548:	00072603          	lw	a2,0(a4)
    854c:	ffc72803          	lw	a6,-4(a4)
    8550:	00d70333          	add	t1,a4,a3
    8554:	00b61633          	sll	a2,a2,a1
    8558:	00a85833          	srl	a6,a6,a0
    855c:	01066633          	or	a2,a2,a6
    8560:	00c32023          	sw	a2,0(t1) # 80000 <soln_cnt0+0x6f524>
    8564:	ffc70713          	addi	a4,a4,-4
    8568:	ebdff06f          	j	8424 <__addtf3+0x1288>
    856c:	0006a583          	lw	a1,0(a3)
    8570:	00170713          	addi	a4,a4,1
    8574:	00468693          	addi	a3,a3,4
    8578:	00b46433          	or	s0,s0,a1
    857c:	f09ff06f          	j	8484 <__addtf3+0x12e8>
    8580:	800005b7          	lui	a1,0x80000
    8584:	01f58593          	addi	a1,a1,31 # 8000001f <soln_cnt0+0x7ffef543>
    8588:	00b7f7b3          	and	a5,a5,a1
    858c:	0007d863          	bgez	a5,859c <__addtf3+0x1400>
    8590:	fff78793          	addi	a5,a5,-1
    8594:	fe07e793          	ori	a5,a5,-32
    8598:	00178793          	addi	a5,a5,1
    859c:	00269693          	slli	a3,a3,0x2
    85a0:	02000593          	li	a1,32
    85a4:	40f585b3          	sub	a1,a1,a5
    85a8:	04068793          	addi	a5,a3,64
    85ac:	002786b3          	add	a3,a5,sp
    85b0:	ff06a783          	lw	a5,-16(a3)
    85b4:	00000893          	li	a7,0
    85b8:	00b797b3          	sll	a5,a5,a1
    85bc:	00f46433          	or	s0,s0,a5
    85c0:	03010793          	addi	a5,sp,48
    85c4:	00e78733          	add	a4,a5,a4
    85c8:	00300793          	li	a5,3
    85cc:	40a787b3          	sub	a5,a5,a0
    85d0:	00470713          	addi	a4,a4,4
    85d4:	06f8c263          	blt	a7,a5,8638 <__addtf3+0x149c>
    85d8:	00400713          	li	a4,4
    85dc:	40a70533          	sub	a0,a4,a0
    85e0:	03c12703          	lw	a4,60(sp)
    85e4:	00279793          	slli	a5,a5,0x2
    85e8:	04078793          	addi	a5,a5,64
    85ec:	002787b3          	add	a5,a5,sp
    85f0:	01075733          	srl	a4,a4,a6
    85f4:	fee7a823          	sw	a4,-16(a5)
    85f8:	00400793          	li	a5,4
    85fc:	00000613          	li	a2,0
    8600:	00a7c663          	blt	a5,a0,860c <__addtf3+0x1470>
    8604:	40a787b3          	sub	a5,a5,a0
    8608:	00279613          	slli	a2,a5,0x2
    860c:	03010793          	addi	a5,sp,48
    8610:	00251513          	slli	a0,a0,0x2
    8614:	00a78533          	add	a0,a5,a0
    8618:	00000593          	li	a1,0
    861c:	7bd030ef          	jal	ra,c5d8 <memset>
    8620:	03012703          	lw	a4,48(sp)
    8624:	008037b3          	snez	a5,s0
    8628:	00000413          	li	s0,0
    862c:	00f767b3          	or	a5,a4,a5
    8630:	02f12823          	sw	a5,48(sp)
    8634:	fc5fe06f          	j	75f8 <__addtf3+0x45c>
    8638:	ffc72683          	lw	a3,-4(a4)
    863c:	00072303          	lw	t1,0(a4)
    8640:	00188893          	addi	a7,a7,1 # 80001 <soln_cnt0+0x6f525>
    8644:	0106d6b3          	srl	a3,a3,a6
    8648:	00b31333          	sll	t1,t1,a1
    864c:	0066e6b3          	or	a3,a3,t1
    8650:	00d62023          	sw	a3,0(a2)
    8654:	00460613          	addi	a2,a2,4
    8658:	f79ff06f          	j	85d0 <__addtf3+0x1434>
    865c:	03c12783          	lw	a5,60(sp)
    8660:	fff80737          	lui	a4,0xfff80
    8664:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    8668:	00e7f7b3          	and	a5,a5,a4
    866c:	40940433          	sub	s0,s0,s1
    8670:	02f12e23          	sw	a5,60(sp)
    8674:	f85fe06f          	j	75f8 <__addtf3+0x45c>
    8678:	02012e23          	sw	zero,60(sp)
    867c:	02012c23          	sw	zero,56(sp)
    8680:	02012a23          	sw	zero,52(sp)
    8684:	02012823          	sw	zero,48(sp)
    8688:	ff5fe06f          	j	767c <__addtf3+0x4e0>

0000868c <__divtf3>:
    868c:	f7010113          	addi	sp,sp,-144
    8690:	07512a23          	sw	s5,116(sp)
    8694:	00c5aa83          	lw	s5,12(a1)
    8698:	0045a783          	lw	a5,4(a1)
    869c:	0085a683          	lw	a3,8(a1)
    86a0:	08912223          	sw	s1,132(sp)
    86a4:	00050493          	mv	s1,a0
    86a8:	0005a503          	lw	a0,0(a1)
    86ac:	010a9713          	slli	a4,s5,0x10
    86b0:	07312e23          	sw	s3,124(sp)
    86b4:	07412c23          	sw	s4,120(sp)
    86b8:	00462983          	lw	s3,4(a2)
    86bc:	00c62a03          	lw	s4,12(a2)
    86c0:	07712623          	sw	s7,108(sp)
    86c4:	07812423          	sw	s8,104(sp)
    86c8:	00862b83          	lw	s7,8(a2)
    86cc:	00062c03          	lw	s8,0(a2)
    86d0:	00008637          	lui	a2,0x8
    86d4:	08812423          	sw	s0,136(sp)
    86d8:	01075713          	srli	a4,a4,0x10
    86dc:	010ad413          	srli	s0,s5,0x10
    86e0:	fff60613          	addi	a2,a2,-1 # 7fff <__addtf3+0xe63>
    86e4:	05512623          	sw	s5,76(sp)
    86e8:	08112623          	sw	ra,140(sp)
    86ec:	09212023          	sw	s2,128(sp)
    86f0:	07612823          	sw	s6,112(sp)
    86f4:	07912223          	sw	s9,100(sp)
    86f8:	07a12023          	sw	s10,96(sp)
    86fc:	05b12e23          	sw	s11,92(sp)
    8700:	04a12023          	sw	a0,64(sp)
    8704:	04f12223          	sw	a5,68(sp)
    8708:	04d12423          	sw	a3,72(sp)
    870c:	00a12823          	sw	a0,16(sp)
    8710:	00f12a23          	sw	a5,20(sp)
    8714:	00d12c23          	sw	a3,24(sp)
    8718:	00e12e23          	sw	a4,28(sp)
    871c:	00c47433          	and	s0,s0,a2
    8720:	01fada93          	srli	s5,s5,0x1f
    8724:	12040063          	beqz	s0,8844 <__divtf3+0x1b8>
    8728:	22c40c63          	beq	s0,a2,8960 <__divtf3+0x2d4>
    872c:	000107b7          	lui	a5,0x10
    8730:	00f76733          	or	a4,a4,a5
    8734:	00e12e23          	sw	a4,28(sp)
    8738:	01010613          	addi	a2,sp,16
    873c:	01c10793          	addi	a5,sp,28
    8740:	0007a703          	lw	a4,0(a5) # 10000 <impure_data>
    8744:	ffc7a683          	lw	a3,-4(a5)
    8748:	ffc78793          	addi	a5,a5,-4
    874c:	00371713          	slli	a4,a4,0x3
    8750:	01d6d693          	srli	a3,a3,0x1d
    8754:	00d76733          	or	a4,a4,a3
    8758:	00e7a223          	sw	a4,4(a5)
    875c:	fef612e3          	bne	a2,a5,8740 <__divtf3+0xb4>
    8760:	01012783          	lw	a5,16(sp)
    8764:	00379793          	slli	a5,a5,0x3
    8768:	00f12823          	sw	a5,16(sp)
    876c:	ffffc7b7          	lui	a5,0xffffc
    8770:	00178793          	addi	a5,a5,1 # ffffc001 <soln_cnt0+0xfffeb525>
    8774:	00f40433          	add	s0,s0,a5
    8778:	00000b13          	li	s6,0
    877c:	010a1513          	slli	a0,s4,0x10
    8780:	00008737          	lui	a4,0x8
    8784:	010a5793          	srli	a5,s4,0x10
    8788:	01055513          	srli	a0,a0,0x10
    878c:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    8790:	05412623          	sw	s4,76(sp)
    8794:	05812023          	sw	s8,64(sp)
    8798:	05312223          	sw	s3,68(sp)
    879c:	05712423          	sw	s7,72(sp)
    87a0:	03812023          	sw	s8,32(sp)
    87a4:	03312223          	sw	s3,36(sp)
    87a8:	03712423          	sw	s7,40(sp)
    87ac:	02a12623          	sw	a0,44(sp)
    87b0:	00e7f7b3          	and	a5,a5,a4
    87b4:	01fa5a13          	srli	s4,s4,0x1f
    87b8:	1c078863          	beqz	a5,8988 <__divtf3+0x2fc>
    87bc:	2ee78463          	beq	a5,a4,8aa4 <__divtf3+0x418>
    87c0:	00010737          	lui	a4,0x10
    87c4:	00e56533          	or	a0,a0,a4
    87c8:	02a12623          	sw	a0,44(sp)
    87cc:	02010593          	addi	a1,sp,32
    87d0:	02c10713          	addi	a4,sp,44
    87d4:	00072683          	lw	a3,0(a4) # 10000 <impure_data>
    87d8:	ffc72603          	lw	a2,-4(a4)
    87dc:	ffc70713          	addi	a4,a4,-4
    87e0:	00369693          	slli	a3,a3,0x3
    87e4:	01d65613          	srli	a2,a2,0x1d
    87e8:	00c6e6b3          	or	a3,a3,a2
    87ec:	00d72223          	sw	a3,4(a4)
    87f0:	fee592e3          	bne	a1,a4,87d4 <__divtf3+0x148>
    87f4:	02012703          	lw	a4,32(sp)
    87f8:	00371713          	slli	a4,a4,0x3
    87fc:	02e12023          	sw	a4,32(sp)
    8800:	ffffc737          	lui	a4,0xffffc
    8804:	00170713          	addi	a4,a4,1 # ffffc001 <soln_cnt0+0xfffeb525>
    8808:	00e787b3          	add	a5,a5,a4
    880c:	00000713          	li	a4,0
    8810:	40f409b3          	sub	s3,s0,a5
    8814:	002b1793          	slli	a5,s6,0x2
    8818:	00e7e7b3          	or	a5,a5,a4
    881c:	fff78793          	addi	a5,a5,-1
    8820:	00e00693          	li	a3,14
    8824:	014ac933          	xor	s2,s5,s4
    8828:	2af6e263          	bltu	a3,a5,8acc <__divtf3+0x440>
    882c:	000106b7          	lui	a3,0x10
    8830:	00279793          	slli	a5,a5,0x2
    8834:	67468693          	addi	a3,a3,1652 # 10674 <PIo2+0x7c>
    8838:	00d787b3          	add	a5,a5,a3
    883c:	0007a783          	lw	a5,0(a5)
    8840:	00078067          	jr	a5
    8844:	00a7e633          	or	a2,a5,a0
    8848:	00d66633          	or	a2,a2,a3
    884c:	00e66633          	or	a2,a2,a4
    8850:	12060663          	beqz	a2,897c <__divtf3+0x2f0>
    8854:	08070463          	beqz	a4,88dc <__divtf3+0x250>
    8858:	00070513          	mv	a0,a4
    885c:	525030ef          	jal	ra,c580 <__clzsi2>
    8860:	00050913          	mv	s2,a0
    8864:	ff490593          	addi	a1,s2,-12
    8868:	4055d793          	srai	a5,a1,0x5
    886c:	01f5f593          	andi	a1,a1,31
    8870:	40f00733          	neg	a4,a5
    8874:	08058e63          	beqz	a1,8910 <__divtf3+0x284>
    8878:	00271713          	slli	a4,a4,0x2
    887c:	00c70693          	addi	a3,a4,12
    8880:	02000513          	li	a0,32
    8884:	01010893          	addi	a7,sp,16
    8888:	40b50533          	sub	a0,a0,a1
    888c:	00d886b3          	add	a3,a7,a3
    8890:	40e00733          	neg	a4,a4
    8894:	0ad89463          	bne	a7,a3,893c <__divtf3+0x2b0>
    8898:	fff78613          	addi	a2,a5,-1
    889c:	00279793          	slli	a5,a5,0x2
    88a0:	01010713          	addi	a4,sp,16
    88a4:	04078793          	addi	a5,a5,64
    88a8:	00e787b3          	add	a5,a5,a4
    88ac:	01012703          	lw	a4,16(sp)
    88b0:	00b71733          	sll	a4,a4,a1
    88b4:	fce7a023          	sw	a4,-64(a5)
    88b8:	00160613          	addi	a2,a2,1
    88bc:	ffffc437          	lui	s0,0xffffc
    88c0:	00261613          	slli	a2,a2,0x2
    88c4:	00000593          	li	a1,0
    88c8:	01010513          	addi	a0,sp,16
    88cc:	01140413          	addi	s0,s0,17 # ffffc011 <soln_cnt0+0xfffeb535>
    88d0:	509030ef          	jal	ra,c5d8 <memset>
    88d4:	41240433          	sub	s0,s0,s2
    88d8:	ea1ff06f          	j	8778 <__divtf3+0xec>
    88dc:	00068a63          	beqz	a3,88f0 <__divtf3+0x264>
    88e0:	00068513          	mv	a0,a3
    88e4:	49d030ef          	jal	ra,c580 <__clzsi2>
    88e8:	02050913          	addi	s2,a0,32
    88ec:	f79ff06f          	j	8864 <__divtf3+0x1d8>
    88f0:	00078a63          	beqz	a5,8904 <__divtf3+0x278>
    88f4:	00078513          	mv	a0,a5
    88f8:	489030ef          	jal	ra,c580 <__clzsi2>
    88fc:	04050913          	addi	s2,a0,64
    8900:	f65ff06f          	j	8864 <__divtf3+0x1d8>
    8904:	47d030ef          	jal	ra,c580 <__clzsi2>
    8908:	06050913          	addi	s2,a0,96
    890c:	f59ff06f          	j	8864 <__divtf3+0x1d8>
    8910:	01c10693          	addi	a3,sp,28
    8914:	00271713          	slli	a4,a4,0x2
    8918:	00300613          	li	a2,3
    891c:	00e685b3          	add	a1,a3,a4
    8920:	0005a583          	lw	a1,0(a1)
    8924:	fff60613          	addi	a2,a2,-1
    8928:	ffc68693          	addi	a3,a3,-4
    892c:	00b6a223          	sw	a1,4(a3)
    8930:	fef656e3          	bge	a2,a5,891c <__divtf3+0x290>
    8934:	fff78613          	addi	a2,a5,-1
    8938:	f81ff06f          	j	88b8 <__divtf3+0x22c>
    893c:	0006a603          	lw	a2,0(a3)
    8940:	ffc6a803          	lw	a6,-4(a3)
    8944:	00e68333          	add	t1,a3,a4
    8948:	00b61633          	sll	a2,a2,a1
    894c:	00a85833          	srl	a6,a6,a0
    8950:	01066633          	or	a2,a2,a6
    8954:	00c32023          	sw	a2,0(t1)
    8958:	ffc68693          	addi	a3,a3,-4
    895c:	f39ff06f          	j	8894 <__divtf3+0x208>
    8960:	00a7e7b3          	or	a5,a5,a0
    8964:	00d7e7b3          	or	a5,a5,a3
    8968:	00e7e7b3          	or	a5,a5,a4
    896c:	00300b13          	li	s6,3
    8970:	e00796e3          	bnez	a5,877c <__divtf3+0xf0>
    8974:	00200b13          	li	s6,2
    8978:	e05ff06f          	j	877c <__divtf3+0xf0>
    897c:	00000413          	li	s0,0
    8980:	00100b13          	li	s6,1
    8984:	df9ff06f          	j	877c <__divtf3+0xf0>
    8988:	0189e7b3          	or	a5,s3,s8
    898c:	0177e7b3          	or	a5,a5,s7
    8990:	00a7e7b3          	or	a5,a5,a0
    8994:	12078663          	beqz	a5,8ac0 <__divtf3+0x434>
    8998:	08050263          	beqz	a0,8a1c <__divtf3+0x390>
    899c:	3e5030ef          	jal	ra,c580 <__clzsi2>
    89a0:	00050913          	mv	s2,a0
    89a4:	ff490593          	addi	a1,s2,-12
    89a8:	4055d793          	srai	a5,a1,0x5
    89ac:	01f5f593          	andi	a1,a1,31
    89b0:	40f00733          	neg	a4,a5
    89b4:	0a058063          	beqz	a1,8a54 <__divtf3+0x3c8>
    89b8:	00271713          	slli	a4,a4,0x2
    89bc:	00c70693          	addi	a3,a4,12
    89c0:	02000513          	li	a0,32
    89c4:	02010893          	addi	a7,sp,32
    89c8:	40b50533          	sub	a0,a0,a1
    89cc:	00d886b3          	add	a3,a7,a3
    89d0:	40e00733          	neg	a4,a4
    89d4:	0ad89663          	bne	a7,a3,8a80 <__divtf3+0x3f4>
    89d8:	fff78613          	addi	a2,a5,-1
    89dc:	00279793          	slli	a5,a5,0x2
    89e0:	01010713          	addi	a4,sp,16
    89e4:	04078793          	addi	a5,a5,64
    89e8:	00e787b3          	add	a5,a5,a4
    89ec:	02012703          	lw	a4,32(sp)
    89f0:	00b71733          	sll	a4,a4,a1
    89f4:	fce7a823          	sw	a4,-48(a5)
    89f8:	00160613          	addi	a2,a2,1
    89fc:	00261613          	slli	a2,a2,0x2
    8a00:	00000593          	li	a1,0
    8a04:	02010513          	addi	a0,sp,32
    8a08:	3d1030ef          	jal	ra,c5d8 <memset>
    8a0c:	ffffc7b7          	lui	a5,0xffffc
    8a10:	01178793          	addi	a5,a5,17 # ffffc011 <soln_cnt0+0xfffeb535>
    8a14:	412787b3          	sub	a5,a5,s2
    8a18:	df5ff06f          	j	880c <__divtf3+0x180>
    8a1c:	000b8a63          	beqz	s7,8a30 <__divtf3+0x3a4>
    8a20:	000b8513          	mv	a0,s7
    8a24:	35d030ef          	jal	ra,c580 <__clzsi2>
    8a28:	02050913          	addi	s2,a0,32
    8a2c:	f79ff06f          	j	89a4 <__divtf3+0x318>
    8a30:	00098a63          	beqz	s3,8a44 <__divtf3+0x3b8>
    8a34:	00098513          	mv	a0,s3
    8a38:	349030ef          	jal	ra,c580 <__clzsi2>
    8a3c:	04050913          	addi	s2,a0,64
    8a40:	f65ff06f          	j	89a4 <__divtf3+0x318>
    8a44:	000c0513          	mv	a0,s8
    8a48:	339030ef          	jal	ra,c580 <__clzsi2>
    8a4c:	06050913          	addi	s2,a0,96
    8a50:	f55ff06f          	j	89a4 <__divtf3+0x318>
    8a54:	02c10693          	addi	a3,sp,44
    8a58:	00271713          	slli	a4,a4,0x2
    8a5c:	00300613          	li	a2,3
    8a60:	00e685b3          	add	a1,a3,a4
    8a64:	0005a583          	lw	a1,0(a1)
    8a68:	fff60613          	addi	a2,a2,-1
    8a6c:	ffc68693          	addi	a3,a3,-4
    8a70:	00b6a223          	sw	a1,4(a3)
    8a74:	fef656e3          	bge	a2,a5,8a60 <__divtf3+0x3d4>
    8a78:	fff78613          	addi	a2,a5,-1
    8a7c:	f7dff06f          	j	89f8 <__divtf3+0x36c>
    8a80:	0006a603          	lw	a2,0(a3)
    8a84:	ffc6a803          	lw	a6,-4(a3)
    8a88:	00e68333          	add	t1,a3,a4
    8a8c:	00b61633          	sll	a2,a2,a1
    8a90:	00a85833          	srl	a6,a6,a0
    8a94:	01066633          	or	a2,a2,a6
    8a98:	00c32023          	sw	a2,0(t1)
    8a9c:	ffc68693          	addi	a3,a3,-4
    8aa0:	f35ff06f          	j	89d4 <__divtf3+0x348>
    8aa4:	0189e9b3          	or	s3,s3,s8
    8aa8:	0179e9b3          	or	s3,s3,s7
    8aac:	00a9e9b3          	or	s3,s3,a0
    8ab0:	00300713          	li	a4,3
    8ab4:	d4099ee3          	bnez	s3,8810 <__divtf3+0x184>
    8ab8:	00200713          	li	a4,2
    8abc:	d55ff06f          	j	8810 <__divtf3+0x184>
    8ac0:	00000793          	li	a5,0
    8ac4:	00100713          	li	a4,1
    8ac8:	d49ff06f          	j	8810 <__divtf3+0x184>
    8acc:	01c12683          	lw	a3,28(sp)
    8ad0:	02c12703          	lw	a4,44(sp)
    8ad4:	04012623          	sw	zero,76(sp)
    8ad8:	04012423          	sw	zero,72(sp)
    8adc:	04012223          	sw	zero,68(sp)
    8ae0:	04012023          	sw	zero,64(sp)
    8ae4:	02812783          	lw	a5,40(sp)
    8ae8:	02d76863          	bltu	a4,a3,8b18 <__divtf3+0x48c>
    8aec:	20e69063          	bne	a3,a4,8cec <__divtf3+0x660>
    8af0:	01812703          	lw	a4,24(sp)
    8af4:	02e7e263          	bltu	a5,a4,8b18 <__divtf3+0x48c>
    8af8:	1ef71a63          	bne	a4,a5,8cec <__divtf3+0x660>
    8afc:	01412703          	lw	a4,20(sp)
    8b00:	02412783          	lw	a5,36(sp)
    8b04:	00e7ea63          	bltu	a5,a4,8b18 <__divtf3+0x48c>
    8b08:	1ef71263          	bne	a4,a5,8cec <__divtf3+0x660>
    8b0c:	01012703          	lw	a4,16(sp)
    8b10:	02012783          	lw	a5,32(sp)
    8b14:	1cf76c63          	bltu	a4,a5,8cec <__divtf3+0x660>
    8b18:	01012783          	lw	a5,16(sp)
    8b1c:	01c10613          	addi	a2,sp,28
    8b20:	01f79793          	slli	a5,a5,0x1f
    8b24:	04f12623          	sw	a5,76(sp)
    8b28:	01010793          	addi	a5,sp,16
    8b2c:	0007a703          	lw	a4,0(a5)
    8b30:	0047a683          	lw	a3,4(a5)
    8b34:	00478793          	addi	a5,a5,4
    8b38:	00175713          	srli	a4,a4,0x1
    8b3c:	01f69693          	slli	a3,a3,0x1f
    8b40:	00d76733          	or	a4,a4,a3
    8b44:	fee7ae23          	sw	a4,-4(a5)
    8b48:	fef612e3          	bne	a2,a5,8b2c <__divtf3+0x4a0>
    8b4c:	01c12783          	lw	a5,28(sp)
    8b50:	0017d793          	srli	a5,a5,0x1
    8b54:	00f12e23          	sw	a5,28(sp)
    8b58:	02010613          	addi	a2,sp,32
    8b5c:	02c10793          	addi	a5,sp,44
    8b60:	0007a703          	lw	a4,0(a5)
    8b64:	ffc7a683          	lw	a3,-4(a5)
    8b68:	ffc78793          	addi	a5,a5,-4
    8b6c:	00c71713          	slli	a4,a4,0xc
    8b70:	0146d693          	srli	a3,a3,0x14
    8b74:	00d76733          	or	a4,a4,a3
    8b78:	00e7a223          	sw	a4,4(a5)
    8b7c:	fef612e3          	bne	a2,a5,8b60 <__divtf3+0x4d4>
    8b80:	02012783          	lw	a5,32(sp)
    8b84:	00010ab7          	lui	s5,0x10
    8b88:	03010c13          	addi	s8,sp,48
    8b8c:	00c79793          	slli	a5,a5,0xc
    8b90:	02f12023          	sw	a5,32(sp)
    8b94:	04010c93          	addi	s9,sp,64
    8b98:	00300a13          	li	s4,3
    8b9c:	fffa8b93          	addi	s7,s5,-1 # ffff <main+0x394b>
    8ba0:	01c12b03          	lw	s6,28(sp)
    8ba4:	02c12403          	lw	s0,44(sp)
    8ba8:	148b1663          	bne	s6,s0,8cf4 <__divtf3+0x668>
    8bac:	fff00793          	li	a5,-1
    8bb0:	00fc2623          	sw	a5,12(s8)
    8bb4:	560a0663          	beqz	s4,9120 <__divtf3+0xa94>
    8bb8:	02012603          	lw	a2,32(sp)
    8bbc:	01012503          	lw	a0,16(sp)
    8bc0:	00ccae03          	lw	t3,12(s9)
    8bc4:	00000f13          	li	t5,0
    8bc8:	40a607b3          	sub	a5,a2,a0
    8bcc:	01c032b3          	snez	t0,t3
    8bd0:	00f63733          	sltu	a4,a2,a5
    8bd4:	000e0463          	beqz	t3,8bdc <__divtf3+0x550>
    8bd8:	0017bf13          	seqz	t5,a5
    8bdc:	01412583          	lw	a1,20(sp)
    8be0:	00ef6f33          	or	t5,t5,a4
    8be4:	02412703          	lw	a4,36(sp)
    8be8:	00000f93          	li	t6,0
    8bec:	40b70eb3          	sub	t4,a4,a1
    8bf0:	01d736b3          	sltu	a3,a4,t4
    8bf4:	000f0463          	beqz	t5,8bfc <__divtf3+0x570>
    8bf8:	001ebf93          	seqz	t6,t4
    8bfc:	00e50533          	add	a0,a0,a4
    8c00:	00ce0e33          	add	t3,t3,a2
    8c04:	40c50533          	sub	a0,a0,a2
    8c08:	00550533          	add	a0,a0,t0
    8c0c:	01c633b3          	sltu	t2,a2,t3
    8c10:	00dfefb3          	or	t6,t6,a3
    8c14:	00a73b33          	sltu	s6,a4,a0
    8c18:	02812803          	lw	a6,40(sp)
    8c1c:	40750533          	sub	a0,a0,t2
    8c20:	01812683          	lw	a3,24(sp)
    8c24:	00000393          	li	t2,0
    8c28:	01c67863          	bgeu	a2,t3,8c38 <__divtf3+0x5ac>
    8c2c:	405787b3          	sub	a5,a5,t0
    8c30:	40e787b3          	sub	a5,a5,a4
    8c34:	0017b393          	seqz	t2,a5
    8c38:	010585b3          	add	a1,a1,a6
    8c3c:	40e585b3          	sub	a1,a1,a4
    8c40:	01e585b3          	add	a1,a1,t5
    8c44:	0163e3b3          	or	t2,t2,s6
    8c48:	00b832b3          	sltu	t0,a6,a1
    8c4c:	407587b3          	sub	a5,a1,t2
    8c50:	00000593          	li	a1,0
    8c54:	00038863          	beqz	t2,8c64 <__divtf3+0x5d8>
    8c58:	41ee8eb3          	sub	t4,t4,t5
    8c5c:	410e8eb3          	sub	t4,t4,a6
    8c60:	001eb593          	seqz	a1,t4
    8c64:	00d406b3          	add	a3,s0,a3
    8c68:	410686b3          	sub	a3,a3,a6
    8c6c:	01f686b3          	add	a3,a3,t6
    8c70:	0055e5b3          	or	a1,a1,t0
    8c74:	40b686b3          	sub	a3,a3,a1
    8c78:	00d12e23          	sw	a3,28(sp)
    8c7c:	00f12c23          	sw	a5,24(sp)
    8c80:	00a12a23          	sw	a0,20(sp)
    8c84:	01c12823          	sw	t3,16(sp)
    8c88:	04d47a63          	bgeu	s0,a3,8cdc <__divtf3+0x650>
    8c8c:	01c60e33          	add	t3,a2,t3
    8c90:	00ce3633          	sltu	a2,t3,a2
    8c94:	ffe00593          	li	a1,-2
    8c98:	00a70533          	add	a0,a4,a0
    8c9c:	00bc2623          	sw	a1,12(s8)
    8ca0:	00c505b3          	add	a1,a0,a2
    8ca4:	00b12a23          	sw	a1,20(sp)
    8ca8:	00e53733          	sltu	a4,a0,a4
    8cac:	00c5b5b3          	sltu	a1,a1,a2
    8cb0:	00b76733          	or	a4,a4,a1
    8cb4:	00f807b3          	add	a5,a6,a5
    8cb8:	00e78633          	add	a2,a5,a4
    8cbc:	00c12c23          	sw	a2,24(sp)
    8cc0:	0107b7b3          	sltu	a5,a5,a6
    8cc4:	00e63633          	sltu	a2,a2,a4
    8cc8:	00c7e7b3          	or	a5,a5,a2
    8ccc:	008787b3          	add	a5,a5,s0
    8cd0:	00d787b3          	add	a5,a5,a3
    8cd4:	01c12823          	sw	t3,16(sp)
    8cd8:	00f12e23          	sw	a5,28(sp)
    8cdc:	fffa0a13          	addi	s4,s4,-1
    8ce0:	ffcc0c13          	addi	s8,s8,-4
    8ce4:	ffcc8c93          	addi	s9,s9,-4
    8ce8:	eb9ff06f          	j	8ba0 <__divtf3+0x514>
    8cec:	fff98993          	addi	s3,s3,-1
    8cf0:	e69ff06f          	j	8b58 <__divtf3+0x4cc>
    8cf4:	01045d13          	srli	s10,s0,0x10
    8cf8:	000d0593          	mv	a1,s10
    8cfc:	000b0513          	mv	a0,s6
    8d00:	7d4030ef          	jal	ra,c4d4 <__udivsi3>
    8d04:	01747db3          	and	s11,s0,s7
    8d08:	00050593          	mv	a1,a0
    8d0c:	00a12423          	sw	a0,8(sp)
    8d10:	000d8513          	mv	a0,s11
    8d14:	794030ef          	jal	ra,c4a8 <__mulsi3>
    8d18:	00a12223          	sw	a0,4(sp)
    8d1c:	000d0593          	mv	a1,s10
    8d20:	000b0513          	mv	a0,s6
    8d24:	7f8030ef          	jal	ra,c51c <__umodsi3>
    8d28:	01812b03          	lw	s6,24(sp)
    8d2c:	00812603          	lw	a2,8(sp)
    8d30:	00412683          	lw	a3,4(sp)
    8d34:	01051513          	slli	a0,a0,0x10
    8d38:	010b5713          	srli	a4,s6,0x10
    8d3c:	00a76733          	or	a4,a4,a0
    8d40:	00060793          	mv	a5,a2
    8d44:	00d77e63          	bgeu	a4,a3,8d60 <__divtf3+0x6d4>
    8d48:	00870733          	add	a4,a4,s0
    8d4c:	fff60793          	addi	a5,a2,-1
    8d50:	00876863          	bltu	a4,s0,8d60 <__divtf3+0x6d4>
    8d54:	00d77663          	bgeu	a4,a3,8d60 <__divtf3+0x6d4>
    8d58:	ffe60793          	addi	a5,a2,-2
    8d5c:	00870733          	add	a4,a4,s0
    8d60:	40d70733          	sub	a4,a4,a3
    8d64:	00070513          	mv	a0,a4
    8d68:	000d0593          	mv	a1,s10
    8d6c:	00f12623          	sw	a5,12(sp)
    8d70:	00e12423          	sw	a4,8(sp)
    8d74:	760030ef          	jal	ra,c4d4 <__udivsi3>
    8d78:	00050593          	mv	a1,a0
    8d7c:	00a12223          	sw	a0,4(sp)
    8d80:	000d8513          	mv	a0,s11
    8d84:	724030ef          	jal	ra,c4a8 <__mulsi3>
    8d88:	00812703          	lw	a4,8(sp)
    8d8c:	00050d93          	mv	s11,a0
    8d90:	000d0593          	mv	a1,s10
    8d94:	00070513          	mv	a0,a4
    8d98:	784030ef          	jal	ra,c51c <__umodsi3>
    8d9c:	00412683          	lw	a3,4(sp)
    8da0:	01051513          	slli	a0,a0,0x10
    8da4:	017b7733          	and	a4,s6,s7
    8da8:	00a76733          	or	a4,a4,a0
    8dac:	00c12783          	lw	a5,12(sp)
    8db0:	00068613          	mv	a2,a3
    8db4:	01b77e63          	bgeu	a4,s11,8dd0 <__divtf3+0x744>
    8db8:	00870733          	add	a4,a4,s0
    8dbc:	fff68613          	addi	a2,a3,-1
    8dc0:	00876863          	bltu	a4,s0,8dd0 <__divtf3+0x744>
    8dc4:	01b77663          	bgeu	a4,s11,8dd0 <__divtf3+0x744>
    8dc8:	ffe68613          	addi	a2,a3,-2
    8dcc:	00870733          	add	a4,a4,s0
    8dd0:	02012f03          	lw	t5,32(sp)
    8dd4:	01079793          	slli	a5,a5,0x10
    8dd8:	00c7e7b3          	or	a5,a5,a2
    8ddc:	00fc2623          	sw	a5,12(s8)
    8de0:	41b70733          	sub	a4,a4,s11
    8de4:	0107df93          	srli	t6,a5,0x10
    8de8:	017f7eb3          	and	t4,t5,s7
    8dec:	0177f7b3          	and	a5,a5,s7
    8df0:	00e12e23          	sw	a4,28(sp)
    8df4:	010f5e13          	srli	t3,t5,0x10
    8df8:	00078513          	mv	a0,a5
    8dfc:	000e8593          	mv	a1,t4
    8e00:	6a8030ef          	jal	ra,c4a8 <__mulsi3>
    8e04:	00050813          	mv	a6,a0
    8e08:	000e0593          	mv	a1,t3
    8e0c:	00078513          	mv	a0,a5
    8e10:	698030ef          	jal	ra,c4a8 <__mulsi3>
    8e14:	00050713          	mv	a4,a0
    8e18:	000e8593          	mv	a1,t4
    8e1c:	000f8513          	mv	a0,t6
    8e20:	688030ef          	jal	ra,c4a8 <__mulsi3>
    8e24:	00050e93          	mv	t4,a0
    8e28:	000e0593          	mv	a1,t3
    8e2c:	000f8513          	mv	a0,t6
    8e30:	678030ef          	jal	ra,c4a8 <__mulsi3>
    8e34:	01085e13          	srli	t3,a6,0x10
    8e38:	01d70733          	add	a4,a4,t4
    8e3c:	00ee0e33          	add	t3,t3,a4
    8e40:	00050793          	mv	a5,a0
    8e44:	01de7463          	bgeu	t3,t4,8e4c <__divtf3+0x7c0>
    8e48:	015507b3          	add	a5,a0,s5
    8e4c:	00cc2f83          	lw	t6,12(s8)
    8e50:	02412e83          	lw	t4,36(sp)
    8e54:	010e5713          	srli	a4,t3,0x10
    8e58:	017e7e33          	and	t3,t3,s7
    8e5c:	01787833          	and	a6,a6,s7
    8e60:	010e1e13          	slli	t3,t3,0x10
    8e64:	010e0e33          	add	t3,t3,a6
    8e68:	017ef3b3          	and	t2,t4,s7
    8e6c:	017ff833          	and	a6,t6,s7
    8e70:	00f70733          	add	a4,a4,a5
    8e74:	010fdb13          	srli	s6,t6,0x10
    8e78:	010ed793          	srli	a5,t4,0x10
    8e7c:	00080513          	mv	a0,a6
    8e80:	00038593          	mv	a1,t2
    8e84:	624030ef          	jal	ra,c4a8 <__mulsi3>
    8e88:	00050293          	mv	t0,a0
    8e8c:	00078593          	mv	a1,a5
    8e90:	00080513          	mv	a0,a6
    8e94:	614030ef          	jal	ra,c4a8 <__mulsi3>
    8e98:	00050813          	mv	a6,a0
    8e9c:	00038593          	mv	a1,t2
    8ea0:	000b0513          	mv	a0,s6
    8ea4:	604030ef          	jal	ra,c4a8 <__mulsi3>
    8ea8:	00050393          	mv	t2,a0
    8eac:	00078593          	mv	a1,a5
    8eb0:	000b0513          	mv	a0,s6
    8eb4:	5f4030ef          	jal	ra,c4a8 <__mulsi3>
    8eb8:	0102d793          	srli	a5,t0,0x10
    8ebc:	00780633          	add	a2,a6,t2
    8ec0:	00c787b3          	add	a5,a5,a2
    8ec4:	00050593          	mv	a1,a0
    8ec8:	0077f463          	bgeu	a5,t2,8ed0 <__divtf3+0x844>
    8ecc:	015505b3          	add	a1,a0,s5
    8ed0:	0177f833          	and	a6,a5,s7
    8ed4:	0172f6b3          	and	a3,t0,s7
    8ed8:	01081813          	slli	a6,a6,0x10
    8edc:	00d80833          	add	a6,a6,a3
    8ee0:	0107d293          	srli	t0,a5,0x10
    8ee4:	02812783          	lw	a5,40(sp)
    8ee8:	00e80833          	add	a6,a6,a4
    8eec:	00e83733          	sltu	a4,a6,a4
    8ef0:	00e282b3          	add	t0,t0,a4
    8ef4:	017ffd33          	and	s10,t6,s7
    8ef8:	0177fb33          	and	s6,a5,s7
    8efc:	00b282b3          	add	t0,t0,a1
    8f00:	010fd713          	srli	a4,t6,0x10
    8f04:	0107dd93          	srli	s11,a5,0x10
    8f08:	000d0513          	mv	a0,s10
    8f0c:	000b0593          	mv	a1,s6
    8f10:	598030ef          	jal	ra,c4a8 <__mulsi3>
    8f14:	00050393          	mv	t2,a0
    8f18:	000d8593          	mv	a1,s11
    8f1c:	000d0513          	mv	a0,s10
    8f20:	588030ef          	jal	ra,c4a8 <__mulsi3>
    8f24:	00050d13          	mv	s10,a0
    8f28:	000b0593          	mv	a1,s6
    8f2c:	00070513          	mv	a0,a4
    8f30:	578030ef          	jal	ra,c4a8 <__mulsi3>
    8f34:	00050b13          	mv	s6,a0
    8f38:	000d8593          	mv	a1,s11
    8f3c:	00070513          	mv	a0,a4
    8f40:	568030ef          	jal	ra,c4a8 <__mulsi3>
    8f44:	00050613          	mv	a2,a0
    8f48:	0103d713          	srli	a4,t2,0x10
    8f4c:	016d0533          	add	a0,s10,s6
    8f50:	00a70733          	add	a4,a4,a0
    8f54:	01677463          	bgeu	a4,s6,8f5c <__divtf3+0x8d0>
    8f58:	01560633          	add	a2,a2,s5
    8f5c:	017776b3          	and	a3,a4,s7
    8f60:	0173f3b3          	and	t2,t2,s7
    8f64:	01069693          	slli	a3,a3,0x10
    8f68:	007686b3          	add	a3,a3,t2
    8f6c:	005686b3          	add	a3,a3,t0
    8f70:	01075713          	srli	a4,a4,0x10
    8f74:	0056b2b3          	sltu	t0,a3,t0
    8f78:	00570733          	add	a4,a4,t0
    8f7c:	00c70533          	add	a0,a4,a2
    8f80:	00cca583          	lw	a1,12(s9)
    8f84:	01412703          	lw	a4,20(sp)
    8f88:	01012603          	lw	a2,16(sp)
    8f8c:	01c12383          	lw	t2,28(sp)
    8f90:	00e12c23          	sw	a4,24(sp)
    8f94:	00c12a23          	sw	a2,20(sp)
    8f98:	00b12823          	sw	a1,16(sp)
    8f9c:	00a3ee63          	bltu	t2,a0,8fb8 <__divtf3+0x92c>
    8fa0:	0e751863          	bne	a0,t2,9090 <__divtf3+0xa04>
    8fa4:	00d76a63          	bltu	a4,a3,8fb8 <__divtf3+0x92c>
    8fa8:	0ed71463          	bne	a4,a3,9090 <__divtf3+0xa04>
    8fac:	01066663          	bltu	a2,a6,8fb8 <__divtf3+0x92c>
    8fb0:	0f061063          	bne	a2,a6,9090 <__divtf3+0xa04>
    8fb4:	0dc5fe63          	bgeu	a1,t3,9090 <__divtf3+0xa04>
    8fb8:	01e585b3          	add	a1,a1,t5
    8fbc:	ffff8293          	addi	t0,t6,-1
    8fc0:	01e5bb33          	sltu	s6,a1,t5
    8fc4:	01d60633          	add	a2,a2,t4
    8fc8:	005c2623          	sw	t0,12(s8)
    8fcc:	016602b3          	add	t0,a2,s6
    8fd0:	0162bb33          	sltu	s6,t0,s6
    8fd4:	01d63633          	sltu	a2,a2,t4
    8fd8:	01666633          	or	a2,a2,s6
    8fdc:	00f70733          	add	a4,a4,a5
    8fe0:	00c70b33          	add	s6,a4,a2
    8fe4:	00cb3633          	sltu	a2,s6,a2
    8fe8:	00f73733          	sltu	a4,a4,a5
    8fec:	00c76733          	or	a4,a4,a2
    8ff0:	008383b3          	add	t2,t2,s0
    8ff4:	00770733          	add	a4,a4,t2
    8ff8:	00b12823          	sw	a1,16(sp)
    8ffc:	00512a23          	sw	t0,20(sp)
    9000:	01612c23          	sw	s6,24(sp)
    9004:	00e12e23          	sw	a4,28(sp)
    9008:	00e46e63          	bltu	s0,a4,9024 <__divtf3+0x998>
    900c:	08e41263          	bne	s0,a4,9090 <__divtf3+0xa04>
    9010:	0167ea63          	bltu	a5,s6,9024 <__divtf3+0x998>
    9014:	07679e63          	bne	a5,s6,9090 <__divtf3+0xa04>
    9018:	005ee663          	bltu	t4,t0,9024 <__divtf3+0x998>
    901c:	065e9a63          	bne	t4,t0,9090 <__divtf3+0xa04>
    9020:	07e5e863          	bltu	a1,t5,9090 <__divtf3+0xa04>
    9024:	00a76e63          	bltu	a4,a0,9040 <__divtf3+0x9b4>
    9028:	06e51463          	bne	a0,a4,9090 <__divtf3+0xa04>
    902c:	00db6a63          	bltu	s6,a3,9040 <__divtf3+0x9b4>
    9030:	06db1063          	bne	s6,a3,9090 <__divtf3+0xa04>
    9034:	0102e663          	bltu	t0,a6,9040 <__divtf3+0x9b4>
    9038:	05029c63          	bne	t0,a6,9090 <__divtf3+0xa04>
    903c:	05c5fa63          	bgeu	a1,t3,9090 <__divtf3+0xa04>
    9040:	00bf05b3          	add	a1,t5,a1
    9044:	01e5bf33          	sltu	t5,a1,t5
    9048:	005e82b3          	add	t0,t4,t0
    904c:	01e28633          	add	a2,t0,t5
    9050:	00c12a23          	sw	a2,20(sp)
    9054:	01d2beb3          	sltu	t4,t0,t4
    9058:	01e63633          	sltu	a2,a2,t5
    905c:	00ceeeb3          	or	t4,t4,a2
    9060:	01678b33          	add	s6,a5,s6
    9064:	01db0633          	add	a2,s6,t4
    9068:	00fb37b3          	sltu	a5,s6,a5
    906c:	00c12c23          	sw	a2,24(sp)
    9070:	01d63633          	sltu	a2,a2,t4
    9074:	00c7e633          	or	a2,a5,a2
    9078:	00e407b3          	add	a5,s0,a4
    907c:	ffef8f93          	addi	t6,t6,-2
    9080:	00f607b3          	add	a5,a2,a5
    9084:	01fc2623          	sw	t6,12(s8)
    9088:	00b12823          	sw	a1,16(sp)
    908c:	00f12e23          	sw	a5,28(sp)
    9090:	01012e83          	lw	t4,16(sp)
    9094:	01412703          	lw	a4,20(sp)
    9098:	01812603          	lw	a2,24(sp)
    909c:	41ce8fb3          	sub	t6,t4,t3
    90a0:	41070f33          	sub	t5,a4,a6
    90a4:	01feb5b3          	sltu	a1,t4,t6
    90a8:	01e732b3          	sltu	t0,a4,t5
    90ac:	01c12783          	lw	a5,28(sp)
    90b0:	40bf0f33          	sub	t5,t5,a1
    90b4:	00000593          	li	a1,0
    90b8:	01fef663          	bgeu	t4,t6,90c4 <__divtf3+0xa38>
    90bc:	40e80733          	sub	a4,a6,a4
    90c0:	00173593          	seqz	a1,a4
    90c4:	0055e5b3          	or	a1,a1,t0
    90c8:	40d60733          	sub	a4,a2,a3
    90cc:	00e632b3          	sltu	t0,a2,a4
    90d0:	00000e93          	li	t4,0
    90d4:	40b70733          	sub	a4,a4,a1
    90d8:	00058663          	beqz	a1,90e4 <__divtf3+0xa58>
    90dc:	40c68633          	sub	a2,a3,a2
    90e0:	00163e93          	seqz	t4,a2
    90e4:	40a787b3          	sub	a5,a5,a0
    90e8:	005eeeb3          	or	t4,t4,t0
    90ec:	41d787b3          	sub	a5,a5,t4
    90f0:	00f12e23          	sw	a5,28(sp)
    90f4:	00e12c23          	sw	a4,24(sp)
    90f8:	01e12a23          	sw	t5,20(sp)
    90fc:	01f12823          	sw	t6,16(sp)
    9100:	bc0a1ee3          	bnez	s4,8cdc <__divtf3+0x650>
    9104:	01fe1863          	bne	t3,t6,9114 <__divtf3+0xa88>
    9108:	010f1663          	bne	t5,a6,9114 <__divtf3+0xa88>
    910c:	00d71463          	bne	a4,a3,9114 <__divtf3+0xa88>
    9110:	00f50863          	beq	a0,a5,9120 <__divtf3+0xa94>
    9114:	03012783          	lw	a5,48(sp)
    9118:	0017e793          	ori	a5,a5,1
    911c:	02f12823          	sw	a5,48(sp)
    9120:	000047b7          	lui	a5,0x4
    9124:	fff78793          	addi	a5,a5,-1 # 3fff <__kernel_rem_pio2+0x717>
    9128:	00f987b3          	add	a5,s3,a5
    912c:	1cf05c63          	blez	a5,9304 <__divtf3+0xc78>
    9130:	03012703          	lw	a4,48(sp)
    9134:	00777693          	andi	a3,a4,7
    9138:	04068463          	beqz	a3,9180 <__divtf3+0xaf4>
    913c:	00f77693          	andi	a3,a4,15
    9140:	00400613          	li	a2,4
    9144:	02c68e63          	beq	a3,a2,9180 <__divtf3+0xaf4>
    9148:	03412683          	lw	a3,52(sp)
    914c:	00470713          	addi	a4,a4,4
    9150:	02e12823          	sw	a4,48(sp)
    9154:	00473713          	sltiu	a4,a4,4
    9158:	00d706b3          	add	a3,a4,a3
    915c:	02d12a23          	sw	a3,52(sp)
    9160:	00e6b6b3          	sltu	a3,a3,a4
    9164:	03812703          	lw	a4,56(sp)
    9168:	00e68733          	add	a4,a3,a4
    916c:	02e12c23          	sw	a4,56(sp)
    9170:	00d73733          	sltu	a4,a4,a3
    9174:	03c12683          	lw	a3,60(sp)
    9178:	00d70733          	add	a4,a4,a3
    917c:	02e12e23          	sw	a4,60(sp)
    9180:	03c12703          	lw	a4,60(sp)
    9184:	001006b7          	lui	a3,0x100
    9188:	00d776b3          	and	a3,a4,a3
    918c:	00068e63          	beqz	a3,91a8 <__divtf3+0xb1c>
    9190:	fff007b7          	lui	a5,0xfff00
    9194:	fff78793          	addi	a5,a5,-1 # ffefffff <soln_cnt0+0xffeef523>
    9198:	00f77733          	and	a4,a4,a5
    919c:	000047b7          	lui	a5,0x4
    91a0:	02e12e23          	sw	a4,60(sp)
    91a4:	00f987b3          	add	a5,s3,a5
    91a8:	03010713          	addi	a4,sp,48
    91ac:	03c10593          	addi	a1,sp,60
    91b0:	00072683          	lw	a3,0(a4)
    91b4:	00472603          	lw	a2,4(a4)
    91b8:	00470713          	addi	a4,a4,4
    91bc:	0036d693          	srli	a3,a3,0x3
    91c0:	01d61613          	slli	a2,a2,0x1d
    91c4:	00c6e6b3          	or	a3,a3,a2
    91c8:	fed72e23          	sw	a3,-4(a4)
    91cc:	fee592e3          	bne	a1,a4,91b0 <__divtf3+0xb24>
    91d0:	000086b7          	lui	a3,0x8
    91d4:	ffe68613          	addi	a2,a3,-2 # 7ffe <__addtf3+0xe62>
    91d8:	03c12703          	lw	a4,60(sp)
    91dc:	10f64863          	blt	a2,a5,92ec <__divtf3+0xc60>
    91e0:	00375713          	srli	a4,a4,0x3
    91e4:	02e12e23          	sw	a4,60(sp)
    91e8:	01179793          	slli	a5,a5,0x11
    91ec:	0117d793          	srli	a5,a5,0x11
    91f0:	00f91913          	slli	s2,s2,0xf
    91f4:	00f96933          	or	s2,s2,a5
    91f8:	03012783          	lw	a5,48(sp)
    91fc:	03c12703          	lw	a4,60(sp)
    9200:	05211723          	sh	s2,78(sp)
    9204:	00f4a023          	sw	a5,0(s1)
    9208:	03412783          	lw	a5,52(sp)
    920c:	04e11623          	sh	a4,76(sp)
    9210:	08c12083          	lw	ra,140(sp)
    9214:	00f4a223          	sw	a5,4(s1)
    9218:	03812783          	lw	a5,56(sp)
    921c:	08812403          	lw	s0,136(sp)
    9220:	08012903          	lw	s2,128(sp)
    9224:	00f4a423          	sw	a5,8(s1)
    9228:	04c12783          	lw	a5,76(sp)
    922c:	07c12983          	lw	s3,124(sp)
    9230:	07812a03          	lw	s4,120(sp)
    9234:	00f4a623          	sw	a5,12(s1)
    9238:	07412a83          	lw	s5,116(sp)
    923c:	07012b03          	lw	s6,112(sp)
    9240:	06c12b83          	lw	s7,108(sp)
    9244:	06812c03          	lw	s8,104(sp)
    9248:	06412c83          	lw	s9,100(sp)
    924c:	06012d03          	lw	s10,96(sp)
    9250:	05c12d83          	lw	s11,92(sp)
    9254:	00048513          	mv	a0,s1
    9258:	08412483          	lw	s1,132(sp)
    925c:	09010113          	addi	sp,sp,144
    9260:	00008067          	ret
    9264:	01012783          	lw	a5,16(sp)
    9268:	000a8913          	mv	s2,s5
    926c:	000b0713          	mv	a4,s6
    9270:	02f12823          	sw	a5,48(sp)
    9274:	01412783          	lw	a5,20(sp)
    9278:	02f12a23          	sw	a5,52(sp)
    927c:	01812783          	lw	a5,24(sp)
    9280:	02f12c23          	sw	a5,56(sp)
    9284:	01c12783          	lw	a5,28(sp)
    9288:	02f12e23          	sw	a5,60(sp)
    928c:	00100793          	li	a5,1
    9290:	28f70063          	beq	a4,a5,9510 <__divtf3+0xe84>
    9294:	e80706e3          	beqz	a4,9120 <__divtf3+0xa94>
    9298:	00200793          	li	a5,2
    929c:	28f70463          	beq	a4,a5,9524 <__divtf3+0xe98>
    92a0:	00300793          	li	a5,3
    92a4:	e6f71ee3          	bne	a4,a5,9120 <__divtf3+0xa94>
    92a8:	000087b7          	lui	a5,0x8
    92ac:	02f12e23          	sw	a5,60(sp)
    92b0:	02012c23          	sw	zero,56(sp)
    92b4:	02012a23          	sw	zero,52(sp)
    92b8:	02012823          	sw	zero,48(sp)
    92bc:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    92c0:	00000913          	li	s2,0
    92c4:	f25ff06f          	j	91e8 <__divtf3+0xb5c>
    92c8:	02012783          	lw	a5,32(sp)
    92cc:	000a0913          	mv	s2,s4
    92d0:	02f12823          	sw	a5,48(sp)
    92d4:	02412783          	lw	a5,36(sp)
    92d8:	02f12a23          	sw	a5,52(sp)
    92dc:	02812783          	lw	a5,40(sp)
    92e0:	02f12c23          	sw	a5,56(sp)
    92e4:	02c12783          	lw	a5,44(sp)
    92e8:	fa1ff06f          	j	9288 <__divtf3+0xbfc>
    92ec:	02012e23          	sw	zero,60(sp)
    92f0:	02012c23          	sw	zero,56(sp)
    92f4:	02012a23          	sw	zero,52(sp)
    92f8:	02012823          	sw	zero,48(sp)
    92fc:	fff68793          	addi	a5,a3,-1
    9300:	ee9ff06f          	j	91e8 <__divtf3+0xb5c>
    9304:	00100713          	li	a4,1
    9308:	40f707b3          	sub	a5,a4,a5
    930c:	07400713          	li	a4,116
    9310:	1cf74463          	blt	a4,a5,94d8 <__divtf3+0xe4c>
    9314:	03010993          	addi	s3,sp,48
    9318:	4057d513          	srai	a0,a5,0x5
    931c:	00098693          	mv	a3,s3
    9320:	00000413          	li	s0,0
    9324:	00000713          	li	a4,0
    9328:	04a71263          	bne	a4,a0,936c <__divtf3+0xce0>
    932c:	01f7f793          	andi	a5,a5,31
    9330:	00251693          	slli	a3,a0,0x2
    9334:	04079663          	bnez	a5,9380 <__divtf3+0xcf4>
    9338:	00300613          	li	a2,3
    933c:	00098793          	mv	a5,s3
    9340:	00000713          	li	a4,0
    9344:	40a60633          	sub	a2,a2,a0
    9348:	00d785b3          	add	a1,a5,a3
    934c:	0005a583          	lw	a1,0(a1)
    9350:	00170713          	addi	a4,a4,1
    9354:	00478793          	addi	a5,a5,4
    9358:	feb7ae23          	sw	a1,-4(a5)
    935c:	fee656e3          	bge	a2,a4,9348 <__divtf3+0xcbc>
    9360:	00400793          	li	a5,4
    9364:	40a78533          	sub	a0,a5,a0
    9368:	0780006f          	j	93e0 <__divtf3+0xd54>
    936c:	0006a603          	lw	a2,0(a3)
    9370:	00170713          	addi	a4,a4,1
    9374:	00468693          	addi	a3,a3,4
    9378:	00c46433          	or	s0,s0,a2
    937c:	fadff06f          	j	9328 <__divtf3+0xc9c>
    9380:	04068713          	addi	a4,a3,64
    9384:	01010613          	addi	a2,sp,16
    9388:	00c70733          	add	a4,a4,a2
    938c:	fe072703          	lw	a4,-32(a4)
    9390:	02000593          	li	a1,32
    9394:	40f585b3          	sub	a1,a1,a5
    9398:	00b71733          	sll	a4,a4,a1
    939c:	00e46433          	or	s0,s0,a4
    93a0:	00300713          	li	a4,3
    93a4:	00d986b3          	add	a3,s3,a3
    93a8:	00098893          	mv	a7,s3
    93ac:	00000813          	li	a6,0
    93b0:	40a70733          	sub	a4,a4,a0
    93b4:	00468693          	addi	a3,a3,4
    93b8:	0ce84263          	blt	a6,a4,947c <__divtf3+0xdf0>
    93bc:	00400693          	li	a3,4
    93c0:	00271713          	slli	a4,a4,0x2
    93c4:	40a68533          	sub	a0,a3,a0
    93c8:	04070713          	addi	a4,a4,64
    93cc:	01010693          	addi	a3,sp,16
    93d0:	00d70733          	add	a4,a4,a3
    93d4:	03c12683          	lw	a3,60(sp)
    93d8:	00f6d7b3          	srl	a5,a3,a5
    93dc:	fef72023          	sw	a5,-32(a4)
    93e0:	00400a13          	li	s4,4
    93e4:	40aa0633          	sub	a2,s4,a0
    93e8:	00251513          	slli	a0,a0,0x2
    93ec:	00261613          	slli	a2,a2,0x2
    93f0:	00000593          	li	a1,0
    93f4:	00a98533          	add	a0,s3,a0
    93f8:	1e0030ef          	jal	ra,c5d8 <memset>
    93fc:	03012703          	lw	a4,48(sp)
    9400:	008037b3          	snez	a5,s0
    9404:	00e7e7b3          	or	a5,a5,a4
    9408:	02f12823          	sw	a5,48(sp)
    940c:	0077f713          	andi	a4,a5,7
    9410:	04070263          	beqz	a4,9454 <__divtf3+0xdc8>
    9414:	00f7f713          	andi	a4,a5,15
    9418:	03470e63          	beq	a4,s4,9454 <__divtf3+0xdc8>
    941c:	03412703          	lw	a4,52(sp)
    9420:	00478793          	addi	a5,a5,4
    9424:	02f12823          	sw	a5,48(sp)
    9428:	0047b793          	sltiu	a5,a5,4
    942c:	00e78733          	add	a4,a5,a4
    9430:	02e12a23          	sw	a4,52(sp)
    9434:	00f73733          	sltu	a4,a4,a5
    9438:	03812783          	lw	a5,56(sp)
    943c:	00f707b3          	add	a5,a4,a5
    9440:	02f12c23          	sw	a5,56(sp)
    9444:	00e7b7b3          	sltu	a5,a5,a4
    9448:	03c12703          	lw	a4,60(sp)
    944c:	00e787b3          	add	a5,a5,a4
    9450:	02f12e23          	sw	a5,60(sp)
    9454:	03c12703          	lw	a4,60(sp)
    9458:	000807b7          	lui	a5,0x80
    945c:	00e7f7b3          	and	a5,a5,a4
    9460:	04078063          	beqz	a5,94a0 <__divtf3+0xe14>
    9464:	02012e23          	sw	zero,60(sp)
    9468:	02012c23          	sw	zero,56(sp)
    946c:	02012a23          	sw	zero,52(sp)
    9470:	02012823          	sw	zero,48(sp)
    9474:	00100793          	li	a5,1
    9478:	d71ff06f          	j	91e8 <__divtf3+0xb5c>
    947c:	ffc6a603          	lw	a2,-4(a3)
    9480:	0006a303          	lw	t1,0(a3)
    9484:	00180813          	addi	a6,a6,1
    9488:	00f65633          	srl	a2,a2,a5
    948c:	00b31333          	sll	t1,t1,a1
    9490:	00666633          	or	a2,a2,t1
    9494:	00c8a023          	sw	a2,0(a7)
    9498:	00488893          	addi	a7,a7,4
    949c:	f19ff06f          	j	93b4 <__divtf3+0xd28>
    94a0:	00c98693          	addi	a3,s3,12
    94a4:	0009a783          	lw	a5,0(s3)
    94a8:	0049a703          	lw	a4,4(s3)
    94ac:	00498993          	addi	s3,s3,4
    94b0:	0037d793          	srli	a5,a5,0x3
    94b4:	01d71713          	slli	a4,a4,0x1d
    94b8:	00e7e7b3          	or	a5,a5,a4
    94bc:	fef9ae23          	sw	a5,-4(s3)
    94c0:	fed992e3          	bne	s3,a3,94a4 <__divtf3+0xe18>
    94c4:	03c12783          	lw	a5,60(sp)
    94c8:	0037d793          	srli	a5,a5,0x3
    94cc:	02f12e23          	sw	a5,60(sp)
    94d0:	00000793          	li	a5,0
    94d4:	d15ff06f          	j	91e8 <__divtf3+0xb5c>
    94d8:	03412783          	lw	a5,52(sp)
    94dc:	03012703          	lw	a4,48(sp)
    94e0:	00f76733          	or	a4,a4,a5
    94e4:	03812783          	lw	a5,56(sp)
    94e8:	00f76733          	or	a4,a4,a5
    94ec:	03c12783          	lw	a5,60(sp)
    94f0:	00f76733          	or	a4,a4,a5
    94f4:	00000793          	li	a5,0
    94f8:	ce0708e3          	beqz	a4,91e8 <__divtf3+0xb5c>
    94fc:	02012e23          	sw	zero,60(sp)
    9500:	02012c23          	sw	zero,56(sp)
    9504:	02012a23          	sw	zero,52(sp)
    9508:	02012823          	sw	zero,48(sp)
    950c:	cddff06f          	j	91e8 <__divtf3+0xb5c>
    9510:	02012e23          	sw	zero,60(sp)
    9514:	02012c23          	sw	zero,56(sp)
    9518:	02012a23          	sw	zero,52(sp)
    951c:	02012823          	sw	zero,48(sp)
    9520:	fb1ff06f          	j	94d0 <__divtf3+0xe44>
    9524:	000087b7          	lui	a5,0x8
    9528:	02012e23          	sw	zero,60(sp)
    952c:	02012c23          	sw	zero,56(sp)
    9530:	02012a23          	sw	zero,52(sp)
    9534:	02012823          	sw	zero,48(sp)
    9538:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    953c:	cadff06f          	j	91e8 <__divtf3+0xb5c>

00009540 <__letf2>:
    9540:	00052f83          	lw	t6,0(a0)
    9544:	00452803          	lw	a6,4(a0)
    9548:	00852e03          	lw	t3,8(a0)
    954c:	00c52503          	lw	a0,12(a0)
    9550:	00c5a683          	lw	a3,12(a1)
    9554:	000087b7          	lui	a5,0x8
    9558:	01055613          	srli	a2,a0,0x10
    955c:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    9560:	01069313          	slli	t1,a3,0x10
    9564:	0106d713          	srli	a4,a3,0x10
    9568:	0005a283          	lw	t0,0(a1)
    956c:	0045a883          	lw	a7,4(a1)
    9570:	0085ae83          	lw	t4,8(a1)
    9574:	00f67633          	and	a2,a2,a5
    9578:	01051593          	slli	a1,a0,0x10
    957c:	ff010113          	addi	sp,sp,-16
    9580:	0105d593          	srli	a1,a1,0x10
    9584:	01f55513          	srli	a0,a0,0x1f
    9588:	01035313          	srli	t1,t1,0x10
    958c:	00f77733          	and	a4,a4,a5
    9590:	01f6d693          	srli	a3,a3,0x1f
    9594:	00f61e63          	bne	a2,a5,95b0 <__letf2+0x70>
    9598:	01f867b3          	or	a5,a6,t6
    959c:	01c7e7b3          	or	a5,a5,t3
    95a0:	00b7e7b3          	or	a5,a5,a1
    95a4:	0c078863          	beqz	a5,9674 <__letf2+0x134>
    95a8:	00200513          	li	a0,2
    95ac:	0640006f          	j	9610 <__letf2+0xd0>
    95b0:	00f71a63          	bne	a4,a5,95c4 <__letf2+0x84>
    95b4:	0112e7b3          	or	a5,t0,a7
    95b8:	01d7e7b3          	or	a5,a5,t4
    95bc:	0067e7b3          	or	a5,a5,t1
    95c0:	fe0794e3          	bnez	a5,95a8 <__letf2+0x68>
    95c4:	0a061a63          	bnez	a2,9678 <__letf2+0x138>
    95c8:	01f867b3          	or	a5,a6,t6
    95cc:	01c7e7b3          	or	a5,a5,t3
    95d0:	00b7e7b3          	or	a5,a5,a1
    95d4:	0017b793          	seqz	a5,a5
    95d8:	00071a63          	bnez	a4,95ec <__letf2+0xac>
    95dc:	0112ef33          	or	t5,t0,a7
    95e0:	01df6f33          	or	t5,t5,t4
    95e4:	006f6f33          	or	t5,t5,t1
    95e8:	060f0a63          	beqz	t5,965c <__letf2+0x11c>
    95ec:	00079c63          	bnez	a5,9604 <__letf2+0xc4>
    95f0:	00a69463          	bne	a3,a0,95f8 <__letf2+0xb8>
    95f4:	02c75263          	bge	a4,a2,9618 <__letf2+0xd8>
    95f8:	04050e63          	beqz	a0,9654 <__letf2+0x114>
    95fc:	fff00513          	li	a0,-1
    9600:	0100006f          	j	9610 <__letf2+0xd0>
    9604:	fff00513          	li	a0,-1
    9608:	00068463          	beqz	a3,9610 <__letf2+0xd0>
    960c:	00068513          	mv	a0,a3
    9610:	01010113          	addi	sp,sp,16
    9614:	00008067          	ret
    9618:	00e65663          	bge	a2,a4,9624 <__letf2+0xe4>
    961c:	fe051ae3          	bnez	a0,9610 <__letf2+0xd0>
    9620:	fddff06f          	j	95fc <__letf2+0xbc>
    9624:	fcb36ae3          	bltu	t1,a1,95f8 <__letf2+0xb8>
    9628:	02659e63          	bne	a1,t1,9664 <__letf2+0x124>
    962c:	fdcee6e3          	bltu	t4,t3,95f8 <__letf2+0xb8>
    9630:	03de1e63          	bne	t3,t4,966c <__letf2+0x12c>
    9634:	fd08e2e3          	bltu	a7,a6,95f8 <__letf2+0xb8>
    9638:	01181463          	bne	a6,a7,9640 <__letf2+0x100>
    963c:	fbf2eee3          	bltu	t0,t6,95f8 <__letf2+0xb8>
    9640:	fd186ee3          	bltu	a6,a7,961c <__letf2+0xdc>
    9644:	01181463          	bne	a6,a7,964c <__letf2+0x10c>
    9648:	fc5feae3          	bltu	t6,t0,961c <__letf2+0xdc>
    964c:	00000513          	li	a0,0
    9650:	fc1ff06f          	j	9610 <__letf2+0xd0>
    9654:	00100513          	li	a0,1
    9658:	fb9ff06f          	j	9610 <__letf2+0xd0>
    965c:	fe0798e3          	bnez	a5,964c <__letf2+0x10c>
    9660:	f99ff06f          	j	95f8 <__letf2+0xb8>
    9664:	fa65ece3          	bltu	a1,t1,961c <__letf2+0xdc>
    9668:	fe5ff06f          	j	964c <__letf2+0x10c>
    966c:	fbde68e3          	bltu	t3,t4,961c <__letf2+0xdc>
    9670:	fddff06f          	j	964c <__letf2+0x10c>
    9674:	f4c700e3          	beq	a4,a2,95b4 <__letf2+0x74>
    9678:	f6071ce3          	bnez	a4,95f0 <__letf2+0xb0>
    967c:	00000793          	li	a5,0
    9680:	f5dff06f          	j	95dc <__letf2+0x9c>

00009684 <__multf3>:
    9684:	f6010113          	addi	sp,sp,-160
    9688:	09312623          	sw	s3,140(sp)
    968c:	00c5a983          	lw	s3,12(a1)
    9690:	0005a783          	lw	a5,0(a1)
    9694:	0085a683          	lw	a3,8(a1)
    9698:	08912a23          	sw	s1,148(sp)
    969c:	00050493          	mv	s1,a0
    96a0:	0045a503          	lw	a0,4(a1)
    96a4:	01099713          	slli	a4,s3,0x10
    96a8:	09412423          	sw	s4,136(sp)
    96ac:	09512223          	sw	s5,132(sp)
    96b0:	00c62a03          	lw	s4,12(a2)
    96b4:	00062a83          	lw	s5,0(a2)
    96b8:	09612023          	sw	s6,128(sp)
    96bc:	07712e23          	sw	s7,124(sp)
    96c0:	00862b03          	lw	s6,8(a2)
    96c4:	00462b83          	lw	s7,4(a2)
    96c8:	00008637          	lui	a2,0x8
    96cc:	09212823          	sw	s2,144(sp)
    96d0:	01075713          	srli	a4,a4,0x10
    96d4:	0109d913          	srli	s2,s3,0x10
    96d8:	fff60613          	addi	a2,a2,-1 # 7fff <__addtf3+0xe63>
    96dc:	05312623          	sw	s3,76(sp)
    96e0:	08112e23          	sw	ra,156(sp)
    96e4:	08812c23          	sw	s0,152(sp)
    96e8:	07812c23          	sw	s8,120(sp)
    96ec:	07912a23          	sw	s9,116(sp)
    96f0:	07a12823          	sw	s10,112(sp)
    96f4:	07b12623          	sw	s11,108(sp)
    96f8:	04f12023          	sw	a5,64(sp)
    96fc:	04a12223          	sw	a0,68(sp)
    9700:	04d12423          	sw	a3,72(sp)
    9704:	00f12823          	sw	a5,16(sp)
    9708:	00a12a23          	sw	a0,20(sp)
    970c:	00d12c23          	sw	a3,24(sp)
    9710:	00e12e23          	sw	a4,28(sp)
    9714:	00c97933          	and	s2,s2,a2
    9718:	01f9d993          	srli	s3,s3,0x1f
    971c:	580906e3          	beqz	s2,a4a8 <__multf3+0xe24>
    9720:	6ac902e3          	beq	s2,a2,a5c4 <__multf3+0xf40>
    9724:	000107b7          	lui	a5,0x10
    9728:	00f76733          	or	a4,a4,a5
    972c:	00e12e23          	sw	a4,28(sp)
    9730:	01010613          	addi	a2,sp,16
    9734:	01c10793          	addi	a5,sp,28
    9738:	0007a703          	lw	a4,0(a5) # 10000 <impure_data>
    973c:	ffc7a683          	lw	a3,-4(a5)
    9740:	ffc78793          	addi	a5,a5,-4
    9744:	00371713          	slli	a4,a4,0x3
    9748:	01d6d693          	srli	a3,a3,0x1d
    974c:	00d76733          	or	a4,a4,a3
    9750:	00e7a223          	sw	a4,4(a5)
    9754:	fef612e3          	bne	a2,a5,9738 <__multf3+0xb4>
    9758:	01012783          	lw	a5,16(sp)
    975c:	00379793          	slli	a5,a5,0x3
    9760:	00f12823          	sw	a5,16(sp)
    9764:	ffffc7b7          	lui	a5,0xffffc
    9768:	00178793          	addi	a5,a5,1 # ffffc001 <soln_cnt0+0xfffeb525>
    976c:	00f90933          	add	s2,s2,a5
    9770:	00000c13          	li	s8,0
    9774:	010a1513          	slli	a0,s4,0x10
    9778:	00008737          	lui	a4,0x8
    977c:	010a5793          	srli	a5,s4,0x10
    9780:	01055513          	srli	a0,a0,0x10
    9784:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    9788:	05412623          	sw	s4,76(sp)
    978c:	05512023          	sw	s5,64(sp)
    9790:	05712223          	sw	s7,68(sp)
    9794:	05612423          	sw	s6,72(sp)
    9798:	03512023          	sw	s5,32(sp)
    979c:	03712223          	sw	s7,36(sp)
    97a0:	03612423          	sw	s6,40(sp)
    97a4:	02a12623          	sw	a0,44(sp)
    97a8:	00e7f7b3          	and	a5,a5,a4
    97ac:	01fa5a13          	srli	s4,s4,0x1f
    97b0:	62078ee3          	beqz	a5,a5ec <__multf3+0xf68>
    97b4:	00e79463          	bne	a5,a4,97bc <__multf3+0x138>
    97b8:	7510006f          	j	a708 <__multf3+0x1084>
    97bc:	00010737          	lui	a4,0x10
    97c0:	00e56533          	or	a0,a0,a4
    97c4:	02a12623          	sw	a0,44(sp)
    97c8:	02010593          	addi	a1,sp,32
    97cc:	02c10713          	addi	a4,sp,44
    97d0:	00072683          	lw	a3,0(a4) # 10000 <impure_data>
    97d4:	ffc72603          	lw	a2,-4(a4)
    97d8:	ffc70713          	addi	a4,a4,-4
    97dc:	00369693          	slli	a3,a3,0x3
    97e0:	01d65613          	srli	a2,a2,0x1d
    97e4:	00c6e6b3          	or	a3,a3,a2
    97e8:	00d72223          	sw	a3,4(a4)
    97ec:	fee592e3          	bne	a1,a4,97d0 <__multf3+0x14c>
    97f0:	02012703          	lw	a4,32(sp)
    97f4:	00371713          	slli	a4,a4,0x3
    97f8:	02e12023          	sw	a4,32(sp)
    97fc:	ffffc737          	lui	a4,0xffffc
    9800:	00170713          	addi	a4,a4,1 # ffffc001 <soln_cnt0+0xfffeb525>
    9804:	00e787b3          	add	a5,a5,a4
    9808:	00000693          	li	a3,0
    980c:	012787b3          	add	a5,a5,s2
    9810:	00f12423          	sw	a5,8(sp)
    9814:	00178c93          	addi	s9,a5,1
    9818:	002c1793          	slli	a5,s8,0x2
    981c:	00d7e7b3          	or	a5,a5,a3
    9820:	00a00713          	li	a4,10
    9824:	0149c433          	xor	s0,s3,s4
    9828:	00f75463          	bge	a4,a5,9830 <__multf3+0x1ac>
    982c:	74d0006f          	j	a778 <__multf3+0x10f4>
    9830:	00200713          	li	a4,2
    9834:	00f75463          	bge	a4,a5,983c <__multf3+0x1b8>
    9838:	6fd0006f          	j	a734 <__multf3+0x10b0>
    983c:	fff78793          	addi	a5,a5,-1
    9840:	00100713          	li	a4,1
    9844:	00f76463          	bltu	a4,a5,984c <__multf3+0x1c8>
    9848:	7950006f          	j	a7dc <__multf3+0x1158>
    984c:	01012283          	lw	t0,16(sp)
    9850:	02012f83          	lw	t6,32(sp)
    9854:	00010337          	lui	t1,0x10
    9858:	fff30793          	addi	a5,t1,-1 # ffff <main+0x394b>
    985c:	00f2f833          	and	a6,t0,a5
    9860:	00fff7b3          	and	a5,t6,a5
    9864:	0102de93          	srli	t4,t0,0x10
    9868:	010fd713          	srli	a4,t6,0x10
    986c:	00080513          	mv	a0,a6
    9870:	00078593          	mv	a1,a5
    9874:	435020ef          	jal	ra,c4a8 <__mulsi3>
    9878:	00050e13          	mv	t3,a0
    987c:	00070593          	mv	a1,a4
    9880:	00080513          	mv	a0,a6
    9884:	425020ef          	jal	ra,c4a8 <__mulsi3>
    9888:	00050813          	mv	a6,a0
    988c:	00078593          	mv	a1,a5
    9890:	000e8513          	mv	a0,t4
    9894:	415020ef          	jal	ra,c4a8 <__mulsi3>
    9898:	00050893          	mv	a7,a0
    989c:	00070593          	mv	a1,a4
    98a0:	000e8513          	mv	a0,t4
    98a4:	405020ef          	jal	ra,c4a8 <__mulsi3>
    98a8:	010e5713          	srli	a4,t3,0x10
    98ac:	01180833          	add	a6,a6,a7
    98b0:	01070733          	add	a4,a4,a6
    98b4:	00050793          	mv	a5,a0
    98b8:	01177463          	bgeu	a4,a7,98c0 <__multf3+0x23c>
    98bc:	006507b3          	add	a5,a0,t1
    98c0:	01075693          	srli	a3,a4,0x10
    98c4:	00f687b3          	add	a5,a3,a5
    98c8:	00010337          	lui	t1,0x10
    98cc:	02412e83          	lw	t4,36(sp)
    98d0:	04f12223          	sw	a5,68(sp)
    98d4:	fff30793          	addi	a5,t1,-1 # ffff <main+0x394b>
    98d8:	00f77733          	and	a4,a4,a5
    98dc:	01071713          	slli	a4,a4,0x10
    98e0:	00fe7533          	and	a0,t3,a5
    98e4:	00a70533          	add	a0,a4,a0
    98e8:	00fef833          	and	a6,t4,a5
    98ec:	00f2f733          	and	a4,t0,a5
    98f0:	04a12023          	sw	a0,64(sp)
    98f4:	0102d893          	srli	a7,t0,0x10
    98f8:	010edf13          	srli	t5,t4,0x10
    98fc:	00070513          	mv	a0,a4
    9900:	00080593          	mv	a1,a6
    9904:	3a5020ef          	jal	ra,c4a8 <__mulsi3>
    9908:	00050e13          	mv	t3,a0
    990c:	000f0593          	mv	a1,t5
    9910:	00070513          	mv	a0,a4
    9914:	395020ef          	jal	ra,c4a8 <__mulsi3>
    9918:	00050713          	mv	a4,a0
    991c:	00080593          	mv	a1,a6
    9920:	00088513          	mv	a0,a7
    9924:	385020ef          	jal	ra,c4a8 <__mulsi3>
    9928:	00050813          	mv	a6,a0
    992c:	000f0593          	mv	a1,t5
    9930:	00088513          	mv	a0,a7
    9934:	375020ef          	jal	ra,c4a8 <__mulsi3>
    9938:	010e5893          	srli	a7,t3,0x10
    993c:	01070733          	add	a4,a4,a6
    9940:	00e888b3          	add	a7,a7,a4
    9944:	00050a13          	mv	s4,a0
    9948:	0108f463          	bgeu	a7,a6,9950 <__multf3+0x2cc>
    994c:	00650a33          	add	s4,a0,t1
    9950:	01412f03          	lw	t5,20(sp)
    9954:	0108d713          	srli	a4,a7,0x10
    9958:	00f8f8b3          	and	a7,a7,a5
    995c:	00fe7533          	and	a0,t3,a5
    9960:	00e12623          	sw	a4,12(sp)
    9964:	01089893          	slli	a7,a7,0x10
    9968:	00ff7733          	and	a4,t5,a5
    996c:	00fff7b3          	and	a5,t6,a5
    9970:	00a888b3          	add	a7,a7,a0
    9974:	010f5393          	srli	t2,t5,0x10
    9978:	010fd313          	srli	t1,t6,0x10
    997c:	00070513          	mv	a0,a4
    9980:	00078593          	mv	a1,a5
    9984:	325020ef          	jal	ra,c4a8 <__mulsi3>
    9988:	00050813          	mv	a6,a0
    998c:	00030593          	mv	a1,t1
    9990:	00070513          	mv	a0,a4
    9994:	315020ef          	jal	ra,c4a8 <__mulsi3>
    9998:	00050713          	mv	a4,a0
    999c:	00078593          	mv	a1,a5
    99a0:	00038513          	mv	a0,t2
    99a4:	305020ef          	jal	ra,c4a8 <__mulsi3>
    99a8:	00050e13          	mv	t3,a0
    99ac:	00030593          	mv	a1,t1
    99b0:	00038513          	mv	a0,t2
    99b4:	2f5020ef          	jal	ra,c4a8 <__mulsi3>
    99b8:	01085313          	srli	t1,a6,0x10
    99bc:	01c70733          	add	a4,a4,t3
    99c0:	00e30333          	add	t1,t1,a4
    99c4:	00050793          	mv	a5,a0
    99c8:	01c37663          	bgeu	t1,t3,99d4 <__multf3+0x350>
    99cc:	00010737          	lui	a4,0x10
    99d0:	00e507b3          	add	a5,a0,a4
    99d4:	00010e37          	lui	t3,0x10
    99d8:	fffe0593          	addi	a1,t3,-1 # ffff <main+0x394b>
    99dc:	01035b93          	srli	s7,t1,0x10
    99e0:	00b37333          	and	t1,t1,a1
    99e4:	00b87833          	and	a6,a6,a1
    99e8:	00bf7933          	and	s2,t5,a1
    99ec:	00bef3b3          	and	t2,t4,a1
    99f0:	01031313          	slli	t1,t1,0x10
    99f4:	00fb8bb3          	add	s7,s7,a5
    99f8:	01030333          	add	t1,t1,a6
    99fc:	010ed793          	srli	a5,t4,0x10
    9a00:	010f5813          	srli	a6,t5,0x10
    9a04:	00090513          	mv	a0,s2
    9a08:	00038593          	mv	a1,t2
    9a0c:	29d020ef          	jal	ra,c4a8 <__mulsi3>
    9a10:	00050713          	mv	a4,a0
    9a14:	00078593          	mv	a1,a5
    9a18:	00090513          	mv	a0,s2
    9a1c:	28d020ef          	jal	ra,c4a8 <__mulsi3>
    9a20:	00050913          	mv	s2,a0
    9a24:	00038593          	mv	a1,t2
    9a28:	00080513          	mv	a0,a6
    9a2c:	27d020ef          	jal	ra,c4a8 <__mulsi3>
    9a30:	00050393          	mv	t2,a0
    9a34:	00078593          	mv	a1,a5
    9a38:	00080513          	mv	a0,a6
    9a3c:	26d020ef          	jal	ra,c4a8 <__mulsi3>
    9a40:	01075813          	srli	a6,a4,0x10
    9a44:	007906b3          	add	a3,s2,t2
    9a48:	00d80833          	add	a6,a6,a3
    9a4c:	00050793          	mv	a5,a0
    9a50:	00787463          	bgeu	a6,t2,9a58 <__multf3+0x3d4>
    9a54:	01c507b3          	add	a5,a0,t3
    9a58:	00010e37          	lui	t3,0x10
    9a5c:	fffe0593          	addi	a1,t3,-1 # ffff <main+0x394b>
    9a60:	02812383          	lw	t2,40(sp)
    9a64:	01085b13          	srli	s6,a6,0x10
    9a68:	00b87833          	and	a6,a6,a1
    9a6c:	00b77733          	and	a4,a4,a1
    9a70:	01081813          	slli	a6,a6,0x10
    9a74:	00b2f933          	and	s2,t0,a1
    9a78:	00e80833          	add	a6,a6,a4
    9a7c:	00b3f733          	and	a4,t2,a1
    9a80:	00fb0b33          	add	s6,s6,a5
    9a84:	0102dc13          	srli	s8,t0,0x10
    9a88:	0103da93          	srli	s5,t2,0x10
    9a8c:	00090513          	mv	a0,s2
    9a90:	00070593          	mv	a1,a4
    9a94:	215020ef          	jal	ra,c4a8 <__mulsi3>
    9a98:	00050793          	mv	a5,a0
    9a9c:	000a8593          	mv	a1,s5
    9aa0:	00090513          	mv	a0,s2
    9aa4:	205020ef          	jal	ra,c4a8 <__mulsi3>
    9aa8:	00050993          	mv	s3,a0
    9aac:	00070593          	mv	a1,a4
    9ab0:	000c0513          	mv	a0,s8
    9ab4:	1f5020ef          	jal	ra,c4a8 <__mulsi3>
    9ab8:	00050913          	mv	s2,a0
    9abc:	000a8593          	mv	a1,s5
    9ac0:	000c0513          	mv	a0,s8
    9ac4:	1e5020ef          	jal	ra,c4a8 <__mulsi3>
    9ac8:	0107d713          	srli	a4,a5,0x10
    9acc:	012986b3          	add	a3,s3,s2
    9ad0:	00d70733          	add	a4,a4,a3
    9ad4:	01277463          	bgeu	a4,s2,9adc <__multf3+0x458>
    9ad8:	01c50533          	add	a0,a0,t3
    9adc:	00010d37          	lui	s10,0x10
    9ae0:	fffd0913          	addi	s2,s10,-1 # ffff <main+0x394b>
    9ae4:	01812e03          	lw	t3,24(sp)
    9ae8:	01075a93          	srli	s5,a4,0x10
    9aec:	01277733          	and	a4,a4,s2
    9af0:	0127f7b3          	and	a5,a5,s2
    9af4:	01071713          	slli	a4,a4,0x10
    9af8:	00f70733          	add	a4,a4,a5
    9afc:	012e77b3          	and	a5,t3,s2
    9b00:	012ff933          	and	s2,t6,s2
    9b04:	00aa8ab3          	add	s5,s5,a0
    9b08:	010e5d93          	srli	s11,t3,0x10
    9b0c:	010fdc13          	srli	s8,t6,0x10
    9b10:	00078513          	mv	a0,a5
    9b14:	00090593          	mv	a1,s2
    9b18:	191020ef          	jal	ra,c4a8 <__mulsi3>
    9b1c:	00050993          	mv	s3,a0
    9b20:	000c0593          	mv	a1,s8
    9b24:	00078513          	mv	a0,a5
    9b28:	181020ef          	jal	ra,c4a8 <__mulsi3>
    9b2c:	00050793          	mv	a5,a0
    9b30:	00090593          	mv	a1,s2
    9b34:	000d8513          	mv	a0,s11
    9b38:	171020ef          	jal	ra,c4a8 <__mulsi3>
    9b3c:	00050913          	mv	s2,a0
    9b40:	000c0593          	mv	a1,s8
    9b44:	000d8513          	mv	a0,s11
    9b48:	161020ef          	jal	ra,c4a8 <__mulsi3>
    9b4c:	012787b3          	add	a5,a5,s2
    9b50:	0109d693          	srli	a3,s3,0x10
    9b54:	00d787b3          	add	a5,a5,a3
    9b58:	0127f463          	bgeu	a5,s2,9b60 <__multf3+0x4dc>
    9b5c:	01a50533          	add	a0,a0,s10
    9b60:	00010937          	lui	s2,0x10
    9b64:	fff90593          	addi	a1,s2,-1 # ffff <main+0x394b>
    9b68:	04412603          	lw	a2,68(sp)
    9b6c:	0107d693          	srli	a3,a5,0x10
    9b70:	00b7f7b3          	and	a5,a5,a1
    9b74:	01079793          	slli	a5,a5,0x10
    9b78:	00b9f9b3          	and	s3,s3,a1
    9b7c:	013789b3          	add	s3,a5,s3
    9b80:	00c12783          	lw	a5,12(sp)
    9b84:	00c88633          	add	a2,a7,a2
    9b88:	011638b3          	sltu	a7,a2,a7
    9b8c:	011787b3          	add	a5,a5,a7
    9b90:	00660633          	add	a2,a2,t1
    9b94:	01478a33          	add	s4,a5,s4
    9b98:	017a07b3          	add	a5,s4,s7
    9b9c:	04c12223          	sw	a2,68(sp)
    9ba0:	00663633          	sltu	a2,a2,t1
    9ba4:	00c78333          	add	t1,a5,a2
    9ba8:	00a68533          	add	a0,a3,a0
    9bac:	0177b7b3          	sltu	a5,a5,s7
    9bb0:	010306b3          	add	a3,t1,a6
    9bb4:	00c33333          	sltu	t1,t1,a2
    9bb8:	011a3a33          	sltu	s4,s4,a7
    9bbc:	0067e7b3          	or	a5,a5,t1
    9bc0:	014787b3          	add	a5,a5,s4
    9bc4:	0106b833          	sltu	a6,a3,a6
    9bc8:	016787b3          	add	a5,a5,s6
    9bcc:	01078a33          	add	s4,a5,a6
    9bd0:	00e686b3          	add	a3,a3,a4
    9bd4:	00e6b733          	sltu	a4,a3,a4
    9bd8:	015a08b3          	add	a7,s4,s5
    9bdc:	00e88333          	add	t1,a7,a4
    9be0:	013686b3          	add	a3,a3,s3
    9be4:	00a30633          	add	a2,t1,a0
    9be8:	04d12423          	sw	a3,72(sp)
    9bec:	0136b6b3          	sltu	a3,a3,s3
    9bf0:	00d609b3          	add	s3,a2,a3
    9bf4:	010a3a33          	sltu	s4,s4,a6
    9bf8:	0167b7b3          	sltu	a5,a5,s6
    9bfc:	0158b8b3          	sltu	a7,a7,s5
    9c00:	00e33333          	sltu	t1,t1,a4
    9c04:	02c12803          	lw	a6,44(sp)
    9c08:	05312623          	sw	s3,76(sp)
    9c0c:	0147e7b3          	or	a5,a5,s4
    9c10:	00d9b9b3          	sltu	s3,s3,a3
    9c14:	0068e8b3          	or	a7,a7,t1
    9c18:	00a63633          	sltu	a2,a2,a0
    9c1c:	01366633          	or	a2,a2,s3
    9c20:	011787b3          	add	a5,a5,a7
    9c24:	00c787b3          	add	a5,a5,a2
    9c28:	04f12823          	sw	a5,80(sp)
    9c2c:	0102da13          	srli	s4,t0,0x10
    9c30:	00b877b3          	and	a5,a6,a1
    9c34:	00b2f2b3          	and	t0,t0,a1
    9c38:	01085993          	srli	s3,a6,0x10
    9c3c:	00028513          	mv	a0,t0
    9c40:	00078593          	mv	a1,a5
    9c44:	065020ef          	jal	ra,c4a8 <__mulsi3>
    9c48:	00050713          	mv	a4,a0
    9c4c:	00098593          	mv	a1,s3
    9c50:	00028513          	mv	a0,t0
    9c54:	055020ef          	jal	ra,c4a8 <__mulsi3>
    9c58:	00050893          	mv	a7,a0
    9c5c:	00078593          	mv	a1,a5
    9c60:	000a0513          	mv	a0,s4
    9c64:	045020ef          	jal	ra,c4a8 <__mulsi3>
    9c68:	00050313          	mv	t1,a0
    9c6c:	00098593          	mv	a1,s3
    9c70:	000a0513          	mv	a0,s4
    9c74:	035020ef          	jal	ra,c4a8 <__mulsi3>
    9c78:	01075613          	srli	a2,a4,0x10
    9c7c:	006888b3          	add	a7,a7,t1
    9c80:	01160633          	add	a2,a2,a7
    9c84:	00050793          	mv	a5,a0
    9c88:	00667463          	bgeu	a2,t1,9c90 <__multf3+0x60c>
    9c8c:	012507b3          	add	a5,a0,s2
    9c90:	01065a13          	srli	s4,a2,0x10
    9c94:	000102b7          	lui	t0,0x10
    9c98:	01c12883          	lw	a7,28(sp)
    9c9c:	00fa0a33          	add	s4,s4,a5
    9ca0:	fff28793          	addi	a5,t0,-1 # ffff <main+0x394b>
    9ca4:	00f67633          	and	a2,a2,a5
    9ca8:	00f77733          	and	a4,a4,a5
    9cac:	01061613          	slli	a2,a2,0x10
    9cb0:	00e60333          	add	t1,a2,a4
    9cb4:	00f8f933          	and	s2,a7,a5
    9cb8:	010fd713          	srli	a4,t6,0x10
    9cbc:	00ffffb3          	and	t6,t6,a5
    9cc0:	0108d993          	srli	s3,a7,0x10
    9cc4:	00090513          	mv	a0,s2
    9cc8:	000f8593          	mv	a1,t6
    9ccc:	7dc020ef          	jal	ra,c4a8 <__mulsi3>
    9cd0:	00050793          	mv	a5,a0
    9cd4:	00070593          	mv	a1,a4
    9cd8:	00090513          	mv	a0,s2
    9cdc:	7cc020ef          	jal	ra,c4a8 <__mulsi3>
    9ce0:	00050913          	mv	s2,a0
    9ce4:	000f8593          	mv	a1,t6
    9ce8:	00098513          	mv	a0,s3
    9cec:	7bc020ef          	jal	ra,c4a8 <__mulsi3>
    9cf0:	00050f93          	mv	t6,a0
    9cf4:	00070593          	mv	a1,a4
    9cf8:	00098513          	mv	a0,s3
    9cfc:	7ac020ef          	jal	ra,c4a8 <__mulsi3>
    9d00:	0107d693          	srli	a3,a5,0x10
    9d04:	01f90933          	add	s2,s2,t6
    9d08:	012686b3          	add	a3,a3,s2
    9d0c:	00050713          	mv	a4,a0
    9d10:	01f6f463          	bgeu	a3,t6,9d18 <__multf3+0x694>
    9d14:	00550733          	add	a4,a0,t0
    9d18:	00010fb7          	lui	t6,0x10
    9d1c:	ffff8613          	addi	a2,t6,-1 # ffff <main+0x394b>
    9d20:	0106d993          	srli	s3,a3,0x10
    9d24:	00c6f6b3          	and	a3,a3,a2
    9d28:	01069693          	slli	a3,a3,0x10
    9d2c:	00c7f7b3          	and	a5,a5,a2
    9d30:	00cf7933          	and	s2,t5,a2
    9d34:	00c3f2b3          	and	t0,t2,a2
    9d38:	00e989b3          	add	s3,s3,a4
    9d3c:	00f68b33          	add	s6,a3,a5
    9d40:	010f5713          	srli	a4,t5,0x10
    9d44:	0103da93          	srli	s5,t2,0x10
    9d48:	00090513          	mv	a0,s2
    9d4c:	00028593          	mv	a1,t0
    9d50:	758020ef          	jal	ra,c4a8 <__mulsi3>
    9d54:	00050793          	mv	a5,a0
    9d58:	000a8593          	mv	a1,s5
    9d5c:	00090513          	mv	a0,s2
    9d60:	748020ef          	jal	ra,c4a8 <__mulsi3>
    9d64:	00050913          	mv	s2,a0
    9d68:	00028593          	mv	a1,t0
    9d6c:	00070513          	mv	a0,a4
    9d70:	738020ef          	jal	ra,c4a8 <__mulsi3>
    9d74:	00050293          	mv	t0,a0
    9d78:	000a8593          	mv	a1,s5
    9d7c:	00070513          	mv	a0,a4
    9d80:	728020ef          	jal	ra,c4a8 <__mulsi3>
    9d84:	0107d713          	srli	a4,a5,0x10
    9d88:	005906b3          	add	a3,s2,t0
    9d8c:	00d70733          	add	a4,a4,a3
    9d90:	00577463          	bgeu	a4,t0,9d98 <__multf3+0x714>
    9d94:	01f50533          	add	a0,a0,t6
    9d98:	000102b7          	lui	t0,0x10
    9d9c:	fff28693          	addi	a3,t0,-1 # ffff <main+0x394b>
    9da0:	01075913          	srli	s2,a4,0x10
    9da4:	00d77733          	and	a4,a4,a3
    9da8:	00d7f7b3          	and	a5,a5,a3
    9dac:	00de7ab3          	and	s5,t3,a3
    9db0:	00deffb3          	and	t6,t4,a3
    9db4:	01071713          	slli	a4,a4,0x10
    9db8:	00a90933          	add	s2,s2,a0
    9dbc:	00f70733          	add	a4,a4,a5
    9dc0:	010e5d13          	srli	s10,t3,0x10
    9dc4:	010edc13          	srli	s8,t4,0x10
    9dc8:	000a8513          	mv	a0,s5
    9dcc:	000f8593          	mv	a1,t6
    9dd0:	6d8020ef          	jal	ra,c4a8 <__mulsi3>
    9dd4:	00050793          	mv	a5,a0
    9dd8:	000c0593          	mv	a1,s8
    9ddc:	000a8513          	mv	a0,s5
    9de0:	6c8020ef          	jal	ra,c4a8 <__mulsi3>
    9de4:	00050b93          	mv	s7,a0
    9de8:	000f8593          	mv	a1,t6
    9dec:	000d0513          	mv	a0,s10
    9df0:	6b8020ef          	jal	ra,c4a8 <__mulsi3>
    9df4:	00050a93          	mv	s5,a0
    9df8:	000c0593          	mv	a1,s8
    9dfc:	000d0513          	mv	a0,s10
    9e00:	6a8020ef          	jal	ra,c4a8 <__mulsi3>
    9e04:	0107df93          	srli	t6,a5,0x10
    9e08:	015b86b3          	add	a3,s7,s5
    9e0c:	00df8fb3          	add	t6,t6,a3
    9e10:	015ff463          	bgeu	t6,s5,9e18 <__multf3+0x794>
    9e14:	00550533          	add	a0,a0,t0
    9e18:	00010ab7          	lui	s5,0x10
    9e1c:	fffa8293          	addi	t0,s5,-1 # ffff <main+0x394b>
    9e20:	010fdb93          	srli	s7,t6,0x10
    9e24:	005fffb3          	and	t6,t6,t0
    9e28:	0057f7b3          	and	a5,a5,t0
    9e2c:	010f9f93          	slli	t6,t6,0x10
    9e30:	00ff8fb3          	add	t6,t6,a5
    9e34:	04c12783          	lw	a5,76(sp)
    9e38:	00ab8bb3          	add	s7,s7,a0
    9e3c:	00f307b3          	add	a5,t1,a5
    9e40:	0067b633          	sltu	a2,a5,t1
    9e44:	05012303          	lw	t1,80(sp)
    9e48:	016787b3          	add	a5,a5,s6
    9e4c:	0167b6b3          	sltu	a3,a5,s6
    9e50:	006a0333          	add	t1,s4,t1
    9e54:	00c30d33          	add	s10,t1,a2
    9e58:	013d0b33          	add	s6,s10,s3
    9e5c:	00db0c33          	add	s8,s6,a3
    9e60:	00e787b3          	add	a5,a5,a4
    9e64:	00e7b733          	sltu	a4,a5,a4
    9e68:	012c05b3          	add	a1,s8,s2
    9e6c:	00e58533          	add	a0,a1,a4
    9e70:	01f787b3          	add	a5,a5,t6
    9e74:	04f12623          	sw	a5,76(sp)
    9e78:	01433333          	sltu	t1,t1,s4
    9e7c:	01f7b7b3          	sltu	a5,a5,t6
    9e80:	00cd3d33          	sltu	s10,s10,a2
    9e84:	01750fb3          	add	t6,a0,s7
    9e88:	013b3b33          	sltu	s6,s6,s3
    9e8c:	00dc3c33          	sltu	s8,s8,a3
    9e90:	00ff8db3          	add	s11,t6,a5
    9e94:	00e53533          	sltu	a0,a0,a4
    9e98:	01a36333          	or	t1,t1,s10
    9e9c:	018b6b33          	or	s6,s6,s8
    9ea0:	0125b5b3          	sltu	a1,a1,s2
    9ea4:	00a5e5b3          	or	a1,a1,a0
    9ea8:	05b12823          	sw	s11,80(sp)
    9eac:	01630333          	add	t1,t1,s6
    9eb0:	00fdbdb3          	sltu	s11,s11,a5
    9eb4:	017fbfb3          	sltu	t6,t6,s7
    9eb8:	00b30333          	add	t1,t1,a1
    9ebc:	01bfefb3          	or	t6,t6,s11
    9ec0:	01f307b3          	add	a5,t1,t6
    9ec4:	005e7333          	and	t1,t3,t0
    9ec8:	0053f2b3          	and	t0,t2,t0
    9ecc:	04f12a23          	sw	a5,84(sp)
    9ed0:	010e5913          	srli	s2,t3,0x10
    9ed4:	0103d713          	srli	a4,t2,0x10
    9ed8:	00030513          	mv	a0,t1
    9edc:	00028593          	mv	a1,t0
    9ee0:	5c8020ef          	jal	ra,c4a8 <__mulsi3>
    9ee4:	00050793          	mv	a5,a0
    9ee8:	00070593          	mv	a1,a4
    9eec:	00030513          	mv	a0,t1
    9ef0:	5b8020ef          	jal	ra,c4a8 <__mulsi3>
    9ef4:	00050313          	mv	t1,a0
    9ef8:	00028593          	mv	a1,t0
    9efc:	00090513          	mv	a0,s2
    9f00:	5a8020ef          	jal	ra,c4a8 <__mulsi3>
    9f04:	00050f93          	mv	t6,a0
    9f08:	00070593          	mv	a1,a4
    9f0c:	00090513          	mv	a0,s2
    9f10:	598020ef          	jal	ra,c4a8 <__mulsi3>
    9f14:	0107d613          	srli	a2,a5,0x10
    9f18:	01f30333          	add	t1,t1,t6
    9f1c:	00660633          	add	a2,a2,t1
    9f20:	00050713          	mv	a4,a0
    9f24:	01f67463          	bgeu	a2,t6,9f2c <__multf3+0x8a8>
    9f28:	01550733          	add	a4,a0,s5
    9f2c:	01065993          	srli	s3,a2,0x10
    9f30:	00010fb7          	lui	t6,0x10
    9f34:	00e989b3          	add	s3,s3,a4
    9f38:	ffff8713          	addi	a4,t6,-1 # ffff <main+0x394b>
    9f3c:	00e67633          	and	a2,a2,a4
    9f40:	01061613          	slli	a2,a2,0x10
    9f44:	00e7f7b3          	and	a5,a5,a4
    9f48:	010f5a13          	srli	s4,t5,0x10
    9f4c:	00ef7f33          	and	t5,t5,a4
    9f50:	00e87733          	and	a4,a6,a4
    9f54:	00f607b3          	add	a5,a2,a5
    9f58:	01085913          	srli	s2,a6,0x10
    9f5c:	000f0513          	mv	a0,t5
    9f60:	00070593          	mv	a1,a4
    9f64:	544020ef          	jal	ra,c4a8 <__mulsi3>
    9f68:	00050313          	mv	t1,a0
    9f6c:	00090593          	mv	a1,s2
    9f70:	000f0513          	mv	a0,t5
    9f74:	534020ef          	jal	ra,c4a8 <__mulsi3>
    9f78:	00050f13          	mv	t5,a0
    9f7c:	00070593          	mv	a1,a4
    9f80:	000a0513          	mv	a0,s4
    9f84:	524020ef          	jal	ra,c4a8 <__mulsi3>
    9f88:	00050293          	mv	t0,a0
    9f8c:	00090593          	mv	a1,s2
    9f90:	000a0513          	mv	a0,s4
    9f94:	514020ef          	jal	ra,c4a8 <__mulsi3>
    9f98:	01035693          	srli	a3,t1,0x10
    9f9c:	005f0f33          	add	t5,t5,t0
    9fa0:	01e686b3          	add	a3,a3,t5
    9fa4:	00050713          	mv	a4,a0
    9fa8:	0056f463          	bgeu	a3,t0,9fb0 <__multf3+0x92c>
    9fac:	01f50733          	add	a4,a0,t6
    9fb0:	000102b7          	lui	t0,0x10
    9fb4:	fff28613          	addi	a2,t0,-1 # ffff <main+0x394b>
    9fb8:	0106d913          	srli	s2,a3,0x10
    9fbc:	00c6f6b3          	and	a3,a3,a2
    9fc0:	00c37333          	and	t1,t1,a2
    9fc4:	01069693          	slli	a3,a3,0x10
    9fc8:	00668a33          	add	s4,a3,t1
    9fcc:	010edf13          	srli	t5,t4,0x10
    9fd0:	00c8f333          	and	t1,a7,a2
    9fd4:	00cefeb3          	and	t4,t4,a2
    9fd8:	00e90933          	add	s2,s2,a4
    9fdc:	00030513          	mv	a0,t1
    9fe0:	0108d713          	srli	a4,a7,0x10
    9fe4:	000e8593          	mv	a1,t4
    9fe8:	4c0020ef          	jal	ra,c4a8 <__mulsi3>
    9fec:	00050f93          	mv	t6,a0
    9ff0:	000f0593          	mv	a1,t5
    9ff4:	00030513          	mv	a0,t1
    9ff8:	4b0020ef          	jal	ra,c4a8 <__mulsi3>
    9ffc:	00050a93          	mv	s5,a0
    a000:	000e8593          	mv	a1,t4
    a004:	00070513          	mv	a0,a4
    a008:	4a0020ef          	jal	ra,c4a8 <__mulsi3>
    a00c:	00050313          	mv	t1,a0
    a010:	000f0593          	mv	a1,t5
    a014:	00070513          	mv	a0,a4
    a018:	490020ef          	jal	ra,c4a8 <__mulsi3>
    a01c:	00050713          	mv	a4,a0
    a020:	010fdf13          	srli	t5,t6,0x10
    a024:	006a8533          	add	a0,s5,t1
    a028:	00af0f33          	add	t5,t5,a0
    a02c:	006f7463          	bgeu	t5,t1,a034 <__multf3+0x9b0>
    a030:	00570733          	add	a4,a4,t0
    a034:	010f5293          	srli	t0,t5,0x10
    a038:	00010337          	lui	t1,0x10
    a03c:	00e282b3          	add	t0,t0,a4
    a040:	fff30713          	addi	a4,t1,-1 # ffff <main+0x394b>
    a044:	00ef7f33          	and	t5,t5,a4
    a048:	00efffb3          	and	t6,t6,a4
    a04c:	010f1f13          	slli	t5,t5,0x10
    a050:	01ff0f33          	add	t5,t5,t6
    a054:	010e5a93          	srli	s5,t3,0x10
    a058:	00e87fb3          	and	t6,a6,a4
    a05c:	00ee7e33          	and	t3,t3,a4
    a060:	01085b13          	srli	s6,a6,0x10
    a064:	000e0513          	mv	a0,t3
    a068:	000f8593          	mv	a1,t6
    a06c:	43c020ef          	jal	ra,c4a8 <__mulsi3>
    a070:	00050e93          	mv	t4,a0
    a074:	000b0593          	mv	a1,s6
    a078:	000e0513          	mv	a0,t3
    a07c:	42c020ef          	jal	ra,c4a8 <__mulsi3>
    a080:	00050713          	mv	a4,a0
    a084:	000f8593          	mv	a1,t6
    a088:	000a8513          	mv	a0,s5
    a08c:	41c020ef          	jal	ra,c4a8 <__mulsi3>
    a090:	00050f93          	mv	t6,a0
    a094:	000b0593          	mv	a1,s6
    a098:	000a8513          	mv	a0,s5
    a09c:	40c020ef          	jal	ra,c4a8 <__mulsi3>
    a0a0:	01f70733          	add	a4,a4,t6
    a0a4:	010ed693          	srli	a3,t4,0x10
    a0a8:	00d70733          	add	a4,a4,a3
    a0ac:	01f77463          	bgeu	a4,t6,a0b4 <__multf3+0xa30>
    a0b0:	00650533          	add	a0,a0,t1
    a0b4:	00010337          	lui	t1,0x10
    a0b8:	fff30593          	addi	a1,t1,-1 # ffff <main+0x394b>
    a0bc:	01075f93          	srli	t6,a4,0x10
    a0c0:	00b77733          	and	a4,a4,a1
    a0c4:	00befeb3          	and	t4,t4,a1
    a0c8:	00b8fb33          	and	s6,a7,a1
    a0cc:	0103db93          	srli	s7,t2,0x10
    a0d0:	01071713          	slli	a4,a4,0x10
    a0d4:	00b3f3b3          	and	t2,t2,a1
    a0d8:	00af8fb3          	add	t6,t6,a0
    a0dc:	01d70733          	add	a4,a4,t4
    a0e0:	0108de13          	srli	t3,a7,0x10
    a0e4:	000b0513          	mv	a0,s6
    a0e8:	00038593          	mv	a1,t2
    a0ec:	3bc020ef          	jal	ra,c4a8 <__mulsi3>
    a0f0:	00050a93          	mv	s5,a0
    a0f4:	000b8593          	mv	a1,s7
    a0f8:	000b0513          	mv	a0,s6
    a0fc:	3ac020ef          	jal	ra,c4a8 <__mulsi3>
    a100:	00050b13          	mv	s6,a0
    a104:	00038593          	mv	a1,t2
    a108:	000e0513          	mv	a0,t3
    a10c:	39c020ef          	jal	ra,c4a8 <__mulsi3>
    a110:	00050393          	mv	t2,a0
    a114:	000b8593          	mv	a1,s7
    a118:	000e0513          	mv	a0,t3
    a11c:	38c020ef          	jal	ra,c4a8 <__mulsi3>
    a120:	010ade93          	srli	t4,s5,0x10
    a124:	007b06b3          	add	a3,s6,t2
    a128:	00de8eb3          	add	t4,t4,a3
    a12c:	007ef463          	bgeu	t4,t2,a134 <__multf3+0xab0>
    a130:	00650533          	add	a0,a0,t1
    a134:	05012583          	lw	a1,80(sp)
    a138:	00010e37          	lui	t3,0x10
    a13c:	fffe0313          	addi	t1,t3,-1 # ffff <main+0x394b>
    a140:	00b785b3          	add	a1,a5,a1
    a144:	00f5b633          	sltu	a2,a1,a5
    a148:	05412783          	lw	a5,84(sp)
    a14c:	014585b3          	add	a1,a1,s4
    a150:	0145b6b3          	sltu	a3,a1,s4
    a154:	00f987b3          	add	a5,s3,a5
    a158:	00c78bb3          	add	s7,a5,a2
    a15c:	012b8a33          	add	s4,s7,s2
    a160:	00da0b33          	add	s6,s4,a3
    a164:	01e585b3          	add	a1,a1,t5
    a168:	010ed393          	srli	t2,t4,0x10
    a16c:	006efeb3          	and	t4,t4,t1
    a170:	00a383b3          	add	t2,t2,a0
    a174:	006afab3          	and	s5,s5,t1
    a178:	005b0533          	add	a0,s6,t0
    a17c:	04b12823          	sw	a1,80(sp)
    a180:	010e9e93          	slli	t4,t4,0x10
    a184:	01e5b5b3          	sltu	a1,a1,t5
    a188:	015e8eb3          	add	t4,t4,s5
    a18c:	00cbbbb3          	sltu	s7,s7,a2
    a190:	00b50ab3          	add	s5,a0,a1
    a194:	00db3b33          	sltu	s6,s6,a3
    a198:	0137b7b3          	sltu	a5,a5,s3
    a19c:	012a3a33          	sltu	s4,s4,s2
    a1a0:	00ea8f33          	add	t5,s5,a4
    a1a4:	0177e7b3          	or	a5,a5,s7
    a1a8:	00babab3          	sltu	s5,s5,a1
    a1ac:	016a6a33          	or	s4,s4,s6
    a1b0:	00553533          	sltu	a0,a0,t0
    a1b4:	01556533          	or	a0,a0,s5
    a1b8:	014787b3          	add	a5,a5,s4
    a1bc:	00a787b3          	add	a5,a5,a0
    a1c0:	00ef3733          	sltu	a4,t5,a4
    a1c4:	01f787b3          	add	a5,a5,t6
    a1c8:	00e785b3          	add	a1,a5,a4
    a1cc:	01df0f33          	add	t5,t5,t4
    a1d0:	007586b3          	add	a3,a1,t2
    a1d4:	05e12a23          	sw	t5,84(sp)
    a1d8:	01df3f33          	sltu	t5,t5,t4
    a1dc:	01e68633          	add	a2,a3,t5
    a1e0:	00e5b5b3          	sltu	a1,a1,a4
    a1e4:	04c12c23          	sw	a2,88(sp)
    a1e8:	01f7b7b3          	sltu	a5,a5,t6
    a1ec:	01e63633          	sltu	a2,a2,t5
    a1f0:	0076b6b3          	sltu	a3,a3,t2
    a1f4:	00b7e7b3          	or	a5,a5,a1
    a1f8:	00c6e6b3          	or	a3,a3,a2
    a1fc:	00d787b3          	add	a5,a5,a3
    a200:	04f12e23          	sw	a5,92(sp)
    a204:	0108df13          	srli	t5,a7,0x10
    a208:	01085793          	srli	a5,a6,0x10
    a20c:	0068f8b3          	and	a7,a7,t1
    a210:	00687833          	and	a6,a6,t1
    a214:	00088513          	mv	a0,a7
    a218:	00080593          	mv	a1,a6
    a21c:	28c020ef          	jal	ra,c4a8 <__mulsi3>
    a220:	00050e93          	mv	t4,a0
    a224:	00078593          	mv	a1,a5
    a228:	00088513          	mv	a0,a7
    a22c:	27c020ef          	jal	ra,c4a8 <__mulsi3>
    a230:	00050713          	mv	a4,a0
    a234:	00080593          	mv	a1,a6
    a238:	000f0513          	mv	a0,t5
    a23c:	26c020ef          	jal	ra,c4a8 <__mulsi3>
    a240:	00050813          	mv	a6,a0
    a244:	00078593          	mv	a1,a5
    a248:	000f0513          	mv	a0,t5
    a24c:	25c020ef          	jal	ra,c4a8 <__mulsi3>
    a250:	010ed793          	srli	a5,t4,0x10
    a254:	01070733          	add	a4,a4,a6
    a258:	00e787b3          	add	a5,a5,a4
    a25c:	00050693          	mv	a3,a0
    a260:	0107f463          	bgeu	a5,a6,a268 <__multf3+0xbe4>
    a264:	01c506b3          	add	a3,a0,t3
    a268:	05812603          	lw	a2,88(sp)
    a26c:	0067f733          	and	a4,a5,t1
    a270:	05c12583          	lw	a1,92(sp)
    a274:	01071713          	slli	a4,a4,0x10
    a278:	006efeb3          	and	t4,t4,t1
    a27c:	01d70733          	add	a4,a4,t4
    a280:	00c70633          	add	a2,a4,a2
    a284:	0107d793          	srli	a5,a5,0x10
    a288:	00b787b3          	add	a5,a5,a1
    a28c:	00e63733          	sltu	a4,a2,a4
    a290:	00e787b3          	add	a5,a5,a4
    a294:	00d78533          	add	a0,a5,a3
    a298:	04412703          	lw	a4,68(sp)
    a29c:	04012783          	lw	a5,64(sp)
    a2a0:	04a12e23          	sw	a0,92(sp)
    a2a4:	04c12c23          	sw	a2,88(sp)
    a2a8:	00f76733          	or	a4,a4,a5
    a2ac:	04812783          	lw	a5,72(sp)
    a2b0:	05010593          	addi	a1,sp,80
    a2b4:	00f76733          	or	a4,a4,a5
    a2b8:	04c12783          	lw	a5,76(sp)
    a2bc:	00d79793          	slli	a5,a5,0xd
    a2c0:	00e7e7b3          	or	a5,a5,a4
    a2c4:	04010713          	addi	a4,sp,64
    a2c8:	00c72683          	lw	a3,12(a4) # 1000c <impure_data+0xc>
    a2cc:	01072603          	lw	a2,16(a4)
    a2d0:	00470713          	addi	a4,a4,4
    a2d4:	0136d693          	srli	a3,a3,0x13
    a2d8:	00d61613          	slli	a2,a2,0xd
    a2dc:	00c6e6b3          	or	a3,a3,a2
    a2e0:	fed72e23          	sw	a3,-4(a4)
    a2e4:	fee592e3          	bne	a1,a4,a2c8 <__multf3+0xc44>
    a2e8:	04812683          	lw	a3,72(sp)
    a2ec:	04012703          	lw	a4,64(sp)
    a2f0:	00f037b3          	snez	a5,a5
    a2f4:	02d12c23          	sw	a3,56(sp)
    a2f8:	04412683          	lw	a3,68(sp)
    a2fc:	00e7e7b3          	or	a5,a5,a4
    a300:	04c12703          	lw	a4,76(sp)
    a304:	02d12a23          	sw	a3,52(sp)
    a308:	001006b7          	lui	a3,0x100
    a30c:	02e12e23          	sw	a4,60(sp)
    a310:	02f12823          	sw	a5,48(sp)
    a314:	00d77733          	and	a4,a4,a3
    a318:	4e070463          	beqz	a4,a800 <__multf3+0x117c>
    a31c:	01f79793          	slli	a5,a5,0x1f
    a320:	03010713          	addi	a4,sp,48
    a324:	03c10593          	addi	a1,sp,60
    a328:	00072683          	lw	a3,0(a4)
    a32c:	00472603          	lw	a2,4(a4)
    a330:	00470713          	addi	a4,a4,4
    a334:	0016d693          	srli	a3,a3,0x1
    a338:	01f61613          	slli	a2,a2,0x1f
    a33c:	00c6e6b3          	or	a3,a3,a2
    a340:	fed72e23          	sw	a3,-4(a4)
    a344:	fee592e3          	bne	a1,a4,a328 <__multf3+0xca4>
    a348:	03c12703          	lw	a4,60(sp)
    a34c:	00f037b3          	snez	a5,a5
    a350:	00175713          	srli	a4,a4,0x1
    a354:	02e12e23          	sw	a4,60(sp)
    a358:	03012703          	lw	a4,48(sp)
    a35c:	00f767b3          	or	a5,a4,a5
    a360:	02f12823          	sw	a5,48(sp)
    a364:	000047b7          	lui	a5,0x4
    a368:	fff78793          	addi	a5,a5,-1 # 3fff <__kernel_rem_pio2+0x717>
    a36c:	00fc87b3          	add	a5,s9,a5
    a370:	4af05863          	blez	a5,a820 <__multf3+0x119c>
    a374:	03012703          	lw	a4,48(sp)
    a378:	00777693          	andi	a3,a4,7
    a37c:	04068463          	beqz	a3,a3c4 <__multf3+0xd40>
    a380:	00f77693          	andi	a3,a4,15
    a384:	00400613          	li	a2,4
    a388:	02c68e63          	beq	a3,a2,a3c4 <__multf3+0xd40>
    a38c:	03412683          	lw	a3,52(sp)
    a390:	00470713          	addi	a4,a4,4
    a394:	02e12823          	sw	a4,48(sp)
    a398:	00473713          	sltiu	a4,a4,4
    a39c:	00d706b3          	add	a3,a4,a3
    a3a0:	02d12a23          	sw	a3,52(sp)
    a3a4:	00e6b6b3          	sltu	a3,a3,a4
    a3a8:	03812703          	lw	a4,56(sp)
    a3ac:	00e68733          	add	a4,a3,a4
    a3b0:	02e12c23          	sw	a4,56(sp)
    a3b4:	00d73733          	sltu	a4,a4,a3
    a3b8:	03c12683          	lw	a3,60(sp)
    a3bc:	00d70733          	add	a4,a4,a3
    a3c0:	02e12e23          	sw	a4,60(sp)
    a3c4:	03c12703          	lw	a4,60(sp)
    a3c8:	001006b7          	lui	a3,0x100
    a3cc:	00d776b3          	and	a3,a4,a3
    a3d0:	00068e63          	beqz	a3,a3ec <__multf3+0xd68>
    a3d4:	fff007b7          	lui	a5,0xfff00
    a3d8:	fff78793          	addi	a5,a5,-1 # ffefffff <soln_cnt0+0xffeef523>
    a3dc:	00f77733          	and	a4,a4,a5
    a3e0:	000047b7          	lui	a5,0x4
    a3e4:	02e12e23          	sw	a4,60(sp)
    a3e8:	00fc87b3          	add	a5,s9,a5
    a3ec:	03010713          	addi	a4,sp,48
    a3f0:	03c10593          	addi	a1,sp,60
    a3f4:	00072683          	lw	a3,0(a4)
    a3f8:	00472603          	lw	a2,4(a4)
    a3fc:	00470713          	addi	a4,a4,4
    a400:	0036d693          	srli	a3,a3,0x3
    a404:	01d61613          	slli	a2,a2,0x1d
    a408:	00c6e6b3          	or	a3,a3,a2
    a40c:	fed72e23          	sw	a3,-4(a4)
    a410:	feb712e3          	bne	a4,a1,a3f4 <__multf3+0xd70>
    a414:	000086b7          	lui	a3,0x8
    a418:	ffe68613          	addi	a2,a3,-2 # 7ffe <__addtf3+0xe62>
    a41c:	03c12703          	lw	a4,60(sp)
    a420:	3ef64463          	blt	a2,a5,a808 <__multf3+0x1184>
    a424:	00375713          	srli	a4,a4,0x3
    a428:	02e12e23          	sw	a4,60(sp)
    a42c:	01179793          	slli	a5,a5,0x11
    a430:	0117d793          	srli	a5,a5,0x11
    a434:	00f41413          	slli	s0,s0,0xf
    a438:	00f46433          	or	s0,s0,a5
    a43c:	03012783          	lw	a5,48(sp)
    a440:	03c12703          	lw	a4,60(sp)
    a444:	04811723          	sh	s0,78(sp)
    a448:	00f4a023          	sw	a5,0(s1)
    a44c:	03412783          	lw	a5,52(sp)
    a450:	04e11623          	sh	a4,76(sp)
    a454:	09c12083          	lw	ra,156(sp)
    a458:	00f4a223          	sw	a5,4(s1)
    a45c:	03812783          	lw	a5,56(sp)
    a460:	09812403          	lw	s0,152(sp)
    a464:	09012903          	lw	s2,144(sp)
    a468:	00f4a423          	sw	a5,8(s1)
    a46c:	04c12783          	lw	a5,76(sp)
    a470:	08c12983          	lw	s3,140(sp)
    a474:	08812a03          	lw	s4,136(sp)
    a478:	00f4a623          	sw	a5,12(s1)
    a47c:	08412a83          	lw	s5,132(sp)
    a480:	08012b03          	lw	s6,128(sp)
    a484:	07c12b83          	lw	s7,124(sp)
    a488:	07812c03          	lw	s8,120(sp)
    a48c:	07412c83          	lw	s9,116(sp)
    a490:	07012d03          	lw	s10,112(sp)
    a494:	06c12d83          	lw	s11,108(sp)
    a498:	00048513          	mv	a0,s1
    a49c:	09412483          	lw	s1,148(sp)
    a4a0:	0a010113          	addi	sp,sp,160
    a4a4:	00008067          	ret
    a4a8:	00a7e633          	or	a2,a5,a0
    a4ac:	00d66633          	or	a2,a2,a3
    a4b0:	00e66633          	or	a2,a2,a4
    a4b4:	12060663          	beqz	a2,a5e0 <__multf3+0xf5c>
    a4b8:	08070463          	beqz	a4,a540 <__multf3+0xebc>
    a4bc:	00070513          	mv	a0,a4
    a4c0:	0c0020ef          	jal	ra,c580 <__clzsi2>
    a4c4:	00050413          	mv	s0,a0
    a4c8:	ff440593          	addi	a1,s0,-12
    a4cc:	4055d793          	srai	a5,a1,0x5
    a4d0:	01f5f593          	andi	a1,a1,31
    a4d4:	40f00733          	neg	a4,a5
    a4d8:	08058e63          	beqz	a1,a574 <__multf3+0xef0>
    a4dc:	00271713          	slli	a4,a4,0x2
    a4e0:	00c70693          	addi	a3,a4,12
    a4e4:	02000513          	li	a0,32
    a4e8:	01010893          	addi	a7,sp,16
    a4ec:	40b50533          	sub	a0,a0,a1
    a4f0:	00d886b3          	add	a3,a7,a3
    a4f4:	40e00733          	neg	a4,a4
    a4f8:	0ad89463          	bne	a7,a3,a5a0 <__multf3+0xf1c>
    a4fc:	fff78613          	addi	a2,a5,-1 # 3fff <__kernel_rem_pio2+0x717>
    a500:	00279793          	slli	a5,a5,0x2
    a504:	01010713          	addi	a4,sp,16
    a508:	05078793          	addi	a5,a5,80
    a50c:	00e787b3          	add	a5,a5,a4
    a510:	01012703          	lw	a4,16(sp)
    a514:	00b71733          	sll	a4,a4,a1
    a518:	fae7a823          	sw	a4,-80(a5)
    a51c:	00160613          	addi	a2,a2,1
    a520:	ffffc937          	lui	s2,0xffffc
    a524:	00261613          	slli	a2,a2,0x2
    a528:	00000593          	li	a1,0
    a52c:	01010513          	addi	a0,sp,16
    a530:	01190913          	addi	s2,s2,17 # ffffc011 <soln_cnt0+0xfffeb535>
    a534:	0a4020ef          	jal	ra,c5d8 <memset>
    a538:	40890933          	sub	s2,s2,s0
    a53c:	a34ff06f          	j	9770 <__multf3+0xec>
    a540:	00068a63          	beqz	a3,a554 <__multf3+0xed0>
    a544:	00068513          	mv	a0,a3
    a548:	038020ef          	jal	ra,c580 <__clzsi2>
    a54c:	02050413          	addi	s0,a0,32
    a550:	f79ff06f          	j	a4c8 <__multf3+0xe44>
    a554:	00050863          	beqz	a0,a564 <__multf3+0xee0>
    a558:	028020ef          	jal	ra,c580 <__clzsi2>
    a55c:	04050413          	addi	s0,a0,64
    a560:	f69ff06f          	j	a4c8 <__multf3+0xe44>
    a564:	00078513          	mv	a0,a5
    a568:	018020ef          	jal	ra,c580 <__clzsi2>
    a56c:	06050413          	addi	s0,a0,96
    a570:	f59ff06f          	j	a4c8 <__multf3+0xe44>
    a574:	01c10693          	addi	a3,sp,28
    a578:	00271713          	slli	a4,a4,0x2
    a57c:	00300613          	li	a2,3
    a580:	00e685b3          	add	a1,a3,a4
    a584:	0005a583          	lw	a1,0(a1)
    a588:	fff60613          	addi	a2,a2,-1
    a58c:	ffc68693          	addi	a3,a3,-4
    a590:	00b6a223          	sw	a1,4(a3)
    a594:	fef656e3          	bge	a2,a5,a580 <__multf3+0xefc>
    a598:	fff78613          	addi	a2,a5,-1
    a59c:	f81ff06f          	j	a51c <__multf3+0xe98>
    a5a0:	0006a603          	lw	a2,0(a3)
    a5a4:	ffc6a803          	lw	a6,-4(a3)
    a5a8:	00e68333          	add	t1,a3,a4
    a5ac:	00b61633          	sll	a2,a2,a1
    a5b0:	00a85833          	srl	a6,a6,a0
    a5b4:	01066633          	or	a2,a2,a6
    a5b8:	00c32023          	sw	a2,0(t1)
    a5bc:	ffc68693          	addi	a3,a3,-4
    a5c0:	f39ff06f          	j	a4f8 <__multf3+0xe74>
    a5c4:	00a7e7b3          	or	a5,a5,a0
    a5c8:	00d7e7b3          	or	a5,a5,a3
    a5cc:	00e7e7b3          	or	a5,a5,a4
    a5d0:	00300c13          	li	s8,3
    a5d4:	9a079063          	bnez	a5,9774 <__multf3+0xf0>
    a5d8:	00200c13          	li	s8,2
    a5dc:	998ff06f          	j	9774 <__multf3+0xf0>
    a5e0:	00000913          	li	s2,0
    a5e4:	00100c13          	li	s8,1
    a5e8:	98cff06f          	j	9774 <__multf3+0xf0>
    a5ec:	017ae7b3          	or	a5,s5,s7
    a5f0:	0167e7b3          	or	a5,a5,s6
    a5f4:	00a7e7b3          	or	a5,a5,a0
    a5f8:	12078863          	beqz	a5,a728 <__multf3+0x10a4>
    a5fc:	08050263          	beqz	a0,a680 <__multf3+0xffc>
    a600:	781010ef          	jal	ra,c580 <__clzsi2>
    a604:	00050413          	mv	s0,a0
    a608:	ff440593          	addi	a1,s0,-12
    a60c:	4055d793          	srai	a5,a1,0x5
    a610:	01f5f593          	andi	a1,a1,31
    a614:	40f00733          	neg	a4,a5
    a618:	0a058063          	beqz	a1,a6b8 <__multf3+0x1034>
    a61c:	00271713          	slli	a4,a4,0x2
    a620:	00c70693          	addi	a3,a4,12
    a624:	02000513          	li	a0,32
    a628:	02010893          	addi	a7,sp,32
    a62c:	40b50533          	sub	a0,a0,a1
    a630:	00d886b3          	add	a3,a7,a3
    a634:	40e00733          	neg	a4,a4
    a638:	0ad89663          	bne	a7,a3,a6e4 <__multf3+0x1060>
    a63c:	fff78613          	addi	a2,a5,-1
    a640:	00279793          	slli	a5,a5,0x2
    a644:	01010713          	addi	a4,sp,16
    a648:	05078793          	addi	a5,a5,80
    a64c:	00e787b3          	add	a5,a5,a4
    a650:	02012703          	lw	a4,32(sp)
    a654:	00b71733          	sll	a4,a4,a1
    a658:	fce7a023          	sw	a4,-64(a5)
    a65c:	00160613          	addi	a2,a2,1
    a660:	00261613          	slli	a2,a2,0x2
    a664:	00000593          	li	a1,0
    a668:	02010513          	addi	a0,sp,32
    a66c:	76d010ef          	jal	ra,c5d8 <memset>
    a670:	ffffc7b7          	lui	a5,0xffffc
    a674:	01178793          	addi	a5,a5,17 # ffffc011 <soln_cnt0+0xfffeb535>
    a678:	408787b3          	sub	a5,a5,s0
    a67c:	98cff06f          	j	9808 <__multf3+0x184>
    a680:	000b0a63          	beqz	s6,a694 <__multf3+0x1010>
    a684:	000b0513          	mv	a0,s6
    a688:	6f9010ef          	jal	ra,c580 <__clzsi2>
    a68c:	02050413          	addi	s0,a0,32
    a690:	f79ff06f          	j	a608 <__multf3+0xf84>
    a694:	000b8a63          	beqz	s7,a6a8 <__multf3+0x1024>
    a698:	000b8513          	mv	a0,s7
    a69c:	6e5010ef          	jal	ra,c580 <__clzsi2>
    a6a0:	04050413          	addi	s0,a0,64
    a6a4:	f65ff06f          	j	a608 <__multf3+0xf84>
    a6a8:	000a8513          	mv	a0,s5
    a6ac:	6d5010ef          	jal	ra,c580 <__clzsi2>
    a6b0:	06050413          	addi	s0,a0,96
    a6b4:	f55ff06f          	j	a608 <__multf3+0xf84>
    a6b8:	02c10693          	addi	a3,sp,44
    a6bc:	00271713          	slli	a4,a4,0x2
    a6c0:	00300613          	li	a2,3
    a6c4:	00e685b3          	add	a1,a3,a4
    a6c8:	0005a583          	lw	a1,0(a1)
    a6cc:	fff60613          	addi	a2,a2,-1
    a6d0:	ffc68693          	addi	a3,a3,-4
    a6d4:	00b6a223          	sw	a1,4(a3)
    a6d8:	fef656e3          	bge	a2,a5,a6c4 <__multf3+0x1040>
    a6dc:	fff78613          	addi	a2,a5,-1
    a6e0:	f7dff06f          	j	a65c <__multf3+0xfd8>
    a6e4:	0006a603          	lw	a2,0(a3)
    a6e8:	ffc6a803          	lw	a6,-4(a3)
    a6ec:	00e68333          	add	t1,a3,a4
    a6f0:	00b61633          	sll	a2,a2,a1
    a6f4:	00a85833          	srl	a6,a6,a0
    a6f8:	01066633          	or	a2,a2,a6
    a6fc:	00c32023          	sw	a2,0(t1)
    a700:	ffc68693          	addi	a3,a3,-4
    a704:	f35ff06f          	j	a638 <__multf3+0xfb4>
    a708:	017aeab3          	or	s5,s5,s7
    a70c:	016aeab3          	or	s5,s5,s6
    a710:	00aaeab3          	or	s5,s5,a0
    a714:	00300693          	li	a3,3
    a718:	000a8463          	beqz	s5,a720 <__multf3+0x109c>
    a71c:	8f0ff06f          	j	980c <__multf3+0x188>
    a720:	00200693          	li	a3,2
    a724:	8e8ff06f          	j	980c <__multf3+0x188>
    a728:	00000793          	li	a5,0
    a72c:	00100693          	li	a3,1
    a730:	8dcff06f          	j	980c <__multf3+0x188>
    a734:	00100713          	li	a4,1
    a738:	00f717b3          	sll	a5,a4,a5
    a73c:	5307f713          	andi	a4,a5,1328
    a740:	04071663          	bnez	a4,a78c <__multf3+0x1108>
    a744:	0887f713          	andi	a4,a5,136
    a748:	08071863          	bnez	a4,a7d8 <__multf3+0x1154>
    a74c:	2407f793          	andi	a5,a5,576
    a750:	00079463          	bnez	a5,a758 <__multf3+0x10d4>
    a754:	8f8ff06f          	j	984c <__multf3+0x1c8>
    a758:	000087b7          	lui	a5,0x8
    a75c:	02f12e23          	sw	a5,60(sp)
    a760:	02012c23          	sw	zero,56(sp)
    a764:	02012a23          	sw	zero,52(sp)
    a768:	02012823          	sw	zero,48(sp)
    a76c:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    a770:	00000413          	li	s0,0
    a774:	cb9ff06f          	j	a42c <__multf3+0xda8>
    a778:	00f00713          	li	a4,15
    a77c:	fce78ee3          	beq	a5,a4,a758 <__multf3+0x10d4>
    a780:	00b00713          	li	a4,11
    a784:	04e78a63          	beq	a5,a4,a7d8 <__multf3+0x1154>
    a788:	00098413          	mv	s0,s3
    a78c:	01012783          	lw	a5,16(sp)
    a790:	02f12823          	sw	a5,48(sp)
    a794:	01412783          	lw	a5,20(sp)
    a798:	02f12a23          	sw	a5,52(sp)
    a79c:	01812783          	lw	a5,24(sp)
    a7a0:	02f12c23          	sw	a5,56(sp)
    a7a4:	01c12783          	lw	a5,28(sp)
    a7a8:	02f12e23          	sw	a5,60(sp)
    a7ac:	00200793          	li	a5,2
    a7b0:	26fc0e63          	beq	s8,a5,aa2c <__multf3+0x13a8>
    a7b4:	00300793          	li	a5,3
    a7b8:	fafc00e3          	beq	s8,a5,a758 <__multf3+0x10d4>
    a7bc:	00100793          	li	a5,1
    a7c0:	bafc12e3          	bne	s8,a5,a364 <__multf3+0xce0>
    a7c4:	02012e23          	sw	zero,60(sp)
    a7c8:	02012c23          	sw	zero,56(sp)
    a7cc:	02012a23          	sw	zero,52(sp)
    a7d0:	02012823          	sw	zero,48(sp)
    a7d4:	2180006f          	j	a9ec <__multf3+0x1368>
    a7d8:	000a0413          	mv	s0,s4
    a7dc:	02012783          	lw	a5,32(sp)
    a7e0:	00068c13          	mv	s8,a3
    a7e4:	02f12823          	sw	a5,48(sp)
    a7e8:	02412783          	lw	a5,36(sp)
    a7ec:	02f12a23          	sw	a5,52(sp)
    a7f0:	02812783          	lw	a5,40(sp)
    a7f4:	02f12c23          	sw	a5,56(sp)
    a7f8:	02c12783          	lw	a5,44(sp)
    a7fc:	fadff06f          	j	a7a8 <__multf3+0x1124>
    a800:	00812c83          	lw	s9,8(sp)
    a804:	b61ff06f          	j	a364 <__multf3+0xce0>
    a808:	02012e23          	sw	zero,60(sp)
    a80c:	02012c23          	sw	zero,56(sp)
    a810:	02012a23          	sw	zero,52(sp)
    a814:	02012823          	sw	zero,48(sp)
    a818:	fff68793          	addi	a5,a3,-1
    a81c:	c11ff06f          	j	a42c <__multf3+0xda8>
    a820:	00100713          	li	a4,1
    a824:	40f707b3          	sub	a5,a4,a5
    a828:	07400713          	li	a4,116
    a82c:	1cf74463          	blt	a4,a5,a9f4 <__multf3+0x1370>
    a830:	03010993          	addi	s3,sp,48
    a834:	4057d513          	srai	a0,a5,0x5
    a838:	00098693          	mv	a3,s3
    a83c:	00000913          	li	s2,0
    a840:	00000713          	li	a4,0
    a844:	04a71263          	bne	a4,a0,a888 <__multf3+0x1204>
    a848:	01f7f793          	andi	a5,a5,31
    a84c:	00251693          	slli	a3,a0,0x2
    a850:	04079663          	bnez	a5,a89c <__multf3+0x1218>
    a854:	00300613          	li	a2,3
    a858:	00098793          	mv	a5,s3
    a85c:	00000713          	li	a4,0
    a860:	40a60633          	sub	a2,a2,a0
    a864:	00d785b3          	add	a1,a5,a3
    a868:	0005a583          	lw	a1,0(a1)
    a86c:	00170713          	addi	a4,a4,1
    a870:	00478793          	addi	a5,a5,4
    a874:	feb7ae23          	sw	a1,-4(a5)
    a878:	fee656e3          	bge	a2,a4,a864 <__multf3+0x11e0>
    a87c:	00400793          	li	a5,4
    a880:	40a78533          	sub	a0,a5,a0
    a884:	0780006f          	j	a8fc <__multf3+0x1278>
    a888:	0006a603          	lw	a2,0(a3)
    a88c:	00170713          	addi	a4,a4,1
    a890:	00468693          	addi	a3,a3,4
    a894:	00c96933          	or	s2,s2,a2
    a898:	fadff06f          	j	a844 <__multf3+0x11c0>
    a89c:	05068713          	addi	a4,a3,80
    a8a0:	01010613          	addi	a2,sp,16
    a8a4:	00c70733          	add	a4,a4,a2
    a8a8:	fd072703          	lw	a4,-48(a4)
    a8ac:	02000593          	li	a1,32
    a8b0:	40f585b3          	sub	a1,a1,a5
    a8b4:	00b71733          	sll	a4,a4,a1
    a8b8:	00e96933          	or	s2,s2,a4
    a8bc:	00300713          	li	a4,3
    a8c0:	00d986b3          	add	a3,s3,a3
    a8c4:	00098893          	mv	a7,s3
    a8c8:	00000813          	li	a6,0
    a8cc:	40a70733          	sub	a4,a4,a0
    a8d0:	00468693          	addi	a3,a3,4
    a8d4:	0ce84263          	blt	a6,a4,a998 <__multf3+0x1314>
    a8d8:	00400693          	li	a3,4
    a8dc:	00271713          	slli	a4,a4,0x2
    a8e0:	40a68533          	sub	a0,a3,a0
    a8e4:	05070713          	addi	a4,a4,80
    a8e8:	01010693          	addi	a3,sp,16
    a8ec:	00d70733          	add	a4,a4,a3
    a8f0:	03c12683          	lw	a3,60(sp)
    a8f4:	00f6d7b3          	srl	a5,a3,a5
    a8f8:	fcf72823          	sw	a5,-48(a4)
    a8fc:	00400a13          	li	s4,4
    a900:	40aa0633          	sub	a2,s4,a0
    a904:	00251513          	slli	a0,a0,0x2
    a908:	00261613          	slli	a2,a2,0x2
    a90c:	00000593          	li	a1,0
    a910:	00a98533          	add	a0,s3,a0
    a914:	4c5010ef          	jal	ra,c5d8 <memset>
    a918:	03012703          	lw	a4,48(sp)
    a91c:	012037b3          	snez	a5,s2
    a920:	00e7e7b3          	or	a5,a5,a4
    a924:	02f12823          	sw	a5,48(sp)
    a928:	0077f713          	andi	a4,a5,7
    a92c:	04070263          	beqz	a4,a970 <__multf3+0x12ec>
    a930:	00f7f713          	andi	a4,a5,15
    a934:	03470e63          	beq	a4,s4,a970 <__multf3+0x12ec>
    a938:	03412703          	lw	a4,52(sp)
    a93c:	00478793          	addi	a5,a5,4
    a940:	02f12823          	sw	a5,48(sp)
    a944:	0047b793          	sltiu	a5,a5,4
    a948:	00e78733          	add	a4,a5,a4
    a94c:	02e12a23          	sw	a4,52(sp)
    a950:	00f73733          	sltu	a4,a4,a5
    a954:	03812783          	lw	a5,56(sp)
    a958:	00f707b3          	add	a5,a4,a5
    a95c:	02f12c23          	sw	a5,56(sp)
    a960:	00e7b7b3          	sltu	a5,a5,a4
    a964:	03c12703          	lw	a4,60(sp)
    a968:	00e787b3          	add	a5,a5,a4
    a96c:	02f12e23          	sw	a5,60(sp)
    a970:	03c12703          	lw	a4,60(sp)
    a974:	000807b7          	lui	a5,0x80
    a978:	00e7f7b3          	and	a5,a5,a4
    a97c:	04078063          	beqz	a5,a9bc <__multf3+0x1338>
    a980:	02012e23          	sw	zero,60(sp)
    a984:	02012c23          	sw	zero,56(sp)
    a988:	02012a23          	sw	zero,52(sp)
    a98c:	02012823          	sw	zero,48(sp)
    a990:	00100793          	li	a5,1
    a994:	a99ff06f          	j	a42c <__multf3+0xda8>
    a998:	ffc6a603          	lw	a2,-4(a3)
    a99c:	0006a303          	lw	t1,0(a3)
    a9a0:	00180813          	addi	a6,a6,1
    a9a4:	00f65633          	srl	a2,a2,a5
    a9a8:	00b31333          	sll	t1,t1,a1
    a9ac:	00666633          	or	a2,a2,t1
    a9b0:	00c8a023          	sw	a2,0(a7)
    a9b4:	00488893          	addi	a7,a7,4
    a9b8:	f19ff06f          	j	a8d0 <__multf3+0x124c>
    a9bc:	00c98693          	addi	a3,s3,12
    a9c0:	0009a783          	lw	a5,0(s3)
    a9c4:	0049a703          	lw	a4,4(s3)
    a9c8:	00498993          	addi	s3,s3,4
    a9cc:	0037d793          	srli	a5,a5,0x3
    a9d0:	01d71713          	slli	a4,a4,0x1d
    a9d4:	00e7e7b3          	or	a5,a5,a4
    a9d8:	fef9ae23          	sw	a5,-4(s3)
    a9dc:	fed992e3          	bne	s3,a3,a9c0 <__multf3+0x133c>
    a9e0:	03c12783          	lw	a5,60(sp)
    a9e4:	0037d793          	srli	a5,a5,0x3
    a9e8:	02f12e23          	sw	a5,60(sp)
    a9ec:	00000793          	li	a5,0
    a9f0:	a3dff06f          	j	a42c <__multf3+0xda8>
    a9f4:	03412783          	lw	a5,52(sp)
    a9f8:	03012703          	lw	a4,48(sp)
    a9fc:	00f76733          	or	a4,a4,a5
    aa00:	03812783          	lw	a5,56(sp)
    aa04:	00f76733          	or	a4,a4,a5
    aa08:	03c12783          	lw	a5,60(sp)
    aa0c:	00f76733          	or	a4,a4,a5
    aa10:	00000793          	li	a5,0
    aa14:	a0070ce3          	beqz	a4,a42c <__multf3+0xda8>
    aa18:	02012e23          	sw	zero,60(sp)
    aa1c:	02012c23          	sw	zero,56(sp)
    aa20:	02012a23          	sw	zero,52(sp)
    aa24:	02012823          	sw	zero,48(sp)
    aa28:	a05ff06f          	j	a42c <__multf3+0xda8>
    aa2c:	000087b7          	lui	a5,0x8
    aa30:	02012e23          	sw	zero,60(sp)
    aa34:	02012c23          	sw	zero,56(sp)
    aa38:	02012a23          	sw	zero,52(sp)
    aa3c:	02012823          	sw	zero,48(sp)
    aa40:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    aa44:	9e9ff06f          	j	a42c <__multf3+0xda8>

0000aa48 <__subtf3>:
    aa48:	f9010113          	addi	sp,sp,-112
    aa4c:	0085a783          	lw	a5,8(a1)
    aa50:	05312e23          	sw	s3,92(sp)
    aa54:	00c5a983          	lw	s3,12(a1)
    aa58:	0005a683          	lw	a3,0(a1)
    aa5c:	0045a703          	lw	a4,4(a1)
    aa60:	05412c23          	sw	s4,88(sp)
    aa64:	05712623          	sw	s7,76(sp)
    aa68:	00050a13          	mv	s4,a0
    aa6c:	02f12c23          	sw	a5,56(sp)
    aa70:	00f12c23          	sw	a5,24(sp)
    aa74:	00062883          	lw	a7,0(a2)
    aa78:	01099793          	slli	a5,s3,0x10
    aa7c:	00462503          	lw	a0,4(a2)
    aa80:	00862583          	lw	a1,8(a2)
    aa84:	00c62b83          	lw	s7,12(a2)
    aa88:	06812423          	sw	s0,104(sp)
    aa8c:	0107d793          	srli	a5,a5,0x10
    aa90:	00199413          	slli	s0,s3,0x1
    aa94:	02d12823          	sw	a3,48(sp)
    aa98:	03312e23          	sw	s3,60(sp)
    aa9c:	00d12823          	sw	a3,16(sp)
    aaa0:	06112623          	sw	ra,108(sp)
    aaa4:	06912223          	sw	s1,100(sp)
    aaa8:	07212023          	sw	s2,96(sp)
    aaac:	05512a23          	sw	s5,84(sp)
    aab0:	05612823          	sw	s6,80(sp)
    aab4:	05812423          	sw	s8,72(sp)
    aab8:	05912223          	sw	s9,68(sp)
    aabc:	02e12a23          	sw	a4,52(sp)
    aac0:	00e12a23          	sw	a4,20(sp)
    aac4:	00f12e23          	sw	a5,28(sp)
    aac8:	01145413          	srli	s0,s0,0x11
    aacc:	01f9d993          	srli	s3,s3,0x1f
    aad0:	01010813          	addi	a6,sp,16
    aad4:	01c10693          	addi	a3,sp,28
    aad8:	0006a783          	lw	a5,0(a3)
    aadc:	ffc6a703          	lw	a4,-4(a3)
    aae0:	ffc68693          	addi	a3,a3,-4
    aae4:	00379793          	slli	a5,a5,0x3
    aae8:	01d75713          	srli	a4,a4,0x1d
    aaec:	00e7e7b3          	or	a5,a5,a4
    aaf0:	00f6a223          	sw	a5,4(a3)
    aaf4:	fed812e3          	bne	a6,a3,aad8 <__subtf3+0x90>
    aaf8:	01012903          	lw	s2,16(sp)
    aafc:	010b9793          	slli	a5,s7,0x10
    ab00:	001b9b13          	slli	s6,s7,0x1
    ab04:	00391913          	slli	s2,s2,0x3
    ab08:	0107d793          	srli	a5,a5,0x10
    ab0c:	02a12a23          	sw	a0,52(sp)
    ab10:	03712e23          	sw	s7,60(sp)
    ab14:	02a12223          	sw	a0,36(sp)
    ab18:	01212823          	sw	s2,16(sp)
    ab1c:	03112823          	sw	a7,48(sp)
    ab20:	02b12c23          	sw	a1,56(sp)
    ab24:	03112023          	sw	a7,32(sp)
    ab28:	02b12423          	sw	a1,40(sp)
    ab2c:	02f12623          	sw	a5,44(sp)
    ab30:	011b5b13          	srli	s6,s6,0x11
    ab34:	01fbdb93          	srli	s7,s7,0x1f
    ab38:	02010513          	addi	a0,sp,32
    ab3c:	02c10713          	addi	a4,sp,44
    ab40:	00072783          	lw	a5,0(a4)
    ab44:	ffc72603          	lw	a2,-4(a4)
    ab48:	ffc70713          	addi	a4,a4,-4
    ab4c:	00379793          	slli	a5,a5,0x3
    ab50:	01d65613          	srli	a2,a2,0x1d
    ab54:	00c7e7b3          	or	a5,a5,a2
    ab58:	00f72223          	sw	a5,4(a4)
    ab5c:	fee512e3          	bne	a0,a4,ab40 <__subtf3+0xf8>
    ab60:	02012483          	lw	s1,32(sp)
    ab64:	000087b7          	lui	a5,0x8
    ab68:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    ab6c:	00349493          	slli	s1,s1,0x3
    ab70:	02912023          	sw	s1,32(sp)
    ab74:	02fb1063          	bne	s6,a5,ab94 <__subtf3+0x14c>
    ab78:	02812603          	lw	a2,40(sp)
    ab7c:	02412783          	lw	a5,36(sp)
    ab80:	00c7e7b3          	or	a5,a5,a2
    ab84:	02c12603          	lw	a2,44(sp)
    ab88:	00c7e7b3          	or	a5,a5,a2
    ab8c:	0097e7b3          	or	a5,a5,s1
    ab90:	00079463          	bnez	a5,ab98 <__subtf3+0x150>
    ab94:	001bcb93          	xori	s7,s7,1
    ab98:	416405b3          	sub	a1,s0,s6
    ab9c:	113b94e3          	bne	s7,s3,b4a4 <__subtf3+0xa5c>
    aba0:	2eb05463          	blez	a1,ae88 <__subtf3+0x440>
    aba4:	01412c03          	lw	s8,20(sp)
    aba8:	01812b83          	lw	s7,24(sp)
    abac:	01c12a83          	lw	s5,28(sp)
    abb0:	0a0b1a63          	bnez	s6,ac64 <__subtf3+0x21c>
    abb4:	02412603          	lw	a2,36(sp)
    abb8:	02812783          	lw	a5,40(sp)
    abbc:	02c12803          	lw	a6,44(sp)
    abc0:	00f666b3          	or	a3,a2,a5
    abc4:	0106e6b3          	or	a3,a3,a6
    abc8:	0096e6b3          	or	a3,a3,s1
    abcc:	00069e63          	bnez	a3,abe8 <__subtf3+0x1a0>
    abd0:	03212823          	sw	s2,48(sp)
    abd4:	03812a23          	sw	s8,52(sp)
    abd8:	03712c23          	sw	s7,56(sp)
    abdc:	03512e23          	sw	s5,60(sp)
    abe0:	00058413          	mv	s0,a1
    abe4:	2ec0006f          	j	aed0 <__subtf3+0x488>
    abe8:	fff58693          	addi	a3,a1,-1
    abec:	04069863          	bnez	a3,ac3c <__subtf3+0x1f4>
    abf0:	009904b3          	add	s1,s2,s1
    abf4:	01860633          	add	a2,a2,s8
    abf8:	02912823          	sw	s1,48(sp)
    abfc:	0124b4b3          	sltu	s1,s1,s2
    ac00:	00960733          	add	a4,a2,s1
    ac04:	02e12a23          	sw	a4,52(sp)
    ac08:	01863633          	sltu	a2,a2,s8
    ac0c:	00973733          	sltu	a4,a4,s1
    ac10:	00e66633          	or	a2,a2,a4
    ac14:	017787b3          	add	a5,a5,s7
    ac18:	00c78733          	add	a4,a5,a2
    ac1c:	02e12c23          	sw	a4,56(sp)
    ac20:	0177b7b3          	sltu	a5,a5,s7
    ac24:	00c73733          	sltu	a4,a4,a2
    ac28:	00e7e7b3          	or	a5,a5,a4
    ac2c:	01580833          	add	a6,a6,s5
    ac30:	010787b3          	add	a5,a5,a6
    ac34:	00100413          	li	s0,1
    ac38:	19c0006f          	j	add4 <__subtf3+0x38c>
    ac3c:	000087b7          	lui	a5,0x8
    ac40:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    ac44:	f8f586e3          	beq	a1,a5,abd0 <__subtf3+0x188>
    ac48:	07400793          	li	a5,116
    ac4c:	04d7da63          	bge	a5,a3,aca0 <__subtf3+0x258>
    ac50:	02012623          	sw	zero,44(sp)
    ac54:	02012423          	sw	zero,40(sp)
    ac58:	02012223          	sw	zero,36(sp)
    ac5c:	00100793          	li	a5,1
    ac60:	11c0006f          	j	ad7c <__subtf3+0x334>
    ac64:	000087b7          	lui	a5,0x8
    ac68:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    ac6c:	00f41c63          	bne	s0,a5,ac84 <__subtf3+0x23c>
    ac70:	03212823          	sw	s2,48(sp)
    ac74:	03812a23          	sw	s8,52(sp)
    ac78:	03712c23          	sw	s7,56(sp)
    ac7c:	03512e23          	sw	s5,60(sp)
    ac80:	2500006f          	j	aed0 <__subtf3+0x488>
    ac84:	02c12783          	lw	a5,44(sp)
    ac88:	000806b7          	lui	a3,0x80
    ac8c:	00d7e7b3          	or	a5,a5,a3
    ac90:	02f12623          	sw	a5,44(sp)
    ac94:	07400793          	li	a5,116
    ac98:	fab7cce3          	blt	a5,a1,ac50 <__subtf3+0x208>
    ac9c:	00058693          	mv	a3,a1
    aca0:	4056d793          	srai	a5,a3,0x5
    aca4:	00070593          	mv	a1,a4
    aca8:	00000493          	li	s1,0
    acac:	00000613          	li	a2,0
    acb0:	02f61e63          	bne	a2,a5,acec <__subtf3+0x2a4>
    acb4:	01f6f693          	andi	a3,a3,31
    acb8:	00279593          	slli	a1,a5,0x2
    acbc:	04069263          	bnez	a3,ad00 <__subtf3+0x2b8>
    acc0:	00300613          	li	a2,3
    acc4:	40f60633          	sub	a2,a2,a5
    acc8:	00b70833          	add	a6,a4,a1
    accc:	00082803          	lw	a6,0(a6)
    acd0:	00168693          	addi	a3,a3,1 # 80001 <soln_cnt0+0x6f525>
    acd4:	00470713          	addi	a4,a4,4
    acd8:	ff072e23          	sw	a6,-4(a4)
    acdc:	fed656e3          	bge	a2,a3,acc8 <__subtf3+0x280>
    ace0:	00400713          	li	a4,4
    ace4:	40f707b3          	sub	a5,a4,a5
    ace8:	06c0006f          	j	ad54 <__subtf3+0x30c>
    acec:	0005a803          	lw	a6,0(a1)
    acf0:	00160613          	addi	a2,a2,1
    acf4:	00458593          	addi	a1,a1,4
    acf8:	0104e4b3          	or	s1,s1,a6
    acfc:	fb5ff06f          	j	acb0 <__subtf3+0x268>
    ad00:	04058613          	addi	a2,a1,64
    ad04:	00260633          	add	a2,a2,sp
    ad08:	fe062603          	lw	a2,-32(a2)
    ad0c:	02000893          	li	a7,32
    ad10:	40d888b3          	sub	a7,a7,a3
    ad14:	01161633          	sll	a2,a2,a7
    ad18:	00c4e4b3          	or	s1,s1,a2
    ad1c:	00300613          	li	a2,3
    ad20:	00b505b3          	add	a1,a0,a1
    ad24:	00000313          	li	t1,0
    ad28:	40f60633          	sub	a2,a2,a5
    ad2c:	00458593          	addi	a1,a1,4
    ad30:	12c34a63          	blt	t1,a2,ae64 <__subtf3+0x41c>
    ad34:	00400713          	li	a4,4
    ad38:	00261613          	slli	a2,a2,0x2
    ad3c:	40f707b3          	sub	a5,a4,a5
    ad40:	04060713          	addi	a4,a2,64
    ad44:	00270633          	add	a2,a4,sp
    ad48:	02c12703          	lw	a4,44(sp)
    ad4c:	00d75733          	srl	a4,a4,a3
    ad50:	fee62023          	sw	a4,-32(a2)
    ad54:	00400613          	li	a2,4
    ad58:	40f60633          	sub	a2,a2,a5
    ad5c:	00279793          	slli	a5,a5,0x2
    ad60:	00f50533          	add	a0,a0,a5
    ad64:	00261613          	slli	a2,a2,0x2
    ad68:	00000593          	li	a1,0
    ad6c:	06d010ef          	jal	ra,c5d8 <memset>
    ad70:	02012703          	lw	a4,32(sp)
    ad74:	009037b3          	snez	a5,s1
    ad78:	00f767b3          	or	a5,a4,a5
    ad7c:	02f12023          	sw	a5,32(sp)
    ad80:	02012783          	lw	a5,32(sp)
    ad84:	02412703          	lw	a4,36(sp)
    ad88:	00f907b3          	add	a5,s2,a5
    ad8c:	00ec0733          	add	a4,s8,a4
    ad90:	02f12823          	sw	a5,48(sp)
    ad94:	0127b7b3          	sltu	a5,a5,s2
    ad98:	00f706b3          	add	a3,a4,a5
    ad9c:	02d12a23          	sw	a3,52(sp)
    ada0:	00f6b6b3          	sltu	a3,a3,a5
    ada4:	02812783          	lw	a5,40(sp)
    ada8:	01873733          	sltu	a4,a4,s8
    adac:	00d76733          	or	a4,a4,a3
    adb0:	00fb87b3          	add	a5,s7,a5
    adb4:	00e786b3          	add	a3,a5,a4
    adb8:	02d12c23          	sw	a3,56(sp)
    adbc:	00e6b6b3          	sltu	a3,a3,a4
    adc0:	02c12703          	lw	a4,44(sp)
    adc4:	0177b7b3          	sltu	a5,a5,s7
    adc8:	00d7e7b3          	or	a5,a5,a3
    adcc:	00ea8733          	add	a4,s5,a4
    add0:	00e787b3          	add	a5,a5,a4
    add4:	00080737          	lui	a4,0x80
    add8:	02f12e23          	sw	a5,60(sp)
    addc:	00e7f733          	and	a4,a5,a4
    ade0:	0e070863          	beqz	a4,aed0 <__subtf3+0x488>
    ade4:	fff80737          	lui	a4,0xfff80
    ade8:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    adec:	00e7f7b3          	and	a5,a5,a4
    adf0:	02f12e23          	sw	a5,60(sp)
    adf4:	03012783          	lw	a5,48(sp)
    adf8:	00140413          	addi	s0,s0,1
    adfc:	03c10593          	addi	a1,sp,60
    ae00:	01f79713          	slli	a4,a5,0x1f
    ae04:	03010793          	addi	a5,sp,48
    ae08:	0007a683          	lw	a3,0(a5)
    ae0c:	0047a603          	lw	a2,4(a5)
    ae10:	00478793          	addi	a5,a5,4
    ae14:	0016d693          	srli	a3,a3,0x1
    ae18:	01f61613          	slli	a2,a2,0x1f
    ae1c:	00c6e6b3          	or	a3,a3,a2
    ae20:	fed7ae23          	sw	a3,-4(a5)
    ae24:	feb792e3          	bne	a5,a1,ae08 <__subtf3+0x3c0>
    ae28:	03c12783          	lw	a5,60(sp)
    ae2c:	0017d793          	srli	a5,a5,0x1
    ae30:	02f12e23          	sw	a5,60(sp)
    ae34:	00e037b3          	snez	a5,a4
    ae38:	03012703          	lw	a4,48(sp)
    ae3c:	00f767b3          	or	a5,a4,a5
    ae40:	02f12823          	sw	a5,48(sp)
    ae44:	000087b7          	lui	a5,0x8
    ae48:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    ae4c:	08f41263          	bne	s0,a5,aed0 <__subtf3+0x488>
    ae50:	02012e23          	sw	zero,60(sp)
    ae54:	02012c23          	sw	zero,56(sp)
    ae58:	02012a23          	sw	zero,52(sp)
    ae5c:	02012823          	sw	zero,48(sp)
    ae60:	0700006f          	j	aed0 <__subtf3+0x488>
    ae64:	ffc5a803          	lw	a6,-4(a1)
    ae68:	0005ae03          	lw	t3,0(a1)
    ae6c:	00130313          	addi	t1,t1,1
    ae70:	00d85833          	srl	a6,a6,a3
    ae74:	011e1e33          	sll	t3,t3,a7
    ae78:	01c86833          	or	a6,a6,t3
    ae7c:	01072023          	sw	a6,0(a4)
    ae80:	00470713          	addi	a4,a4,4
    ae84:	ea9ff06f          	j	ad2c <__subtf3+0x2e4>
    ae88:	02412a83          	lw	s5,36(sp)
    ae8c:	02812b83          	lw	s7,40(sp)
    ae90:	02c12c03          	lw	s8,44(sp)
    ae94:	40058063          	beqz	a1,b294 <__subtf3+0x84c>
    ae98:	408b0633          	sub	a2,s6,s0
    ae9c:	20041a63          	bnez	s0,b0b0 <__subtf3+0x668>
    aea0:	01412703          	lw	a4,20(sp)
    aea4:	01812783          	lw	a5,24(sp)
    aea8:	01c12503          	lw	a0,28(sp)
    aeac:	00f765b3          	or	a1,a4,a5
    aeb0:	00a5e5b3          	or	a1,a1,a0
    aeb4:	0125e5b3          	or	a1,a1,s2
    aeb8:	18059063          	bnez	a1,b038 <__subtf3+0x5f0>
    aebc:	02912823          	sw	s1,48(sp)
    aec0:	03512a23          	sw	s5,52(sp)
    aec4:	03712c23          	sw	s7,56(sp)
    aec8:	03812e23          	sw	s8,60(sp)
    aecc:	00060413          	mv	s0,a2
    aed0:	03012783          	lw	a5,48(sp)
    aed4:	0077f713          	andi	a4,a5,7
    aed8:	04070463          	beqz	a4,af20 <__subtf3+0x4d8>
    aedc:	00f7f713          	andi	a4,a5,15
    aee0:	00400693          	li	a3,4
    aee4:	02d70e63          	beq	a4,a3,af20 <__subtf3+0x4d8>
    aee8:	03412703          	lw	a4,52(sp)
    aeec:	00478793          	addi	a5,a5,4
    aef0:	02f12823          	sw	a5,48(sp)
    aef4:	0047b793          	sltiu	a5,a5,4
    aef8:	00e78733          	add	a4,a5,a4
    aefc:	02e12a23          	sw	a4,52(sp)
    af00:	00f73733          	sltu	a4,a4,a5
    af04:	03812783          	lw	a5,56(sp)
    af08:	00f707b3          	add	a5,a4,a5
    af0c:	02f12c23          	sw	a5,56(sp)
    af10:	00e7b7b3          	sltu	a5,a5,a4
    af14:	03c12703          	lw	a4,60(sp)
    af18:	00e787b3          	add	a5,a5,a4
    af1c:	02f12e23          	sw	a5,60(sp)
    af20:	03c12783          	lw	a5,60(sp)
    af24:	00080737          	lui	a4,0x80
    af28:	00e7f733          	and	a4,a5,a4
    af2c:	02070463          	beqz	a4,af54 <__subtf3+0x50c>
    af30:	00008737          	lui	a4,0x8
    af34:	00140413          	addi	s0,s0,1
    af38:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    af3c:	00e41463          	bne	s0,a4,af44 <__subtf3+0x4fc>
    af40:	0100106f          	j	bf50 <__subtf3+0x1508>
    af44:	fff80737          	lui	a4,0xfff80
    af48:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    af4c:	00e7f7b3          	and	a5,a5,a4
    af50:	02f12e23          	sw	a5,60(sp)
    af54:	03010793          	addi	a5,sp,48
    af58:	03c10613          	addi	a2,sp,60
    af5c:	0007a703          	lw	a4,0(a5)
    af60:	0047a683          	lw	a3,4(a5)
    af64:	00478793          	addi	a5,a5,4
    af68:	00375713          	srli	a4,a4,0x3
    af6c:	01d69693          	slli	a3,a3,0x1d
    af70:	00d76733          	or	a4,a4,a3
    af74:	fee7ae23          	sw	a4,-4(a5)
    af78:	fef612e3          	bne	a2,a5,af5c <__subtf3+0x514>
    af7c:	03c12703          	lw	a4,60(sp)
    af80:	000086b7          	lui	a3,0x8
    af84:	fff68793          	addi	a5,a3,-1 # 7fff <__addtf3+0xe63>
    af88:	00375713          	srli	a4,a4,0x3
    af8c:	02e12e23          	sw	a4,60(sp)
    af90:	02f41a63          	bne	s0,a5,afc4 <__subtf3+0x57c>
    af94:	03412603          	lw	a2,52(sp)
    af98:	03012783          	lw	a5,48(sp)
    af9c:	00c7e7b3          	or	a5,a5,a2
    afa0:	03812603          	lw	a2,56(sp)
    afa4:	00c7e7b3          	or	a5,a5,a2
    afa8:	00e7e7b3          	or	a5,a5,a4
    afac:	00078c63          	beqz	a5,afc4 <__subtf3+0x57c>
    afb0:	02d12e23          	sw	a3,60(sp)
    afb4:	02012c23          	sw	zero,56(sp)
    afb8:	02012a23          	sw	zero,52(sp)
    afbc:	02012823          	sw	zero,48(sp)
    afc0:	00000993          	li	s3,0
    afc4:	03c12783          	lw	a5,60(sp)
    afc8:	01141413          	slli	s0,s0,0x11
    afcc:	01145413          	srli	s0,s0,0x11
    afd0:	00f11623          	sh	a5,12(sp)
    afd4:	03012783          	lw	a5,48(sp)
    afd8:	00f99993          	slli	s3,s3,0xf
    afdc:	0089e9b3          	or	s3,s3,s0
    afe0:	00fa2023          	sw	a5,0(s4)
    afe4:	03412783          	lw	a5,52(sp)
    afe8:	01311723          	sh	s3,14(sp)
    afec:	06c12083          	lw	ra,108(sp)
    aff0:	00fa2223          	sw	a5,4(s4)
    aff4:	03812783          	lw	a5,56(sp)
    aff8:	06812403          	lw	s0,104(sp)
    affc:	06412483          	lw	s1,100(sp)
    b000:	00fa2423          	sw	a5,8(s4)
    b004:	00c12783          	lw	a5,12(sp)
    b008:	06012903          	lw	s2,96(sp)
    b00c:	05c12983          	lw	s3,92(sp)
    b010:	00fa2623          	sw	a5,12(s4)
    b014:	05412a83          	lw	s5,84(sp)
    b018:	05012b03          	lw	s6,80(sp)
    b01c:	04c12b83          	lw	s7,76(sp)
    b020:	04812c03          	lw	s8,72(sp)
    b024:	04412c83          	lw	s9,68(sp)
    b028:	000a0513          	mv	a0,s4
    b02c:	05812a03          	lw	s4,88(sp)
    b030:	07010113          	addi	sp,sp,112
    b034:	00008067          	ret
    b038:	fff60893          	addi	a7,a2,-1
    b03c:	04089663          	bnez	a7,b088 <__subtf3+0x640>
    b040:	00990933          	add	s2,s2,s1
    b044:	01570733          	add	a4,a4,s5
    b048:	03212823          	sw	s2,48(sp)
    b04c:	00993933          	sltu	s2,s2,s1
    b050:	012706b3          	add	a3,a4,s2
    b054:	02d12a23          	sw	a3,52(sp)
    b058:	01573733          	sltu	a4,a4,s5
    b05c:	0126b6b3          	sltu	a3,a3,s2
    b060:	00d76733          	or	a4,a4,a3
    b064:	017787b3          	add	a5,a5,s7
    b068:	00e786b3          	add	a3,a5,a4
    b06c:	02d12c23          	sw	a3,56(sp)
    b070:	0177b7b3          	sltu	a5,a5,s7
    b074:	00e6b6b3          	sltu	a3,a3,a4
    b078:	00d7e7b3          	or	a5,a5,a3
    b07c:	01850533          	add	a0,a0,s8
    b080:	00a787b3          	add	a5,a5,a0
    b084:	bb1ff06f          	j	ac34 <__subtf3+0x1ec>
    b088:	000087b7          	lui	a5,0x8
    b08c:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b090:	e2f606e3          	beq	a2,a5,aebc <__subtf3+0x474>
    b094:	07400793          	li	a5,116
    b098:	0517dc63          	bge	a5,a7,b0f0 <__subtf3+0x6a8>
    b09c:	00012e23          	sw	zero,28(sp)
    b0a0:	00012c23          	sw	zero,24(sp)
    b0a4:	00012a23          	sw	zero,20(sp)
    b0a8:	00100793          	li	a5,1
    b0ac:	1640006f          	j	b210 <__subtf3+0x7c8>
    b0b0:	000087b7          	lui	a5,0x8
    b0b4:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b0b8:	00fb1e63          	bne	s6,a5,b0d4 <__subtf3+0x68c>
    b0bc:	02912823          	sw	s1,48(sp)
    b0c0:	03512a23          	sw	s5,52(sp)
    b0c4:	03712c23          	sw	s7,56(sp)
    b0c8:	03812e23          	sw	s8,60(sp)
    b0cc:	000b0413          	mv	s0,s6
    b0d0:	e01ff06f          	j	aed0 <__subtf3+0x488>
    b0d4:	01c12783          	lw	a5,28(sp)
    b0d8:	00080737          	lui	a4,0x80
    b0dc:	00e7e7b3          	or	a5,a5,a4
    b0e0:	00f12e23          	sw	a5,28(sp)
    b0e4:	07400793          	li	a5,116
    b0e8:	fac7cae3          	blt	a5,a2,b09c <__subtf3+0x654>
    b0ec:	00060893          	mv	a7,a2
    b0f0:	41f8d793          	srai	a5,a7,0x1f
    b0f4:	01f7f793          	andi	a5,a5,31
    b0f8:	011787b3          	add	a5,a5,a7
    b0fc:	4057d793          	srai	a5,a5,0x5
    b100:	00068613          	mv	a2,a3
    b104:	00000413          	li	s0,0
    b108:	00000713          	li	a4,0
    b10c:	04f74663          	blt	a4,a5,b158 <__subtf3+0x710>
    b110:	00078593          	mv	a1,a5
    b114:	0007d463          	bgez	a5,b11c <__subtf3+0x6d4>
    b118:	00000593          	li	a1,0
    b11c:	01f8f513          	andi	a0,a7,31
    b120:	00279613          	slli	a2,a5,0x2
    b124:	04051463          	bnez	a0,b16c <__subtf3+0x724>
    b128:	00300593          	li	a1,3
    b12c:	00000713          	li	a4,0
    b130:	40f585b3          	sub	a1,a1,a5
    b134:	00c68533          	add	a0,a3,a2
    b138:	00052503          	lw	a0,0(a0)
    b13c:	00170713          	addi	a4,a4,1 # 80001 <soln_cnt0+0x6f525>
    b140:	00468693          	addi	a3,a3,4
    b144:	fea6ae23          	sw	a0,-4(a3)
    b148:	fee5d6e3          	bge	a1,a4,b134 <__subtf3+0x6ec>
    b14c:	00400713          	li	a4,4
    b150:	40f707b3          	sub	a5,a4,a5
    b154:	08c0006f          	j	b1e0 <__subtf3+0x798>
    b158:	00062583          	lw	a1,0(a2)
    b15c:	00170713          	addi	a4,a4,1
    b160:	00460613          	addi	a2,a2,4
    b164:	00b46433          	or	s0,s0,a1
    b168:	fa5ff06f          	j	b10c <__subtf3+0x6c4>
    b16c:	80000737          	lui	a4,0x80000
    b170:	01f70713          	addi	a4,a4,31 # 8000001f <soln_cnt0+0x7ffef543>
    b174:	00e8f733          	and	a4,a7,a4
    b178:	00075863          	bgez	a4,b188 <__subtf3+0x740>
    b17c:	fff70713          	addi	a4,a4,-1
    b180:	fe076713          	ori	a4,a4,-32
    b184:	00170713          	addi	a4,a4,1
    b188:	00259593          	slli	a1,a1,0x2
    b18c:	02000893          	li	a7,32
    b190:	40e888b3          	sub	a7,a7,a4
    b194:	04058713          	addi	a4,a1,64
    b198:	002705b3          	add	a1,a4,sp
    b19c:	fd05a703          	lw	a4,-48(a1)
    b1a0:	00c80633          	add	a2,a6,a2
    b1a4:	00000313          	li	t1,0
    b1a8:	01171733          	sll	a4,a4,a7
    b1ac:	00e46433          	or	s0,s0,a4
    b1b0:	00300713          	li	a4,3
    b1b4:	40f70733          	sub	a4,a4,a5
    b1b8:	00460613          	addi	a2,a2,4
    b1bc:	0ae34a63          	blt	t1,a4,b270 <__subtf3+0x828>
    b1c0:	00400693          	li	a3,4
    b1c4:	40f687b3          	sub	a5,a3,a5
    b1c8:	01c12683          	lw	a3,28(sp)
    b1cc:	00271713          	slli	a4,a4,0x2
    b1d0:	04070713          	addi	a4,a4,64
    b1d4:	00270733          	add	a4,a4,sp
    b1d8:	00a6d6b3          	srl	a3,a3,a0
    b1dc:	fcd72823          	sw	a3,-48(a4)
    b1e0:	00400713          	li	a4,4
    b1e4:	00000613          	li	a2,0
    b1e8:	00f74663          	blt	a4,a5,b1f4 <__subtf3+0x7ac>
    b1ec:	40f70733          	sub	a4,a4,a5
    b1f0:	00271613          	slli	a2,a4,0x2
    b1f4:	00279793          	slli	a5,a5,0x2
    b1f8:	00f80533          	add	a0,a6,a5
    b1fc:	00000593          	li	a1,0
    b200:	3d8010ef          	jal	ra,c5d8 <memset>
    b204:	01012703          	lw	a4,16(sp)
    b208:	008037b3          	snez	a5,s0
    b20c:	00f767b3          	or	a5,a4,a5
    b210:	00f12823          	sw	a5,16(sp)
    b214:	01012783          	lw	a5,16(sp)
    b218:	01412703          	lw	a4,20(sp)
    b21c:	000b0413          	mv	s0,s6
    b220:	00f487b3          	add	a5,s1,a5
    b224:	00ea8733          	add	a4,s5,a4
    b228:	02f12823          	sw	a5,48(sp)
    b22c:	0097b7b3          	sltu	a5,a5,s1
    b230:	00f706b3          	add	a3,a4,a5
    b234:	02d12a23          	sw	a3,52(sp)
    b238:	00f6b6b3          	sltu	a3,a3,a5
    b23c:	01812783          	lw	a5,24(sp)
    b240:	01573733          	sltu	a4,a4,s5
    b244:	00d76733          	or	a4,a4,a3
    b248:	00fb87b3          	add	a5,s7,a5
    b24c:	00e786b3          	add	a3,a5,a4
    b250:	02d12c23          	sw	a3,56(sp)
    b254:	00e6b6b3          	sltu	a3,a3,a4
    b258:	01c12703          	lw	a4,28(sp)
    b25c:	0177b7b3          	sltu	a5,a5,s7
    b260:	00d7e7b3          	or	a5,a5,a3
    b264:	00ec0733          	add	a4,s8,a4
    b268:	00e787b3          	add	a5,a5,a4
    b26c:	b69ff06f          	j	add4 <__subtf3+0x38c>
    b270:	ffc62583          	lw	a1,-4(a2)
    b274:	00062e03          	lw	t3,0(a2)
    b278:	00130313          	addi	t1,t1,1
    b27c:	00a5d5b3          	srl	a1,a1,a0
    b280:	011e1e33          	sll	t3,t3,a7
    b284:	01c5e5b3          	or	a1,a1,t3
    b288:	00b6a023          	sw	a1,0(a3)
    b28c:	00468693          	addi	a3,a3,4
    b290:	f29ff06f          	j	b1b8 <__subtf3+0x770>
    b294:	00008837          	lui	a6,0x8
    b298:	00140693          	addi	a3,s0,1
    b29c:	ffe80893          	addi	a7,a6,-2 # 7ffe <__addtf3+0xe62>
    b2a0:	0116f8b3          	and	a7,a3,a7
    b2a4:	01412503          	lw	a0,20(sp)
    b2a8:	01812583          	lw	a1,24(sp)
    b2ac:	01c12703          	lw	a4,28(sp)
    b2b0:	03010793          	addi	a5,sp,48
    b2b4:	03c10613          	addi	a2,sp,60
    b2b8:	14089863          	bnez	a7,b408 <__subtf3+0x9c0>
    b2bc:	00b566b3          	or	a3,a0,a1
    b2c0:	00e6e6b3          	or	a3,a3,a4
    b2c4:	0126e6b3          	or	a3,a3,s2
    b2c8:	0a041863          	bnez	s0,b378 <__subtf3+0x930>
    b2cc:	00069c63          	bnez	a3,b2e4 <__subtf3+0x89c>
    b2d0:	02912823          	sw	s1,48(sp)
    b2d4:	03512a23          	sw	s5,52(sp)
    b2d8:	03712c23          	sw	s7,56(sp)
    b2dc:	03812e23          	sw	s8,60(sp)
    b2e0:	bf1ff06f          	j	aed0 <__subtf3+0x488>
    b2e4:	017ae7b3          	or	a5,s5,s7
    b2e8:	0187e7b3          	or	a5,a5,s8
    b2ec:	0097e7b3          	or	a5,a5,s1
    b2f0:	00079c63          	bnez	a5,b308 <__subtf3+0x8c0>
    b2f4:	03212823          	sw	s2,48(sp)
    b2f8:	02a12a23          	sw	a0,52(sp)
    b2fc:	02b12c23          	sw	a1,56(sp)
    b300:	02e12e23          	sw	a4,60(sp)
    b304:	bcdff06f          	j	aed0 <__subtf3+0x488>
    b308:	009904b3          	add	s1,s2,s1
    b30c:	01550ab3          	add	s5,a0,s5
    b310:	02912823          	sw	s1,48(sp)
    b314:	0124b4b3          	sltu	s1,s1,s2
    b318:	009a87b3          	add	a5,s5,s1
    b31c:	02f12a23          	sw	a5,52(sp)
    b320:	00aabab3          	sltu	s5,s5,a0
    b324:	0097b7b3          	sltu	a5,a5,s1
    b328:	00faeab3          	or	s5,s5,a5
    b32c:	01758bb3          	add	s7,a1,s7
    b330:	015b87b3          	add	a5,s7,s5
    b334:	02f12c23          	sw	a5,56(sp)
    b338:	00bbbbb3          	sltu	s7,s7,a1
    b33c:	0157b7b3          	sltu	a5,a5,s5
    b340:	00fbebb3          	or	s7,s7,a5
    b344:	01870733          	add	a4,a4,s8
    b348:	00eb8bb3          	add	s7,s7,a4
    b34c:	000807b7          	lui	a5,0x80
    b350:	00fbf7b3          	and	a5,s7,a5
    b354:	00079663          	bnez	a5,b360 <__subtf3+0x918>
    b358:	03712e23          	sw	s7,60(sp)
    b35c:	b75ff06f          	j	aed0 <__subtf3+0x488>
    b360:	fff807b7          	lui	a5,0xfff80
    b364:	fff78793          	addi	a5,a5,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    b368:	00fbfbb3          	and	s7,s7,a5
    b36c:	03712e23          	sw	s7,60(sp)
    b370:	00100413          	li	s0,1
    b374:	b5dff06f          	j	aed0 <__subtf3+0x488>
    b378:	00069e63          	bnez	a3,b394 <__subtf3+0x94c>
    b37c:	02912823          	sw	s1,48(sp)
    b380:	03512a23          	sw	s5,52(sp)
    b384:	03712c23          	sw	s7,56(sp)
    b388:	03812e23          	sw	s8,60(sp)
    b38c:	fff80413          	addi	s0,a6,-1
    b390:	b41ff06f          	j	aed0 <__subtf3+0x488>
    b394:	017aeab3          	or	s5,s5,s7
    b398:	018aeab3          	or	s5,s5,s8
    b39c:	009aeab3          	or	s5,s5,s1
    b3a0:	000a9c63          	bnez	s5,b3b8 <__subtf3+0x970>
    b3a4:	03212823          	sw	s2,48(sp)
    b3a8:	02a12a23          	sw	a0,52(sp)
    b3ac:	02b12c23          	sw	a1,56(sp)
    b3b0:	02e12e23          	sw	a4,60(sp)
    b3b4:	fd9ff06f          	j	b38c <__subtf3+0x944>
    b3b8:	03012e23          	sw	a6,60(sp)
    b3bc:	02012c23          	sw	zero,56(sp)
    b3c0:	02012a23          	sw	zero,52(sp)
    b3c4:	02012823          	sw	zero,48(sp)
    b3c8:	00060713          	mv	a4,a2
    b3cc:	00072683          	lw	a3,0(a4)
    b3d0:	ffc72603          	lw	a2,-4(a4)
    b3d4:	ffc70713          	addi	a4,a4,-4
    b3d8:	00369693          	slli	a3,a3,0x3
    b3dc:	01d65613          	srli	a2,a2,0x1d
    b3e0:	00c6e6b3          	or	a3,a3,a2
    b3e4:	00d72223          	sw	a3,4(a4)
    b3e8:	fee792e3          	bne	a5,a4,b3cc <__subtf3+0x984>
    b3ec:	03012783          	lw	a5,48(sp)
    b3f0:	00008437          	lui	s0,0x8
    b3f4:	00000993          	li	s3,0
    b3f8:	00379793          	slli	a5,a5,0x3
    b3fc:	02f12823          	sw	a5,48(sp)
    b400:	fff40413          	addi	s0,s0,-1 # 7fff <__addtf3+0xe63>
    b404:	acdff06f          	j	aed0 <__subtf3+0x488>
    b408:	009904b3          	add	s1,s2,s1
    b40c:	01550ab3          	add	s5,a0,s5
    b410:	02912823          	sw	s1,48(sp)
    b414:	0124b4b3          	sltu	s1,s1,s2
    b418:	009a8833          	add	a6,s5,s1
    b41c:	03012a23          	sw	a6,52(sp)
    b420:	00aabab3          	sltu	s5,s5,a0
    b424:	00983833          	sltu	a6,a6,s1
    b428:	010aeab3          	or	s5,s5,a6
    b42c:	01758bb3          	add	s7,a1,s7
    b430:	015b8533          	add	a0,s7,s5
    b434:	02a12c23          	sw	a0,56(sp)
    b438:	00bbbbb3          	sltu	s7,s7,a1
    b43c:	01553533          	sltu	a0,a0,s5
    b440:	00abebb3          	or	s7,s7,a0
    b444:	01870733          	add	a4,a4,s8
    b448:	00eb8bb3          	add	s7,s7,a4
    b44c:	03712e23          	sw	s7,60(sp)
    b450:	0007a703          	lw	a4,0(a5)
    b454:	0047a583          	lw	a1,4(a5)
    b458:	00478793          	addi	a5,a5,4
    b45c:	00175713          	srli	a4,a4,0x1
    b460:	01f59593          	slli	a1,a1,0x1f
    b464:	00b76733          	or	a4,a4,a1
    b468:	fee7ae23          	sw	a4,-4(a5)
    b46c:	fef612e3          	bne	a2,a5,b450 <__subtf3+0xa08>
    b470:	00008737          	lui	a4,0x8
    b474:	fff70713          	addi	a4,a4,-1 # 7fff <__addtf3+0xe63>
    b478:	03c12783          	lw	a5,60(sp)
    b47c:	00e68a63          	beq	a3,a4,b490 <__subtf3+0xa48>
    b480:	0017d793          	srli	a5,a5,0x1
    b484:	02f12e23          	sw	a5,60(sp)
    b488:	00068413          	mv	s0,a3
    b48c:	a45ff06f          	j	aed0 <__subtf3+0x488>
    b490:	02012e23          	sw	zero,60(sp)
    b494:	02012c23          	sw	zero,56(sp)
    b498:	02012a23          	sw	zero,52(sp)
    b49c:	02012823          	sw	zero,48(sp)
    b4a0:	fe9ff06f          	j	b488 <__subtf3+0xa40>
    b4a4:	26b05863          	blez	a1,b714 <__subtf3+0xccc>
    b4a8:	01412c03          	lw	s8,20(sp)
    b4ac:	01812b83          	lw	s7,24(sp)
    b4b0:	01c12a83          	lw	s5,28(sp)
    b4b4:	0a0b1263          	bnez	s6,b558 <__subtf3+0xb10>
    b4b8:	02412603          	lw	a2,36(sp)
    b4bc:	02812803          	lw	a6,40(sp)
    b4c0:	02c12783          	lw	a5,44(sp)
    b4c4:	010666b3          	or	a3,a2,a6
    b4c8:	00f6e6b3          	or	a3,a3,a5
    b4cc:	0096e6b3          	or	a3,a3,s1
    b4d0:	f0068063          	beqz	a3,abd0 <__subtf3+0x188>
    b4d4:	fff58893          	addi	a7,a1,-1
    b4d8:	04089c63          	bnez	a7,b530 <__subtf3+0xae8>
    b4dc:	40990733          	sub	a4,s2,s1
    b4e0:	40cc06b3          	sub	a3,s8,a2
    b4e4:	00e935b3          	sltu	a1,s2,a4
    b4e8:	00dc3533          	sltu	a0,s8,a3
    b4ec:	40b686b3          	sub	a3,a3,a1
    b4f0:	00000593          	li	a1,0
    b4f4:	00e97663          	bgeu	s2,a4,b500 <__subtf3+0xab8>
    b4f8:	41860633          	sub	a2,a2,s8
    b4fc:	00163593          	seqz	a1,a2
    b500:	00a5e5b3          	or	a1,a1,a0
    b504:	410b8633          	sub	a2,s7,a6
    b508:	00cbb533          	sltu	a0,s7,a2
    b50c:	40b60633          	sub	a2,a2,a1
    b510:	00058663          	beqz	a1,b51c <__subtf3+0xad4>
    b514:	41780833          	sub	a6,a6,s7
    b518:	00183893          	seqz	a7,a6
    b51c:	40fa87b3          	sub	a5,s5,a5
    b520:	00a8e5b3          	or	a1,a7,a0
    b524:	40b787b3          	sub	a5,a5,a1
    b528:	00100413          	li	s0,1
    b52c:	1980006f          	j	b6c4 <__subtf3+0xc7c>
    b530:	000087b7          	lui	a5,0x8
    b534:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b538:	e8f58c63          	beq	a1,a5,abd0 <__subtf3+0x188>
    b53c:	07400793          	li	a5,116
    b540:	0517d063          	bge	a5,a7,b580 <__subtf3+0xb38>
    b544:	02012623          	sw	zero,44(sp)
    b548:	02012423          	sw	zero,40(sp)
    b54c:	02012223          	sw	zero,36(sp)
    b550:	00100793          	li	a5,1
    b554:	10c0006f          	j	b660 <__subtf3+0xc18>
    b558:	000087b7          	lui	a5,0x8
    b55c:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b560:	f0f40863          	beq	s0,a5,ac70 <__subtf3+0x228>
    b564:	02c12783          	lw	a5,44(sp)
    b568:	000806b7          	lui	a3,0x80
    b56c:	00d7e7b3          	or	a5,a5,a3
    b570:	02f12623          	sw	a5,44(sp)
    b574:	07400793          	li	a5,116
    b578:	fcb7c6e3          	blt	a5,a1,b544 <__subtf3+0xafc>
    b57c:	00058893          	mv	a7,a1
    b580:	4058d793          	srai	a5,a7,0x5
    b584:	00070613          	mv	a2,a4
    b588:	00000493          	li	s1,0
    b58c:	00000693          	li	a3,0
    b590:	04f69063          	bne	a3,a5,b5d0 <__subtf3+0xb88>
    b594:	01f8f893          	andi	a7,a7,31
    b598:	00279613          	slli	a2,a5,0x2
    b59c:	04089463          	bnez	a7,b5e4 <__subtf3+0xb9c>
    b5a0:	00300593          	li	a1,3
    b5a4:	00000693          	li	a3,0
    b5a8:	40f585b3          	sub	a1,a1,a5
    b5ac:	00c70833          	add	a6,a4,a2
    b5b0:	00082803          	lw	a6,0(a6)
    b5b4:	00168693          	addi	a3,a3,1 # 80001 <soln_cnt0+0x6f525>
    b5b8:	00470713          	addi	a4,a4,4
    b5bc:	ff072e23          	sw	a6,-4(a4)
    b5c0:	fed5d6e3          	bge	a1,a3,b5ac <__subtf3+0xb64>
    b5c4:	00400713          	li	a4,4
    b5c8:	40f707b3          	sub	a5,a4,a5
    b5cc:	06c0006f          	j	b638 <__subtf3+0xbf0>
    b5d0:	00062583          	lw	a1,0(a2)
    b5d4:	00168693          	addi	a3,a3,1
    b5d8:	00460613          	addi	a2,a2,4
    b5dc:	00b4e4b3          	or	s1,s1,a1
    b5e0:	fb1ff06f          	j	b590 <__subtf3+0xb48>
    b5e4:	04060693          	addi	a3,a2,64
    b5e8:	002686b3          	add	a3,a3,sp
    b5ec:	fe06a683          	lw	a3,-32(a3)
    b5f0:	02000813          	li	a6,32
    b5f4:	41180833          	sub	a6,a6,a7
    b5f8:	010696b3          	sll	a3,a3,a6
    b5fc:	00d4e4b3          	or	s1,s1,a3
    b600:	00300693          	li	a3,3
    b604:	00c50633          	add	a2,a0,a2
    b608:	00000313          	li	t1,0
    b60c:	40f686b3          	sub	a3,a3,a5
    b610:	00460613          	addi	a2,a2,4
    b614:	0cd34e63          	blt	t1,a3,b6f0 <__subtf3+0xca8>
    b618:	00400713          	li	a4,4
    b61c:	00269693          	slli	a3,a3,0x2
    b620:	40f707b3          	sub	a5,a4,a5
    b624:	04068713          	addi	a4,a3,64
    b628:	002706b3          	add	a3,a4,sp
    b62c:	02c12703          	lw	a4,44(sp)
    b630:	01175733          	srl	a4,a4,a7
    b634:	fee6a023          	sw	a4,-32(a3)
    b638:	00400613          	li	a2,4
    b63c:	40f60633          	sub	a2,a2,a5
    b640:	00279793          	slli	a5,a5,0x2
    b644:	00f50533          	add	a0,a0,a5
    b648:	00261613          	slli	a2,a2,0x2
    b64c:	00000593          	li	a1,0
    b650:	789000ef          	jal	ra,c5d8 <memset>
    b654:	02012703          	lw	a4,32(sp)
    b658:	009037b3          	snez	a5,s1
    b65c:	00f767b3          	or	a5,a4,a5
    b660:	02f12023          	sw	a5,32(sp)
    b664:	02012703          	lw	a4,32(sp)
    b668:	02412603          	lw	a2,36(sp)
    b66c:	40e90733          	sub	a4,s2,a4
    b670:	40cc06b3          	sub	a3,s8,a2
    b674:	00e937b3          	sltu	a5,s2,a4
    b678:	00dc35b3          	sltu	a1,s8,a3
    b67c:	40f686b3          	sub	a3,a3,a5
    b680:	00000793          	li	a5,0
    b684:	00e97663          	bgeu	s2,a4,b690 <__subtf3+0xc48>
    b688:	41860633          	sub	a2,a2,s8
    b68c:	00163793          	seqz	a5,a2
    b690:	02812503          	lw	a0,40(sp)
    b694:	00b7e7b3          	or	a5,a5,a1
    b698:	00000593          	li	a1,0
    b69c:	40ab8633          	sub	a2,s7,a0
    b6a0:	00cbb833          	sltu	a6,s7,a2
    b6a4:	40f60633          	sub	a2,a2,a5
    b6a8:	00078663          	beqz	a5,b6b4 <__subtf3+0xc6c>
    b6ac:	41750533          	sub	a0,a0,s7
    b6b0:	00153593          	seqz	a1,a0
    b6b4:	02c12783          	lw	a5,44(sp)
    b6b8:	0105e5b3          	or	a1,a1,a6
    b6bc:	40fa87b3          	sub	a5,s5,a5
    b6c0:	40b787b3          	sub	a5,a5,a1
    b6c4:	02e12823          	sw	a4,48(sp)
    b6c8:	00080737          	lui	a4,0x80
    b6cc:	02d12a23          	sw	a3,52(sp)
    b6d0:	02f12e23          	sw	a5,60(sp)
    b6d4:	02c12c23          	sw	a2,56(sp)
    b6d8:	00e7f6b3          	and	a3,a5,a4
    b6dc:	fe068a63          	beqz	a3,aed0 <__subtf3+0x488>
    b6e0:	fff70713          	addi	a4,a4,-1 # 7ffff <soln_cnt0+0x6f523>
    b6e4:	00e7f7b3          	and	a5,a5,a4
    b6e8:	02f12e23          	sw	a5,60(sp)
    b6ec:	5ac0006f          	j	bc98 <__subtf3+0x1250>
    b6f0:	ffc62583          	lw	a1,-4(a2)
    b6f4:	00062e03          	lw	t3,0(a2)
    b6f8:	00130313          	addi	t1,t1,1
    b6fc:	0115d5b3          	srl	a1,a1,a7
    b700:	010e1e33          	sll	t3,t3,a6
    b704:	01c5e5b3          	or	a1,a1,t3
    b708:	00b72023          	sw	a1,0(a4)
    b70c:	00470713          	addi	a4,a4,4
    b710:	f01ff06f          	j	b610 <__subtf3+0xbc8>
    b714:	02412a83          	lw	s5,36(sp)
    b718:	02812c03          	lw	s8,40(sp)
    b71c:	02c12c83          	lw	s9,44(sp)
    b720:	2c058063          	beqz	a1,b9e0 <__subtf3+0xf98>
    b724:	408b0733          	sub	a4,s6,s0
    b728:	0a041a63          	bnez	s0,b7dc <__subtf3+0xd94>
    b72c:	01412603          	lw	a2,20(sp)
    b730:	01812583          	lw	a1,24(sp)
    b734:	01c12783          	lw	a5,28(sp)
    b738:	00b66533          	or	a0,a2,a1
    b73c:	00f56533          	or	a0,a0,a5
    b740:	01256533          	or	a0,a0,s2
    b744:	02051063          	bnez	a0,b764 <__subtf3+0xd1c>
    b748:	02912823          	sw	s1,48(sp)
    b74c:	03512a23          	sw	s5,52(sp)
    b750:	03812c23          	sw	s8,56(sp)
    b754:	03912e23          	sw	s9,60(sp)
    b758:	00070413          	mv	s0,a4
    b75c:	000b8993          	mv	s3,s7
    b760:	f70ff06f          	j	aed0 <__subtf3+0x488>
    b764:	fff70893          	addi	a7,a4,-1
    b768:	04089c63          	bnez	a7,b7c0 <__subtf3+0xd78>
    b76c:	41248733          	sub	a4,s1,s2
    b770:	40ca86b3          	sub	a3,s5,a2
    b774:	00e4b533          	sltu	a0,s1,a4
    b778:	00dab833          	sltu	a6,s5,a3
    b77c:	40a686b3          	sub	a3,a3,a0
    b780:	00000513          	li	a0,0
    b784:	00e4f663          	bgeu	s1,a4,b790 <__subtf3+0xd48>
    b788:	41560633          	sub	a2,a2,s5
    b78c:	00163513          	seqz	a0,a2
    b790:	01056533          	or	a0,a0,a6
    b794:	40bc0633          	sub	a2,s8,a1
    b798:	00cc3833          	sltu	a6,s8,a2
    b79c:	40a60633          	sub	a2,a2,a0
    b7a0:	00050663          	beqz	a0,b7ac <__subtf3+0xd64>
    b7a4:	418585b3          	sub	a1,a1,s8
    b7a8:	0015b893          	seqz	a7,a1
    b7ac:	40fc87b3          	sub	a5,s9,a5
    b7b0:	0108e5b3          	or	a1,a7,a6
    b7b4:	40b787b3          	sub	a5,a5,a1
    b7b8:	000b8993          	mv	s3,s7
    b7bc:	d6dff06f          	j	b528 <__subtf3+0xae0>
    b7c0:	000087b7          	lui	a5,0x8
    b7c4:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b7c8:	f8f700e3          	beq	a4,a5,b748 <__subtf3+0xd00>
    b7cc:	07400793          	li	a5,116
    b7d0:	1f17ce63          	blt	a5,a7,b9cc <__subtf3+0xf84>
    b7d4:	00088713          	mv	a4,a7
    b7d8:	0400006f          	j	b818 <__subtf3+0xdd0>
    b7dc:	000087b7          	lui	a5,0x8
    b7e0:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    b7e4:	00fb1e63          	bne	s6,a5,b800 <__subtf3+0xdb8>
    b7e8:	02912823          	sw	s1,48(sp)
    b7ec:	03512a23          	sw	s5,52(sp)
    b7f0:	03812c23          	sw	s8,56(sp)
    b7f4:	03912e23          	sw	s9,60(sp)
    b7f8:	000b0413          	mv	s0,s6
    b7fc:	f61ff06f          	j	b75c <__subtf3+0xd14>
    b800:	01c12783          	lw	a5,28(sp)
    b804:	00080637          	lui	a2,0x80
    b808:	00c7e7b3          	or	a5,a5,a2
    b80c:	00f12e23          	sw	a5,28(sp)
    b810:	07400793          	li	a5,116
    b814:	1ae7cc63          	blt	a5,a4,b9cc <__subtf3+0xf84>
    b818:	41f75793          	srai	a5,a4,0x1f
    b81c:	01f7f793          	andi	a5,a5,31
    b820:	00e787b3          	add	a5,a5,a4
    b824:	4057d793          	srai	a5,a5,0x5
    b828:	00068593          	mv	a1,a3
    b82c:	00000413          	li	s0,0
    b830:	00000613          	li	a2,0
    b834:	04f64663          	blt	a2,a5,b880 <__subtf3+0xe38>
    b838:	00078593          	mv	a1,a5
    b83c:	0007d463          	bgez	a5,b844 <__subtf3+0xdfc>
    b840:	00000593          	li	a1,0
    b844:	01f77893          	andi	a7,a4,31
    b848:	00279613          	slli	a2,a5,0x2
    b84c:	04089463          	bnez	a7,b894 <__subtf3+0xe4c>
    b850:	00300593          	li	a1,3
    b854:	00000713          	li	a4,0
    b858:	40f585b3          	sub	a1,a1,a5
    b85c:	00c68533          	add	a0,a3,a2
    b860:	00052503          	lw	a0,0(a0)
    b864:	00170713          	addi	a4,a4,1
    b868:	00468693          	addi	a3,a3,4
    b86c:	fea6ae23          	sw	a0,-4(a3)
    b870:	fee5d6e3          	bge	a1,a4,b85c <__subtf3+0xe14>
    b874:	00400713          	li	a4,4
    b878:	40f707b3          	sub	a5,a4,a5
    b87c:	08c0006f          	j	b908 <__subtf3+0xec0>
    b880:	0005a503          	lw	a0,0(a1)
    b884:	00160613          	addi	a2,a2,1 # 80001 <soln_cnt0+0x6f525>
    b888:	00458593          	addi	a1,a1,4
    b88c:	00a46433          	or	s0,s0,a0
    b890:	fa5ff06f          	j	b834 <__subtf3+0xdec>
    b894:	80000537          	lui	a0,0x80000
    b898:	01f50513          	addi	a0,a0,31 # 8000001f <soln_cnt0+0x7ffef543>
    b89c:	00a77733          	and	a4,a4,a0
    b8a0:	00075863          	bgez	a4,b8b0 <__subtf3+0xe68>
    b8a4:	fff70713          	addi	a4,a4,-1
    b8a8:	fe076713          	ori	a4,a4,-32
    b8ac:	00170713          	addi	a4,a4,1
    b8b0:	00259593          	slli	a1,a1,0x2
    b8b4:	02000513          	li	a0,32
    b8b8:	40e50533          	sub	a0,a0,a4
    b8bc:	04058713          	addi	a4,a1,64
    b8c0:	002705b3          	add	a1,a4,sp
    b8c4:	fd05a703          	lw	a4,-48(a1)
    b8c8:	00c80633          	add	a2,a6,a2
    b8cc:	00000313          	li	t1,0
    b8d0:	00a71733          	sll	a4,a4,a0
    b8d4:	00e46433          	or	s0,s0,a4
    b8d8:	00300713          	li	a4,3
    b8dc:	40f70733          	sub	a4,a4,a5
    b8e0:	00460613          	addi	a2,a2,4
    b8e4:	0ce34263          	blt	t1,a4,b9a8 <__subtf3+0xf60>
    b8e8:	00400693          	li	a3,4
    b8ec:	40f687b3          	sub	a5,a3,a5
    b8f0:	01c12683          	lw	a3,28(sp)
    b8f4:	00271713          	slli	a4,a4,0x2
    b8f8:	04070713          	addi	a4,a4,64
    b8fc:	00270733          	add	a4,a4,sp
    b900:	0116d6b3          	srl	a3,a3,a7
    b904:	fcd72823          	sw	a3,-48(a4)
    b908:	00400713          	li	a4,4
    b90c:	00000613          	li	a2,0
    b910:	00f74663          	blt	a4,a5,b91c <__subtf3+0xed4>
    b914:	40f70733          	sub	a4,a4,a5
    b918:	00271613          	slli	a2,a4,0x2
    b91c:	00279793          	slli	a5,a5,0x2
    b920:	00f80533          	add	a0,a6,a5
    b924:	00000593          	li	a1,0
    b928:	4b1000ef          	jal	ra,c5d8 <memset>
    b92c:	01012703          	lw	a4,16(sp)
    b930:	008037b3          	snez	a5,s0
    b934:	00f767b3          	or	a5,a4,a5
    b938:	00f12823          	sw	a5,16(sp)
    b93c:	01012703          	lw	a4,16(sp)
    b940:	01412603          	lw	a2,20(sp)
    b944:	40e48733          	sub	a4,s1,a4
    b948:	40ca86b3          	sub	a3,s5,a2
    b94c:	00e4b7b3          	sltu	a5,s1,a4
    b950:	00dab5b3          	sltu	a1,s5,a3
    b954:	40f686b3          	sub	a3,a3,a5
    b958:	00000793          	li	a5,0
    b95c:	00e4f663          	bgeu	s1,a4,b968 <__subtf3+0xf20>
    b960:	41560633          	sub	a2,a2,s5
    b964:	00163793          	seqz	a5,a2
    b968:	01812503          	lw	a0,24(sp)
    b96c:	00b7e7b3          	or	a5,a5,a1
    b970:	00000593          	li	a1,0
    b974:	40ac0633          	sub	a2,s8,a0
    b978:	00cc3833          	sltu	a6,s8,a2
    b97c:	40f60633          	sub	a2,a2,a5
    b980:	00078663          	beqz	a5,b98c <__subtf3+0xf44>
    b984:	41850533          	sub	a0,a0,s8
    b988:	00153593          	seqz	a1,a0
    b98c:	01c12783          	lw	a5,28(sp)
    b990:	0105e5b3          	or	a1,a1,a6
    b994:	000b0413          	mv	s0,s6
    b998:	40fc87b3          	sub	a5,s9,a5
    b99c:	40b787b3          	sub	a5,a5,a1
    b9a0:	000b8993          	mv	s3,s7
    b9a4:	d21ff06f          	j	b6c4 <__subtf3+0xc7c>
    b9a8:	ffc62583          	lw	a1,-4(a2)
    b9ac:	00062e03          	lw	t3,0(a2)
    b9b0:	00130313          	addi	t1,t1,1
    b9b4:	0115d5b3          	srl	a1,a1,a7
    b9b8:	00ae1e33          	sll	t3,t3,a0
    b9bc:	01c5e5b3          	or	a1,a1,t3
    b9c0:	00b6a023          	sw	a1,0(a3)
    b9c4:	00468693          	addi	a3,a3,4
    b9c8:	f19ff06f          	j	b8e0 <__subtf3+0xe98>
    b9cc:	00012e23          	sw	zero,28(sp)
    b9d0:	00012c23          	sw	zero,24(sp)
    b9d4:	00012a23          	sw	zero,20(sp)
    b9d8:	00100793          	li	a5,1
    b9dc:	f5dff06f          	j	b938 <__subtf3+0xef0>
    b9e0:	00008537          	lui	a0,0x8
    b9e4:	ffe50713          	addi	a4,a0,-2 # 7ffe <__addtf3+0xe62>
    b9e8:	00140793          	addi	a5,s0,1
    b9ec:	00e7f7b3          	and	a5,a5,a4
    b9f0:	01812683          	lw	a3,24(sp)
    b9f4:	01412703          	lw	a4,20(sp)
    b9f8:	01c12603          	lw	a2,28(sp)
    b9fc:	1e079063          	bnez	a5,bbdc <__subtf3+0x1194>
    ba00:	018ae7b3          	or	a5,s5,s8
    ba04:	00d765b3          	or	a1,a4,a3
    ba08:	0197e7b3          	or	a5,a5,s9
    ba0c:	00c5e5b3          	or	a1,a1,a2
    ba10:	0097e7b3          	or	a5,a5,s1
    ba14:	0125e5b3          	or	a1,a1,s2
    ba18:	10041a63          	bnez	s0,bb2c <__subtf3+0x10e4>
    ba1c:	02059463          	bnez	a1,ba44 <__subtf3+0xffc>
    ba20:	02912823          	sw	s1,48(sp)
    ba24:	03512a23          	sw	s5,52(sp)
    ba28:	03812c23          	sw	s8,56(sp)
    ba2c:	03912e23          	sw	s9,60(sp)
    ba30:	000b8993          	mv	s3,s7
    ba34:	c8079e63          	bnez	a5,aed0 <__subtf3+0x488>
    ba38:	00000413          	li	s0,0
    ba3c:	00000993          	li	s3,0
    ba40:	c90ff06f          	j	aed0 <__subtf3+0x488>
    ba44:	00079c63          	bnez	a5,ba5c <__subtf3+0x1014>
    ba48:	03212823          	sw	s2,48(sp)
    ba4c:	02e12a23          	sw	a4,52(sp)
    ba50:	02d12c23          	sw	a3,56(sp)
    ba54:	02c12e23          	sw	a2,60(sp)
    ba58:	c78ff06f          	j	aed0 <__subtf3+0x488>
    ba5c:	409907b3          	sub	a5,s2,s1
    ba60:	41570333          	sub	t1,a4,s5
    ba64:	00f93533          	sltu	a0,s2,a5
    ba68:	00673833          	sltu	a6,a4,t1
    ba6c:	40a30533          	sub	a0,t1,a0
    ba70:	00000593          	li	a1,0
    ba74:	00f97463          	bgeu	s2,a5,ba7c <__subtf3+0x1034>
    ba78:	00133593          	seqz	a1,t1
    ba7c:	0105e5b3          	or	a1,a1,a6
    ba80:	41868833          	sub	a6,a3,s8
    ba84:	0106beb3          	sltu	t4,a3,a6
    ba88:	40b80e33          	sub	t3,a6,a1
    ba8c:	00000893          	li	a7,0
    ba90:	00058463          	beqz	a1,ba98 <__subtf3+0x1050>
    ba94:	00183893          	seqz	a7,a6
    ba98:	01d8e8b3          	or	a7,a7,t4
    ba9c:	419605b3          	sub	a1,a2,s9
    baa0:	411585b3          	sub	a1,a1,a7
    baa4:	000808b7          	lui	a7,0x80
    baa8:	02b12e23          	sw	a1,60(sp)
    baac:	03c12c23          	sw	t3,56(sp)
    bab0:	02a12a23          	sw	a0,52(sp)
    bab4:	02f12823          	sw	a5,48(sp)
    bab8:	0115f8b3          	and	a7,a1,a7
    babc:	06088063          	beqz	a7,bb1c <__subtf3+0x10d4>
    bac0:	41248933          	sub	s2,s1,s2
    bac4:	40ea8733          	sub	a4,s5,a4
    bac8:	0124b7b3          	sltu	a5,s1,s2
    bacc:	00eabab3          	sltu	s5,s5,a4
    bad0:	40f70733          	sub	a4,a4,a5
    bad4:	00000793          	li	a5,0
    bad8:	0124f463          	bgeu	s1,s2,bae0 <__subtf3+0x1098>
    badc:	00133793          	seqz	a5,t1
    bae0:	0157eab3          	or	s5,a5,s5
    bae4:	40dc06b3          	sub	a3,s8,a3
    bae8:	00dc3c33          	sltu	s8,s8,a3
    baec:	00000793          	li	a5,0
    baf0:	415686b3          	sub	a3,a3,s5
    baf4:	000a8463          	beqz	s5,bafc <__subtf3+0x10b4>
    baf8:	00183793          	seqz	a5,a6
    bafc:	40cc8633          	sub	a2,s9,a2
    bb00:	0187e7b3          	or	a5,a5,s8
    bb04:	40f60633          	sub	a2,a2,a5
    bb08:	02c12e23          	sw	a2,60(sp)
    bb0c:	02d12c23          	sw	a3,56(sp)
    bb10:	02e12a23          	sw	a4,52(sp)
    bb14:	03212823          	sw	s2,48(sp)
    bb18:	c45ff06f          	j	b75c <__subtf3+0xd14>
    bb1c:	00a7e7b3          	or	a5,a5,a0
    bb20:	01c7e7b3          	or	a5,a5,t3
    bb24:	00b7e7b3          	or	a5,a5,a1
    bb28:	f0dff06f          	j	ba34 <__subtf3+0xfec>
    bb2c:	03010813          	addi	a6,sp,48
    bb30:	04059e63          	bnez	a1,bb8c <__subtf3+0x1144>
    bb34:	02079e63          	bnez	a5,bb70 <__subtf3+0x1128>
    bb38:	02a12e23          	sw	a0,60(sp)
    bb3c:	02012c23          	sw	zero,56(sp)
    bb40:	02012a23          	sw	zero,52(sp)
    bb44:	02012823          	sw	zero,48(sp)
    bb48:	03c10793          	addi	a5,sp,60
    bb4c:	0007a703          	lw	a4,0(a5)
    bb50:	ffc7a683          	lw	a3,-4(a5)
    bb54:	ffc78793          	addi	a5,a5,-4
    bb58:	00371713          	slli	a4,a4,0x3
    bb5c:	01d6d693          	srli	a3,a3,0x1d
    bb60:	00d76733          	or	a4,a4,a3
    bb64:	00e7a223          	sw	a4,4(a5)
    bb68:	fef812e3          	bne	a6,a5,bb4c <__subtf3+0x1104>
    bb6c:	881ff06f          	j	b3ec <__subtf3+0x9a4>
    bb70:	02912823          	sw	s1,48(sp)
    bb74:	03512a23          	sw	s5,52(sp)
    bb78:	03812c23          	sw	s8,56(sp)
    bb7c:	03912e23          	sw	s9,60(sp)
    bb80:	000b8993          	mv	s3,s7
    bb84:	fff50413          	addi	s0,a0,-1
    bb88:	b48ff06f          	j	aed0 <__subtf3+0x488>
    bb8c:	00079c63          	bnez	a5,bba4 <__subtf3+0x115c>
    bb90:	03212823          	sw	s2,48(sp)
    bb94:	02e12a23          	sw	a4,52(sp)
    bb98:	02d12c23          	sw	a3,56(sp)
    bb9c:	02c12e23          	sw	a2,60(sp)
    bba0:	fe5ff06f          	j	bb84 <__subtf3+0x113c>
    bba4:	02a12e23          	sw	a0,60(sp)
    bba8:	02012c23          	sw	zero,56(sp)
    bbac:	02012a23          	sw	zero,52(sp)
    bbb0:	02012823          	sw	zero,48(sp)
    bbb4:	03c10793          	addi	a5,sp,60
    bbb8:	0007a703          	lw	a4,0(a5)
    bbbc:	ffc7a683          	lw	a3,-4(a5)
    bbc0:	ffc78793          	addi	a5,a5,-4
    bbc4:	00371713          	slli	a4,a4,0x3
    bbc8:	01d6d693          	srli	a3,a3,0x1d
    bbcc:	00d76733          	or	a4,a4,a3
    bbd0:	00e7a223          	sw	a4,4(a5)
    bbd4:	fef812e3          	bne	a6,a5,bbb8 <__subtf3+0x1170>
    bbd8:	815ff06f          	j	b3ec <__subtf3+0x9a4>
    bbdc:	409907b3          	sub	a5,s2,s1
    bbe0:	41570e33          	sub	t3,a4,s5
    bbe4:	00f93833          	sltu	a6,s2,a5
    bbe8:	01c738b3          	sltu	a7,a4,t3
    bbec:	410e0833          	sub	a6,t3,a6
    bbf0:	00000513          	li	a0,0
    bbf4:	00f97463          	bgeu	s2,a5,bbfc <__subtf3+0x11b4>
    bbf8:	001e3513          	seqz	a0,t3
    bbfc:	01156533          	or	a0,a0,a7
    bc00:	418688b3          	sub	a7,a3,s8
    bc04:	0116bf33          	sltu	t5,a3,a7
    bc08:	40a88eb3          	sub	t4,a7,a0
    bc0c:	00000313          	li	t1,0
    bc10:	00050463          	beqz	a0,bc18 <__subtf3+0x11d0>
    bc14:	0018b313          	seqz	t1,a7
    bc18:	01e36333          	or	t1,t1,t5
    bc1c:	41960533          	sub	a0,a2,s9
    bc20:	40650533          	sub	a0,a0,t1
    bc24:	00080337          	lui	t1,0x80
    bc28:	02a12e23          	sw	a0,60(sp)
    bc2c:	03d12c23          	sw	t4,56(sp)
    bc30:	03012a23          	sw	a6,52(sp)
    bc34:	02f12823          	sw	a5,48(sp)
    bc38:	00657333          	and	t1,a0,t1
    bc3c:	16030663          	beqz	t1,bda8 <__subtf3+0x1360>
    bc40:	41248933          	sub	s2,s1,s2
    bc44:	40ea8733          	sub	a4,s5,a4
    bc48:	0124b7b3          	sltu	a5,s1,s2
    bc4c:	00eabab3          	sltu	s5,s5,a4
    bc50:	40f70733          	sub	a4,a4,a5
    bc54:	00000793          	li	a5,0
    bc58:	0124f463          	bgeu	s1,s2,bc60 <__subtf3+0x1218>
    bc5c:	001e3793          	seqz	a5,t3
    bc60:	40dc06b3          	sub	a3,s8,a3
    bc64:	0157eab3          	or	s5,a5,s5
    bc68:	00dc3c33          	sltu	s8,s8,a3
    bc6c:	415686b3          	sub	a3,a3,s5
    bc70:	000a8463          	beqz	s5,bc78 <__subtf3+0x1230>
    bc74:	0018b593          	seqz	a1,a7
    bc78:	40cc8633          	sub	a2,s9,a2
    bc7c:	0185e7b3          	or	a5,a1,s8
    bc80:	40f60633          	sub	a2,a2,a5
    bc84:	02c12e23          	sw	a2,60(sp)
    bc88:	02d12c23          	sw	a3,56(sp)
    bc8c:	02e12a23          	sw	a4,52(sp)
    bc90:	03212823          	sw	s2,48(sp)
    bc94:	000b8993          	mv	s3,s7
    bc98:	03c12503          	lw	a0,60(sp)
    bc9c:	12050063          	beqz	a0,bdbc <__subtf3+0x1374>
    bca0:	0e1000ef          	jal	ra,c580 <__clzsi2>
    bca4:	ff450493          	addi	s1,a0,-12
    bca8:	41f4d793          	srai	a5,s1,0x1f
    bcac:	01f7f793          	andi	a5,a5,31
    bcb0:	009787b3          	add	a5,a5,s1
    bcb4:	4057d793          	srai	a5,a5,0x5
    bcb8:	01f4f593          	andi	a1,s1,31
    bcbc:	40f006b3          	neg	a3,a5
    bcc0:	12058a63          	beqz	a1,bdf4 <__subtf3+0x13ac>
    bcc4:	80000737          	lui	a4,0x80000
    bcc8:	01f70713          	addi	a4,a4,31 # 8000001f <soln_cnt0+0x7ffef543>
    bccc:	00e4f733          	and	a4,s1,a4
    bcd0:	00075863          	bgez	a4,bce0 <__subtf3+0x1298>
    bcd4:	fff70713          	addi	a4,a4,-1
    bcd8:	fe076713          	ori	a4,a4,-32
    bcdc:	00170713          	addi	a4,a4,1
    bce0:	00269693          	slli	a3,a3,0x2
    bce4:	02000513          	li	a0,32
    bce8:	40e50533          	sub	a0,a0,a4
    bcec:	03010893          	addi	a7,sp,48
    bcf0:	00c68713          	addi	a4,a3,12
    bcf4:	00e88733          	add	a4,a7,a4
    bcf8:	40d006b3          	neg	a3,a3
    bcfc:	12e89263          	bne	a7,a4,be20 <__subtf3+0x13d8>
    bd00:	03012703          	lw	a4,48(sp)
    bd04:	fff78613          	addi	a2,a5,-1
    bd08:	00279793          	slli	a5,a5,0x2
    bd0c:	04078793          	addi	a5,a5,64
    bd10:	002787b3          	add	a5,a5,sp
    bd14:	00b71733          	sll	a4,a4,a1
    bd18:	fee7a823          	sw	a4,-16(a5)
    bd1c:	00160613          	addi	a2,a2,1
    bd20:	00261613          	slli	a2,a2,0x2
    bd24:	00000593          	li	a1,0
    bd28:	03010513          	addi	a0,sp,48
    bd2c:	0ad000ef          	jal	ra,c5d8 <memset>
    bd30:	2084c263          	blt	s1,s0,bf34 <__subtf3+0x14ec>
    bd34:	408487b3          	sub	a5,s1,s0
    bd38:	00178793          	addi	a5,a5,1
    bd3c:	41f7d513          	srai	a0,a5,0x1f
    bd40:	01f57513          	andi	a0,a0,31
    bd44:	00f50533          	add	a0,a0,a5
    bd48:	03010613          	addi	a2,sp,48
    bd4c:	40555513          	srai	a0,a0,0x5
    bd50:	00060693          	mv	a3,a2
    bd54:	00000413          	li	s0,0
    bd58:	00000713          	li	a4,0
    bd5c:	0ea74463          	blt	a4,a0,be44 <__subtf3+0x13fc>
    bd60:	00050693          	mv	a3,a0
    bd64:	00055463          	bgez	a0,bd6c <__subtf3+0x1324>
    bd68:	00000693          	li	a3,0
    bd6c:	01f7f813          	andi	a6,a5,31
    bd70:	00251713          	slli	a4,a0,0x2
    bd74:	0e081263          	bnez	a6,be58 <__subtf3+0x1410>
    bd78:	00300693          	li	a3,3
    bd7c:	00000793          	li	a5,0
    bd80:	40a686b3          	sub	a3,a3,a0
    bd84:	00e605b3          	add	a1,a2,a4
    bd88:	0005a583          	lw	a1,0(a1)
    bd8c:	00178793          	addi	a5,a5,1
    bd90:	00460613          	addi	a2,a2,4
    bd94:	feb62e23          	sw	a1,-4(a2)
    bd98:	fef6d6e3          	bge	a3,a5,bd84 <__subtf3+0x133c>
    bd9c:	00400793          	li	a5,4
    bda0:	40a78533          	sub	a0,a5,a0
    bda4:	12c0006f          	j	bed0 <__subtf3+0x1488>
    bda8:	0107e7b3          	or	a5,a5,a6
    bdac:	01d7e7b3          	or	a5,a5,t4
    bdb0:	00a7e7b3          	or	a5,a5,a0
    bdb4:	c80782e3          	beqz	a5,ba38 <__subtf3+0xff0>
    bdb8:	ee1ff06f          	j	bc98 <__subtf3+0x1250>
    bdbc:	03812503          	lw	a0,56(sp)
    bdc0:	00050863          	beqz	a0,bdd0 <__subtf3+0x1388>
    bdc4:	7bc000ef          	jal	ra,c580 <__clzsi2>
    bdc8:	02050513          	addi	a0,a0,32
    bdcc:	ed9ff06f          	j	bca4 <__subtf3+0x125c>
    bdd0:	03412503          	lw	a0,52(sp)
    bdd4:	00050863          	beqz	a0,bde4 <__subtf3+0x139c>
    bdd8:	7a8000ef          	jal	ra,c580 <__clzsi2>
    bddc:	04050513          	addi	a0,a0,64
    bde0:	ec5ff06f          	j	bca4 <__subtf3+0x125c>
    bde4:	03012503          	lw	a0,48(sp)
    bde8:	798000ef          	jal	ra,c580 <__clzsi2>
    bdec:	06050513          	addi	a0,a0,96
    bdf0:	eb5ff06f          	j	bca4 <__subtf3+0x125c>
    bdf4:	03c10713          	addi	a4,sp,60
    bdf8:	00269693          	slli	a3,a3,0x2
    bdfc:	00300613          	li	a2,3
    be00:	00d705b3          	add	a1,a4,a3
    be04:	0005a583          	lw	a1,0(a1)
    be08:	fff60613          	addi	a2,a2,-1
    be0c:	ffc70713          	addi	a4,a4,-4
    be10:	00b72223          	sw	a1,4(a4)
    be14:	fef656e3          	bge	a2,a5,be00 <__subtf3+0x13b8>
    be18:	fff78613          	addi	a2,a5,-1
    be1c:	f01ff06f          	j	bd1c <__subtf3+0x12d4>
    be20:	00072603          	lw	a2,0(a4)
    be24:	ffc72803          	lw	a6,-4(a4)
    be28:	00d70333          	add	t1,a4,a3
    be2c:	00b61633          	sll	a2,a2,a1
    be30:	00a85833          	srl	a6,a6,a0
    be34:	01066633          	or	a2,a2,a6
    be38:	00c32023          	sw	a2,0(t1) # 80000 <soln_cnt0+0x6f524>
    be3c:	ffc70713          	addi	a4,a4,-4
    be40:	ebdff06f          	j	bcfc <__subtf3+0x12b4>
    be44:	0006a583          	lw	a1,0(a3)
    be48:	00170713          	addi	a4,a4,1
    be4c:	00468693          	addi	a3,a3,4
    be50:	00b46433          	or	s0,s0,a1
    be54:	f09ff06f          	j	bd5c <__subtf3+0x1314>
    be58:	800005b7          	lui	a1,0x80000
    be5c:	01f58593          	addi	a1,a1,31 # 8000001f <soln_cnt0+0x7ffef543>
    be60:	00b7f7b3          	and	a5,a5,a1
    be64:	0007d863          	bgez	a5,be74 <__subtf3+0x142c>
    be68:	fff78793          	addi	a5,a5,-1
    be6c:	fe07e793          	ori	a5,a5,-32
    be70:	00178793          	addi	a5,a5,1
    be74:	00269693          	slli	a3,a3,0x2
    be78:	02000593          	li	a1,32
    be7c:	40f585b3          	sub	a1,a1,a5
    be80:	04068793          	addi	a5,a3,64
    be84:	002786b3          	add	a3,a5,sp
    be88:	ff06a783          	lw	a5,-16(a3)
    be8c:	00000893          	li	a7,0
    be90:	00b797b3          	sll	a5,a5,a1
    be94:	00f46433          	or	s0,s0,a5
    be98:	03010793          	addi	a5,sp,48
    be9c:	00e78733          	add	a4,a5,a4
    bea0:	00300793          	li	a5,3
    bea4:	40a787b3          	sub	a5,a5,a0
    bea8:	00470713          	addi	a4,a4,4
    beac:	06f8c263          	blt	a7,a5,bf10 <__subtf3+0x14c8>
    beb0:	00400713          	li	a4,4
    beb4:	40a70533          	sub	a0,a4,a0
    beb8:	03c12703          	lw	a4,60(sp)
    bebc:	00279793          	slli	a5,a5,0x2
    bec0:	04078793          	addi	a5,a5,64
    bec4:	002787b3          	add	a5,a5,sp
    bec8:	01075733          	srl	a4,a4,a6
    becc:	fee7a823          	sw	a4,-16(a5)
    bed0:	00400793          	li	a5,4
    bed4:	00000613          	li	a2,0
    bed8:	00a7c663          	blt	a5,a0,bee4 <__subtf3+0x149c>
    bedc:	40a787b3          	sub	a5,a5,a0
    bee0:	00279613          	slli	a2,a5,0x2
    bee4:	03010793          	addi	a5,sp,48
    bee8:	00251513          	slli	a0,a0,0x2
    beec:	00a78533          	add	a0,a5,a0
    bef0:	00000593          	li	a1,0
    bef4:	6e4000ef          	jal	ra,c5d8 <memset>
    bef8:	03012703          	lw	a4,48(sp)
    befc:	008037b3          	snez	a5,s0
    bf00:	00000413          	li	s0,0
    bf04:	00f767b3          	or	a5,a4,a5
    bf08:	02f12823          	sw	a5,48(sp)
    bf0c:	fc5fe06f          	j	aed0 <__subtf3+0x488>
    bf10:	ffc72683          	lw	a3,-4(a4)
    bf14:	00072303          	lw	t1,0(a4)
    bf18:	00188893          	addi	a7,a7,1 # 80001 <soln_cnt0+0x6f525>
    bf1c:	0106d6b3          	srl	a3,a3,a6
    bf20:	00b31333          	sll	t1,t1,a1
    bf24:	0066e6b3          	or	a3,a3,t1
    bf28:	00d62023          	sw	a3,0(a2)
    bf2c:	00460613          	addi	a2,a2,4
    bf30:	f79ff06f          	j	bea8 <__subtf3+0x1460>
    bf34:	03c12783          	lw	a5,60(sp)
    bf38:	fff80737          	lui	a4,0xfff80
    bf3c:	fff70713          	addi	a4,a4,-1 # fff7ffff <soln_cnt0+0xfff6f523>
    bf40:	00e7f7b3          	and	a5,a5,a4
    bf44:	40940433          	sub	s0,s0,s1
    bf48:	02f12e23          	sw	a5,60(sp)
    bf4c:	f85fe06f          	j	aed0 <__subtf3+0x488>
    bf50:	02012e23          	sw	zero,60(sp)
    bf54:	02012c23          	sw	zero,56(sp)
    bf58:	02012a23          	sw	zero,52(sp)
    bf5c:	02012823          	sw	zero,48(sp)
    bf60:	ff5fe06f          	j	af54 <__subtf3+0x50c>

0000bf64 <__extenddftf2>:
    bf64:	01465793          	srli	a5,a2,0x14
    bf68:	00c61713          	slli	a4,a2,0xc
    bf6c:	7ff7f793          	andi	a5,a5,2047
    bf70:	fc010113          	addi	sp,sp,-64
    bf74:	00c75713          	srli	a4,a4,0xc
    bf78:	00178693          	addi	a3,a5,1
    bf7c:	02812c23          	sw	s0,56(sp)
    bf80:	02912a23          	sw	s1,52(sp)
    bf84:	03212823          	sw	s2,48(sp)
    bf88:	02112e23          	sw	ra,60(sp)
    bf8c:	03312623          	sw	s3,44(sp)
    bf90:	00b12823          	sw	a1,16(sp)
    bf94:	00e12a23          	sw	a4,20(sp)
    bf98:	00012e23          	sw	zero,28(sp)
    bf9c:	00012c23          	sw	zero,24(sp)
    bfa0:	7fe6f693          	andi	a3,a3,2046
    bfa4:	00050913          	mv	s2,a0
    bfa8:	00058413          	mv	s0,a1
    bfac:	01f65493          	srli	s1,a2,0x1f
    bfb0:	08068463          	beqz	a3,c038 <__extenddftf2+0xd4>
    bfb4:	000046b7          	lui	a3,0x4
    bfb8:	c0068693          	addi	a3,a3,-1024 # 3c00 <__kernel_rem_pio2+0x318>
    bfbc:	00d787b3          	add	a5,a5,a3
    bfc0:	00475693          	srli	a3,a4,0x4
    bfc4:	00d12e23          	sw	a3,28(sp)
    bfc8:	01c71713          	slli	a4,a4,0x1c
    bfcc:	0045d693          	srli	a3,a1,0x4
    bfd0:	00d76733          	or	a4,a4,a3
    bfd4:	01c59413          	slli	s0,a1,0x1c
    bfd8:	00e12c23          	sw	a4,24(sp)
    bfdc:	00812a23          	sw	s0,20(sp)
    bfe0:	00012823          	sw	zero,16(sp)
    bfe4:	00f49493          	slli	s1,s1,0xf
    bfe8:	00f4e4b3          	or	s1,s1,a5
    bfec:	01012783          	lw	a5,16(sp)
    bff0:	01c12703          	lw	a4,28(sp)
    bff4:	00911723          	sh	s1,14(sp)
    bff8:	00f92023          	sw	a5,0(s2)
    bffc:	01412783          	lw	a5,20(sp)
    c000:	00e11623          	sh	a4,12(sp)
    c004:	03c12083          	lw	ra,60(sp)
    c008:	00f92223          	sw	a5,4(s2)
    c00c:	01812783          	lw	a5,24(sp)
    c010:	03812403          	lw	s0,56(sp)
    c014:	03412483          	lw	s1,52(sp)
    c018:	00f92423          	sw	a5,8(s2)
    c01c:	00c12783          	lw	a5,12(sp)
    c020:	02c12983          	lw	s3,44(sp)
    c024:	00090513          	mv	a0,s2
    c028:	00f92623          	sw	a5,12(s2)
    c02c:	03012903          	lw	s2,48(sp)
    c030:	04010113          	addi	sp,sp,64
    c034:	00008067          	ret
    c038:	00b76533          	or	a0,a4,a1
    c03c:	0e079263          	bnez	a5,c120 <__extenddftf2+0x1bc>
    c040:	fa0502e3          	beqz	a0,bfe4 <__extenddftf2+0x80>
    c044:	06070063          	beqz	a4,c0a4 <__extenddftf2+0x140>
    c048:	00070513          	mv	a0,a4
    c04c:	534000ef          	jal	ra,c580 <__clzsi2>
    c050:	00050993          	mv	s3,a0
    c054:	03198713          	addi	a4,s3,49
    c058:	40575793          	srai	a5,a4,0x5
    c05c:	01f77713          	andi	a4,a4,31
    c060:	40f006b3          	neg	a3,a5
    c064:	04070663          	beqz	a4,c0b0 <__extenddftf2+0x14c>
    c068:	00269693          	slli	a3,a3,0x2
    c06c:	00c68613          	addi	a2,a3,12
    c070:	02000513          	li	a0,32
    c074:	01010893          	addi	a7,sp,16
    c078:	40e50533          	sub	a0,a0,a4
    c07c:	00c88633          	add	a2,a7,a2
    c080:	40d006b3          	neg	a3,a3
    c084:	06c89c63          	bne	a7,a2,c0fc <__extenddftf2+0x198>
    c088:	fff78613          	addi	a2,a5,-1
    c08c:	00279793          	slli	a5,a5,0x2
    c090:	02078793          	addi	a5,a5,32
    c094:	002787b3          	add	a5,a5,sp
    c098:	00e41733          	sll	a4,s0,a4
    c09c:	fee7a823          	sw	a4,-16(a5)
    c0a0:	0380006f          	j	c0d8 <__extenddftf2+0x174>
    c0a4:	4dc000ef          	jal	ra,c580 <__clzsi2>
    c0a8:	02050993          	addi	s3,a0,32
    c0ac:	fa9ff06f          	j	c054 <__extenddftf2+0xf0>
    c0b0:	01c10713          	addi	a4,sp,28
    c0b4:	00269693          	slli	a3,a3,0x2
    c0b8:	00300613          	li	a2,3
    c0bc:	00d705b3          	add	a1,a4,a3
    c0c0:	0005a583          	lw	a1,0(a1)
    c0c4:	fff60613          	addi	a2,a2,-1
    c0c8:	ffc70713          	addi	a4,a4,-4
    c0cc:	00b72223          	sw	a1,4(a4)
    c0d0:	fef656e3          	bge	a2,a5,c0bc <__extenddftf2+0x158>
    c0d4:	fff78613          	addi	a2,a5,-1
    c0d8:	00160613          	addi	a2,a2,1
    c0dc:	00261613          	slli	a2,a2,0x2
    c0e0:	00000593          	li	a1,0
    c0e4:	01010513          	addi	a0,sp,16
    c0e8:	4f0000ef          	jal	ra,c5d8 <memset>
    c0ec:	000047b7          	lui	a5,0x4
    c0f0:	c0c78793          	addi	a5,a5,-1012 # 3c0c <__kernel_rem_pio2+0x324>
    c0f4:	413787b3          	sub	a5,a5,s3
    c0f8:	eedff06f          	j	bfe4 <__extenddftf2+0x80>
    c0fc:	00062583          	lw	a1,0(a2)
    c100:	ffc62803          	lw	a6,-4(a2)
    c104:	00d60333          	add	t1,a2,a3
    c108:	00e595b3          	sll	a1,a1,a4
    c10c:	00a85833          	srl	a6,a6,a0
    c110:	0105e5b3          	or	a1,a1,a6
    c114:	00b32023          	sw	a1,0(t1)
    c118:	ffc60613          	addi	a2,a2,-4
    c11c:	f69ff06f          	j	c084 <__extenddftf2+0x120>
    c120:	000087b7          	lui	a5,0x8
    c124:	02050863          	beqz	a0,c154 <__extenddftf2+0x1f0>
    c128:	01c71793          	slli	a5,a4,0x1c
    c12c:	0045d693          	srli	a3,a1,0x4
    c130:	00d7e7b3          	or	a5,a5,a3
    c134:	00f12c23          	sw	a5,24(sp)
    c138:	00475713          	srli	a4,a4,0x4
    c13c:	000087b7          	lui	a5,0x8
    c140:	01c59413          	slli	s0,a1,0x1c
    c144:	00f76733          	or	a4,a4,a5
    c148:	00812a23          	sw	s0,20(sp)
    c14c:	00012823          	sw	zero,16(sp)
    c150:	00e12e23          	sw	a4,28(sp)
    c154:	fff78793          	addi	a5,a5,-1 # 7fff <__addtf3+0xe63>
    c158:	e8dff06f          	j	bfe4 <__extenddftf2+0x80>

0000c15c <__trunctfdf2>:
    c15c:	fd010113          	addi	sp,sp,-48
    c160:	00852783          	lw	a5,8(a0)
    c164:	02912223          	sw	s1,36(sp)
    c168:	00c52483          	lw	s1,12(a0)
    c16c:	00052683          	lw	a3,0(a0)
    c170:	00452703          	lw	a4,4(a0)
    c174:	00f12423          	sw	a5,8(sp)
    c178:	00f12c23          	sw	a5,24(sp)
    c17c:	01049793          	slli	a5,s1,0x10
    c180:	0107d793          	srli	a5,a5,0x10
    c184:	00d12023          	sw	a3,0(sp)
    c188:	00d12823          	sw	a3,16(sp)
    c18c:	00149693          	slli	a3,s1,0x1
    c190:	00912623          	sw	s1,12(sp)
    c194:	00f12e23          	sw	a5,28(sp)
    c198:	02112623          	sw	ra,44(sp)
    c19c:	02812423          	sw	s0,40(sp)
    c1a0:	00e12223          	sw	a4,4(sp)
    c1a4:	00e12a23          	sw	a4,20(sp)
    c1a8:	0116d693          	srli	a3,a3,0x11
    c1ac:	01f4d493          	srli	s1,s1,0x1f
    c1b0:	01010513          	addi	a0,sp,16
    c1b4:	01c10793          	addi	a5,sp,28
    c1b8:	0007a703          	lw	a4,0(a5)
    c1bc:	ffc7a603          	lw	a2,-4(a5)
    c1c0:	ffc78793          	addi	a5,a5,-4
    c1c4:	00371713          	slli	a4,a4,0x3
    c1c8:	01d65613          	srli	a2,a2,0x1d
    c1cc:	00c76733          	or	a4,a4,a2
    c1d0:	00e7a223          	sw	a4,4(a5)
    c1d4:	fef512e3          	bne	a0,a5,c1b8 <__trunctfdf2+0x5c>
    c1d8:	01012583          	lw	a1,16(sp)
    c1dc:	00008637          	lui	a2,0x8
    c1e0:	00168713          	addi	a4,a3,1
    c1e4:	00359593          	slli	a1,a1,0x3
    c1e8:	ffe60613          	addi	a2,a2,-2 # 7ffe <__addtf3+0xe62>
    c1ec:	00b12823          	sw	a1,16(sp)
    c1f0:	00c77733          	and	a4,a4,a2
    c1f4:	1a070663          	beqz	a4,c3a0 <__trunctfdf2+0x244>
    c1f8:	ffffc737          	lui	a4,0xffffc
    c1fc:	40070713          	addi	a4,a4,1024 # ffffc400 <soln_cnt0+0xfffeb924>
    c200:	00e686b3          	add	a3,a3,a4
    c204:	7fe00713          	li	a4,2046
    c208:	1ed74863          	blt	a4,a3,c3f8 <__trunctfdf2+0x29c>
    c20c:	06d05463          	blez	a3,c274 <__trunctfdf2+0x118>
    c210:	01812603          	lw	a2,24(sp)
    c214:	01c12783          	lw	a5,28(sp)
    c218:	01412703          	lw	a4,20(sp)
    c21c:	01c65513          	srli	a0,a2,0x1c
    c220:	00479793          	slli	a5,a5,0x4
    c224:	00a7e7b3          	or	a5,a5,a0
    c228:	00f12a23          	sw	a5,20(sp)
    c22c:	00471793          	slli	a5,a4,0x4
    c230:	00b7e7b3          	or	a5,a5,a1
    c234:	01c75713          	srli	a4,a4,0x1c
    c238:	00461613          	slli	a2,a2,0x4
    c23c:	00f037b3          	snez	a5,a5
    c240:	00c76733          	or	a4,a4,a2
    c244:	00e7e7b3          	or	a5,a5,a4
    c248:	01412703          	lw	a4,20(sp)
    c24c:	0077f613          	andi	a2,a5,7
    c250:	1a060a63          	beqz	a2,c404 <__trunctfdf2+0x2a8>
    c254:	00f7f613          	andi	a2,a5,15
    c258:	00400593          	li	a1,4
    c25c:	1ab60463          	beq	a2,a1,c404 <__trunctfdf2+0x2a8>
    c260:	00478613          	addi	a2,a5,4
    c264:	00f637b3          	sltu	a5,a2,a5
    c268:	00f70733          	add	a4,a4,a5
    c26c:	00060793          	mv	a5,a2
    c270:	1940006f          	j	c404 <__trunctfdf2+0x2a8>
    c274:	fcc00713          	li	a4,-52
    c278:	00e6da63          	bge	a3,a4,c28c <__trunctfdf2+0x130>
    c27c:	00012a23          	sw	zero,20(sp)
    c280:	00100793          	li	a5,1
    c284:	00000693          	li	a3,0
    c288:	fc1ff06f          	j	c248 <__trunctfdf2+0xec>
    c28c:	01c12703          	lw	a4,28(sp)
    c290:	00080837          	lui	a6,0x80
    c294:	00050593          	mv	a1,a0
    c298:	00e86833          	or	a6,a6,a4
    c29c:	03d00713          	li	a4,61
    c2a0:	40d706b3          	sub	a3,a4,a3
    c2a4:	01012e23          	sw	a6,28(sp)
    c2a8:	4056d713          	srai	a4,a3,0x5
    c2ac:	00000613          	li	a2,0
    c2b0:	00000413          	li	s0,0
    c2b4:	0005a883          	lw	a7,0(a1)
    c2b8:	00160613          	addi	a2,a2,1
    c2bc:	00458593          	addi	a1,a1,4
    c2c0:	01146433          	or	s0,s0,a7
    c2c4:	fec718e3          	bne	a4,a2,c2b4 <__trunctfdf2+0x158>
    c2c8:	01f6f693          	andi	a3,a3,31
    c2cc:	00271593          	slli	a1,a4,0x2
    c2d0:	02069863          	bnez	a3,c300 <__trunctfdf2+0x1a4>
    c2d4:	00300613          	li	a2,3
    c2d8:	40e60633          	sub	a2,a2,a4
    c2dc:	00b78833          	add	a6,a5,a1
    c2e0:	00082803          	lw	a6,0(a6) # 80000 <soln_cnt0+0x6f524>
    c2e4:	00168693          	addi	a3,a3,1
    c2e8:	00478793          	addi	a5,a5,4
    c2ec:	ff07ae23          	sw	a6,-4(a5)
    c2f0:	fed656e3          	bge	a2,a3,c2dc <__trunctfdf2+0x180>
    c2f4:	00400793          	li	a5,4
    c2f8:	40e78733          	sub	a4,a5,a4
    c2fc:	0540006f          	j	c350 <__trunctfdf2+0x1f4>
    c300:	02058613          	addi	a2,a1,32
    c304:	00260633          	add	a2,a2,sp
    c308:	ff062603          	lw	a2,-16(a2)
    c30c:	02000313          	li	t1,32
    c310:	40d30333          	sub	t1,t1,a3
    c314:	00661633          	sll	a2,a2,t1
    c318:	00c46433          	or	s0,s0,a2
    c31c:	00300613          	li	a2,3
    c320:	00b505b3          	add	a1,a0,a1
    c324:	00000e13          	li	t3,0
    c328:	40e60633          	sub	a2,a2,a4
    c32c:	00458593          	addi	a1,a1,4
    c330:	04ce4663          	blt	t3,a2,c37c <__trunctfdf2+0x220>
    c334:	00400793          	li	a5,4
    c338:	00261613          	slli	a2,a2,0x2
    c33c:	40e78733          	sub	a4,a5,a4
    c340:	02060793          	addi	a5,a2,32
    c344:	00278633          	add	a2,a5,sp
    c348:	00d85833          	srl	a6,a6,a3
    c34c:	ff062823          	sw	a6,-16(a2)
    c350:	00400613          	li	a2,4
    c354:	40e60633          	sub	a2,a2,a4
    c358:	00271713          	slli	a4,a4,0x2
    c35c:	00e50533          	add	a0,a0,a4
    c360:	00261613          	slli	a2,a2,0x2
    c364:	00000593          	li	a1,0
    c368:	270000ef          	jal	ra,c5d8 <memset>
    c36c:	01012703          	lw	a4,16(sp)
    c370:	008037b3          	snez	a5,s0
    c374:	00e7e7b3          	or	a5,a5,a4
    c378:	f0dff06f          	j	c284 <__trunctfdf2+0x128>
    c37c:	ffc5a883          	lw	a7,-4(a1)
    c380:	0005ae83          	lw	t4,0(a1)
    c384:	001e0e13          	addi	t3,t3,1
    c388:	00d8d8b3          	srl	a7,a7,a3
    c38c:	006e9eb3          	sll	t4,t4,t1
    c390:	01d8e8b3          	or	a7,a7,t4
    c394:	0117a023          	sw	a7,0(a5)
    c398:	00478793          	addi	a5,a5,4
    c39c:	f91ff06f          	j	c32c <__trunctfdf2+0x1d0>
    c3a0:	01412603          	lw	a2,20(sp)
    c3a4:	01812703          	lw	a4,24(sp)
    c3a8:	01c12503          	lw	a0,28(sp)
    c3ac:	00c767b3          	or	a5,a4,a2
    c3b0:	00a7e7b3          	or	a5,a5,a0
    c3b4:	00b7e7b3          	or	a5,a5,a1
    c3b8:	00069863          	bnez	a3,c3c8 <__trunctfdf2+0x26c>
    c3bc:	00f037b3          	snez	a5,a5
    c3c0:	00000713          	li	a4,0
    c3c4:	e89ff06f          	j	c24c <__trunctfdf2+0xf0>
    c3c8:	0c078663          	beqz	a5,c494 <__trunctfdf2+0x338>
    c3cc:	00471793          	slli	a5,a4,0x4
    c3d0:	01c65613          	srli	a2,a2,0x1c
    c3d4:	01c75713          	srli	a4,a4,0x1c
    c3d8:	00451513          	slli	a0,a0,0x4
    c3dc:	004006b7          	lui	a3,0x400
    c3e0:	00f66633          	or	a2,a2,a5
    c3e4:	00a76733          	or	a4,a4,a0
    c3e8:	00d76733          	or	a4,a4,a3
    c3ec:	ff867793          	andi	a5,a2,-8
    c3f0:	7ff00693          	li	a3,2047
    c3f4:	e59ff06f          	j	c24c <__trunctfdf2+0xf0>
    c3f8:	00000713          	li	a4,0
    c3fc:	00000793          	li	a5,0
    c400:	7ff00693          	li	a3,2047
    c404:	00800637          	lui	a2,0x800
    c408:	00c77633          	and	a2,a4,a2
    c40c:	00060e63          	beqz	a2,c428 <__trunctfdf2+0x2cc>
    c410:	00168693          	addi	a3,a3,1 # 400001 <soln_cnt0+0x3ef525>
    c414:	7ff00613          	li	a2,2047
    c418:	08c68263          	beq	a3,a2,c49c <__trunctfdf2+0x340>
    c41c:	ff800637          	lui	a2,0xff800
    c420:	fff60613          	addi	a2,a2,-1 # ff7fffff <soln_cnt0+0xff7ef523>
    c424:	00c77733          	and	a4,a4,a2
    c428:	01d71613          	slli	a2,a4,0x1d
    c42c:	0037d793          	srli	a5,a5,0x3
    c430:	00f667b3          	or	a5,a2,a5
    c434:	7ff00613          	li	a2,2047
    c438:	00375713          	srli	a4,a4,0x3
    c43c:	00c69e63          	bne	a3,a2,c458 <__trunctfdf2+0x2fc>
    c440:	00e7e7b3          	or	a5,a5,a4
    c444:	00000713          	li	a4,0
    c448:	00078863          	beqz	a5,c458 <__trunctfdf2+0x2fc>
    c44c:	00080737          	lui	a4,0x80
    c450:	00000793          	li	a5,0
    c454:	00000493          	li	s1,0
    c458:	01469693          	slli	a3,a3,0x14
    c45c:	7ff00637          	lui	a2,0x7ff00
    c460:	00c71713          	slli	a4,a4,0xc
    c464:	02c12083          	lw	ra,44(sp)
    c468:	02812403          	lw	s0,40(sp)
    c46c:	00c75713          	srli	a4,a4,0xc
    c470:	00c6f6b3          	and	a3,a3,a2
    c474:	01f49493          	slli	s1,s1,0x1f
    c478:	00e6e6b3          	or	a3,a3,a4
    c47c:	0096e733          	or	a4,a3,s1
    c480:	00078513          	mv	a0,a5
    c484:	02412483          	lw	s1,36(sp)
    c488:	00070593          	mv	a1,a4
    c48c:	03010113          	addi	sp,sp,48
    c490:	00008067          	ret
    c494:	00000713          	li	a4,0
    c498:	f69ff06f          	j	c400 <__trunctfdf2+0x2a4>
    c49c:	00000713          	li	a4,0
    c4a0:	00000793          	li	a5,0
    c4a4:	f85ff06f          	j	c428 <__trunctfdf2+0x2cc>

0000c4a8 <__mulsi3>:
    c4a8:	00050613          	mv	a2,a0
    c4ac:	00000513          	li	a0,0
    c4b0:	0015f693          	andi	a3,a1,1
    c4b4:	00068463          	beqz	a3,c4bc <__mulsi3+0x14>
    c4b8:	00c50533          	add	a0,a0,a2
    c4bc:	0015d593          	srli	a1,a1,0x1
    c4c0:	00161613          	slli	a2,a2,0x1
    c4c4:	fe0596e3          	bnez	a1,c4b0 <__mulsi3+0x8>
    c4c8:	00008067          	ret

0000c4cc <__divsi3>:
    c4cc:	06054063          	bltz	a0,c52c <__umodsi3+0x10>
    c4d0:	0605c663          	bltz	a1,c53c <__umodsi3+0x20>

0000c4d4 <__udivsi3>:
    c4d4:	00058613          	mv	a2,a1
    c4d8:	00050593          	mv	a1,a0
    c4dc:	fff00513          	li	a0,-1
    c4e0:	02060c63          	beqz	a2,c518 <__udivsi3+0x44>
    c4e4:	00100693          	li	a3,1
    c4e8:	00b67a63          	bgeu	a2,a1,c4fc <__udivsi3+0x28>
    c4ec:	00c05863          	blez	a2,c4fc <__udivsi3+0x28>
    c4f0:	00161613          	slli	a2,a2,0x1
    c4f4:	00169693          	slli	a3,a3,0x1
    c4f8:	feb66ae3          	bltu	a2,a1,c4ec <__udivsi3+0x18>
    c4fc:	00000513          	li	a0,0
    c500:	00c5e663          	bltu	a1,a2,c50c <__udivsi3+0x38>
    c504:	40c585b3          	sub	a1,a1,a2
    c508:	00d56533          	or	a0,a0,a3
    c50c:	0016d693          	srli	a3,a3,0x1
    c510:	00165613          	srli	a2,a2,0x1
    c514:	fe0696e3          	bnez	a3,c500 <__udivsi3+0x2c>
    c518:	00008067          	ret

0000c51c <__umodsi3>:
    c51c:	00008293          	mv	t0,ra
    c520:	fb5ff0ef          	jal	ra,c4d4 <__udivsi3>
    c524:	00058513          	mv	a0,a1
    c528:	00028067          	jr	t0
    c52c:	40a00533          	neg	a0,a0
    c530:	00b04863          	bgtz	a1,c540 <__umodsi3+0x24>
    c534:	40b005b3          	neg	a1,a1
    c538:	f9dff06f          	j	c4d4 <__udivsi3>
    c53c:	40b005b3          	neg	a1,a1
    c540:	00008293          	mv	t0,ra
    c544:	f91ff0ef          	jal	ra,c4d4 <__udivsi3>
    c548:	40a00533          	neg	a0,a0
    c54c:	00028067          	jr	t0

0000c550 <__modsi3>:
    c550:	00008293          	mv	t0,ra
    c554:	0005ca63          	bltz	a1,c568 <__modsi3+0x18>
    c558:	00054c63          	bltz	a0,c570 <__modsi3+0x20>
    c55c:	f79ff0ef          	jal	ra,c4d4 <__udivsi3>
    c560:	00058513          	mv	a0,a1
    c564:	00028067          	jr	t0
    c568:	40b005b3          	neg	a1,a1
    c56c:	fe0558e3          	bgez	a0,c55c <__modsi3+0xc>
    c570:	40a00533          	neg	a0,a0
    c574:	f61ff0ef          	jal	ra,c4d4 <__udivsi3>
    c578:	40b00533          	neg	a0,a1
    c57c:	00028067          	jr	t0

0000c580 <__clzsi2>:
    c580:	000107b7          	lui	a5,0x10
    c584:	02f57a63          	bgeu	a0,a5,c5b8 <__clzsi2+0x38>
    c588:	10053793          	sltiu	a5,a0,256
    c58c:	0017c793          	xori	a5,a5,1
    c590:	00379793          	slli	a5,a5,0x3
    c594:	00010737          	lui	a4,0x10
    c598:	02000693          	li	a3,32
    c59c:	40f686b3          	sub	a3,a3,a5
    c5a0:	00f55533          	srl	a0,a0,a5
    c5a4:	6b070793          	addi	a5,a4,1712 # 106b0 <__clz_tab>
    c5a8:	00a787b3          	add	a5,a5,a0
    c5ac:	0007c503          	lbu	a0,0(a5) # 10000 <impure_data>
    c5b0:	40a68533          	sub	a0,a3,a0
    c5b4:	00008067          	ret
    c5b8:	01000737          	lui	a4,0x1000
    c5bc:	01000793          	li	a5,16
    c5c0:	fce56ae3          	bltu	a0,a4,c594 <__clzsi2+0x14>
    c5c4:	01800793          	li	a5,24
    c5c8:	fcdff06f          	j	c594 <__clzsi2+0x14>

0000c5cc <__errno>:
    c5cc:	000107b7          	lui	a5,0x10
    c5d0:	4287a503          	lw	a0,1064(a5) # 10428 <_impure_ptr>
    c5d4:	00008067          	ret

0000c5d8 <memset>:
    c5d8:	00f00313          	li	t1,15
    c5dc:	00050713          	mv	a4,a0
    c5e0:	02c37e63          	bgeu	t1,a2,c61c <memset+0x44>
    c5e4:	00f77793          	andi	a5,a4,15
    c5e8:	0a079063          	bnez	a5,c688 <memset+0xb0>
    c5ec:	08059263          	bnez	a1,c670 <memset+0x98>
    c5f0:	ff067693          	andi	a3,a2,-16
    c5f4:	00f67613          	andi	a2,a2,15
    c5f8:	00e686b3          	add	a3,a3,a4
    c5fc:	00b72023          	sw	a1,0(a4) # 1000000 <soln_cnt0+0xfef524>
    c600:	00b72223          	sw	a1,4(a4)
    c604:	00b72423          	sw	a1,8(a4)
    c608:	00b72623          	sw	a1,12(a4)
    c60c:	01070713          	addi	a4,a4,16
    c610:	fed766e3          	bltu	a4,a3,c5fc <memset+0x24>
    c614:	00061463          	bnez	a2,c61c <memset+0x44>
    c618:	00008067          	ret
    c61c:	40c306b3          	sub	a3,t1,a2
    c620:	00269693          	slli	a3,a3,0x2
    c624:	00000297          	auipc	t0,0x0
    c628:	005686b3          	add	a3,a3,t0
    c62c:	00c68067          	jr	12(a3)
    c630:	00b70723          	sb	a1,14(a4)
    c634:	00b706a3          	sb	a1,13(a4)
    c638:	00b70623          	sb	a1,12(a4)
    c63c:	00b705a3          	sb	a1,11(a4)
    c640:	00b70523          	sb	a1,10(a4)
    c644:	00b704a3          	sb	a1,9(a4)
    c648:	00b70423          	sb	a1,8(a4)
    c64c:	00b703a3          	sb	a1,7(a4)
    c650:	00b70323          	sb	a1,6(a4)
    c654:	00b702a3          	sb	a1,5(a4)
    c658:	00b70223          	sb	a1,4(a4)
    c65c:	00b701a3          	sb	a1,3(a4)
    c660:	00b70123          	sb	a1,2(a4)
    c664:	00b700a3          	sb	a1,1(a4)
    c668:	00b70023          	sb	a1,0(a4)
    c66c:	00008067          	ret
    c670:	0ff5f593          	zext.b	a1,a1
    c674:	00859693          	slli	a3,a1,0x8
    c678:	00d5e5b3          	or	a1,a1,a3
    c67c:	01059693          	slli	a3,a1,0x10
    c680:	00d5e5b3          	or	a1,a1,a3
    c684:	f6dff06f          	j	c5f0 <memset+0x18>
    c688:	00279693          	slli	a3,a5,0x2
    c68c:	00000297          	auipc	t0,0x0
    c690:	005686b3          	add	a3,a3,t0
    c694:	00008293          	mv	t0,ra
    c698:	fa0680e7          	jalr	-96(a3)
    c69c:	00028093          	mv	ra,t0
    c6a0:	ff078793          	addi	a5,a5,-16
    c6a4:	40f70733          	sub	a4,a4,a5
    c6a8:	00f60633          	add	a2,a2,a5
    c6ac:	f6c378e3          	bgeu	t1,a2,c61c <memset+0x44>
    c6b0:	f3dff06f          	j	c5ec <memset+0x14>

Disassembly of section .text.startup:

0000c6b4 <main>:
    c6b4:	fe010113          	addi	sp,sp,-32
    c6b8:	00112e23          	sw	ra,28(sp)
    c6bc:	a05f30ef          	jal	ra,c0 <initialise_board>
    c6c0:	fc9f30ef          	jal	ra,688 <initialise_benchmark>
    c6c4:	00100513          	li	a0,1
    c6c8:	fc5f30ef          	jal	ra,68c <warm_caches>
    c6cc:	9f9f30ef          	jal	ra,c4 <start_trigger>
    c6d0:	fd5f30ef          	jal	ra,6a4 <benchmark>
    c6d4:	00a12623          	sw	a0,12(sp)
    c6d8:	a19f30ef          	jal	ra,f0 <stop_trigger>
    c6dc:	00c12503          	lw	a0,12(sp)
    c6e0:	e3df30ef          	jal	ra,51c <verify_benchmark>
    c6e4:	00051a63          	bnez	a0,c6f8 <main+0x44>
    c6e8:	110007b7          	lui	a5,0x11000
    c6ec:	fff00713          	li	a4,-1
    c6f0:	00e7a823          	sw	a4,16(a5) # 11000010 <soln_cnt0+0x10fef534>
    c6f4:	00e7aa23          	sw	a4,20(a5)
    c6f8:	110007b7          	lui	a5,0x11000
    c6fc:	00100713          	li	a4,1
    c700:	08e7a023          	sw	a4,128(a5) # 11000080 <soln_cnt0+0x10fef5a4>
    c704:	0000006f          	j	c704 <main+0x50>
