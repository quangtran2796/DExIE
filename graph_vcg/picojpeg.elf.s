
picojpeg.elf:     file format elf32-littleriscv


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
  84:	795030ef          	jal	ra,4018 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <gLastDC+0x10fef25c>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <gLastDC+0x10fef25c>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <gLastDC+0x10fef2dc>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <gLastDC+0xf24c>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	d4a7a023          	sw	a0,-704(a5) # 10d40 <start_time>
      e4:	d4e7a223          	sw	a4,-700(a5)
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
     114:	d407a583          	lw	a1,-704(a5) # 10d40 <start_time>
     118:	d447a703          	lw	a4,-700(a5)
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

00000150 <pjpeg_need_bytes_callback>:
     150:	ff010113          	addi	sp,sp,-16
     154:	00912223          	sw	s1,4(sp)
     158:	000114b7          	lui	s1,0x11
     15c:	d484a783          	lw	a5,-696(s1) # 10d48 <jpeg_off>
     160:	00812423          	sw	s0,8(sp)
     164:	23a00413          	li	s0,570
     168:	01212023          	sw	s2,0(sp)
     16c:	00112623          	sw	ra,12(sp)
     170:	40f40433          	sub	s0,s0,a5
     174:	00060913          	mv	s2,a2
     178:	0085f463          	bgeu	a1,s0,180 <pjpeg_need_bytes_callback+0x30>
     17c:	00058413          	mv	s0,a1
     180:	000105b7          	lui	a1,0x10
     184:	00058593          	mv	a1,a1
     188:	00040613          	mv	a2,s0
     18c:	00f585b3          	add	a1,a1,a5
     190:	50d030ef          	jal	ra,3e9c <memcpy>
     194:	00890023          	sb	s0,0(s2)
     198:	d484a783          	lw	a5,-696(s1)
     19c:	00c12083          	lw	ra,12(sp)
     1a0:	00012903          	lw	s2,0(sp)
     1a4:	008787b3          	add	a5,a5,s0
     1a8:	00812403          	lw	s0,8(sp)
     1ac:	d4f4a423          	sw	a5,-696(s1)
     1b0:	00000513          	li	a0,0
     1b4:	00412483          	lw	s1,4(sp)
     1b8:	01010113          	addi	sp,sp,16
     1bc:	00008067          	ret

000001c0 <benchmark_body>:
     1c0:	08a05463          	blez	a0,248 <benchmark_body+0x88>
     1c4:	fe010113          	addi	sp,sp,-32
     1c8:	00812c23          	sw	s0,24(sp)
     1cc:	00912a23          	sw	s1,20(sp)
     1d0:	01212823          	sw	s2,16(sp)
     1d4:	01312623          	sw	s3,12(sp)
     1d8:	01412423          	sw	s4,8(sp)
     1dc:	01512223          	sw	s5,4(sp)
     1e0:	00112e23          	sw	ra,28(sp)
     1e4:	00050913          	mv	s2,a0
     1e8:	00000493          	li	s1,0
     1ec:	00011ab7          	lui	s5,0x11
     1f0:	00010a37          	lui	s4,0x10
     1f4:	00100413          	li	s0,1
     1f8:	00000693          	li	a3,0
     1fc:	00000613          	li	a2,0
     200:	15000593          	li	a1,336
     204:	434a0513          	addi	a0,s4,1076 # 10434 <pInfo>
     208:	d40aa423          	sw	zero,-696(s5) # 10d48 <jpeg_off>
     20c:	1c8030ef          	jal	ra,33d4 <pjpeg_decode_init>
     210:	44c010ef          	jal	ra,165c <pjpeg_decode_mcu>
     214:	fe851ee3          	bne	a0,s0,210 <benchmark_body+0x50>
     218:	00148493          	addi	s1,s1,1
     21c:	fc991ee3          	bne	s2,s1,1f8 <benchmark_body+0x38>
     220:	01c12083          	lw	ra,28(sp)
     224:	01812403          	lw	s0,24(sp)
     228:	01412483          	lw	s1,20(sp)
     22c:	01012903          	lw	s2,16(sp)
     230:	00c12983          	lw	s3,12(sp)
     234:	00812a03          	lw	s4,8(sp)
     238:	00412a83          	lw	s5,4(sp)
     23c:	00000513          	li	a0,0
     240:	02010113          	addi	sp,sp,32
     244:	00008067          	ret
     248:	00000513          	li	a0,0
     24c:	00008067          	ret

00000250 <verify_benchmark>:
     250:	ff010113          	addi	sp,sp,-16
     254:	01212023          	sw	s2,0(sp)
     258:	00010937          	lui	s2,0x10
     25c:	43490913          	addi	s2,s2,1076 # 10434 <pInfo>
     260:	00912223          	sw	s1,4(sp)
     264:	02092503          	lw	a0,32(s2)
     268:	000104b7          	lui	s1,0x10
     26c:	00048493          	mv	s1,s1
     270:	04000613          	li	a2,64
     274:	23c48593          	addi	a1,s1,572 # 1023c <r_ref.2>
     278:	00812423          	sw	s0,8(sp)
     27c:	00112623          	sw	ra,12(sp)
     280:	39d030ef          	jal	ra,3e1c <memcmp>
     284:	00000413          	li	s0,0
     288:	02051863          	bnez	a0,2b8 <verify_benchmark+0x68>
     28c:	00050413          	mv	s0,a0
     290:	02492503          	lw	a0,36(s2)
     294:	04000613          	li	a2,64
     298:	27c48593          	addi	a1,s1,636
     29c:	381030ef          	jal	ra,3e1c <memcmp>
     2a0:	00051c63          	bnez	a0,2b8 <verify_benchmark+0x68>
     2a4:	02892503          	lw	a0,40(s2)
     2a8:	04000613          	li	a2,64
     2ac:	2bc48593          	addi	a1,s1,700
     2b0:	36d030ef          	jal	ra,3e1c <memcmp>
     2b4:	00153413          	seqz	s0,a0
     2b8:	00c12083          	lw	ra,12(sp)
     2bc:	00040513          	mv	a0,s0
     2c0:	00812403          	lw	s0,8(sp)
     2c4:	00412483          	lw	s1,4(sp)
     2c8:	00012903          	lw	s2,0(sp)
     2cc:	01010113          	addi	sp,sp,16
     2d0:	00008067          	ret

000002d4 <initialise_benchmark>:
     2d4:	00008067          	ret

000002d8 <warm_caches>:
     2d8:	ff010113          	addi	sp,sp,-16
     2dc:	00112623          	sw	ra,12(sp)
     2e0:	ee1ff0ef          	jal	ra,1c0 <benchmark_body>
     2e4:	00c12083          	lw	ra,12(sp)
     2e8:	01010113          	addi	sp,sp,16
     2ec:	00008067          	ret

000002f0 <benchmark>:
     2f0:	ff010113          	addi	sp,sp,-16
     2f4:	1f400513          	li	a0,500
     2f8:	00112623          	sw	ra,12(sp)
     2fc:	ec5ff0ef          	jal	ra,1c0 <benchmark_body>
     300:	00c12083          	lw	ra,12(sp)
     304:	01010113          	addi	sp,sp,16
     308:	00008067          	ret

0000030c <upsampleCb>:
     30c:	00010337          	lui	t1,0x10
     310:	46030313          	addi	t1,t1,1120 # 10460 <gCoeffBuf>
     314:	00151e93          	slli	t4,a0,0x1
     318:	01d30eb3          	add	t4,t1,t4
     31c:	08030e13          	addi	t3,t1,128
     320:	18030313          	addi	t1,t1,384
     324:	008e8893          	addi	a7,t4,8
     328:	00be0e33          	add	t3,t3,a1
     32c:	00b30333          	add	t1,t1,a1
     330:	048e8e93          	addi	t4,t4,72
     334:	0ff00693          	li	a3,255
     338:	ff888813          	addi	a6,a7,-8
     33c:	00030593          	mv	a1,t1
     340:	000e0613          	mv	a2,t3
     344:	00081783          	lh	a5,0(a6)
     348:	00064f03          	lbu	t5,0(a2)
     34c:	00280813          	addi	a6,a6,2
     350:	0ff7ff93          	zext.b	t6,a5
     354:	001f9513          	slli	a0,t6,0x1
     358:	01f50733          	add	a4,a0,t6
     35c:	00271713          	slli	a4,a4,0x2
     360:	41f70733          	sub	a4,a4,t6
     364:	00371713          	slli	a4,a4,0x3
     368:	00875713          	srli	a4,a4,0x8
     36c:	fd470713          	addi	a4,a4,-44
     370:	01071713          	slli	a4,a4,0x10
     374:	01075713          	srli	a4,a4,0x10
     378:	40ef0f33          	sub	t5,t5,a4
     37c:	010f1f13          	slli	t5,t5,0x10
     380:	010f5f13          	srli	t5,t5,0x10
     384:	01e6fe63          	bgeu	a3,t5,3a0 <upsampleCb+0x94>
     388:	010f1393          	slli	t2,t5,0x10
     38c:	4103d393          	srai	t2,t2,0x10
     390:	00000293          	li	t0,0
     394:	0003c863          	bltz	t2,3a4 <upsampleCb+0x98>
     398:	0ff00293          	li	t0,255
     39c:	0076c463          	blt	a3,t2,3a4 <upsampleCb+0x98>
     3a0:	0fff7293          	zext.b	t0,t5
     3a4:	00164f03          	lbu	t5,1(a2)
     3a8:	00560023          	sb	t0,0(a2)
     3ac:	40ef0f33          	sub	t5,t5,a4
     3b0:	010f1f13          	slli	t5,t5,0x10
     3b4:	010f5f13          	srli	t5,t5,0x10
     3b8:	01e6fe63          	bgeu	a3,t5,3d4 <upsampleCb+0xc8>
     3bc:	010f1393          	slli	t2,t5,0x10
     3c0:	4103d393          	srai	t2,t2,0x10
     3c4:	00000293          	li	t0,0
     3c8:	0003c863          	bltz	t2,3d8 <upsampleCb+0xcc>
     3cc:	0ff00293          	li	t0,255
     3d0:	0076c463          	blt	a3,t2,3d8 <upsampleCb+0xcc>
     3d4:	0fff7293          	zext.b	t0,t5
     3d8:	00864f03          	lbu	t5,8(a2)
     3dc:	005600a3          	sb	t0,1(a2)
     3e0:	40ef0f33          	sub	t5,t5,a4
     3e4:	010f1f13          	slli	t5,t5,0x10
     3e8:	010f5f13          	srli	t5,t5,0x10
     3ec:	01e6fe63          	bgeu	a3,t5,408 <upsampleCb+0xfc>
     3f0:	010f1393          	slli	t2,t5,0x10
     3f4:	4103d393          	srai	t2,t2,0x10
     3f8:	00000293          	li	t0,0
     3fc:	0003c863          	bltz	t2,40c <upsampleCb+0x100>
     400:	0ff00293          	li	t0,255
     404:	0076c463          	blt	a3,t2,40c <upsampleCb+0x100>
     408:	0fff7293          	zext.b	t0,t5
     40c:	00964f03          	lbu	t5,9(a2)
     410:	00560423          	sb	t0,8(a2)
     414:	40ef0733          	sub	a4,t5,a4
     418:	01071713          	slli	a4,a4,0x10
     41c:	01075713          	srli	a4,a4,0x10
     420:	00e6fe63          	bgeu	a3,a4,43c <upsampleCb+0x130>
     424:	01071293          	slli	t0,a4,0x10
     428:	4102d293          	srai	t0,t0,0x10
     42c:	00000f13          	li	t5,0
     430:	0002c863          	bltz	t0,440 <upsampleCb+0x134>
     434:	0ff00f13          	li	t5,255
     438:	0056c463          	blt	a3,t0,440 <upsampleCb+0x134>
     43c:	0ff77f13          	zext.b	t5,a4
     440:	01f50733          	add	a4,a0,t6
     444:	00571513          	slli	a0,a4,0x5
     448:	00a70733          	add	a4,a4,a0
     44c:	0ff7f793          	zext.b	a5,a5
     450:	00775713          	srli	a4,a4,0x7
     454:	f1d78793          	addi	a5,a5,-227
     458:	00e787b3          	add	a5,a5,a4
     45c:	0005c503          	lbu	a0,0(a1) # 10000 <jpeg_data>
     460:	01079793          	slli	a5,a5,0x10
     464:	0107d793          	srli	a5,a5,0x10
     468:	00a78733          	add	a4,a5,a0
     46c:	01071713          	slli	a4,a4,0x10
     470:	01e604a3          	sb	t5,9(a2)
     474:	01075713          	srli	a4,a4,0x10
     478:	00e6fe63          	bgeu	a3,a4,494 <upsampleCb+0x188>
     47c:	01071f13          	slli	t5,a4,0x10
     480:	410f5f13          	srai	t5,t5,0x10
     484:	00000513          	li	a0,0
     488:	000f4863          	bltz	t5,498 <upsampleCb+0x18c>
     48c:	0ff00513          	li	a0,255
     490:	01e6c463          	blt	a3,t5,498 <upsampleCb+0x18c>
     494:	0ff77513          	zext.b	a0,a4
     498:	0015c703          	lbu	a4,1(a1)
     49c:	00a58023          	sb	a0,0(a1)
     4a0:	00e78733          	add	a4,a5,a4
     4a4:	01071713          	slli	a4,a4,0x10
     4a8:	01075713          	srli	a4,a4,0x10
     4ac:	00e6fe63          	bgeu	a3,a4,4c8 <upsampleCb+0x1bc>
     4b0:	01071f13          	slli	t5,a4,0x10
     4b4:	410f5f13          	srai	t5,t5,0x10
     4b8:	00000513          	li	a0,0
     4bc:	000f4863          	bltz	t5,4cc <upsampleCb+0x1c0>
     4c0:	0ff00513          	li	a0,255
     4c4:	01e6c463          	blt	a3,t5,4cc <upsampleCb+0x1c0>
     4c8:	0ff77513          	zext.b	a0,a4
     4cc:	0085c703          	lbu	a4,8(a1)
     4d0:	00a580a3          	sb	a0,1(a1)
     4d4:	00e78733          	add	a4,a5,a4
     4d8:	01071713          	slli	a4,a4,0x10
     4dc:	01075713          	srli	a4,a4,0x10
     4e0:	00e6fe63          	bgeu	a3,a4,4fc <upsampleCb+0x1f0>
     4e4:	01071f13          	slli	t5,a4,0x10
     4e8:	410f5f13          	srai	t5,t5,0x10
     4ec:	00000513          	li	a0,0
     4f0:	000f4863          	bltz	t5,500 <upsampleCb+0x1f4>
     4f4:	0ff00513          	li	a0,255
     4f8:	01e6c463          	blt	a3,t5,500 <upsampleCb+0x1f4>
     4fc:	0ff77513          	zext.b	a0,a4
     500:	0095c703          	lbu	a4,9(a1)
     504:	00a58423          	sb	a0,8(a1)
     508:	00e787b3          	add	a5,a5,a4
     50c:	01079793          	slli	a5,a5,0x10
     510:	0107d793          	srli	a5,a5,0x10
     514:	00f6fe63          	bgeu	a3,a5,530 <upsampleCb+0x224>
     518:	01079513          	slli	a0,a5,0x10
     51c:	41055513          	srai	a0,a0,0x10
     520:	00000713          	li	a4,0
     524:	00054863          	bltz	a0,534 <upsampleCb+0x228>
     528:	0ff00713          	li	a4,255
     52c:	00a6c463          	blt	a3,a0,534 <upsampleCb+0x228>
     530:	0ff7f713          	zext.b	a4,a5
     534:	00e584a3          	sb	a4,9(a1)
     538:	00260613          	addi	a2,a2,2
     53c:	00258593          	addi	a1,a1,2
     540:	e11812e3          	bne	a6,a7,344 <upsampleCb+0x38>
     544:	01080893          	addi	a7,a6,16
     548:	010e0e13          	addi	t3,t3,16
     54c:	01030313          	addi	t1,t1,16
     550:	df1e94e3          	bne	t4,a7,338 <upsampleCb+0x2c>
     554:	00008067          	ret

00000558 <upsampleCbH>:
     558:	00010337          	lui	t1,0x10
     55c:	46030313          	addi	t1,t1,1120 # 10460 <gCoeffBuf>
     560:	00151e93          	slli	t4,a0,0x1
     564:	01d30eb3          	add	t4,t1,t4
     568:	08030e13          	addi	t3,t1,128
     56c:	18030313          	addi	t1,t1,384
     570:	008e8893          	addi	a7,t4,8
     574:	00be0e33          	add	t3,t3,a1
     578:	00b30333          	add	t1,t1,a1
     57c:	088e8e93          	addi	t4,t4,136
     580:	0ff00513          	li	a0,255
     584:	ff888813          	addi	a6,a7,-8
     588:	00030593          	mv	a1,t1
     58c:	000e0613          	mv	a2,t3
     590:	00081783          	lh	a5,0(a6)
     594:	00064f03          	lbu	t5,0(a2)
     598:	00280813          	addi	a6,a6,2
     59c:	0ff7ff93          	zext.b	t6,a5
     5a0:	001f9693          	slli	a3,t6,0x1
     5a4:	01f68733          	add	a4,a3,t6
     5a8:	00271713          	slli	a4,a4,0x2
     5ac:	41f70733          	sub	a4,a4,t6
     5b0:	00371713          	slli	a4,a4,0x3
     5b4:	00875713          	srli	a4,a4,0x8
     5b8:	fd470713          	addi	a4,a4,-44
     5bc:	01071713          	slli	a4,a4,0x10
     5c0:	01075713          	srli	a4,a4,0x10
     5c4:	40ef0f33          	sub	t5,t5,a4
     5c8:	010f1f13          	slli	t5,t5,0x10
     5cc:	010f5f13          	srli	t5,t5,0x10
     5d0:	01e57e63          	bgeu	a0,t5,5ec <upsampleCbH+0x94>
     5d4:	010f1393          	slli	t2,t5,0x10
     5d8:	4103d393          	srai	t2,t2,0x10
     5dc:	00000293          	li	t0,0
     5e0:	0003c863          	bltz	t2,5f0 <upsampleCbH+0x98>
     5e4:	0ff00293          	li	t0,255
     5e8:	00754463          	blt	a0,t2,5f0 <upsampleCbH+0x98>
     5ec:	0fff7293          	zext.b	t0,t5
     5f0:	00164f03          	lbu	t5,1(a2)
     5f4:	00560023          	sb	t0,0(a2)
     5f8:	40ef0733          	sub	a4,t5,a4
     5fc:	01071713          	slli	a4,a4,0x10
     600:	01075713          	srli	a4,a4,0x10
     604:	00e57e63          	bgeu	a0,a4,620 <upsampleCbH+0xc8>
     608:	01071293          	slli	t0,a4,0x10
     60c:	4102d293          	srai	t0,t0,0x10
     610:	00000f13          	li	t5,0
     614:	0002c863          	bltz	t0,624 <upsampleCbH+0xcc>
     618:	0ff00f13          	li	t5,255
     61c:	00554463          	blt	a0,t0,624 <upsampleCbH+0xcc>
     620:	0ff77f13          	zext.b	t5,a4
     624:	01f68733          	add	a4,a3,t6
     628:	00571693          	slli	a3,a4,0x5
     62c:	00d70733          	add	a4,a4,a3
     630:	0ff7f793          	zext.b	a5,a5
     634:	00775713          	srli	a4,a4,0x7
     638:	f1d78793          	addi	a5,a5,-227
     63c:	00e787b3          	add	a5,a5,a4
     640:	0005c683          	lbu	a3,0(a1)
     644:	01079793          	slli	a5,a5,0x10
     648:	0107d793          	srli	a5,a5,0x10
     64c:	00d78733          	add	a4,a5,a3
     650:	01071713          	slli	a4,a4,0x10
     654:	01e600a3          	sb	t5,1(a2)
     658:	01075713          	srli	a4,a4,0x10
     65c:	00e57e63          	bgeu	a0,a4,678 <upsampleCbH+0x120>
     660:	01071f13          	slli	t5,a4,0x10
     664:	410f5f13          	srai	t5,t5,0x10
     668:	00000693          	li	a3,0
     66c:	000f4863          	bltz	t5,67c <upsampleCbH+0x124>
     670:	0ff00693          	li	a3,255
     674:	01e54463          	blt	a0,t5,67c <upsampleCbH+0x124>
     678:	0ff77693          	zext.b	a3,a4
     67c:	0015c703          	lbu	a4,1(a1)
     680:	00d58023          	sb	a3,0(a1)
     684:	00e787b3          	add	a5,a5,a4
     688:	01079793          	slli	a5,a5,0x10
     68c:	0107d793          	srli	a5,a5,0x10
     690:	00f57e63          	bgeu	a0,a5,6ac <upsampleCbH+0x154>
     694:	01079693          	slli	a3,a5,0x10
     698:	4106d693          	srai	a3,a3,0x10
     69c:	00000713          	li	a4,0
     6a0:	0006c863          	bltz	a3,6b0 <upsampleCbH+0x158>
     6a4:	0ff00713          	li	a4,255
     6a8:	00d54463          	blt	a0,a3,6b0 <upsampleCbH+0x158>
     6ac:	0ff7f713          	zext.b	a4,a5
     6b0:	00e580a3          	sb	a4,1(a1)
     6b4:	00260613          	addi	a2,a2,2
     6b8:	00258593          	addi	a1,a1,2
     6bc:	ed181ae3          	bne	a6,a7,590 <upsampleCbH+0x38>
     6c0:	01080893          	addi	a7,a6,16
     6c4:	008e0e13          	addi	t3,t3,8
     6c8:	00830313          	addi	t1,t1,8
     6cc:	eb1e9ce3          	bne	t4,a7,584 <upsampleCbH+0x2c>
     6d0:	00008067          	ret

000006d4 <upsampleCbV>:
     6d4:	000108b7          	lui	a7,0x10
     6d8:	46088893          	addi	a7,a7,1120 # 10460 <gCoeffBuf>
     6dc:	08088313          	addi	t1,a7,128
     6e0:	00151513          	slli	a0,a0,0x1
     6e4:	18088e13          	addi	t3,a7,384
     6e8:	01050513          	addi	a0,a0,16
     6ec:	00b30333          	add	t1,t1,a1
     6f0:	00a888b3          	add	a7,a7,a0
     6f4:	00be0e33          	add	t3,t3,a1
     6f8:	04030e93          	addi	t4,t1,64
     6fc:	0ff00513          	li	a0,255
     700:	ff088813          	addi	a6,a7,-16
     704:	000e0593          	mv	a1,t3
     708:	00030613          	mv	a2,t1
     70c:	00081783          	lh	a5,0(a6)
     710:	00064f03          	lbu	t5,0(a2)
     714:	00280813          	addi	a6,a6,2
     718:	0ff7ff93          	zext.b	t6,a5
     71c:	001f9693          	slli	a3,t6,0x1
     720:	01f68733          	add	a4,a3,t6
     724:	00271713          	slli	a4,a4,0x2
     728:	41f70733          	sub	a4,a4,t6
     72c:	00371713          	slli	a4,a4,0x3
     730:	00875713          	srli	a4,a4,0x8
     734:	fd470713          	addi	a4,a4,-44
     738:	01071713          	slli	a4,a4,0x10
     73c:	01075713          	srli	a4,a4,0x10
     740:	40ef0f33          	sub	t5,t5,a4
     744:	010f1f13          	slli	t5,t5,0x10
     748:	010f5f13          	srli	t5,t5,0x10
     74c:	01e57e63          	bgeu	a0,t5,768 <upsampleCbV+0x94>
     750:	010f1393          	slli	t2,t5,0x10
     754:	4103d393          	srai	t2,t2,0x10
     758:	00000293          	li	t0,0
     75c:	0003c863          	bltz	t2,76c <upsampleCbV+0x98>
     760:	0ff00293          	li	t0,255
     764:	00754463          	blt	a0,t2,76c <upsampleCbV+0x98>
     768:	0fff7293          	zext.b	t0,t5
     76c:	00864f03          	lbu	t5,8(a2)
     770:	00560023          	sb	t0,0(a2)
     774:	40ef0733          	sub	a4,t5,a4
     778:	01071713          	slli	a4,a4,0x10
     77c:	01075713          	srli	a4,a4,0x10
     780:	00e57e63          	bgeu	a0,a4,79c <upsampleCbV+0xc8>
     784:	01071293          	slli	t0,a4,0x10
     788:	4102d293          	srai	t0,t0,0x10
     78c:	00000f13          	li	t5,0
     790:	0002c863          	bltz	t0,7a0 <upsampleCbV+0xcc>
     794:	0ff00f13          	li	t5,255
     798:	00554463          	blt	a0,t0,7a0 <upsampleCbV+0xcc>
     79c:	0ff77f13          	zext.b	t5,a4
     7a0:	01f68733          	add	a4,a3,t6
     7a4:	00571693          	slli	a3,a4,0x5
     7a8:	00d70733          	add	a4,a4,a3
     7ac:	0ff7f793          	zext.b	a5,a5
     7b0:	00775713          	srli	a4,a4,0x7
     7b4:	f1d78793          	addi	a5,a5,-227
     7b8:	00e787b3          	add	a5,a5,a4
     7bc:	0005c683          	lbu	a3,0(a1)
     7c0:	01079793          	slli	a5,a5,0x10
     7c4:	0107d793          	srli	a5,a5,0x10
     7c8:	00d78733          	add	a4,a5,a3
     7cc:	01071713          	slli	a4,a4,0x10
     7d0:	01e60423          	sb	t5,8(a2)
     7d4:	01075713          	srli	a4,a4,0x10
     7d8:	00e57e63          	bgeu	a0,a4,7f4 <upsampleCbV+0x120>
     7dc:	01071f13          	slli	t5,a4,0x10
     7e0:	410f5f13          	srai	t5,t5,0x10
     7e4:	00000693          	li	a3,0
     7e8:	000f4863          	bltz	t5,7f8 <upsampleCbV+0x124>
     7ec:	0ff00693          	li	a3,255
     7f0:	01e54463          	blt	a0,t5,7f8 <upsampleCbV+0x124>
     7f4:	0ff77693          	zext.b	a3,a4
     7f8:	0085c703          	lbu	a4,8(a1)
     7fc:	00d58023          	sb	a3,0(a1)
     800:	00e787b3          	add	a5,a5,a4
     804:	01079793          	slli	a5,a5,0x10
     808:	0107d793          	srli	a5,a5,0x10
     80c:	00f57e63          	bgeu	a0,a5,828 <upsampleCbV+0x154>
     810:	01079693          	slli	a3,a5,0x10
     814:	4106d693          	srai	a3,a3,0x10
     818:	00000713          	li	a4,0
     81c:	0006c863          	bltz	a3,82c <upsampleCbV+0x158>
     820:	0ff00713          	li	a4,255
     824:	00d54463          	blt	a0,a3,82c <upsampleCbV+0x158>
     828:	0ff7f713          	zext.b	a4,a5
     82c:	00e58423          	sb	a4,8(a1)
     830:	00160613          	addi	a2,a2,1
     834:	00158593          	addi	a1,a1,1
     838:	ed181ae3          	bne	a6,a7,70c <upsampleCbV+0x38>
     83c:	01030313          	addi	t1,t1,16
     840:	010e0e13          	addi	t3,t3,16
     844:	01080893          	addi	a7,a6,16
     848:	ebd31ce3          	bne	t1,t4,700 <upsampleCbV+0x2c>
     84c:	00008067          	ret

