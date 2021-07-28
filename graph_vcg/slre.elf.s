
slre.elf:     file format elf32-littleriscv


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
  84:	330010ef          	jal	ra,13b4 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <start_time+0x10fefe78>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <start_time+0x10fefe78>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <start_time+0x10fefef8>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <start_time+0xfe68>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000107b7          	lui	a5,0x10
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	18a7a423          	sw	a0,392(a5) # 10188 <start_time>
      e4:	18e7a623          	sw	a4,396(a5)
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
     114:	1887a583          	lw	a1,392(a5) # 10188 <start_time>
     118:	18c7a703          	lw	a4,396(a5)
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

00000150 <match_op>:
     150:	00054783          	lbu	a5,0(a0)
     154:	05c00713          	li	a4,92
     158:	08e78463          	beq	a5,a4,1e0 <match_op+0x90>
     15c:	02f76063          	bltu	a4,a5,17c <match_op+0x2c>
     160:	02400713          	li	a4,36
     164:	fff00513          	li	a0,-1
     168:	00e78863          	beq	a5,a4,178 <match_op+0x28>
     16c:	02e00713          	li	a4,46
     170:	00100513          	li	a0,1
     174:	00e79a63          	bne	a5,a4,188 <match_op+0x38>
     178:	00008067          	ret
     17c:	07c00713          	li	a4,124
     180:	ffc00513          	li	a0,-4
     184:	fee78ae3          	beq	a5,a4,178 <match_op+0x28>
     188:	00001737          	lui	a4,0x1
     18c:	00e60633          	add	a2,a2,a4
     190:	97062503          	lw	a0,-1680(a2)
     194:	0005c683          	lbu	a3,0(a1)
     198:	00157513          	andi	a0,a0,1
     19c:	12050663          	beqz	a0,2c8 <match_op+0x178>
     1a0:	00010737          	lui	a4,0x10
     1a4:	04170713          	addi	a4,a4,65 # 10041 <_ctype_+0x1>
     1a8:	00f70633          	add	a2,a4,a5
     1ac:	00064603          	lbu	a2,0(a2)
     1b0:	00100593          	li	a1,1
     1b4:	00367613          	andi	a2,a2,3
     1b8:	00b61463          	bne	a2,a1,1c0 <match_op+0x70>
     1bc:	02078793          	addi	a5,a5,32
     1c0:	00d70733          	add	a4,a4,a3
     1c4:	00074703          	lbu	a4,0(a4)
     1c8:	00100613          	li	a2,1
     1cc:	00377713          	andi	a4,a4,3
     1d0:	14c70263          	beq	a4,a2,314 <match_op+0x1c4>
     1d4:	fad782e3          	beq	a5,a3,178 <match_op+0x28>
     1d8:	fff00513          	li	a0,-1
     1dc:	00008067          	ret
     1e0:	00154783          	lbu	a5,1(a0)
     1e4:	07300713          	li	a4,115
     1e8:	0005c683          	lbu	a3,0(a1)
     1ec:	10e78463          	beq	a5,a4,2f4 <match_op+0x1a4>
     1f0:	02f76a63          	bltu	a4,a5,224 <match_op+0xd4>
     1f4:	05300713          	li	a4,83
     1f8:	0ce78e63          	beq	a5,a4,2d4 <match_op+0x184>
     1fc:	06400713          	li	a4,100
     200:	0ce79463          	bne	a5,a4,2c8 <match_op+0x178>
     204:	000107b7          	lui	a5,0x10
     208:	04178793          	addi	a5,a5,65 # 10041 <_ctype_+0x1>
     20c:	00f687b3          	add	a5,a3,a5
     210:	0007c783          	lbu	a5,0(a5)
     214:	00100513          	li	a0,1
     218:	0047f793          	andi	a5,a5,4
     21c:	fa078ee3          	beqz	a5,1d8 <match_op+0x88>
     220:	00008067          	ret
     224:	07800713          	li	a4,120
     228:	0ae79063          	bne	a5,a4,2c8 <match_op+0x178>
     22c:	00254603          	lbu	a2,2(a0)
     230:	00010737          	lui	a4,0x10
     234:	04170713          	addi	a4,a4,65 # 10041 <_ctype_+0x1>
     238:	00c707b3          	add	a5,a4,a2
     23c:	0007c783          	lbu	a5,0(a5)
     240:	00100813          	li	a6,1
     244:	00060593          	mv	a1,a2
     248:	0037f893          	andi	a7,a5,3
     24c:	01089c63          	bne	a7,a6,264 <match_op+0x114>
     250:	000107b7          	lui	a5,0x10
     254:	06178793          	addi	a5,a5,97 # 10061 <_ctype_+0x21>
     258:	00f60633          	add	a2,a2,a5
     25c:	00064783          	lbu	a5,0(a2)
     260:	02058593          	addi	a1,a1,32
     264:	0047f613          	andi	a2,a5,4
     268:	fa958793          	addi	a5,a1,-87
     26c:	00060463          	beqz	a2,274 <match_op+0x124>
     270:	fd058793          	addi	a5,a1,-48
     274:	00354603          	lbu	a2,3(a0)
     278:	00100513          	li	a0,1
     27c:	00479793          	slli	a5,a5,0x4
     280:	00c70733          	add	a4,a4,a2
     284:	00074703          	lbu	a4,0(a4)
     288:	00060593          	mv	a1,a2
     28c:	00377813          	andi	a6,a4,3
     290:	00a81c63          	bne	a6,a0,2a8 <match_op+0x158>
     294:	00010737          	lui	a4,0x10
     298:	06170713          	addi	a4,a4,97 # 10061 <_ctype_+0x21>
     29c:	00e60633          	add	a2,a2,a4
     2a0:	00064703          	lbu	a4,0(a2)
     2a4:	02058593          	addi	a1,a1,32
     2a8:	00477713          	andi	a4,a4,4
     2ac:	fa958613          	addi	a2,a1,-87
     2b0:	00070463          	beqz	a4,2b8 <match_op+0x168>
     2b4:	fd058613          	addi	a2,a1,-48
     2b8:	00c7e7b3          	or	a5,a5,a2
     2bc:	00100513          	li	a0,1
     2c0:	f0f69ce3          	bne	a3,a5,1d8 <match_op+0x88>
     2c4:	00008067          	ret
     2c8:	00100513          	li	a0,1
     2cc:	ead786e3          	beq	a5,a3,178 <match_op+0x28>
     2d0:	f09ff06f          	j	1d8 <match_op+0x88>
     2d4:	000107b7          	lui	a5,0x10
     2d8:	04178793          	addi	a5,a5,65 # 10041 <_ctype_+0x1>
     2dc:	00f687b3          	add	a5,a3,a5
     2e0:	0007c783          	lbu	a5,0(a5)
     2e4:	00100513          	li	a0,1
     2e8:	0087f793          	andi	a5,a5,8
     2ec:	ee0796e3          	bnez	a5,1d8 <match_op+0x88>
     2f0:	00008067          	ret
     2f4:	000107b7          	lui	a5,0x10
     2f8:	04178793          	addi	a5,a5,65 # 10041 <_ctype_+0x1>
     2fc:	00f687b3          	add	a5,a3,a5
     300:	0007c783          	lbu	a5,0(a5)
     304:	00100513          	li	a0,1
     308:	0087f793          	andi	a5,a5,8
     30c:	ec0786e3          	beqz	a5,1d8 <match_op+0x88>
     310:	00008067          	ret
     314:	02068693          	addi	a3,a3,32
     318:	e6d780e3          	beq	a5,a3,178 <match_op+0x28>
     31c:	ebdff06f          	j	1d8 <match_op+0x88>

00000320 <bar>:
     320:	f9010113          	addi	sp,sp,-112
     324:	06112623          	sw	ra,108(sp)
     328:	06812423          	sw	s0,104(sp)
     32c:	06912223          	sw	s1,100(sp)
     330:	07212023          	sw	s2,96(sp)
     334:	05312e23          	sw	s3,92(sp)
     338:	05412c23          	sw	s4,88(sp)
     33c:	05512a23          	sw	s5,84(sp)
     340:	05612823          	sw	s6,80(sp)
     344:	05712623          	sw	s7,76(sp)
     348:	05812423          	sw	s8,72(sp)
     34c:	05912223          	sw	s9,68(sp)
     350:	05a12023          	sw	s10,64(sp)
     354:	03b12e23          	sw	s11,60(sp)
     358:	00c12623          	sw	a2,12(sp)
     35c:	54b05a63          	blez	a1,8b0 <bar+0x590>
     360:	00068413          	mv	s0,a3
     364:	5406c663          	bltz	a3,8b0 <bar+0x590>
     368:	00001ab7          	lui	s5,0x1
     36c:	00078493          	mv	s1,a5
     370:	00010b37          	lui	s6,0x10
     374:	015707b3          	add	a5,a4,s5
     378:	00058d13          	mv	s10,a1
     37c:	00050913          	mv	s2,a0
     380:	00070993          	mv	s3,a4
     384:	00000a13          	li	s4,0
     388:	00000e93          	li	t4,0
     38c:	02d00b93          	li	s7,45
     390:	00f12823          	sw	a5,16(sp)
     394:	041b0b13          	addi	s6,s6,65 # 10041 <_ctype_+0x1>
     398:	01d90e33          	add	t3,s2,t4
     39c:	000e4703          	lbu	a4,0(t3)
     3a0:	02800793          	li	a5,40
     3a4:	0ef71263          	bne	a4,a5,488 <bar+0x168>
     3a8:	00148793          	addi	a5,s1,1
     3ac:	00479793          	slli	a5,a5,0x4
     3b0:	00f987b3          	add	a5,s3,a5
     3b4:	0047a803          	lw	a6,4(a5)
     3b8:	00280a93          	addi	s5,a6,2
     3bc:	4f505663          	blez	s5,8a8 <bar+0x588>
     3c0:	015e8c33          	add	s8,t4,s5
     3c4:	17ac5463          	bge	s8,s10,52c <bar+0x20c>
     3c8:	000a8c93          	mv	s9,s5
     3cc:	019e8cb3          	add	s9,t4,s9
     3d0:	01990cb3          	add	s9,s2,s9
     3d4:	000cc683          	lbu	a3,0(s9)
     3d8:	00100613          	li	a2,1
     3dc:	fd668793          	addi	a5,a3,-42
     3e0:	0ff7f793          	zext.b	a5,a5
     3e4:	0ef66e63          	bltu	a2,a5,4e0 <bar+0x1c0>
     3e8:	001c0b13          	addi	s6,s8,1
     3ec:	00012a23          	sw	zero,20(sp)
     3f0:	59ab4663          	blt	s6,s10,97c <bar+0x65c>
     3f4:	fff00793          	li	a5,-1
     3f8:	00f12c23          	sw	a5,24(sp)
     3fc:	416d07b3          	sub	a5,s10,s6
     400:	00f12e23          	sw	a5,28(sp)
     404:	016907b3          	add	a5,s2,s6
     408:	000a0d93          	mv	s11,s4
     40c:	000a0b93          	mv	s7,s4
     410:	02f12023          	sw	a5,32(sp)
     414:	00c12603          	lw	a2,12(sp)
     418:	000e0513          	mv	a0,t3
     41c:	00048793          	mv	a5,s1
     420:	00098713          	mv	a4,s3
     424:	417406b3          	sub	a3,s0,s7
     428:	01760633          	add	a2,a2,s7
     42c:	000a8593          	mv	a1,s5
     430:	01c12823          	sw	t3,16(sp)
     434:	eedff0ef          	jal	ra,320 <bar>
     438:	01012e03          	lw	t3,16(sp)
     43c:	00050c13          	mv	s8,a0
     440:	32a05c63          	blez	a0,778 <bar+0x458>
     444:	00ab8bb3          	add	s7,s7,a0
     448:	35ab4463          	blt	s6,s10,790 <bar+0x470>
     44c:	000b8d93          	mv	s11,s7
     450:	01ba5663          	bge	s4,s11,45c <bar+0x13c>
     454:	01412783          	lw	a5,20(sp)
     458:	00079463          	bnez	a5,460 <bar+0x140>
     45c:	fb804ce3          	bgtz	s8,414 <bar+0xf4>
     460:	000cc783          	lbu	a5,0(s9)
     464:	3c0c4663          	bltz	s8,830 <bar+0x510>
     468:	02b00713          	li	a4,43
     46c:	30e78e63          	beq	a5,a4,788 <bar+0x468>
     470:	15ba1463          	bne	s4,s11,5b8 <bar+0x298>
     474:	15ab5263          	bge	s6,s10,5b8 <bar+0x298>
     478:	01812783          	lw	a5,24(sp)
     47c:	1207de63          	bgez	a5,5b8 <bar+0x298>
     480:	fff00d93          	li	s11,-1
     484:	1340006f          	j	5b8 <bar+0x298>
     488:	05b00793          	li	a5,91
     48c:	26f70e63          	beq	a4,a5,708 <bar+0x3e8>
     490:	05c00793          	li	a5,92
     494:	16f70263          	beq	a4,a5,5f8 <bar+0x2d8>
     498:	fd670793          	addi	a5,a4,-42
     49c:	0ff7f793          	zext.b	a5,a5
     4a0:	00100693          	li	a3,1
     4a4:	10f6f863          	bgeu	a3,a5,5b4 <bar+0x294>
     4a8:	03f00793          	li	a5,63
     4ac:	10f70463          	beq	a4,a5,5b4 <bar+0x294>
     4b0:	001e8c13          	addi	s8,t4,1
     4b4:	00100a93          	li	s5,1
     4b8:	2bac5263          	bge	s8,s10,75c <bar+0x43c>
     4bc:	00100c93          	li	s9,1
     4c0:	019e8cb3          	add	s9,t4,s9
     4c4:	01990cb3          	add	s9,s2,s9
     4c8:	000cc683          	lbu	a3,0(s9)
     4cc:	00100613          	li	a2,1
     4d0:	00100a93          	li	s5,1
     4d4:	fd668793          	addi	a5,a3,-42
     4d8:	0ff7f793          	zext.b	a5,a5
     4dc:	f0f676e3          	bgeu	a2,a5,3e8 <bar+0xc8>
     4e0:	03f00793          	li	a5,63
     4e4:	04f69463          	bne	a3,a5,52c <bar+0x20c>
     4e8:	00c12783          	lw	a5,12(sp)
     4ec:	414406b3          	sub	a3,s0,s4
     4f0:	00098713          	mv	a4,s3
     4f4:	01478633          	add	a2,a5,s4
     4f8:	000a8593          	mv	a1,s5
     4fc:	00048793          	mv	a5,s1
     500:	000e0513          	mv	a0,t3
     504:	01d12a23          	sw	t4,20(sp)
     508:	e19ff0ef          	jal	ra,320 <bar>
     50c:	01412e83          	lw	t4,20(sp)
     510:	fff54793          	not	a5,a0
     514:	41f7d793          	srai	a5,a5,0x1f
     518:	00f57533          	and	a0,a0,a5
     51c:	001e8e93          	addi	t4,t4,1
     520:	00aa0a33          	add	s4,s4,a0
     524:	015e8833          	add	a6,t4,s5
     528:	11c0006f          	j	644 <bar+0x324>
     52c:	05b00793          	li	a5,91
     530:	12f70463          	beq	a4,a5,658 <bar+0x338>
     534:	02800793          	li	a5,40
     538:	22f71263          	bne	a4,a5,75c <bar+0x43c>
     53c:	6409a783          	lw	a5,1600(s3)
     540:	00148c93          	addi	s9,s1,1
     544:	50fcd263          	bge	s9,a5,a48 <bar+0x728>
     548:	00c12703          	lw	a4,12(sp)
     54c:	418d07b3          	sub	a5,s10,s8
     550:	414405b3          	sub	a1,s0,s4
     554:	00f12c23          	sw	a5,24(sp)
     558:	00b12e23          	sw	a1,28(sp)
     55c:	01470c33          	add	s8,a4,s4
     560:	36f04e63          	bgtz	a5,8dc <bar+0x5bc>
     564:	000c8693          	mv	a3,s9
     568:	00098613          	mv	a2,s3
     56c:	000c0513          	mv	a0,s8
     570:	01d12a23          	sw	t4,20(sp)
     574:	4dc000ef          	jal	ra,a50 <doh>
     578:	00050d93          	mv	s11,a0
     57c:	02054e63          	bltz	a0,5b8 <bar+0x298>
     580:	01412e83          	lw	t4,20(sp)
     584:	00aa02b3          	add	t0,s4,a0
     588:	015e8833          	add	a6,t4,s5
     58c:	00028a13          	mv	s4,t0
     590:	01012783          	lw	a5,16(sp)
     594:	9687a783          	lw	a5,-1688(a5)
     598:	00078a63          	beqz	a5,5ac <bar+0x28c>
     59c:	00349493          	slli	s1,s1,0x3
     5a0:	009787b3          	add	a5,a5,s1
     5a4:	0187a023          	sw	s8,0(a5)
     5a8:	01b7a223          	sw	s11,4(a5)
     5ac:	000c8493          	mv	s1,s9
     5b0:	0940006f          	j	644 <bar+0x324>
     5b4:	ffe00d93          	li	s11,-2
     5b8:	06c12083          	lw	ra,108(sp)
     5bc:	06812403          	lw	s0,104(sp)
     5c0:	06412483          	lw	s1,100(sp)
     5c4:	06012903          	lw	s2,96(sp)
     5c8:	05c12983          	lw	s3,92(sp)
     5cc:	05812a03          	lw	s4,88(sp)
     5d0:	05412a83          	lw	s5,84(sp)
     5d4:	05012b03          	lw	s6,80(sp)
     5d8:	04c12b83          	lw	s7,76(sp)
     5dc:	04812c03          	lw	s8,72(sp)
     5e0:	04412c83          	lw	s9,68(sp)
     5e4:	04012d03          	lw	s10,64(sp)
     5e8:	000d8513          	mv	a0,s11
     5ec:	03c12d83          	lw	s11,60(sp)
     5f0:	07010113          	addi	sp,sp,112
     5f4:	00008067          	ret
     5f8:	001e4683          	lbu	a3,1(t3)
     5fc:	07800793          	li	a5,120
     600:	00400a93          	li	s5,4
     604:	00f68463          	beq	a3,a5,60c <bar+0x2ec>
     608:	00200a93          	li	s5,2
     60c:	015e8c33          	add	s8,t4,s5
     610:	dbac4ce3          	blt	s8,s10,3c8 <bar+0xa8>
     614:	01d12a23          	sw	t4,20(sp)
     618:	e68a54e3          	bge	s4,s0,480 <bar+0x160>
     61c:	00c12783          	lw	a5,12(sp)
     620:	00098613          	mv	a2,s3
     624:	000e0513          	mv	a0,t3
     628:	014785b3          	add	a1,a5,s4
     62c:	b25ff0ef          	jal	ra,150 <match_op>
     630:	00050d93          	mv	s11,a0
     634:	f8a052e3          	blez	a0,5b8 <bar+0x298>
     638:	01412e83          	lw	t4,20(sp)
     63c:	00aa0a33          	add	s4,s4,a0
     640:	015e8833          	add	a6,t4,s5
     644:	00080e93          	mv	t4,a6
     648:	01a85463          	bge	a6,s10,650 <bar+0x330>
     64c:	d54456e3          	bge	s0,s4,398 <bar+0x78>
     650:	000a0d93          	mv	s11,s4
     654:	f65ff06f          	j	5b8 <bar+0x298>
     658:	002e8c93          	addi	s9,t4,2
     65c:	001e8c13          	addi	s8,t4,1
     660:	018907b3          	add	a5,s2,s8
     664:	0007c703          	lbu	a4,0(a5)
     668:	419d06b3          	sub	a3,s10,s9
     66c:	00d12e23          	sw	a3,28(sp)
     670:	00c12683          	lw	a3,12(sp)
     674:	02f12023          	sw	a5,32(sp)
     678:	02e12223          	sw	a4,36(sp)
     67c:	05e00793          	li	a5,94
     680:	014685b3          	add	a1,a3,s4
     684:	18f70263          	beq	a4,a5,808 <bar+0x4e8>
     688:	01c12783          	lw	a5,28(sp)
     68c:	de07cae3          	bltz	a5,480 <bar+0x160>
     690:	fff00513          	li	a0,-1
     694:	00000c13          	li	s8,0
     698:	02012783          	lw	a5,32(sp)
     69c:	01878cb3          	add	s9,a5,s8
     6a0:	000ccd83          	lbu	s11,0(s9)
     6a4:	05d00793          	li	a5,93
     6a8:	04fd8463          	beq	s11,a5,6f0 <bar+0x3d0>
     6ac:	2ea04863          	bgtz	a0,99c <bar+0x67c>
     6b0:	217d8463          	beq	s11,s7,8b8 <bar+0x598>
     6b4:	001cc783          	lbu	a5,1(s9)
     6b8:	1b778c63          	beq	a5,s7,870 <bar+0x550>
     6bc:	00098613          	mv	a2,s3
     6c0:	000c8513          	mv	a0,s9
     6c4:	01d12c23          	sw	t4,24(sp)
     6c8:	00b12a23          	sw	a1,20(sp)
     6cc:	a85ff0ef          	jal	ra,150 <match_op>
     6d0:	05c00713          	li	a4,92
     6d4:	01412583          	lw	a1,20(sp)
     6d8:	01812e83          	lw	t4,24(sp)
     6dc:	00100793          	li	a5,1
     6e0:	10ed8863          	beq	s11,a4,7f0 <bar+0x4d0>
     6e4:	00fc0c33          	add	s8,s8,a5
     6e8:	01c12783          	lw	a5,28(sp)
     6ec:	fb87d6e3          	bge	a5,s8,698 <bar+0x378>
     6f0:	02412703          	lw	a4,36(sp)
     6f4:	05e00793          	li	a5,94
     6f8:	32f70e63          	beq	a4,a5,a34 <bar+0x714>
     6fc:	12a04463          	bgtz	a0,824 <bar+0x504>
     700:	fff00d93          	li	s11,-1
     704:	eb5ff06f          	j	5b8 <bar+0x298>
     708:	41dd0833          	sub	a6,s10,t4
     70c:	fff80813          	addi	a6,a6,-1
     710:	00000693          	li	a3,0
     714:	05d00513          	li	a0,93
     718:	05c00f13          	li	t5,92
     71c:	07800f93          	li	t6,120
     720:	00081863          	bnez	a6,730 <bar+0x410>
     724:	2f80006f          	j	a1c <bar+0x6fc>
     728:	00b686b3          	add	a3,a3,a1
     72c:	0b06d263          	bge	a3,a6,7d0 <bar+0x4b0>
     730:	00168793          	addi	a5,a3,1
     734:	00fe07b3          	add	a5,t3,a5
     738:	0007c603          	lbu	a2,0(a5)
     73c:	00100593          	li	a1,1
     740:	08a60463          	beq	a2,a0,7c8 <bar+0x4a8>
     744:	ffe612e3          	bne	a2,t5,728 <bar+0x408>
     748:	0017c783          	lbu	a5,1(a5)
     74c:	00400593          	li	a1,4
     750:	fdf78ce3          	beq	a5,t6,728 <bar+0x408>
     754:	00200593          	li	a1,2
     758:	fd1ff06f          	j	728 <bar+0x408>
     75c:	05e00793          	li	a5,94
     760:	06f71e63          	bne	a4,a5,7dc <bar+0x4bc>
     764:	d00a1ee3          	bnez	s4,480 <bar+0x160>
     768:	015e8eb3          	add	t4,t4,s5
     76c:	c3aec6e3          	blt	t4,s10,398 <bar+0x78>
     770:	000a0d93          	mv	s11,s4
     774:	e45ff06f          	j	5b8 <bar+0x298>
     778:	000cc783          	lbu	a5,0(s9)
     77c:	02b00713          	li	a4,43
     780:	cce794e3          	bne	a5,a4,448 <bar+0x128>
     784:	cc0502e3          	beqz	a0,448 <bar+0x128>
     788:	e3ba18e3          	bne	s4,s11,5b8 <bar+0x298>
     78c:	cf5ff06f          	j	480 <bar+0x160>
     790:	00c12603          	lw	a2,12(sp)
     794:	01c12583          	lw	a1,28(sp)
     798:	02012503          	lw	a0,32(sp)
     79c:	00048793          	mv	a5,s1
     7a0:	00098713          	mv	a4,s3
     7a4:	417406b3          	sub	a3,s0,s7
     7a8:	01760633          	add	a2,a2,s7
     7ac:	01c12823          	sw	t3,16(sp)
     7b0:	b71ff0ef          	jal	ra,320 <bar>
     7b4:	00a12c23          	sw	a0,24(sp)
     7b8:	01012e03          	lw	t3,16(sp)
     7bc:	c8054ae3          	bltz	a0,450 <bar+0x130>
     7c0:	01750db3          	add	s11,a0,s7
     7c4:	c8dff06f          	j	450 <bar+0x130>
     7c8:	00268a93          	addi	s5,a3,2
     7cc:	bf5ff06f          	j	3c0 <bar+0xa0>
     7d0:	0cd81c63          	bne	a6,a3,8a8 <bar+0x588>
     7d4:	00280a93          	addi	s5,a6,2
     7d8:	be9ff06f          	j	3c0 <bar+0xa0>
     7dc:	02400793          	li	a5,36
     7e0:	e2f71ae3          	bne	a4,a5,614 <bar+0x2f4>
     7e4:	f88a02e3          	beq	s4,s0,768 <bar+0x448>
     7e8:	fff00d93          	li	s11,-1
     7ec:	dcdff06f          	j	5b8 <bar+0x298>
     7f0:	001cc703          	lbu	a4,1(s9)
     7f4:	07800693          	li	a3,120
     7f8:	00400793          	li	a5,4
     7fc:	eed704e3          	beq	a4,a3,6e4 <bar+0x3c4>
     800:	00200793          	li	a5,2
     804:	ee1ff06f          	j	6e4 <bar+0x3c4>
     808:	01c12783          	lw	a5,28(sp)
     80c:	02012703          	lw	a4,32(sp)
     810:	fff78793          	addi	a5,a5,-1
     814:	00170713          	addi	a4,a4,1
     818:	00f12e23          	sw	a5,28(sp)
     81c:	02e12023          	sw	a4,32(sp)
     820:	e607d8e3          	bgez	a5,690 <bar+0x370>
     824:	001a0a13          	addi	s4,s4,1
     828:	015e8833          	add	a6,t4,s5
     82c:	e19ff06f          	j	644 <bar+0x324>
     830:	02a00713          	li	a4,42
     834:	c2e79ae3          	bne	a5,a4,468 <bar+0x148>
     838:	00c12603          	lw	a2,12(sp)
     83c:	00048793          	mv	a5,s1
     840:	00098713          	mv	a4,s3
     844:	414406b3          	sub	a3,s0,s4
     848:	01460633          	add	a2,a2,s4
     84c:	416d05b3          	sub	a1,s10,s6
     850:	01690533          	add	a0,s2,s6
     854:	acdff0ef          	jal	ra,320 <bar>
     858:	00a12c23          	sw	a0,24(sp)
     85c:	1ea05263          	blez	a0,a40 <bar+0x720>
     860:	01812703          	lw	a4,24(sp)
     864:	000cc783          	lbu	a5,0(s9)
     868:	00ea0db3          	add	s11,s4,a4
     86c:	bfdff06f          	j	468 <bar+0x148>
     870:	002cc783          	lbu	a5,2(s9)
     874:	05d00713          	li	a4,93
     878:	e4e782e3          	beq	a5,a4,6bc <bar+0x39c>
     87c:	e40780e3          	beqz	a5,6bc <bar+0x39c>
     880:	01012703          	lw	a4,16(sp)
     884:	97072503          	lw	a0,-1680(a4)
     888:	0005c703          	lbu	a4,0(a1)
     88c:	12050263          	beqz	a0,9b0 <bar+0x690>
     890:	00000513          	li	a0,0
     894:	01b76663          	bltu	a4,s11,8a0 <bar+0x580>
     898:	00e7b733          	sltu	a4,a5,a4
     89c:	00174513          	xori	a0,a4,1
     8a0:	003c0c13          	addi	s8,s8,3
     8a4:	e45ff06f          	j	6e8 <bar+0x3c8>
     8a8:	ffb00d93          	li	s11,-5
     8ac:	d0dff06f          	j	5b8 <bar+0x298>
     8b0:	00000d93          	li	s11,0
     8b4:	d05ff06f          	j	5b8 <bar+0x298>
     8b8:	00098613          	mv	a2,s3
     8bc:	000c8513          	mv	a0,s9
     8c0:	01d12c23          	sw	t4,24(sp)
     8c4:	00b12a23          	sw	a1,20(sp)
     8c8:	889ff0ef          	jal	ra,150 <match_op>
     8cc:	01412583          	lw	a1,20(sp)
     8d0:	01812e83          	lw	t4,24(sp)
     8d4:	00100793          	li	a5,1
     8d8:	e0dff06f          	j	6e4 <bar+0x3c4>
     8dc:	00140793          	addi	a5,s0,1
     8e0:	01da8733          	add	a4,s5,t4
     8e4:	414787b3          	sub	a5,a5,s4
     8e8:	02f12223          	sw	a5,36(sp)
     8ec:	00e907b3          	add	a5,s2,a4
     8f0:	02e12623          	sw	a4,44(sp)
     8f4:	00100e93          	li	t4,1
     8f8:	02f12423          	sw	a5,40(sp)
     8fc:	02412783          	lw	a5,36(sp)
     900:	000c8693          	mv	a3,s9
     904:	00098613          	mv	a2,s3
     908:	41d785b3          	sub	a1,a5,t4
     90c:	000c0513          	mv	a0,s8
     910:	01d12a23          	sw	t4,20(sp)
     914:	13c000ef          	jal	ra,a50 <doh>
     918:	00050d93          	mv	s11,a0
     91c:	00c12603          	lw	a2,12(sp)
     920:	01ba0ab3          	add	s5,s4,s11
     924:	03512023          	sw	s5,32(sp)
     928:	01812583          	lw	a1,24(sp)
     92c:	02812503          	lw	a0,40(sp)
     930:	01412e83          	lw	t4,20(sp)
     934:	000c8793          	mv	a5,s9
     938:	00098713          	mv	a4,s3
     93c:	415406b3          	sub	a3,s0,s5
     940:	01560633          	add	a2,a2,s5
     944:	000dda63          	bgez	s11,958 <bar+0x638>
     948:	01c12783          	lw	a5,28(sp)
     94c:	c7d7c6e3          	blt	a5,t4,5b8 <bar+0x298>
     950:	001e8e93          	addi	t4,t4,1
     954:	fa9ff06f          	j	8fc <bar+0x5dc>
     958:	9c9ff0ef          	jal	ra,320 <bar>
     95c:	02c12803          	lw	a6,44(sp)
     960:	0a055a63          	bgez	a0,a14 <bar+0x6f4>
     964:	01c12783          	lw	a5,28(sp)
     968:	01412e83          	lw	t4,20(sp)
     96c:	02012283          	lw	t0,32(sp)
     970:	c1d7cee3          	blt	a5,t4,58c <bar+0x26c>
     974:	001e8e93          	addi	t4,t4,1
     978:	f85ff06f          	j	8fc <bar+0x5dc>
     97c:	016907b3          	add	a5,s2,s6
     980:	0007c703          	lbu	a4,0(a5)
     984:	03f00793          	li	a5,63
     988:	a6f716e3          	bne	a4,a5,3f4 <bar+0xd4>
     98c:	00100793          	li	a5,1
     990:	002c0b13          	addi	s6,s8,2
     994:	00f12a23          	sw	a5,20(sp)
     998:	a5dff06f          	j	3f4 <bar+0xd4>
     99c:	02412703          	lw	a4,36(sp)
     9a0:	05e00793          	li	a5,94
     9a4:	e8f710e3          	bne	a4,a5,824 <bar+0x504>
     9a8:	fff00d93          	li	s11,-1
     9ac:	c0dff06f          	j	5b8 <bar+0x298>
     9b0:	00eb0633          	add	a2,s6,a4
     9b4:	00064603          	lbu	a2,0(a2)
     9b8:	00100693          	li	a3,1
     9bc:	00367613          	andi	a2,a2,3
     9c0:	00d61463          	bne	a2,a3,9c8 <bar+0x6a8>
     9c4:	02070713          	addi	a4,a4,32
     9c8:	01bb0633          	add	a2,s6,s11
     9cc:	00064603          	lbu	a2,0(a2)
     9d0:	00100813          	li	a6,1
     9d4:	000d8693          	mv	a3,s11
     9d8:	00367613          	andi	a2,a2,3
     9dc:	03060863          	beq	a2,a6,a0c <bar+0x6ec>
     9e0:	ecd740e3          	blt	a4,a3,8a0 <bar+0x580>
     9e4:	00fb06b3          	add	a3,s6,a5
     9e8:	0006c683          	lbu	a3,0(a3)
     9ec:	00100613          	li	a2,1
     9f0:	0036f693          	andi	a3,a3,3
     9f4:	00c69463          	bne	a3,a2,9fc <bar+0x6dc>
     9f8:	02078793          	addi	a5,a5,32
     9fc:	00e7a733          	slt	a4,a5,a4
     a00:	00174513          	xori	a0,a4,1
     a04:	003c0c13          	addi	s8,s8,3
     a08:	ce1ff06f          	j	6e8 <bar+0x3c8>
     a0c:	020d8693          	addi	a3,s11,32
     a10:	fd1ff06f          	j	9e0 <bar+0x6c0>
     a14:	000a8a13          	mv	s4,s5
     a18:	b79ff06f          	j	590 <bar+0x270>
     a1c:	002e8c93          	addi	s9,t4,2
     a20:	000c8c13          	mv	s8,s9
     a24:	00200a93          	li	s5,2
     a28:	c3acdae3          	bge	s9,s10,65c <bar+0x33c>
     a2c:	000a8c93          	mv	s9,s5
     a30:	99dff06f          	j	3cc <bar+0xac>
     a34:	dea058e3          	blez	a0,824 <bar+0x504>
     a38:	fff00d93          	li	s11,-1
     a3c:	b7dff06f          	j	5b8 <bar+0x298>
     a40:	000cc783          	lbu	a5,0(s9)
     a44:	a25ff06f          	j	468 <bar+0x148>
     a48:	ffc00d93          	li	s11,-4
     a4c:	b6dff06f          	j	5b8 <bar+0x298>