00000850 <upsampleCr>:
     850:	00010337          	lui	t1,0x10
     854:	46030313          	addi	t1,t1,1120 # 10460 <gCoeffBuf>
     858:	00151e93          	slli	t4,a0,0x1
     85c:	01d30eb3          	add	t4,t1,t4
     860:	28030e13          	addi	t3,t1,640
     864:	08030313          	addi	t1,t1,128
     868:	008e8893          	addi	a7,t4,8
     86c:	00be0e33          	add	t3,t3,a1
     870:	00b30333          	add	t1,t1,a1
     874:	048e8e93          	addi	t4,t4,72
     878:	0ff00613          	li	a2,255
     87c:	ff888813          	addi	a6,a7,-8
     880:	00030513          	mv	a0,t1
     884:	000e0593          	mv	a1,t3
     888:	00081703          	lh	a4,0(a6)
     88c:	0005cf83          	lbu	t6,0(a1)
     890:	00280813          	addi	a6,a6,2
     894:	0ff77f13          	zext.b	t5,a4
     898:	001f1793          	slli	a5,t5,0x1
     89c:	01e786b3          	add	a3,a5,t5
     8a0:	00269693          	slli	a3,a3,0x2
     8a4:	01e686b3          	add	a3,a3,t5
     8a8:	00369693          	slli	a3,a3,0x3
     8ac:	0ff77713          	zext.b	a4,a4
     8b0:	41e686b3          	sub	a3,a3,t5
     8b4:	0086d693          	srli	a3,a3,0x8
     8b8:	f4d70713          	addi	a4,a4,-179
     8bc:	00d70733          	add	a4,a4,a3
     8c0:	01071713          	slli	a4,a4,0x10
     8c4:	01075713          	srli	a4,a4,0x10
     8c8:	01f706b3          	add	a3,a4,t6
     8cc:	01069693          	slli	a3,a3,0x10
     8d0:	0106d693          	srli	a3,a3,0x10
     8d4:	00d67e63          	bgeu	a2,a3,8f0 <upsampleCr+0xa0>
     8d8:	01069293          	slli	t0,a3,0x10
     8dc:	4102d293          	srai	t0,t0,0x10
     8e0:	00000f93          	li	t6,0
     8e4:	0002c863          	bltz	t0,8f4 <upsampleCr+0xa4>
     8e8:	0ff00f93          	li	t6,255
     8ec:	00564463          	blt	a2,t0,8f4 <upsampleCr+0xa4>
     8f0:	0ff6ff93          	zext.b	t6,a3
     8f4:	0015c683          	lbu	a3,1(a1)
     8f8:	01f58023          	sb	t6,0(a1)
     8fc:	00d706b3          	add	a3,a4,a3
     900:	01069693          	slli	a3,a3,0x10
     904:	0106d693          	srli	a3,a3,0x10
     908:	00d67e63          	bgeu	a2,a3,924 <upsampleCr+0xd4>
     90c:	01069293          	slli	t0,a3,0x10
     910:	4102d293          	srai	t0,t0,0x10
     914:	00000f93          	li	t6,0
     918:	0002c863          	bltz	t0,928 <upsampleCr+0xd8>
     91c:	0ff00f93          	li	t6,255
     920:	00564463          	blt	a2,t0,928 <upsampleCr+0xd8>
     924:	0ff6ff93          	zext.b	t6,a3
     928:	0085c683          	lbu	a3,8(a1)
     92c:	01f580a3          	sb	t6,1(a1)
     930:	00d706b3          	add	a3,a4,a3
     934:	01069693          	slli	a3,a3,0x10
     938:	0106d693          	srli	a3,a3,0x10
     93c:	00d67e63          	bgeu	a2,a3,958 <upsampleCr+0x108>
     940:	01069293          	slli	t0,a3,0x10
     944:	4102d293          	srai	t0,t0,0x10
     948:	00000f93          	li	t6,0
     94c:	0002c863          	bltz	t0,95c <upsampleCr+0x10c>
     950:	0ff00f93          	li	t6,255
     954:	00564463          	blt	a2,t0,95c <upsampleCr+0x10c>
     958:	0ff6ff93          	zext.b	t6,a3
     95c:	0095c683          	lbu	a3,9(a1)
     960:	01f58423          	sb	t6,8(a1)
     964:	00d70733          	add	a4,a4,a3
     968:	01071713          	slli	a4,a4,0x10
     96c:	01075713          	srli	a4,a4,0x10
     970:	00e67e63          	bgeu	a2,a4,98c <upsampleCr+0x13c>
     974:	01071f93          	slli	t6,a4,0x10
     978:	410fdf93          	srai	t6,t6,0x10
     97c:	00000693          	li	a3,0
     980:	000fc863          	bltz	t6,990 <upsampleCr+0x140>
     984:	0ff00693          	li	a3,255
     988:	01f64463          	blt	a2,t6,990 <upsampleCr+0x140>
     98c:	0ff77693          	zext.b	a3,a4
     990:	01e787b3          	add	a5,a5,t5
     994:	00379793          	slli	a5,a5,0x3
     998:	41e787b3          	sub	a5,a5,t5
     99c:	00379793          	slli	a5,a5,0x3
     9a0:	41e787b3          	sub	a5,a5,t5
     9a4:	0087d793          	srli	a5,a5,0x8
     9a8:	00054703          	lbu	a4,0(a0)
     9ac:	fa578793          	addi	a5,a5,-91
     9b0:	01079793          	slli	a5,a5,0x10
     9b4:	0107d793          	srli	a5,a5,0x10
     9b8:	40f70733          	sub	a4,a4,a5
     9bc:	01071713          	slli	a4,a4,0x10
     9c0:	00d584a3          	sb	a3,9(a1)
     9c4:	01075713          	srli	a4,a4,0x10
     9c8:	00e67e63          	bgeu	a2,a4,9e4 <upsampleCr+0x194>
     9cc:	01071f13          	slli	t5,a4,0x10
     9d0:	410f5f13          	srai	t5,t5,0x10
     9d4:	00000693          	li	a3,0
     9d8:	000f4863          	bltz	t5,9e8 <upsampleCr+0x198>
     9dc:	0ff00693          	li	a3,255
     9e0:	01e64463          	blt	a2,t5,9e8 <upsampleCr+0x198>
     9e4:	0ff77693          	zext.b	a3,a4
     9e8:	00154703          	lbu	a4,1(a0)
     9ec:	00d50023          	sb	a3,0(a0)
     9f0:	40f70733          	sub	a4,a4,a5
     9f4:	01071713          	slli	a4,a4,0x10
     9f8:	01075713          	srli	a4,a4,0x10
     9fc:	00e67e63          	bgeu	a2,a4,a18 <upsampleCr+0x1c8>
     a00:	01071f13          	slli	t5,a4,0x10
     a04:	410f5f13          	srai	t5,t5,0x10
     a08:	00000693          	li	a3,0
     a0c:	000f4863          	bltz	t5,a1c <upsampleCr+0x1cc>
     a10:	0ff00693          	li	a3,255
     a14:	01e64463          	blt	a2,t5,a1c <upsampleCr+0x1cc>
     a18:	0ff77693          	zext.b	a3,a4
     a1c:	00854703          	lbu	a4,8(a0)
     a20:	00d500a3          	sb	a3,1(a0)
     a24:	40f70733          	sub	a4,a4,a5
     a28:	01071713          	slli	a4,a4,0x10
     a2c:	01075713          	srli	a4,a4,0x10
     a30:	00e67e63          	bgeu	a2,a4,a4c <upsampleCr+0x1fc>
     a34:	01071f13          	slli	t5,a4,0x10
     a38:	410f5f13          	srai	t5,t5,0x10
     a3c:	00000693          	li	a3,0
     a40:	000f4863          	bltz	t5,a50 <upsampleCr+0x200>
     a44:	0ff00693          	li	a3,255
     a48:	01e64463          	blt	a2,t5,a50 <upsampleCr+0x200>
     a4c:	0ff77693          	zext.b	a3,a4
     a50:	00954703          	lbu	a4,9(a0)
     a54:	00d50423          	sb	a3,8(a0)
     a58:	40f707b3          	sub	a5,a4,a5
     a5c:	01079793          	slli	a5,a5,0x10
     a60:	0107d793          	srli	a5,a5,0x10
     a64:	00f67e63          	bgeu	a2,a5,a80 <upsampleCr+0x230>
     a68:	01079693          	slli	a3,a5,0x10
     a6c:	4106d693          	srai	a3,a3,0x10
     a70:	00000713          	li	a4,0
     a74:	0006c863          	bltz	a3,a84 <upsampleCr+0x234>
     a78:	0ff00713          	li	a4,255
     a7c:	00d64463          	blt	a2,a3,a84 <upsampleCr+0x234>
     a80:	0ff7f713          	zext.b	a4,a5
     a84:	00e504a3          	sb	a4,9(a0)
     a88:	00258593          	addi	a1,a1,2
     a8c:	00250513          	addi	a0,a0,2
     a90:	df181ce3          	bne	a6,a7,888 <upsampleCr+0x38>
     a94:	01080893          	addi	a7,a6,16
     a98:	010e0e13          	addi	t3,t3,16
     a9c:	01030313          	addi	t1,t1,16
     aa0:	dd1e9ee3          	bne	t4,a7,87c <upsampleCr+0x2c>
     aa4:	00008067          	ret

00000aa8 <upsampleCrH>:
     aa8:	00010337          	lui	t1,0x10
     aac:	46030313          	addi	t1,t1,1120 # 10460 <gCoeffBuf>
     ab0:	00151e93          	slli	t4,a0,0x1
     ab4:	01d30eb3          	add	t4,t1,t4
     ab8:	28030e13          	addi	t3,t1,640
     abc:	08030313          	addi	t1,t1,128
     ac0:	008e8893          	addi	a7,t4,8
     ac4:	00be0e33          	add	t3,t3,a1
     ac8:	00b30333          	add	t1,t1,a1
     acc:	088e8e93          	addi	t4,t4,136
     ad0:	0ff00513          	li	a0,255
     ad4:	ff888813          	addi	a6,a7,-8
     ad8:	00030593          	mv	a1,t1
     adc:	000e0613          	mv	a2,t3
     ae0:	00081703          	lh	a4,0(a6)
     ae4:	00064f83          	lbu	t6,0(a2)
     ae8:	00280813          	addi	a6,a6,2
     aec:	0ff77f13          	zext.b	t5,a4
     af0:	001f1793          	slli	a5,t5,0x1
     af4:	01e786b3          	add	a3,a5,t5
     af8:	00269693          	slli	a3,a3,0x2
     afc:	01e686b3          	add	a3,a3,t5
     b00:	00369693          	slli	a3,a3,0x3
     b04:	0ff77713          	zext.b	a4,a4
     b08:	41e686b3          	sub	a3,a3,t5
     b0c:	0086d693          	srli	a3,a3,0x8
     b10:	f4d70713          	addi	a4,a4,-179
     b14:	00d70733          	add	a4,a4,a3
     b18:	01071713          	slli	a4,a4,0x10
     b1c:	01075713          	srli	a4,a4,0x10
     b20:	01f706b3          	add	a3,a4,t6
     b24:	01069693          	slli	a3,a3,0x10
     b28:	0106d693          	srli	a3,a3,0x10
     b2c:	00d57e63          	bgeu	a0,a3,b48 <upsampleCrH+0xa0>
     b30:	01069293          	slli	t0,a3,0x10
     b34:	4102d293          	srai	t0,t0,0x10
     b38:	00000f93          	li	t6,0
     b3c:	0002c863          	bltz	t0,b4c <upsampleCrH+0xa4>
     b40:	0ff00f93          	li	t6,255
     b44:	00554463          	blt	a0,t0,b4c <upsampleCrH+0xa4>
     b48:	0ff6ff93          	zext.b	t6,a3
     b4c:	00164683          	lbu	a3,1(a2)
     b50:	01f60023          	sb	t6,0(a2)
     b54:	00d70733          	add	a4,a4,a3
     b58:	01071713          	slli	a4,a4,0x10
     b5c:	01075713          	srli	a4,a4,0x10
     b60:	00e57e63          	bgeu	a0,a4,b7c <upsampleCrH+0xd4>
     b64:	01071f93          	slli	t6,a4,0x10
     b68:	410fdf93          	srai	t6,t6,0x10
     b6c:	00000693          	li	a3,0
     b70:	000fc863          	bltz	t6,b80 <upsampleCrH+0xd8>
     b74:	0ff00693          	li	a3,255
     b78:	01f54463          	blt	a0,t6,b80 <upsampleCrH+0xd8>
     b7c:	0ff77693          	zext.b	a3,a4
     b80:	01e787b3          	add	a5,a5,t5
     b84:	00379793          	slli	a5,a5,0x3
     b88:	41e787b3          	sub	a5,a5,t5
     b8c:	00379793          	slli	a5,a5,0x3
     b90:	41e787b3          	sub	a5,a5,t5
     b94:	0087d793          	srli	a5,a5,0x8
     b98:	0005c703          	lbu	a4,0(a1)
     b9c:	fa578793          	addi	a5,a5,-91
     ba0:	01079793          	slli	a5,a5,0x10
     ba4:	0107d793          	srli	a5,a5,0x10
     ba8:	40f70733          	sub	a4,a4,a5
     bac:	01071713          	slli	a4,a4,0x10
     bb0:	00d600a3          	sb	a3,1(a2)
     bb4:	01075713          	srli	a4,a4,0x10
     bb8:	00e57e63          	bgeu	a0,a4,bd4 <upsampleCrH+0x12c>
     bbc:	01071f13          	slli	t5,a4,0x10
     bc0:	410f5f13          	srai	t5,t5,0x10
     bc4:	00000693          	li	a3,0
     bc8:	000f4863          	bltz	t5,bd8 <upsampleCrH+0x130>
     bcc:	0ff00693          	li	a3,255
     bd0:	01e54463          	blt	a0,t5,bd8 <upsampleCrH+0x130>
     bd4:	0ff77693          	zext.b	a3,a4
     bd8:	0015c703          	lbu	a4,1(a1)
     bdc:	00d58023          	sb	a3,0(a1)
     be0:	40f707b3          	sub	a5,a4,a5
     be4:	01079793          	slli	a5,a5,0x10
     be8:	0107d793          	srli	a5,a5,0x10
     bec:	00f57e63          	bgeu	a0,a5,c08 <upsampleCrH+0x160>
     bf0:	01079693          	slli	a3,a5,0x10
     bf4:	4106d693          	srai	a3,a3,0x10
     bf8:	00000713          	li	a4,0
     bfc:	0006c863          	bltz	a3,c0c <upsampleCrH+0x164>
     c00:	0ff00713          	li	a4,255
     c04:	00d54463          	blt	a0,a3,c0c <upsampleCrH+0x164>
     c08:	0ff7f713          	zext.b	a4,a5
     c0c:	00e580a3          	sb	a4,1(a1)
     c10:	00260613          	addi	a2,a2,2
     c14:	00258593          	addi	a1,a1,2
     c18:	ed1814e3          	bne	a6,a7,ae0 <upsampleCrH+0x38>
     c1c:	01080893          	addi	a7,a6,16
     c20:	008e0e13          	addi	t3,t3,8
     c24:	00830313          	addi	t1,t1,8
     c28:	eb1e96e3          	bne	t4,a7,ad4 <upsampleCrH+0x2c>
     c2c:	00008067          	ret

00000c30 <upsampleCrV>:
     c30:	000108b7          	lui	a7,0x10
     c34:	46088893          	addi	a7,a7,1120 # 10460 <gCoeffBuf>
     c38:	28088313          	addi	t1,a7,640
     c3c:	00151513          	slli	a0,a0,0x1
     c40:	08088e13          	addi	t3,a7,128
     c44:	01050513          	addi	a0,a0,16
     c48:	00b30333          	add	t1,t1,a1
     c4c:	00a888b3          	add	a7,a7,a0
     c50:	00be0e33          	add	t3,t3,a1
     c54:	04030e93          	addi	t4,t1,64
     c58:	0ff00513          	li	a0,255
     c5c:	ff088813          	addi	a6,a7,-16
     c60:	000e0593          	mv	a1,t3
     c64:	00030613          	mv	a2,t1
     c68:	00081703          	lh	a4,0(a6)
     c6c:	00064f83          	lbu	t6,0(a2)
     c70:	00280813          	addi	a6,a6,2
     c74:	0ff77f13          	zext.b	t5,a4
     c78:	001f1793          	slli	a5,t5,0x1
     c7c:	01e786b3          	add	a3,a5,t5
     c80:	00269693          	slli	a3,a3,0x2
     c84:	01e686b3          	add	a3,a3,t5
     c88:	00369693          	slli	a3,a3,0x3
     c8c:	0ff77713          	zext.b	a4,a4
     c90:	41e686b3          	sub	a3,a3,t5
     c94:	0086d693          	srli	a3,a3,0x8
     c98:	f4d70713          	addi	a4,a4,-179
     c9c:	00d70733          	add	a4,a4,a3
     ca0:	01071713          	slli	a4,a4,0x10
     ca4:	01075713          	srli	a4,a4,0x10
     ca8:	01f706b3          	add	a3,a4,t6
     cac:	01069693          	slli	a3,a3,0x10
     cb0:	0106d693          	srli	a3,a3,0x10
     cb4:	00d57e63          	bgeu	a0,a3,cd0 <upsampleCrV+0xa0>
     cb8:	01069293          	slli	t0,a3,0x10
     cbc:	4102d293          	srai	t0,t0,0x10
     cc0:	00000f93          	li	t6,0
     cc4:	0002c863          	bltz	t0,cd4 <upsampleCrV+0xa4>
     cc8:	0ff00f93          	li	t6,255
     ccc:	00554463          	blt	a0,t0,cd4 <upsampleCrV+0xa4>
     cd0:	0ff6ff93          	zext.b	t6,a3
     cd4:	00864683          	lbu	a3,8(a2)
     cd8:	01f60023          	sb	t6,0(a2)
     cdc:	00d70733          	add	a4,a4,a3
     ce0:	01071713          	slli	a4,a4,0x10
     ce4:	01075713          	srli	a4,a4,0x10
     ce8:	00e57e63          	bgeu	a0,a4,d04 <upsampleCrV+0xd4>
     cec:	01071f93          	slli	t6,a4,0x10
     cf0:	410fdf93          	srai	t6,t6,0x10
     cf4:	00000693          	li	a3,0
     cf8:	000fc863          	bltz	t6,d08 <upsampleCrV+0xd8>
     cfc:	0ff00693          	li	a3,255
     d00:	01f54463          	blt	a0,t6,d08 <upsampleCrV+0xd8>
     d04:	0ff77693          	zext.b	a3,a4
     d08:	01e787b3          	add	a5,a5,t5
     d0c:	00379793          	slli	a5,a5,0x3
     d10:	41e787b3          	sub	a5,a5,t5
     d14:	00379793          	slli	a5,a5,0x3
     d18:	41e787b3          	sub	a5,a5,t5
     d1c:	0087d793          	srli	a5,a5,0x8
     d20:	0005c703          	lbu	a4,0(a1)
     d24:	fa578793          	addi	a5,a5,-91
     d28:	01079793          	slli	a5,a5,0x10
     d2c:	0107d793          	srli	a5,a5,0x10
     d30:	40f70733          	sub	a4,a4,a5
     d34:	01071713          	slli	a4,a4,0x10
     d38:	00d60423          	sb	a3,8(a2)
     d3c:	01075713          	srli	a4,a4,0x10
     d40:	00e57e63          	bgeu	a0,a4,d5c <upsampleCrV+0x12c>
     d44:	01071f13          	slli	t5,a4,0x10
     d48:	410f5f13          	srai	t5,t5,0x10
     d4c:	00000693          	li	a3,0
     d50:	000f4863          	bltz	t5,d60 <upsampleCrV+0x130>
     d54:	0ff00693          	li	a3,255
     d58:	01e54463          	blt	a0,t5,d60 <upsampleCrV+0x130>
     d5c:	0ff77693          	zext.b	a3,a4
     d60:	0085c703          	lbu	a4,8(a1)
     d64:	00d58023          	sb	a3,0(a1)
     d68:	40f707b3          	sub	a5,a4,a5
     d6c:	01079793          	slli	a5,a5,0x10
     d70:	0107d793          	srli	a5,a5,0x10
     d74:	00f57e63          	bgeu	a0,a5,d90 <upsampleCrV+0x160>
     d78:	01079693          	slli	a3,a5,0x10
     d7c:	4106d693          	srai	a3,a3,0x10
     d80:	00000713          	li	a4,0
     d84:	0006c863          	bltz	a3,d94 <upsampleCrV+0x164>
     d88:	0ff00713          	li	a4,255
     d8c:	00d54463          	blt	a0,a3,d94 <upsampleCrV+0x164>
     d90:	0ff7f713          	zext.b	a4,a5
     d94:	00e58423          	sb	a4,8(a1)
     d98:	00160613          	addi	a2,a2,1
     d9c:	00158593          	addi	a1,a1,1
     da0:	ed1814e3          	bne	a6,a7,c68 <upsampleCrV+0x38>
     da4:	01030313          	addi	t1,t1,16
     da8:	010e0e13          	addi	t3,t3,16
     dac:	01080893          	addi	a7,a6,16
     db0:	ebd316e3          	bne	t1,t4,c5c <upsampleCrV+0x2c>
     db4:	00008067          	ret

00000db8 <getChar>:
     db8:	ff010113          	addi	sp,sp,-16
     dbc:	00912223          	sw	s1,4(sp)
     dc0:	000114b7          	lui	s1,0x11
     dc4:	d9c4c783          	lbu	a5,-612(s1) # 10d9c <gInBufLeft>
     dc8:	00112623          	sw	ra,12(sp)
     dcc:	00812423          	sw	s0,8(sp)
     dd0:	01212023          	sw	s2,0(sp)
     dd4:	04078263          	beqz	a5,e18 <getChar+0x60>
     dd8:	00010437          	lui	s0,0x10
     ddc:	00011937          	lui	s2,0x11
     de0:	46040413          	addi	s0,s0,1120 # 10460 <gCoeffBuf>
     de4:	d9d94703          	lbu	a4,-611(s2) # 10d9d <gInBufOfs>
     de8:	00c12083          	lw	ra,12(sp)
     dec:	fff78793          	addi	a5,a5,-1
     df0:	00e40433          	add	s0,s0,a4
     df4:	38044503          	lbu	a0,896(s0)
     df8:	00812403          	lw	s0,8(sp)
     dfc:	00170713          	addi	a4,a4,1
     e00:	d8f48e23          	sb	a5,-612(s1)
     e04:	d8e90ea3          	sb	a4,-611(s2)
     e08:	00412483          	lw	s1,4(sp)
     e0c:	00012903          	lw	s2,0(sp)
     e10:	01010113          	addi	sp,sp,16
     e14:	00008067          	ret
     e18:	00011737          	lui	a4,0x11
     e1c:	000117b7          	lui	a5,0x11
     e20:	d5472683          	lw	a3,-684(a4) # 10d54 <g_pCallback_data>
     e24:	00010437          	lui	s0,0x10
     e28:	d587a783          	lw	a5,-680(a5) # 10d58 <g_pNeedBytesCallback>
     e2c:	46040413          	addi	s0,s0,1120 # 10460 <gCoeffBuf>
     e30:	00011937          	lui	s2,0x11
     e34:	00400713          	li	a4,4
     e38:	d8048e23          	sb	zero,-612(s1)
     e3c:	d9c48613          	addi	a2,s1,-612
     e40:	0fc00593          	li	a1,252
     e44:	38440513          	addi	a0,s0,900
     e48:	d8e90ea3          	sb	a4,-611(s2) # 10d9d <gInBufOfs>
     e4c:	000780e7          	jalr	a5
     e50:	00050663          	beqz	a0,e5c <getChar+0xa4>
     e54:	000117b7          	lui	a5,0x11
     e58:	d4a788a3          	sb	a0,-687(a5) # 10d51 <gCallbackStatus>
     e5c:	d9c4c783          	lbu	a5,-612(s1)
     e60:	f80792e3          	bnez	a5,de4 <getChar+0x2c>
     e64:	00011737          	lui	a4,0x11
     e68:	d9e74783          	lbu	a5,-610(a4) # 10d9e <gTemFlag>
     e6c:	00c12083          	lw	ra,12(sp)
     e70:	00812403          	lw	s0,8(sp)
     e74:	fff7c793          	not	a5,a5
     e78:	0ff7f793          	zext.b	a5,a5
     e7c:	00f03533          	snez	a0,a5
     e80:	40a00533          	neg	a0,a0
     e84:	02657513          	andi	a0,a0,38
     e88:	d8f70f23          	sb	a5,-610(a4)
     e8c:	00412483          	lw	s1,4(sp)
     e90:	00012903          	lw	s2,0(sp)
     e94:	0d950513          	addi	a0,a0,217
     e98:	01010113          	addi	sp,sp,16
     e9c:	00008067          	ret

00000ea0 <getOctet.part.0>:
     ea0:	ff010113          	addi	sp,sp,-16
     ea4:	00112623          	sw	ra,12(sp)
     ea8:	f11ff0ef          	jal	ra,db8 <getChar>
     eac:	04050663          	beqz	a0,ef8 <getOctet.part.0+0x58>
     eb0:	00011837          	lui	a6,0x11
     eb4:	d9d84783          	lbu	a5,-611(a6) # 10d9d <gInBufOfs>
     eb8:	000115b7          	lui	a1,0x11
     ebc:	d9c5c603          	lbu	a2,-612(a1) # 10d9c <gInBufLeft>
     ec0:	fff78693          	addi	a3,a5,-1
     ec4:	00010737          	lui	a4,0x10
     ec8:	46070713          	addi	a4,a4,1120 # 10460 <gCoeffBuf>
     ecc:	0ff6f693          	zext.b	a3,a3
     ed0:	ffe78793          	addi	a5,a5,-2
     ed4:	0ff7f793          	zext.b	a5,a5
     ed8:	00d706b3          	add	a3,a4,a3
     edc:	38a68023          	sb	a0,896(a3)
     ee0:	00f70733          	add	a4,a4,a5
     ee4:	00260693          	addi	a3,a2,2
     ee8:	d8f80ea3          	sb	a5,-611(a6)
     eec:	fff00793          	li	a5,-1
     ef0:	38f70023          	sb	a5,896(a4)
     ef4:	d8d58e23          	sb	a3,-612(a1)
     ef8:	00c12083          	lw	ra,12(sp)
     efc:	01010113          	addi	sp,sp,16
     f00:	00008067          	ret

00000f04 <getBit>:
     f04:	fe010113          	addi	sp,sp,-32
     f08:	00812c23          	sw	s0,24(sp)
     f0c:	00912a23          	sw	s1,20(sp)
     f10:	00011437          	lui	s0,0x11
     f14:	000114b7          	lui	s1,0x11
     f18:	d9a45783          	lhu	a5,-614(s0) # 10d9a <gBitBuf>
     f1c:	d984c703          	lbu	a4,-616(s1) # 10d98 <gBitsLeft>
     f20:	01212823          	sw	s2,16(sp)
     f24:	00112e23          	sw	ra,28(sp)
     f28:	01312623          	sw	s3,12(sp)
     f2c:	00f7d913          	srli	s2,a5,0xf
     f30:	02070a63          	beqz	a4,f64 <getBit+0x60>
     f34:	00179793          	slli	a5,a5,0x1
     f38:	01c12083          	lw	ra,28(sp)
     f3c:	d8f41d23          	sh	a5,-614(s0)
     f40:	01812403          	lw	s0,24(sp)
     f44:	fff70713          	addi	a4,a4,-1
     f48:	d8e48c23          	sb	a4,-616(s1)
     f4c:	00c12983          	lw	s3,12(sp)
     f50:	01412483          	lw	s1,20(sp)
     f54:	00090513          	mv	a0,s2
     f58:	01012903          	lw	s2,16(sp)
     f5c:	02010113          	addi	sp,sp,32
     f60:	00008067          	ret
     f64:	e55ff0ef          	jal	ra,db8 <getChar>
     f68:	0ff00793          	li	a5,255
     f6c:	00050993          	mv	s3,a0
     f70:	02f50263          	beq	a0,a5,f94 <getBit+0x90>
     f74:	d9a45783          	lhu	a5,-614(s0)
     f78:	d984c703          	lbu	a4,-616(s1)
     f7c:	0137e7b3          	or	a5,a5,s3
     f80:	00870713          	addi	a4,a4,8
     f84:	01079793          	slli	a5,a5,0x10
     f88:	0107d793          	srli	a5,a5,0x10
     f8c:	0ff77713          	zext.b	a4,a4
     f90:	fa5ff06f          	j	f34 <getBit+0x30>
     f94:	f0dff0ef          	jal	ra,ea0 <getOctet.part.0>
     f98:	fddff06f          	j	f74 <getBit+0x70>

00000f9c <huffDecode>:
     f9c:	fe010113          	addi	sp,sp,-32
     fa0:	00912a23          	sw	s1,20(sp)
     fa4:	01212823          	sw	s2,16(sp)
     fa8:	01312623          	sw	s3,12(sp)
     fac:	01412423          	sw	s4,8(sp)
     fb0:	01512223          	sw	s5,4(sp)
     fb4:	01612023          	sw	s6,0(sp)
     fb8:	00050993          	mv	s3,a0
     fbc:	00112e23          	sw	ra,28(sp)
     fc0:	00812c23          	sw	s0,24(sp)
     fc4:	00058a13          	mv	s4,a1
     fc8:	f3dff0ef          	jal	ra,f04 <getBit>
     fcc:	01051713          	slli	a4,a0,0x10
     fd0:	00010b37          	lui	s6,0x10
     fd4:	01075713          	srli	a4,a4,0x10
     fd8:	02098913          	addi	s2,s3,32
     fdc:	00000493          	li	s1,0
     fe0:	fffb0b13          	addi	s6,s6,-1 # ffff <main+0xbfe7>
     fe4:	01000a93          	li	s5,16
     fe8:	00095683          	lhu	a3,0(s2)
     fec:	00171793          	slli	a5,a4,0x1
     ff0:	01079413          	slli	s0,a5,0x10
     ff4:	01045413          	srli	s0,s0,0x10
     ff8:	00e6e463          	bltu	a3,a4,1000 <huffDecode+0x64>
     ffc:	05669663          	bne	a3,s6,1048 <huffDecode+0xac>
    1000:	f05ff0ef          	jal	ra,f04 <getBit>
    1004:	00a467b3          	or	a5,s0,a0
    1008:	01079713          	slli	a4,a5,0x10
    100c:	00148493          	addi	s1,s1,1
    1010:	01075713          	srli	a4,a4,0x10
    1014:	00290913          	addi	s2,s2,2
    1018:	fd5498e3          	bne	s1,s5,fe8 <huffDecode+0x4c>
    101c:	00000513          	li	a0,0
    1020:	01c12083          	lw	ra,28(sp)
    1024:	01812403          	lw	s0,24(sp)
    1028:	01412483          	lw	s1,20(sp)
    102c:	01012903          	lw	s2,16(sp)
    1030:	00c12983          	lw	s3,12(sp)
    1034:	00812a03          	lw	s4,8(sp)
    1038:	00412a83          	lw	s5,4(sp)
    103c:	00012b03          	lw	s6,0(sp)
    1040:	02010113          	addi	sp,sp,32
    1044:	00008067          	ret
    1048:	009987b3          	add	a5,s3,s1
    104c:	00149493          	slli	s1,s1,0x1
    1050:	0407c783          	lbu	a5,64(a5)
    1054:	009989b3          	add	s3,s3,s1
    1058:	0009d683          	lhu	a3,0(s3)
    105c:	00e787b3          	add	a5,a5,a4
    1060:	40d787b3          	sub	a5,a5,a3
    1064:	0ff7f793          	zext.b	a5,a5
    1068:	00fa0a33          	add	s4,s4,a5
    106c:	000a4503          	lbu	a0,0(s4)
    1070:	fb1ff06f          	j	1020 <huffDecode+0x84>

00001074 <getBits>:
    1074:	fd010113          	addi	sp,sp,-48
    1078:	01312e23          	sw	s3,28(sp)
    107c:	000119b7          	lui	s3,0x11
    1080:	02812423          	sw	s0,40(sp)
    1084:	d9a9d403          	lhu	s0,-614(s3) # 10d9a <gBitBuf>
    1088:	02912223          	sw	s1,36(sp)
    108c:	03212023          	sw	s2,32(sp)
    1090:	01412c23          	sw	s4,24(sp)
    1094:	01512a23          	sw	s5,20(sp)
    1098:	00011a37          	lui	s4,0x11
    109c:	02112623          	sw	ra,44(sp)
    10a0:	00800693          	li	a3,8
    10a4:	d98a4703          	lbu	a4,-616(s4) # 10d98 <gBitsLeft>
    10a8:	00050493          	mv	s1,a0
    10ac:	00058a93          	mv	s5,a1
    10b0:	00040793          	mv	a5,s0
    10b4:	00050913          	mv	s2,a0
    10b8:	04a6e863          	bltu	a3,a0,1108 <getBits+0x94>
    10bc:	0b276263          	bltu	a4,s2,1160 <getBits+0xec>
    10c0:	41270733          	sub	a4,a4,s2
    10c4:	012797b3          	sll	a5,a5,s2
    10c8:	d8ea0c23          	sb	a4,-616(s4)
    10cc:	d8f99d23          	sh	a5,-614(s3)
    10d0:	01000793          	li	a5,16
    10d4:	409787b3          	sub	a5,a5,s1
    10d8:	02c12083          	lw	ra,44(sp)
    10dc:	40f45533          	sra	a0,s0,a5
    10e0:	02812403          	lw	s0,40(sp)
    10e4:	01051513          	slli	a0,a0,0x10
    10e8:	02412483          	lw	s1,36(sp)
    10ec:	02012903          	lw	s2,32(sp)
    10f0:	01c12983          	lw	s3,28(sp)
    10f4:	01812a03          	lw	s4,24(sp)
    10f8:	01412a83          	lw	s5,20(sp)
    10fc:	01055513          	srli	a0,a0,0x10
    1100:	03010113          	addi	sp,sp,48
    1104:	00008067          	ret
    1108:	00e41733          	sll	a4,s0,a4
    110c:	ff850913          	addi	s2,a0,-8
    1110:	0ff97913          	zext.b	s2,s2
    1114:	d8e99d23          	sh	a4,-614(s3)
    1118:	ca1ff0ef          	jal	ra,db8 <getChar>
    111c:	000a8663          	beqz	s5,1128 <getBits+0xb4>
    1120:	0ff00793          	li	a5,255
    1124:	08f50263          	beq	a0,a5,11a8 <getBits+0x134>
    1128:	d9a9d783          	lhu	a5,-614(s3)
    112c:	d98a4703          	lbu	a4,-616(s4)
    1130:	00800693          	li	a3,8
    1134:	00a7e7b3          	or	a5,a5,a0
    1138:	01079793          	slli	a5,a5,0x10
    113c:	40e686b3          	sub	a3,a3,a4
    1140:	0107d793          	srli	a5,a5,0x10
    1144:	00d797b3          	sll	a5,a5,a3
    1148:	01079793          	slli	a5,a5,0x10
    114c:	0107d793          	srli	a5,a5,0x10
    1150:	f0047413          	andi	s0,s0,-256
    1154:	0087d693          	srli	a3,a5,0x8
    1158:	00d46433          	or	s0,s0,a3
    115c:	f72772e3          	bgeu	a4,s2,10c0 <getBits+0x4c>
    1160:	00e797b3          	sll	a5,a5,a4
    1164:	d8f99d23          	sh	a5,-614(s3)
    1168:	c51ff0ef          	jal	ra,db8 <getChar>
    116c:	000a8663          	beqz	s5,1178 <getBits+0x104>
    1170:	0ff00793          	li	a5,255
    1174:	04f50263          	beq	a0,a5,11b8 <getBits+0x144>
    1178:	d9a9d783          	lhu	a5,-614(s3)
    117c:	d98a4703          	lbu	a4,-616(s4)
    1180:	00a7e7b3          	or	a5,a5,a0
    1184:	01079793          	slli	a5,a5,0x10
    1188:	40e906b3          	sub	a3,s2,a4
    118c:	0107d793          	srli	a5,a5,0x10
    1190:	00870713          	addi	a4,a4,8
    1194:	00d797b3          	sll	a5,a5,a3
    1198:	41270733          	sub	a4,a4,s2
    119c:	d8f99d23          	sh	a5,-614(s3)
    11a0:	d8ea0c23          	sb	a4,-616(s4)
    11a4:	f2dff06f          	j	10d0 <getBits+0x5c>
    11a8:	00a12623          	sw	a0,12(sp)
    11ac:	cf5ff0ef          	jal	ra,ea0 <getOctet.part.0>
    11b0:	00c12503          	lw	a0,12(sp)
    11b4:	f75ff06f          	j	1128 <getBits+0xb4>
    11b8:	00a12623          	sw	a0,12(sp)
    11bc:	ce5ff0ef          	jal	ra,ea0 <getOctet.part.0>
    11c0:	00c12503          	lw	a0,12(sp)
    11c4:	fb5ff06f          	j	1178 <getBits+0x104>