00000a50 <doh>:
     a50:	fe010113          	addi	sp,sp,-32
     a54:	01412423          	sw	s4,8(sp)
     a58:	00469a13          	slli	s4,a3,0x4
     a5c:	00812c23          	sw	s0,24(sp)
     a60:	00912a23          	sw	s1,20(sp)
     a64:	01212823          	sw	s2,16(sp)
     a68:	01312623          	sw	s3,12(sp)
     a6c:	01512223          	sw	s5,4(sp)
     a70:	01460a33          	add	s4,a2,s4
     a74:	00112e23          	sw	ra,28(sp)
     a78:	00000413          	li	s0,0
     a7c:	00ca2783          	lw	a5,12(s4)
     a80:	00068493          	mv	s1,a3
     a84:	00060a93          	mv	s5,a2
     a88:	00050993          	mv	s3,a0
     a8c:	00058913          	mv	s2,a1
     a90:	06040263          	beqz	s0,af4 <doh+0xa4>
     a94:	008a2883          	lw	a7,8(s4)
     a98:	01140833          	add	a6,s0,a7
     a9c:	0c780813          	addi	a6,a6,199
     aa0:	00381813          	slli	a6,a6,0x3
     aa4:	010a8833          	add	a6,s5,a6
     aa8:	00882503          	lw	a0,8(a6)
     aac:	00150513          	addi	a0,a0,1
     ab0:	0a078263          	beqz	a5,b54 <doh+0x104>
     ab4:	04879663          	bne	a5,s0,b00 <doh+0xb0>
     ab8:	000a2583          	lw	a1,0(s4)
     abc:	004a2783          	lw	a5,4(s4)
     ac0:	00f585b3          	add	a1,a1,a5
     ac4:	40a585b3          	sub	a1,a1,a0
     ac8:	00048793          	mv	a5,s1
     acc:	000a8713          	mv	a4,s5
     ad0:	00090693          	mv	a3,s2
     ad4:	00098613          	mv	a2,s3
     ad8:	849ff0ef          	jal	ra,320 <bar>
     adc:	04a04a63          	bgtz	a0,b30 <doh+0xe0>
     ae0:	00ca2783          	lw	a5,12(s4)
     ae4:	00140713          	addi	a4,s0,1
     ae8:	04f45463          	bge	s0,a5,b30 <doh+0xe0>
     aec:	00070413          	mv	s0,a4
     af0:	fa0412e3          	bnez	s0,a94 <doh+0x44>
     af4:	000a2503          	lw	a0,0(s4)
     af8:	04078e63          	beqz	a5,b54 <doh+0x104>
     afc:	008a2883          	lw	a7,8(s4)
     b00:	011408b3          	add	a7,s0,a7
     b04:	0c888893          	addi	a7,a7,200
     b08:	00389893          	slli	a7,a7,0x3
     b0c:	011a88b3          	add	a7,s5,a7
     b10:	0088a583          	lw	a1,8(a7)
     b14:	00048793          	mv	a5,s1
     b18:	000a8713          	mv	a4,s5
     b1c:	40a585b3          	sub	a1,a1,a0
     b20:	00090693          	mv	a3,s2
     b24:	00098613          	mv	a2,s3
     b28:	ff8ff0ef          	jal	ra,320 <bar>
     b2c:	faa05ae3          	blez	a0,ae0 <doh+0x90>
     b30:	01c12083          	lw	ra,28(sp)
     b34:	01812403          	lw	s0,24(sp)
     b38:	01412483          	lw	s1,20(sp)
     b3c:	01012903          	lw	s2,16(sp)
     b40:	00c12983          	lw	s3,12(sp)
     b44:	00812a03          	lw	s4,8(sp)
     b48:	00412a83          	lw	s5,4(sp)
     b4c:	02010113          	addi	sp,sp,32
     b50:	00008067          	ret
     b54:	004a2583          	lw	a1,4(s4)
     b58:	f71ff06f          	j	ac8 <doh+0x78>