000011c8 <processMarkers>:
    11c8:	fa010113          	addi	sp,sp,-96
    11cc:	03912a23          	sw	s9,52(sp)
    11d0:	000107b7          	lui	a5,0x10
    11d4:	00010cb7          	lui	s9,0x10
    11d8:	46078793          	addi	a5,a5,1120 # 10460 <gCoeffBuf>
    11dc:	354c8c93          	addi	s9,s9,852 # 10354 <CSWTCH.306>
    11e0:	04812c23          	sw	s0,88(sp)
    11e4:	04912a23          	sw	s1,84(sp)
    11e8:	04112e23          	sw	ra,92(sp)
    11ec:	05212823          	sw	s2,80(sp)
    11f0:	05312623          	sw	s3,76(sp)
    11f4:	05412423          	sw	s4,72(sp)
    11f8:	05512223          	sw	s5,68(sp)
    11fc:	05612023          	sw	s6,64(sp)
    1200:	03712e23          	sw	s7,60(sp)
    1204:	03812c23          	sw	s8,56(sp)
    1208:	03a12823          	sw	s10,48(sp)
    120c:	03b12623          	sw	s11,44(sp)
    1210:	00f12423          	sw	a5,8(sp)
    1214:	00a12623          	sw	a0,12(sp)
    1218:	50078413          	addi	s0,a5,1280
    121c:	060c8493          	addi	s1,s9,96
    1220:	0ff00913          	li	s2,255
    1224:	00000593          	li	a1,0
    1228:	00800513          	li	a0,8
    122c:	e49ff0ef          	jal	ra,1074 <getBits>
    1230:	0ff57513          	zext.b	a0,a0
    1234:	ff2518e3          	bne	a0,s2,1224 <processMarkers+0x5c>
    1238:	00000593          	li	a1,0
    123c:	00800513          	li	a0,8
    1240:	e35ff0ef          	jal	ra,1074 <getBits>
    1244:	0ff57513          	zext.b	a0,a0
    1248:	ff2508e3          	beq	a0,s2,1238 <processMarkers+0x70>
    124c:	fc050ce3          	beqz	a0,1224 <processMarkers+0x5c>
    1250:	0d700793          	li	a5,215
    1254:	1aa7e663          	bltu	a5,a0,1400 <processMarkers+0x238>
    1258:	0c400793          	li	a5,196
    125c:	24a7e263          	bltu	a5,a0,14a0 <processMarkers+0x2d8>
    1260:	1ef51063          	bne	a0,a5,1440 <processMarkers+0x278>
    1264:	00000593          	li	a1,0
    1268:	01000513          	li	a0,16
    126c:	e09ff0ef          	jal	ra,1074 <getBits>
    1270:	00100713          	li	a4,1
    1274:	faa776e3          	bgeu	a4,a0,1220 <processMarkers+0x58>
    1278:	ffe50793          	addi	a5,a0,-2
    127c:	01079c13          	slli	s8,a5,0x10
    1280:	010c5c13          	srli	s8,s8,0x10
    1284:	f80c0ee3          	beqz	s8,1220 <processMarkers+0x58>
    1288:	00010ab7          	lui	s5,0x10
    128c:	fffa8a93          	addi	s5,s5,-1 # ffff <main+0xbfe7>
    1290:	00000593          	li	a1,0
    1294:	00800513          	li	a0,8
    1298:	dddff0ef          	jal	ra,1074 <getBits>
    129c:	00e57993          	andi	s3,a0,14
    12a0:	0ff57793          	zext.b	a5,a0
    12a4:	f6099ee3          	bnez	s3,1220 <processMarkers+0x58>
    12a8:	0f07f713          	andi	a4,a5,240
    12ac:	01000693          	li	a3,16
    12b0:	f6e6e8e3          	bltu	a3,a4,1220 <processMarkers+0x58>
    12b4:	0037db13          	srli	s6,a5,0x3
    12b8:	002b7b13          	andi	s6,s6,2
    12bc:	00157513          	andi	a0,a0,1
    12c0:	00ab67b3          	or	a5,s6,a0
    12c4:	00011637          	lui	a2,0x11
    12c8:	00279793          	slli	a5,a5,0x2
    12cc:	00fc87b3          	add	a5,s9,a5
    12d0:	da064703          	lbu	a4,-608(a2) # 10da0 <gValidHuffTables>
    12d4:	0007a583          	lw	a1,0(a5)
    12d8:	00ab6b33          	or	s6,s6,a0
    12dc:	00100693          	li	a3,1
    12e0:	016696b3          	sll	a3,a3,s6
    12e4:	0107ab83          	lw	s7,16(a5)
    12e8:	01010d13          	addi	s10,sp,16
    12ec:	00d767b3          	or	a5,a4,a3
    12f0:	00b12223          	sw	a1,4(sp)
    12f4:	daf60023          	sb	a5,-608(a2)
    12f8:	02010a13          	addi	s4,sp,32
    12fc:	000d0d93          	mv	s11,s10
    1300:	00000913          	li	s2,0
    1304:	00000593          	li	a1,0
    1308:	00800513          	li	a0,8
    130c:	d69ff0ef          	jal	ra,1074 <getBits>
    1310:	0ff57713          	zext.b	a4,a0
    1314:	00e90733          	add	a4,s2,a4
    1318:	00ad8023          	sb	a0,0(s11)
    131c:	01071913          	slli	s2,a4,0x10
    1320:	001d8d93          	addi	s11,s11,1
    1324:	01095913          	srli	s2,s2,0x10
    1328:	fdba1ee3          	bne	s4,s11,1304 <processMarkers+0x13c>
    132c:	00100713          	li	a4,1
    1330:	00c00793          	li	a5,12
    1334:	01675463          	bge	a4,s6,133c <processMarkers+0x174>
    1338:	0ff00793          	li	a5,255
    133c:	ef27e2e3          	bltu	a5,s2,1220 <processMarkers+0x58>
    1340:	00000b13          	li	s6,0
    1344:	02090463          	beqz	s2,136c <processMarkers+0x1a4>
    1348:	00000593          	li	a1,0
    134c:	00800513          	li	a0,8
    1350:	d25ff0ef          	jal	ra,1074 <getBits>
    1354:	016b87b3          	add	a5,s7,s6
    1358:	001b0b13          	addi	s6,s6,1
    135c:	00a78023          	sb	a0,0(a5)
    1360:	0ffb7793          	zext.b	a5,s6
    1364:	00078b13          	mv	s6,a5
    1368:	ff27e0e3          	bltu	a5,s2,1348 <processMarkers+0x180>
    136c:	01190793          	addi	a5,s2,17
    1370:	01079793          	slli	a5,a5,0x10
    1374:	0107d793          	srli	a5,a5,0x10
    1378:	eafc64e3          	bltu	s8,a5,1220 <processMarkers+0x58>
    137c:	00412603          	lw	a2,4(sp)
    1380:	40fc07b3          	sub	a5,s8,a5
    1384:	01079c13          	slli	s8,a5,0x10
    1388:	010c5c13          	srli	s8,s8,0x10
    138c:	04060593          	addi	a1,a2,64
    1390:	00000793          	li	a5,0
    1394:	0400006f          	j	13d4 <processMarkers+0x20c>
    1398:	010e1513          	slli	a0,t3,0x10
    139c:	00098713          	mv	a4,s3
    13a0:	01055513          	srli	a0,a0,0x10
    13a4:	00068793          	mv	a5,a3
    13a8:	0ff37993          	zext.b	s3,t1
    13ac:	01161023          	sh	a7,0(a2)
    13b0:	02a61023          	sh	a0,32(a2)
    13b4:	00179793          	slli	a5,a5,0x1
    13b8:	00e58023          	sb	a4,0(a1)
    13bc:	01079793          	slli	a5,a5,0x10
    13c0:	001d0d13          	addi	s10,s10,1
    13c4:	0107d793          	srli	a5,a5,0x10
    13c8:	00260613          	addi	a2,a2,2
    13cc:	00158593          	addi	a1,a1,1
    13d0:	15aa0a63          	beq	s4,s10,1524 <processMarkers+0x35c>
    13d4:	000d4703          	lbu	a4,0(s10)
    13d8:	00078893          	mv	a7,a5
    13dc:	000a8513          	mv	a0,s5
    13e0:	00e786b3          	add	a3,a5,a4
    13e4:	01069693          	slli	a3,a3,0x10
    13e8:	0106d693          	srli	a3,a3,0x10
    13ec:	01370333          	add	t1,a4,s3
    13f0:	fff68e13          	addi	t3,a3,-1
    13f4:	fa0712e3          	bnez	a4,1398 <processMarkers+0x1d0>
    13f8:	00000893          	li	a7,0
    13fc:	fb1ff06f          	j	13ac <processMarkers+0x1e4>
    1400:	0db00793          	li	a5,219
    1404:	12f50463          	beq	a0,a5,152c <processMarkers+0x364>
    1408:	0ca7f663          	bgeu	a5,a0,14d4 <processMarkers+0x30c>
    140c:	0dd00793          	li	a5,221
    1410:	0cf51463          	bne	a0,a5,14d8 <processMarkers+0x310>
    1414:	00000593          	li	a1,0
    1418:	01000513          	li	a0,16
    141c:	c59ff0ef          	jal	ra,1074 <getBits>
    1420:	00400793          	li	a5,4
    1424:	def51ee3          	bne	a0,a5,1220 <processMarkers+0x58>
    1428:	00000593          	li	a1,0
    142c:	01000513          	li	a0,16
    1430:	c45ff0ef          	jal	ra,1074 <getBits>
    1434:	000117b7          	lui	a5,0x11
    1438:	d8a79023          	sh	a0,-640(a5) # 10d80 <gRestartInterval>
    143c:	de5ff06f          	j	1220 <processMarkers+0x58>
    1440:	00100793          	li	a5,1
    1444:	0cf50c63          	beq	a0,a5,151c <processMarkers+0x354>
    1448:	04050793          	addi	a5,a0,64
    144c:	0ff7f793          	zext.b	a5,a5
    1450:	00300713          	li	a4,3
    1454:	08f76263          	bltu	a4,a5,14d8 <processMarkers+0x310>
    1458:	00c12783          	lw	a5,12(sp)
    145c:	00a78023          	sb	a0,0(a5)
    1460:	00000513          	li	a0,0
    1464:	05c12083          	lw	ra,92(sp)
    1468:	05812403          	lw	s0,88(sp)
    146c:	05412483          	lw	s1,84(sp)
    1470:	05012903          	lw	s2,80(sp)
    1474:	04c12983          	lw	s3,76(sp)
    1478:	04812a03          	lw	s4,72(sp)
    147c:	04412a83          	lw	s5,68(sp)
    1480:	04012b03          	lw	s6,64(sp)
    1484:	03c12b83          	lw	s7,60(sp)
    1488:	03812c03          	lw	s8,56(sp)
    148c:	03412c83          	lw	s9,52(sp)
    1490:	03012d03          	lw	s10,48(sp)
    1494:	02c12d83          	lw	s11,44(sp)
    1498:	06010113          	addi	sp,sp,96
    149c:	00008067          	ret
    14a0:	03b50793          	addi	a5,a0,59
    14a4:	00100713          	li	a4,1
    14a8:	00f71733          	sll	a4,a4,a5
    14ac:	000807b7          	lui	a5,0x80
    14b0:	80878793          	addi	a5,a5,-2040 # 7f808 <gLastDC+0x6ea64>
    14b4:	00f777b3          	and	a5,a4,a5
    14b8:	06079263          	bnez	a5,151c <processMarkers+0x354>
    14bc:	77777713          	andi	a4,a4,1911
    14c0:	f8071ce3          	bnez	a4,1458 <processMarkers+0x290>
    14c4:	0cc00793          	li	a5,204
    14c8:	00f51863          	bne	a0,a5,14d8 <processMarkers+0x310>
    14cc:	01100513          	li	a0,17
    14d0:	f95ff06f          	j	1464 <processMarkers+0x29c>
    14d4:	f8f512e3          	bne	a0,a5,1458 <processMarkers+0x290>
    14d8:	00000593          	li	a1,0
    14dc:	01000513          	li	a0,16
    14e0:	b95ff0ef          	jal	ra,1074 <getBits>
    14e4:	00100713          	li	a4,1
    14e8:	d2a77ce3          	bgeu	a4,a0,1220 <processMarkers+0x58>
    14ec:	ffe50793          	addi	a5,a0,-2
    14f0:	01079913          	slli	s2,a5,0x10
    14f4:	01095913          	srli	s2,s2,0x10
    14f8:	d20904e3          	beqz	s2,1220 <processMarkers+0x58>
    14fc:	fff90913          	addi	s2,s2,-1
    1500:	01091913          	slli	s2,s2,0x10
    1504:	00000593          	li	a1,0
    1508:	00800513          	li	a0,8
    150c:	01095913          	srli	s2,s2,0x10
    1510:	b65ff0ef          	jal	ra,1074 <getBits>
    1514:	fe0914e3          	bnez	s2,14fc <processMarkers+0x334>
    1518:	d09ff06f          	j	1220 <processMarkers+0x58>
    151c:	01200513          	li	a0,18
    1520:	f45ff06f          	j	1464 <processMarkers+0x29c>
    1524:	d60c16e3          	bnez	s8,1290 <processMarkers+0xc8>
    1528:	cf9ff06f          	j	1220 <processMarkers+0x58>
    152c:	00000593          	li	a1,0
    1530:	01000513          	li	a0,16
    1534:	b41ff0ef          	jal	ra,1074 <getBits>
    1538:	00100713          	li	a4,1
    153c:	cea772e3          	bgeu	a4,a0,1220 <processMarkers+0x58>
    1540:	ffe50793          	addi	a5,a0,-2
    1544:	01079b93          	slli	s7,a5,0x10
    1548:	010bdb93          	srli	s7,s7,0x10
    154c:	cc0b8ae3          	beqz	s7,1220 <processMarkers+0x58>
    1550:	00011c37          	lui	s8,0x11
    1554:	00000593          	li	a1,0
    1558:	00800513          	li	a0,8
    155c:	b19ff0ef          	jal	ra,1074 <getBits>
    1560:	0ff57b13          	zext.b	s6,a0
    1564:	00eb7793          	andi	a5,s6,14
    1568:	004b5a93          	srli	s5,s6,0x4
    156c:	00fb7b13          	andi	s6,s6,15
    1570:	ca0798e3          	bnez	a5,1220 <processMarkers+0x58>
    1574:	d9fc4703          	lbu	a4,-609(s8) # 10d9f <gValidQuantTables>
    1578:	016037b3          	snez	a5,s6
    157c:	00178793          	addi	a5,a5,1
    1580:	00e7e7b3          	or	a5,a5,a4
    1584:	00812703          	lw	a4,8(sp)
    1588:	d8fc0fa3          	sb	a5,-609(s8)
    158c:	00040a13          	mv	s4,s0
    1590:	48070993          	addi	s3,a4,1152
    1594:	00098d13          	mv	s10,s3
    1598:	0140006f          	j	15ac <processMarkers+0x3e4>
    159c:	012d1023          	sh	s2,0(s10)
    15a0:	002d0d13          	addi	s10,s10,2
    15a4:	002a0a13          	addi	s4,s4,2
    15a8:	03a40a63          	beq	s0,s10,15dc <processMarkers+0x414>
    15ac:	00000593          	li	a1,0
    15b0:	00800513          	li	a0,8
    15b4:	ac1ff0ef          	jal	ra,1074 <getBits>
    15b8:	00050913          	mv	s2,a0
    15bc:	080a9063          	bnez	s5,163c <processMarkers+0x474>
    15c0:	01091913          	slli	s2,s2,0x10
    15c4:	41095913          	srai	s2,s2,0x10
    15c8:	fc0b1ae3          	bnez	s6,159c <processMarkers+0x3d4>
    15cc:	012a1023          	sh	s2,0(s4)
    15d0:	002d0d13          	addi	s10,s10,2
    15d4:	002a0a13          	addi	s4,s4,2
    15d8:	fda41ae3          	bne	s0,s10,15ac <processMarkers+0x3e4>
    15dc:	000b1463          	bnez	s6,15e4 <processMarkers+0x41c>
    15e0:	00040993          	mv	s3,s0
    15e4:	020c8913          	addi	s2,s9,32
    15e8:	08000513          	li	a0,128
    15ec:	0080006f          	j	15f4 <processMarkers+0x42c>
    15f0:	00094503          	lbu	a0,0(s2)
    15f4:	00099583          	lh	a1,0(s3)
    15f8:	00190913          	addi	s2,s2,1
    15fc:	00298993          	addi	s3,s3,2
    1600:	7f8020ef          	jal	ra,3df8 <__mulsi3>
    1604:	00450513          	addi	a0,a0,4
    1608:	40355513          	srai	a0,a0,0x3
    160c:	fea99f23          	sh	a0,-2(s3)
    1610:	ff2490e3          	bne	s1,s2,15f0 <processMarkers+0x428>
    1614:	001ab793          	seqz	a5,s5
    1618:	40f007b3          	neg	a5,a5
    161c:	fc07f793          	andi	a5,a5,-64
    1620:	08178793          	addi	a5,a5,129
    1624:	befbeee3          	bltu	s7,a5,1220 <processMarkers+0x58>
    1628:	40fb87b3          	sub	a5,s7,a5
    162c:	01079b93          	slli	s7,a5,0x10
    1630:	010bdb93          	srli	s7,s7,0x10
    1634:	f20b90e3          	bnez	s7,1554 <processMarkers+0x38c>
    1638:	be9ff06f          	j	1220 <processMarkers+0x58>
    163c:	00000593          	li	a1,0
    1640:	00800513          	li	a0,8
    1644:	00891913          	slli	s2,s2,0x8
    1648:	a2dff0ef          	jal	ra,1074 <getBits>
    164c:	01250533          	add	a0,a0,s2
    1650:	01051913          	slli	s2,a0,0x10
    1654:	01095913          	srli	s2,s2,0x10
    1658:	f69ff06f          	j	15c0 <processMarkers+0x3f8>