00000b5c <slre_match>:
     b5c:	81010113          	addi	sp,sp,-2032
     b60:	7e812423          	sw	s0,2024(sp)
     b64:	7e912223          	sw	s1,2020(sp)
     b68:	7d912223          	sw	s9,1988(sp)
     b6c:	7e112623          	sw	ra,2028(sp)
     b70:	7f212023          	sw	s2,2016(sp)
     b74:	7d312e23          	sw	s3,2012(sp)
     b78:	7d412c23          	sw	s4,2008(sp)
     b7c:	7d512a23          	sw	s5,2004(sp)
     b80:	7d612823          	sw	s6,2000(sp)
     b84:	7d712623          	sw	s7,1996(sp)
     b88:	7d812423          	sw	s8,1992(sp)
     b8c:	7da12023          	sw	s10,1984(sp)
     b90:	7bb12e23          	sw	s11,1980(sp)
     b94:	000017b7          	lui	a5,0x1
     b98:	e1010113          	addi	sp,sp,-496
     b9c:	02010813          	addi	a6,sp,32
     ba0:	00070493          	mv	s1,a4
     ba4:	97078713          	addi	a4,a5,-1680 # 970 <bar+0x650>
     ba8:	01070733          	add	a4,a4,a6
     bac:	00072023          	sw	zero,0(a4)
     bb0:	97c78713          	addi	a4,a5,-1668
     bb4:	01070733          	add	a4,a4,a6
     bb8:	00072023          	sw	zero,0(a4)
     bbc:	00050c93          	mv	s9,a0
     bc0:	97878713          	addi	a4,a5,-1672
     bc4:	00054503          	lbu	a0,0(a0)
     bc8:	97478793          	addi	a5,a5,-1676
     bcc:	010787b3          	add	a5,a5,a6
     bd0:	01070733          	add	a4,a4,a6
     bd4:	00d7a023          	sw	a3,0(a5)
     bd8:	00972023          	sw	s1,0(a4)
     bdc:	02800793          	li	a5,40
     be0:	00b12a23          	sw	a1,20(sp)
     be4:	00060413          	mv	s0,a2
     be8:	44f50863          	beq	a0,a5,1038 <slre_match+0x4dc>
     bec:	000c8513          	mv	a0,s9
     bf0:	734000ef          	jal	ra,1324 <strlen>
     bf4:	00001737          	lui	a4,0x1
     bf8:	fffff7b7          	lui	a5,0xfffff
     bfc:	98070713          	addi	a4,a4,-1664 # 980 <bar+0x660>
     c00:	00f70733          	add	a4,a4,a5
     c04:	02010793          	addi	a5,sp,32
     c08:	00f707b3          	add	a5,a4,a5
     c0c:	00f12423          	sw	a5,8(sp)
     c10:	6997a623          	sw	s9,1676(a5) # fffff68c <start_time+0xfffef504>
     c14:	68a7a823          	sw	a0,1680(a5)
     c18:	00100793          	li	a5,1
     c1c:	66f12623          	sw	a5,1644(sp)
     c20:	00050d93          	mv	s11,a0
     c24:	48050463          	beqz	a0,10ac <slre_match+0x550>
     c28:	fff50793          	addi	a5,a0,-1
     c2c:	00f12823          	sw	a5,16(sp)
     c30:	ffd50793          	addi	a5,a0,-3
     c34:	00f12c23          	sw	a5,24(sp)
     c38:	000107b7          	lui	a5,0x10
     c3c:	04178793          	addi	a5,a5,65 # 10041 <_ctype_+0x1>
     c40:	00000b93          	li	s7,0
     c44:	00000c13          	li	s8,0
     c48:	05b00313          	li	t1,91
     c4c:	05c00d13          	li	s10,92
     c50:	07c00993          	li	s3,124
     c54:	02800a13          	li	s4,40
     c58:	fff00913          	li	s2,-1
     c5c:	06300a93          	li	s5,99
     c60:	07800b13          	li	s6,120
     c64:	00f12e23          	sw	a5,28(sp)
     c68:	018c8633          	add	a2,s9,s8
     c6c:	00064783          	lbu	a5,0(a2)
     c70:	2a678863          	beq	a5,t1,f20 <slre_match+0x3c4>
     c74:	23a78063          	beq	a5,s10,e94 <slre_match+0x338>
     c78:	27379263          	bne	a5,s3,edc <slre_match+0x380>
     c7c:	000017b7          	lui	a5,0x1
     c80:	02010713          	addi	a4,sp,32
     c84:	97078793          	addi	a5,a5,-1680 # 970 <bar+0x650>
     c88:	00e787b3          	add	a5,a5,a4
     c8c:	0007a703          	lw	a4,0(a5)
     c90:	3eeace63          	blt	s5,a4,108c <slre_match+0x530>
     c94:	66c12683          	lw	a3,1644(sp)
     c98:	00812583          	lw	a1,8(sp)
     c9c:	fff68693          	addi	a3,a3,-1
     ca0:	00469793          	slli	a5,a3,0x4
     ca4:	00f587b3          	add	a5,a1,a5
     ca8:	6907a783          	lw	a5,1680(a5)
     cac:	01278463          	beq	a5,s2,cb4 <slre_match+0x158>
     cb0:	000b8693          	mv	a3,s7
     cb4:	00812583          	lw	a1,8(sp)
     cb8:	0c870793          	addi	a5,a4,200
     cbc:	00379793          	slli	a5,a5,0x3
     cc0:	00f587b3          	add	a5,a1,a5
     cc4:	68d7a823          	sw	a3,1680(a5)
     cc8:	68c7aa23          	sw	a2,1684(a5)
     ccc:	000017b7          	lui	a5,0x1
     cd0:	97078793          	addi	a5,a5,-1680 # 970 <bar+0x650>
     cd4:	02010693          	addi	a3,sp,32
     cd8:	00170713          	addi	a4,a4,1
     cdc:	00d787b3          	add	a5,a5,a3
     ce0:	00e7a023          	sw	a4,0(a5)
     ce4:	001c0c13          	addi	s8,s8,1
     ce8:	f9bc40e3          	blt	s8,s11,c68 <slre_match+0x10c>
     cec:	3a0b9863          	bnez	s7,109c <slre_match+0x540>
     cf0:	00001737          	lui	a4,0x1
     cf4:	97070793          	addi	a5,a4,-1680 # 970 <bar+0x650>
     cf8:	02010693          	addi	a3,sp,32
     cfc:	00d787b3          	add	a5,a5,a3
     d00:	0007a503          	lw	a0,0(a5)
     d04:	98070713          	addi	a4,a4,-1664
     d08:	fffff7b7          	lui	a5,0xfffff
     d0c:	00f70733          	add	a4,a4,a5
     d10:	00d707b3          	add	a5,a4,a3
     d14:	00f12423          	sw	a5,8(sp)
     d18:	66c12303          	lw	t1,1644(sp)
     d1c:	68c7ac83          	lw	s9,1676(a5) # fffff68c <start_time+0xfffef504>
     d20:	06a05263          	blez	a0,d84 <slre_match+0x228>
     d24:	00351793          	slli	a5,a0,0x3
     d28:	67010693          	addi	a3,sp,1648
     d2c:	67810713          	addi	a4,sp,1656
     d30:	00f685b3          	add	a1,a3,a5
     d34:	001b8b93          	addi	s7,s7,1
     d38:	00070793          	mv	a5,a4
     d3c:	04abd063          	bge	s7,a0,d7c <slre_match+0x220>
     d40:	0007a603          	lw	a2,0(a5)
     d44:	ff872683          	lw	a3,-8(a4)
     d48:	00d65e63          	bge	a2,a3,d64 <slre_match+0x208>
     d4c:	fec72c23          	sw	a2,-8(a4)
     d50:	0047a883          	lw	a7,4(a5)
     d54:	ffc72603          	lw	a2,-4(a4)
     d58:	ff172e23          	sw	a7,-4(a4)
     d5c:	00d7a023          	sw	a3,0(a5)
     d60:	00c7a223          	sw	a2,4(a5)
     d64:	00878793          	addi	a5,a5,8
     d68:	fcb79ce3          	bne	a5,a1,d40 <slre_match+0x1e4>
     d6c:	00870713          	addi	a4,a4,8
     d70:	001b8b93          	addi	s7,s7,1
     d74:	00070793          	mv	a5,a4
     d78:	fcabc4e3          	blt	s7,a0,d40 <slre_match+0x1e4>
     d7c:	00870713          	addi	a4,a4,8
     d80:	faab9ae3          	bne	s7,a0,d34 <slre_match+0x1d8>
     d84:	06605a63          	blez	t1,df8 <slre_match+0x29c>
     d88:	fffff837          	lui	a6,0xfffff
     d8c:	000017b7          	lui	a5,0x1
     d90:	68c80813          	addi	a6,a6,1676 # fffff68c <start_time+0xfffef504>
     d94:	98078793          	addi	a5,a5,-1664 # 980 <bar+0x660>
     d98:	010787b3          	add	a5,a5,a6
     d9c:	02010713          	addi	a4,sp,32
     da0:	00e78833          	add	a6,a5,a4
     da4:	00c80613          	addi	a2,a6,12
     da8:	00000693          	li	a3,0
     dac:	00000593          	li	a1,0
     db0:	00062023          	sw	zero,0(a2)
     db4:	fed62e23          	sw	a3,-4(a2)
     db8:	02a6da63          	bge	a3,a0,dec <slre_match+0x290>
     dbc:	00369713          	slli	a4,a3,0x3
     dc0:	64470713          	addi	a4,a4,1604
     dc4:	00e80733          	add	a4,a6,a4
     dc8:	0180006f          	j	de0 <slre_match+0x284>
     dcc:	00062783          	lw	a5,0(a2)
     dd0:	00168693          	addi	a3,a3,1
     dd4:	00178793          	addi	a5,a5,1
     dd8:	00f62023          	sw	a5,0(a2)
     ddc:	00a68863          	beq	a3,a0,dec <slre_match+0x290>
     de0:	00072783          	lw	a5,0(a4)
     de4:	00870713          	addi	a4,a4,8
     de8:	feb782e3          	beq	a5,a1,dcc <slre_match+0x270>
     dec:	00158593          	addi	a1,a1,1
     df0:	01060613          	addi	a2,a2,16
     df4:	fab31ee3          	bne	t1,a1,db0 <slre_match+0x254>
     df8:	000cca83          	lbu	s5,0(s9)
     dfc:	00000493          	li	s1,0
     e00:	2a044263          	bltz	s0,10a4 <slre_match+0x548>
     e04:	fffff9b7          	lui	s3,0xfffff
     e08:	000017b7          	lui	a5,0x1
     e0c:	68c98993          	addi	s3,s3,1676 # fffff68c <start_time+0xfffef504>
     e10:	98078793          	addi	a5,a5,-1664 # 980 <bar+0x660>
     e14:	013787b3          	add	a5,a5,s3
     e18:	02010713          	addi	a4,sp,32
     e1c:	00e789b3          	add	s3,a5,a4
     e20:	05e00a13          	li	s4,94
     e24:	0100006f          	j	e34 <slre_match+0x2d8>
     e28:	00148493          	addi	s1,s1,1
     e2c:	034a8463          	beq	s5,s4,e54 <slre_match+0x2f8>
     e30:	02944263          	blt	s0,s1,e54 <slre_match+0x2f8>
     e34:	01412783          	lw	a5,20(sp)
     e38:	409405b3          	sub	a1,s0,s1
     e3c:	00000693          	li	a3,0
     e40:	00978533          	add	a0,a5,s1
     e44:	00098613          	mv	a2,s3
     e48:	c09ff0ef          	jal	ra,a50 <doh>
     e4c:	fc054ee3          	bltz	a0,e28 <slre_match+0x2cc>
     e50:	00950533          	add	a0,a0,s1
     e54:	1f010113          	addi	sp,sp,496
     e58:	7ec12083          	lw	ra,2028(sp)
     e5c:	7e812403          	lw	s0,2024(sp)
     e60:	7e412483          	lw	s1,2020(sp)
     e64:	7e012903          	lw	s2,2016(sp)
     e68:	7dc12983          	lw	s3,2012(sp)
     e6c:	7d812a03          	lw	s4,2008(sp)
     e70:	7d412a83          	lw	s5,2004(sp)
     e74:	7d012b03          	lw	s6,2000(sp)
     e78:	7cc12b83          	lw	s7,1996(sp)
     e7c:	7c812c03          	lw	s8,1992(sp)
     e80:	7c412c83          	lw	s9,1988(sp)
     e84:	7c012d03          	lw	s10,1984(sp)
     e88:	7bc12d83          	lw	s11,1980(sp)
     e8c:	7f010113          	addi	sp,sp,2032
     e90:	00008067          	ret
     e94:	00164703          	lbu	a4,1(a2)
     e98:	00400793          	li	a5,4
     e9c:	01670463          	beq	a4,s6,ea4 <slre_match+0x348>
     ea0:	00200793          	li	a5,2
     ea4:	01012703          	lw	a4,16(sp)
     ea8:	1cec5863          	bge	s8,a4,1078 <slre_match+0x51c>
     eac:	00164583          	lbu	a1,1(a2)
     eb0:	13658e63          	beq	a1,s6,fec <slre_match+0x490>
     eb4:	00f12623          	sw	a5,12(sp)
     eb8:	000107b7          	lui	a5,0x10
     ebc:	14c78513          	addi	a0,a5,332 # 1014c <_ctype_+0x10c>
     ec0:	2f8000ef          	jal	ra,11b8 <strchr>
     ec4:	1a050a63          	beqz	a0,1078 <slre_match+0x51c>
     ec8:	00c12783          	lw	a5,12(sp)
     ecc:	05b00313          	li	t1,91
     ed0:	00fc0c33          	add	s8,s8,a5
     ed4:	d9bc4ae3          	blt	s8,s11,c68 <slre_match+0x10c>
     ed8:	e15ff06f          	j	cec <slre_match+0x190>
     edc:	0b479a63          	bne	a5,s4,f90 <slre_match+0x434>
     ee0:	66c12703          	lw	a4,1644(sp)
     ee4:	1aeac863          	blt	s5,a4,1094 <slre_match+0x538>
     ee8:	00812683          	lw	a3,8(sp)
     eec:	00471793          	slli	a5,a4,0x4
     ef0:	001c0c13          	addi	s8,s8,1
     ef4:	00f687b3          	add	a5,a3,a5
     ef8:	018c8633          	add	a2,s9,s8
     efc:	00170693          	addi	a3,a4,1
     f00:	68c7a623          	sw	a2,1676(a5)
     f04:	6927a823          	sw	s2,1680(a5)
     f08:	66d12623          	sw	a3,1644(sp)
     f0c:	001b8b93          	addi	s7,s7,1
     f10:	dc905ce3          	blez	s1,ce8 <slre_match+0x18c>
     f14:	dce4dae3          	bge	s1,a4,ce8 <slre_match+0x18c>
     f18:	ff900513          	li	a0,-7
     f1c:	f39ff06f          	j	e54 <slre_match+0x2f8>
     f20:	418d8533          	sub	a0,s11,s8
     f24:	fff50513          	addi	a0,a0,-1
     f28:	00000693          	li	a3,0
     f2c:	05d00293          	li	t0,93
     f30:	00051863          	bnez	a0,f40 <slre_match+0x3e4>
     f34:	14c0006f          	j	1080 <slre_match+0x524>
     f38:	00b686b3          	add	a3,a3,a1
     f3c:	02a6da63          	bge	a3,a0,f70 <slre_match+0x414>
     f40:	00168793          	addi	a5,a3,1
     f44:	00f607b3          	add	a5,a2,a5
     f48:	0007c703          	lbu	a4,0(a5)
     f4c:	00100593          	li	a1,1
     f50:	02570a63          	beq	a4,t0,f84 <slre_match+0x428>
     f54:	ffa712e3          	bne	a4,s10,f38 <slre_match+0x3dc>
     f58:	0017c783          	lbu	a5,1(a5)
     f5c:	00400593          	li	a1,4
     f60:	fd678ce3          	beq	a5,s6,f38 <slre_match+0x3dc>
     f64:	00200593          	li	a1,2
     f68:	00b686b3          	add	a3,a3,a1
     f6c:	fca6cae3          	blt	a3,a0,f40 <slre_match+0x3e4>
     f70:	d6d51ce3          	bne	a0,a3,ce8 <slre_match+0x18c>
     f74:	00250693          	addi	a3,a0,2
     f78:	00dc0c33          	add	s8,s8,a3
     f7c:	cfbc46e3          	blt	s8,s11,c68 <slre_match+0x10c>
     f80:	d6dff06f          	j	cec <slre_match+0x190>
     f84:	00268693          	addi	a3,a3,2
     f88:	00dc0c33          	add	s8,s8,a3
     f8c:	ff1ff06f          	j	f7c <slre_match+0x420>
     f90:	02900713          	li	a4,41
     f94:	04e79663          	bne	a5,a4,fe0 <slre_match+0x484>
     f98:	66c12783          	lw	a5,1644(sp)
     f9c:	00812703          	lw	a4,8(sp)
     fa0:	fff78793          	addi	a5,a5,-1
     fa4:	00479793          	slli	a5,a5,0x4
     fa8:	00f70733          	add	a4,a4,a5
     fac:	69072703          	lw	a4,1680(a4)
     fb0:	01270463          	beq	a4,s2,fb8 <slre_match+0x45c>
     fb4:	004b9793          	slli	a5,s7,0x4
     fb8:	00812703          	lw	a4,8(sp)
     fbc:	fffb8b93          	addi	s7,s7,-1
     fc0:	00f707b3          	add	a5,a4,a5
     fc4:	68c7a703          	lw	a4,1676(a5)
     fc8:	40e60733          	sub	a4,a2,a4
     fcc:	68e7a823          	sw	a4,1680(a5)
     fd0:	0d2b8663          	beq	s7,s2,109c <slre_match+0x540>
     fd4:	040c0c63          	beqz	s8,102c <slre_match+0x4d0>
     fd8:	fff64783          	lbu	a5,-1(a2)
     fdc:	0d478463          	beq	a5,s4,10a4 <slre_match+0x548>
     fe0:	001c0c13          	addi	s8,s8,1
     fe4:	c9bc42e3          	blt	s8,s11,c68 <slre_match+0x10c>
     fe8:	d05ff06f          	j	cec <slre_match+0x190>
     fec:	01812703          	lw	a4,24(sp)
     ff0:	08ec5463          	bge	s8,a4,1078 <slre_match+0x51c>
     ff4:	00264703          	lbu	a4,2(a2)
     ff8:	01c12683          	lw	a3,28(sp)
     ffc:	00d70733          	add	a4,a4,a3
    1000:	00074703          	lbu	a4,0(a4)
    1004:	04477713          	andi	a4,a4,68
    1008:	06070863          	beqz	a4,1078 <slre_match+0x51c>
    100c:	00364703          	lbu	a4,3(a2)
    1010:	00d70733          	add	a4,a4,a3
    1014:	00074703          	lbu	a4,0(a4)
    1018:	04477713          	andi	a4,a4,68
    101c:	04070e63          	beqz	a4,1078 <slre_match+0x51c>
    1020:	00fc0c33          	add	s8,s8,a5
    1024:	c5bc42e3          	blt	s8,s11,c68 <slre_match+0x10c>
    1028:	cc5ff06f          	j	cec <slre_match+0x190>
    102c:	00100c13          	li	s8,1
    1030:	c3bc4ce3          	blt	s8,s11,c68 <slre_match+0x10c>
    1034:	cb9ff06f          	j	cec <slre_match+0x190>
    1038:	001cc703          	lbu	a4,1(s9)
    103c:	03f00793          	li	a5,63
    1040:	baf716e3          	bne	a4,a5,bec <slre_match+0x90>
    1044:	002cc703          	lbu	a4,2(s9)
    1048:	06900793          	li	a5,105
    104c:	baf710e3          	bne	a4,a5,bec <slre_match+0x90>
    1050:	003cc703          	lbu	a4,3(s9)
    1054:	02900793          	li	a5,41
    1058:	b8f71ae3          	bne	a4,a5,bec <slre_match+0x90>
    105c:	00001737          	lui	a4,0x1
    1060:	97c70713          	addi	a4,a4,-1668 # 97c <bar+0x65c>
    1064:	00100793          	li	a5,1
    1068:	01070733          	add	a4,a4,a6
    106c:	00f72023          	sw	a5,0(a4)
    1070:	004c8c93          	addi	s9,s9,4
    1074:	b79ff06f          	j	bec <slre_match+0x90>
    1078:	ffa00513          	li	a0,-6
    107c:	dd9ff06f          	j	e54 <slre_match+0x2f8>
    1080:	00200693          	li	a3,2
    1084:	00dc0c33          	add	s8,s8,a3
    1088:	ef5ff06f          	j	f7c <slre_match+0x420>
    108c:	ff800513          	li	a0,-8
    1090:	dc5ff06f          	j	e54 <slre_match+0x2f8>
    1094:	ff700513          	li	a0,-9
    1098:	dbdff06f          	j	e54 <slre_match+0x2f8>
    109c:	ffd00513          	li	a0,-3
    10a0:	db5ff06f          	j	e54 <slre_match+0x2f8>
    10a4:	fff00513          	li	a0,-1
    10a8:	dadff06f          	j	e54 <slre_match+0x2f8>
    10ac:	00100313          	li	t1,1
    10b0:	00000513          	li	a0,0
    10b4:	cd5ff06f          	j	d88 <slre_match+0x22c>