0000165c <pjpeg_decode_mcu>:
    165c:	f9010113          	addi	sp,sp,-112
    1660:	000117b7          	lui	a5,0x11
    1664:	05712623          	sw	s7,76(sp)
    1668:	d517cb83          	lbu	s7,-687(a5) # 10d51 <gCallbackStatus>
    166c:	06112623          	sw	ra,108(sp)
    1670:	06812423          	sw	s0,104(sp)
    1674:	06912223          	sw	s1,100(sp)
    1678:	07212023          	sw	s2,96(sp)
    167c:	05312e23          	sw	s3,92(sp)
    1680:	05412c23          	sw	s4,88(sp)
    1684:	05512a23          	sw	s5,84(sp)
    1688:	05612823          	sw	s6,80(sp)
    168c:	05812423          	sw	s8,72(sp)
    1690:	05912223          	sw	s9,68(sp)
    1694:	05a12023          	sw	s10,64(sp)
    1698:	03b12e23          	sw	s11,60(sp)
    169c:	000b9a63          	bnez	s7,16b0 <pjpeg_decode_mcu+0x54>
    16a0:	000117b7          	lui	a5,0x11
    16a4:	d627d783          	lhu	a5,-670(a5) # 10d62 <gNumMCUSRemaining>
    16a8:	04079463          	bnez	a5,16f0 <pjpeg_decode_mcu+0x94>
    16ac:	00100b93          	li	s7,1
    16b0:	06c12083          	lw	ra,108(sp)
    16b4:	06812403          	lw	s0,104(sp)
    16b8:	06412483          	lw	s1,100(sp)
    16bc:	06012903          	lw	s2,96(sp)
    16c0:	05c12983          	lw	s3,92(sp)
    16c4:	05812a03          	lw	s4,88(sp)
    16c8:	05412a83          	lw	s5,84(sp)
    16cc:	05012b03          	lw	s6,80(sp)
    16d0:	04812c03          	lw	s8,72(sp)
    16d4:	04412c83          	lw	s9,68(sp)
    16d8:	04012d03          	lw	s10,64(sp)
    16dc:	03c12d83          	lw	s11,60(sp)
    16e0:	000b8513          	mv	a0,s7
    16e4:	04c12b83          	lw	s7,76(sp)
    16e8:	07010113          	addi	sp,sp,112
    16ec:	00008067          	ret
    16f0:	00011937          	lui	s2,0x11
    16f4:	d8095703          	lhu	a4,-640(s2) # 10d80 <gRestartInterval>
    16f8:	20071263          	bnez	a4,18fc <pjpeg_decode_mcu+0x2a0>
    16fc:	00011737          	lui	a4,0x11
    1700:	02e12423          	sw	a4,40(sp)
    1704:	d6a74703          	lbu	a4,-662(a4) # 10d6a <gMaxBlocksPerMCU>
    1708:	22070663          	beqz	a4,1934 <pjpeg_decode_mcu+0x2d8>
    170c:	000117b7          	lui	a5,0x11
    1710:	da478793          	addi	a5,a5,-604 # 10da4 <gLastDC>
    1714:	00f12a23          	sw	a5,20(sp)
    1718:	000117b7          	lui	a5,0x11
    171c:	d5c78793          	addi	a5,a5,-676 # 10d5c <gMCUOrg>
    1720:	02f12023          	sw	a5,32(sp)
    1724:	000117b7          	lui	a5,0x11
    1728:	d7478793          	addi	a5,a5,-652 # 10d74 <gCompDCTab>
    172c:	00f12e23          	sw	a5,28(sp)
    1730:	000117b7          	lui	a5,0x11
    1734:	d8478793          	addi	a5,a5,-636 # 10d84 <gCompQuant>
    1738:	00011737          	lui	a4,0x11
    173c:	00f12c23          	sw	a5,24(sp)
    1740:	000107b7          	lui	a5,0x10
    1744:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    1748:	d7070793          	addi	a5,a4,-656 # 10d70 <gCompACTab>
    174c:	00011737          	lui	a4,0x11
    1750:	00f12823          	sw	a5,16(sp)
    1754:	00010c37          	lui	s8,0x10
    1758:	46070793          	addi	a5,a4,1120 # 11460 <gLastDC+0x6bc>
    175c:	00010437          	lui	s0,0x10
    1760:	02f12223          	sw	a5,36(sp)
    1764:	000104b7          	lui	s1,0x10
    1768:	470c0793          	addi	a5,s8,1136 # 10470 <gCoeffBuf+0x10>
    176c:	35440413          	addi	s0,s0,852 # 10354 <CSWTCH.306>
    1770:	00000b13          	li	s6,0
    1774:	4e048493          	addi	s1,s1,1248 # 104e0 <gMCUBufG>
    1778:	00f12623          	sw	a5,12(sp)
    177c:	03712623          	sw	s7,44(sp)
    1780:	02012783          	lw	a5,32(sp)
    1784:	480d8a93          	addi	s5,s11,1152
    1788:	016787b3          	add	a5,a5,s6
    178c:	0007c983          	lbu	s3,0(a5)
    1790:	01812783          	lw	a5,24(sp)
    1794:	013787b3          	add	a5,a5,s3
    1798:	0007c703          	lbu	a4,0(a5)
    179c:	01c12783          	lw	a5,28(sp)
    17a0:	013787b3          	add	a5,a5,s3
    17a4:	0007c783          	lbu	a5,0(a5)
    17a8:	00071463          	bnez	a4,17b0 <pjpeg_decode_mcu+0x154>
    17ac:	500d8a93          	addi	s5,s11,1280
    17b0:	4e079863          	bnez	a5,1ca0 <pjpeg_decode_mcu+0x644>
    17b4:	5e0d8513          	addi	a0,s11,1504
    17b8:	630d8593          	addi	a1,s11,1584
    17bc:	fe0ff0ef          	jal	ra,f9c <huffDecode>
    17c0:	00050913          	mv	s2,a0
    17c4:	00f57513          	andi	a0,a0,15
    17c8:	00000713          	li	a4,0
    17cc:	4e051863          	bnez	a0,1cbc <pjpeg_decode_mcu+0x660>
    17d0:	fff90913          	addi	s2,s2,-1
    17d4:	0ff97913          	zext.b	s2,s2
    17d8:	00e00793          	li	a5,14
    17dc:	0327e263          	bltu	a5,s2,1800 <pjpeg_decode_mcu+0x1a4>
    17e0:	00191793          	slli	a5,s2,0x1
    17e4:	00f407b3          	add	a5,s0,a5
    17e8:	0607d603          	lhu	a2,96(a5)
    17ec:	00c77a63          	bgeu	a4,a2,1800 <pjpeg_decode_mcu+0x1a4>
    17f0:	0807d783          	lhu	a5,128(a5)
    17f4:	00f70733          	add	a4,a4,a5
    17f8:	01071713          	slli	a4,a4,0x10
    17fc:	01075713          	srli	a4,a4,0x10
    1800:	01412783          	lw	a5,20(sp)
    1804:	00199613          	slli	a2,s3,0x1
    1808:	000ad583          	lhu	a1,0(s5)
    180c:	00c78633          	add	a2,a5,a2
    1810:	00065783          	lhu	a5,0(a2)
    1814:	00f70533          	add	a0,a4,a5
    1818:	01051513          	slli	a0,a0,0x10
    181c:	01055513          	srli	a0,a0,0x10
    1820:	00a61023          	sh	a0,0(a2)
    1824:	5d4020ef          	jal	ra,3df8 <__mulsi3>
    1828:	000117b7          	lui	a5,0x11
    182c:	d507c703          	lbu	a4,-688(a5) # 10d50 <gReduce>
    1830:	01012783          	lw	a5,16(sp)
    1834:	00ad9023          	sh	a0,0(s11)
    1838:	013787b3          	add	a5,a5,s3
    183c:	0007c783          	lbu	a5,0(a5)
    1840:	48070663          	beqz	a4,1ccc <pjpeg_decode_mcu+0x670>
    1844:	70078ae3          	beqz	a5,2758 <pjpeg_decode_mcu+0x10fc>
    1848:	02412783          	lw	a5,36(sp)
    184c:	640d8a13          	addi	s4,s11,1600
    1850:	84078a93          	addi	s5,a5,-1984
    1854:	00100913          	li	s2,1
    1858:	00f00c13          	li	s8,15
    185c:	03000c93          	li	s9,48
    1860:	03f00993          	li	s3,63
    1864:	000a0593          	mv	a1,s4
    1868:	000a8513          	mv	a0,s5
    186c:	f30ff0ef          	jal	ra,f9c <huffDecode>
    1870:	00050b93          	mv	s7,a0
    1874:	00f57513          	andi	a0,a0,15
    1878:	3e051a63          	bnez	a0,1c6c <pjpeg_decode_mcu+0x610>
    187c:	004bdb93          	srli	s7,s7,0x4
    1880:	0ffbfb93          	zext.b	s7,s7
    1884:	018b9e63          	bne	s7,s8,18a0 <pjpeg_decode_mcu+0x244>
    1888:	412ce063          	bltu	s9,s2,1c88 <pjpeg_decode_mcu+0x62c>
    188c:	00f90913          	addi	s2,s2,15
    1890:	0ff97913          	zext.b	s2,s2
    1894:	00190913          	addi	s2,s2,1
    1898:	0ff97913          	zext.b	s2,s2
    189c:	fd29f4e3          	bgeu	s3,s2,1864 <pjpeg_decode_mcu+0x208>
    18a0:	000d9783          	lh	a5,0(s11)
    18a4:	0ff00593          	li	a1,255
    18a8:	04078793          	addi	a5,a5,64
    18ac:	0077d793          	srli	a5,a5,0x7
    18b0:	08078793          	addi	a5,a5,128
    18b4:	01079713          	slli	a4,a5,0x10
    18b8:	01075713          	srli	a4,a4,0x10
    18bc:	0ff7f613          	zext.b	a2,a5
    18c0:	00e5fa63          	bgeu	a1,a4,18d4 <pjpeg_decode_mcu+0x278>
    18c4:	fff74793          	not	a5,a4
    18c8:	01079793          	slli	a5,a5,0x10
    18cc:	41f7d793          	srai	a5,a5,0x1f
    18d0:	0ff7f613          	zext.b	a2,a5
    18d4:	000117b7          	lui	a5,0x11
    18d8:	d6c7a703          	lw	a4,-660(a5) # 10d6c <gScanType>
    18dc:	00400793          	li	a5,4
    18e0:	0ee7ec63          	bltu	a5,a4,19d8 <pjpeg_decode_mcu+0x37c>
    18e4:	000107b7          	lui	a5,0x10
    18e8:	2fc78793          	addi	a5,a5,764 # 102fc <b_ref.0+0x40>
    18ec:	00271713          	slli	a4,a4,0x2
    18f0:	00f70733          	add	a4,a4,a5
    18f4:	00072783          	lw	a5,0(a4)
    18f8:	00078067          	jr	a5
    18fc:	000114b7          	lui	s1,0x11
    1900:	d7c4d783          	lhu	a5,-644(s1) # 10d7c <gRestartsLeft>
    1904:	660782e3          	beqz	a5,2768 <pjpeg_decode_mcu+0x110c>
    1908:	00011737          	lui	a4,0x11
    190c:	02e12423          	sw	a4,40(sp)
    1910:	d6a74703          	lbu	a4,-662(a4) # 10d6a <gMaxBlocksPerMCU>
    1914:	fff78793          	addi	a5,a5,-1
    1918:	d6f49e23          	sh	a5,-644(s1)
    191c:	de0718e3          	bnez	a4,170c <pjpeg_decode_mcu+0xb0>
    1920:	000117b7          	lui	a5,0x11
    1924:	d517c783          	lbu	a5,-687(a5) # 10d51 <gCallbackStatus>
    1928:	36079863          	bnez	a5,1c98 <pjpeg_decode_mcu+0x63c>
    192c:	000117b7          	lui	a5,0x11
    1930:	d627d783          	lhu	a5,-670(a5) # 10d62 <gNumMCUSRemaining>
    1934:	fff78793          	addi	a5,a5,-1
    1938:	00011737          	lui	a4,0x11
    193c:	d6f71123          	sh	a5,-670(a4) # 10d62 <gNumMCUSRemaining>
    1940:	d71ff06f          	j	16b0 <pjpeg_decode_mcu+0x54>
    1944:	00200793          	li	a5,2
    1948:	00fb1463          	bne	s6,a5,1950 <pjpeg_decode_mcu+0x2f4>
    194c:	1280106f          	j	2a74 <pjpeg_decode_mcu+0x1418>
    1950:	1f67e063          	bltu	a5,s6,1b30 <pjpeg_decode_mcu+0x4d4>
    1954:	040b0863          	beqz	s6,19a4 <pjpeg_decode_mcu+0x348>
    1958:	30cd8023          	sb	a2,768(s11)
    195c:	10cd8023          	sb	a2,256(s11)
    1960:	20cd8023          	sb	a2,512(s11)
    1964:	0740006f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    1968:	00200793          	li	a5,2
    196c:	00fb1463          	bne	s6,a5,1974 <pjpeg_decode_mcu+0x318>
    1970:	2300106f          	j	2ba0 <pjpeg_decode_mcu+0x1544>
    1974:	0967e063          	bltu	a5,s6,19f4 <pjpeg_decode_mcu+0x398>
    1978:	020b0663          	beqz	s6,19a4 <pjpeg_decode_mcu+0x348>
    197c:	2ccd8023          	sb	a2,704(s11)
    1980:	0ccd8023          	sb	a2,192(s11)
    1984:	1ccd8023          	sb	a2,448(s11)
    1988:	0500006f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    198c:	00100793          	li	a5,1
    1990:	00fb1463          	bne	s6,a5,1998 <pjpeg_decode_mcu+0x33c>
    1994:	0340106f          	j	29c8 <pjpeg_decode_mcu+0x136c>
    1998:	00200793          	li	a5,2
    199c:	76fb0ce3          	beq	s6,a5,2914 <pjpeg_decode_mcu+0x12b8>
    19a0:	020b1c63          	bnez	s6,19d8 <pjpeg_decode_mcu+0x37c>
    19a4:	28cd8023          	sb	a2,640(s11)
    19a8:	08cd8023          	sb	a2,128(s11)
    19ac:	18cd8023          	sb	a2,384(s11)
    19b0:	0280006f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    19b4:	00500793          	li	a5,5
    19b8:	0367e063          	bltu	a5,s6,19d8 <pjpeg_decode_mcu+0x37c>
    19bc:	00010737          	lui	a4,0x10
    19c0:	002b1793          	slli	a5,s6,0x2
    19c4:	31070713          	addi	a4,a4,784 # 10310 <b_ref.0+0x54>
    19c8:	00e787b3          	add	a5,a5,a4
    19cc:	0007a783          	lw	a5,0(a5)
    19d0:	00078067          	jr	a5
    19d4:	28cd8023          	sb	a2,640(s11)
    19d8:	02812783          	lw	a5,40(sp)
    19dc:	001b0b13          	addi	s6,s6,1
    19e0:	0ffb7b13          	zext.b	s6,s6
    19e4:	d6a7c783          	lbu	a5,-662(a5)
    19e8:	d8fb6ce3          	bltu	s6,a5,1780 <pjpeg_decode_mcu+0x124>
    19ec:	02c12b83          	lw	s7,44(sp)
    19f0:	f31ff06f          	j	1920 <pjpeg_decode_mcu+0x2c4>
    19f4:	00300793          	li	a5,3
    19f8:	fefb10e3          	bne	s6,a5,19d8 <pjpeg_decode_mcu+0x37c>
    19fc:	00161793          	slli	a5,a2,0x1
    1a00:	00c78733          	add	a4,a5,a2
    1a04:	00271713          	slli	a4,a4,0x2
    1a08:	00c70733          	add	a4,a4,a2
    1a0c:	00371713          	slli	a4,a4,0x3
    1a10:	40c70733          	sub	a4,a4,a2
    1a14:	f4d60513          	addi	a0,a2,-179
    1a18:	00875713          	srli	a4,a4,0x8
    1a1c:	00a70733          	add	a4,a4,a0
    1a20:	280dc583          	lbu	a1,640(s11)
    1a24:	01071713          	slli	a4,a4,0x10
    1a28:	01075713          	srli	a4,a4,0x10
    1a2c:	00b705b3          	add	a1,a4,a1
    1a30:	01059593          	slli	a1,a1,0x10
    1a34:	0105d593          	srli	a1,a1,0x10
    1a38:	0ff00513          	li	a0,255
    1a3c:	00b57e63          	bgeu	a0,a1,1a58 <pjpeg_decode_mcu+0x3fc>
    1a40:	01059813          	slli	a6,a1,0x10
    1a44:	41085813          	srai	a6,a6,0x10
    1a48:	00000513          	li	a0,0
    1a4c:	00084863          	bltz	a6,1a5c <pjpeg_decode_mcu+0x400>
    1a50:	0ff00513          	li	a0,255
    1a54:	01054463          	blt	a0,a6,1a5c <pjpeg_decode_mcu+0x400>
    1a58:	0ff5f513          	zext.b	a0,a1
    1a5c:	2c0dc803          	lbu	a6,704(s11)
    1a60:	28ad8023          	sb	a0,640(s11)
    1a64:	0ff00593          	li	a1,255
    1a68:	01070733          	add	a4,a4,a6
    1a6c:	01071713          	slli	a4,a4,0x10
    1a70:	01075713          	srli	a4,a4,0x10
    1a74:	00e5fe63          	bgeu	a1,a4,1a90 <pjpeg_decode_mcu+0x434>
    1a78:	01071513          	slli	a0,a4,0x10
    1a7c:	41055513          	srai	a0,a0,0x10
    1a80:	00000593          	li	a1,0
    1a84:	00054863          	bltz	a0,1a94 <pjpeg_decode_mcu+0x438>
    1a88:	0ff00593          	li	a1,255
    1a8c:	00a5c463          	blt	a1,a0,1a94 <pjpeg_decode_mcu+0x438>
    1a90:	0ff77593          	zext.b	a1,a4
    1a94:	00c787b3          	add	a5,a5,a2
    1a98:	00379793          	slli	a5,a5,0x3
    1a9c:	40c787b3          	sub	a5,a5,a2
    1aa0:	00379793          	slli	a5,a5,0x3
    1aa4:	40c787b3          	sub	a5,a5,a2
    1aa8:	0087d793          	srli	a5,a5,0x8
    1aac:	080dc703          	lbu	a4,128(s11)
    1ab0:	fa578793          	addi	a5,a5,-91
    1ab4:	01079793          	slli	a5,a5,0x10
    1ab8:	0107d793          	srli	a5,a5,0x10
    1abc:	40f70733          	sub	a4,a4,a5
    1ac0:	01071713          	slli	a4,a4,0x10
    1ac4:	2cbd8023          	sb	a1,704(s11)
    1ac8:	01075713          	srli	a4,a4,0x10
    1acc:	0ff00613          	li	a2,255
    1ad0:	00e67e63          	bgeu	a2,a4,1aec <pjpeg_decode_mcu+0x490>
    1ad4:	01071593          	slli	a1,a4,0x10
    1ad8:	4105d593          	srai	a1,a1,0x10
    1adc:	00000613          	li	a2,0
    1ae0:	0005c863          	bltz	a1,1af0 <pjpeg_decode_mcu+0x494>
    1ae4:	0ff00613          	li	a2,255
    1ae8:	00b64463          	blt	a2,a1,1af0 <pjpeg_decode_mcu+0x494>
    1aec:	0ff77613          	zext.b	a2,a4
    1af0:	0c0dc703          	lbu	a4,192(s11)
    1af4:	08cd8023          	sb	a2,128(s11)
    1af8:	0ff00613          	li	a2,255
    1afc:	40f707b3          	sub	a5,a4,a5
    1b00:	01079793          	slli	a5,a5,0x10
    1b04:	0107d793          	srli	a5,a5,0x10
    1b08:	00f67e63          	bgeu	a2,a5,1b24 <pjpeg_decode_mcu+0x4c8>
    1b0c:	01079613          	slli	a2,a5,0x10
    1b10:	41065613          	srai	a2,a2,0x10
    1b14:	00000713          	li	a4,0
    1b18:	00064863          	bltz	a2,1b28 <pjpeg_decode_mcu+0x4cc>
    1b1c:	0ff00713          	li	a4,255
    1b20:	00c74463          	blt	a4,a2,1b28 <pjpeg_decode_mcu+0x4cc>
    1b24:	0ff7f713          	zext.b	a4,a5
    1b28:	0ced8023          	sb	a4,192(s11)
    1b2c:	eadff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    1b30:	00300793          	li	a5,3
    1b34:	eafb12e3          	bne	s6,a5,19d8 <pjpeg_decode_mcu+0x37c>
    1b38:	00161793          	slli	a5,a2,0x1
    1b3c:	00c78733          	add	a4,a5,a2
    1b40:	00271713          	slli	a4,a4,0x2
    1b44:	00c70733          	add	a4,a4,a2
    1b48:	00371713          	slli	a4,a4,0x3
    1b4c:	40c70733          	sub	a4,a4,a2
    1b50:	f4d60513          	addi	a0,a2,-179
    1b54:	00875713          	srli	a4,a4,0x8
    1b58:	00a70733          	add	a4,a4,a0
    1b5c:	280dc583          	lbu	a1,640(s11)
    1b60:	01071713          	slli	a4,a4,0x10
    1b64:	01075713          	srli	a4,a4,0x10
    1b68:	00b705b3          	add	a1,a4,a1
    1b6c:	01059593          	slli	a1,a1,0x10
    1b70:	0105d593          	srli	a1,a1,0x10
    1b74:	0ff00513          	li	a0,255
    1b78:	00b57e63          	bgeu	a0,a1,1b94 <pjpeg_decode_mcu+0x538>
    1b7c:	01059813          	slli	a6,a1,0x10
    1b80:	41085813          	srai	a6,a6,0x10
    1b84:	00000513          	li	a0,0
    1b88:	00084863          	bltz	a6,1b98 <pjpeg_decode_mcu+0x53c>
    1b8c:	0ff00513          	li	a0,255
    1b90:	01054463          	blt	a0,a6,1b98 <pjpeg_decode_mcu+0x53c>
    1b94:	0ff5f513          	zext.b	a0,a1
    1b98:	300dc803          	lbu	a6,768(s11)
    1b9c:	28ad8023          	sb	a0,640(s11)
    1ba0:	0ff00593          	li	a1,255
    1ba4:	01070733          	add	a4,a4,a6
    1ba8:	01071713          	slli	a4,a4,0x10
    1bac:	01075713          	srli	a4,a4,0x10
    1bb0:	00e5fe63          	bgeu	a1,a4,1bcc <pjpeg_decode_mcu+0x570>
    1bb4:	01071513          	slli	a0,a4,0x10
    1bb8:	41055513          	srai	a0,a0,0x10
    1bbc:	00000593          	li	a1,0
    1bc0:	00054863          	bltz	a0,1bd0 <pjpeg_decode_mcu+0x574>
    1bc4:	0ff00593          	li	a1,255
    1bc8:	00a5c463          	blt	a1,a0,1bd0 <pjpeg_decode_mcu+0x574>
    1bcc:	0ff77593          	zext.b	a1,a4
    1bd0:	00c787b3          	add	a5,a5,a2
    1bd4:	00379793          	slli	a5,a5,0x3
    1bd8:	40c787b3          	sub	a5,a5,a2
    1bdc:	00379793          	slli	a5,a5,0x3
    1be0:	40c787b3          	sub	a5,a5,a2
    1be4:	0087d793          	srli	a5,a5,0x8
    1be8:	080dc703          	lbu	a4,128(s11)
    1bec:	fa578793          	addi	a5,a5,-91
    1bf0:	01079793          	slli	a5,a5,0x10
    1bf4:	0107d793          	srli	a5,a5,0x10
    1bf8:	40f70733          	sub	a4,a4,a5
    1bfc:	01071713          	slli	a4,a4,0x10
    1c00:	30bd8023          	sb	a1,768(s11)
    1c04:	01075713          	srli	a4,a4,0x10
    1c08:	0ff00613          	li	a2,255
    1c0c:	00e67e63          	bgeu	a2,a4,1c28 <pjpeg_decode_mcu+0x5cc>
    1c10:	01071593          	slli	a1,a4,0x10
    1c14:	4105d593          	srai	a1,a1,0x10
    1c18:	00000613          	li	a2,0
    1c1c:	0005c863          	bltz	a1,1c2c <pjpeg_decode_mcu+0x5d0>
    1c20:	0ff00613          	li	a2,255
    1c24:	00b64463          	blt	a2,a1,1c2c <pjpeg_decode_mcu+0x5d0>
    1c28:	0ff77613          	zext.b	a2,a4
    1c2c:	100dc703          	lbu	a4,256(s11)
    1c30:	08cd8023          	sb	a2,128(s11)
    1c34:	0ff00613          	li	a2,255
    1c38:	40f707b3          	sub	a5,a4,a5
    1c3c:	01079793          	slli	a5,a5,0x10
    1c40:	0107d793          	srli	a5,a5,0x10
    1c44:	00f67e63          	bgeu	a2,a5,1c60 <pjpeg_decode_mcu+0x604>
    1c48:	01079613          	slli	a2,a5,0x10
    1c4c:	41065613          	srai	a2,a2,0x10
    1c50:	00000713          	li	a4,0
    1c54:	00064863          	bltz	a2,1c64 <pjpeg_decode_mcu+0x608>
    1c58:	0ff00713          	li	a4,255
    1c5c:	00c74463          	blt	a4,a2,1c64 <pjpeg_decode_mcu+0x608>
    1c60:	0ff7f713          	zext.b	a4,a5
    1c64:	10ed8023          	sb	a4,256(s11)
    1c68:	d71ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    1c6c:	004bdb93          	srli	s7,s7,0x4
    1c70:	00100593          	li	a1,1
    1c74:	0ffbfb93          	zext.b	s7,s7
    1c78:	bfcff0ef          	jal	ra,1074 <getBits>
    1c7c:	c00b8ce3          	beqz	s7,1894 <pjpeg_decode_mcu+0x238>
    1c80:	01790933          	add	s2,s2,s7
    1c84:	c129d6e3          	bge	s3,s2,1890 <pjpeg_decode_mcu+0x234>
    1c88:	01c00b93          	li	s7,28
    1c8c:	000117b7          	lui	a5,0x11
    1c90:	d517c783          	lbu	a5,-687(a5) # 10d51 <gCallbackStatus>
    1c94:	a0078ee3          	beqz	a5,16b0 <pjpeg_decode_mcu+0x54>
    1c98:	00078b93          	mv	s7,a5
    1c9c:	a15ff06f          	j	16b0 <pjpeg_decode_mcu+0x54>
    1ca0:	580d8513          	addi	a0,s11,1408
    1ca4:	5d0d8593          	addi	a1,s11,1488
    1ca8:	af4ff0ef          	jal	ra,f9c <huffDecode>
    1cac:	00050913          	mv	s2,a0
    1cb0:	00f57513          	andi	a0,a0,15
    1cb4:	00000713          	li	a4,0
    1cb8:	b0050ce3          	beqz	a0,17d0 <pjpeg_decode_mcu+0x174>
    1cbc:	00100593          	li	a1,1
    1cc0:	bb4ff0ef          	jal	ra,1074 <getBits>
    1cc4:	00050713          	mv	a4,a0
    1cc8:	b09ff06f          	j	17d0 <pjpeg_decode_mcu+0x174>
    1ccc:	26078ee3          	beqz	a5,2748 <pjpeg_decode_mcu+0x10ec>
    1cd0:	02412783          	lw	a5,36(sp)
    1cd4:	640d8993          	addi	s3,s11,1600
    1cd8:	84078a13          	addi	s4,a5,-1984
    1cdc:	00100b93          	li	s7,1
    1ce0:	00f00c13          	li	s8,15
    1ce4:	03f00913          	li	s2,63
    1ce8:	00098593          	mv	a1,s3
    1cec:	000a0513          	mv	a0,s4
    1cf0:	aacff0ef          	jal	ra,f9c <huffDecode>
    1cf4:	00f57d13          	andi	s10,a0,15
    1cf8:	00050c93          	mv	s9,a0
    1cfc:	300d1e63          	bnez	s10,2018 <pjpeg_decode_mcu+0x9bc>
    1d00:	00455c93          	srli	s9,a0,0x4
    1d04:	0ffcfc93          	zext.b	s9,s9
    1d08:	218c90e3          	bne	s9,s8,2708 <pjpeg_decode_mcu+0x10ac>
    1d0c:	03000793          	li	a5,48
    1d10:	f777ece3          	bltu	a5,s7,1c88 <pjpeg_decode_mcu+0x62c>
    1d14:	010b8713          	addi	a4,s7,16
    1d18:	0ff77713          	zext.b	a4,a4
    1d1c:	017407b3          	add	a5,s0,s7
    1d20:	0a078783          	lb	a5,160(a5)
    1d24:	001b8b93          	addi	s7,s7,1
    1d28:	0ffbfb93          	zext.b	s7,s7
    1d2c:	00179793          	slli	a5,a5,0x1
    1d30:	00fd87b3          	add	a5,s11,a5
    1d34:	00079023          	sh	zero,0(a5)
    1d38:	feeb92e3          	bne	s7,a4,1d1c <pjpeg_decode_mcu+0x6c0>
    1d3c:	fb7976e3          	bgeu	s2,s7,1ce8 <pjpeg_decode_mcu+0x68c>
    1d40:	000d8793          	mv	a5,s11
    1d44:	27c0006f          	j	1fc0 <pjpeg_decode_mcu+0x964>
    1d48:	010e1713          	slli	a4,t3,0x10
    1d4c:	01061613          	slli	a2,a2,0x10
    1d50:	01075713          	srli	a4,a4,0x10
    1d54:	01065613          	srli	a2,a2,0x10
    1d58:	40e60fb3          	sub	t6,a2,a4
    1d5c:	01089893          	slli	a7,a7,0x10
    1d60:	01059593          	slli	a1,a1,0x10
    1d64:	0108d893          	srli	a7,a7,0x10
    1d68:	0105d593          	srli	a1,a1,0x10
    1d6c:	010f9f93          	slli	t6,t6,0x10
    1d70:	40b88e33          	sub	t3,a7,a1
    1d74:	010fdf93          	srli	t6,t6,0x10
    1d78:	00b882b3          	add	t0,a7,a1
    1d7c:	010e1e13          	slli	t3,t3,0x10
    1d80:	411f88b3          	sub	a7,t6,a7
    1d84:	410e5e13          	srai	t3,t3,0x10
    1d88:	00e60633          	add	a2,a2,a4
    1d8c:	011585b3          	add	a1,a1,a7
    1d90:	004e1713          	slli	a4,t3,0x4
    1d94:	01061613          	slli	a2,a2,0x10
    1d98:	01029293          	slli	t0,t0,0x10
    1d9c:	01081813          	slli	a6,a6,0x10
    1da0:	01031313          	slli	t1,t1,0x10
    1da4:	01059593          	slli	a1,a1,0x10
    1da8:	4105d593          	srai	a1,a1,0x10
    1dac:	0102d293          	srli	t0,t0,0x10
    1db0:	01085813          	srli	a6,a6,0x10
    1db4:	01035313          	srli	t1,t1,0x10
    1db8:	01065613          	srli	a2,a2,0x10
    1dbc:	01c70733          	add	a4,a4,t3
    1dc0:	40c28f33          	sub	t5,t0,a2
    1dc4:	40680eb3          	sub	t4,a6,t1
    1dc8:	00159893          	slli	a7,a1,0x1
    1dcc:	00271713          	slli	a4,a4,0x2
    1dd0:	00b888b3          	add	a7,a7,a1
    1dd4:	01c70733          	add	a4,a4,t3
    1dd8:	010f1f13          	slli	t5,t5,0x10
    1ddc:	010e9e93          	slli	t4,t4,0x10
    1de0:	410f5f13          	srai	t5,t5,0x10
    1de4:	410ede93          	srai	t4,t4,0x10
    1de8:	00489893          	slli	a7,a7,0x4
    1dec:	00271713          	slli	a4,a4,0x2
    1df0:	001f1913          	slli	s2,t5,0x1
    1df4:	001e9393          	slli	t2,t4,0x1
    1df8:	00b888b3          	add	a7,a7,a1
    1dfc:	01c70733          	add	a4,a4,t3
    1e00:	010f9f93          	slli	t6,t6,0x10
    1e04:	01d383b3          	add	t2,t2,t4
    1e08:	410fdf93          	srai	t6,t6,0x10
    1e0c:	01e90933          	add	s2,s2,t5
    1e10:	00289893          	slli	a7,a7,0x2
    1e14:	08070713          	addi	a4,a4,128
    1e18:	003f9993          	slli	s3,t6,0x3
    1e1c:	00439e13          	slli	t3,t2,0x4
    1e20:	00560633          	add	a2,a2,t0
    1e24:	00491593          	slli	a1,s2,0x4
    1e28:	40875713          	srai	a4,a4,0x8
    1e2c:	08088893          	addi	a7,a7,128
    1e30:	41f989b3          	sub	s3,s3,t6
    1e34:	407e0e33          	sub	t3,t3,t2
    1e38:	412585b3          	sub	a1,a1,s2
    1e3c:	01061613          	slli	a2,a2,0x10
    1e40:	01071713          	slli	a4,a4,0x10
    1e44:	4088d893          	srai	a7,a7,0x8
    1e48:	01065613          	srli	a2,a2,0x10
    1e4c:	01075713          	srli	a4,a4,0x10
    1e50:	00599393          	slli	t2,s3,0x5
    1e54:	00259593          	slli	a1,a1,0x2
    1e58:	002e1e13          	slli	t3,t3,0x2
    1e5c:	01089893          	slli	a7,a7,0x10
    1e60:	0108d893          	srli	a7,a7,0x10
    1e64:	41f38fb3          	sub	t6,t2,t6
    1e68:	40e602b3          	sub	t0,a2,a4
    1e6c:	01e585b3          	add	a1,a1,t5
    1e70:	01de0e33          	add	t3,t3,t4
    1e74:	01069f13          	slli	t5,a3,0x10
    1e78:	01051e93          	slli	t4,a0,0x10
    1e7c:	010f5f13          	srli	t5,t5,0x10
    1e80:	010ede93          	srli	t4,t4,0x10
    1e84:	002f9693          	slli	a3,t6,0x2
    1e88:	001e1e13          	slli	t3,t3,0x1
    1e8c:	005882b3          	add	t0,a7,t0
    1e90:	00159593          	slli	a1,a1,0x1
    1e94:	41ee8533          	sub	a0,t4,t5
    1e98:	41f686b3          	sub	a3,a3,t6
    1e9c:	08058593          	addi	a1,a1,128
    1ea0:	00680fb3          	add	t6,a6,t1
    1ea4:	080e0813          	addi	a6,t3,128
    1ea8:	01029313          	slli	t1,t0,0x10
    1eac:	010f9e13          	slli	t3,t6,0x10
    1eb0:	01035313          	srli	t1,t1,0x10
    1eb4:	01051513          	slli	a0,a0,0x10
    1eb8:	4085d593          	srai	a1,a1,0x8
    1ebc:	40885813          	srai	a6,a6,0x8
    1ec0:	010e5e13          	srli	t3,t3,0x10
    1ec4:	01055513          	srli	a0,a0,0x10
    1ec8:	00b305b3          	add	a1,t1,a1
    1ecc:	01ee8eb3          	add	t4,t4,t5
    1ed0:	08068693          	addi	a3,a3,128
    1ed4:	01081813          	slli	a6,a6,0x10
    1ed8:	01085813          	srli	a6,a6,0x10
    1edc:	41c50f33          	sub	t5,a0,t3
    1ee0:	4086d693          	srai	a3,a3,0x8
    1ee4:	01059593          	slli	a1,a1,0x10
    1ee8:	010e9e93          	slli	t4,t4,0x10
    1eec:	0105d593          	srli	a1,a1,0x10
    1ef0:	010ede93          	srli	t4,t4,0x10
    1ef4:	40d886b3          	sub	a3,a7,a3
    1ef8:	01e80f33          	add	t5,a6,t5
    1efc:	01c50533          	add	a0,a0,t3
    1f00:	01ce8fb3          	add	t6,t4,t3
    1f04:	00d586b3          	add	a3,a1,a3
    1f08:	41ce8eb3          	sub	t4,t4,t3
    1f0c:	41050533          	sub	a0,a0,a6
    1f10:	010f1f13          	slli	t5,t5,0x10
    1f14:	40c70833          	sub	a6,a4,a2
    1f18:	010f5f13          	srli	t5,t5,0x10
    1f1c:	010f9e13          	slli	t3,t6,0x10
    1f20:	010e9713          	slli	a4,t4,0x10
    1f24:	01069693          	slli	a3,a3,0x10
    1f28:	01051513          	slli	a0,a0,0x10
    1f2c:	0106d693          	srli	a3,a3,0x10
    1f30:	01055513          	srli	a0,a0,0x10
    1f34:	010e5e13          	srli	t3,t3,0x10
    1f38:	01075713          	srli	a4,a4,0x10
    1f3c:	010f0833          	add	a6,t5,a6
    1f40:	41180833          	sub	a6,a6,a7
    1f44:	00a58eb3          	add	t4,a1,a0
    1f48:	40d708b3          	sub	a7,a4,a3
    1f4c:	01e30333          	add	t1,t1,t5
    1f50:	00e68733          	add	a4,a3,a4
    1f54:	40b506b3          	sub	a3,a0,a1
    1f58:	40ce0533          	sub	a0,t3,a2
    1f5c:	01c60fb3          	add	t6,a2,t3
    1f60:	01089593          	slli	a1,a7,0x10
    1f64:	01081613          	slli	a2,a6,0x10
    1f68:	01071713          	slli	a4,a4,0x10
    1f6c:	010e9813          	slli	a6,t4,0x10
    1f70:	01069693          	slli	a3,a3,0x10
    1f74:	01031313          	slli	t1,t1,0x10
    1f78:	01051513          	slli	a0,a0,0x10
    1f7c:	01f79023          	sh	t6,0(a5)
    1f80:	41065613          	srai	a2,a2,0x10
    1f84:	41085813          	srai	a6,a6,0x10
    1f88:	4105d593          	srai	a1,a1,0x10
    1f8c:	41075713          	srai	a4,a4,0x10
    1f90:	4106d693          	srai	a3,a3,0x10
    1f94:	41035313          	srai	t1,t1,0x10
    1f98:	41055513          	srai	a0,a0,0x10
    1f9c:	00c79123          	sh	a2,2(a5)
    1fa0:	01079223          	sh	a6,4(a5)
    1fa4:	00b79323          	sh	a1,6(a5)
    1fa8:	00e79423          	sh	a4,8(a5)
    1fac:	00d79523          	sh	a3,10(a5)
    1fb0:	00679623          	sh	t1,12(a5)
    1fb4:	00a79723          	sh	a0,14(a5)
    1fb8:	01078793          	addi	a5,a5,16
    1fbc:	10978063          	beq	a5,s1,20bc <pjpeg_decode_mcu+0xa60>
    1fc0:	00279883          	lh	a7,2(a5)
    1fc4:	00479803          	lh	a6,4(a5)
    1fc8:	00679e03          	lh	t3,6(a5)
    1fcc:	00879683          	lh	a3,8(a5)
    1fd0:	00a79603          	lh	a2,10(a5)
    1fd4:	0108e733          	or	a4,a7,a6
    1fd8:	00c79303          	lh	t1,12(a5)
    1fdc:	00ee6733          	or	a4,t3,a4
    1fe0:	00e79583          	lh	a1,14(a5)
    1fe4:	00e6e733          	or	a4,a3,a4
    1fe8:	00e66733          	or	a4,a2,a4
    1fec:	00e36733          	or	a4,t1,a4
    1ff0:	00e5e733          	or	a4,a1,a4
    1ff4:	00079503          	lh	a0,0(a5)
    1ff8:	d40718e3          	bnez	a4,1d48 <pjpeg_decode_mcu+0x6ec>
    1ffc:	00050613          	mv	a2,a0
    2000:	00050813          	mv	a6,a0
    2004:	00050593          	mv	a1,a0
    2008:	00050713          	mv	a4,a0
    200c:	00050693          	mv	a3,a0
    2010:	00050313          	mv	t1,a0
    2014:	f89ff06f          	j	1f9c <pjpeg_decode_mcu+0x940>
    2018:	004cdc93          	srli	s9,s9,0x4
    201c:	00100593          	li	a1,1
    2020:	000d0513          	mv	a0,s10
    2024:	0ffcfc93          	zext.b	s9,s9
    2028:	84cff0ef          	jal	ra,1074 <getBits>
    202c:	060c9063          	bnez	s9,208c <pjpeg_decode_mcu+0xa30>
    2030:	fffd0793          	addi	a5,s10,-1
    2034:	0ff7f793          	zext.b	a5,a5
    2038:	00179793          	slli	a5,a5,0x1
    203c:	00f407b3          	add	a5,s0,a5
    2040:	0607d703          	lhu	a4,96(a5)
    2044:	00e57a63          	bgeu	a0,a4,2058 <pjpeg_decode_mcu+0x9fc>
    2048:	0807d783          	lhu	a5,128(a5)
    204c:	00f507b3          	add	a5,a0,a5
    2050:	01079513          	slli	a0,a5,0x10
    2054:	01055513          	srli	a0,a0,0x10
    2058:	01740733          	add	a4,s0,s7
    205c:	001b9793          	slli	a5,s7,0x1
    2060:	0a070c83          	lb	s9,160(a4)
    2064:	00fa87b3          	add	a5,s5,a5
    2068:	0007d583          	lhu	a1,0(a5)
    206c:	001c9c93          	slli	s9,s9,0x1
    2070:	019d8cb3          	add	s9,s11,s9
    2074:	585010ef          	jal	ra,3df8 <__mulsi3>
    2078:	001b8b93          	addi	s7,s7,1
    207c:	00ac9023          	sh	a0,0(s9)
    2080:	0ffbfb93          	zext.b	s7,s7
    2084:	c77972e3          	bgeu	s2,s7,1ce8 <pjpeg_decode_mcu+0x68c>
    2088:	cb9ff06f          	j	1d40 <pjpeg_decode_mcu+0x6e4>
    208c:	017c87b3          	add	a5,s9,s7
    2090:	bef94ce3          	blt	s2,a5,1c88 <pjpeg_decode_mcu+0x62c>
    2094:	0ff7f793          	zext.b	a5,a5
    2098:	01740733          	add	a4,s0,s7
    209c:	0a070703          	lb	a4,160(a4)
    20a0:	001b8b93          	addi	s7,s7,1
    20a4:	0ffbfb93          	zext.b	s7,s7
    20a8:	00171713          	slli	a4,a4,0x1
    20ac:	00ed8733          	add	a4,s11,a4
    20b0:	00071023          	sh	zero,0(a4)
    20b4:	fefb92e3          	bne	s7,a5,2098 <pjpeg_decode_mcu+0xa3c>
    20b8:	f79ff06f          	j	2030 <pjpeg_decode_mcu+0x9d4>
    20bc:	000d8713          	mv	a4,s11
    20c0:	0ff00593          	li	a1,255
    20c4:	0800006f          	j	2144 <pjpeg_decode_mcu+0xae8>
    20c8:	04078793          	addi	a5,a5,64
    20cc:	0077d793          	srli	a5,a5,0x7
    20d0:	08078793          	addi	a5,a5,128
    20d4:	01079693          	slli	a3,a5,0x10
    20d8:	0106d693          	srli	a3,a3,0x10
    20dc:	0ff7f793          	zext.b	a5,a5
    20e0:	00d5fa63          	bgeu	a1,a3,20f4 <pjpeg_decode_mcu+0xa98>
    20e4:	fff6c793          	not	a5,a3
    20e8:	01079793          	slli	a5,a5,0x10
    20ec:	41f7d793          	srai	a5,a5,0x1f
    20f0:	0ff7f793          	zext.b	a5,a5
    20f4:	01079793          	slli	a5,a5,0x10
    20f8:	4107d793          	srai	a5,a5,0x10
    20fc:	00078313          	mv	t1,a5
    2100:	00078893          	mv	a7,a5
    2104:	00078813          	mv	a6,a5
    2108:	00078513          	mv	a0,a5
    210c:	00078e93          	mv	t4,a5
    2110:	00078613          	mv	a2,a5
    2114:	00078693          	mv	a3,a5
    2118:	06f71823          	sh	a5,112(a4)
    211c:	00c12783          	lw	a5,12(sp)
    2120:	00671023          	sh	t1,0(a4)
    2124:	01171823          	sh	a7,16(a4)
    2128:	03071023          	sh	a6,32(a4)
    212c:	02a71823          	sh	a0,48(a4)
    2130:	05d71023          	sh	t4,64(a4)
    2134:	04c71823          	sh	a2,80(a4)
    2138:	06d71023          	sh	a3,96(a4)
    213c:	00270713          	addi	a4,a4,2
    2140:	40f70263          	beq	a4,a5,2544 <pjpeg_decode_mcu+0xee8>
    2144:	01071e03          	lh	t3,16(a4)
    2148:	02071803          	lh	a6,32(a4)
    214c:	03071503          	lh	a0,48(a4)
    2150:	04071303          	lh	t1,64(a4)
    2154:	05071603          	lh	a2,80(a4)
    2158:	010e66b3          	or	a3,t3,a6
    215c:	06071883          	lh	a7,96(a4)
    2160:	00d566b3          	or	a3,a0,a3
    2164:	07071283          	lh	t0,112(a4)
    2168:	00d366b3          	or	a3,t1,a3
    216c:	00d666b3          	or	a3,a2,a3
    2170:	00d8e6b3          	or	a3,a7,a3
    2174:	00d2e6b3          	or	a3,t0,a3
    2178:	00071783          	lh	a5,0(a4)
    217c:	f40686e3          	beqz	a3,20c8 <pjpeg_decode_mcu+0xa6c>
    2180:	010e1e13          	slli	t3,t3,0x10
    2184:	01029293          	slli	t0,t0,0x10
    2188:	01061613          	slli	a2,a2,0x10
    218c:	01051513          	slli	a0,a0,0x10
    2190:	010e5e13          	srli	t3,t3,0x10
    2194:	0102d293          	srli	t0,t0,0x10
    2198:	01055513          	srli	a0,a0,0x10
    219c:	01065613          	srli	a2,a2,0x10
    21a0:	00a60f33          	add	t5,a2,a0
    21a4:	005e0933          	add	s2,t3,t0
    21a8:	010f1f13          	slli	t5,t5,0x10
    21ac:	01091913          	slli	s2,s2,0x10
    21b0:	40a60633          	sub	a2,a2,a0
    21b4:	010f5f13          	srli	t5,t5,0x10
    21b8:	01095913          	srli	s2,s2,0x10
    21bc:	405e0a33          	sub	s4,t3,t0
    21c0:	41e909b3          	sub	s3,s2,t5
    21c4:	01061693          	slli	a3,a2,0x10
    21c8:	01089a93          	slli	s5,a7,0x10
    21cc:	01081813          	slli	a6,a6,0x10
    21d0:	0106d693          	srli	a3,a3,0x10
    21d4:	01085813          	srli	a6,a6,0x10
    21d8:	010ada93          	srli	s5,s5,0x10
    21dc:	010a1a13          	slli	s4,s4,0x10
    21e0:	01099993          	slli	s3,s3,0x10
    21e4:	410a5a13          	srai	s4,s4,0x10
    21e8:	41c68533          	sub	a0,a3,t3
    21ec:	4109d993          	srai	s3,s3,0x10
    21f0:	41580e33          	sub	t3,a6,s5
    21f4:	00a282b3          	add	t0,t0,a0
    21f8:	004a1613          	slli	a2,s4,0x4
    21fc:	00199e93          	slli	t4,s3,0x1
    2200:	010e1e13          	slli	t3,t3,0x10
    2204:	410e5e13          	srai	t3,t3,0x10
    2208:	013e8eb3          	add	t4,t4,s3
    220c:	01069893          	slli	a7,a3,0x10
    2210:	01079513          	slli	a0,a5,0x10
    2214:	01460633          	add	a2,a2,s4
    2218:	01029293          	slli	t0,t0,0x10
    221c:	01031313          	slli	t1,t1,0x10
    2220:	4102d293          	srai	t0,t0,0x10
    2224:	4108d893          	srai	a7,a7,0x10
    2228:	01035313          	srli	t1,t1,0x10
    222c:	00261613          	slli	a2,a2,0x2
    2230:	004e9693          	slli	a3,t4,0x4
    2234:	001e1b93          	slli	s7,t3,0x1
    2238:	01055513          	srli	a0,a0,0x10
    223c:	01cb8bb3          	add	s7,s7,t3
    2240:	00129f93          	slli	t6,t0,0x1
    2244:	014607b3          	add	a5,a2,s4
    2248:	00389393          	slli	t2,a7,0x3
    224c:	41d686b3          	sub	a3,a3,t4
    2250:	01580833          	add	a6,a6,s5
    2254:	00650eb3          	add	t4,a0,t1
    2258:	005f8fb3          	add	t6,t6,t0
    225c:	411383b3          	sub	t2,t2,a7
    2260:	00279793          	slli	a5,a5,0x2
    2264:	004b9613          	slli	a2,s7,0x4
    2268:	01081813          	slli	a6,a6,0x10
    226c:	010e9e93          	slli	t4,t4,0x10
    2270:	012f0f33          	add	t5,t5,s2
    2274:	01085813          	srli	a6,a6,0x10
    2278:	010ede93          	srli	t4,t4,0x10
    227c:	014787b3          	add	a5,a5,s4
    2280:	00269693          	slli	a3,a3,0x2
    2284:	004f9f93          	slli	t6,t6,0x4
    2288:	00539393          	slli	t2,t2,0x5
    228c:	41760633          	sub	a2,a2,s7
    2290:	010f1f13          	slli	t5,t5,0x10
    2294:	411383b3          	sub	t2,t2,a7
    2298:	010f5f13          	srli	t5,t5,0x10
    229c:	005f8fb3          	add	t6,t6,t0
    22a0:	08078893          	addi	a7,a5,128
    22a4:	013686b3          	add	a3,a3,s3
    22a8:	010e87b3          	add	a5,t4,a6
    22ac:	00261613          	slli	a2,a2,0x2
    22b0:	01c60633          	add	a2,a2,t3
    22b4:	00169693          	slli	a3,a3,0x1
    22b8:	010f1e13          	slli	t3,t5,0x10
    22bc:	002f9f93          	slli	t6,t6,0x2
    22c0:	4088d893          	srai	a7,a7,0x8
    22c4:	01079793          	slli	a5,a5,0x10
    22c8:	00239293          	slli	t0,t2,0x2
    22cc:	08068693          	addi	a3,a3,128
    22d0:	4107d793          	srai	a5,a5,0x10
    22d4:	410e5e13          	srai	t3,t3,0x10
    22d8:	01089893          	slli	a7,a7,0x10
    22dc:	080f8f93          	addi	t6,t6,128
    22e0:	00161613          	slli	a2,a2,0x1
    22e4:	0108d893          	srli	a7,a7,0x10
    22e8:	407282b3          	sub	t0,t0,t2
    22ec:	40650533          	sub	a0,a0,t1
    22f0:	4086d693          	srai	a3,a3,0x8
    22f4:	01c783b3          	add	t2,a5,t3
    22f8:	408fdf93          	srai	t6,t6,0x8
    22fc:	08060613          	addi	a2,a2,128
    2300:	411686b3          	sub	a3,a3,a7
    2304:	08028293          	addi	t0,t0,128
    2308:	04038313          	addi	t1,t2,64
    230c:	010f9f93          	slli	t6,t6,0x10
    2310:	01051513          	slli	a0,a0,0x10
    2314:	40865613          	srai	a2,a2,0x8
    2318:	010fdf93          	srli	t6,t6,0x10
    231c:	01055513          	srli	a0,a0,0x10
    2320:	00df06b3          	add	a3,t5,a3
    2324:	4082d293          	srai	t0,t0,0x8
    2328:	00735313          	srli	t1,t1,0x7
    232c:	01061613          	slli	a2,a2,0x10
    2330:	00df86b3          	add	a3,t6,a3
    2334:	01065613          	srli	a2,a2,0x10
    2338:	08030313          	addi	t1,t1,128
    233c:	41e88f33          	sub	t5,a7,t5
    2340:	405f82b3          	sub	t0,t6,t0
    2344:	410508b3          	sub	a7,a0,a6
    2348:	01050533          	add	a0,a0,a6
    234c:	41ff0f33          	sub	t5,t5,t6
    2350:	005682b3          	add	t0,a3,t0
    2354:	410e8eb3          	sub	t4,t4,a6
    2358:	01160833          	add	a6,a2,a7
    235c:	40c50633          	sub	a2,a0,a2
    2360:	01031513          	slli	a0,t1,0x10
    2364:	01069f93          	slli	t6,a3,0x10
    2368:	010f1f13          	slli	t5,t5,0x10
    236c:	01029293          	slli	t0,t0,0x10
    2370:	010e9e93          	slli	t4,t4,0x10
    2374:	01081693          	slli	a3,a6,0x10
    2378:	01061613          	slli	a2,a2,0x10
    237c:	01055513          	srli	a0,a0,0x10
    2380:	410f5f13          	srai	t5,t5,0x10
    2384:	410fdf93          	srai	t6,t6,0x10
    2388:	4102d293          	srai	t0,t0,0x10
    238c:	410ede93          	srai	t4,t4,0x10
    2390:	4106d693          	srai	a3,a3,0x10
    2394:	41065613          	srai	a2,a2,0x10
    2398:	0ff37313          	zext.b	t1,t1
    239c:	00a5fa63          	bgeu	a1,a0,23b0 <pjpeg_decode_mcu+0xd54>
    23a0:	fff54513          	not	a0,a0
    23a4:	01051513          	slli	a0,a0,0x10
    23a8:	41f55513          	srai	a0,a0,0x1f
    23ac:	0ff57313          	zext.b	t1,a0
    23b0:	01e688b3          	add	a7,a3,t5
    23b4:	04088893          	addi	a7,a7,64
    23b8:	0078d893          	srli	a7,a7,0x7
    23bc:	08088893          	addi	a7,a7,128
    23c0:	01089513          	slli	a0,a7,0x10
    23c4:	01031313          	slli	t1,t1,0x10
    23c8:	01055513          	srli	a0,a0,0x10
    23cc:	41035313          	srai	t1,t1,0x10
    23d0:	0ff8f893          	zext.b	a7,a7
    23d4:	00a5fa63          	bgeu	a1,a0,23e8 <pjpeg_decode_mcu+0xd8c>
    23d8:	fff54513          	not	a0,a0
    23dc:	01051513          	slli	a0,a0,0x10
    23e0:	41f55513          	srai	a0,a0,0x1f
    23e4:	0ff57893          	zext.b	a7,a0
    23e8:	01f60833          	add	a6,a2,t6
    23ec:	04080813          	addi	a6,a6,64
    23f0:	00785813          	srli	a6,a6,0x7
    23f4:	08080813          	addi	a6,a6,128
    23f8:	01081513          	slli	a0,a6,0x10
    23fc:	01089893          	slli	a7,a7,0x10
    2400:	01055513          	srli	a0,a0,0x10
    2404:	4108d893          	srai	a7,a7,0x10
    2408:	0ff87813          	zext.b	a6,a6
    240c:	00a5fa63          	bgeu	a1,a0,2420 <pjpeg_decode_mcu+0xdc4>
    2410:	fff54513          	not	a0,a0
    2414:	01051513          	slli	a0,a0,0x10
    2418:	41f55513          	srai	a0,a0,0x1f
    241c:	0ff57813          	zext.b	a6,a0
    2420:	405e8533          	sub	a0,t4,t0
    2424:	04050513          	addi	a0,a0,64
    2428:	00755513          	srli	a0,a0,0x7
    242c:	08050513          	addi	a0,a0,128
    2430:	01051393          	slli	t2,a0,0x10
    2434:	01081813          	slli	a6,a6,0x10
    2438:	0103d393          	srli	t2,t2,0x10
    243c:	41085813          	srai	a6,a6,0x10
    2440:	0ff57513          	zext.b	a0,a0
    2444:	0075fa63          	bgeu	a1,t2,2458 <pjpeg_decode_mcu+0xdfc>
    2448:	fff3c513          	not	a0,t2
    244c:	01051513          	slli	a0,a0,0x10
    2450:	41f55513          	srai	a0,a0,0x1f
    2454:	0ff57513          	zext.b	a0,a0
    2458:	005e8eb3          	add	t4,t4,t0
    245c:	040e8e93          	addi	t4,t4,64
    2460:	007ede93          	srli	t4,t4,0x7
    2464:	080e8e93          	addi	t4,t4,128
    2468:	010e9293          	slli	t0,t4,0x10
    246c:	01051513          	slli	a0,a0,0x10
    2470:	0102d293          	srli	t0,t0,0x10
    2474:	41055513          	srai	a0,a0,0x10
    2478:	0ffefe93          	zext.b	t4,t4
    247c:	0055fa63          	bgeu	a1,t0,2490 <pjpeg_decode_mcu+0xe34>
    2480:	fff2ce93          	not	t4,t0
    2484:	010e9e93          	slli	t4,t4,0x10
    2488:	41fede93          	srai	t4,t4,0x1f
    248c:	0ffefe93          	zext.b	t4,t4
    2490:	41f60633          	sub	a2,a2,t6
    2494:	04060613          	addi	a2,a2,64
    2498:	00765613          	srli	a2,a2,0x7
    249c:	08060613          	addi	a2,a2,128
    24a0:	01061f93          	slli	t6,a2,0x10
    24a4:	010e9e93          	slli	t4,t4,0x10
    24a8:	010fdf93          	srli	t6,t6,0x10
    24ac:	410ede93          	srai	t4,t4,0x10
    24b0:	0ff67613          	zext.b	a2,a2
    24b4:	01f5fa63          	bgeu	a1,t6,24c8 <pjpeg_decode_mcu+0xe6c>
    24b8:	ffffc613          	not	a2,t6
    24bc:	01061613          	slli	a2,a2,0x10
    24c0:	41f65613          	srai	a2,a2,0x1f
    24c4:	0ff67613          	zext.b	a2,a2
    24c8:	41e686b3          	sub	a3,a3,t5
    24cc:	04068693          	addi	a3,a3,64
    24d0:	0076d693          	srli	a3,a3,0x7
    24d4:	08068693          	addi	a3,a3,128
    24d8:	01069f13          	slli	t5,a3,0x10
    24dc:	01061613          	slli	a2,a2,0x10
    24e0:	010f5f13          	srli	t5,t5,0x10
    24e4:	41065613          	srai	a2,a2,0x10
    24e8:	0ff6f693          	zext.b	a3,a3
    24ec:	01e5fa63          	bgeu	a1,t5,2500 <pjpeg_decode_mcu+0xea4>
    24f0:	ffff4693          	not	a3,t5
    24f4:	01069693          	slli	a3,a3,0x10
    24f8:	41f6d693          	srai	a3,a3,0x1f
    24fc:	0ff6f693          	zext.b	a3,a3
    2500:	41c787b3          	sub	a5,a5,t3
    2504:	04078793          	addi	a5,a5,64
    2508:	0077d793          	srli	a5,a5,0x7
    250c:	08078793          	addi	a5,a5,128
    2510:	01079e13          	slli	t3,a5,0x10
    2514:	01069693          	slli	a3,a3,0x10
    2518:	010e5e13          	srli	t3,t3,0x10
    251c:	4106d693          	srai	a3,a3,0x10
    2520:	0ff7f793          	zext.b	a5,a5
    2524:	01c5fa63          	bgeu	a1,t3,2538 <pjpeg_decode_mcu+0xedc>
    2528:	fffe4793          	not	a5,t3
    252c:	01079793          	slli	a5,a5,0x10
    2530:	41f7d793          	srai	a5,a5,0x1f
    2534:	0ff7f793          	zext.b	a5,a5
    2538:	01079793          	slli	a5,a5,0x10
    253c:	4107d793          	srai	a5,a5,0x10
    2540:	bd9ff06f          	j	2118 <pjpeg_decode_mcu+0xabc>
    2544:	000117b7          	lui	a5,0x11
    2548:	d6c7a783          	lw	a5,-660(a5) # 10d6c <gScanType>
    254c:	00400713          	li	a4,4
    2550:	c8f76463          	bltu	a4,a5,19d8 <pjpeg_decode_mcu+0x37c>
    2554:	00010737          	lui	a4,0x10
    2558:	00279793          	slli	a5,a5,0x2
    255c:	32870713          	addi	a4,a4,808 # 10328 <b_ref.0+0x6c>
    2560:	00e787b3          	add	a5,a5,a4
    2564:	0007a783          	lw	a5,0(a5)
    2568:	00078067          	jr	a5
    256c:	000107b7          	lui	a5,0x10
    2570:	180d8513          	addi	a0,s11,384
    2574:	280d8593          	addi	a1,s11,640
    2578:	00048613          	mv	a2,s1
    257c:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    2580:	46078793          	addi	a5,a5,1120
    2584:	0007c703          	lbu	a4,0(a5)
    2588:	00278793          	addi	a5,a5,2
    258c:	00158593          	addi	a1,a1,1
    2590:	00e60023          	sb	a4,0(a2)
    2594:	00e50023          	sb	a4,0(a0)
    2598:	fee58fa3          	sb	a4,-1(a1)
    259c:	00160613          	addi	a2,a2,1
    25a0:	00150513          	addi	a0,a0,1
    25a4:	fe9790e3          	bne	a5,s1,2584 <pjpeg_decode_mcu+0xf28>
    25a8:	c30ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    25ac:	00500793          	li	a5,5
    25b0:	c367e463          	bltu	a5,s6,19d8 <pjpeg_decode_mcu+0x37c>
    25b4:	00010737          	lui	a4,0x10
    25b8:	002b1793          	slli	a5,s6,0x2
    25bc:	33c70713          	addi	a4,a4,828 # 1033c <b_ref.0+0x80>
    25c0:	00e787b3          	add	a5,a5,a4
    25c4:	0007a783          	lw	a5,0(a5)
    25c8:	00078067          	jr	a5
    25cc:	00200793          	li	a5,2
    25d0:	7efb0863          	beq	s6,a5,2dc0 <pjpeg_decode_mcu+0x1764>
    25d4:	1167e863          	bltu	a5,s6,26e4 <pjpeg_decode_mcu+0x1088>
    25d8:	2e0b0e63          	beqz	s6,28d4 <pjpeg_decode_mcu+0x1278>
    25dc:	00010737          	lui	a4,0x10
    25e0:	200d8513          	addi	a0,s11,512
    25e4:	100d8593          	addi	a1,s11,256
    25e8:	300d8613          	addi	a2,s11,768
    25ec:	46070793          	addi	a5,a4,1120 # 10460 <gCoeffBuf>
    25f0:	46070d93          	addi	s11,a4,1120
    25f4:	0007c703          	lbu	a4,0(a5)
    25f8:	00278793          	addi	a5,a5,2
    25fc:	00160613          	addi	a2,a2,1
    2600:	00e58023          	sb	a4,0(a1)
    2604:	00e50023          	sb	a4,0(a0)
    2608:	fee60fa3          	sb	a4,-1(a2)
    260c:	00158593          	addi	a1,a1,1
    2610:	00150513          	addi	a0,a0,1
    2614:	fe9790e3          	bne	a5,s1,25f4 <pjpeg_decode_mcu+0xf98>
    2618:	bc0ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    261c:	00200793          	li	a5,2
    2620:	78fb0263          	beq	s6,a5,2da4 <pjpeg_decode_mcu+0x1748>
    2624:	0967ee63          	bltu	a5,s6,26c0 <pjpeg_decode_mcu+0x1064>
    2628:	260b0663          	beqz	s6,2894 <pjpeg_decode_mcu+0x1238>
    262c:	00010737          	lui	a4,0x10
    2630:	1c0d8513          	addi	a0,s11,448
    2634:	0c0d8593          	addi	a1,s11,192
    2638:	2c0d8613          	addi	a2,s11,704
    263c:	46070793          	addi	a5,a4,1120 # 10460 <gCoeffBuf>
    2640:	46070d93          	addi	s11,a4,1120
    2644:	0007c703          	lbu	a4,0(a5)
    2648:	00278793          	addi	a5,a5,2
    264c:	00160613          	addi	a2,a2,1
    2650:	00e58023          	sb	a4,0(a1)
    2654:	00e50023          	sb	a4,0(a0)
    2658:	fee60fa3          	sb	a4,-1(a2)
    265c:	00158593          	addi	a1,a1,1
    2660:	00150513          	addi	a0,a0,1
    2664:	fe9790e3          	bne	a5,s1,2644 <pjpeg_decode_mcu+0xfe8>
    2668:	b70ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    266c:	00100793          	li	a5,1
    2670:	64fb0e63          	beq	s6,a5,2ccc <pjpeg_decode_mcu+0x1670>
    2674:	00200793          	li	a5,2
    2678:	12fb0c63          	beq	s6,a5,27b0 <pjpeg_decode_mcu+0x1154>
    267c:	b40b1e63          	bnez	s6,19d8 <pjpeg_decode_mcu+0x37c>
    2680:	000107b7          	lui	a5,0x10
    2684:	180d8513          	addi	a0,s11,384
    2688:	280d8593          	addi	a1,s11,640
    268c:	00048613          	mv	a2,s1
    2690:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    2694:	46078793          	addi	a5,a5,1120
    2698:	0007c703          	lbu	a4,0(a5)
    269c:	00278793          	addi	a5,a5,2
    26a0:	00158593          	addi	a1,a1,1
    26a4:	00e60023          	sb	a4,0(a2)
    26a8:	00e50023          	sb	a4,0(a0)
    26ac:	fee58fa3          	sb	a4,-1(a1)
    26b0:	00160613          	addi	a2,a2,1
    26b4:	00150513          	addi	a0,a0,1
    26b8:	fe9790e3          	bne	a5,s1,2698 <pjpeg_decode_mcu+0x103c>
    26bc:	b1cff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    26c0:	00300793          	li	a5,3
    26c4:	b0fb1a63          	bne	s6,a5,19d8 <pjpeg_decode_mcu+0x37c>
    26c8:	00000593          	li	a1,0
    26cc:	00000513          	li	a0,0
    26d0:	bd8fe0ef          	jal	ra,aa8 <upsampleCrH>
    26d4:	04000593          	li	a1,64
    26d8:	00400513          	li	a0,4
    26dc:	bccfe0ef          	jal	ra,aa8 <upsampleCrH>
    26e0:	af8ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    26e4:	00300793          	li	a5,3
    26e8:	aefb1863          	bne	s6,a5,19d8 <pjpeg_decode_mcu+0x37c>
    26ec:	00000593          	li	a1,0
    26f0:	00000513          	li	a0,0
    26f4:	d3cfe0ef          	jal	ra,c30 <upsampleCrV>
    26f8:	08000593          	li	a1,128
    26fc:	02000513          	li	a0,32
    2700:	d30fe0ef          	jal	ra,c30 <upsampleCrV>
    2704:	ad4ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2708:	03f00713          	li	a4,63
    270c:	0a140613          	addi	a2,s0,161
    2710:	41770733          	sub	a4,a4,s7
    2714:	000107b7          	lui	a5,0x10
    2718:	01760633          	add	a2,a2,s7
    271c:	0ff77713          	zext.b	a4,a4
    2720:	3f478793          	addi	a5,a5,1012 # 103f4 <ZAG>
    2724:	017787b3          	add	a5,a5,s7
    2728:	00e60633          	add	a2,a2,a4
    272c:	00078703          	lb	a4,0(a5)
    2730:	00178793          	addi	a5,a5,1
    2734:	00171713          	slli	a4,a4,0x1
    2738:	00ed8733          	add	a4,s11,a4
    273c:	00071023          	sh	zero,0(a4)
    2740:	fef616e3          	bne	a2,a5,272c <pjpeg_decode_mcu+0x10d0>
    2744:	dfcff06f          	j	1d40 <pjpeg_decode_mcu+0x6e4>
    2748:	02412783          	lw	a5,36(sp)
    274c:	740d8993          	addi	s3,s11,1856
    2750:	89078a13          	addi	s4,a5,-1904
    2754:	d88ff06f          	j	1cdc <pjpeg_decode_mcu+0x680>
    2758:	02412783          	lw	a5,36(sp)
    275c:	740d8a13          	addi	s4,s11,1856
    2760:	89078a93          	addi	s5,a5,-1904
    2764:	8f0ff06f          	j	1854 <pjpeg_decode_mcu+0x1f8>
    2768:	60000413          	li	s0,1536
    276c:	0ff00993          	li	s3,255
    2770:	0140006f          	j	2784 <pjpeg_decode_mcu+0x1128>
    2774:	fff40413          	addi	s0,s0,-1
    2778:	01041413          	slli	s0,s0,0x10
    277c:	01045413          	srli	s0,s0,0x10
    2780:	02040463          	beqz	s0,27a8 <pjpeg_decode_mcu+0x114c>
    2784:	e34fe0ef          	jal	ra,db8 <getChar>
    2788:	ff3516e3          	bne	a0,s3,2774 <pjpeg_decode_mcu+0x1118>
    278c:	0ff00993          	li	s3,255
    2790:	e28fe0ef          	jal	ra,db8 <getChar>
    2794:	3f3510e3          	bne	a0,s3,3374 <pjpeg_decode_mcu+0x1d18>
    2798:	fff40413          	addi	s0,s0,-1
    279c:	01041413          	slli	s0,s0,0x10
    27a0:	01045413          	srli	s0,s0,0x10
    27a4:	fe0416e3          	bnez	s0,2790 <pjpeg_decode_mcu+0x1134>
    27a8:	01d00b93          	li	s7,29
    27ac:	ce0ff06f          	j	1c8c <pjpeg_decode_mcu+0x630>
    27b0:	000107b7          	lui	a5,0x10
    27b4:	280d8513          	addi	a0,s11,640
    27b8:	00048593          	mv	a1,s1
    27bc:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    27c0:	46078613          	addi	a2,a5,1120
    27c4:	0ff00813          	li	a6,255
    27c8:	05b00893          	li	a7,91
    27cc:	00061303          	lh	t1,0(a2)
    27d0:	00054e03          	lbu	t3,0(a0)
    27d4:	00260613          	addi	a2,a2,2
    27d8:	0ff37693          	zext.b	a3,t1
    27dc:	00169793          	slli	a5,a3,0x1
    27e0:	00d78733          	add	a4,a5,a3
    27e4:	00271713          	slli	a4,a4,0x2
    27e8:	00d70733          	add	a4,a4,a3
    27ec:	00371713          	slli	a4,a4,0x3
    27f0:	40d70733          	sub	a4,a4,a3
    27f4:	0ff37313          	zext.b	t1,t1
    27f8:	00875713          	srli	a4,a4,0x8
    27fc:	f4d30313          	addi	t1,t1,-179
    2800:	00670733          	add	a4,a4,t1
    2804:	01c70733          	add	a4,a4,t3
    2808:	01071713          	slli	a4,a4,0x10
    280c:	01075713          	srli	a4,a4,0x10
    2810:	00e87e63          	bgeu	a6,a4,282c <pjpeg_decode_mcu+0x11d0>
    2814:	01071e13          	slli	t3,a4,0x10
    2818:	410e5e13          	srai	t3,t3,0x10
    281c:	00000313          	li	t1,0
    2820:	000e4863          	bltz	t3,2830 <pjpeg_decode_mcu+0x11d4>
    2824:	0ff00313          	li	t1,255
    2828:	01c84463          	blt	a6,t3,2830 <pjpeg_decode_mcu+0x11d4>
    282c:	0ff77313          	zext.b	t1,a4
    2830:	00d787b3          	add	a5,a5,a3
    2834:	00379793          	slli	a5,a5,0x3
    2838:	40d787b3          	sub	a5,a5,a3
    283c:	00379793          	slli	a5,a5,0x3
    2840:	0005c703          	lbu	a4,0(a1)
    2844:	40d787b3          	sub	a5,a5,a3
    2848:	0087d793          	srli	a5,a5,0x8
    284c:	40f887b3          	sub	a5,a7,a5
    2850:	00e787b3          	add	a5,a5,a4
    2854:	01079793          	slli	a5,a5,0x10
    2858:	00650023          	sb	t1,0(a0)
    285c:	0107d793          	srli	a5,a5,0x10
    2860:	00150513          	addi	a0,a0,1
    2864:	00f87e63          	bgeu	a6,a5,2880 <pjpeg_decode_mcu+0x1224>
    2868:	01079693          	slli	a3,a5,0x10
    286c:	4106d693          	srai	a3,a3,0x10
    2870:	00000713          	li	a4,0
    2874:	0006c863          	bltz	a3,2884 <pjpeg_decode_mcu+0x1228>
    2878:	0ff00713          	li	a4,255
    287c:	00d84463          	blt	a6,a3,2884 <pjpeg_decode_mcu+0x1228>
    2880:	0ff7f713          	zext.b	a4,a5
    2884:	00e58023          	sb	a4,0(a1)
    2888:	00158593          	addi	a1,a1,1
    288c:	f49610e3          	bne	a2,s1,27cc <pjpeg_decode_mcu+0x1170>
    2890:	948ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2894:	000107b7          	lui	a5,0x10
    2898:	180d8513          	addi	a0,s11,384
    289c:	280d8593          	addi	a1,s11,640
    28a0:	00048613          	mv	a2,s1
    28a4:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    28a8:	46078793          	addi	a5,a5,1120
    28ac:	0007c703          	lbu	a4,0(a5)
    28b0:	00278793          	addi	a5,a5,2
    28b4:	00158593          	addi	a1,a1,1
    28b8:	00e60023          	sb	a4,0(a2)
    28bc:	00e50023          	sb	a4,0(a0)
    28c0:	fee58fa3          	sb	a4,-1(a1)
    28c4:	00160613          	addi	a2,a2,1
    28c8:	00150513          	addi	a0,a0,1
    28cc:	fe9790e3          	bne	a5,s1,28ac <pjpeg_decode_mcu+0x1250>
    28d0:	908ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    28d4:	000107b7          	lui	a5,0x10
    28d8:	180d8513          	addi	a0,s11,384
    28dc:	280d8593          	addi	a1,s11,640
    28e0:	00048613          	mv	a2,s1
    28e4:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    28e8:	46078793          	addi	a5,a5,1120
    28ec:	0007c703          	lbu	a4,0(a5)
    28f0:	00278793          	addi	a5,a5,2
    28f4:	00158593          	addi	a1,a1,1
    28f8:	00e60023          	sb	a4,0(a2)
    28fc:	00e50023          	sb	a4,0(a0)
    2900:	fee58fa3          	sb	a4,-1(a1)
    2904:	00160613          	addi	a2,a2,1
    2908:	00150513          	addi	a0,a0,1
    290c:	fe9790e3          	bne	a5,s1,28ec <pjpeg_decode_mcu+0x1290>
    2910:	8c8ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2914:	00161793          	slli	a5,a2,0x1
    2918:	00c785b3          	add	a1,a5,a2
    291c:	280dc703          	lbu	a4,640(s11)
    2920:	00259593          	slli	a1,a1,0x2
    2924:	00c585b3          	add	a1,a1,a2
    2928:	00359593          	slli	a1,a1,0x3
    292c:	f4d70713          	addi	a4,a4,-179
    2930:	40c585b3          	sub	a1,a1,a2
    2934:	0085d593          	srli	a1,a1,0x8
    2938:	00c70733          	add	a4,a4,a2
    293c:	00b70733          	add	a4,a4,a1
    2940:	01071713          	slli	a4,a4,0x10
    2944:	01075713          	srli	a4,a4,0x10
    2948:	0ff00593          	li	a1,255
    294c:	00e5fe63          	bgeu	a1,a4,2968 <pjpeg_decode_mcu+0x130c>
    2950:	01071513          	slli	a0,a4,0x10
    2954:	41055513          	srai	a0,a0,0x10
    2958:	00000593          	li	a1,0
    295c:	00054863          	bltz	a0,296c <pjpeg_decode_mcu+0x1310>
    2960:	0ff00593          	li	a1,255
    2964:	00a5c463          	blt	a1,a0,296c <pjpeg_decode_mcu+0x1310>
    2968:	0ff77593          	zext.b	a1,a4
    296c:	00c787b3          	add	a5,a5,a2
    2970:	00379793          	slli	a5,a5,0x3
    2974:	080dc703          	lbu	a4,128(s11)
    2978:	40c787b3          	sub	a5,a5,a2
    297c:	00379793          	slli	a5,a5,0x3
    2980:	40c787b3          	sub	a5,a5,a2
    2984:	05b70713          	addi	a4,a4,91
    2988:	0087d793          	srli	a5,a5,0x8
    298c:	40f707b3          	sub	a5,a4,a5
    2990:	01079793          	slli	a5,a5,0x10
    2994:	28bd8023          	sb	a1,640(s11)
    2998:	0107d793          	srli	a5,a5,0x10
    299c:	0ff00713          	li	a4,255
    29a0:	00f77e63          	bgeu	a4,a5,29bc <pjpeg_decode_mcu+0x1360>
    29a4:	01079613          	slli	a2,a5,0x10
    29a8:	41065613          	srai	a2,a2,0x10
    29ac:	00000713          	li	a4,0
    29b0:	00064863          	bltz	a2,29c0 <pjpeg_decode_mcu+0x1364>
    29b4:	0ff00713          	li	a4,255
    29b8:	00c74463          	blt	a4,a2,29c0 <pjpeg_decode_mcu+0x1364>
    29bc:	0ff7f713          	zext.b	a4,a5
    29c0:	08ed8023          	sb	a4,128(s11)
    29c4:	814ff06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    29c8:	00161793          	slli	a5,a2,0x1
    29cc:	00c785b3          	add	a1,a5,a2
    29d0:	080dc703          	lbu	a4,128(s11)
    29d4:	00259593          	slli	a1,a1,0x2
    29d8:	40c585b3          	sub	a1,a1,a2
    29dc:	00359593          	slli	a1,a1,0x3
    29e0:	0085d593          	srli	a1,a1,0x8
    29e4:	02c70713          	addi	a4,a4,44
    29e8:	40b70733          	sub	a4,a4,a1
    29ec:	01071713          	slli	a4,a4,0x10
    29f0:	01075713          	srli	a4,a4,0x10
    29f4:	0ff00593          	li	a1,255
    29f8:	00e5fe63          	bgeu	a1,a4,2a14 <pjpeg_decode_mcu+0x13b8>
    29fc:	01071513          	slli	a0,a4,0x10
    2a00:	41055513          	srai	a0,a0,0x10
    2a04:	00000593          	li	a1,0
    2a08:	00054863          	bltz	a0,2a18 <pjpeg_decode_mcu+0x13bc>
    2a0c:	0ff00593          	li	a1,255
    2a10:	00a5c463          	blt	a1,a0,2a18 <pjpeg_decode_mcu+0x13bc>
    2a14:	0ff77593          	zext.b	a1,a4
    2a18:	00c78733          	add	a4,a5,a2
    2a1c:	180dc783          	lbu	a5,384(s11)
    2a20:	00571513          	slli	a0,a4,0x5
    2a24:	00a70733          	add	a4,a4,a0
    2a28:	f1d78793          	addi	a5,a5,-227
    2a2c:	00171713          	slli	a4,a4,0x1
    2a30:	00875713          	srli	a4,a4,0x8
    2a34:	00c787b3          	add	a5,a5,a2
    2a38:	00e787b3          	add	a5,a5,a4
    2a3c:	01079793          	slli	a5,a5,0x10
    2a40:	08bd8023          	sb	a1,128(s11)
    2a44:	0107d793          	srli	a5,a5,0x10
    2a48:	0ff00713          	li	a4,255
    2a4c:	00f77e63          	bgeu	a4,a5,2a68 <pjpeg_decode_mcu+0x140c>
    2a50:	01079613          	slli	a2,a5,0x10
    2a54:	41065613          	srai	a2,a2,0x10
    2a58:	00000713          	li	a4,0
    2a5c:	00064863          	bltz	a2,2a6c <pjpeg_decode_mcu+0x1410>
    2a60:	0ff00713          	li	a4,255
    2a64:	00c74463          	blt	a4,a2,2a6c <pjpeg_decode_mcu+0x1410>
    2a68:	0ff7f713          	zext.b	a4,a5
    2a6c:	18ed8023          	sb	a4,384(s11)
    2a70:	f69fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2a74:	00161793          	slli	a5,a2,0x1
    2a78:	00c78733          	add	a4,a5,a2
    2a7c:	00271713          	slli	a4,a4,0x2
    2a80:	40c70733          	sub	a4,a4,a2
    2a84:	00371713          	slli	a4,a4,0x3
    2a88:	00875713          	srli	a4,a4,0x8
    2a8c:	080dc583          	lbu	a1,128(s11)
    2a90:	fd470713          	addi	a4,a4,-44
    2a94:	01071713          	slli	a4,a4,0x10
    2a98:	01075713          	srli	a4,a4,0x10
    2a9c:	40e585b3          	sub	a1,a1,a4
    2aa0:	01059593          	slli	a1,a1,0x10
    2aa4:	0105d593          	srli	a1,a1,0x10
    2aa8:	0ff00513          	li	a0,255
    2aac:	00b57e63          	bgeu	a0,a1,2ac8 <pjpeg_decode_mcu+0x146c>
    2ab0:	01059813          	slli	a6,a1,0x10
    2ab4:	41085813          	srai	a6,a6,0x10
    2ab8:	00000513          	li	a0,0
    2abc:	00084863          	bltz	a6,2acc <pjpeg_decode_mcu+0x1470>
    2ac0:	0ff00513          	li	a0,255
    2ac4:	01054463          	blt	a0,a6,2acc <pjpeg_decode_mcu+0x1470>
    2ac8:	0ff5f513          	zext.b	a0,a1
    2acc:	100dc583          	lbu	a1,256(s11)
    2ad0:	08ad8023          	sb	a0,128(s11)
    2ad4:	0ff00513          	li	a0,255
    2ad8:	40e58733          	sub	a4,a1,a4
    2adc:	01071713          	slli	a4,a4,0x10
    2ae0:	01075713          	srli	a4,a4,0x10
    2ae4:	00e57e63          	bgeu	a0,a4,2b00 <pjpeg_decode_mcu+0x14a4>
    2ae8:	01071513          	slli	a0,a4,0x10
    2aec:	41055513          	srai	a0,a0,0x10
    2af0:	00000593          	li	a1,0
    2af4:	00054863          	bltz	a0,2b04 <pjpeg_decode_mcu+0x14a8>
    2af8:	0ff00593          	li	a1,255
    2afc:	00a5c463          	blt	a1,a0,2b04 <pjpeg_decode_mcu+0x14a8>
    2b00:	0ff77593          	zext.b	a1,a4
    2b04:	00c787b3          	add	a5,a5,a2
    2b08:	00579713          	slli	a4,a5,0x5
    2b0c:	00e787b3          	add	a5,a5,a4
    2b10:	00179793          	slli	a5,a5,0x1
    2b14:	f1d60613          	addi	a2,a2,-227
    2b18:	0087d793          	srli	a5,a5,0x8
    2b1c:	00c787b3          	add	a5,a5,a2
    2b20:	180dc703          	lbu	a4,384(s11)
    2b24:	01079793          	slli	a5,a5,0x10
    2b28:	0107d793          	srli	a5,a5,0x10
    2b2c:	00e78733          	add	a4,a5,a4
    2b30:	01071713          	slli	a4,a4,0x10
    2b34:	10bd8023          	sb	a1,256(s11)
    2b38:	01075713          	srli	a4,a4,0x10
    2b3c:	0ff00613          	li	a2,255
    2b40:	00e67e63          	bgeu	a2,a4,2b5c <pjpeg_decode_mcu+0x1500>
    2b44:	01071593          	slli	a1,a4,0x10
    2b48:	4105d593          	srai	a1,a1,0x10
    2b4c:	00000613          	li	a2,0
    2b50:	0005c863          	bltz	a1,2b60 <pjpeg_decode_mcu+0x1504>
    2b54:	0ff00613          	li	a2,255
    2b58:	00b64463          	blt	a2,a1,2b60 <pjpeg_decode_mcu+0x1504>
    2b5c:	0ff77613          	zext.b	a2,a4
    2b60:	200dc583          	lbu	a1,512(s11)
    2b64:	18cd8023          	sb	a2,384(s11)
    2b68:	0ff00713          	li	a4,255
    2b6c:	00b787b3          	add	a5,a5,a1
    2b70:	01079793          	slli	a5,a5,0x10
    2b74:	0107d793          	srli	a5,a5,0x10
    2b78:	00f77e63          	bgeu	a4,a5,2b94 <pjpeg_decode_mcu+0x1538>
    2b7c:	01079613          	slli	a2,a5,0x10
    2b80:	41065613          	srai	a2,a2,0x10
    2b84:	00000713          	li	a4,0
    2b88:	00064863          	bltz	a2,2b98 <pjpeg_decode_mcu+0x153c>
    2b8c:	0ff00713          	li	a4,255
    2b90:	00c74463          	blt	a4,a2,2b98 <pjpeg_decode_mcu+0x153c>
    2b94:	0ff7f713          	zext.b	a4,a5
    2b98:	20ed8023          	sb	a4,512(s11)
    2b9c:	e3dfe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2ba0:	00161793          	slli	a5,a2,0x1
    2ba4:	00c78733          	add	a4,a5,a2
    2ba8:	00271713          	slli	a4,a4,0x2
    2bac:	40c70733          	sub	a4,a4,a2
    2bb0:	00371713          	slli	a4,a4,0x3
    2bb4:	00875713          	srli	a4,a4,0x8
    2bb8:	080dc583          	lbu	a1,128(s11)
    2bbc:	fd470713          	addi	a4,a4,-44
    2bc0:	01071713          	slli	a4,a4,0x10
    2bc4:	01075713          	srli	a4,a4,0x10
    2bc8:	40e585b3          	sub	a1,a1,a4
    2bcc:	01059593          	slli	a1,a1,0x10
    2bd0:	0105d593          	srli	a1,a1,0x10
    2bd4:	0ff00513          	li	a0,255
    2bd8:	00b57e63          	bgeu	a0,a1,2bf4 <pjpeg_decode_mcu+0x1598>
    2bdc:	01059813          	slli	a6,a1,0x10
    2be0:	41085813          	srai	a6,a6,0x10
    2be4:	00000513          	li	a0,0
    2be8:	00084863          	bltz	a6,2bf8 <pjpeg_decode_mcu+0x159c>
    2bec:	0ff00513          	li	a0,255
    2bf0:	01054463          	blt	a0,a6,2bf8 <pjpeg_decode_mcu+0x159c>
    2bf4:	0ff5f513          	zext.b	a0,a1
    2bf8:	0c0dc583          	lbu	a1,192(s11)
    2bfc:	08ad8023          	sb	a0,128(s11)
    2c00:	0ff00513          	li	a0,255
    2c04:	40e58733          	sub	a4,a1,a4
    2c08:	01071713          	slli	a4,a4,0x10
    2c0c:	01075713          	srli	a4,a4,0x10
    2c10:	00e57e63          	bgeu	a0,a4,2c2c <pjpeg_decode_mcu+0x15d0>
    2c14:	01071513          	slli	a0,a4,0x10
    2c18:	41055513          	srai	a0,a0,0x10
    2c1c:	00000593          	li	a1,0
    2c20:	00054863          	bltz	a0,2c30 <pjpeg_decode_mcu+0x15d4>
    2c24:	0ff00593          	li	a1,255
    2c28:	00a5c463          	blt	a1,a0,2c30 <pjpeg_decode_mcu+0x15d4>
    2c2c:	0ff77593          	zext.b	a1,a4
    2c30:	00c787b3          	add	a5,a5,a2
    2c34:	00579713          	slli	a4,a5,0x5
    2c38:	00e787b3          	add	a5,a5,a4
    2c3c:	00179793          	slli	a5,a5,0x1
    2c40:	f1d60613          	addi	a2,a2,-227
    2c44:	0087d793          	srli	a5,a5,0x8
    2c48:	00c787b3          	add	a5,a5,a2
    2c4c:	180dc703          	lbu	a4,384(s11)
    2c50:	01079793          	slli	a5,a5,0x10
    2c54:	0107d793          	srli	a5,a5,0x10
    2c58:	00e78733          	add	a4,a5,a4
    2c5c:	01071713          	slli	a4,a4,0x10
    2c60:	0cbd8023          	sb	a1,192(s11)
    2c64:	01075713          	srli	a4,a4,0x10
    2c68:	0ff00613          	li	a2,255
    2c6c:	00e67e63          	bgeu	a2,a4,2c88 <pjpeg_decode_mcu+0x162c>
    2c70:	01071593          	slli	a1,a4,0x10
    2c74:	4105d593          	srai	a1,a1,0x10
    2c78:	00000613          	li	a2,0
    2c7c:	0005c863          	bltz	a1,2c8c <pjpeg_decode_mcu+0x1630>
    2c80:	0ff00613          	li	a2,255
    2c84:	00b64463          	blt	a2,a1,2c8c <pjpeg_decode_mcu+0x1630>
    2c88:	0ff77613          	zext.b	a2,a4
    2c8c:	1c0dc583          	lbu	a1,448(s11)
    2c90:	18cd8023          	sb	a2,384(s11)
    2c94:	0ff00713          	li	a4,255
    2c98:	00b787b3          	add	a5,a5,a1
    2c9c:	01079793          	slli	a5,a5,0x10
    2ca0:	0107d793          	srli	a5,a5,0x10
    2ca4:	00f77e63          	bgeu	a4,a5,2cc0 <pjpeg_decode_mcu+0x1664>
    2ca8:	01079613          	slli	a2,a5,0x10
    2cac:	41065613          	srai	a2,a2,0x10
    2cb0:	00000713          	li	a4,0
    2cb4:	00064863          	bltz	a2,2cc4 <pjpeg_decode_mcu+0x1668>
    2cb8:	0ff00713          	li	a4,255
    2cbc:	00c74463          	blt	a4,a2,2cc4 <pjpeg_decode_mcu+0x1668>
    2cc0:	0ff7f713          	zext.b	a4,a5
    2cc4:	1ced8023          	sb	a4,448(s11)
    2cc8:	d11fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2ccc:	000107b7          	lui	a5,0x10
    2cd0:	180d8513          	addi	a0,s11,384
    2cd4:	00048593          	mv	a1,s1
    2cd8:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    2cdc:	46078613          	addi	a2,a5,1120
    2ce0:	02c00893          	li	a7,44
    2ce4:	0ff00813          	li	a6,255
    2ce8:	00061683          	lh	a3,0(a2)
    2cec:	0005ce03          	lbu	t3,0(a1)
    2cf0:	00260613          	addi	a2,a2,2
    2cf4:	0ff6f313          	zext.b	t1,a3
    2cf8:	00131793          	slli	a5,t1,0x1
    2cfc:	00678733          	add	a4,a5,t1
    2d00:	00271713          	slli	a4,a4,0x2
    2d04:	40670733          	sub	a4,a4,t1
    2d08:	00371713          	slli	a4,a4,0x3
    2d0c:	00875713          	srli	a4,a4,0x8
    2d10:	40e88733          	sub	a4,a7,a4
    2d14:	01c70733          	add	a4,a4,t3
    2d18:	01071713          	slli	a4,a4,0x10
    2d1c:	01075713          	srli	a4,a4,0x10
    2d20:	00e87e63          	bgeu	a6,a4,2d3c <pjpeg_decode_mcu+0x16e0>
    2d24:	01071e93          	slli	t4,a4,0x10
    2d28:	410ede93          	srai	t4,t4,0x10
    2d2c:	00000e13          	li	t3,0
    2d30:	000ec863          	bltz	t4,2d40 <pjpeg_decode_mcu+0x16e4>
    2d34:	0ff00e13          	li	t3,255
    2d38:	01d84463          	blt	a6,t4,2d40 <pjpeg_decode_mcu+0x16e4>
    2d3c:	0ff77e13          	zext.b	t3,a4
    2d40:	006787b3          	add	a5,a5,t1
    2d44:	00579313          	slli	t1,a5,0x5
    2d48:	00054703          	lbu	a4,0(a0)
    2d4c:	006787b3          	add	a5,a5,t1
    2d50:	0ff6f693          	zext.b	a3,a3
    2d54:	0077d793          	srli	a5,a5,0x7
    2d58:	f1d68693          	addi	a3,a3,-227
    2d5c:	00d787b3          	add	a5,a5,a3
    2d60:	00e787b3          	add	a5,a5,a4
    2d64:	01079793          	slli	a5,a5,0x10
    2d68:	01c58023          	sb	t3,0(a1)
    2d6c:	0107d793          	srli	a5,a5,0x10
    2d70:	00158593          	addi	a1,a1,1
    2d74:	00f87e63          	bgeu	a6,a5,2d90 <pjpeg_decode_mcu+0x1734>
    2d78:	01079693          	slli	a3,a5,0x10
    2d7c:	4106d693          	srai	a3,a3,0x10
    2d80:	00000713          	li	a4,0
    2d84:	0006c863          	bltz	a3,2d94 <pjpeg_decode_mcu+0x1738>
    2d88:	0ff00713          	li	a4,255
    2d8c:	00d84463          	blt	a6,a3,2d94 <pjpeg_decode_mcu+0x1738>
    2d90:	0ff7f713          	zext.b	a4,a5
    2d94:	00e50023          	sb	a4,0(a0)
    2d98:	00150513          	addi	a0,a0,1
    2d9c:	f49616e3          	bne	a2,s1,2ce8 <pjpeg_decode_mcu+0x168c>
    2da0:	c39fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2da4:	00000593          	li	a1,0
    2da8:	00000513          	li	a0,0
    2dac:	facfd0ef          	jal	ra,558 <upsampleCbH>
    2db0:	04000593          	li	a1,64
    2db4:	00400513          	li	a0,4
    2db8:	fa0fd0ef          	jal	ra,558 <upsampleCbH>
    2dbc:	c1dfe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2dc0:	00000593          	li	a1,0
    2dc4:	00000513          	li	a0,0
    2dc8:	90dfd0ef          	jal	ra,6d4 <upsampleCbV>
    2dcc:	08000593          	li	a1,128
    2dd0:	02000513          	li	a0,32
    2dd4:	901fd0ef          	jal	ra,6d4 <upsampleCbV>
    2dd8:	c01fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2ddc:	00161793          	slli	a5,a2,0x1
    2de0:	00c78733          	add	a4,a5,a2
    2de4:	00271713          	slli	a4,a4,0x2
    2de8:	00c70733          	add	a4,a4,a2
    2dec:	00371713          	slli	a4,a4,0x3
    2df0:	40c70733          	sub	a4,a4,a2
    2df4:	f4d60513          	addi	a0,a2,-179
    2df8:	00875713          	srli	a4,a4,0x8
    2dfc:	00a70733          	add	a4,a4,a0
    2e00:	280dc583          	lbu	a1,640(s11)
    2e04:	01071713          	slli	a4,a4,0x10
    2e08:	01075713          	srli	a4,a4,0x10
    2e0c:	00b705b3          	add	a1,a4,a1
    2e10:	01059593          	slli	a1,a1,0x10
    2e14:	0105d593          	srli	a1,a1,0x10
    2e18:	0ff00513          	li	a0,255
    2e1c:	00b57e63          	bgeu	a0,a1,2e38 <pjpeg_decode_mcu+0x17dc>
    2e20:	01059813          	slli	a6,a1,0x10
    2e24:	41085813          	srai	a6,a6,0x10
    2e28:	00000513          	li	a0,0
    2e2c:	00084863          	bltz	a6,2e3c <pjpeg_decode_mcu+0x17e0>
    2e30:	0ff00513          	li	a0,255
    2e34:	01054463          	blt	a0,a6,2e3c <pjpeg_decode_mcu+0x17e0>
    2e38:	0ff5f513          	zext.b	a0,a1
    2e3c:	2c0dc583          	lbu	a1,704(s11)
    2e40:	28ad8023          	sb	a0,640(s11)
    2e44:	0ff00513          	li	a0,255
    2e48:	00b705b3          	add	a1,a4,a1
    2e4c:	01059593          	slli	a1,a1,0x10
    2e50:	0105d593          	srli	a1,a1,0x10
    2e54:	00b57e63          	bgeu	a0,a1,2e70 <pjpeg_decode_mcu+0x1814>
    2e58:	01059813          	slli	a6,a1,0x10
    2e5c:	41085813          	srai	a6,a6,0x10
    2e60:	00000513          	li	a0,0
    2e64:	00084863          	bltz	a6,2e74 <pjpeg_decode_mcu+0x1818>
    2e68:	0ff00513          	li	a0,255
    2e6c:	01054463          	blt	a0,a6,2e74 <pjpeg_decode_mcu+0x1818>
    2e70:	0ff5f513          	zext.b	a0,a1
    2e74:	300dc583          	lbu	a1,768(s11)
    2e78:	2cad8023          	sb	a0,704(s11)
    2e7c:	0ff00513          	li	a0,255
    2e80:	00b705b3          	add	a1,a4,a1
    2e84:	01059593          	slli	a1,a1,0x10
    2e88:	0105d593          	srli	a1,a1,0x10
    2e8c:	00b57e63          	bgeu	a0,a1,2ea8 <pjpeg_decode_mcu+0x184c>
    2e90:	01059813          	slli	a6,a1,0x10
    2e94:	41085813          	srai	a6,a6,0x10
    2e98:	00000513          	li	a0,0
    2e9c:	00084863          	bltz	a6,2eac <pjpeg_decode_mcu+0x1850>
    2ea0:	0ff00513          	li	a0,255
    2ea4:	01054463          	blt	a0,a6,2eac <pjpeg_decode_mcu+0x1850>
    2ea8:	0ff5f513          	zext.b	a0,a1
    2eac:	340dc803          	lbu	a6,832(s11)
    2eb0:	30ad8023          	sb	a0,768(s11)
    2eb4:	0ff00593          	li	a1,255
    2eb8:	01070733          	add	a4,a4,a6
    2ebc:	01071713          	slli	a4,a4,0x10
    2ec0:	01075713          	srli	a4,a4,0x10
    2ec4:	00e5fe63          	bgeu	a1,a4,2ee0 <pjpeg_decode_mcu+0x1884>
    2ec8:	01071513          	slli	a0,a4,0x10
    2ecc:	41055513          	srai	a0,a0,0x10
    2ed0:	00000593          	li	a1,0
    2ed4:	00054863          	bltz	a0,2ee4 <pjpeg_decode_mcu+0x1888>
    2ed8:	0ff00593          	li	a1,255
    2edc:	00a5c463          	blt	a1,a0,2ee4 <pjpeg_decode_mcu+0x1888>
    2ee0:	0ff77593          	zext.b	a1,a4
    2ee4:	00c787b3          	add	a5,a5,a2
    2ee8:	00379793          	slli	a5,a5,0x3
    2eec:	40c787b3          	sub	a5,a5,a2
    2ef0:	00379793          	slli	a5,a5,0x3
    2ef4:	40c787b3          	sub	a5,a5,a2
    2ef8:	0087d793          	srli	a5,a5,0x8
    2efc:	080dc703          	lbu	a4,128(s11)
    2f00:	fa578793          	addi	a5,a5,-91
    2f04:	01079793          	slli	a5,a5,0x10
    2f08:	0107d793          	srli	a5,a5,0x10
    2f0c:	40f70733          	sub	a4,a4,a5
    2f10:	01071713          	slli	a4,a4,0x10
    2f14:	34bd8023          	sb	a1,832(s11)
    2f18:	01075713          	srli	a4,a4,0x10
    2f1c:	0ff00613          	li	a2,255
    2f20:	00e67e63          	bgeu	a2,a4,2f3c <pjpeg_decode_mcu+0x18e0>
    2f24:	01071593          	slli	a1,a4,0x10
    2f28:	4105d593          	srai	a1,a1,0x10
    2f2c:	00000613          	li	a2,0
    2f30:	0005c863          	bltz	a1,2f40 <pjpeg_decode_mcu+0x18e4>
    2f34:	0ff00613          	li	a2,255
    2f38:	00b64463          	blt	a2,a1,2f40 <pjpeg_decode_mcu+0x18e4>
    2f3c:	0ff77613          	zext.b	a2,a4
    2f40:	0c0dc703          	lbu	a4,192(s11)
    2f44:	08cd8023          	sb	a2,128(s11)
    2f48:	0ff00613          	li	a2,255
    2f4c:	40f70733          	sub	a4,a4,a5
    2f50:	01071713          	slli	a4,a4,0x10
    2f54:	01075713          	srli	a4,a4,0x10
    2f58:	00e67e63          	bgeu	a2,a4,2f74 <pjpeg_decode_mcu+0x1918>
    2f5c:	01071593          	slli	a1,a4,0x10
    2f60:	4105d593          	srai	a1,a1,0x10
    2f64:	00000613          	li	a2,0
    2f68:	0005c863          	bltz	a1,2f78 <pjpeg_decode_mcu+0x191c>
    2f6c:	0ff00613          	li	a2,255
    2f70:	00b64463          	blt	a2,a1,2f78 <pjpeg_decode_mcu+0x191c>
    2f74:	0ff77613          	zext.b	a2,a4
    2f78:	100dc703          	lbu	a4,256(s11)
    2f7c:	0ccd8023          	sb	a2,192(s11)
    2f80:	0ff00613          	li	a2,255
    2f84:	40f70733          	sub	a4,a4,a5
    2f88:	01071713          	slli	a4,a4,0x10
    2f8c:	01075713          	srli	a4,a4,0x10
    2f90:	00e67e63          	bgeu	a2,a4,2fac <pjpeg_decode_mcu+0x1950>
    2f94:	01071593          	slli	a1,a4,0x10
    2f98:	4105d593          	srai	a1,a1,0x10
    2f9c:	00000613          	li	a2,0
    2fa0:	0005c863          	bltz	a1,2fb0 <pjpeg_decode_mcu+0x1954>
    2fa4:	0ff00613          	li	a2,255
    2fa8:	00b64463          	blt	a2,a1,2fb0 <pjpeg_decode_mcu+0x1954>
    2fac:	0ff77613          	zext.b	a2,a4
    2fb0:	140dc703          	lbu	a4,320(s11)
    2fb4:	10cd8023          	sb	a2,256(s11)
    2fb8:	0ff00613          	li	a2,255
    2fbc:	40f707b3          	sub	a5,a4,a5
    2fc0:	01079793          	slli	a5,a5,0x10
    2fc4:	0107d793          	srli	a5,a5,0x10
    2fc8:	00f67e63          	bgeu	a2,a5,2fe4 <pjpeg_decode_mcu+0x1988>
    2fcc:	01079613          	slli	a2,a5,0x10
    2fd0:	41065613          	srai	a2,a2,0x10
    2fd4:	00000713          	li	a4,0
    2fd8:	00064863          	bltz	a2,2fe8 <pjpeg_decode_mcu+0x198c>
    2fdc:	0ff00713          	li	a4,255
    2fe0:	00c74463          	blt	a4,a2,2fe8 <pjpeg_decode_mcu+0x198c>
    2fe4:	0ff7f713          	zext.b	a4,a5
    2fe8:	14ed8023          	sb	a4,320(s11)
    2fec:	9edfe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    2ff0:	00000593          	li	a1,0
    2ff4:	00000513          	li	a0,0
    2ff8:	b14fd0ef          	jal	ra,30c <upsampleCb>
    2ffc:	04000593          	li	a1,64
    3000:	00400513          	li	a0,4
    3004:	b08fd0ef          	jal	ra,30c <upsampleCb>
    3008:	08000593          	li	a1,128
    300c:	02000513          	li	a0,32
    3010:	afcfd0ef          	jal	ra,30c <upsampleCb>
    3014:	0c000593          	li	a1,192
    3018:	02400513          	li	a0,36
    301c:	af0fd0ef          	jal	ra,30c <upsampleCb>
    3020:	9b9fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3024:	00010737          	lui	a4,0x10
    3028:	240d8513          	addi	a0,s11,576
    302c:	140d8593          	addi	a1,s11,320
    3030:	340d8613          	addi	a2,s11,832
    3034:	46070793          	addi	a5,a4,1120 # 10460 <gCoeffBuf>
    3038:	46070d93          	addi	s11,a4,1120
    303c:	0007c703          	lbu	a4,0(a5)
    3040:	00278793          	addi	a5,a5,2
    3044:	00160613          	addi	a2,a2,1
    3048:	00e58023          	sb	a4,0(a1)
    304c:	00e50023          	sb	a4,0(a0)
    3050:	fee60fa3          	sb	a4,-1(a2)
    3054:	00158593          	addi	a1,a1,1
    3058:	00150513          	addi	a0,a0,1
    305c:	fe9790e3          	bne	a5,s1,303c <pjpeg_decode_mcu+0x19e0>
    3060:	979fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3064:	00010737          	lui	a4,0x10
    3068:	200d8513          	addi	a0,s11,512
    306c:	100d8593          	addi	a1,s11,256
    3070:	300d8613          	addi	a2,s11,768
    3074:	46070793          	addi	a5,a4,1120 # 10460 <gCoeffBuf>
    3078:	46070d93          	addi	s11,a4,1120
    307c:	0007c703          	lbu	a4,0(a5)
    3080:	00278793          	addi	a5,a5,2
    3084:	00160613          	addi	a2,a2,1
    3088:	00e58023          	sb	a4,0(a1)
    308c:	00e50023          	sb	a4,0(a0)
    3090:	fee60fa3          	sb	a4,-1(a2)
    3094:	00158593          	addi	a1,a1,1
    3098:	00150513          	addi	a0,a0,1
    309c:	fe9790e3          	bne	a5,s1,307c <pjpeg_decode_mcu+0x1a20>
    30a0:	939fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    30a4:	00010737          	lui	a4,0x10
    30a8:	1c0d8513          	addi	a0,s11,448
    30ac:	0c0d8593          	addi	a1,s11,192
    30b0:	2c0d8613          	addi	a2,s11,704
    30b4:	46070793          	addi	a5,a4,1120 # 10460 <gCoeffBuf>
    30b8:	46070d93          	addi	s11,a4,1120
    30bc:	0007c703          	lbu	a4,0(a5)
    30c0:	00278793          	addi	a5,a5,2
    30c4:	00160613          	addi	a2,a2,1
    30c8:	00e58023          	sb	a4,0(a1)
    30cc:	00e50023          	sb	a4,0(a0)
    30d0:	fee60fa3          	sb	a4,-1(a2)
    30d4:	00158593          	addi	a1,a1,1
    30d8:	00150513          	addi	a0,a0,1
    30dc:	fe9790e3          	bne	a5,s1,30bc <pjpeg_decode_mcu+0x1a60>
    30e0:	8f9fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    30e4:	000107b7          	lui	a5,0x10
    30e8:	180d8513          	addi	a0,s11,384
    30ec:	280d8593          	addi	a1,s11,640
    30f0:	00048613          	mv	a2,s1
    30f4:	46078d93          	addi	s11,a5,1120 # 10460 <gCoeffBuf>
    30f8:	46078793          	addi	a5,a5,1120
    30fc:	0007c703          	lbu	a4,0(a5)
    3100:	00278793          	addi	a5,a5,2
    3104:	00158593          	addi	a1,a1,1
    3108:	00e60023          	sb	a4,0(a2)
    310c:	00e50023          	sb	a4,0(a0)
    3110:	fee58fa3          	sb	a4,-1(a1)
    3114:	00160613          	addi	a2,a2,1
    3118:	00150513          	addi	a0,a0,1
    311c:	fe9790e3          	bne	a5,s1,30fc <pjpeg_decode_mcu+0x1aa0>
    3120:	8b9fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3124:	00000593          	li	a1,0
    3128:	00000513          	li	a0,0
    312c:	f24fd0ef          	jal	ra,850 <upsampleCr>
    3130:	04000593          	li	a1,64
    3134:	00400513          	li	a0,4
    3138:	f18fd0ef          	jal	ra,850 <upsampleCr>
    313c:	08000593          	li	a1,128
    3140:	02000513          	li	a0,32
    3144:	f0cfd0ef          	jal	ra,850 <upsampleCr>
    3148:	0c000593          	li	a1,192
    314c:	02400513          	li	a0,36
    3150:	f00fd0ef          	jal	ra,850 <upsampleCr>
    3154:	885fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3158:	00161793          	slli	a5,a2,0x1
    315c:	00c78733          	add	a4,a5,a2
    3160:	00271713          	slli	a4,a4,0x2
    3164:	40c70733          	sub	a4,a4,a2
    3168:	00371713          	slli	a4,a4,0x3
    316c:	00875713          	srli	a4,a4,0x8
    3170:	080dc583          	lbu	a1,128(s11)
    3174:	fd470713          	addi	a4,a4,-44
    3178:	01071713          	slli	a4,a4,0x10
    317c:	01075713          	srli	a4,a4,0x10
    3180:	40e585b3          	sub	a1,a1,a4
    3184:	01059593          	slli	a1,a1,0x10
    3188:	0105d593          	srli	a1,a1,0x10
    318c:	0ff00513          	li	a0,255
    3190:	00b57e63          	bgeu	a0,a1,31ac <pjpeg_decode_mcu+0x1b50>
    3194:	01059813          	slli	a6,a1,0x10
    3198:	41085813          	srai	a6,a6,0x10
    319c:	00000513          	li	a0,0
    31a0:	00084863          	bltz	a6,31b0 <pjpeg_decode_mcu+0x1b54>
    31a4:	0ff00513          	li	a0,255
    31a8:	01054463          	blt	a0,a6,31b0 <pjpeg_decode_mcu+0x1b54>
    31ac:	0ff5f513          	zext.b	a0,a1
    31b0:	0c0dc583          	lbu	a1,192(s11)
    31b4:	08ad8023          	sb	a0,128(s11)
    31b8:	0ff00513          	li	a0,255
    31bc:	40e585b3          	sub	a1,a1,a4
    31c0:	01059593          	slli	a1,a1,0x10
    31c4:	0105d593          	srli	a1,a1,0x10
    31c8:	00b57e63          	bgeu	a0,a1,31e4 <pjpeg_decode_mcu+0x1b88>
    31cc:	01059813          	slli	a6,a1,0x10
    31d0:	41085813          	srai	a6,a6,0x10
    31d4:	00000513          	li	a0,0
    31d8:	00084863          	bltz	a6,31e8 <pjpeg_decode_mcu+0x1b8c>
    31dc:	0ff00513          	li	a0,255
    31e0:	01054463          	blt	a0,a6,31e8 <pjpeg_decode_mcu+0x1b8c>
    31e4:	0ff5f513          	zext.b	a0,a1
    31e8:	100dc583          	lbu	a1,256(s11)
    31ec:	0cad8023          	sb	a0,192(s11)
    31f0:	0ff00513          	li	a0,255
    31f4:	40e585b3          	sub	a1,a1,a4
    31f8:	01059593          	slli	a1,a1,0x10
    31fc:	0105d593          	srli	a1,a1,0x10
    3200:	00b57e63          	bgeu	a0,a1,321c <pjpeg_decode_mcu+0x1bc0>
    3204:	01059813          	slli	a6,a1,0x10
    3208:	41085813          	srai	a6,a6,0x10
    320c:	00000513          	li	a0,0
    3210:	00084863          	bltz	a6,3220 <pjpeg_decode_mcu+0x1bc4>
    3214:	0ff00513          	li	a0,255
    3218:	01054463          	blt	a0,a6,3220 <pjpeg_decode_mcu+0x1bc4>
    321c:	0ff5f513          	zext.b	a0,a1
    3220:	140dc583          	lbu	a1,320(s11)
    3224:	10ad8023          	sb	a0,256(s11)
    3228:	0ff00513          	li	a0,255
    322c:	40e58733          	sub	a4,a1,a4
    3230:	01071713          	slli	a4,a4,0x10
    3234:	01075713          	srli	a4,a4,0x10
    3238:	00e57e63          	bgeu	a0,a4,3254 <pjpeg_decode_mcu+0x1bf8>
    323c:	01071513          	slli	a0,a4,0x10
    3240:	41055513          	srai	a0,a0,0x10
    3244:	00000593          	li	a1,0
    3248:	00054863          	bltz	a0,3258 <pjpeg_decode_mcu+0x1bfc>
    324c:	0ff00593          	li	a1,255
    3250:	00a5c463          	blt	a1,a0,3258 <pjpeg_decode_mcu+0x1bfc>
    3254:	0ff77593          	zext.b	a1,a4
    3258:	00c787b3          	add	a5,a5,a2
    325c:	00579713          	slli	a4,a5,0x5
    3260:	00e787b3          	add	a5,a5,a4
    3264:	00179793          	slli	a5,a5,0x1
    3268:	f1d60613          	addi	a2,a2,-227
    326c:	0087d793          	srli	a5,a5,0x8
    3270:	00c787b3          	add	a5,a5,a2
    3274:	180dc703          	lbu	a4,384(s11)
    3278:	01079793          	slli	a5,a5,0x10
    327c:	0107d793          	srli	a5,a5,0x10
    3280:	00e78733          	add	a4,a5,a4
    3284:	01071713          	slli	a4,a4,0x10
    3288:	14bd8023          	sb	a1,320(s11)
    328c:	01075713          	srli	a4,a4,0x10
    3290:	0ff00613          	li	a2,255
    3294:	00e67e63          	bgeu	a2,a4,32b0 <pjpeg_decode_mcu+0x1c54>
    3298:	01071593          	slli	a1,a4,0x10
    329c:	4105d593          	srai	a1,a1,0x10
    32a0:	00000613          	li	a2,0
    32a4:	0005c863          	bltz	a1,32b4 <pjpeg_decode_mcu+0x1c58>
    32a8:	0ff00613          	li	a2,255
    32ac:	00b64463          	blt	a2,a1,32b4 <pjpeg_decode_mcu+0x1c58>
    32b0:	0ff77613          	zext.b	a2,a4
    32b4:	1c0dc703          	lbu	a4,448(s11)
    32b8:	18cd8023          	sb	a2,384(s11)
    32bc:	0ff00613          	li	a2,255
    32c0:	00e78733          	add	a4,a5,a4
    32c4:	01071713          	slli	a4,a4,0x10
    32c8:	01075713          	srli	a4,a4,0x10
    32cc:	00e67e63          	bgeu	a2,a4,32e8 <pjpeg_decode_mcu+0x1c8c>
    32d0:	01071593          	slli	a1,a4,0x10
    32d4:	4105d593          	srai	a1,a1,0x10
    32d8:	00000613          	li	a2,0
    32dc:	0005c863          	bltz	a1,32ec <pjpeg_decode_mcu+0x1c90>
    32e0:	0ff00613          	li	a2,255
    32e4:	00b64463          	blt	a2,a1,32ec <pjpeg_decode_mcu+0x1c90>
    32e8:	0ff77613          	zext.b	a2,a4
    32ec:	200dc703          	lbu	a4,512(s11)
    32f0:	1ccd8023          	sb	a2,448(s11)
    32f4:	0ff00613          	li	a2,255
    32f8:	00e78733          	add	a4,a5,a4
    32fc:	01071713          	slli	a4,a4,0x10
    3300:	01075713          	srli	a4,a4,0x10
    3304:	00e67e63          	bgeu	a2,a4,3320 <pjpeg_decode_mcu+0x1cc4>
    3308:	01071593          	slli	a1,a4,0x10
    330c:	4105d593          	srai	a1,a1,0x10
    3310:	00000613          	li	a2,0
    3314:	0005c863          	bltz	a1,3324 <pjpeg_decode_mcu+0x1cc8>
    3318:	0ff00613          	li	a2,255
    331c:	00b64463          	blt	a2,a1,3324 <pjpeg_decode_mcu+0x1cc8>
    3320:	0ff77613          	zext.b	a2,a4
    3324:	240dc583          	lbu	a1,576(s11)
    3328:	20cd8023          	sb	a2,512(s11)
    332c:	0ff00713          	li	a4,255
    3330:	00b787b3          	add	a5,a5,a1
    3334:	01079793          	slli	a5,a5,0x10
    3338:	0107d793          	srli	a5,a5,0x10
    333c:	00f77e63          	bgeu	a4,a5,3358 <pjpeg_decode_mcu+0x1cfc>
    3340:	01079613          	slli	a2,a5,0x10
    3344:	41065613          	srai	a2,a2,0x10
    3348:	00000713          	li	a4,0
    334c:	00064863          	bltz	a2,335c <pjpeg_decode_mcu+0x1d00>
    3350:	0ff00713          	li	a4,255
    3354:	00c74463          	blt	a4,a2,335c <pjpeg_decode_mcu+0x1d00>
    3358:	0ff7f713          	zext.b	a4,a5
    335c:	24ed8023          	sb	a4,576(s11)
    3360:	e78fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3364:	34cd8023          	sb	a2,832(s11)
    3368:	14cd8023          	sb	a2,320(s11)
    336c:	24cd8023          	sb	a2,576(s11)
    3370:	e68fe06f          	j	19d8 <pjpeg_decode_mcu+0x37c>
    3374:	000116b7          	lui	a3,0x11
    3378:	d7e6d703          	lhu	a4,-642(a3) # 10d7e <gNextRestartNum>
    337c:	0d070793          	addi	a5,a4,208
    3380:	c2f51463          	bne	a0,a5,27a8 <pjpeg_decode_mcu+0x114c>
    3384:	d8095603          	lhu	a2,-640(s2)
    3388:	000117b7          	lui	a5,0x11
    338c:	00170713          	addi	a4,a4,1
    3390:	da478813          	addi	a6,a5,-604 # 10da4 <gLastDC>
    3394:	00777713          	andi	a4,a4,7
    3398:	d6e69f23          	sh	a4,-642(a3)
    339c:	00100593          	li	a1,1
    33a0:	00800713          	li	a4,8
    33a4:	da07a223          	sw	zero,-604(a5)
    33a8:	00081223          	sh	zero,4(a6)
    33ac:	000117b7          	lui	a5,0x11
    33b0:	00800513          	li	a0,8
    33b4:	d8e78c23          	sb	a4,-616(a5) # 10d98 <gBitsLeft>
    33b8:	d6c49e23          	sh	a2,-644(s1)
    33bc:	cb9fd0ef          	jal	ra,1074 <getBits>
    33c0:	00100593          	li	a1,1
    33c4:	00800513          	li	a0,8
    33c8:	cadfd0ef          	jal	ra,1074 <getBits>
    33cc:	d7c4d783          	lhu	a5,-644(s1)
    33d0:	d38fe06f          	j	1908 <pjpeg_decode_mcu+0x2ac>

000033d4 <pjpeg_decode_init>:
    33d4:	00058713          	mv	a4,a1
    33d8:	000117b7          	lui	a5,0x11
    33dc:	d4e7ac23          	sw	a4,-680(a5) # 10d58 <g_pNeedBytesCallback>
    33e0:	000117b7          	lui	a5,0x11
    33e4:	d4c7aa23          	sw	a2,-684(a5) # 10d54 <g_pCallback_data>
    33e8:	000117b7          	lui	a5,0x11
    33ec:	d4d78823          	sb	a3,-688(a5) # 10d50 <gReduce>
    33f0:	000117b7          	lui	a5,0x11
    33f4:	d8079b23          	sh	zero,-618(a5) # 10d96 <gImageXSize>
    33f8:	000117b7          	lui	a5,0x11
    33fc:	fa010113          	addi	sp,sp,-96
    3400:	d8079a23          	sh	zero,-620(a5) # 10d94 <gImageYSize>
    3404:	000117b7          	lui	a5,0x11
    3408:	04112e23          	sw	ra,92(sp)
    340c:	04812c23          	sw	s0,88(sp)
    3410:	05312623          	sw	s3,76(sp)
    3414:	03812c23          	sw	s8,56(sp)
    3418:	03a12823          	sw	s10,48(sp)
    341c:	03b12623          	sw	s11,44(sp)
    3420:	04912a23          	sw	s1,84(sp)
    3424:	05212823          	sw	s2,80(sp)
    3428:	05412423          	sw	s4,72(sp)
    342c:	05512223          	sw	s5,68(sp)
    3430:	05612023          	sw	s6,64(sp)
    3434:	03712e23          	sw	s7,60(sp)
    3438:	03912a23          	sw	s9,52(sp)
    343c:	00011437          	lui	s0,0x11
    3440:	d80789a3          	sb	zero,-621(a5) # 10d93 <gCompsInFrame>
    3444:	000117b7          	lui	a5,0x11
    3448:	00052023          	sw	zero,0(a0)
    344c:	00052223          	sw	zero,4(a0)
    3450:	00052423          	sw	zero,8(a0)
    3454:	00052623          	sw	zero,12(a0)
    3458:	00052823          	sw	zero,16(a0)
    345c:	00052a23          	sw	zero,20(a0)
    3460:	00052c23          	sw	zero,24(a0)
    3464:	00052e23          	sw	zero,28(a0)
    3468:	02052023          	sw	zero,32(a0)
    346c:	02052223          	sw	zero,36(a0)
    3470:	02052423          	sw	zero,40(a0)
    3474:	d8079023          	sh	zero,-640(a5) # 10d80 <gRestartInterval>
    3478:	d40408a3          	sb	zero,-687(s0) # 10d51 <gCallbackStatus>
    347c:	000117b7          	lui	a5,0x11
    3480:	d6078da3          	sb	zero,-645(a5) # 10d7b <gCompsInScan>
    3484:	000117b7          	lui	a5,0x11
    3488:	da078023          	sb	zero,-608(a5) # 10da0 <gValidHuffTables>
    348c:	000117b7          	lui	a5,0x11
    3490:	d8078fa3          	sb	zero,-609(a5) # 10d9f <gValidQuantTables>
    3494:	000117b7          	lui	a5,0x11
    3498:	d8078f23          	sb	zero,-610(a5) # 10d9e <gTemFlag>
    349c:	000117b7          	lui	a5,0x11
    34a0:	d8078ea3          	sb	zero,-611(a5) # 10d9d <gInBufOfs>
    34a4:	000117b7          	lui	a5,0x11
    34a8:	00000593          	li	a1,0
    34ac:	d8078e23          	sb	zero,-612(a5) # 10d9c <gInBufLeft>
    34b0:	00050d13          	mv	s10,a0
    34b4:	00800793          	li	a5,8
    34b8:	00011db7          	lui	s11,0x11
    34bc:	00011c37          	lui	s8,0x11
    34c0:	00800513          	li	a0,8
    34c4:	d8fc0c23          	sb	a5,-616(s8) # 10d98 <gBitsLeft>
    34c8:	d80d9d23          	sh	zero,-614(s11) # 10d9a <gBitBuf>
    34cc:	ba9fd0ef          	jal	ra,1074 <getBits>
    34d0:	00000593          	li	a1,0
    34d4:	00800513          	li	a0,8
    34d8:	b9dfd0ef          	jal	ra,1074 <getBits>
    34dc:	d5144983          	lbu	s3,-687(s0)
    34e0:	04098263          	beqz	s3,3524 <pjpeg_decode_init+0x150>
    34e4:	05c12083          	lw	ra,92(sp)
    34e8:	05812403          	lw	s0,88(sp)
    34ec:	05412483          	lw	s1,84(sp)
    34f0:	05012903          	lw	s2,80(sp)
    34f4:	04812a03          	lw	s4,72(sp)
    34f8:	04412a83          	lw	s5,68(sp)
    34fc:	04012b03          	lw	s6,64(sp)
    3500:	03c12b83          	lw	s7,60(sp)
    3504:	03812c03          	lw	s8,56(sp)
    3508:	03412c83          	lw	s9,52(sp)
    350c:	03012d03          	lw	s10,48(sp)
    3510:	02c12d83          	lw	s11,44(sp)
    3514:	00098513          	mv	a0,s3
    3518:	04c12983          	lw	s3,76(sp)
    351c:	06010113          	addi	sp,sp,96
    3520:	00008067          	ret
    3524:	00000593          	li	a1,0
    3528:	00800513          	li	a0,8
    352c:	b49fd0ef          	jal	ra,1074 <getBits>
    3530:	00050493          	mv	s1,a0
    3534:	00000593          	li	a1,0
    3538:	00800513          	li	a0,8
    353c:	b39fd0ef          	jal	ra,1074 <getBits>
    3540:	000016b7          	lui	a3,0x1
    3544:	0ff4f493          	zext.b	s1,s1
    3548:	0ff00793          	li	a5,255
    354c:	0ff57c93          	zext.b	s9,a0
    3550:	fff68a93          	addi	s5,a3,-1 # fff <huffDecode+0x63>
    3554:	0cf48c63          	beq	s1,a5,362c <pjpeg_decode_init+0x258>
    3558:	d98c4703          	lbu	a4,-616(s8)
    355c:	d9adda03          	lhu	s4,-614(s11)
    3560:	00700b93          	li	s7,7
    3564:	00800913          	li	s2,8
    3568:	0ff00b13          	li	s6,255
    356c:	0d800493          	li	s1,216
    3570:	0d900993          	li	s3,217
    3574:	ff870693          	addi	a3,a4,-8
    3578:	008a1793          	slli	a5,s4,0x8
    357c:	04ebf463          	bgeu	s7,a4,35c4 <pjpeg_decode_init+0x1f0>
    3580:	01079793          	slli	a5,a5,0x10
    3584:	0107d793          	srli	a5,a5,0x10
    3588:	fffa8a93          	addi	s5,s5,-1
    358c:	010a9a93          	slli	s5,s5,0x10
    3590:	d8dc0c23          	sb	a3,-616(s8)
    3594:	d8fd9d23          	sh	a5,-614(s11)
    3598:	408a5713          	srai	a4,s4,0x8
    359c:	010ada93          	srli	s5,s5,0x10
    35a0:	008a5a13          	srli	s4,s4,0x8
    35a4:	076c8663          	beq	s9,s6,3610 <pjpeg_decode_init+0x23c>
    35a8:	060a8863          	beqz	s5,3618 <pjpeg_decode_init+0x244>
    35ac:	d98c4703          	lbu	a4,-616(s8)
    35b0:	000a0c93          	mv	s9,s4
    35b4:	d9adda03          	lhu	s4,-614(s11)
    35b8:	ff870693          	addi	a3,a4,-8
    35bc:	008a1793          	slli	a5,s4,0x8
    35c0:	fcebe0e3          	bltu	s7,a4,3580 <pjpeg_decode_init+0x1ac>
    35c4:	00ea1733          	sll	a4,s4,a4
    35c8:	d8ed9d23          	sh	a4,-614(s11)
    35cc:	fecfd0ef          	jal	ra,db8 <getChar>
    35d0:	d9add783          	lhu	a5,-614(s11)
    35d4:	d98c4703          	lbu	a4,-616(s8)
    35d8:	fffa8a93          	addi	s5,s5,-1
    35dc:	00a7e7b3          	or	a5,a5,a0
    35e0:	01079793          	slli	a5,a5,0x10
    35e4:	40e90733          	sub	a4,s2,a4
    35e8:	0107d793          	srli	a5,a5,0x10
    35ec:	00e797b3          	sll	a5,a5,a4
    35f0:	01079793          	slli	a5,a5,0x10
    35f4:	0107d793          	srli	a5,a5,0x10
    35f8:	010a9a93          	slli	s5,s5,0x10
    35fc:	d8fd9d23          	sh	a5,-614(s11)
    3600:	408a5713          	srai	a4,s4,0x8
    3604:	010ada93          	srli	s5,s5,0x10
    3608:	008a5a13          	srli	s4,s4,0x8
    360c:	f96c9ee3          	bne	s9,s6,35a8 <pjpeg_decode_init+0x1d4>
    3610:	04970c63          	beq	a4,s1,3668 <pjpeg_decode_init+0x294>
    3614:	f9371ae3          	bne	a4,s3,35a8 <pjpeg_decode_init+0x1d4>
    3618:	01300993          	li	s3,19
    361c:	d5144703          	lbu	a4,-687(s0)
    3620:	ec0702e3          	beqz	a4,34e4 <pjpeg_decode_init+0x110>
    3624:	00070993          	mv	s3,a4
    3628:	ebdff06f          	j	34e4 <pjpeg_decode_init+0x110>
    362c:	0d800793          	li	a5,216
    3630:	f2fc94e3          	bne	s9,a5,3558 <pjpeg_decode_init+0x184>
    3634:	01f10513          	addi	a0,sp,31
    3638:	b91fd0ef          	jal	ra,11c8 <processMarkers>
    363c:	00050993          	mv	s3,a0
    3640:	fc051ee3          	bnez	a0,361c <pjpeg_decode_init+0x248>
    3644:	01f14703          	lbu	a4,31(sp)
    3648:	0c200693          	li	a3,194
    364c:	54d70863          	beq	a4,a3,3b9c <pjpeg_decode_init+0x7c8>
    3650:	0c900693          	li	a3,201
    3654:	02d70063          	beq	a4,a3,3674 <pjpeg_decode_init+0x2a0>
    3658:	0c000693          	li	a3,192
    365c:	02d70063          	beq	a4,a3,367c <pjpeg_decode_init+0x2a8>
    3660:	01400993          	li	s3,20
    3664:	fb9ff06f          	j	361c <pjpeg_decode_init+0x248>
    3668:	0087d793          	srli	a5,a5,0x8
    366c:	fd9784e3          	beq	a5,s9,3634 <pjpeg_decode_init+0x260>
    3670:	fa9ff06f          	j	3618 <pjpeg_decode_init+0x244>
    3674:	01100993          	li	s3,17
    3678:	fa5ff06f          	j	361c <pjpeg_decode_init+0x248>
    367c:	00000593          	li	a1,0
    3680:	01000513          	li	a0,16
    3684:	9f1fd0ef          	jal	ra,1074 <getBits>
    3688:	00050493          	mv	s1,a0
    368c:	00000593          	li	a1,0
    3690:	00800513          	li	a0,8
    3694:	9e1fd0ef          	jal	ra,1074 <getBits>
    3698:	00800713          	li	a4,8
    369c:	50e51863          	bne	a0,a4,3bac <pjpeg_decode_init+0x7d8>
    36a0:	00000593          	li	a1,0
    36a4:	01000513          	li	a0,16
    36a8:	9cdfd0ef          	jal	ra,1074 <getBits>
    36ac:	fff50693          	addi	a3,a0,-1
    36b0:	000117b7          	lui	a5,0x11
    36b4:	01069713          	slli	a4,a3,0x10
    36b8:	d8a79a23          	sh	a0,-620(a5) # 10d94 <gImageYSize>
    36bc:	01075713          	srli	a4,a4,0x10
    36c0:	00004937          	lui	s2,0x4
    36c4:	4f277c63          	bgeu	a4,s2,3bbc <pjpeg_decode_init+0x7e8>
    36c8:	00000593          	li	a1,0
    36cc:	01000513          	li	a0,16
    36d0:	9a5fd0ef          	jal	ra,1074 <getBits>
    36d4:	fff50693          	addi	a3,a0,-1
    36d8:	000117b7          	lui	a5,0x11
    36dc:	01069713          	slli	a4,a3,0x10
    36e0:	d8a79b23          	sh	a0,-618(a5) # 10d96 <gImageXSize>
    36e4:	01075713          	srli	a4,a4,0x10
    36e8:	65277663          	bgeu	a4,s2,3d34 <pjpeg_decode_init+0x960>
    36ec:	00000593          	li	a1,0
    36f0:	00800513          	li	a0,8
    36f4:	981fd0ef          	jal	ra,1074 <getBits>
    36f8:	0ff57713          	zext.b	a4,a0
    36fc:	000117b7          	lui	a5,0x11
    3700:	d8e789a3          	sb	a4,-621(a5) # 10d93 <gCompsInFrame>
    3704:	00300693          	li	a3,3
    3708:	68e6e263          	bltu	a3,a4,3d8c <pjpeg_decode_init+0x9b8>
    370c:	00171693          	slli	a3,a4,0x1
    3710:	00e686b3          	add	a3,a3,a4
    3714:	00868693          	addi	a3,a3,8
    3718:	66d49663          	bne	s1,a3,3d84 <pjpeg_decode_init+0x9b0>
    371c:	0a070863          	beqz	a4,37cc <pjpeg_decode_init+0x3f8>
    3720:	00011737          	lui	a4,0x11
    3724:	00011937          	lui	s2,0x11
    3728:	000114b7          	lui	s1,0x11
    372c:	000116b7          	lui	a3,0x11
    3730:	d8470713          	addi	a4,a4,-636 # 10d84 <gCompQuant>
    3734:	d9090913          	addi	s2,s2,-624 # 10d90 <gCompIdent>
    3738:	d8c48493          	addi	s1,s1,-628 # 10d8c <gCompHSamp>
    373c:	d8868a13          	addi	s4,a3,-632 # 10d88 <gCompVSamp>
    3740:	00070a93          	mv	s5,a4
    3744:	0100006f          	j	3754 <pjpeg_decode_init+0x380>
    3748:	000117b7          	lui	a5,0x11
    374c:	d937c783          	lbu	a5,-621(a5) # 10d93 <gCompsInFrame>
    3750:	06f9fe63          	bgeu	s3,a5,37cc <pjpeg_decode_init+0x3f8>
    3754:	00000593          	li	a1,0
    3758:	00800513          	li	a0,8
    375c:	919fd0ef          	jal	ra,1074 <getBits>
    3760:	00050693          	mv	a3,a0
    3764:	013907b3          	add	a5,s2,s3
    3768:	00d78023          	sb	a3,0(a5)
    376c:	00000593          	li	a1,0
    3770:	00400513          	li	a0,4
    3774:	901fd0ef          	jal	ra,1074 <getBits>
    3778:	00050693          	mv	a3,a0
    377c:	013487b3          	add	a5,s1,s3
    3780:	00d78023          	sb	a3,0(a5)
    3784:	00000593          	li	a1,0
    3788:	00400513          	li	a0,4
    378c:	8e9fd0ef          	jal	ra,1074 <getBits>
    3790:	00050693          	mv	a3,a0
    3794:	013a07b3          	add	a5,s4,s3
    3798:	00d78023          	sb	a3,0(a5)
    379c:	00000593          	li	a1,0
    37a0:	00800513          	li	a0,8
    37a4:	8d1fd0ef          	jal	ra,1074 <getBits>
    37a8:	013a86b3          	add	a3,s5,s3
    37ac:	0ff57793          	zext.b	a5,a0
    37b0:	00198993          	addi	s3,s3,1
    37b4:	00f68023          	sb	a5,0(a3)
    37b8:	00100713          	li	a4,1
    37bc:	0ff9f993          	zext.b	s3,s3
    37c0:	f8f774e3          	bgeu	a4,a5,3748 <pjpeg_decode_init+0x374>
    37c4:	02400993          	li	s3,36
    37c8:	e55ff06f          	j	361c <pjpeg_decode_init+0x248>
    37cc:	d5144983          	lbu	s3,-687(s0)
    37d0:	d0099ae3          	bnez	s3,34e4 <pjpeg_decode_init+0x110>
    37d4:	000117b7          	lui	a5,0x11
    37d8:	d937c703          	lbu	a4,-621(a5) # 10d93 <gCompsInFrame>
    37dc:	00100693          	li	a3,1
    37e0:	34d70863          	beq	a4,a3,3b30 <pjpeg_decode_init+0x75c>
    37e4:	00300613          	li	a2,3
    37e8:	01a00993          	li	s3,26
    37ec:	cec71ce3          	bne	a4,a2,34e4 <pjpeg_decode_init+0x110>
    37f0:	00011537          	lui	a0,0x11
    37f4:	d8c50593          	addi	a1,a0,-628 # 10d8c <gCompHSamp>
    37f8:	0015c603          	lbu	a2,1(a1)
    37fc:	01b00993          	li	s3,27
    3800:	ced612e3          	bne	a2,a3,34e4 <pjpeg_decode_init+0x110>
    3804:	000116b7          	lui	a3,0x11
    3808:	d8868e93          	addi	t4,a3,-632 # 10d88 <gCompVSamp>
    380c:	001ece03          	lbu	t3,1(t4)
    3810:	ccce1ae3          	bne	t3,a2,34e4 <pjpeg_decode_init+0x110>
    3814:	0025c603          	lbu	a2,2(a1)
    3818:	cdc616e3          	bne	a2,t3,34e4 <pjpeg_decode_init+0x110>
    381c:	002ec583          	lbu	a1,2(t4)
    3820:	ccc592e3          	bne	a1,a2,34e4 <pjpeg_decode_init+0x110>
    3824:	d8c54603          	lbu	a2,-628(a0)
    3828:	50b60a63          	beq	a2,a1,3d3c <pjpeg_decode_init+0x968>
    382c:	00200713          	li	a4,2
    3830:	cae61ae3          	bne	a2,a4,34e4 <pjpeg_decode_init+0x110>
    3834:	d886c703          	lbu	a4,-632(a3)
    3838:	54b70e63          	beq	a4,a1,3d94 <pjpeg_decode_init+0x9c0>
    383c:	00200693          	li	a3,2
    3840:	01b00993          	li	s3,27
    3844:	cad710e3          	bne	a4,a3,34e4 <pjpeg_decode_init+0x110>
    3848:	000117b7          	lui	a5,0x11
    384c:	00400693          	li	a3,4
    3850:	00011937          	lui	s2,0x11
    3854:	d5c78713          	addi	a4,a5,-676 # 10d5c <gMCUOrg>
    3858:	d6d92623          	sw	a3,-660(s2) # 10d6c <gScanType>
    385c:	00600613          	li	a2,6
    3860:	000116b7          	lui	a3,0x11
    3864:	d407ae23          	sw	zero,-676(a5)
    3868:	20100793          	li	a5,513
    386c:	d6c68523          	sb	a2,-662(a3) # 10d6a <gMaxBlocksPerMCU>
    3870:	00f71223          	sh	a5,4(a4)
    3874:	00f00693          	li	a3,15
    3878:	01000793          	li	a5,16
    387c:	00011737          	lui	a4,0x11
    3880:	d9675703          	lhu	a4,-618(a4) # 10d96 <gImageXSize>
    3884:	000115b7          	lui	a1,0x11
    3888:	00011537          	lui	a0,0x11
    388c:	01000613          	li	a2,16
    3890:	d6c584a3          	sb	a2,-663(a1) # 10d69 <gMaxMCUXSize>
    3894:	00058b93          	mv	s7,a1
    3898:	00050c93          	mv	s9,a0
    389c:	d6f50423          	sb	a5,-664(a0) # 10d68 <gMaxMCUYSize>
    38a0:	00f70713          	addi	a4,a4,15
    38a4:	00400613          	li	a2,4
    38a8:	000115b7          	lui	a1,0x11
    38ac:	d945d583          	lhu	a1,-620(a1) # 10d94 <gImageYSize>
    38b0:	ff878793          	addi	a5,a5,-8
    38b4:	00f037b3          	snez	a5,a5
    38b8:	00d585b3          	add	a1,a1,a3
    38bc:	00378793          	addi	a5,a5,3
    38c0:	40c75733          	sra	a4,a4,a2
    38c4:	40f5d5b3          	sra	a1,a1,a5
    38c8:	01071513          	slli	a0,a4,0x10
    38cc:	01059593          	slli	a1,a1,0x10
    38d0:	0105d593          	srli	a1,a1,0x10
    38d4:	000117b7          	lui	a5,0x11
    38d8:	01055513          	srli	a0,a0,0x10
    38dc:	00011a37          	lui	s4,0x11
    38e0:	d6a79323          	sh	a0,-666(a5) # 10d66 <gMaxMCUSPerRow>
    38e4:	d6ba1223          	sh	a1,-668(s4) # 10d64 <gMaxMCUSPerCol>
    38e8:	510000ef          	jal	ra,3df8 <__mulsi3>
    38ec:	00050713          	mv	a4,a0
    38f0:	000117b7          	lui	a5,0x11
    38f4:	01f10513          	addi	a0,sp,31
    38f8:	d6e79123          	sh	a4,-670(a5) # 10d62 <gNumMCUSRemaining>
    38fc:	8cdfd0ef          	jal	ra,11c8 <processMarkers>
    3900:	00050993          	mv	s3,a0
    3904:	d0051ce3          	bnez	a0,361c <pjpeg_decode_init+0x248>
    3908:	01f14683          	lbu	a3,31(sp)
    390c:	0da00713          	li	a4,218
    3910:	28e69a63          	bne	a3,a4,3ba4 <pjpeg_decode_init+0x7d0>
    3914:	00000593          	li	a1,0
    3918:	01000513          	li	a0,16
    391c:	f58fd0ef          	jal	ra,1074 <getBits>
    3920:	00050493          	mv	s1,a0
    3924:	00000593          	li	a1,0
    3928:	00800513          	li	a0,8
    392c:	f48fd0ef          	jal	ra,1074 <getBits>
    3930:	0ff57713          	zext.b	a4,a0
    3934:	ffd48f13          	addi	t5,s1,-3
    3938:	00171693          	slli	a3,a4,0x1
    393c:	000117b7          	lui	a5,0x11
    3940:	010f1493          	slli	s1,t5,0x10
    3944:	d6e78da3          	sb	a4,-645(a5) # 10d7b <gCompsInScan>
    3948:	0104d493          	srli	s1,s1,0x10
    394c:	00368693          	addi	a3,a3,3
    3950:	26d49263          	bne	s1,a3,3bb4 <pjpeg_decode_init+0x7e0>
    3954:	fff70713          	addi	a4,a4,-1
    3958:	0ff77713          	zext.b	a4,a4
    395c:	00200693          	li	a3,2
    3960:	24e6ea63          	bltu	a3,a4,3bb4 <pjpeg_decode_init+0x7e0>
    3964:	000117b7          	lui	a5,0x11
    3968:	d7878b13          	addi	s6,a5,-648 # 10d78 <gCompList>
    396c:	00000593          	li	a1,0
    3970:	00800513          	li	a0,8
    3974:	f00fd0ef          	jal	ra,1074 <getBits>
    3978:	00050a93          	mv	s5,a0
    397c:	00000593          	li	a1,0
    3980:	00800513          	li	a0,8
    3984:	ef0fd0ef          	jal	ra,1074 <getBits>
    3988:	000117b7          	lui	a5,0x11
    398c:	d937c803          	lbu	a6,-621(a5) # 10d93 <gCompsInFrame>
    3990:	ffe48793          	addi	a5,s1,-2
    3994:	00048f93          	mv	t6,s1
    3998:	01079493          	slli	s1,a5,0x10
    399c:	0ffafa93          	zext.b	s5,s5
    39a0:	0ff57513          	zext.b	a0,a0
    39a4:	0104d493          	srli	s1,s1,0x10
    39a8:	3c080a63          	beqz	a6,3d7c <pjpeg_decode_init+0x9a8>
    39ac:	00011637          	lui	a2,0x11
    39b0:	000117b7          	lui	a5,0x11
    39b4:	d7060e13          	addi	t3,a2,-656 # 10d70 <gCompACTab>
    39b8:	00011637          	lui	a2,0x11
    39bc:	d9078713          	addi	a4,a5,-624 # 10d90 <gCompIdent>
    39c0:	00000693          	li	a3,0
    39c4:	00000793          	li	a5,0
    39c8:	d7460613          	addi	a2,a2,-652 # 10d74 <gCompDCTab>
    39cc:	0100006f          	j	39dc <pjpeg_decode_init+0x608>
    39d0:	00178793          	addi	a5,a5,1
    39d4:	0ff7f693          	zext.b	a3,a5
    39d8:	3b06f263          	bgeu	a3,a6,3d7c <pjpeg_decode_init+0x9a8>
    39dc:	00074583          	lbu	a1,0(a4)
    39e0:	00170713          	addi	a4,a4,1
    39e4:	ff5596e3          	bne	a1,s5,39d0 <pjpeg_decode_init+0x5fc>
    39e8:	00011737          	lui	a4,0x11
    39ec:	d7b74703          	lbu	a4,-645(a4) # 10d7b <gCompsInScan>
    39f0:	016988b3          	add	a7,s3,s6
    39f4:	00f605b3          	add	a1,a2,a5
    39f8:	00455813          	srli	a6,a0,0x4
    39fc:	00fe07b3          	add	a5,t3,a5
    3a00:	00f57513          	andi	a0,a0,15
    3a04:	00198993          	addi	s3,s3,1
    3a08:	00d88023          	sb	a3,0(a7)
    3a0c:	01058023          	sb	a6,0(a1)
    3a10:	00a78023          	sb	a0,0(a5)
    3a14:	0ff9f993          	zext.b	s3,s3
    3a18:	f4e9eae3          	bltu	s3,a4,396c <pjpeg_decode_init+0x598>
    3a1c:	00000593          	li	a1,0
    3a20:	00800513          	li	a0,8
    3a24:	01f12623          	sw	t6,12(sp)
    3a28:	e4cfd0ef          	jal	ra,1074 <getBits>
    3a2c:	0ff57793          	zext.b	a5,a0
    3a30:	00011737          	lui	a4,0x11
    3a34:	00000593          	li	a1,0
    3a38:	00800513          	li	a0,8
    3a3c:	d4f707a3          	sb	a5,-689(a4) # 10d4f <spectral_start>
    3a40:	e34fd0ef          	jal	ra,1074 <getBits>
    3a44:	0ff57793          	zext.b	a5,a0
    3a48:	00011737          	lui	a4,0x11
    3a4c:	00000593          	li	a1,0
    3a50:	00400513          	li	a0,4
    3a54:	d4f70723          	sb	a5,-690(a4) # 10d4e <spectral_end>
    3a58:	e1cfd0ef          	jal	ra,1074 <getBits>
    3a5c:	0ff57793          	zext.b	a5,a0
    3a60:	00011737          	lui	a4,0x11
    3a64:	00000593          	li	a1,0
    3a68:	00400513          	li	a0,4
    3a6c:	d4f706a3          	sb	a5,-691(a4) # 10d4d <successive_high>
    3a70:	e04fd0ef          	jal	ra,1074 <getBits>
    3a74:	00c12f83          	lw	t6,12(sp)
    3a78:	0ff57713          	zext.b	a4,a0
    3a7c:	000116b7          	lui	a3,0x11
    3a80:	ffbf8793          	addi	a5,t6,-5
    3a84:	d4e68623          	sb	a4,-692(a3) # 10d4c <successive_low>
    3a88:	01079993          	slli	s3,a5,0x10
    3a8c:	0180006f          	j	3aa4 <pjpeg_decode_init+0x6d0>
    3a90:	00000593          	li	a1,0
    3a94:	00800513          	li	a0,8
    3a98:	fff98993          	addi	s3,s3,-1
    3a9c:	dd8fd0ef          	jal	ra,1074 <getBits>
    3aa0:	01099993          	slli	s3,s3,0x10
    3aa4:	000117b7          	lui	a5,0x11
    3aa8:	d7478613          	addi	a2,a5,-652 # 10d74 <gCompDCTab>
    3aac:	0109d993          	srli	s3,s3,0x10
    3ab0:	000117b7          	lui	a5,0x11
    3ab4:	d7078e13          	addi	t3,a5,-656 # 10d70 <gCompACTab>
    3ab8:	fc099ce3          	bnez	s3,3a90 <pjpeg_decode_init+0x6bc>
    3abc:	000117b7          	lui	a5,0x11
    3ac0:	d7b7c783          	lbu	a5,-645(a5) # 10d7b <gCompsInScan>
    3ac4:	10078063          	beqz	a5,3bc4 <pjpeg_decode_init+0x7f0>
    3ac8:	fff78513          	addi	a0,a5,-1
    3acc:	000117b7          	lui	a5,0x11
    3ad0:	da07ce83          	lbu	t4,-608(a5) # 10da0 <gValidHuffTables>
    3ad4:	0ff57513          	zext.b	a0,a0
    3ad8:	001b0793          	addi	a5,s6,1
    3adc:	00f50533          	add	a0,a0,a5
    3ae0:	000117b7          	lui	a5,0x11
    3ae4:	000b0493          	mv	s1,s6
    3ae8:	d7878693          	addi	a3,a5,-648 # 10d78 <gCompList>
    3aec:	00100593          	li	a1,1
    3af0:	0080006f          	j	3af8 <pjpeg_decode_init+0x724>
    3af4:	1cd50e63          	beq	a0,a3,3cd0 <pjpeg_decode_init+0x8fc>
    3af8:	0006c703          	lbu	a4,0(a3)
    3afc:	00168693          	addi	a3,a3,1
    3b00:	00ee07b3          	add	a5,t3,a4
    3b04:	0007c783          	lbu	a5,0(a5)
    3b08:	00e60733          	add	a4,a2,a4
    3b0c:	00074703          	lbu	a4,0(a4)
    3b10:	00278793          	addi	a5,a5,2
    3b14:	00f597b3          	sll	a5,a1,a5
    3b18:	00e59733          	sll	a4,a1,a4
    3b1c:	00e7e7b3          	or	a5,a5,a4
    3b20:	00fef733          	and	a4,t4,a5
    3b24:	fce788e3          	beq	a5,a4,3af4 <pjpeg_decode_init+0x720>
    3b28:	01800993          	li	s3,24
    3b2c:	af1ff06f          	j	361c <pjpeg_decode_init+0x248>
    3b30:	000117b7          	lui	a5,0x11
    3b34:	d8c7c683          	lbu	a3,-628(a5) # 10d8c <gCompHSamp>
    3b38:	01b00993          	li	s3,27
    3b3c:	9ae694e3          	bne	a3,a4,34e4 <pjpeg_decode_init+0x110>
    3b40:	00011737          	lui	a4,0x11
    3b44:	d8874703          	lbu	a4,-632(a4) # 10d88 <gCompVSamp>
    3b48:	98d71ee3          	bne	a4,a3,34e4 <pjpeg_decode_init+0x110>
    3b4c:	000117b7          	lui	a5,0x11
    3b50:	00011937          	lui	s2,0x11
    3b54:	d6e78523          	sb	a4,-662(a5) # 10d6a <gMaxBlocksPerMCU>
    3b58:	000117b7          	lui	a5,0x11
    3b5c:	d4078e23          	sb	zero,-676(a5) # 10d5c <gMCUOrg>
    3b60:	d6092623          	sw	zero,-660(s2) # 10d6c <gScanType>
    3b64:	00700693          	li	a3,7
    3b68:	00800793          	li	a5,8
    3b6c:	00011737          	lui	a4,0x11
    3b70:	d9675703          	lhu	a4,-618(a4) # 10d96 <gImageXSize>
    3b74:	000115b7          	lui	a1,0x11
    3b78:	00011537          	lui	a0,0x11
    3b7c:	00800613          	li	a2,8
    3b80:	d6c584a3          	sb	a2,-663(a1) # 10d69 <gMaxMCUXSize>
    3b84:	00058b93          	mv	s7,a1
    3b88:	00050c93          	mv	s9,a0
    3b8c:	d6f50423          	sb	a5,-664(a0) # 10d68 <gMaxMCUYSize>
    3b90:	00770713          	addi	a4,a4,7
    3b94:	00300613          	li	a2,3
    3b98:	d11ff06f          	j	38a8 <pjpeg_decode_init+0x4d4>
    3b9c:	02500993          	li	s3,37
    3ba0:	a7dff06f          	j	361c <pjpeg_decode_init+0x248>
    3ba4:	01200993          	li	s3,18
    3ba8:	a75ff06f          	j	361c <pjpeg_decode_init+0x248>
    3bac:	00700993          	li	s3,7
    3bb0:	a6dff06f          	j	361c <pjpeg_decode_init+0x248>
    3bb4:	00e00993          	li	s3,14
    3bb8:	a65ff06f          	j	361c <pjpeg_decode_init+0x248>
    3bbc:	00800993          	li	s3,8
    3bc0:	a5dff06f          	j	361c <pjpeg_decode_init+0x248>
    3bc4:	000117b7          	lui	a5,0x11
    3bc8:	00011737          	lui	a4,0x11
    3bcc:	d807d783          	lhu	a5,-640(a5) # 10d80 <gRestartInterval>
    3bd0:	da470693          	addi	a3,a4,-604 # 10da4 <gLastDC>
    3bd4:	da072223          	sw	zero,-604(a4)
    3bd8:	00069223          	sh	zero,4(a3)
    3bdc:	00078a63          	beqz	a5,3bf0 <pjpeg_decode_init+0x81c>
    3be0:	00011737          	lui	a4,0x11
    3be4:	d6f71e23          	sh	a5,-644(a4) # 10d7c <gRestartsLeft>
    3be8:	000117b7          	lui	a5,0x11
    3bec:	d6079f23          	sh	zero,-642(a5) # 10d7e <gNextRestartNum>
    3bf0:	d98c4603          	lbu	a2,-616(s8)
    3bf4:	000117b7          	lui	a5,0x11
    3bf8:	00011737          	lui	a4,0x11
    3bfc:	d9add683          	lhu	a3,-614(s11)
    3c00:	d9d7c783          	lbu	a5,-611(a5) # 10d9d <gInBufOfs>
    3c04:	d9c74703          	lbu	a4,-612(a4) # 10d9c <gInBufLeft>
    3c08:	10061463          	bnez	a2,3d10 <pjpeg_decode_init+0x93c>
    3c0c:	000104b7          	lui	s1,0x10
    3c10:	46048493          	addi	s1,s1,1120 # 10460 <gCoeffBuf>
    3c14:	fff78793          	addi	a5,a5,-1
    3c18:	0ff7f793          	zext.b	a5,a5
    3c1c:	00011837          	lui	a6,0x11
    3c20:	00f48633          	add	a2,s1,a5
    3c24:	0086d693          	srli	a3,a3,0x8
    3c28:	00170713          	addi	a4,a4,1
    3c2c:	d8f80ea3          	sb	a5,-611(a6) # 10d9d <gInBufOfs>
    3c30:	000117b7          	lui	a5,0x11
    3c34:	d8e78e23          	sb	a4,-612(a5) # 10d9c <gInBufLeft>
    3c38:	00100593          	li	a1,1
    3c3c:	00800793          	li	a5,8
    3c40:	38d60023          	sb	a3,896(a2)
    3c44:	00800513          	li	a0,8
    3c48:	d8fc0c23          	sb	a5,-616(s8)
    3c4c:	c28fd0ef          	jal	ra,1074 <getBits>
    3c50:	00100593          	li	a1,1
    3c54:	00800513          	li	a0,8
    3c58:	c1cfd0ef          	jal	ra,1074 <getBits>
    3c5c:	d5144983          	lbu	s3,-687(s0)
    3c60:	880992e3          	bnez	s3,34e4 <pjpeg_decode_init+0x110>
    3c64:	000117b7          	lui	a5,0x11
    3c68:	d967df03          	lhu	t5,-618(a5) # 10d96 <gImageXSize>
    3c6c:	000117b7          	lui	a5,0x11
    3c70:	d947de83          	lhu	t4,-620(a5) # 10d94 <gImageYSize>
    3c74:	000117b7          	lui	a5,0x11
    3c78:	d937ce03          	lbu	t3,-621(a5) # 10d93 <gCompsInFrame>
    3c7c:	000117b7          	lui	a5,0x11
    3c80:	d6c92303          	lw	t1,-660(s2)
    3c84:	d667d803          	lhu	a6,-666(a5) # 10d66 <gMaxMCUSPerRow>
    3c88:	d64a5503          	lhu	a0,-668(s4)
    3c8c:	d69bc583          	lbu	a1,-663(s7)
    3c90:	d68cc603          	lbu	a2,-664(s9)
    3c94:	28048693          	addi	a3,s1,640
    3c98:	08048713          	addi	a4,s1,128
    3c9c:	18048493          	addi	s1,s1,384
    3ca0:	01ed2023          	sw	t5,0(s10)
    3ca4:	01dd2223          	sw	t4,4(s10)
    3ca8:	01cd2423          	sw	t3,8(s10)
    3cac:	006d2a23          	sw	t1,20(s10)
    3cb0:	010d2623          	sw	a6,12(s10)
    3cb4:	00ad2823          	sw	a0,16(s10)
    3cb8:	00bd2c23          	sw	a1,24(s10)
    3cbc:	00cd2e23          	sw	a2,28(s10)
    3cc0:	02dd2023          	sw	a3,32(s10)
    3cc4:	02ed2223          	sw	a4,36(s10)
    3cc8:	029d2423          	sw	s1,40(s10)
    3ccc:	819ff06f          	j	34e4 <pjpeg_decode_init+0x110>
    3cd0:	000117b7          	lui	a5,0x11
    3cd4:	00011737          	lui	a4,0x11
    3cd8:	d9f7c683          	lbu	a3,-609(a5) # 10d9f <gValidQuantTables>
    3cdc:	d8470713          	addi	a4,a4,-636 # 10d84 <gCompQuant>
    3ce0:	0080006f          	j	3ce8 <pjpeg_decode_init+0x914>
    3ce4:	eea480e3          	beq	s1,a0,3bc4 <pjpeg_decode_init+0x7f0>
    3ce8:	0004c783          	lbu	a5,0(s1)
    3cec:	00148493          	addi	s1,s1,1
    3cf0:	00f707b3          	add	a5,a4,a5
    3cf4:	0007c783          	lbu	a5,0(a5)
    3cf8:	00f037b3          	snez	a5,a5
    3cfc:	00178793          	addi	a5,a5,1
    3d00:	00f6f7b3          	and	a5,a3,a5
    3d04:	fe0790e3          	bnez	a5,3ce4 <pjpeg_decode_init+0x910>
    3d08:	01700993          	li	s3,23
    3d0c:	911ff06f          	j	361c <pjpeg_decode_init+0x248>
    3d10:	fff78793          	addi	a5,a5,-1
    3d14:	000104b7          	lui	s1,0x10
    3d18:	0ff7f793          	zext.b	a5,a5
    3d1c:	46048493          	addi	s1,s1,1120 # 10460 <gCoeffBuf>
    3d20:	00170713          	addi	a4,a4,1
    3d24:	00f48633          	add	a2,s1,a5
    3d28:	0ff77713          	zext.b	a4,a4
    3d2c:	38d60023          	sb	a3,896(a2)
    3d30:	ee5ff06f          	j	3c14 <pjpeg_decode_init+0x840>
    3d34:	00900993          	li	s3,9
    3d38:	8e5ff06f          	j	361c <pjpeg_decode_init+0x248>
    3d3c:	d886c683          	lbu	a3,-632(a3)
    3d40:	08c68263          	beq	a3,a2,3dc4 <pjpeg_decode_init+0x9f0>
    3d44:	00200713          	li	a4,2
    3d48:	f8e69e63          	bne	a3,a4,34e4 <pjpeg_decode_init+0x110>
    3d4c:	00300793          	li	a5,3
    3d50:	00011937          	lui	s2,0x11
    3d54:	00400713          	li	a4,4
    3d58:	d6f92623          	sw	a5,-660(s2) # 10d6c <gScanType>
    3d5c:	000117b7          	lui	a5,0x11
    3d60:	d6e78523          	sb	a4,-662(a5) # 10d6a <gMaxBlocksPerMCU>
    3d64:	000117b7          	lui	a5,0x11
    3d68:	02010737          	lui	a4,0x2010
    3d6c:	d4e7ae23          	sw	a4,-676(a5) # 10d5c <gMCUOrg>
    3d70:	00f00693          	li	a3,15
    3d74:	01000793          	li	a5,16
    3d78:	df5ff06f          	j	3b6c <pjpeg_decode_init+0x798>
    3d7c:	00f00993          	li	s3,15
    3d80:	89dff06f          	j	361c <pjpeg_decode_init+0x248>
    3d84:	00b00993          	li	s3,11
    3d88:	895ff06f          	j	361c <pjpeg_decode_init+0x248>
    3d8c:	00a00993          	li	s3,10
    3d90:	88dff06f          	j	361c <pjpeg_decode_init+0x248>
    3d94:	00200793          	li	a5,2
    3d98:	00011937          	lui	s2,0x11
    3d9c:	00400713          	li	a4,4
    3da0:	d6f92623          	sw	a5,-660(s2) # 10d6c <gScanType>
    3da4:	000117b7          	lui	a5,0x11
    3da8:	d6e78523          	sb	a4,-662(a5) # 10d6a <gMaxBlocksPerMCU>
    3dac:	000117b7          	lui	a5,0x11
    3db0:	02010737          	lui	a4,0x2010
    3db4:	d4e7ae23          	sw	a4,-676(a5) # 10d5c <gMCUOrg>
    3db8:	00700693          	li	a3,7
    3dbc:	00800793          	li	a5,8
    3dc0:	abdff06f          	j	387c <pjpeg_decode_init+0x4a8>
    3dc4:	00011937          	lui	s2,0x11
    3dc8:	d6d92623          	sw	a3,-660(s2) # 10d6c <gScanType>
    3dcc:	000116b7          	lui	a3,0x11
    3dd0:	000117b7          	lui	a5,0x11
    3dd4:	d6e68523          	sb	a4,-662(a3) # 10d6a <gMaxBlocksPerMCU>
    3dd8:	10000713          	li	a4,256
    3ddc:	d5c78613          	addi	a2,a5,-676 # 10d5c <gMCUOrg>
    3de0:	d4e79e23          	sh	a4,-676(a5)
    3de4:	00200793          	li	a5,2
    3de8:	00f60123          	sb	a5,2(a2)
    3dec:	00700693          	li	a3,7
    3df0:	00800793          	li	a5,8
    3df4:	d79ff06f          	j	3b6c <pjpeg_decode_init+0x798>