000010b8 <benchmark_body>:
    10b8:	fd010113          	addi	sp,sp,-48
    10bc:	02112623          	sw	ra,44(sp)
    10c0:	02812423          	sw	s0,40(sp)
    10c4:	02912223          	sw	s1,36(sp)
    10c8:	03212023          	sw	s2,32(sp)
    10cc:	01312e23          	sw	s3,28(sp)
    10d0:	01412c23          	sw	s4,24(sp)
    10d4:	01512a23          	sw	s5,20(sp)
    10d8:	01612823          	sw	s6,16(sp)
    10dc:	06a05463          	blez	a0,1144 <benchmark_body+0x8c>
    10e0:	00010937          	lui	s2,0x10
    10e4:	00090993          	mv	s3,s2
    10e8:	00010b37          	lui	s6,0x10
    10ec:	00050a93          	mv	s5,a0
    10f0:	00000a13          	li	s4,0
    10f4:	030b0b13          	addi	s6,s6,48 # 10030 <regexes>
    10f8:	04098993          	addi	s3,s3,64
    10fc:	00090513          	mv	a0,s2
    1100:	224000ef          	jal	ra,1324 <strlen>
    1104:	00050493          	mv	s1,a0
    1108:	00012223          	sw	zero,4(sp)
    110c:	000b0413          	mv	s0,s6
    1110:	00042503          	lw	a0,0(s0)
    1114:	00100713          	li	a4,1
    1118:	00810693          	addi	a3,sp,8
    111c:	00048613          	mv	a2,s1
    1120:	00090593          	mv	a1,s2
    1124:	a39ff0ef          	jal	ra,b5c <slre_match>
    1128:	00412783          	lw	a5,4(sp)
    112c:	00440413          	addi	s0,s0,4
    1130:	00a787b3          	add	a5,a5,a0
    1134:	00f12223          	sw	a5,4(sp)
    1138:	fd341ce3          	bne	s0,s3,1110 <benchmark_body+0x58>
    113c:	001a0a13          	addi	s4,s4,1
    1140:	fb4a9ee3          	bne	s5,s4,10fc <benchmark_body+0x44>
    1144:	02c12083          	lw	ra,44(sp)
    1148:	02812403          	lw	s0,40(sp)
    114c:	00412503          	lw	a0,4(sp)
    1150:	02412483          	lw	s1,36(sp)
    1154:	02012903          	lw	s2,32(sp)
    1158:	01c12983          	lw	s3,28(sp)
    115c:	01812a03          	lw	s4,24(sp)
    1160:	01412a83          	lw	s5,20(sp)
    1164:	01012b03          	lw	s6,16(sp)
    1168:	03010113          	addi	sp,sp,48
    116c:	00008067          	ret