00003df8 <__mulsi3>:
    3df8:	00050613          	mv	a2,a0
    3dfc:	00000513          	li	a0,0
    3e00:	0015f693          	andi	a3,a1,1
    3e04:	00068463          	beqz	a3,3e0c <__mulsi3+0x14>
    3e08:	00c50533          	add	a0,a0,a2
    3e0c:	0015d593          	srli	a1,a1,0x1
    3e10:	00161613          	slli	a2,a2,0x1
    3e14:	fe0596e3          	bnez	a1,3e00 <__mulsi3+0x8>
    3e18:	00008067          	ret

00003e1c <memcmp>:
    3e1c:	00300793          	li	a5,3
    3e20:	04c7f063          	bgeu	a5,a2,3e60 <memcmp+0x44>
    3e24:	00b567b3          	or	a5,a0,a1
    3e28:	0037f793          	andi	a5,a5,3
    3e2c:	00300693          	li	a3,3
    3e30:	00078a63          	beqz	a5,3e44 <memcmp+0x28>
    3e34:	fff60713          	addi	a4,a2,-1
    3e38:	0300006f          	j	3e68 <memcmp+0x4c>
    3e3c:	00000513          	li	a0,0
    3e40:	00008067          	ret
    3e44:	00052703          	lw	a4,0(a0)
    3e48:	0005a783          	lw	a5,0(a1)
    3e4c:	00f71a63          	bne	a4,a5,3e60 <memcmp+0x44>
    3e50:	00450513          	addi	a0,a0,4
    3e54:	00458593          	addi	a1,a1,4
    3e58:	ffc60613          	addi	a2,a2,-4
    3e5c:	fec6e4e3          	bltu	a3,a2,3e44 <memcmp+0x28>
    3e60:	fff60713          	addi	a4,a2,-1
    3e64:	fc060ce3          	beqz	a2,3e3c <memcmp+0x20>
    3e68:	00050793          	mv	a5,a0
    3e6c:	00170713          	addi	a4,a4,1 # 2010001 <gLastDC+0x1fff25d>
    3e70:	00e50533          	add	a0,a0,a4
    3e74:	0007c703          	lbu	a4,0(a5)
    3e78:	0005c683          	lbu	a3,0(a1)
    3e7c:	00d71c63          	bne	a4,a3,3e94 <memcmp+0x78>
    3e80:	00178793          	addi	a5,a5,1
    3e84:	00158593          	addi	a1,a1,1
    3e88:	fea796e3          	bne	a5,a0,3e74 <memcmp+0x58>
    3e8c:	00000513          	li	a0,0
    3e90:	00008067          	ret
    3e94:	40d70533          	sub	a0,a4,a3
    3e98:	00008067          	ret

00003e9c <memcpy>:
    3e9c:	00c50333          	add	t1,a0,a2
    3ea0:	00b547b3          	xor	a5,a0,a1
    3ea4:	0037f793          	andi	a5,a5,3
    3ea8:	06079663          	bnez	a5,3f14 <memcpy+0x78>
    3eac:	00300793          	li	a5,3
    3eb0:	06c7f263          	bgeu	a5,a2,3f14 <memcpy+0x78>
    3eb4:	00357793          	andi	a5,a0,3
    3eb8:	00050713          	mv	a4,a0
    3ebc:	08079863          	bnez	a5,3f4c <memcpy+0xb0>
    3ec0:	ffc37813          	andi	a6,t1,-4
    3ec4:	00080893          	mv	a7,a6
    3ec8:	40e806b3          	sub	a3,a6,a4
    3ecc:	02000793          	li	a5,32
    3ed0:	08d7cc63          	blt	a5,a3,3f68 <memcpy+0xcc>
    3ed4:	00058693          	mv	a3,a1
    3ed8:	00070793          	mv	a5,a4
    3edc:	03077863          	bgeu	a4,a6,3f0c <memcpy+0x70>
    3ee0:	0006a603          	lw	a2,0(a3)
    3ee4:	00478793          	addi	a5,a5,4
    3ee8:	00468693          	addi	a3,a3,4
    3eec:	fec7ae23          	sw	a2,-4(a5)
    3ef0:	ff17e8e3          	bltu	a5,a7,3ee0 <memcpy+0x44>
    3ef4:	fff80793          	addi	a5,a6,-1
    3ef8:	40e787b3          	sub	a5,a5,a4
    3efc:	ffc7f793          	andi	a5,a5,-4
    3f00:	00478793          	addi	a5,a5,4
    3f04:	00f70733          	add	a4,a4,a5
    3f08:	00f585b3          	add	a1,a1,a5
    3f0c:	00676863          	bltu	a4,t1,3f1c <memcpy+0x80>
    3f10:	00008067          	ret
    3f14:	10657063          	bgeu	a0,t1,4014 <memcpy+0x178>
    3f18:	00050713          	mv	a4,a0
    3f1c:	0005c783          	lbu	a5,0(a1)
    3f20:	00170713          	addi	a4,a4,1
    3f24:	00158593          	addi	a1,a1,1
    3f28:	fef70fa3          	sb	a5,-1(a4)
    3f2c:	fee318e3          	bne	t1,a4,3f1c <memcpy+0x80>
    3f30:	00008067          	ret
    3f34:	0005c783          	lbu	a5,0(a1)
    3f38:	00170713          	addi	a4,a4,1
    3f3c:	00158593          	addi	a1,a1,1
    3f40:	fef70fa3          	sb	a5,-1(a4)
    3f44:	fee318e3          	bne	t1,a4,3f34 <memcpy+0x98>
    3f48:	0c00006f          	j	4008 <memcpy+0x16c>
    3f4c:	0005c783          	lbu	a5,0(a1)
    3f50:	00170713          	addi	a4,a4,1
    3f54:	00158593          	addi	a1,a1,1
    3f58:	fef70fa3          	sb	a5,-1(a4)
    3f5c:	00377793          	andi	a5,a4,3
    3f60:	fe0796e3          	bnez	a5,3f4c <memcpy+0xb0>
    3f64:	f5dff06f          	j	3ec0 <memcpy+0x24>
    3f68:	ff010113          	addi	sp,sp,-16
    3f6c:	00812623          	sw	s0,12(sp)
    3f70:	02000413          	li	s0,32
    3f74:	0005a383          	lw	t2,0(a1)
    3f78:	0045a283          	lw	t0,4(a1)
    3f7c:	0085af83          	lw	t6,8(a1)
    3f80:	00c5af03          	lw	t5,12(a1)
    3f84:	0105ae83          	lw	t4,16(a1)
    3f88:	0145ae03          	lw	t3,20(a1)
    3f8c:	0185a603          	lw	a2,24(a1)
    3f90:	01c5a683          	lw	a3,28(a1)
    3f94:	02458593          	addi	a1,a1,36
    3f98:	ffc5a783          	lw	a5,-4(a1)
    3f9c:	00772023          	sw	t2,0(a4)
    3fa0:	00572223          	sw	t0,4(a4)
    3fa4:	01f72423          	sw	t6,8(a4)
    3fa8:	01e72623          	sw	t5,12(a4)
    3fac:	01d72823          	sw	t4,16(a4)
    3fb0:	01c72a23          	sw	t3,20(a4)
    3fb4:	00c72c23          	sw	a2,24(a4)
    3fb8:	00d72e23          	sw	a3,28(a4)
    3fbc:	02470713          	addi	a4,a4,36
    3fc0:	fef72e23          	sw	a5,-4(a4)
    3fc4:	40e807b3          	sub	a5,a6,a4
    3fc8:	faf446e3          	blt	s0,a5,3f74 <memcpy+0xd8>
    3fcc:	00058693          	mv	a3,a1
    3fd0:	00070793          	mv	a5,a4
    3fd4:	03177863          	bgeu	a4,a7,4004 <memcpy+0x168>
    3fd8:	0006a603          	lw	a2,0(a3)
    3fdc:	00478793          	addi	a5,a5,4
    3fe0:	00468693          	addi	a3,a3,4
    3fe4:	fec7ae23          	sw	a2,-4(a5)
    3fe8:	ff17e8e3          	bltu	a5,a7,3fd8 <memcpy+0x13c>
    3fec:	fff80793          	addi	a5,a6,-1
    3ff0:	40e787b3          	sub	a5,a5,a4
    3ff4:	ffc7f793          	andi	a5,a5,-4
    3ff8:	00478793          	addi	a5,a5,4
    3ffc:	00f70733          	add	a4,a4,a5
    4000:	00f585b3          	add	a1,a1,a5
    4004:	f26768e3          	bltu	a4,t1,3f34 <memcpy+0x98>
    4008:	00c12403          	lw	s0,12(sp)
    400c:	01010113          	addi	sp,sp,16
    4010:	00008067          	ret
    4014:	00008067          	ret