00001170 <initialise_benchmark>:
    1170:	00008067          	ret

00001174 <warm_caches>:
    1174:	ff010113          	addi	sp,sp,-16
    1178:	00112623          	sw	ra,12(sp)
    117c:	f3dff0ef          	jal	ra,10b8 <benchmark_body>
    1180:	00c12083          	lw	ra,12(sp)
    1184:	01010113          	addi	sp,sp,16
    1188:	00008067          	ret

0000118c <benchmark>:
    118c:	00003537          	lui	a0,0x3
    1190:	ff010113          	addi	sp,sp,-16
    1194:	32c50513          	addi	a0,a0,812 # 332c <main+0x1f78>
    1198:	00112623          	sw	ra,12(sp)
    119c:	f1dff0ef          	jal	ra,10b8 <benchmark_body>
    11a0:	00c12083          	lw	ra,12(sp)
    11a4:	01010113          	addi	sp,sp,16
    11a8:	00008067          	ret

000011ac <verify_benchmark>:
    11ac:	f9a50513          	addi	a0,a0,-102
    11b0:	00153513          	seqz	a0,a0
    11b4:	00008067          	ret

000011b8 <strchr>:
    11b8:	0ff5f693          	zext.b	a3,a1
    11bc:	0c068863          	beqz	a3,128c <strchr+0xd4>
    11c0:	00357793          	andi	a5,a0,3
    11c4:	00078e63          	beqz	a5,11e0 <strchr+0x28>
    11c8:	00054783          	lbu	a5,0(a0)
    11cc:	14078863          	beqz	a5,131c <strchr+0x164>
    11d0:	0ad78c63          	beq	a5,a3,1288 <strchr+0xd0>
    11d4:	00150513          	addi	a0,a0,1
    11d8:	00357793          	andi	a5,a0,3
    11dc:	fe0796e3          	bnez	a5,11c8 <strchr+0x10>
    11e0:	0ff5f593          	zext.b	a1,a1
    11e4:	00859793          	slli	a5,a1,0x8
    11e8:	00b7e7b3          	or	a5,a5,a1
    11ec:	01079813          	slli	a6,a5,0x10
    11f0:	00f86833          	or	a6,a6,a5
    11f4:	00052603          	lw	a2,0(a0)
    11f8:	00c845b3          	xor	a1,a6,a2
    11fc:	feff07b7          	lui	a5,0xfeff0
    1200:	eff78793          	addi	a5,a5,-257 # fefefeff <start_time+0xfefdfd77>
    1204:	00f60733          	add	a4,a2,a5
    1208:	fff64613          	not	a2,a2
    120c:	00c77733          	and	a4,a4,a2
    1210:	00f587b3          	add	a5,a1,a5
    1214:	fff5c593          	not	a1,a1
    1218:	00b7f7b3          	and	a5,a5,a1
    121c:	00f767b3          	or	a5,a4,a5
    1220:	80808737          	lui	a4,0x80808
    1224:	08070713          	addi	a4,a4,128 # 80808080 <start_time+0x807f7ef8>
    1228:	00e7f7b3          	and	a5,a5,a4
    122c:	04079063          	bnez	a5,126c <strchr+0xb4>
    1230:	feff05b7          	lui	a1,0xfeff0
    1234:	eff58593          	addi	a1,a1,-257 # fefefeff <start_time+0xfefdfd77>
    1238:	00070893          	mv	a7,a4
    123c:	00450513          	addi	a0,a0,4
    1240:	00052703          	lw	a4,0(a0)
    1244:	01074633          	xor	a2,a4,a6
    1248:	00b707b3          	add	a5,a4,a1
    124c:	fff74713          	not	a4,a4
    1250:	00e7f7b3          	and	a5,a5,a4
    1254:	00b60733          	add	a4,a2,a1
    1258:	fff64613          	not	a2,a2
    125c:	00c77733          	and	a4,a4,a2
    1260:	00e7e7b3          	or	a5,a5,a4
    1264:	0117f7b3          	and	a5,a5,a7
    1268:	fc078ae3          	beqz	a5,123c <strchr+0x84>
    126c:	00054783          	lbu	a5,0(a0)
    1270:	0a078063          	beqz	a5,1310 <strchr+0x158>
    1274:	0af68263          	beq	a3,a5,1318 <strchr+0x160>
    1278:	00150513          	addi	a0,a0,1
    127c:	00054783          	lbu	a5,0(a0)
    1280:	fe079ae3          	bnez	a5,1274 <strchr+0xbc>
    1284:	00000513          	li	a0,0
    1288:	00008067          	ret
    128c:	00357793          	andi	a5,a0,3
    1290:	00078c63          	beqz	a5,12a8 <strchr+0xf0>
    1294:	00054783          	lbu	a5,0(a0)
    1298:	fe0788e3          	beqz	a5,1288 <strchr+0xd0>
    129c:	00150513          	addi	a0,a0,1
    12a0:	00357793          	andi	a5,a0,3
    12a4:	fe0798e3          	bnez	a5,1294 <strchr+0xdc>
    12a8:	00052703          	lw	a4,0(a0)
    12ac:	feff07b7          	lui	a5,0xfeff0
    12b0:	eff78793          	addi	a5,a5,-257 # fefefeff <start_time+0xfefdfd77>
    12b4:	00f707b3          	add	a5,a4,a5
    12b8:	fff74713          	not	a4,a4
    12bc:	00e7f7b3          	and	a5,a5,a4
    12c0:	80808737          	lui	a4,0x80808
    12c4:	08070713          	addi	a4,a4,128 # 80808080 <start_time+0x807f7ef8>
    12c8:	00e7f7b3          	and	a5,a5,a4
    12cc:	02079663          	bnez	a5,12f8 <strchr+0x140>
    12d0:	feff0637          	lui	a2,0xfeff0
    12d4:	eff60613          	addi	a2,a2,-257 # fefefeff <start_time+0xfefdfd77>
    12d8:	00070693          	mv	a3,a4
    12dc:	00450513          	addi	a0,a0,4
    12e0:	00052703          	lw	a4,0(a0)
    12e4:	00c707b3          	add	a5,a4,a2
    12e8:	fff74713          	not	a4,a4
    12ec:	00e7f7b3          	and	a5,a5,a4
    12f0:	00d7f7b3          	and	a5,a5,a3
    12f4:	fe0784e3          	beqz	a5,12dc <strchr+0x124>
    12f8:	00054783          	lbu	a5,0(a0)
    12fc:	f80786e3          	beqz	a5,1288 <strchr+0xd0>
    1300:	00150513          	addi	a0,a0,1
    1304:	00054783          	lbu	a5,0(a0)
    1308:	fe079ce3          	bnez	a5,1300 <strchr+0x148>
    130c:	00008067          	ret
    1310:	00000513          	li	a0,0
    1314:	00008067          	ret
    1318:	00008067          	ret
    131c:	00000513          	li	a0,0
    1320:	00008067          	ret