Disassembly of section .text.startup:

00004018 <main>:
    4018:	fe010113          	addi	sp,sp,-32
    401c:	00112e23          	sw	ra,28(sp)
    4020:	8a0fc0ef          	jal	ra,c0 <initialise_board>
    4024:	ab0fc0ef          	jal	ra,2d4 <initialise_benchmark>
    4028:	00100513          	li	a0,1
    402c:	aacfc0ef          	jal	ra,2d8 <warm_caches>
    4030:	894fc0ef          	jal	ra,c4 <start_trigger>
    4034:	abcfc0ef          	jal	ra,2f0 <benchmark>
    4038:	00a12623          	sw	a0,12(sp)
    403c:	8b4fc0ef          	jal	ra,f0 <stop_trigger>
    4040:	00c12503          	lw	a0,12(sp)
    4044:	a0cfc0ef          	jal	ra,250 <verify_benchmark>
    4048:	00051a63          	bnez	a0,405c <main+0x44>
    404c:	110007b7          	lui	a5,0x11000
    4050:	fff00713          	li	a4,-1
    4054:	00e7a823          	sw	a4,16(a5) # 11000010 <gLastDC+0x10fef26c>
    4058:	00e7aa23          	sw	a4,20(a5)
    405c:	110007b7          	lui	a5,0x11000
    4060:	00100713          	li	a4,1
    4064:	08e7a023          	sw	a4,128(a5) # 11000080 <gLastDC+0x10fef2dc>
    4068:	0000006f          	j	4068 <main+0x50>