00001324 <strlen>:
    1324:	00357793          	andi	a5,a0,3
    1328:	00050713          	mv	a4,a0
    132c:	04079a63          	bnez	a5,1380 <strlen+0x5c>
    1330:	7f7f86b7          	lui	a3,0x7f7f8
    1334:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <start_time+0x7f7e7df7>
    1338:	fff00593          	li	a1,-1
    133c:	00470713          	addi	a4,a4,4
    1340:	ffc72603          	lw	a2,-4(a4)
    1344:	00d677b3          	and	a5,a2,a3
    1348:	00d787b3          	add	a5,a5,a3
    134c:	00c7e7b3          	or	a5,a5,a2
    1350:	00d7e7b3          	or	a5,a5,a3
    1354:	feb784e3          	beq	a5,a1,133c <strlen+0x18>
    1358:	40a707b3          	sub	a5,a4,a0
    135c:	ffc74683          	lbu	a3,-4(a4)
    1360:	04068263          	beqz	a3,13a4 <strlen+0x80>
    1364:	ffd74683          	lbu	a3,-3(a4)
    1368:	04068263          	beqz	a3,13ac <strlen+0x88>
    136c:	ffe74503          	lbu	a0,-2(a4)
    1370:	00a03533          	snez	a0,a0
    1374:	00f50533          	add	a0,a0,a5
    1378:	ffe50513          	addi	a0,a0,-2
    137c:	00008067          	ret
    1380:	00074783          	lbu	a5,0(a4)
    1384:	00170713          	addi	a4,a4,1
    1388:	00078863          	beqz	a5,1398 <strlen+0x74>
    138c:	00377793          	andi	a5,a4,3
    1390:	fe0798e3          	bnez	a5,1380 <strlen+0x5c>
    1394:	f9dff06f          	j	1330 <strlen+0xc>
    1398:	40a70733          	sub	a4,a4,a0
    139c:	fff70513          	addi	a0,a4,-1
    13a0:	00008067          	ret
    13a4:	ffc78513          	addi	a0,a5,-4
    13a8:	00008067          	ret
    13ac:	ffd78513          	addi	a0,a5,-3
    13b0:	00008067          	ret

Disassembly of section .text.startup:

000013b4 <main>:
    13b4:	fe010113          	addi	sp,sp,-32
    13b8:	00112e23          	sw	ra,28(sp)
    13bc:	d05fe0ef          	jal	ra,c0 <initialise_board>
    13c0:	db1ff0ef          	jal	ra,1170 <initialise_benchmark>
    13c4:	00100513          	li	a0,1
    13c8:	dadff0ef          	jal	ra,1174 <warm_caches>
    13cc:	cf9fe0ef          	jal	ra,c4 <start_trigger>
    13d0:	dbdff0ef          	jal	ra,118c <benchmark>
    13d4:	00a12623          	sw	a0,12(sp)
    13d8:	d19fe0ef          	jal	ra,f0 <stop_trigger>
    13dc:	00c12503          	lw	a0,12(sp)
    13e0:	dcdff0ef          	jal	ra,11ac <verify_benchmark>
    13e4:	00051a63          	bnez	a0,13f8 <main+0x44>
    13e8:	110007b7          	lui	a5,0x11000
    13ec:	fff00713          	li	a4,-1
    13f0:	00e7a823          	sw	a4,16(a5) # 11000010 <start_time+0x10fefe88>
    13f4:	00e7aa23          	sw	a4,20(a5)
    13f8:	110007b7          	lui	a5,0x11000
    13fc:	00100713          	li	a4,1
    1400:	08e7a023          	sw	a4,128(a5) # 11000080 <start_time+0x10fefef8>
    1404:	0000006f          	j	1404 <main+0x50>
