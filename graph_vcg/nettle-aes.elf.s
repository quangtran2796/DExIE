
nettle-aes.elf:     file format elf32-littleriscv


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
  84:	3f5060ef          	jal	ra,6c78 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <heap_end.0+0x10fec424>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <heap_end.0+0x10fec424>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <heap_end.0+0x10fec4a4>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <heap_end.0+0xc414>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000147b7          	lui	a5,0x14
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	bca7a023          	sw	a0,-1088(a5) # 13bc0 <start_time>
      e4:	bce7a223          	sw	a4,-1084(a5)
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
     110:	000147b7          	lui	a5,0x14
     114:	bc07a583          	lw	a1,-1088(a5) # 13bc0 <start_time>
     118:	bc47a703          	lw	a4,-1084(a5)
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

00000150 <_nettle_aes_encrypt.part.0>:
     150:	54068c63          	beqz	a3,6a8 <_nettle_aes_encrypt.part.0+0x558>
     154:	fc010113          	addi	sp,sp,-64
     158:	03212a23          	sw	s2,52(sp)
     15c:	00050913          	mv	s2,a0
     160:	03312823          	sw	s3,48(sp)
     164:	00491993          	slli	s3,s2,0x4
     168:	02812e23          	sw	s0,60(sp)
     16c:	00058413          	mv	s0,a1
     170:	00078593          	mv	a1,a5
     174:	00498793          	addi	a5,s3,4
     178:	00f12223          	sw	a5,4(sp)
     17c:	00898793          	addi	a5,s3,8
     180:	00f12423          	sw	a5,8(sp)
     184:	00c98793          	addi	a5,s3,12
     188:	00f12623          	sw	a5,12(sp)
     18c:	00d587b3          	add	a5,a1,a3
     190:	02912c23          	sw	s1,56(sp)
     194:	03412623          	sw	s4,44(sp)
     198:	03512423          	sw	s5,40(sp)
     19c:	03612223          	sw	s6,36(sp)
     1a0:	03712023          	sw	s7,32(sp)
     1a4:	01812e23          	sw	s8,28(sp)
     1a8:	01912c23          	sw	s9,24(sp)
     1ac:	01a12a23          	sw	s10,20(sp)
     1b0:	01b12823          	sw	s11,16(sp)
     1b4:	00070513          	mv	a0,a4
     1b8:	013404b3          	add	s1,s0,s3
     1bc:	00f12023          	sw	a5,0(sp)
     1c0:	0015c383          	lbu	t2,1(a1)
     1c4:	0055c283          	lbu	t0,5(a1)
     1c8:	0095cf83          	lbu	t6,9(a1)
     1cc:	00d5cf03          	lbu	t5,13(a1)
     1d0:	0005cb83          	lbu	s7,0(a1)
     1d4:	0025ce83          	lbu	t4,2(a1)
     1d8:	0045cb03          	lbu	s6,4(a1)
     1dc:	0065ce03          	lbu	t3,6(a1)
     1e0:	0085ca83          	lbu	s5,8(a1)
     1e4:	00a5c303          	lbu	t1,10(a1)
     1e8:	00c5ca03          	lbu	s4,12(a1)
     1ec:	00e5c803          	lbu	a6,14(a1)
     1f0:	0035c783          	lbu	a5,3(a1)
     1f4:	0075c703          	lbu	a4,7(a1)
     1f8:	00b5c883          	lbu	a7,11(a1)
     1fc:	00f5c683          	lbu	a3,15(a1)
     200:	00839393          	slli	t2,t2,0x8
     204:	00829293          	slli	t0,t0,0x8
     208:	008f9f93          	slli	t6,t6,0x8
     20c:	008f1f13          	slli	t5,t5,0x8
     210:	00042c03          	lw	s8,0(s0)
     214:	00442c83          	lw	s9,4(s0)
     218:	00842d03          	lw	s10,8(s0)
     21c:	00c42d83          	lw	s11,12(s0)
     220:	0173e3b3          	or	t2,t2,s7
     224:	010e9e93          	slli	t4,t4,0x10
     228:	0162e2b3          	or	t0,t0,s6
     22c:	010e1e13          	slli	t3,t3,0x10
     230:	015fefb3          	or	t6,t6,s5
     234:	01031313          	slli	t1,t1,0x10
     238:	014f6f33          	or	t5,t5,s4
     23c:	01081813          	slli	a6,a6,0x10
     240:	01e86833          	or	a6,a6,t5
     244:	007eeeb3          	or	t4,t4,t2
     248:	01879793          	slli	a5,a5,0x18
     24c:	005e6e33          	or	t3,t3,t0
     250:	01871713          	slli	a4,a4,0x18
     254:	01f36333          	or	t1,t1,t6
     258:	01889893          	slli	a7,a7,0x18
     25c:	01869693          	slli	a3,a3,0x18
     260:	0106e6b3          	or	a3,a3,a6
     264:	01d7e7b3          	or	a5,a5,t4
     268:	01c76733          	or	a4,a4,t3
     26c:	0068e8b3          	or	a7,a7,t1
     270:	00100813          	li	a6,1
     274:	0187c7b3          	xor	a5,a5,s8
     278:	01974733          	xor	a4,a4,s9
     27c:	01a8c8b3          	xor	a7,a7,s10
     280:	01b6c6b3          	xor	a3,a3,s11
     284:	41287863          	bgeu	a6,s2,694 <_nettle_aes_encrypt.part.0+0x544>
     288:	01040a13          	addi	s4,s0,16
     28c:	00078313          	mv	t1,a5
     290:	00088f13          	mv	t5,a7
     294:	0186db93          	srli	s7,a3,0x18
     298:	0ff77b13          	zext.b	s6,a4
     29c:	0fff7393          	zext.b	t2,t5
     2a0:	01875293          	srli	t0,a4,0x18
     2a4:	0ff37c13          	zext.b	s8,t1
     2a8:	0ff6fc93          	zext.b	s9,a3
     2ac:	01835a93          	srli	s5,t1,0x18
     2b0:	018f5f93          	srli	t6,t5,0x18
     2b4:	340b8b93          	addi	s7,s7,832
     2b8:	040b0b13          	addi	s6,s6,64
     2bc:	04038393          	addi	t2,t2,64
     2c0:	34028293          	addi	t0,t0,832
     2c4:	040c0c13          	addi	s8,s8,64
     2c8:	340a8a93          	addi	s5,s5,832
     2cc:	040c8c93          	addi	s9,s9,64
     2d0:	340f8f93          	addi	t6,t6,832
     2d4:	002b9b93          	slli	s7,s7,0x2
     2d8:	002b1b13          	slli	s6,s6,0x2
     2dc:	00239393          	slli	t2,t2,0x2
     2e0:	00229293          	slli	t0,t0,0x2
     2e4:	0106d813          	srli	a6,a3,0x10
     2e8:	00070893          	mv	a7,a4
     2ec:	008f5e93          	srli	t4,t5,0x8
     2f0:	00875713          	srli	a4,a4,0x8
     2f4:	010f5f13          	srli	t5,t5,0x10
     2f8:	002c9c93          	slli	s9,s9,0x2
     2fc:	01760bb3          	add	s7,a2,s7
     300:	01660b33          	add	s6,a2,s6
     304:	007603b3          	add	t2,a2,t2
     308:	005602b3          	add	t0,a2,t0
     30c:	002c1c13          	slli	s8,s8,0x2
     310:	002a9a93          	slli	s5,s5,0x2
     314:	002f9f93          	slli	t6,t6,0x2
     318:	000bad03          	lw	s10,0(s7)
     31c:	00030793          	mv	a5,t1
     320:	0003ab83          	lw	s7,0(t2)
     324:	0086de13          	srli	t3,a3,0x8
     328:	01860c33          	add	s8,a2,s8
     32c:	0ff77693          	zext.b	a3,a4
     330:	01560ab3          	add	s5,a2,s5
     334:	0fff7713          	zext.b	a4,t5
     338:	01f60fb3          	add	t6,a2,t6
     33c:	0ff87f13          	zext.b	t5,a6
     340:	00835313          	srli	t1,t1,0x8
     344:	01960833          	add	a6,a2,s9
     348:	000b2c83          	lw	s9,0(s6)
     34c:	0002ab03          	lw	s6,0(t0)
     350:	000c2d83          	lw	s11,0(s8)
     354:	0ffefe93          	zext.b	t4,t4
     358:	000aac03          	lw	s8,0(s5)
     35c:	0ffe7e13          	zext.b	t3,t3
     360:	000faa83          	lw	s5,0(t6)
     364:	0107d793          	srli	a5,a5,0x10
     368:	008a2f83          	lw	t6,8(s4)
     36c:	0ff37313          	zext.b	t1,t1
     370:	0108d893          	srli	a7,a7,0x10
     374:	14068693          	addi	a3,a3,320
     378:	140e8e93          	addi	t4,t4,320
     37c:	140e0e13          	addi	t3,t3,320
     380:	0ff7f793          	zext.b	a5,a5
     384:	14030313          	addi	t1,t1,320
     388:	0ff8f893          	zext.b	a7,a7
     38c:	00082803          	lw	a6,0(a6)
     390:	00269693          	slli	a3,a3,0x2
     394:	24070713          	addi	a4,a4,576
     398:	002e9e93          	slli	t4,t4,0x2
     39c:	240f0f13          	addi	t5,t5,576
     3a0:	002e1e13          	slli	t3,t3,0x2
     3a4:	24078793          	addi	a5,a5,576
     3a8:	00231313          	slli	t1,t1,0x2
     3ac:	24088893          	addi	a7,a7,576
     3b0:	016bcb33          	xor	s6,s7,s6
     3b4:	000a2383          	lw	t2,0(s4)
     3b8:	004a2283          	lw	t0,4(s4)
     3bc:	01fb4b33          	xor	s6,s6,t6
     3c0:	00d606b3          	add	a3,a2,a3
     3c4:	00ca2f83          	lw	t6,12(s4)
     3c8:	00271713          	slli	a4,a4,0x2
     3cc:	01d60eb3          	add	t4,a2,t4
     3d0:	002f1f13          	slli	t5,t5,0x2
     3d4:	01c60e33          	add	t3,a2,t3
     3d8:	00279793          	slli	a5,a5,0x2
     3dc:	00660333          	add	t1,a2,t1
     3e0:	00289893          	slli	a7,a7,0x2
     3e4:	0006a683          	lw	a3,0(a3)
     3e8:	00032303          	lw	t1,0(t1)
     3ec:	000eae83          	lw	t4,0(t4)
     3f0:	000e2e03          	lw	t3,0(t3)
     3f4:	00e60733          	add	a4,a2,a4
     3f8:	01e60f33          	add	t5,a2,t5
     3fc:	00f607b3          	add	a5,a2,a5
     400:	011608b3          	add	a7,a2,a7
     404:	00072703          	lw	a4,0(a4)
     408:	000f2f03          	lw	t5,0(t5)
     40c:	0007a783          	lw	a5,0(a5)
     410:	0008a883          	lw	a7,0(a7)
     414:	01adcd33          	xor	s10,s11,s10
     418:	018ccc33          	xor	s8,s9,s8
     41c:	01584833          	xor	a6,a6,s5
     420:	01f84833          	xor	a6,a6,t6
     424:	007d43b3          	xor	t2,s10,t2
     428:	005c42b3          	xor	t0,s8,t0
     42c:	00d3cfb3          	xor	t6,t2,a3
     430:	01d2ceb3          	xor	t4,t0,t4
     434:	006846b3          	xor	a3,a6,t1
     438:	01cb4b33          	xor	s6,s6,t3
     43c:	010a0a13          	addi	s4,s4,16
     440:	00efc333          	xor	t1,t6,a4
     444:	0116c6b3          	xor	a3,a3,a7
     448:	01eec733          	xor	a4,t4,t5
     44c:	00fb4f33          	xor	t5,s6,a5
     450:	e49a12e3          	bne	s4,s1,294 <_nettle_aes_encrypt.part.0+0x144>
     454:	00c12c03          	lw	s8,12(sp)
     458:	00812c83          	lw	s9,8(sp)
     45c:	00412d03          	lw	s10,4(sp)
     460:	00030793          	mv	a5,t1
     464:	000f0893          	mv	a7,t5
     468:	00098d93          	mv	s11,s3
     46c:	0186db93          	srli	s7,a3,0x18
     470:	00875f93          	srli	t6,a4,0x8
     474:	0187db13          	srli	s6,a5,0x18
     478:	0088df13          	srli	t5,a7,0x8
     47c:	01875a93          	srli	s5,a4,0x18
     480:	0086de93          	srli	t4,a3,0x8
     484:	0ff7fa13          	zext.b	s4,a5
     488:	0108de13          	srli	t3,a7,0x10
     48c:	0ff77393          	zext.b	t2,a4
     490:	0106d313          	srli	t1,a3,0x10
     494:	0ff8f293          	zext.b	t0,a7
     498:	0107d813          	srli	a6,a5,0x10
     49c:	01760bb3          	add	s7,a2,s7
     4a0:	0fffff93          	zext.b	t6,t6
     4a4:	01660b33          	add	s6,a2,s6
     4a8:	0fff7f13          	zext.b	t5,t5
     4ac:	01560ab3          	add	s5,a2,s5
     4b0:	0ffefe93          	zext.b	t4,t4
     4b4:	0188d893          	srli	a7,a7,0x18
     4b8:	0087d793          	srli	a5,a5,0x8
     4bc:	000bcb83          	lbu	s7,0(s7)
     4c0:	000b4b03          	lbu	s6,0(s6)
     4c4:	000aca83          	lbu	s5,0(s5)
     4c8:	01460a33          	add	s4,a2,s4
     4cc:	01f60fb3          	add	t6,a2,t6
     4d0:	0ffe7e13          	zext.b	t3,t3
     4d4:	007603b3          	add	t2,a2,t2
     4d8:	01e60f33          	add	t5,a2,t5
     4dc:	0ff37313          	zext.b	t1,t1
     4e0:	005602b3          	add	t0,a2,t0
     4e4:	01d60eb3          	add	t4,a2,t4
     4e8:	0ff87813          	zext.b	a6,a6
     4ec:	011608b3          	add	a7,a2,a7
     4f0:	0ff6f693          	zext.b	a3,a3
     4f4:	0ff7f793          	zext.b	a5,a5
     4f8:	01075713          	srli	a4,a4,0x10
     4fc:	000a4a03          	lbu	s4,0(s4)
     500:	0003c383          	lbu	t2,0(t2)
     504:	0002c283          	lbu	t0,0(t0)
     508:	000fcf83          	lbu	t6,0(t6)
     50c:	000f4f03          	lbu	t5,0(t5)
     510:	000ece83          	lbu	t4,0(t4)
     514:	0008c883          	lbu	a7,0(a7)
     518:	01c60e33          	add	t3,a2,t3
     51c:	00660333          	add	t1,a2,t1
     520:	01060833          	add	a6,a2,a6
     524:	00d606b3          	add	a3,a2,a3
     528:	00f607b3          	add	a5,a2,a5
     52c:	0ff77713          	zext.b	a4,a4
     530:	0006c683          	lbu	a3,0(a3)
     534:	000e4e03          	lbu	t3,0(t3)
     538:	00034303          	lbu	t1,0(t1)
     53c:	00084803          	lbu	a6,0(a6)
     540:	0007c783          	lbu	a5,0(a5)
     544:	00e60733          	add	a4,a2,a4
     548:	00074703          	lbu	a4,0(a4)
     54c:	018b9b93          	slli	s7,s7,0x18
     550:	01b40db3          	add	s11,s0,s11
     554:	018b1b13          	slli	s6,s6,0x18
     558:	01a40d33          	add	s10,s0,s10
     55c:	018a9a93          	slli	s5,s5,0x18
     560:	01940cb3          	add	s9,s0,s9
     564:	000dad83          	lw	s11,0(s11)
     568:	000d2d03          	lw	s10,0(s10)
     56c:	000cac83          	lw	s9,0(s9)
     570:	014bebb3          	or	s7,s7,s4
     574:	007b6b33          	or	s6,s6,t2
     578:	005aeab3          	or	s5,s5,t0
     57c:	008f9f93          	slli	t6,t6,0x8
     580:	008f1f13          	slli	t5,t5,0x8
     584:	008e9e93          	slli	t4,t4,0x8
     588:	01889893          	slli	a7,a7,0x18
     58c:	01840c33          	add	s8,s0,s8
     590:	000c2283          	lw	t0,0(s8)
     594:	00d8e8b3          	or	a7,a7,a3
     598:	010e1e13          	slli	t3,t3,0x10
     59c:	01031313          	slli	t1,t1,0x10
     5a0:	01081813          	slli	a6,a6,0x10
     5a4:	01fbefb3          	or	t6,s7,t6
     5a8:	01eb6f33          	or	t5,s6,t5
     5ac:	01daeeb3          	or	t4,s5,t4
     5b0:	00879793          	slli	a5,a5,0x8
     5b4:	01cfefb3          	or	t6,t6,t3
     5b8:	006f6f33          	or	t5,t5,t1
     5bc:	010eeeb3          	or	t4,t4,a6
     5c0:	00f8e7b3          	or	a5,a7,a5
     5c4:	01071713          	slli	a4,a4,0x10
     5c8:	01bfcfb3          	xor	t6,t6,s11
     5cc:	01af4f33          	xor	t5,t5,s10
     5d0:	019eceb3          	xor	t4,t4,s9
     5d4:	00e7e7b3          	or	a5,a5,a4
     5d8:	0057c7b3          	xor	a5,a5,t0
     5dc:	018ed813          	srli	a6,t4,0x18
     5e0:	010ed693          	srli	a3,t4,0x10
     5e4:	008ed713          	srli	a4,t4,0x8
     5e8:	018fda13          	srli	s4,t6,0x18
     5ec:	010fd393          	srli	t2,t6,0x10
     5f0:	008fd293          	srli	t0,t6,0x8
     5f4:	018f5e13          	srli	t3,t5,0x18
     5f8:	010f5313          	srli	t1,t5,0x10
     5fc:	008f5893          	srli	a7,t5,0x8
     600:	010505a3          	sb	a6,11(a0)
     604:	00d50523          	sb	a3,10(a0)
     608:	00e504a3          	sb	a4,9(a0)
     60c:	014501a3          	sb	s4,3(a0)
     610:	00750123          	sb	t2,2(a0)
     614:	005500a3          	sb	t0,1(a0)
     618:	01f50023          	sb	t6,0(a0)
     61c:	01c503a3          	sb	t3,7(a0)
     620:	00650323          	sb	t1,6(a0)
     624:	011502a3          	sb	a7,5(a0)
     628:	01e50223          	sb	t5,4(a0)
     62c:	01d50423          	sb	t4,8(a0)
     630:	0187d813          	srli	a6,a5,0x18
     634:	010507a3          	sb	a6,15(a0)
     638:	0107d693          	srli	a3,a5,0x10
     63c:	0087d713          	srli	a4,a5,0x8
     640:	00f50623          	sb	a5,12(a0)
     644:	00012783          	lw	a5,0(sp)
     648:	00d50723          	sb	a3,14(a0)
     64c:	00e506a3          	sb	a4,13(a0)
     650:	01058593          	addi	a1,a1,16
     654:	01050513          	addi	a0,a0,16
     658:	b6f594e3          	bne	a1,a5,1c0 <_nettle_aes_encrypt.part.0+0x70>
     65c:	03c12403          	lw	s0,60(sp)
     660:	03812483          	lw	s1,56(sp)
     664:	03412903          	lw	s2,52(sp)
     668:	03012983          	lw	s3,48(sp)
     66c:	02c12a03          	lw	s4,44(sp)
     670:	02812a83          	lw	s5,40(sp)
     674:	02412b03          	lw	s6,36(sp)
     678:	02012b83          	lw	s7,32(sp)
     67c:	01c12c03          	lw	s8,28(sp)
     680:	01812c83          	lw	s9,24(sp)
     684:	01412d03          	lw	s10,20(sp)
     688:	01012d83          	lw	s11,16(sp)
     68c:	04010113          	addi	sp,sp,64
     690:	00008067          	ret
     694:	01c00c13          	li	s8,28
     698:	01800c93          	li	s9,24
     69c:	01400d13          	li	s10,20
     6a0:	01000d93          	li	s11,16
     6a4:	dc9ff06f          	j	46c <_nettle_aes_encrypt.part.0+0x31c>
     6a8:	00008067          	ret

000006ac <_nettle_aes_decrypt.part.0>:
     6ac:	54068c63          	beqz	a3,c04 <_nettle_aes_decrypt.part.0+0x558>
     6b0:	fc010113          	addi	sp,sp,-64
     6b4:	03212a23          	sw	s2,52(sp)
     6b8:	00050913          	mv	s2,a0
     6bc:	03312823          	sw	s3,48(sp)
     6c0:	00491993          	slli	s3,s2,0x4
     6c4:	02812e23          	sw	s0,60(sp)
     6c8:	00058413          	mv	s0,a1
     6cc:	00078593          	mv	a1,a5
     6d0:	00498793          	addi	a5,s3,4
     6d4:	00f12223          	sw	a5,4(sp)
     6d8:	00898793          	addi	a5,s3,8
     6dc:	00f12423          	sw	a5,8(sp)
     6e0:	00c98793          	addi	a5,s3,12
     6e4:	00f12623          	sw	a5,12(sp)
     6e8:	00d587b3          	add	a5,a1,a3
     6ec:	02912c23          	sw	s1,56(sp)
     6f0:	03412623          	sw	s4,44(sp)
     6f4:	03512423          	sw	s5,40(sp)
     6f8:	03612223          	sw	s6,36(sp)
     6fc:	03712023          	sw	s7,32(sp)
     700:	01812e23          	sw	s8,28(sp)
     704:	01912c23          	sw	s9,24(sp)
     708:	01a12a23          	sw	s10,20(sp)
     70c:	01b12823          	sw	s11,16(sp)
     710:	00070513          	mv	a0,a4
     714:	013404b3          	add	s1,s0,s3
     718:	00f12023          	sw	a5,0(sp)
     71c:	0015c383          	lbu	t2,1(a1)
     720:	0055c283          	lbu	t0,5(a1)
     724:	0095cf83          	lbu	t6,9(a1)
     728:	00d5cf03          	lbu	t5,13(a1)
     72c:	0005cb83          	lbu	s7,0(a1)
     730:	0025ce83          	lbu	t4,2(a1)
     734:	0045cb03          	lbu	s6,4(a1)
     738:	0065ce03          	lbu	t3,6(a1)
     73c:	0085ca83          	lbu	s5,8(a1)
     740:	00a5c303          	lbu	t1,10(a1)
     744:	00c5ca03          	lbu	s4,12(a1)
     748:	00e5c803          	lbu	a6,14(a1)
     74c:	0035c703          	lbu	a4,3(a1)
     750:	0075c783          	lbu	a5,7(a1)
     754:	00b5c883          	lbu	a7,11(a1)
     758:	00f5c683          	lbu	a3,15(a1)
     75c:	00839393          	slli	t2,t2,0x8
     760:	00829293          	slli	t0,t0,0x8
     764:	008f9f93          	slli	t6,t6,0x8
     768:	008f1f13          	slli	t5,t5,0x8
     76c:	00042c03          	lw	s8,0(s0)
     770:	00442c83          	lw	s9,4(s0)
     774:	00842d03          	lw	s10,8(s0)
     778:	00c42d83          	lw	s11,12(s0)
     77c:	0173e3b3          	or	t2,t2,s7
     780:	010e9e93          	slli	t4,t4,0x10
     784:	0162e2b3          	or	t0,t0,s6
     788:	010e1e13          	slli	t3,t3,0x10
     78c:	015fefb3          	or	t6,t6,s5
     790:	01031313          	slli	t1,t1,0x10
     794:	014f6f33          	or	t5,t5,s4
     798:	01081813          	slli	a6,a6,0x10
     79c:	01e86833          	or	a6,a6,t5
     7a0:	007eeeb3          	or	t4,t4,t2
     7a4:	01871713          	slli	a4,a4,0x18
     7a8:	005e6e33          	or	t3,t3,t0
     7ac:	01879793          	slli	a5,a5,0x18
     7b0:	01f36333          	or	t1,t1,t6
     7b4:	01889893          	slli	a7,a7,0x18
     7b8:	01869693          	slli	a3,a3,0x18
     7bc:	0106e6b3          	or	a3,a3,a6
     7c0:	01d76733          	or	a4,a4,t4
     7c4:	01c7e7b3          	or	a5,a5,t3
     7c8:	0068e8b3          	or	a7,a7,t1
     7cc:	00100813          	li	a6,1
     7d0:	01874733          	xor	a4,a4,s8
     7d4:	0197c7b3          	xor	a5,a5,s9
     7d8:	01a8c8b3          	xor	a7,a7,s10
     7dc:	01b6c6b3          	xor	a3,a3,s11
     7e0:	41287863          	bgeu	a6,s2,bf0 <_nettle_aes_decrypt.part.0+0x544>
     7e4:	01040393          	addi	t2,s0,16
     7e8:	00070313          	mv	t1,a4
     7ec:	00078e13          	mv	t3,a5
     7f0:	018e5b93          	srli	s7,t3,0x18
     7f4:	0ffe7b13          	zext.b	s6,t3
     7f8:	0ff8fa13          	zext.b	s4,a7
     7fc:	0186d293          	srli	t0,a3,0x18
     800:	0ff37c13          	zext.b	s8,t1
     804:	0188da93          	srli	s5,a7,0x18
     808:	0ff6fc93          	zext.b	s9,a3
     80c:	01835f93          	srli	t6,t1,0x18
     810:	340b8b93          	addi	s7,s7,832
     814:	040b0b13          	addi	s6,s6,64
     818:	040a0a13          	addi	s4,s4,64
     81c:	34028293          	addi	t0,t0,832
     820:	040c0c13          	addi	s8,s8,64
     824:	340a8a93          	addi	s5,s5,832
     828:	040c8c93          	addi	s9,s9,64
     82c:	340f8f93          	addi	t6,t6,832
     830:	002b9b93          	slli	s7,s7,0x2
     834:	002b1b13          	slli	s6,s6,0x2
     838:	002a1a13          	slli	s4,s4,0x2
     83c:	00229293          	slli	t0,t0,0x2
     840:	000e0793          	mv	a5,t3
     844:	0108df13          	srli	t5,a7,0x10
     848:	0106d813          	srli	a6,a3,0x10
     84c:	0088dd13          	srli	s10,a7,0x8
     850:	002c9c93          	slli	s9,s9,0x2
     854:	01760bb3          	add	s7,a2,s7
     858:	01660b33          	add	s6,a2,s6
     85c:	01460a33          	add	s4,a2,s4
     860:	005602b3          	add	t0,a2,t0
     864:	002c1c13          	slli	s8,s8,0x2
     868:	002a9a93          	slli	s5,s5,0x2
     86c:	002f9f93          	slli	t6,t6,0x2
     870:	00030713          	mv	a4,t1
     874:	0086de93          	srli	t4,a3,0x8
     878:	00835e13          	srli	t3,t1,0x8
     87c:	0ffd7893          	zext.b	a7,s10
     880:	0087d313          	srli	t1,a5,0x8
     884:	000bad03          	lw	s10,0(s7)
     888:	01860c33          	add	s8,a2,s8
     88c:	000a2b83          	lw	s7,0(s4)
     890:	0fff7693          	zext.b	a3,t5
     894:	01560ab3          	add	s5,a2,s5
     898:	0ff87f13          	zext.b	t5,a6
     89c:	01f60fb3          	add	t6,a2,t6
     8a0:	01960833          	add	a6,a2,s9
     8a4:	000b2c83          	lw	s9,0(s6)
     8a8:	0002ab03          	lw	s6,0(t0)
     8ac:	000c2d83          	lw	s11,0(s8)
     8b0:	0ffefe93          	zext.b	t4,t4
     8b4:	000aac03          	lw	s8,0(s5)
     8b8:	0ffe7e13          	zext.b	t3,t3
     8bc:	000faa83          	lw	s5,0(t6)
     8c0:	0ff37313          	zext.b	t1,t1
     8c4:	0083af83          	lw	t6,8(t2)
     8c8:	01075713          	srli	a4,a4,0x10
     8cc:	0107d793          	srli	a5,a5,0x10
     8d0:	140e8e93          	addi	t4,t4,320
     8d4:	140e0e13          	addi	t3,t3,320
     8d8:	14030313          	addi	t1,t1,320
     8dc:	0ff77713          	zext.b	a4,a4
     8e0:	14088893          	addi	a7,a7,320
     8e4:	0ff7f793          	zext.b	a5,a5
     8e8:	00082803          	lw	a6,0(a6)
     8ec:	002e9e93          	slli	t4,t4,0x2
     8f0:	24068693          	addi	a3,a3,576
     8f4:	002e1e13          	slli	t3,t3,0x2
     8f8:	240f0f13          	addi	t5,t5,576
     8fc:	00231313          	slli	t1,t1,0x2
     900:	24070713          	addi	a4,a4,576
     904:	00289893          	slli	a7,a7,0x2
     908:	24078793          	addi	a5,a5,576
     90c:	016bcb33          	xor	s6,s7,s6
     910:	0003aa03          	lw	s4,0(t2)
     914:	0043a283          	lw	t0,4(t2)
     918:	01fb4b33          	xor	s6,s6,t6
     91c:	01d60eb3          	add	t4,a2,t4
     920:	00c3af83          	lw	t6,12(t2)
     924:	00269693          	slli	a3,a3,0x2
     928:	01c60e33          	add	t3,a2,t3
     92c:	002f1f13          	slli	t5,t5,0x2
     930:	00660333          	add	t1,a2,t1
     934:	00271713          	slli	a4,a4,0x2
     938:	011608b3          	add	a7,a2,a7
     93c:	00279793          	slli	a5,a5,0x2
     940:	00032303          	lw	t1,0(t1)
     944:	0008a883          	lw	a7,0(a7)
     948:	000eae83          	lw	t4,0(t4)
     94c:	000e2e03          	lw	t3,0(t3)
     950:	00d606b3          	add	a3,a2,a3
     954:	01e60f33          	add	t5,a2,t5
     958:	00e60733          	add	a4,a2,a4
     95c:	00f607b3          	add	a5,a2,a5
     960:	0006a683          	lw	a3,0(a3)
     964:	000f2f03          	lw	t5,0(t5)
     968:	00072703          	lw	a4,0(a4)
     96c:	0007a783          	lw	a5,0(a5)
     970:	01adcd33          	xor	s10,s11,s10
     974:	018ccc33          	xor	s8,s9,s8
     978:	01584833          	xor	a6,a6,s5
     97c:	014d4a33          	xor	s4,s10,s4
     980:	005c42b3          	xor	t0,s8,t0
     984:	01f84833          	xor	a6,a6,t6
     988:	006b4b33          	xor	s6,s6,t1
     98c:	01184833          	xor	a6,a6,a7
     990:	01da4eb3          	xor	t4,s4,t4
     994:	01c2ce33          	xor	t3,t0,t3
     998:	01038393          	addi	t2,t2,16
     99c:	00dec333          	xor	t1,t4,a3
     9a0:	01ee4e33          	xor	t3,t3,t5
     9a4:	00eb48b3          	xor	a7,s6,a4
     9a8:	00f846b3          	xor	a3,a6,a5
     9ac:	e49392e3          	bne	t2,s1,7f0 <_nettle_aes_decrypt.part.0+0x144>
     9b0:	00c12c03          	lw	s8,12(sp)
     9b4:	00812c83          	lw	s9,8(sp)
     9b8:	00412d03          	lw	s10,4(sp)
     9bc:	00030713          	mv	a4,t1
     9c0:	000e0793          	mv	a5,t3
     9c4:	00098d93          	mv	s11,s3
     9c8:	0187db93          	srli	s7,a5,0x18
     9cc:	0086df93          	srli	t6,a3,0x8
     9d0:	0188db13          	srli	s6,a7,0x18
     9d4:	00875f13          	srli	t5,a4,0x8
     9d8:	0186da93          	srli	s5,a3,0x18
     9dc:	0087de93          	srli	t4,a5,0x8
     9e0:	0ff77a13          	zext.b	s4,a4
     9e4:	0108de13          	srli	t3,a7,0x10
     9e8:	0ff7f393          	zext.b	t2,a5
     9ec:	0106d313          	srli	t1,a3,0x10
     9f0:	0ff8f293          	zext.b	t0,a7
     9f4:	01075813          	srli	a6,a4,0x10
     9f8:	01760bb3          	add	s7,a2,s7
     9fc:	0fffff93          	zext.b	t6,t6
     a00:	01660b33          	add	s6,a2,s6
     a04:	0fff7f13          	zext.b	t5,t5
     a08:	01560ab3          	add	s5,a2,s5
     a0c:	0ffefe93          	zext.b	t4,t4
     a10:	01875713          	srli	a4,a4,0x18
     a14:	0088d893          	srli	a7,a7,0x8
     a18:	000bcb83          	lbu	s7,0(s7)
     a1c:	000b4b03          	lbu	s6,0(s6)
     a20:	000aca83          	lbu	s5,0(s5)
     a24:	01460a33          	add	s4,a2,s4
     a28:	01f60fb3          	add	t6,a2,t6
     a2c:	0ffe7e13          	zext.b	t3,t3
     a30:	007603b3          	add	t2,a2,t2
     a34:	01e60f33          	add	t5,a2,t5
     a38:	0ff37313          	zext.b	t1,t1
     a3c:	005602b3          	add	t0,a2,t0
     a40:	01d60eb3          	add	t4,a2,t4
     a44:	0ff87813          	zext.b	a6,a6
     a48:	00e60733          	add	a4,a2,a4
     a4c:	0ff6f693          	zext.b	a3,a3
     a50:	0ff8f893          	zext.b	a7,a7
     a54:	0107d793          	srli	a5,a5,0x10
     a58:	000a4a03          	lbu	s4,0(s4)
     a5c:	0003c383          	lbu	t2,0(t2)
     a60:	0002c283          	lbu	t0,0(t0)
     a64:	000fcf83          	lbu	t6,0(t6)
     a68:	000f4f03          	lbu	t5,0(t5)
     a6c:	000ece83          	lbu	t4,0(t4)
     a70:	00074703          	lbu	a4,0(a4)
     a74:	01c60e33          	add	t3,a2,t3
     a78:	00660333          	add	t1,a2,t1
     a7c:	01060833          	add	a6,a2,a6
     a80:	00d606b3          	add	a3,a2,a3
     a84:	011608b3          	add	a7,a2,a7
     a88:	0ff7f793          	zext.b	a5,a5
     a8c:	0006c683          	lbu	a3,0(a3)
     a90:	000e4e03          	lbu	t3,0(t3)
     a94:	00034303          	lbu	t1,0(t1)
     a98:	00084803          	lbu	a6,0(a6)
     a9c:	0008c883          	lbu	a7,0(a7)
     aa0:	00f607b3          	add	a5,a2,a5
     aa4:	0007c783          	lbu	a5,0(a5)
     aa8:	018b9b93          	slli	s7,s7,0x18
     aac:	01b40db3          	add	s11,s0,s11
     ab0:	018b1b13          	slli	s6,s6,0x18
     ab4:	01a40d33          	add	s10,s0,s10
     ab8:	018a9a93          	slli	s5,s5,0x18
     abc:	01940cb3          	add	s9,s0,s9
     ac0:	000dad83          	lw	s11,0(s11)
     ac4:	000d2d03          	lw	s10,0(s10)
     ac8:	000cac83          	lw	s9,0(s9)
     acc:	014bebb3          	or	s7,s7,s4
     ad0:	007b6b33          	or	s6,s6,t2
     ad4:	005aeab3          	or	s5,s5,t0
     ad8:	008f9f93          	slli	t6,t6,0x8
     adc:	008f1f13          	slli	t5,t5,0x8
     ae0:	008e9e93          	slli	t4,t4,0x8
     ae4:	01871713          	slli	a4,a4,0x18
     ae8:	01840c33          	add	s8,s0,s8
     aec:	000c2283          	lw	t0,0(s8)
     af0:	010e1e13          	slli	t3,t3,0x10
     af4:	01031313          	slli	t1,t1,0x10
     af8:	01081813          	slli	a6,a6,0x10
     afc:	00d76733          	or	a4,a4,a3
     b00:	00889893          	slli	a7,a7,0x8
     b04:	01fbefb3          	or	t6,s7,t6
     b08:	01eb6f33          	or	t5,s6,t5
     b0c:	01daeeb3          	or	t4,s5,t4
     b10:	01176733          	or	a4,a4,a7
     b14:	01cfefb3          	or	t6,t6,t3
     b18:	006f6f33          	or	t5,t5,t1
     b1c:	010eeeb3          	or	t4,t4,a6
     b20:	01079793          	slli	a5,a5,0x10
     b24:	01bfcfb3          	xor	t6,t6,s11
     b28:	01af4f33          	xor	t5,t5,s10
     b2c:	019eceb3          	xor	t4,t4,s9
     b30:	00f767b3          	or	a5,a4,a5
     b34:	0057c7b3          	xor	a5,a5,t0
     b38:	018ed813          	srli	a6,t4,0x18
     b3c:	010ed693          	srli	a3,t4,0x10
     b40:	008ed713          	srli	a4,t4,0x8
     b44:	018fda13          	srli	s4,t6,0x18
     b48:	010fd393          	srli	t2,t6,0x10
     b4c:	008fd293          	srli	t0,t6,0x8
     b50:	018f5e13          	srli	t3,t5,0x18
     b54:	010f5313          	srli	t1,t5,0x10
     b58:	008f5893          	srli	a7,t5,0x8
     b5c:	010505a3          	sb	a6,11(a0)
     b60:	00d50523          	sb	a3,10(a0)
     b64:	00e504a3          	sb	a4,9(a0)
     b68:	014501a3          	sb	s4,3(a0)
     b6c:	00750123          	sb	t2,2(a0)
     b70:	005500a3          	sb	t0,1(a0)
     b74:	01f50023          	sb	t6,0(a0)
     b78:	01c503a3          	sb	t3,7(a0)
     b7c:	00650323          	sb	t1,6(a0)
     b80:	011502a3          	sb	a7,5(a0)
     b84:	01e50223          	sb	t5,4(a0)
     b88:	01d50423          	sb	t4,8(a0)
     b8c:	0187d813          	srli	a6,a5,0x18
     b90:	010507a3          	sb	a6,15(a0)
     b94:	0107d693          	srli	a3,a5,0x10
     b98:	0087d713          	srli	a4,a5,0x8
     b9c:	00f50623          	sb	a5,12(a0)
     ba0:	00012783          	lw	a5,0(sp)
     ba4:	00d50723          	sb	a3,14(a0)
     ba8:	00e506a3          	sb	a4,13(a0)
     bac:	01058593          	addi	a1,a1,16
     bb0:	01050513          	addi	a0,a0,16
     bb4:	b6f594e3          	bne	a1,a5,71c <_nettle_aes_decrypt.part.0+0x70>
     bb8:	03c12403          	lw	s0,60(sp)
     bbc:	03812483          	lw	s1,56(sp)
     bc0:	03412903          	lw	s2,52(sp)
     bc4:	03012983          	lw	s3,48(sp)
     bc8:	02c12a03          	lw	s4,44(sp)
     bcc:	02812a83          	lw	s5,40(sp)
     bd0:	02412b03          	lw	s6,36(sp)
     bd4:	02012b83          	lw	s7,32(sp)
     bd8:	01c12c03          	lw	s8,28(sp)
     bdc:	01812c83          	lw	s9,24(sp)
     be0:	01412d03          	lw	s10,20(sp)
     be4:	01012d83          	lw	s11,16(sp)
     be8:	04010113          	addi	sp,sp,64
     bec:	00008067          	ret
     bf0:	01c00c13          	li	s8,28
     bf4:	01800c93          	li	s9,24
     bf8:	01400d13          	li	s10,20
     bfc:	01000d93          	li	s11,16
     c00:	dc9ff06f          	j	9c8 <_nettle_aes_decrypt.part.0+0x31c>
     c04:	00008067          	ret

00000c08 <_aes_set_key>:
     c08:	fd010113          	addi	sp,sp,-48
     c0c:	02112623          	sw	ra,44(sp)
     c10:	02812423          	sw	s0,40(sp)
     c14:	02912223          	sw	s1,36(sp)
     c18:	03212023          	sw	s2,32(sp)
     c1c:	01312e23          	sw	s3,28(sp)
     c20:	01412c23          	sw	s4,24(sp)
     c24:	01512a23          	sw	s5,20(sp)
     c28:	01612823          	sw	s6,16(sp)
     c2c:	01712623          	sw	s7,12(sp)
     c30:	01812423          	sw	s8,8(sp)
     c34:	1a058e63          	beqz	a1,df0 <_aes_set_key+0x1e8>
     c38:	00150513          	addi	a0,a0,1
     c3c:	00259913          	slli	s2,a1,0x2
     c40:	00251413          	slli	s0,a0,0x2
     c44:	00058b13          	mv	s6,a1
     c48:	00060513          	mv	a0,a2
     c4c:	012688b3          	add	a7,a3,s2
     c50:	0036c783          	lbu	a5,3(a3)
     c54:	0026c583          	lbu	a1,2(a3)
     c58:	0006c803          	lbu	a6,0(a3)
     c5c:	0016c703          	lbu	a4,1(a3)
     c60:	01879793          	slli	a5,a5,0x18
     c64:	01059593          	slli	a1,a1,0x10
     c68:	00b7e7b3          	or	a5,a5,a1
     c6c:	0107e7b3          	or	a5,a5,a6
     c70:	00871713          	slli	a4,a4,0x8
     c74:	00e7e7b3          	or	a5,a5,a4
     c78:	00f52023          	sw	a5,0(a0)
     c7c:	00468693          	addi	a3,a3,4
     c80:	00450513          	addi	a0,a0,4
     c84:	fcd896e3          	bne	a7,a3,c50 <_aes_set_key+0x48>
     c88:	128b7c63          	bgeu	s6,s0,dc0 <_aes_set_key+0x1b8>
     c8c:	000114b7          	lui	s1,0x11
     c90:	00012c37          	lui	s8,0x12
     c94:	01260ab3          	add	s5,a2,s2
     c98:	000b0b93          	mv	s7,s6
     c9c:	41200933          	neg	s2,s2
     ca0:	bcc48493          	addi	s1,s1,-1076 # 10bcc <rcon.5>
     ca4:	00600993          	li	s3,6
     ca8:	00400a13          	li	s4,4
     cac:	13cc0c13          	addi	s8,s8,316 # 1213c <_aes_encrypt_table>
     cb0:	0880006f          	j	d38 <_aes_set_key+0x130>
     cb4:	0087d713          	srli	a4,a5,0x8
     cb8:	01879793          	slli	a5,a5,0x18
     cbc:	00e7e7b3          	or	a5,a5,a4
     cc0:	0187d713          	srli	a4,a5,0x18
     cc4:	0087d693          	srli	a3,a5,0x8
     cc8:	0ff7f613          	zext.b	a2,a5
     ccc:	00ec0733          	add	a4,s8,a4
     cd0:	0ff6f693          	zext.b	a3,a3
     cd4:	0107d793          	srli	a5,a5,0x10
     cd8:	00cc0633          	add	a2,s8,a2
     cdc:	00dc06b3          	add	a3,s8,a3
     ce0:	00074703          	lbu	a4,0(a4)
     ce4:	0ff7f793          	zext.b	a5,a5
     ce8:	00064583          	lbu	a1,0(a2)
     cec:	00fc07b3          	add	a5,s8,a5
     cf0:	0006c603          	lbu	a2,0(a3)
     cf4:	0007c683          	lbu	a3,0(a5)
     cf8:	01871713          	slli	a4,a4,0x18
     cfc:	0004c783          	lbu	a5,0(s1)
     d00:	00b76733          	or	a4,a4,a1
     d04:	00861613          	slli	a2,a2,0x8
     d08:	00c76733          	or	a4,a4,a2
     d0c:	01069693          	slli	a3,a3,0x10
     d10:	00d76733          	or	a4,a4,a3
     d14:	00f747b3          	xor	a5,a4,a5
     d18:	00148493          	addi	s1,s1,1
     d1c:	012a8733          	add	a4,s5,s2
     d20:	00072703          	lw	a4,0(a4)
     d24:	004a8a93          	addi	s5,s5,4
     d28:	001b8b93          	addi	s7,s7,1
     d2c:	00f747b3          	xor	a5,a4,a5
     d30:	fefaae23          	sw	a5,-4(s5)
     d34:	09740663          	beq	s0,s7,dc0 <_aes_set_key+0x1b8>
     d38:	000b0593          	mv	a1,s6
     d3c:	000b8513          	mv	a0,s7
     d40:	6f4000ef          	jal	ra,1434 <__umodsi3>
     d44:	ffcaa783          	lw	a5,-4(s5)
     d48:	f60506e3          	beqz	a0,cb4 <_aes_set_key+0xac>
     d4c:	fd69f8e3          	bgeu	s3,s6,d1c <_aes_set_key+0x114>
     d50:	fd4516e3          	bne	a0,s4,d1c <_aes_set_key+0x114>
     d54:	0187d713          	srli	a4,a5,0x18
     d58:	0087d613          	srli	a2,a5,0x8
     d5c:	0107d693          	srli	a3,a5,0x10
     d60:	00ec0733          	add	a4,s8,a4
     d64:	0ff7f793          	zext.b	a5,a5
     d68:	0ff67613          	zext.b	a2,a2
     d6c:	0ff6f693          	zext.b	a3,a3
     d70:	00fc07b3          	add	a5,s8,a5
     d74:	00074703          	lbu	a4,0(a4)
     d78:	00cc0633          	add	a2,s8,a2
     d7c:	0007c583          	lbu	a1,0(a5)
     d80:	00064603          	lbu	a2,0(a2)
     d84:	00dc07b3          	add	a5,s8,a3
     d88:	0007c783          	lbu	a5,0(a5)
     d8c:	01871713          	slli	a4,a4,0x18
     d90:	00b76733          	or	a4,a4,a1
     d94:	00861693          	slli	a3,a2,0x8
     d98:	00d76733          	or	a4,a4,a3
     d9c:	01079793          	slli	a5,a5,0x10
     da0:	00e7e7b3          	or	a5,a5,a4
     da4:	012a8733          	add	a4,s5,s2
     da8:	00072703          	lw	a4,0(a4)
     dac:	004a8a93          	addi	s5,s5,4
     db0:	001b8b93          	addi	s7,s7,1
     db4:	00f747b3          	xor	a5,a4,a5
     db8:	fefaae23          	sw	a5,-4(s5)
     dbc:	f7741ee3          	bne	s0,s7,d38 <_aes_set_key+0x130>
     dc0:	02c12083          	lw	ra,44(sp)
     dc4:	02812403          	lw	s0,40(sp)
     dc8:	02412483          	lw	s1,36(sp)
     dcc:	02012903          	lw	s2,32(sp)
     dd0:	01c12983          	lw	s3,28(sp)
     dd4:	01812a03          	lw	s4,24(sp)
     dd8:	01412a83          	lw	s5,20(sp)
     ddc:	01012b03          	lw	s6,16(sp)
     de0:	00c12b83          	lw	s7,12(sp)
     de4:	00812c03          	lw	s8,8(sp)
     de8:	03010113          	addi	sp,sp,48
     dec:	00008067          	ret
     df0:	000136b7          	lui	a3,0x13
     df4:	00011637          	lui	a2,0x11
     df8:	00013537          	lui	a0,0x13
     dfc:	5cc68693          	addi	a3,a3,1484 # 135cc <__clz_tab+0x100>
     e00:	bd860613          	addi	a2,a2,-1064 # 10bd8 <__func__.6>
     e04:	2dd00593          	li	a1,733
     e08:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
     e0c:	68c000ef          	jal	ra,1498 <__assert_func>

00000e10 <aes_set_encrypt_key>:
     e10:	ff010113          	addi	sp,sp,-16
     e14:	00112623          	sw	ra,12(sp)
     e18:	00f00713          	li	a4,15
     e1c:	0ab77063          	bgeu	a4,a1,ebc <aes_set_encrypt_key+0xac>
     e20:	02000713          	li	a4,32
     e24:	06b76c63          	bltu	a4,a1,e9c <aes_set_encrypt_key+0x8c>
     e28:	00050793          	mv	a5,a0
     e2c:	00060693          	mv	a3,a2
     e30:	04e58663          	beq	a1,a4,e7c <aes_set_encrypt_key+0x6c>
     e34:	01700713          	li	a4,23
     e38:	02b76263          	bltu	a4,a1,e5c <aes_set_encrypt_key+0x4c>
     e3c:	00a00513          	li	a0,10
     e40:	00400593          	li	a1,4
     e44:	00a7a023          	sw	a0,0(a5)
     e48:	00478613          	addi	a2,a5,4
     e4c:	dbdff0ef          	jal	ra,c08 <_aes_set_key>
     e50:	00c12083          	lw	ra,12(sp)
     e54:	01010113          	addi	sp,sp,16
     e58:	00008067          	ret
     e5c:	00c00513          	li	a0,12
     e60:	00600593          	li	a1,6
     e64:	00a7a023          	sw	a0,0(a5)
     e68:	00478613          	addi	a2,a5,4
     e6c:	d9dff0ef          	jal	ra,c08 <_aes_set_key>
     e70:	00c12083          	lw	ra,12(sp)
     e74:	01010113          	addi	sp,sp,16
     e78:	00008067          	ret
     e7c:	00e00513          	li	a0,14
     e80:	00800593          	li	a1,8
     e84:	00a7a023          	sw	a0,0(a5)
     e88:	00478613          	addi	a2,a5,4
     e8c:	d7dff0ef          	jal	ra,c08 <_aes_set_key>
     e90:	00c12083          	lw	ra,12(sp)
     e94:	01010113          	addi	sp,sp,16
     e98:	00008067          	ret
     e9c:	000136b7          	lui	a3,0x13
     ea0:	00011637          	lui	a2,0x11
     ea4:	00013537          	lui	a0,0x13
     ea8:	61868693          	addi	a3,a3,1560 # 13618 <__clz_tab+0x14c>
     eac:	be860613          	addi	a2,a2,-1048 # 10be8 <__func__.4>
     eb0:	2f900593          	li	a1,761
     eb4:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
     eb8:	5e0000ef          	jal	ra,1498 <__assert_func>
     ebc:	000136b7          	lui	a3,0x13
     ec0:	00011637          	lui	a2,0x11
     ec4:	00013537          	lui	a0,0x13
     ec8:	5fc68693          	addi	a3,a3,1532 # 135fc <__clz_tab+0x130>
     ecc:	be860613          	addi	a2,a2,-1048 # 10be8 <__func__.4>
     ed0:	2f800593          	li	a1,760
     ed4:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
     ed8:	5c0000ef          	jal	ra,1498 <__assert_func>

00000edc <_nettle_aes_invert>:
     edc:	00251e93          	slli	t4,a0,0x2
     ee0:	04b60863          	beq	a2,a1,f30 <_nettle_aes_invert+0x54>
     ee4:	00451793          	slli	a5,a0,0x4
     ee8:	00f60633          	add	a2,a2,a5
     eec:	00058813          	mv	a6,a1
     ef0:	ffcefe13          	andi	t3,t4,-4
     ef4:	00000313          	li	t1,0
     ef8:	01000893          	li	a7,16
     efc:	00000793          	li	a5,0
     f00:	00f60733          	add	a4,a2,a5
     f04:	00072683          	lw	a3,0(a4)
     f08:	00f80733          	add	a4,a6,a5
     f0c:	00478793          	addi	a5,a5,4
     f10:	00d72023          	sw	a3,0(a4)
     f14:	ff1796e3          	bne	a5,a7,f00 <_nettle_aes_invert+0x24>
     f18:	00430793          	addi	a5,t1,4
     f1c:	ff060613          	addi	a2,a2,-16
     f20:	01080813          	addi	a6,a6,16
     f24:	066e0063          	beq	t3,t1,f84 <_nettle_aes_invert+0xa8>
     f28:	00078313          	mv	t1,a5
     f2c:	fd1ff06f          	j	efc <_nettle_aes_invert+0x20>
     f30:	0e0e8863          	beqz	t4,1020 <_nettle_aes_invert+0x144>
     f34:	00351e13          	slli	t3,a0,0x3
     f38:	00be0e33          	add	t3,t3,a1
     f3c:	001e1e13          	slli	t3,t3,0x1
     f40:	01058693          	addi	a3,a1,16
     f44:	000e8313          	mv	t1,t4
     f48:	00000893          	li	a7,0
     f4c:	010e0e13          	addi	t3,t3,16
     f50:	ff068793          	addi	a5,a3,-16
     f54:	40de0733          	sub	a4,t3,a3
     f58:	00072803          	lw	a6,0(a4)
     f5c:	0007a603          	lw	a2,0(a5)
     f60:	00478793          	addi	a5,a5,4
     f64:	00470713          	addi	a4,a4,4
     f68:	ff07ae23          	sw	a6,-4(a5)
     f6c:	fec72e23          	sw	a2,-4(a4)
     f70:	fef694e3          	bne	a3,a5,f58 <_nettle_aes_invert+0x7c>
     f74:	00488893          	addi	a7,a7,4
     f78:	ffc30313          	addi	t1,t1,-4
     f7c:	01068693          	addi	a3,a3,16
     f80:	fc68e8e3          	bltu	a7,t1,f50 <_nettle_aes_invert+0x74>
     f84:	00400793          	li	a5,4
     f88:	09d7fe63          	bgeu	a5,t4,1024 <_nettle_aes_invert+0x148>
     f8c:	00451513          	slli	a0,a0,0x4
     f90:	000118b7          	lui	a7,0x11
     f94:	01058813          	addi	a6,a1,16
     f98:	bcc88893          	addi	a7,a7,-1076 # 10bcc <rcon.5>
     f9c:	00a585b3          	add	a1,a1,a0
     fa0:	00082783          	lw	a5,0(a6)
     fa4:	00480813          	addi	a6,a6,4
     fa8:	0187d613          	srli	a2,a5,0x18
     fac:	0067d693          	srli	a3,a5,0x6
     fb0:	00261613          	slli	a2,a2,0x2
     fb4:	00c88633          	add	a2,a7,a2
     fb8:	0ff7f713          	zext.b	a4,a5
     fbc:	3fc6f693          	andi	a3,a3,1020
     fc0:	00e7d793          	srli	a5,a5,0xe
     fc4:	03062503          	lw	a0,48(a2)
     fc8:	00d886b3          	add	a3,a7,a3
     fcc:	00271713          	slli	a4,a4,0x2
     fd0:	3fc7f793          	andi	a5,a5,1020
     fd4:	0306a603          	lw	a2,48(a3)
     fd8:	00e88733          	add	a4,a7,a4
     fdc:	00f887b3          	add	a5,a7,a5
     fe0:	0307a683          	lw	a3,48(a5)
     fe4:	03072303          	lw	t1,48(a4)
     fe8:	00855793          	srli	a5,a0,0x8
     fec:	01851513          	slli	a0,a0,0x18
     ff0:	00861713          	slli	a4,a2,0x8
     ff4:	00a7e7b3          	or	a5,a5,a0
     ff8:	01865613          	srli	a2,a2,0x18
     ffc:	00c76633          	or	a2,a4,a2
    1000:	0067c7b3          	xor	a5,a5,t1
    1004:	01069713          	slli	a4,a3,0x10
    1008:	0106d693          	srli	a3,a3,0x10
    100c:	00c7c7b3          	xor	a5,a5,a2
    1010:	00d76733          	or	a4,a4,a3
    1014:	00f747b3          	xor	a5,a4,a5
    1018:	fef82e23          	sw	a5,-4(a6)
    101c:	f90592e3          	bne	a1,a6,fa0 <_nettle_aes_invert+0xc4>
    1020:	00008067          	ret
    1024:	00008067          	ret

00001028 <benchmark_body>:
    1028:	14a05263          	blez	a0,116c <benchmark_body+0x144>
    102c:	fc010113          	addi	sp,sp,-64
    1030:	02912a23          	sw	s1,52(sp)
    1034:	000134b7          	lui	s1,0x13
    1038:	03412423          	sw	s4,40(sp)
    103c:	03512223          	sw	s5,36(sp)
    1040:	01812c23          	sw	s8,24(sp)
    1044:	01912a23          	sw	s9,20(sp)
    1048:	7b048493          	addi	s1,s1,1968 # 137b0 <encctx>
    104c:	00013ab7          	lui	s5,0x13
    1050:	00010cb7          	lui	s9,0x10
    1054:	00014a37          	lui	s4,0x14
    1058:	00014c37          	lui	s8,0x14
    105c:	02812c23          	sw	s0,56(sp)
    1060:	03212823          	sw	s2,48(sp)
    1064:	03312623          	sw	s3,44(sp)
    1068:	03612023          	sw	s6,32(sp)
    106c:	01712e23          	sw	s7,28(sp)
    1070:	01a12823          	sw	s10,16(sp)
    1074:	01b12623          	sw	s11,12(sp)
    1078:	02112e23          	sw	ra,60(sp)
    107c:	00050b93          	mv	s7,a0
    1080:	00000993          	li	s3,0
    1084:	00010b37          	lui	s6,0x10
    1088:	7b4a8a93          	addi	s5,s5,1972 # 137b4 <encctx+0x4>
    108c:	020c8c93          	addi	s9,s9,32 # 10020 <plaintext>
    1090:	8a4a0a13          	addi	s4,s4,-1884 # 138a4 <encrypted>
    1094:	00012d37          	lui	s10,0x12
    1098:	a98c0c13          	addi	s8,s8,-1384 # 13a98 <decrypted>
    109c:	00011db7          	lui	s11,0x11
    10a0:	00e00913          	li	s2,14
    10a4:	1f848413          	addi	s0,s1,504
    10a8:	000b0693          	mv	a3,s6
    10ac:	000a8613          	mv	a2,s5
    10b0:	00800593          	li	a1,8
    10b4:	00e00513          	li	a0,14
    10b8:	0124a023          	sw	s2,0(s1)
    10bc:	b4dff0ef          	jal	ra,c08 <_aes_set_key>
    10c0:	000c8793          	mv	a5,s9
    10c4:	000a0713          	mv	a4,s4
    10c8:	10000693          	li	a3,256
    10cc:	13cd0613          	addi	a2,s10,316 # 1213c <_aes_encrypt_table>
    10d0:	000a8593          	mv	a1,s5
    10d4:	00e00513          	li	a0,14
    10d8:	878ff0ef          	jal	ra,150 <_nettle_aes_encrypt.part.0>
    10dc:	000b0693          	mv	a3,s6
    10e0:	00e00513          	li	a0,14
    10e4:	00040613          	mv	a2,s0
    10e8:	00800593          	li	a1,8
    10ec:	1f24aa23          	sw	s2,500(s1)
    10f0:	b19ff0ef          	jal	ra,c08 <_aes_set_key>
    10f4:	00040613          	mv	a2,s0
    10f8:	00040593          	mv	a1,s0
    10fc:	00e00513          	li	a0,14
    1100:	dddff0ef          	jal	ra,edc <_nettle_aes_invert>
    1104:	00198993          	addi	s3,s3,1
    1108:	000a0793          	mv	a5,s4
    110c:	000c0713          	mv	a4,s8
    1110:	10000693          	li	a3,256
    1114:	03cd8613          	addi	a2,s11,60 # 1103c <_aes_decrypt_table>
    1118:	00040593          	mv	a1,s0
    111c:	00e00513          	li	a0,14
    1120:	1f24aa23          	sw	s2,500(s1)
    1124:	d88ff0ef          	jal	ra,6ac <_nettle_aes_decrypt.part.0>
    1128:	f93b90e3          	bne	s7,s3,10a8 <benchmark_body+0x80>
    112c:	03c12083          	lw	ra,60(sp)
    1130:	03812403          	lw	s0,56(sp)
    1134:	03412483          	lw	s1,52(sp)
    1138:	03012903          	lw	s2,48(sp)
    113c:	02c12983          	lw	s3,44(sp)
    1140:	02812a03          	lw	s4,40(sp)
    1144:	02412a83          	lw	s5,36(sp)
    1148:	02012b03          	lw	s6,32(sp)
    114c:	01c12b83          	lw	s7,28(sp)
    1150:	01812c03          	lw	s8,24(sp)
    1154:	01412c83          	lw	s9,20(sp)
    1158:	01012d03          	lw	s10,16(sp)
    115c:	00c12d83          	lw	s11,12(sp)
    1160:	00000513          	li	a0,0
    1164:	04010113          	addi	sp,sp,64
    1168:	00008067          	ret
    116c:	00000513          	li	a0,0
    1170:	00008067          	ret

00001174 <aes_invert_key>:
    1174:	ff010113          	addi	sp,sp,-16
    1178:	00912223          	sw	s1,4(sp)
    117c:	0005a483          	lw	s1,0(a1)
    1180:	00812423          	sw	s0,8(sp)
    1184:	00458613          	addi	a2,a1,4
    1188:	00050413          	mv	s0,a0
    118c:	00450593          	addi	a1,a0,4
    1190:	00048513          	mv	a0,s1
    1194:	00112623          	sw	ra,12(sp)
    1198:	d45ff0ef          	jal	ra,edc <_nettle_aes_invert>
    119c:	00c12083          	lw	ra,12(sp)
    11a0:	00942023          	sw	s1,0(s0)
    11a4:	00812403          	lw	s0,8(sp)
    11a8:	00412483          	lw	s1,4(sp)
    11ac:	01010113          	addi	sp,sp,16
    11b0:	00008067          	ret

000011b4 <aes_set_decrypt_key>:
    11b4:	ff010113          	addi	sp,sp,-16
    11b8:	00812423          	sw	s0,8(sp)
    11bc:	00050413          	mv	s0,a0
    11c0:	00112623          	sw	ra,12(sp)
    11c4:	00912223          	sw	s1,4(sp)
    11c8:	c49ff0ef          	jal	ra,e10 <aes_set_encrypt_key>
    11cc:	00042483          	lw	s1,0(s0)
    11d0:	00440613          	addi	a2,s0,4
    11d4:	00060593          	mv	a1,a2
    11d8:	00048513          	mv	a0,s1
    11dc:	d01ff0ef          	jal	ra,edc <_nettle_aes_invert>
    11e0:	00c12083          	lw	ra,12(sp)
    11e4:	00942023          	sw	s1,0(s0)
    11e8:	00812403          	lw	s0,8(sp)
    11ec:	00412483          	lw	s1,4(sp)
    11f0:	01010113          	addi	sp,sp,16
    11f4:	00008067          	ret

000011f8 <_nettle_aes_encrypt>:
    11f8:	ff010113          	addi	sp,sp,-16
    11fc:	00112623          	sw	ra,12(sp)
    1200:	00f6f813          	andi	a6,a3,15
    1204:	00081a63          	bnez	a6,1218 <_nettle_aes_encrypt+0x20>
    1208:	f49fe0ef          	jal	ra,150 <_nettle_aes_encrypt.part.0>
    120c:	00c12083          	lw	ra,12(sp)
    1210:	01010113          	addi	sp,sp,16
    1214:	00008067          	ret
    1218:	000136b7          	lui	a3,0x13
    121c:	00011637          	lui	a2,0x11
    1220:	00013537          	lui	a0,0x13
    1224:	63468693          	addi	a3,a3,1588 # 13634 <__clz_tab+0x168>
    1228:	ffc60613          	addi	a2,a2,-4 # 10ffc <__func__.3>
    122c:	3a400593          	li	a1,932
    1230:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
    1234:	264000ef          	jal	ra,1498 <__assert_func>

00001238 <_nettle_aes_decrypt>:
    1238:	ff010113          	addi	sp,sp,-16
    123c:	00112623          	sw	ra,12(sp)
    1240:	00f6f813          	andi	a6,a3,15
    1244:	00081a63          	bnez	a6,1258 <_nettle_aes_decrypt+0x20>
    1248:	c64ff0ef          	jal	ra,6ac <_nettle_aes_decrypt.part.0>
    124c:	00c12083          	lw	ra,12(sp)
    1250:	01010113          	addi	sp,sp,16
    1254:	00008067          	ret
    1258:	000136b7          	lui	a3,0x13
    125c:	00011637          	lui	a2,0x11
    1260:	00013537          	lui	a0,0x13
    1264:	63468693          	addi	a3,a3,1588 # 13634 <__clz_tab+0x168>
    1268:	01060613          	addi	a2,a2,16 # 11010 <__func__.2>
    126c:	3d800593          	li	a1,984
    1270:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
    1274:	224000ef          	jal	ra,1498 <__assert_func>

00001278 <aes_encrypt>:
    1278:	ff010113          	addi	sp,sp,-16
    127c:	00112623          	sw	ra,12(sp)
    1280:	00f5f893          	andi	a7,a1,15
    1284:	02089a63          	bnez	a7,12b8 <aes_encrypt+0x40>
    1288:	00050813          	mv	a6,a0
    128c:	00052503          	lw	a0,0(a0)
    1290:	00060713          	mv	a4,a2
    1294:	00012637          	lui	a2,0x12
    1298:	00068793          	mv	a5,a3
    129c:	13c60613          	addi	a2,a2,316 # 1213c <_aes_encrypt_table>
    12a0:	00058693          	mv	a3,a1
    12a4:	00480593          	addi	a1,a6,4
    12a8:	ea9fe0ef          	jal	ra,150 <_nettle_aes_encrypt.part.0>
    12ac:	00c12083          	lw	ra,12(sp)
    12b0:	01010113          	addi	sp,sp,16
    12b4:	00008067          	ret
    12b8:	000136b7          	lui	a3,0x13
    12bc:	00011637          	lui	a2,0x11
    12c0:	00013537          	lui	a0,0x13
    12c4:	64868693          	addi	a3,a3,1608 # 13648 <__clz_tab+0x17c>
    12c8:	02460613          	addi	a2,a2,36 # 11024 <__func__.1>
    12cc:	40b00593          	li	a1,1035
    12d0:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
    12d4:	1c4000ef          	jal	ra,1498 <__assert_func>

000012d8 <aes_decrypt>:
    12d8:	ff010113          	addi	sp,sp,-16
    12dc:	00112623          	sw	ra,12(sp)
    12e0:	00f5f893          	andi	a7,a1,15
    12e4:	02089a63          	bnez	a7,1318 <aes_decrypt+0x40>
    12e8:	00050813          	mv	a6,a0
    12ec:	00052503          	lw	a0,0(a0)
    12f0:	00060713          	mv	a4,a2
    12f4:	00011637          	lui	a2,0x11
    12f8:	00068793          	mv	a5,a3
    12fc:	03c60613          	addi	a2,a2,60 # 1103c <_aes_decrypt_table>
    1300:	00058693          	mv	a3,a1
    1304:	00480593          	addi	a1,a6,4
    1308:	ba4ff0ef          	jal	ra,6ac <_nettle_aes_decrypt.part.0>
    130c:	00c12083          	lw	ra,12(sp)
    1310:	01010113          	addi	sp,sp,16
    1314:	00008067          	ret
    1318:	000136b7          	lui	a3,0x13
    131c:	00011637          	lui	a2,0x11
    1320:	00013537          	lui	a0,0x13
    1324:	64868693          	addi	a3,a3,1608 # 13648 <__clz_tab+0x17c>
    1328:	03060613          	addi	a2,a2,48 # 11030 <__func__.0>
    132c:	41700593          	li	a1,1047
    1330:	5d450513          	addi	a0,a0,1492 # 135d4 <__clz_tab+0x108>
    1334:	164000ef          	jal	ra,1498 <__assert_func>

00001338 <verify_benchmark>:
    1338:	00013e37          	lui	t3,0x13
    133c:	00010637          	lui	a2,0x10
    1340:	7b0e0e13          	addi	t3,t3,1968 # 137b0 <encctx>
    1344:	00060613          	mv	a2,a2
    1348:	0f4e0693          	addi	a3,t3,244
    134c:	12060813          	addi	a6,a2,288 # 10120 <expected>
    1350:	2e8e0593          	addi	a1,t3,744
    1354:	02060613          	addi	a2,a2,32
    1358:	1f4e0e13          	addi	t3,t3,500
    135c:	00100513          	li	a0,1
    1360:	0006c703          	lbu	a4,0(a3)
    1364:	00084303          	lbu	t1,0(a6)
    1368:	00064783          	lbu	a5,0(a2)
    136c:	0005c883          	lbu	a7,0(a1)
    1370:	40670733          	sub	a4,a4,t1
    1374:	00173713          	seqz	a4,a4
    1378:	411787b3          	sub	a5,a5,a7
    137c:	40e00733          	neg	a4,a4
    1380:	0017b793          	seqz	a5,a5
    1384:	00e57533          	and	a0,a0,a4
    1388:	40f007b3          	neg	a5,a5
    138c:	00168693          	addi	a3,a3,1
    1390:	00f57533          	and	a0,a0,a5
    1394:	00180813          	addi	a6,a6,1
    1398:	00160613          	addi	a2,a2,1
    139c:	00158593          	addi	a1,a1,1
    13a0:	fdc690e3          	bne	a3,t3,1360 <verify_benchmark+0x28>
    13a4:	00008067          	ret

000013a8 <initialise_benchmark>:
    13a8:	00008067          	ret

000013ac <warm_caches>:
    13ac:	ff010113          	addi	sp,sp,-16
    13b0:	00112623          	sw	ra,12(sp)
    13b4:	c75ff0ef          	jal	ra,1028 <benchmark_body>
    13b8:	00c12083          	lw	ra,12(sp)
    13bc:	01010113          	addi	sp,sp,16
    13c0:	00008067          	ret

000013c4 <benchmark>:
    13c4:	00002537          	lui	a0,0x2
    13c8:	ff010113          	addi	sp,sp,-16
    13cc:	9c850513          	addi	a0,a0,-1592 # 19c8 <_vfiprintf_r+0x354>
    13d0:	00112623          	sw	ra,12(sp)
    13d4:	c55ff0ef          	jal	ra,1028 <benchmark_body>
    13d8:	00c12083          	lw	ra,12(sp)
    13dc:	01010113          	addi	sp,sp,16
    13e0:	00008067          	ret

000013e4 <__divsi3>:
    13e4:	06054063          	bltz	a0,1444 <__umodsi3+0x10>
    13e8:	0605c663          	bltz	a1,1454 <__umodsi3+0x20>

000013ec <__udivsi3>:
    13ec:	00058613          	mv	a2,a1
    13f0:	00050593          	mv	a1,a0
    13f4:	fff00513          	li	a0,-1
    13f8:	02060c63          	beqz	a2,1430 <__udivsi3+0x44>
    13fc:	00100693          	li	a3,1
    1400:	00b67a63          	bgeu	a2,a1,1414 <__udivsi3+0x28>
    1404:	00c05863          	blez	a2,1414 <__udivsi3+0x28>
    1408:	00161613          	slli	a2,a2,0x1
    140c:	00169693          	slli	a3,a3,0x1
    1410:	feb66ae3          	bltu	a2,a1,1404 <__udivsi3+0x18>
    1414:	00000513          	li	a0,0
    1418:	00c5e663          	bltu	a1,a2,1424 <__udivsi3+0x38>
    141c:	40c585b3          	sub	a1,a1,a2
    1420:	00d56533          	or	a0,a0,a3
    1424:	0016d693          	srli	a3,a3,0x1
    1428:	00165613          	srli	a2,a2,0x1
    142c:	fe0696e3          	bnez	a3,1418 <__udivsi3+0x2c>
    1430:	00008067          	ret

00001434 <__umodsi3>:
    1434:	00008293          	mv	t0,ra
    1438:	fb5ff0ef          	jal	ra,13ec <__udivsi3>
    143c:	00058513          	mv	a0,a1
    1440:	00028067          	jr	t0
    1444:	40a00533          	neg	a0,a0
    1448:	00b04863          	bgtz	a1,1458 <__umodsi3+0x24>
    144c:	40b005b3          	neg	a1,a1
    1450:	f9dff06f          	j	13ec <__udivsi3>
    1454:	40b005b3          	neg	a1,a1
    1458:	00008293          	mv	t0,ra
    145c:	f91ff0ef          	jal	ra,13ec <__udivsi3>
    1460:	40a00533          	neg	a0,a0
    1464:	00028067          	jr	t0

00001468 <__modsi3>:
    1468:	00008293          	mv	t0,ra
    146c:	0005ca63          	bltz	a1,1480 <__modsi3+0x18>
    1470:	00054c63          	bltz	a0,1488 <__modsi3+0x20>
    1474:	f79ff0ef          	jal	ra,13ec <__udivsi3>
    1478:	00058513          	mv	a0,a1
    147c:	00028067          	jr	t0
    1480:	40b005b3          	neg	a1,a1
    1484:	fe0558e3          	bgez	a0,1474 <__modsi3+0xc>
    1488:	40a00533          	neg	a0,a0
    148c:	f61ff0ef          	jal	ra,13ec <__udivsi3>
    1490:	40b00533          	neg	a0,a1
    1494:	00028067          	jr	t0

00001498 <__assert_func>:
    1498:	ff010113          	addi	sp,sp,-16
    149c:	00112623          	sw	ra,12(sp)
    14a0:	00050893          	mv	a7,a0
    14a4:	00058713          	mv	a4,a1
    14a8:	00060813          	mv	a6,a2
    14ac:	00068613          	mv	a2,a3
    14b0:	000117b7          	lui	a5,0x11
    14b4:	bbc7a783          	lw	a5,-1092(a5) # 10bbc <_impure_ptr>
    14b8:	00c7a503          	lw	a0,12(a5)
    14bc:	02080063          	beqz	a6,14dc <__assert_func+0x44>
    14c0:	000137b7          	lui	a5,0x13
    14c4:	66478793          	addi	a5,a5,1636 # 13664 <__clz_tab+0x198>
    14c8:	00088693          	mv	a3,a7
    14cc:	000135b7          	lui	a1,0x13
    14d0:	67458593          	addi	a1,a1,1652 # 13674 <__clz_tab+0x1a8>
    14d4:	060000ef          	jal	ra,1534 <fiprintf>
    14d8:	3a0010ef          	jal	ra,2878 <abort>
    14dc:	00013837          	lui	a6,0x13
    14e0:	67080793          	addi	a5,a6,1648 # 13670 <__clz_tab+0x1a4>
    14e4:	67080813          	addi	a6,a6,1648
    14e8:	fe1ff06f          	j	14c8 <__assert_func+0x30>

000014ec <__assert>:
    14ec:	ff010113          	addi	sp,sp,-16
    14f0:	00112623          	sw	ra,12(sp)
    14f4:	00060693          	mv	a3,a2
    14f8:	00000613          	li	a2,0
    14fc:	f9dff0ef          	jal	ra,1498 <__assert_func>

00001500 <_fiprintf_r>:
    1500:	fc010113          	addi	sp,sp,-64
    1504:	00112e23          	sw	ra,28(sp)
    1508:	02d12623          	sw	a3,44(sp)
    150c:	02e12823          	sw	a4,48(sp)
    1510:	02f12a23          	sw	a5,52(sp)
    1514:	03012c23          	sw	a6,56(sp)
    1518:	03112e23          	sw	a7,60(sp)
    151c:	02c10693          	addi	a3,sp,44
    1520:	00d12623          	sw	a3,12(sp)
    1524:	150000ef          	jal	ra,1674 <_vfiprintf_r>
    1528:	01c12083          	lw	ra,28(sp)
    152c:	04010113          	addi	sp,sp,64
    1530:	00008067          	ret

00001534 <fiprintf>:
    1534:	fc010113          	addi	sp,sp,-64
    1538:	00112e23          	sw	ra,28(sp)
    153c:	02c12423          	sw	a2,40(sp)
    1540:	02d12623          	sw	a3,44(sp)
    1544:	02e12823          	sw	a4,48(sp)
    1548:	02f12a23          	sw	a5,52(sp)
    154c:	03012c23          	sw	a6,56(sp)
    1550:	03112e23          	sw	a7,60(sp)
    1554:	02810693          	addi	a3,sp,40
    1558:	00d12623          	sw	a3,12(sp)
    155c:	00058613          	mv	a2,a1
    1560:	00050593          	mv	a1,a0
    1564:	000117b7          	lui	a5,0x11
    1568:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    156c:	108000ef          	jal	ra,1674 <_vfiprintf_r>
    1570:	01c12083          	lw	ra,28(sp)
    1574:	04010113          	addi	sp,sp,64
    1578:	00008067          	ret

0000157c <__sprint_r>:
    157c:	fd010113          	addi	sp,sp,-48
    1580:	02112623          	sw	ra,44(sp)
    1584:	02812423          	sw	s0,40(sp)
    1588:	02912223          	sw	s1,36(sp)
    158c:	03212023          	sw	s2,32(sp)
    1590:	01312e23          	sw	s3,28(sp)
    1594:	01412c23          	sw	s4,24(sp)
    1598:	01512a23          	sw	s5,20(sp)
    159c:	01612823          	sw	s6,16(sp)
    15a0:	01712623          	sw	s7,12(sp)
    15a4:	01812423          	sw	s8,8(sp)
    15a8:	00060b13          	mv	s6,a2
    15ac:	00862783          	lw	a5,8(a2)
    15b0:	0a078e63          	beqz	a5,166c <__sprint_r+0xf0>
    15b4:	00050993          	mv	s3,a0
    15b8:	00058913          	mv	s2,a1
    15bc:	0645a703          	lw	a4,100(a1)
    15c0:	000027b7          	lui	a5,0x2
    15c4:	00e7f7b3          	and	a5,a5,a4
    15c8:	06078063          	beqz	a5,1628 <__sprint_r+0xac>
    15cc:	00062b83          	lw	s7,0(a2)
    15d0:	fff00a93          	li	s5,-1
    15d4:	000ba403          	lw	s0,0(s7)
    15d8:	004bac03          	lw	s8,4(s7)
    15dc:	002c5a13          	srli	s4,s8,0x2
    15e0:	03405463          	blez	s4,1608 <__sprint_r+0x8c>
    15e4:	00000493          	li	s1,0
    15e8:	00090613          	mv	a2,s2
    15ec:	00042583          	lw	a1,0(s0)
    15f0:	00098513          	mv	a0,s3
    15f4:	265010ef          	jal	ra,3058 <_fputwc_r>
    15f8:	03550c63          	beq	a0,s5,1630 <__sprint_r+0xb4>
    15fc:	00148493          	addi	s1,s1,1
    1600:	00440413          	addi	s0,s0,4
    1604:	fe9a12e3          	bne	s4,s1,15e8 <__sprint_r+0x6c>
    1608:	ffcc7c13          	andi	s8,s8,-4
    160c:	008b2783          	lw	a5,8(s6) # 10008 <key+0x8>
    1610:	418787b3          	sub	a5,a5,s8
    1614:	00fb2423          	sw	a5,8(s6)
    1618:	008b8b93          	addi	s7,s7,8
    161c:	fa079ce3          	bnez	a5,15d4 <__sprint_r+0x58>
    1620:	00000513          	li	a0,0
    1624:	0100006f          	j	1634 <__sprint_r+0xb8>
    1628:	70d010ef          	jal	ra,3534 <__sfvwrite_r>
    162c:	0080006f          	j	1634 <__sprint_r+0xb8>
    1630:	fff00513          	li	a0,-1
    1634:	000b2423          	sw	zero,8(s6)
    1638:	000b2223          	sw	zero,4(s6)
    163c:	02c12083          	lw	ra,44(sp)
    1640:	02812403          	lw	s0,40(sp)
    1644:	02412483          	lw	s1,36(sp)
    1648:	02012903          	lw	s2,32(sp)
    164c:	01c12983          	lw	s3,28(sp)
    1650:	01812a03          	lw	s4,24(sp)
    1654:	01412a83          	lw	s5,20(sp)
    1658:	01012b03          	lw	s6,16(sp)
    165c:	00c12b83          	lw	s7,12(sp)
    1660:	00812c03          	lw	s8,8(sp)
    1664:	03010113          	addi	sp,sp,48
    1668:	00008067          	ret
    166c:	00000513          	li	a0,0
    1670:	fc9ff06f          	j	1638 <__sprint_r+0xbc>

00001674 <_vfiprintf_r>:
    1674:	ed010113          	addi	sp,sp,-304
    1678:	12112623          	sw	ra,300(sp)
    167c:	12812423          	sw	s0,296(sp)
    1680:	12912223          	sw	s1,292(sp)
    1684:	13212023          	sw	s2,288(sp)
    1688:	11312e23          	sw	s3,284(sp)
    168c:	11412c23          	sw	s4,280(sp)
    1690:	11512a23          	sw	s5,276(sp)
    1694:	11612823          	sw	s6,272(sp)
    1698:	11712623          	sw	s7,268(sp)
    169c:	11812423          	sw	s8,264(sp)
    16a0:	11912223          	sw	s9,260(sp)
    16a4:	11a12023          	sw	s10,256(sp)
    16a8:	0fb12e23          	sw	s11,252(sp)
    16ac:	00a12623          	sw	a0,12(sp)
    16b0:	00b12223          	sw	a1,4(sp)
    16b4:	00060d93          	mv	s11,a2
    16b8:	00d12823          	sw	a3,16(sp)
    16bc:	00050663          	beqz	a0,16c8 <_vfiprintf_r+0x54>
    16c0:	03852783          	lw	a5,56(a0)
    16c4:	0a078c63          	beqz	a5,177c <_vfiprintf_r+0x108>
    16c8:	00412603          	lw	a2,4(sp)
    16cc:	00c61703          	lh	a4,12(a2)
    16d0:	00d75793          	srli	a5,a4,0xd
    16d4:	0017f793          	andi	a5,a5,1
    16d8:	02079263          	bnez	a5,16fc <_vfiprintf_r+0x88>
    16dc:	06462783          	lw	a5,100(a2)
    16e0:	000026b7          	lui	a3,0x2
    16e4:	00d76733          	or	a4,a4,a3
    16e8:	00e61623          	sh	a4,12(a2)
    16ec:	ffffe737          	lui	a4,0xffffe
    16f0:	fff70713          	addi	a4,a4,-1 # ffffdfff <heap_end.0+0xfffea423>
    16f4:	00e7f7b3          	and	a5,a5,a4
    16f8:	06f62223          	sw	a5,100(a2)
    16fc:	00412703          	lw	a4,4(sp)
    1700:	00c75783          	lhu	a5,12(a4)
    1704:	0087f793          	andi	a5,a5,8
    1708:	00078663          	beqz	a5,1714 <_vfiprintf_r+0xa0>
    170c:	01072783          	lw	a5,16(a4)
    1710:	00079a63          	bnez	a5,1724 <_vfiprintf_r+0xb0>
    1714:	00412583          	lw	a1,4(sp)
    1718:	00c12503          	lw	a0,12(sp)
    171c:	014010ef          	jal	ra,2730 <__swsetup_r>
    1720:	680518e3          	bnez	a0,25b0 <_vfiprintf_r+0xf3c>
    1724:	00412783          	lw	a5,4(sp)
    1728:	00c7d783          	lhu	a5,12(a5) # 200c <_vfiprintf_r+0x998>
    172c:	01a7f793          	andi	a5,a5,26
    1730:	00a00713          	li	a4,10
    1734:	04e78863          	beq	a5,a4,1784 <_vfiprintf_r+0x110>
    1738:	0a010413          	addi	s0,sp,160
    173c:	0e812023          	sw	s0,224(sp)
    1740:	0e012423          	sw	zero,232(sp)
    1744:	0e012223          	sw	zero,228(sp)
    1748:	02012023          	sw	zero,32(sp)
    174c:	02012223          	sw	zero,36(sp)
    1750:	02012623          	sw	zero,44(sp)
    1754:	02012423          	sw	zero,40(sp)
    1758:	00012423          	sw	zero,8(sp)
    175c:	000137b7          	lui	a5,0x13
    1760:	23c78793          	addi	a5,a5,572 # 1323c <_aes_encrypt_table+0x1100>
    1764:	00f12c23          	sw	a5,24(sp)
    1768:	000137b7          	lui	a5,0x13
    176c:	3a878793          	addi	a5,a5,936 # 133a8 <blanks.1>
    1770:	00f12e23          	sw	a5,28(sp)
    1774:	01078d13          	addi	s10,a5,16
    1778:	1b90006f          	j	2130 <_vfiprintf_r+0xabc>
    177c:	504010ef          	jal	ra,2c80 <__sinit>
    1780:	f49ff06f          	j	16c8 <_vfiprintf_r+0x54>
    1784:	00412783          	lw	a5,4(sp)
    1788:	00e79783          	lh	a5,14(a5)
    178c:	fa07c6e3          	bltz	a5,1738 <_vfiprintf_r+0xc4>
    1790:	01012683          	lw	a3,16(sp)
    1794:	000d8613          	mv	a2,s11
    1798:	00412583          	lw	a1,4(sp)
    179c:	00c12503          	lw	a0,12(sp)
    17a0:	6d1000ef          	jal	ra,2670 <__sbprintf>
    17a4:	00a12423          	sw	a0,8(sp)
    17a8:	5a90006f          	j	2550 <_vfiprintf_r+0xedc>
    17ac:	41b48933          	sub	s2,s1,s11
    17b0:	1fb480e3          	beq	s1,s11,2190 <_vfiprintf_r+0xb1c>
    17b4:	1a50006f          	j	2158 <_vfiprintf_r+0xae4>
    17b8:	0e010613          	addi	a2,sp,224
    17bc:	00412583          	lw	a1,4(sp)
    17c0:	00c12503          	lw	a0,12(sp)
    17c4:	db9ff0ef          	jal	ra,157c <__sprint_r>
    17c8:	56051ce3          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    17cc:	0a010413          	addi	s0,sp,160
    17d0:	1b50006f          	j	2184 <_vfiprintf_r+0xb10>
    17d4:	00c12b03          	lw	s6,12(sp)
    17d8:	000b0513          	mv	a0,s6
    17dc:	354020ef          	jal	ra,3b30 <_localeconv_r>
    17e0:	00452783          	lw	a5,4(a0)
    17e4:	02f12423          	sw	a5,40(sp)
    17e8:	00078513          	mv	a0,a5
    17ec:	671030ef          	jal	ra,565c <strlen>
    17f0:	00050a93          	mv	s5,a0
    17f4:	02a12623          	sw	a0,44(sp)
    17f8:	000b0513          	mv	a0,s6
    17fc:	334020ef          	jal	ra,3b30 <_localeconv_r>
    1800:	00852783          	lw	a5,8(a0)
    1804:	02f12223          	sw	a5,36(sp)
    1808:	040a8863          	beqz	s5,1858 <_vfiprintf_r+0x1e4>
    180c:	04078663          	beqz	a5,1858 <_vfiprintf_r+0x1e4>
    1810:	0007c783          	lbu	a5,0(a5)
    1814:	04078263          	beqz	a5,1858 <_vfiprintf_r+0x1e4>
    1818:	40096913          	ori	s2,s2,1024
    181c:	03c0006f          	j	1858 <_vfiprintf_r+0x1e4>
    1820:	0ef14783          	lbu	a5,239(sp)
    1824:	02079a63          	bnez	a5,1858 <_vfiprintf_r+0x1e4>
    1828:	02000793          	li	a5,32
    182c:	0ef107a3          	sb	a5,239(sp)
    1830:	0280006f          	j	1858 <_vfiprintf_r+0x1e4>
    1834:	00196913          	ori	s2,s2,1
    1838:	0200006f          	j	1858 <_vfiprintf_r+0x1e4>
    183c:	01012703          	lw	a4,16(sp)
    1840:	00470793          	addi	a5,a4,4
    1844:	00072c03          	lw	s8,0(a4)
    1848:	00f12823          	sw	a5,16(sp)
    184c:	000c5663          	bgez	s8,1858 <_vfiprintf_r+0x1e4>
    1850:	41800c33          	neg	s8,s8
    1854:	00496913          	ori	s2,s2,4
    1858:	000d8793          	mv	a5,s11
    185c:	00178d93          	addi	s11,a5,1
    1860:	0007c703          	lbu	a4,0(a5)
    1864:	05a00693          	li	a3,90
    1868:	00000613          	li	a2,0
    186c:	fe070793          	addi	a5,a4,-32
    1870:	14f6ece3          	bltu	a3,a5,21c8 <_vfiprintf_r+0xb54>
    1874:	00279793          	slli	a5,a5,0x2
    1878:	01812583          	lw	a1,24(sp)
    187c:	00b787b3          	add	a5,a5,a1
    1880:	0007a783          	lw	a5,0(a5)
    1884:	00078067          	jr	a5
    1888:	02b00793          	li	a5,43
    188c:	0ef107a3          	sb	a5,239(sp)
    1890:	fc9ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    1894:	001d8593          	addi	a1,s11,1
    1898:	000dc703          	lbu	a4,0(s11)
    189c:	03370e63          	beq	a4,s3,18d8 <_vfiprintf_r+0x264>
    18a0:	fd070513          	addi	a0,a4,-48
    18a4:	00060c93          	mv	s9,a2
    18a8:	02a4e263          	bltu	s1,a0,18cc <_vfiprintf_r+0x258>
    18ac:	002c9793          	slli	a5,s9,0x2
    18b0:	019787b3          	add	a5,a5,s9
    18b4:	00179793          	slli	a5,a5,0x1
    18b8:	00a78cb3          	add	s9,a5,a0
    18bc:	00158593          	addi	a1,a1,1
    18c0:	fff5c703          	lbu	a4,-1(a1)
    18c4:	fd070513          	addi	a0,a4,-48
    18c8:	fea4f2e3          	bgeu	s1,a0,18ac <_vfiprintf_r+0x238>
    18cc:	020cc863          	bltz	s9,18fc <_vfiprintf_r+0x288>
    18d0:	00058d93          	mv	s11,a1
    18d4:	f99ff06f          	j	186c <_vfiprintf_r+0x1f8>
    18d8:	01012703          	lw	a4,16(sp)
    18dc:	00470793          	addi	a5,a4,4
    18e0:	00072c83          	lw	s9,0(a4)
    18e4:	000cc863          	bltz	s9,18f4 <_vfiprintf_r+0x280>
    18e8:	00f12823          	sw	a5,16(sp)
    18ec:	00058d93          	mv	s11,a1
    18f0:	f69ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    18f4:	000a0c93          	mv	s9,s4
    18f8:	ff1ff06f          	j	18e8 <_vfiprintf_r+0x274>
    18fc:	000a0c93          	mv	s9,s4
    1900:	fd1ff06f          	j	18d0 <_vfiprintf_r+0x25c>
    1904:	08096913          	ori	s2,s2,128
    1908:	f51ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    190c:	00000c13          	li	s8,0
    1910:	002c1793          	slli	a5,s8,0x2
    1914:	018787b3          	add	a5,a5,s8
    1918:	00179793          	slli	a5,a5,0x1
    191c:	fd070713          	addi	a4,a4,-48
    1920:	00f70c33          	add	s8,a4,a5
    1924:	001d8d93          	addi	s11,s11,1
    1928:	fffdc703          	lbu	a4,-1(s11)
    192c:	fd070793          	addi	a5,a4,-48
    1930:	fef4f0e3          	bgeu	s1,a5,1910 <_vfiprintf_r+0x29c>
    1934:	f39ff06f          	j	186c <_vfiprintf_r+0x1f8>
    1938:	000dc703          	lbu	a4,0(s11)
    193c:	06800793          	li	a5,104
    1940:	00f70663          	beq	a4,a5,194c <_vfiprintf_r+0x2d8>
    1944:	04096913          	ori	s2,s2,64
    1948:	f11ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    194c:	001d8d93          	addi	s11,s11,1
    1950:	20096913          	ori	s2,s2,512
    1954:	f05ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    1958:	000dc703          	lbu	a4,0(s11)
    195c:	06c00793          	li	a5,108
    1960:	00f70663          	beq	a4,a5,196c <_vfiprintf_r+0x2f8>
    1964:	01096913          	ori	s2,s2,16
    1968:	ef1ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    196c:	001d8d93          	addi	s11,s11,1
    1970:	02096913          	ori	s2,s2,32
    1974:	ee5ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    1978:	02096913          	ori	s2,s2,32
    197c:	eddff06f          	j	1858 <_vfiprintf_r+0x1e4>
    1980:	02096913          	ori	s2,s2,32
    1984:	ed5ff06f          	j	1858 <_vfiprintf_r+0x1e4>
    1988:	01012703          	lw	a4,16(sp)
    198c:	00072783          	lw	a5,0(a4)
    1990:	02f10e23          	sb	a5,60(sp)
    1994:	0e0107a3          	sb	zero,239(sp)
    1998:	00470793          	addi	a5,a4,4
    199c:	00f12823          	sw	a5,16(sp)
    19a0:	00100a93          	li	s5,1
    19a4:	03c10493          	addi	s1,sp,60
    19a8:	fffaca13          	not	s4,s5
    19ac:	41fa5a13          	srai	s4,s4,0x1f
    19b0:	014afa33          	and	s4,s5,s4
    19b4:	00000c93          	li	s9,0
    19b8:	66c0006f          	j	2024 <_vfiprintf_r+0x9b0>
    19bc:	01096713          	ori	a4,s2,16
    19c0:	02077793          	andi	a5,a4,32
    19c4:	04078863          	beqz	a5,1a14 <_vfiprintf_r+0x3a0>
    19c8:	01012783          	lw	a5,16(sp)
    19cc:	00778793          	addi	a5,a5,7
    19d0:	ff87f793          	andi	a5,a5,-8
    19d4:	00878693          	addi	a3,a5,8
    19d8:	00d12823          	sw	a3,16(sp)
    19dc:	0007aa03          	lw	s4,0(a5)
    19e0:	0047a983          	lw	s3,4(a5)
    19e4:	00100793          	li	a5,1
    19e8:	1809d663          	bgez	s3,1b74 <_vfiprintf_r+0x500>
    19ec:	014037b3          	snez	a5,s4
    19f0:	413009b3          	neg	s3,s3
    19f4:	40f989b3          	sub	s3,s3,a5
    19f8:	41400a33          	neg	s4,s4
    19fc:	02d00793          	li	a5,45
    1a00:	0ef107a3          	sb	a5,239(sp)
    1a04:	00100793          	li	a5,1
    1a08:	16c0006f          	j	1b74 <_vfiprintf_r+0x500>
    1a0c:	00090713          	mv	a4,s2
    1a10:	fb1ff06f          	j	19c0 <_vfiprintf_r+0x34c>
    1a14:	01077793          	andi	a5,a4,16
    1a18:	00078e63          	beqz	a5,1a34 <_vfiprintf_r+0x3c0>
    1a1c:	01012783          	lw	a5,16(sp)
    1a20:	0007aa03          	lw	s4,0(a5)
    1a24:	41fa5993          	srai	s3,s4,0x1f
    1a28:	00478793          	addi	a5,a5,4
    1a2c:	00f12823          	sw	a5,16(sp)
    1a30:	fb5ff06f          	j	19e4 <_vfiprintf_r+0x370>
    1a34:	04077793          	andi	a5,a4,64
    1a38:	00078e63          	beqz	a5,1a54 <_vfiprintf_r+0x3e0>
    1a3c:	01012783          	lw	a5,16(sp)
    1a40:	00079a03          	lh	s4,0(a5)
    1a44:	41fa5993          	srai	s3,s4,0x1f
    1a48:	00478793          	addi	a5,a5,4
    1a4c:	00f12823          	sw	a5,16(sp)
    1a50:	f95ff06f          	j	19e4 <_vfiprintf_r+0x370>
    1a54:	20077793          	andi	a5,a4,512
    1a58:	00078e63          	beqz	a5,1a74 <_vfiprintf_r+0x400>
    1a5c:	01012783          	lw	a5,16(sp)
    1a60:	00078a03          	lb	s4,0(a5)
    1a64:	41fa5993          	srai	s3,s4,0x1f
    1a68:	00478793          	addi	a5,a5,4
    1a6c:	00f12823          	sw	a5,16(sp)
    1a70:	f75ff06f          	j	19e4 <_vfiprintf_r+0x370>
    1a74:	01012783          	lw	a5,16(sp)
    1a78:	0007aa03          	lw	s4,0(a5)
    1a7c:	41fa5993          	srai	s3,s4,0x1f
    1a80:	00478793          	addi	a5,a5,4
    1a84:	00f12823          	sw	a5,16(sp)
    1a88:	f5dff06f          	j	19e4 <_vfiprintf_r+0x370>
    1a8c:	02097793          	andi	a5,s2,32
    1a90:	02078463          	beqz	a5,1ab8 <_vfiprintf_r+0x444>
    1a94:	01012683          	lw	a3,16(sp)
    1a98:	0006a783          	lw	a5,0(a3) # 2000 <_vfiprintf_r+0x98c>
    1a9c:	00812703          	lw	a4,8(sp)
    1aa0:	00e7a023          	sw	a4,0(a5)
    1aa4:	41f75713          	srai	a4,a4,0x1f
    1aa8:	00e7a223          	sw	a4,4(a5)
    1aac:	00468793          	addi	a5,a3,4
    1ab0:	00f12823          	sw	a5,16(sp)
    1ab4:	67c0006f          	j	2130 <_vfiprintf_r+0xabc>
    1ab8:	01097793          	andi	a5,s2,16
    1abc:	02078063          	beqz	a5,1adc <_vfiprintf_r+0x468>
    1ac0:	01012703          	lw	a4,16(sp)
    1ac4:	00072783          	lw	a5,0(a4)
    1ac8:	00812683          	lw	a3,8(sp)
    1acc:	00d7a023          	sw	a3,0(a5)
    1ad0:	00470793          	addi	a5,a4,4
    1ad4:	00f12823          	sw	a5,16(sp)
    1ad8:	6580006f          	j	2130 <_vfiprintf_r+0xabc>
    1adc:	04097793          	andi	a5,s2,64
    1ae0:	02078063          	beqz	a5,1b00 <_vfiprintf_r+0x48c>
    1ae4:	01012703          	lw	a4,16(sp)
    1ae8:	00072783          	lw	a5,0(a4)
    1aec:	00812683          	lw	a3,8(sp)
    1af0:	00d79023          	sh	a3,0(a5)
    1af4:	00470793          	addi	a5,a4,4
    1af8:	00f12823          	sw	a5,16(sp)
    1afc:	6340006f          	j	2130 <_vfiprintf_r+0xabc>
    1b00:	20097913          	andi	s2,s2,512
    1b04:	02090063          	beqz	s2,1b24 <_vfiprintf_r+0x4b0>
    1b08:	01012703          	lw	a4,16(sp)
    1b0c:	00072783          	lw	a5,0(a4)
    1b10:	00812683          	lw	a3,8(sp)
    1b14:	00d78023          	sb	a3,0(a5)
    1b18:	00470793          	addi	a5,a4,4
    1b1c:	00f12823          	sw	a5,16(sp)
    1b20:	6100006f          	j	2130 <_vfiprintf_r+0xabc>
    1b24:	01012703          	lw	a4,16(sp)
    1b28:	00072783          	lw	a5,0(a4)
    1b2c:	00812683          	lw	a3,8(sp)
    1b30:	00d7a023          	sw	a3,0(a5)
    1b34:	00470793          	addi	a5,a4,4
    1b38:	00f12823          	sw	a5,16(sp)
    1b3c:	5f40006f          	j	2130 <_vfiprintf_r+0xabc>
    1b40:	01096913          	ori	s2,s2,16
    1b44:	02097793          	andi	a5,s2,32
    1b48:	06078063          	beqz	a5,1ba8 <_vfiprintf_r+0x534>
    1b4c:	01012783          	lw	a5,16(sp)
    1b50:	00778793          	addi	a5,a5,7
    1b54:	ff87f793          	andi	a5,a5,-8
    1b58:	00878713          	addi	a4,a5,8
    1b5c:	00e12823          	sw	a4,16(sp)
    1b60:	0007aa03          	lw	s4,0(a5)
    1b64:	0047a983          	lw	s3,4(a5)
    1b68:	bff97713          	andi	a4,s2,-1025
    1b6c:	00000793          	li	a5,0
    1b70:	0e0107a3          	sb	zero,239(sp)
    1b74:	240cc8e3          	bltz	s9,25c4 <_vfiprintf_r+0xf50>
    1b78:	f7f77913          	andi	s2,a4,-129
    1b7c:	013a66b3          	or	a3,s4,s3
    1b80:	2e069c63          	bnez	a3,1e78 <_vfiprintf_r+0x804>
    1b84:	220c9ce3          	bnez	s9,25bc <_vfiprintf_r+0xf48>
    1b88:	0a010493          	addi	s1,sp,160
    1b8c:	46079c63          	bnez	a5,2004 <_vfiprintf_r+0x990>
    1b90:	00177713          	andi	a4,a4,1
    1b94:	46070863          	beqz	a4,2004 <_vfiprintf_r+0x990>
    1b98:	03000793          	li	a5,48
    1b9c:	08f10fa3          	sb	a5,159(sp)
    1ba0:	09f10493          	addi	s1,sp,159
    1ba4:	4600006f          	j	2004 <_vfiprintf_r+0x990>
    1ba8:	01097793          	andi	a5,s2,16
    1bac:	00078e63          	beqz	a5,1bc8 <_vfiprintf_r+0x554>
    1bb0:	01012783          	lw	a5,16(sp)
    1bb4:	0007aa03          	lw	s4,0(a5)
    1bb8:	00000993          	li	s3,0
    1bbc:	00478793          	addi	a5,a5,4
    1bc0:	00f12823          	sw	a5,16(sp)
    1bc4:	fa5ff06f          	j	1b68 <_vfiprintf_r+0x4f4>
    1bc8:	04097793          	andi	a5,s2,64
    1bcc:	00078e63          	beqz	a5,1be8 <_vfiprintf_r+0x574>
    1bd0:	01012783          	lw	a5,16(sp)
    1bd4:	0007da03          	lhu	s4,0(a5)
    1bd8:	00000993          	li	s3,0
    1bdc:	00478793          	addi	a5,a5,4
    1be0:	00f12823          	sw	a5,16(sp)
    1be4:	f85ff06f          	j	1b68 <_vfiprintf_r+0x4f4>
    1be8:	20097793          	andi	a5,s2,512
    1bec:	00078e63          	beqz	a5,1c08 <_vfiprintf_r+0x594>
    1bf0:	01012783          	lw	a5,16(sp)
    1bf4:	0007ca03          	lbu	s4,0(a5)
    1bf8:	00000993          	li	s3,0
    1bfc:	00478793          	addi	a5,a5,4
    1c00:	00f12823          	sw	a5,16(sp)
    1c04:	f65ff06f          	j	1b68 <_vfiprintf_r+0x4f4>
    1c08:	01012783          	lw	a5,16(sp)
    1c0c:	0007aa03          	lw	s4,0(a5)
    1c10:	00000993          	li	s3,0
    1c14:	00478793          	addi	a5,a5,4
    1c18:	00f12823          	sw	a5,16(sp)
    1c1c:	f4dff06f          	j	1b68 <_vfiprintf_r+0x4f4>
    1c20:	01012683          	lw	a3,16(sp)
    1c24:	0006aa03          	lw	s4,0(a3)
    1c28:	00000993          	li	s3,0
    1c2c:	00296713          	ori	a4,s2,2
    1c30:	03000793          	li	a5,48
    1c34:	02f10c23          	sb	a5,56(sp)
    1c38:	07800793          	li	a5,120
    1c3c:	02f10ca3          	sb	a5,57(sp)
    1c40:	00468793          	addi	a5,a3,4
    1c44:	00f12823          	sw	a5,16(sp)
    1c48:	000137b7          	lui	a5,0x13
    1c4c:	6b878793          	addi	a5,a5,1720 # 136b8 <__clz_tab+0x1ec>
    1c50:	02f12023          	sw	a5,32(sp)
    1c54:	00200793          	li	a5,2
    1c58:	f19ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1c5c:	01012783          	lw	a5,16(sp)
    1c60:	00478993          	addi	s3,a5,4
    1c64:	0007a483          	lw	s1,0(a5)
    1c68:	0e0107a3          	sb	zero,239(sp)
    1c6c:	02048663          	beqz	s1,1c98 <_vfiprintf_r+0x624>
    1c70:	040cc463          	bltz	s9,1cb8 <_vfiprintf_r+0x644>
    1c74:	000c8613          	mv	a2,s9
    1c78:	00000593          	li	a1,0
    1c7c:	00048513          	mv	a0,s1
    1c80:	1a5020ef          	jal	ra,4624 <memchr>
    1c84:	54050e63          	beqz	a0,21e0 <_vfiprintf_r+0xb6c>
    1c88:	40950ab3          	sub	s5,a0,s1
    1c8c:	01312823          	sw	s3,16(sp)
    1c90:	00000c93          	li	s9,0
    1c94:	3780006f          	j	200c <_vfiprintf_r+0x998>
    1c98:	000c8a93          	mv	s5,s9
    1c9c:	00600793          	li	a5,6
    1ca0:	0197f463          	bgeu	a5,s9,1ca8 <_vfiprintf_r+0x634>
    1ca4:	00600a93          	li	s5,6
    1ca8:	01312823          	sw	s3,16(sp)
    1cac:	000134b7          	lui	s1,0x13
    1cb0:	6e848493          	addi	s1,s1,1768 # 136e8 <__clz_tab+0x21c>
    1cb4:	cf5ff06f          	j	19a8 <_vfiprintf_r+0x334>
    1cb8:	00048513          	mv	a0,s1
    1cbc:	1a1030ef          	jal	ra,565c <strlen>
    1cc0:	00050a93          	mv	s5,a0
    1cc4:	01312823          	sw	s3,16(sp)
    1cc8:	00000c93          	li	s9,0
    1ccc:	3400006f          	j	200c <_vfiprintf_r+0x998>
    1cd0:	01096713          	ori	a4,s2,16
    1cd4:	02077793          	andi	a5,a4,32
    1cd8:	02078863          	beqz	a5,1d08 <_vfiprintf_r+0x694>
    1cdc:	01012783          	lw	a5,16(sp)
    1ce0:	00778793          	addi	a5,a5,7
    1ce4:	ff87f793          	andi	a5,a5,-8
    1ce8:	00878693          	addi	a3,a5,8
    1cec:	00d12823          	sw	a3,16(sp)
    1cf0:	0007aa03          	lw	s4,0(a5)
    1cf4:	0047a983          	lw	s3,4(a5)
    1cf8:	00100793          	li	a5,1
    1cfc:	e75ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1d00:	00090713          	mv	a4,s2
    1d04:	fd1ff06f          	j	1cd4 <_vfiprintf_r+0x660>
    1d08:	01077793          	andi	a5,a4,16
    1d0c:	02078063          	beqz	a5,1d2c <_vfiprintf_r+0x6b8>
    1d10:	01012783          	lw	a5,16(sp)
    1d14:	0007aa03          	lw	s4,0(a5)
    1d18:	00000993          	li	s3,0
    1d1c:	00478793          	addi	a5,a5,4
    1d20:	00f12823          	sw	a5,16(sp)
    1d24:	00100793          	li	a5,1
    1d28:	e49ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1d2c:	04077793          	andi	a5,a4,64
    1d30:	02078063          	beqz	a5,1d50 <_vfiprintf_r+0x6dc>
    1d34:	01012783          	lw	a5,16(sp)
    1d38:	0007da03          	lhu	s4,0(a5)
    1d3c:	00000993          	li	s3,0
    1d40:	00478793          	addi	a5,a5,4
    1d44:	00f12823          	sw	a5,16(sp)
    1d48:	00100793          	li	a5,1
    1d4c:	e25ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1d50:	20077793          	andi	a5,a4,512
    1d54:	02078063          	beqz	a5,1d74 <_vfiprintf_r+0x700>
    1d58:	01012783          	lw	a5,16(sp)
    1d5c:	0007ca03          	lbu	s4,0(a5)
    1d60:	00000993          	li	s3,0
    1d64:	00478793          	addi	a5,a5,4
    1d68:	00f12823          	sw	a5,16(sp)
    1d6c:	00100793          	li	a5,1
    1d70:	e01ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1d74:	01012783          	lw	a5,16(sp)
    1d78:	0007aa03          	lw	s4,0(a5)
    1d7c:	00000993          	li	s3,0
    1d80:	00478793          	addi	a5,a5,4
    1d84:	00f12823          	sw	a5,16(sp)
    1d88:	00100793          	li	a5,1
    1d8c:	de5ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1d90:	000137b7          	lui	a5,0x13
    1d94:	6a478793          	addi	a5,a5,1700 # 136a4 <__clz_tab+0x1d8>
    1d98:	02f12023          	sw	a5,32(sp)
    1d9c:	0100006f          	j	1dac <_vfiprintf_r+0x738>
    1da0:	000137b7          	lui	a5,0x13
    1da4:	6b878793          	addi	a5,a5,1720 # 136b8 <__clz_tab+0x1ec>
    1da8:	02f12023          	sw	a5,32(sp)
    1dac:	02097793          	andi	a5,s2,32
    1db0:	04078663          	beqz	a5,1dfc <_vfiprintf_r+0x788>
    1db4:	01012783          	lw	a5,16(sp)
    1db8:	00778793          	addi	a5,a5,7
    1dbc:	ff87f793          	andi	a5,a5,-8
    1dc0:	00878693          	addi	a3,a5,8
    1dc4:	00d12823          	sw	a3,16(sp)
    1dc8:	0007aa03          	lw	s4,0(a5)
    1dcc:	0047a983          	lw	s3,4(a5)
    1dd0:	00197793          	andi	a5,s2,1
    1dd4:	00078e63          	beqz	a5,1df0 <_vfiprintf_r+0x77c>
    1dd8:	013a67b3          	or	a5,s4,s3
    1ddc:	00078a63          	beqz	a5,1df0 <_vfiprintf_r+0x77c>
    1de0:	03000793          	li	a5,48
    1de4:	02f10c23          	sb	a5,56(sp)
    1de8:	02e10ca3          	sb	a4,57(sp)
    1dec:	00296913          	ori	s2,s2,2
    1df0:	bff97713          	andi	a4,s2,-1025
    1df4:	00200793          	li	a5,2
    1df8:	d79ff06f          	j	1b70 <_vfiprintf_r+0x4fc>
    1dfc:	01097793          	andi	a5,s2,16
    1e00:	00078e63          	beqz	a5,1e1c <_vfiprintf_r+0x7a8>
    1e04:	01012783          	lw	a5,16(sp)
    1e08:	0007aa03          	lw	s4,0(a5)
    1e0c:	00000993          	li	s3,0
    1e10:	00478793          	addi	a5,a5,4
    1e14:	00f12823          	sw	a5,16(sp)
    1e18:	fb9ff06f          	j	1dd0 <_vfiprintf_r+0x75c>
    1e1c:	04097793          	andi	a5,s2,64
    1e20:	00078e63          	beqz	a5,1e3c <_vfiprintf_r+0x7c8>
    1e24:	01012783          	lw	a5,16(sp)
    1e28:	0007da03          	lhu	s4,0(a5)
    1e2c:	00000993          	li	s3,0
    1e30:	00478793          	addi	a5,a5,4
    1e34:	00f12823          	sw	a5,16(sp)
    1e38:	f99ff06f          	j	1dd0 <_vfiprintf_r+0x75c>
    1e3c:	20097793          	andi	a5,s2,512
    1e40:	00078e63          	beqz	a5,1e5c <_vfiprintf_r+0x7e8>
    1e44:	01012783          	lw	a5,16(sp)
    1e48:	0007ca03          	lbu	s4,0(a5)
    1e4c:	00000993          	li	s3,0
    1e50:	00478793          	addi	a5,a5,4
    1e54:	00f12823          	sw	a5,16(sp)
    1e58:	f79ff06f          	j	1dd0 <_vfiprintf_r+0x75c>
    1e5c:	01012783          	lw	a5,16(sp)
    1e60:	0007aa03          	lw	s4,0(a5)
    1e64:	00000993          	li	s3,0
    1e68:	00478793          	addi	a5,a5,4
    1e6c:	00f12823          	sw	a5,16(sp)
    1e70:	f61ff06f          	j	1dd0 <_vfiprintf_r+0x75c>
    1e74:	00070913          	mv	s2,a4
    1e78:	00100713          	li	a4,1
    1e7c:	02e78463          	beq	a5,a4,1ea4 <_vfiprintf_r+0x830>
    1e80:	00200713          	li	a4,2
    1e84:	14e78263          	beq	a5,a4,1fc8 <_vfiprintf_r+0x954>
    1e88:	76078463          	beqz	a5,25f0 <_vfiprintf_r+0xf7c>
    1e8c:	000134b7          	lui	s1,0x13
    1e90:	6cc48513          	addi	a0,s1,1740 # 136cc <__clz_tab+0x200>
    1e94:	7c8030ef          	jal	ra,565c <strlen>
    1e98:	00050a93          	mv	s5,a0
    1e9c:	6cc48493          	addi	s1,s1,1740
    1ea0:	16c0006f          	j	200c <_vfiprintf_r+0x998>
    1ea4:	00099863          	bnez	s3,1eb4 <_vfiprintf_r+0x840>
    1ea8:	02099463          	bnez	s3,1ed0 <_vfiprintf_r+0x85c>
    1eac:	00900793          	li	a5,9
    1eb0:	0347f063          	bgeu	a5,s4,1ed0 <_vfiprintf_r+0x85c>
    1eb4:	00000b13          	li	s6,0
    1eb8:	0a010a93          	addi	s5,sp,160
    1ebc:	40097b93          	andi	s7,s2,1024
    1ec0:	00812a23          	sw	s0,20(sp)
    1ec4:	02412403          	lw	s0,36(sp)
    1ec8:	0900006f          	j	1f58 <_vfiprintf_r+0x8e4>
    1ecc:	00070913          	mv	s2,a4
    1ed0:	030a0a13          	addi	s4,s4,48
    1ed4:	09410fa3          	sb	s4,159(sp)
    1ed8:	09f10493          	addi	s1,sp,159
    1edc:	1280006f          	j	2004 <_vfiprintf_r+0x990>
    1ee0:	00900793          	li	a5,9
    1ee4:	0147e863          	bltu	a5,s4,1ef4 <_vfiprintf_r+0x880>
    1ee8:	02812223          	sw	s0,36(sp)
    1eec:	01412403          	lw	s0,20(sp)
    1ef0:	1140006f          	j	2004 <_vfiprintf_r+0x990>
    1ef4:	02c12783          	lw	a5,44(sp)
    1ef8:	40f484b3          	sub	s1,s1,a5
    1efc:	00078613          	mv	a2,a5
    1f00:	02812583          	lw	a1,40(sp)
    1f04:	00048513          	mv	a0,s1
    1f08:	7e4030ef          	jal	ra,56ec <strncpy>
    1f0c:	00144783          	lbu	a5,1(s0)
    1f10:	00f037b3          	snez	a5,a5
    1f14:	00f40433          	add	s0,s0,a5
    1f18:	00a00613          	li	a2,10
    1f1c:	00000693          	li	a3,0
    1f20:	000a0513          	mv	a0,s4
    1f24:	00098593          	mv	a1,s3
    1f28:	29c040ef          	jal	ra,61c4 <__udivdi3>
    1f2c:	00000b13          	li	s6,0
    1f30:	01c0006f          	j	1f4c <_vfiprintf_r+0x8d8>
    1f34:	00a00613          	li	a2,10
    1f38:	00000693          	li	a3,0
    1f3c:	000a0513          	mv	a0,s4
    1f40:	00098593          	mv	a1,s3
    1f44:	280040ef          	jal	ra,61c4 <__udivdi3>
    1f48:	04098e63          	beqz	s3,1fa4 <_vfiprintf_r+0x930>
    1f4c:	00050a13          	mv	s4,a0
    1f50:	00058993          	mv	s3,a1
    1f54:	00048a93          	mv	s5,s1
    1f58:	fffa8493          	addi	s1,s5,-1
    1f5c:	00a00613          	li	a2,10
    1f60:	00000693          	li	a3,0
    1f64:	000a0513          	mv	a0,s4
    1f68:	00098593          	mv	a1,s3
    1f6c:	019040ef          	jal	ra,6784 <__umoddi3>
    1f70:	03050513          	addi	a0,a0,48
    1f74:	feaa8fa3          	sb	a0,-1(s5)
    1f78:	001b0b13          	addi	s6,s6,1
    1f7c:	fa0b8ce3          	beqz	s7,1f34 <_vfiprintf_r+0x8c0>
    1f80:	00044783          	lbu	a5,0(s0)
    1f84:	fb6798e3          	bne	a5,s6,1f34 <_vfiprintf_r+0x8c0>
    1f88:	0ff00713          	li	a4,255
    1f8c:	fae784e3          	beq	a5,a4,1f34 <_vfiprintf_r+0x8c0>
    1f90:	f60992e3          	bnez	s3,1ef4 <_vfiprintf_r+0x880>
    1f94:	f40986e3          	beqz	s3,1ee0 <_vfiprintf_r+0x86c>
    1f98:	02812223          	sw	s0,36(sp)
    1f9c:	01412403          	lw	s0,20(sp)
    1fa0:	0640006f          	j	2004 <_vfiprintf_r+0x990>
    1fa4:	20099c63          	bnez	s3,21bc <_vfiprintf_r+0xb48>
    1fa8:	00900793          	li	a5,9
    1fac:	fb47e0e3          	bltu	a5,s4,1f4c <_vfiprintf_r+0x8d8>
    1fb0:	02812223          	sw	s0,36(sp)
    1fb4:	01412403          	lw	s0,20(sp)
    1fb8:	04c0006f          	j	2004 <_vfiprintf_r+0x990>
    1fbc:	00070913          	mv	s2,a4
    1fc0:	00000a13          	li	s4,0
    1fc4:	00000993          	li	s3,0
    1fc8:	0a010493          	addi	s1,sp,160
    1fcc:	02012683          	lw	a3,32(sp)
    1fd0:	fff48493          	addi	s1,s1,-1
    1fd4:	00fa7793          	andi	a5,s4,15
    1fd8:	00f687b3          	add	a5,a3,a5
    1fdc:	0007c783          	lbu	a5,0(a5)
    1fe0:	00f48023          	sb	a5,0(s1)
    1fe4:	01c99713          	slli	a4,s3,0x1c
    1fe8:	004a5793          	srli	a5,s4,0x4
    1fec:	00f767b3          	or	a5,a4,a5
    1ff0:	0049d713          	srli	a4,s3,0x4
    1ff4:	00078a13          	mv	s4,a5
    1ff8:	00070993          	mv	s3,a4
    1ffc:	00e7e7b3          	or	a5,a5,a4
    2000:	fc0798e3          	bnez	a5,1fd0 <_vfiprintf_r+0x95c>
    2004:	0a010a93          	addi	s5,sp,160
    2008:	409a8ab3          	sub	s5,s5,s1
    200c:	000c8a13          	mv	s4,s9
    2010:	015cd463          	bge	s9,s5,2018 <_vfiprintf_r+0x9a4>
    2014:	000a8a13          	mv	s4,s5
    2018:	0ef14783          	lbu	a5,239(sp)
    201c:	00f037b3          	snez	a5,a5
    2020:	00fa0a33          	add	s4,s4,a5
    2024:	00297793          	andi	a5,s2,2
    2028:	00f12a23          	sw	a5,20(sp)
    202c:	00078463          	beqz	a5,2034 <_vfiprintf_r+0x9c0>
    2030:	002a0a13          	addi	s4,s4,2
    2034:	08497b93          	andi	s7,s2,132
    2038:	000b9663          	bnez	s7,2044 <_vfiprintf_r+0x9d0>
    203c:	414c09b3          	sub	s3,s8,s4
    2040:	1b304863          	bgtz	s3,21f0 <_vfiprintf_r+0xb7c>
    2044:	0ef14783          	lbu	a5,239(sp)
    2048:	02078c63          	beqz	a5,2080 <_vfiprintf_r+0xa0c>
    204c:	0ef10793          	addi	a5,sp,239
    2050:	00f42023          	sw	a5,0(s0)
    2054:	00100793          	li	a5,1
    2058:	00f42223          	sw	a5,4(s0)
    205c:	0e812783          	lw	a5,232(sp)
    2060:	00178793          	addi	a5,a5,1
    2064:	0ef12423          	sw	a5,232(sp)
    2068:	0e412783          	lw	a5,228(sp)
    206c:	00178793          	addi	a5,a5,1
    2070:	0ef12223          	sw	a5,228(sp)
    2074:	00700713          	li	a4,7
    2078:	00840413          	addi	s0,s0,8
    207c:	22f74663          	blt	a4,a5,22a8 <_vfiprintf_r+0xc34>
    2080:	01412783          	lw	a5,20(sp)
    2084:	02078c63          	beqz	a5,20bc <_vfiprintf_r+0xa48>
    2088:	03810793          	addi	a5,sp,56
    208c:	00f42023          	sw	a5,0(s0)
    2090:	00200793          	li	a5,2
    2094:	00f42223          	sw	a5,4(s0)
    2098:	0e812783          	lw	a5,232(sp)
    209c:	00278793          	addi	a5,a5,2
    20a0:	0ef12423          	sw	a5,232(sp)
    20a4:	0e412783          	lw	a5,228(sp)
    20a8:	00178793          	addi	a5,a5,1
    20ac:	0ef12223          	sw	a5,228(sp)
    20b0:	00700713          	li	a4,7
    20b4:	00840413          	addi	s0,s0,8
    20b8:	20f74663          	blt	a4,a5,22c4 <_vfiprintf_r+0xc50>
    20bc:	08000793          	li	a5,128
    20c0:	22fb8063          	beq	s7,a5,22e0 <_vfiprintf_r+0xc6c>
    20c4:	415c8cb3          	sub	s9,s9,s5
    20c8:	2d904a63          	bgtz	s9,239c <_vfiprintf_r+0xd28>
    20cc:	00942023          	sw	s1,0(s0)
    20d0:	01542223          	sw	s5,4(s0)
    20d4:	0e812783          	lw	a5,232(sp)
    20d8:	015787b3          	add	a5,a5,s5
    20dc:	0ef12423          	sw	a5,232(sp)
    20e0:	0e412783          	lw	a5,228(sp)
    20e4:	00178793          	addi	a5,a5,1
    20e8:	0ef12223          	sw	a5,228(sp)
    20ec:	00700713          	li	a4,7
    20f0:	00840413          	addi	s0,s0,8
    20f4:	36f74063          	blt	a4,a5,2454 <_vfiprintf_r+0xde0>
    20f8:	00497913          	andi	s2,s2,4
    20fc:	00090663          	beqz	s2,2108 <_vfiprintf_r+0xa94>
    2100:	414c04b3          	sub	s1,s8,s4
    2104:	36904663          	bgtz	s1,2470 <_vfiprintf_r+0xdfc>
    2108:	000c0793          	mv	a5,s8
    210c:	014c5463          	bge	s8,s4,2114 <_vfiprintf_r+0xaa0>
    2110:	000a0793          	mv	a5,s4
    2114:	00812703          	lw	a4,8(sp)
    2118:	00f707b3          	add	a5,a4,a5
    211c:	00f12423          	sw	a5,8(sp)
    2120:	0e812783          	lw	a5,232(sp)
    2124:	3e079e63          	bnez	a5,2520 <_vfiprintf_r+0xeac>
    2128:	0e012223          	sw	zero,228(sp)
    212c:	0a010413          	addi	s0,sp,160
    2130:	000dc783          	lbu	a5,0(s11)
    2134:	40078263          	beqz	a5,2538 <_vfiprintf_r+0xec4>
    2138:	000d8493          	mv	s1,s11
    213c:	02500713          	li	a4,37
    2140:	e6e78663          	beq	a5,a4,17ac <_vfiprintf_r+0x138>
    2144:	00148493          	addi	s1,s1,1
    2148:	0004c783          	lbu	a5,0(s1)
    214c:	fe079ae3          	bnez	a5,2140 <_vfiprintf_r+0xacc>
    2150:	41b48933          	sub	s2,s1,s11
    2154:	3fb48263          	beq	s1,s11,2538 <_vfiprintf_r+0xec4>
    2158:	01b42023          	sw	s11,0(s0)
    215c:	01242223          	sw	s2,4(s0)
    2160:	0e812783          	lw	a5,232(sp)
    2164:	012787b3          	add	a5,a5,s2
    2168:	0ef12423          	sw	a5,232(sp)
    216c:	0e412783          	lw	a5,228(sp)
    2170:	00178793          	addi	a5,a5,1
    2174:	0ef12223          	sw	a5,228(sp)
    2178:	00700713          	li	a4,7
    217c:	00840413          	addi	s0,s0,8
    2180:	e2f74c63          	blt	a4,a5,17b8 <_vfiprintf_r+0x144>
    2184:	00812783          	lw	a5,8(sp)
    2188:	012787b3          	add	a5,a5,s2
    218c:	00f12423          	sw	a5,8(sp)
    2190:	0004c783          	lbu	a5,0(s1)
    2194:	3a078263          	beqz	a5,2538 <_vfiprintf_r+0xec4>
    2198:	00148793          	addi	a5,s1,1
    219c:	0e0107a3          	sb	zero,239(sp)
    21a0:	fff00c93          	li	s9,-1
    21a4:	00000c13          	li	s8,0
    21a8:	00000913          	li	s2,0
    21ac:	00900493          	li	s1,9
    21b0:	02a00993          	li	s3,42
    21b4:	fff00a13          	li	s4,-1
    21b8:	ea4ff06f          	j	185c <_vfiprintf_r+0x1e8>
    21bc:	02812223          	sw	s0,36(sp)
    21c0:	01412403          	lw	s0,20(sp)
    21c4:	e41ff06f          	j	2004 <_vfiprintf_r+0x990>
    21c8:	36070863          	beqz	a4,2538 <_vfiprintf_r+0xec4>
    21cc:	02e10e23          	sb	a4,60(sp)
    21d0:	0e0107a3          	sb	zero,239(sp)
    21d4:	00100a93          	li	s5,1
    21d8:	03c10493          	addi	s1,sp,60
    21dc:	fccff06f          	j	19a8 <_vfiprintf_r+0x334>
    21e0:	01312823          	sw	s3,16(sp)
    21e4:	000c8a93          	mv	s5,s9
    21e8:	00000c93          	li	s9,0
    21ec:	e21ff06f          	j	200c <_vfiprintf_r+0x998>
    21f0:	01000793          	li	a5,16
    21f4:	0737d463          	bge	a5,s3,225c <_vfiprintf_r+0xbe8>
    21f8:	01000b13          	li	s6,16
    21fc:	00040713          	mv	a4,s0
    2200:	01c12403          	lw	s0,28(sp)
    2204:	00c0006f          	j	2210 <_vfiprintf_r+0xb9c>
    2208:	ff098993          	addi	s3,s3,-16
    220c:	053b5663          	bge	s6,s3,2258 <_vfiprintf_r+0xbe4>
    2210:	00872023          	sw	s0,0(a4)
    2214:	01672223          	sw	s6,4(a4)
    2218:	0e812783          	lw	a5,232(sp)
    221c:	01078793          	addi	a5,a5,16
    2220:	0ef12423          	sw	a5,232(sp)
    2224:	0e412783          	lw	a5,228(sp)
    2228:	00178793          	addi	a5,a5,1
    222c:	0ef12223          	sw	a5,228(sp)
    2230:	00700693          	li	a3,7
    2234:	00870713          	addi	a4,a4,8
    2238:	fcf6d8e3          	bge	a3,a5,2208 <_vfiprintf_r+0xb94>
    223c:	0e010613          	addi	a2,sp,224
    2240:	00412583          	lw	a1,4(sp)
    2244:	00c12503          	lw	a0,12(sp)
    2248:	b34ff0ef          	jal	ra,157c <__sprint_r>
    224c:	2e051a63          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    2250:	0a010713          	addi	a4,sp,160
    2254:	fb5ff06f          	j	2208 <_vfiprintf_r+0xb94>
    2258:	00070413          	mv	s0,a4
    225c:	01c12783          	lw	a5,28(sp)
    2260:	00f42023          	sw	a5,0(s0)
    2264:	01342223          	sw	s3,4(s0)
    2268:	0e812783          	lw	a5,232(sp)
    226c:	013787b3          	add	a5,a5,s3
    2270:	0ef12423          	sw	a5,232(sp)
    2274:	0e412783          	lw	a5,228(sp)
    2278:	00178793          	addi	a5,a5,1
    227c:	0ef12223          	sw	a5,228(sp)
    2280:	00700713          	li	a4,7
    2284:	00840413          	addi	s0,s0,8
    2288:	daf75ee3          	bge	a4,a5,2044 <_vfiprintf_r+0x9d0>
    228c:	0e010613          	addi	a2,sp,224
    2290:	00412583          	lw	a1,4(sp)
    2294:	00c12503          	lw	a0,12(sp)
    2298:	ae4ff0ef          	jal	ra,157c <__sprint_r>
    229c:	2a051263          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    22a0:	0a010413          	addi	s0,sp,160
    22a4:	da1ff06f          	j	2044 <_vfiprintf_r+0x9d0>
    22a8:	0e010613          	addi	a2,sp,224
    22ac:	00412583          	lw	a1,4(sp)
    22b0:	00c12503          	lw	a0,12(sp)
    22b4:	ac8ff0ef          	jal	ra,157c <__sprint_r>
    22b8:	28051463          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    22bc:	0a010413          	addi	s0,sp,160
    22c0:	dc1ff06f          	j	2080 <_vfiprintf_r+0xa0c>
    22c4:	0e010613          	addi	a2,sp,224
    22c8:	00412583          	lw	a1,4(sp)
    22cc:	00c12503          	lw	a0,12(sp)
    22d0:	aacff0ef          	jal	ra,157c <__sprint_r>
    22d4:	26051663          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    22d8:	0a010413          	addi	s0,sp,160
    22dc:	de1ff06f          	j	20bc <_vfiprintf_r+0xa48>
    22e0:	414c09b3          	sub	s3,s8,s4
    22e4:	df3050e3          	blez	s3,20c4 <_vfiprintf_r+0xa50>
    22e8:	01000793          	li	a5,16
    22ec:	0737d463          	bge	a5,s3,2354 <_vfiprintf_r+0xce0>
    22f0:	01000b13          	li	s6,16
    22f4:	00700b93          	li	s7,7
    22f8:	00040713          	mv	a4,s0
    22fc:	00c12403          	lw	s0,12(sp)
    2300:	00c0006f          	j	230c <_vfiprintf_r+0xc98>
    2304:	ff098993          	addi	s3,s3,-16
    2308:	053b5463          	bge	s6,s3,2350 <_vfiprintf_r+0xcdc>
    230c:	01a72023          	sw	s10,0(a4)
    2310:	01672223          	sw	s6,4(a4)
    2314:	0e812783          	lw	a5,232(sp)
    2318:	01078793          	addi	a5,a5,16
    231c:	0ef12423          	sw	a5,232(sp)
    2320:	0e412783          	lw	a5,228(sp)
    2324:	00178793          	addi	a5,a5,1
    2328:	0ef12223          	sw	a5,228(sp)
    232c:	00870713          	addi	a4,a4,8
    2330:	fcfbdae3          	bge	s7,a5,2304 <_vfiprintf_r+0xc90>
    2334:	0e010613          	addi	a2,sp,224
    2338:	00412583          	lw	a1,4(sp)
    233c:	00040513          	mv	a0,s0
    2340:	a3cff0ef          	jal	ra,157c <__sprint_r>
    2344:	1e051e63          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    2348:	0a010713          	addi	a4,sp,160
    234c:	fb9ff06f          	j	2304 <_vfiprintf_r+0xc90>
    2350:	00070413          	mv	s0,a4
    2354:	01a42023          	sw	s10,0(s0)
    2358:	01342223          	sw	s3,4(s0)
    235c:	0e812783          	lw	a5,232(sp)
    2360:	013787b3          	add	a5,a5,s3
    2364:	0ef12423          	sw	a5,232(sp)
    2368:	0e412783          	lw	a5,228(sp)
    236c:	00178793          	addi	a5,a5,1
    2370:	0ef12223          	sw	a5,228(sp)
    2374:	00700713          	li	a4,7
    2378:	00840413          	addi	s0,s0,8
    237c:	d4f754e3          	bge	a4,a5,20c4 <_vfiprintf_r+0xa50>
    2380:	0e010613          	addi	a2,sp,224
    2384:	00412583          	lw	a1,4(sp)
    2388:	00c12503          	lw	a0,12(sp)
    238c:	9f0ff0ef          	jal	ra,157c <__sprint_r>
    2390:	1a051863          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    2394:	0a010413          	addi	s0,sp,160
    2398:	d2dff06f          	j	20c4 <_vfiprintf_r+0xa50>
    239c:	01000793          	li	a5,16
    23a0:	0797d663          	bge	a5,s9,240c <_vfiprintf_r+0xd98>
    23a4:	01000b13          	li	s6,16
    23a8:	00700b93          	li	s7,7
    23ac:	00040713          	mv	a4,s0
    23b0:	00c12983          	lw	s3,12(sp)
    23b4:	00412403          	lw	s0,4(sp)
    23b8:	00c0006f          	j	23c4 <_vfiprintf_r+0xd50>
    23bc:	ff0c8c93          	addi	s9,s9,-16
    23c0:	059b5463          	bge	s6,s9,2408 <_vfiprintf_r+0xd94>
    23c4:	01a72023          	sw	s10,0(a4)
    23c8:	01672223          	sw	s6,4(a4)
    23cc:	0e812783          	lw	a5,232(sp)
    23d0:	01078793          	addi	a5,a5,16
    23d4:	0ef12423          	sw	a5,232(sp)
    23d8:	0e412783          	lw	a5,228(sp)
    23dc:	00178793          	addi	a5,a5,1
    23e0:	0ef12223          	sw	a5,228(sp)
    23e4:	00870713          	addi	a4,a4,8
    23e8:	fcfbdae3          	bge	s7,a5,23bc <_vfiprintf_r+0xd48>
    23ec:	0e010613          	addi	a2,sp,224
    23f0:	00040593          	mv	a1,s0
    23f4:	00098513          	mv	a0,s3
    23f8:	984ff0ef          	jal	ra,157c <__sprint_r>
    23fc:	14051263          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    2400:	0a010713          	addi	a4,sp,160
    2404:	fb9ff06f          	j	23bc <_vfiprintf_r+0xd48>
    2408:	00070413          	mv	s0,a4
    240c:	01a42023          	sw	s10,0(s0)
    2410:	01942223          	sw	s9,4(s0)
    2414:	0e812783          	lw	a5,232(sp)
    2418:	019787b3          	add	a5,a5,s9
    241c:	0ef12423          	sw	a5,232(sp)
    2420:	0e412783          	lw	a5,228(sp)
    2424:	00178793          	addi	a5,a5,1
    2428:	0ef12223          	sw	a5,228(sp)
    242c:	00700713          	li	a4,7
    2430:	00840413          	addi	s0,s0,8
    2434:	c8f75ce3          	bge	a4,a5,20cc <_vfiprintf_r+0xa58>
    2438:	0e010613          	addi	a2,sp,224
    243c:	00412583          	lw	a1,4(sp)
    2440:	00c12503          	lw	a0,12(sp)
    2444:	938ff0ef          	jal	ra,157c <__sprint_r>
    2448:	0e051c63          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    244c:	0a010413          	addi	s0,sp,160
    2450:	c7dff06f          	j	20cc <_vfiprintf_r+0xa58>
    2454:	0e010613          	addi	a2,sp,224
    2458:	00412583          	lw	a1,4(sp)
    245c:	00c12503          	lw	a0,12(sp)
    2460:	91cff0ef          	jal	ra,157c <__sprint_r>
    2464:	0c051e63          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    2468:	0a010413          	addi	s0,sp,160
    246c:	c8dff06f          	j	20f8 <_vfiprintf_r+0xa84>
    2470:	01000793          	li	a5,16
    2474:	0697d463          	bge	a5,s1,24dc <_vfiprintf_r+0xe68>
    2478:	01000913          	li	s2,16
    247c:	00700993          	li	s3,7
    2480:	00c12b03          	lw	s6,12(sp)
    2484:	00412b83          	lw	s7,4(sp)
    2488:	01c12a83          	lw	s5,28(sp)
    248c:	00c0006f          	j	2498 <_vfiprintf_r+0xe24>
    2490:	ff048493          	addi	s1,s1,-16
    2494:	04995463          	bge	s2,s1,24dc <_vfiprintf_r+0xe68>
    2498:	01542023          	sw	s5,0(s0)
    249c:	01242223          	sw	s2,4(s0)
    24a0:	0e812783          	lw	a5,232(sp)
    24a4:	01078793          	addi	a5,a5,16
    24a8:	0ef12423          	sw	a5,232(sp)
    24ac:	0e412783          	lw	a5,228(sp)
    24b0:	00178793          	addi	a5,a5,1
    24b4:	0ef12223          	sw	a5,228(sp)
    24b8:	00840413          	addi	s0,s0,8
    24bc:	fcf9dae3          	bge	s3,a5,2490 <_vfiprintf_r+0xe1c>
    24c0:	0e010613          	addi	a2,sp,224
    24c4:	000b8593          	mv	a1,s7
    24c8:	000b0513          	mv	a0,s6
    24cc:	8b0ff0ef          	jal	ra,157c <__sprint_r>
    24d0:	06051863          	bnez	a0,2540 <_vfiprintf_r+0xecc>
    24d4:	0a010413          	addi	s0,sp,160
    24d8:	fb9ff06f          	j	2490 <_vfiprintf_r+0xe1c>
    24dc:	01c12783          	lw	a5,28(sp)
    24e0:	00f42023          	sw	a5,0(s0)
    24e4:	00942223          	sw	s1,4(s0)
    24e8:	0e812783          	lw	a5,232(sp)
    24ec:	009787b3          	add	a5,a5,s1
    24f0:	0ef12423          	sw	a5,232(sp)
    24f4:	0e412783          	lw	a5,228(sp)
    24f8:	00178793          	addi	a5,a5,1
    24fc:	0ef12223          	sw	a5,228(sp)
    2500:	00700713          	li	a4,7
    2504:	c0f752e3          	bge	a4,a5,2108 <_vfiprintf_r+0xa94>
    2508:	0e010613          	addi	a2,sp,224
    250c:	00412583          	lw	a1,4(sp)
    2510:	00c12503          	lw	a0,12(sp)
    2514:	868ff0ef          	jal	ra,157c <__sprint_r>
    2518:	be0508e3          	beqz	a0,2108 <_vfiprintf_r+0xa94>
    251c:	0240006f          	j	2540 <_vfiprintf_r+0xecc>
    2520:	0e010613          	addi	a2,sp,224
    2524:	00412583          	lw	a1,4(sp)
    2528:	00c12503          	lw	a0,12(sp)
    252c:	850ff0ef          	jal	ra,157c <__sprint_r>
    2530:	be050ce3          	beqz	a0,2128 <_vfiprintf_r+0xab4>
    2534:	00c0006f          	j	2540 <_vfiprintf_r+0xecc>
    2538:	0e812783          	lw	a5,232(sp)
    253c:	04079a63          	bnez	a5,2590 <_vfiprintf_r+0xf1c>
    2540:	00412783          	lw	a5,4(sp)
    2544:	00c7d783          	lhu	a5,12(a5)
    2548:	0407f793          	andi	a5,a5,64
    254c:	04079c63          	bnez	a5,25a4 <_vfiprintf_r+0xf30>
    2550:	00812503          	lw	a0,8(sp)
    2554:	12c12083          	lw	ra,300(sp)
    2558:	12812403          	lw	s0,296(sp)
    255c:	12412483          	lw	s1,292(sp)
    2560:	12012903          	lw	s2,288(sp)
    2564:	11c12983          	lw	s3,284(sp)
    2568:	11812a03          	lw	s4,280(sp)
    256c:	11412a83          	lw	s5,276(sp)
    2570:	11012b03          	lw	s6,272(sp)
    2574:	10c12b83          	lw	s7,268(sp)
    2578:	10812c03          	lw	s8,264(sp)
    257c:	10412c83          	lw	s9,260(sp)
    2580:	10012d03          	lw	s10,256(sp)
    2584:	0fc12d83          	lw	s11,252(sp)
    2588:	13010113          	addi	sp,sp,304
    258c:	00008067          	ret
    2590:	0e010613          	addi	a2,sp,224
    2594:	00412583          	lw	a1,4(sp)
    2598:	00c12503          	lw	a0,12(sp)
    259c:	fe1fe0ef          	jal	ra,157c <__sprint_r>
    25a0:	fa1ff06f          	j	2540 <_vfiprintf_r+0xecc>
    25a4:	fff00793          	li	a5,-1
    25a8:	00f12423          	sw	a5,8(sp)
    25ac:	fa5ff06f          	j	2550 <_vfiprintf_r+0xedc>
    25b0:	fff00793          	li	a5,-1
    25b4:	00f12423          	sw	a5,8(sp)
    25b8:	f99ff06f          	j	2550 <_vfiprintf_r+0xedc>
    25bc:	00090713          	mv	a4,s2
    25c0:	00c0006f          	j	25cc <_vfiprintf_r+0xf58>
    25c4:	013a66b3          	or	a3,s4,s3
    25c8:	8a0696e3          	bnez	a3,1e74 <_vfiprintf_r+0x800>
    25cc:	00100693          	li	a3,1
    25d0:	8ed78ee3          	beq	a5,a3,1ecc <_vfiprintf_r+0x858>
    25d4:	00200693          	li	a3,2
    25d8:	9ed782e3          	beq	a5,a3,1fbc <_vfiprintf_r+0x948>
    25dc:	00070913          	mv	s2,a4
    25e0:	8a0796e3          	bnez	a5,1e8c <_vfiprintf_r+0x818>
    25e4:	00070913          	mv	s2,a4
    25e8:	00000a13          	li	s4,0
    25ec:	00000993          	li	s3,0
    25f0:	0a010493          	addi	s1,sp,160
    25f4:	00048613          	mv	a2,s1
    25f8:	fff48493          	addi	s1,s1,-1
    25fc:	007a7713          	andi	a4,s4,7
    2600:	03070713          	addi	a4,a4,48
    2604:	00e48023          	sb	a4,0(s1)
    2608:	01d99693          	slli	a3,s3,0x1d
    260c:	003a5793          	srli	a5,s4,0x3
    2610:	00f6e7b3          	or	a5,a3,a5
    2614:	0039d693          	srli	a3,s3,0x3
    2618:	00078a13          	mv	s4,a5
    261c:	00068993          	mv	s3,a3
    2620:	00d7e7b3          	or	a5,a5,a3
    2624:	fc0798e3          	bnez	a5,25f4 <_vfiprintf_r+0xf80>
    2628:	00197793          	andi	a5,s2,1
    262c:	9c078ce3          	beqz	a5,2004 <_vfiprintf_r+0x990>
    2630:	03000793          	li	a5,48
    2634:	9cf708e3          	beq	a4,a5,2004 <_vfiprintf_r+0x990>
    2638:	fef48fa3          	sb	a5,-1(s1)
    263c:	ffe60493          	addi	s1,a2,-2
    2640:	9c5ff06f          	j	2004 <_vfiprintf_r+0x990>

00002644 <vfiprintf>:
    2644:	ff010113          	addi	sp,sp,-16
    2648:	00112623          	sw	ra,12(sp)
    264c:	00060693          	mv	a3,a2
    2650:	00058613          	mv	a2,a1
    2654:	00050593          	mv	a1,a0
    2658:	000117b7          	lui	a5,0x11
    265c:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    2660:	814ff0ef          	jal	ra,1674 <_vfiprintf_r>
    2664:	00c12083          	lw	ra,12(sp)
    2668:	01010113          	addi	sp,sp,16
    266c:	00008067          	ret

00002670 <__sbprintf>:
    2670:	b8010113          	addi	sp,sp,-1152
    2674:	46112e23          	sw	ra,1148(sp)
    2678:	46812c23          	sw	s0,1144(sp)
    267c:	46912a23          	sw	s1,1140(sp)
    2680:	47212823          	sw	s2,1136(sp)
    2684:	00050913          	mv	s2,a0
    2688:	00058413          	mv	s0,a1
    268c:	00c5d783          	lhu	a5,12(a1)
    2690:	ffd7f793          	andi	a5,a5,-3
    2694:	40f11a23          	sh	a5,1044(sp)
    2698:	0645a783          	lw	a5,100(a1)
    269c:	46f12623          	sw	a5,1132(sp)
    26a0:	00e5d783          	lhu	a5,14(a1)
    26a4:	40f11b23          	sh	a5,1046(sp)
    26a8:	01c5a783          	lw	a5,28(a1)
    26ac:	42f12223          	sw	a5,1060(sp)
    26b0:	0245a783          	lw	a5,36(a1)
    26b4:	42f12623          	sw	a5,1068(sp)
    26b8:	00810793          	addi	a5,sp,8
    26bc:	40f12423          	sw	a5,1032(sp)
    26c0:	40f12c23          	sw	a5,1048(sp)
    26c4:	40000793          	li	a5,1024
    26c8:	40f12823          	sw	a5,1040(sp)
    26cc:	40f12e23          	sw	a5,1052(sp)
    26d0:	42012023          	sw	zero,1056(sp)
    26d4:	40810593          	addi	a1,sp,1032
    26d8:	f9dfe0ef          	jal	ra,1674 <_vfiprintf_r>
    26dc:	00050493          	mv	s1,a0
    26e0:	02055c63          	bgez	a0,2718 <__sbprintf+0xa8>
    26e4:	41415783          	lhu	a5,1044(sp)
    26e8:	0407f793          	andi	a5,a5,64
    26ec:	00078863          	beqz	a5,26fc <__sbprintf+0x8c>
    26f0:	00c45783          	lhu	a5,12(s0)
    26f4:	0407e793          	ori	a5,a5,64
    26f8:	00f41623          	sh	a5,12(s0)
    26fc:	00048513          	mv	a0,s1
    2700:	47c12083          	lw	ra,1148(sp)
    2704:	47812403          	lw	s0,1144(sp)
    2708:	47412483          	lw	s1,1140(sp)
    270c:	47012903          	lw	s2,1136(sp)
    2710:	48010113          	addi	sp,sp,1152
    2714:	00008067          	ret
    2718:	40810593          	addi	a1,sp,1032
    271c:	00090513          	mv	a0,s2
    2720:	3fc000ef          	jal	ra,2b1c <_fflush_r>
    2724:	fc0500e3          	beqz	a0,26e4 <__sbprintf+0x74>
    2728:	fff00493          	li	s1,-1
    272c:	fb9ff06f          	j	26e4 <__sbprintf+0x74>

00002730 <__swsetup_r>:
    2730:	ff010113          	addi	sp,sp,-16
    2734:	00112623          	sw	ra,12(sp)
    2738:	00812423          	sw	s0,8(sp)
    273c:	00912223          	sw	s1,4(sp)
    2740:	00050493          	mv	s1,a0
    2744:	00058413          	mv	s0,a1
    2748:	000117b7          	lui	a5,0x11
    274c:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    2750:	00050663          	beqz	a0,275c <__swsetup_r+0x2c>
    2754:	03852783          	lw	a5,56(a0)
    2758:	0a078663          	beqz	a5,2804 <__swsetup_r+0xd4>
    275c:	00c45783          	lhu	a5,12(s0)
    2760:	0087f713          	andi	a4,a5,8
    2764:	04071a63          	bnez	a4,27b8 <__swsetup_r+0x88>
    2768:	0107f713          	andi	a4,a5,16
    276c:	0a070063          	beqz	a4,280c <__swsetup_r+0xdc>
    2770:	0047f793          	andi	a5,a5,4
    2774:	02078c63          	beqz	a5,27ac <__swsetup_r+0x7c>
    2778:	03042583          	lw	a1,48(s0)
    277c:	00058c63          	beqz	a1,2794 <__swsetup_r+0x64>
    2780:	04040793          	addi	a5,s0,64
    2784:	00f58663          	beq	a1,a5,2790 <__swsetup_r+0x60>
    2788:	00048513          	mv	a0,s1
    278c:	2b5000ef          	jal	ra,3240 <_free_r>
    2790:	02042823          	sw	zero,48(s0)
    2794:	00c45783          	lhu	a5,12(s0)
    2798:	fdb7f793          	andi	a5,a5,-37
    279c:	00f41623          	sh	a5,12(s0)
    27a0:	00042223          	sw	zero,4(s0)
    27a4:	01042783          	lw	a5,16(s0)
    27a8:	00f42023          	sw	a5,0(s0)
    27ac:	00c45783          	lhu	a5,12(s0)
    27b0:	0087e793          	ori	a5,a5,8
    27b4:	00f41623          	sh	a5,12(s0)
    27b8:	01042783          	lw	a5,16(s0)
    27bc:	06078663          	beqz	a5,2828 <__swsetup_r+0xf8>
    27c0:	00c41783          	lh	a5,12(s0)
    27c4:	01079713          	slli	a4,a5,0x10
    27c8:	01075713          	srli	a4,a4,0x10
    27cc:	0017f693          	andi	a3,a5,1
    27d0:	06068c63          	beqz	a3,2848 <__swsetup_r+0x118>
    27d4:	00042423          	sw	zero,8(s0)
    27d8:	01442683          	lw	a3,20(s0)
    27dc:	40d006b3          	neg	a3,a3
    27e0:	00d42c23          	sw	a3,24(s0)
    27e4:	01042683          	lw	a3,16(s0)
    27e8:	00000513          	li	a0,0
    27ec:	06068a63          	beqz	a3,2860 <__swsetup_r+0x130>
    27f0:	00c12083          	lw	ra,12(sp)
    27f4:	00812403          	lw	s0,8(sp)
    27f8:	00412483          	lw	s1,4(sp)
    27fc:	01010113          	addi	sp,sp,16
    2800:	00008067          	ret
    2804:	47c000ef          	jal	ra,2c80 <__sinit>
    2808:	f55ff06f          	j	275c <__swsetup_r+0x2c>
    280c:	00900793          	li	a5,9
    2810:	00f4a023          	sw	a5,0(s1)
    2814:	00c45783          	lhu	a5,12(s0)
    2818:	0407e793          	ori	a5,a5,64
    281c:	00f41623          	sh	a5,12(s0)
    2820:	fff00513          	li	a0,-1
    2824:	fcdff06f          	j	27f0 <__swsetup_r+0xc0>
    2828:	00c45783          	lhu	a5,12(s0)
    282c:	2807f793          	andi	a5,a5,640
    2830:	20000713          	li	a4,512
    2834:	f8e786e3          	beq	a5,a4,27c0 <__swsetup_r+0x90>
    2838:	00040593          	mv	a1,s0
    283c:	00048513          	mv	a0,s1
    2840:	470010ef          	jal	ra,3cb0 <__smakebuf_r>
    2844:	f7dff06f          	j	27c0 <__swsetup_r+0x90>
    2848:	00277693          	andi	a3,a4,2
    284c:	00000613          	li	a2,0
    2850:	00069463          	bnez	a3,2858 <__swsetup_r+0x128>
    2854:	01442603          	lw	a2,20(s0)
    2858:	00c42423          	sw	a2,8(s0)
    285c:	f89ff06f          	j	27e4 <__swsetup_r+0xb4>
    2860:	08077713          	andi	a4,a4,128
    2864:	f80706e3          	beqz	a4,27f0 <__swsetup_r+0xc0>
    2868:	0407e793          	ori	a5,a5,64
    286c:	00f41623          	sh	a5,12(s0)
    2870:	fff00513          	li	a0,-1
    2874:	f7dff06f          	j	27f0 <__swsetup_r+0xc0>

00002878 <abort>:
    2878:	ff010113          	addi	sp,sp,-16
    287c:	00112623          	sw	ra,12(sp)
    2880:	00600513          	li	a0,6
    2884:	209020ef          	jal	ra,528c <raise>
    2888:	00100513          	li	a0,1
    288c:	658030ef          	jal	ra,5ee4 <_exit>

00002890 <__sflush_r>:
    2890:	fe010113          	addi	sp,sp,-32
    2894:	00112e23          	sw	ra,28(sp)
    2898:	00812c23          	sw	s0,24(sp)
    289c:	00912a23          	sw	s1,20(sp)
    28a0:	01212823          	sw	s2,16(sp)
    28a4:	01312623          	sw	s3,12(sp)
    28a8:	00050993          	mv	s3,a0
    28ac:	00058413          	mv	s0,a1
    28b0:	00c59783          	lh	a5,12(a1)
    28b4:	0087f693          	andi	a3,a5,8
    28b8:	14069c63          	bnez	a3,2a10 <__sflush_r+0x180>
    28bc:	00001737          	lui	a4,0x1
    28c0:	80070713          	addi	a4,a4,-2048 # 800 <_nettle_aes_decrypt.part.0+0x154>
    28c4:	00e7e7b3          	or	a5,a5,a4
    28c8:	00f59623          	sh	a5,12(a1)
    28cc:	0045a783          	lw	a5,4(a1)
    28d0:	0cf05663          	blez	a5,299c <__sflush_r+0x10c>
    28d4:	02842783          	lw	a5,40(s0)
    28d8:	1a078863          	beqz	a5,2a88 <__sflush_r+0x1f8>
    28dc:	0009a483          	lw	s1,0(s3)
    28e0:	0009a023          	sw	zero,0(s3)
    28e4:	00c45783          	lhu	a5,12(s0)
    28e8:	00001737          	lui	a4,0x1
    28ec:	00e7f7b3          	and	a5,a5,a4
    28f0:	0a078e63          	beqz	a5,29ac <__sflush_r+0x11c>
    28f4:	05042503          	lw	a0,80(s0)
    28f8:	00c45783          	lhu	a5,12(s0)
    28fc:	0047f793          	andi	a5,a5,4
    2900:	00078e63          	beqz	a5,291c <__sflush_r+0x8c>
    2904:	00442783          	lw	a5,4(s0)
    2908:	40f50533          	sub	a0,a0,a5
    290c:	03042783          	lw	a5,48(s0)
    2910:	00078663          	beqz	a5,291c <__sflush_r+0x8c>
    2914:	03c42783          	lw	a5,60(s0)
    2918:	40f50533          	sub	a0,a0,a5
    291c:	02842783          	lw	a5,40(s0)
    2920:	00000693          	li	a3,0
    2924:	00050613          	mv	a2,a0
    2928:	01c42583          	lw	a1,28(s0)
    292c:	00098513          	mv	a0,s3
    2930:	000780e7          	jalr	a5
    2934:	fff00793          	li	a5,-1
    2938:	16f51463          	bne	a0,a5,2aa0 <__sflush_r+0x210>
    293c:	0009a703          	lw	a4,0(s3)
    2940:	01d00793          	li	a5,29
    2944:	0ae7ee63          	bltu	a5,a4,2a00 <__sflush_r+0x170>
    2948:	204007b7          	lui	a5,0x20400
    294c:	00178793          	addi	a5,a5,1 # 20400001 <heap_end.0+0x203ec425>
    2950:	00e7d7b3          	srl	a5,a5,a4
    2954:	0017f793          	andi	a5,a5,1
    2958:	0a078463          	beqz	a5,2a00 <__sflush_r+0x170>
    295c:	00c45783          	lhu	a5,12(s0)
    2960:	fffff737          	lui	a4,0xfffff
    2964:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.0+0xfffebc23>
    2968:	00e7f7b3          	and	a5,a5,a4
    296c:	01079793          	slli	a5,a5,0x10
    2970:	4107d793          	srai	a5,a5,0x10
    2974:	00f41623          	sh	a5,12(s0)
    2978:	00042223          	sw	zero,4(s0)
    297c:	01042703          	lw	a4,16(s0)
    2980:	00e42023          	sw	a4,0(s0)
    2984:	00c7d793          	srli	a5,a5,0xc
    2988:	0017f793          	andi	a5,a5,1
    298c:	14078663          	beqz	a5,2ad8 <__sflush_r+0x248>
    2990:	0009a783          	lw	a5,0(s3)
    2994:	14079263          	bnez	a5,2ad8 <__sflush_r+0x248>
    2998:	13c0006f          	j	2ad4 <__sflush_r+0x244>
    299c:	03c5a783          	lw	a5,60(a1)
    29a0:	00000513          	li	a0,0
    29a4:	f2f048e3          	bgtz	a5,28d4 <__sflush_r+0x44>
    29a8:	1580006f          	j	2b00 <__sflush_r+0x270>
    29ac:	02842783          	lw	a5,40(s0)
    29b0:	00100693          	li	a3,1
    29b4:	00000613          	li	a2,0
    29b8:	01c42583          	lw	a1,28(s0)
    29bc:	00098513          	mv	a0,s3
    29c0:	000780e7          	jalr	a5
    29c4:	fff00793          	li	a5,-1
    29c8:	f2f518e3          	bne	a0,a5,28f8 <__sflush_r+0x68>
    29cc:	0009a783          	lw	a5,0(s3)
    29d0:	f20784e3          	beqz	a5,28f8 <__sflush_r+0x68>
    29d4:	01d00713          	li	a4,29
    29d8:	00e78e63          	beq	a5,a4,29f4 <__sflush_r+0x164>
    29dc:	01600713          	li	a4,22
    29e0:	00e78a63          	beq	a5,a4,29f4 <__sflush_r+0x164>
    29e4:	00c45783          	lhu	a5,12(s0)
    29e8:	0407e793          	ori	a5,a5,64
    29ec:	00f41623          	sh	a5,12(s0)
    29f0:	1100006f          	j	2b00 <__sflush_r+0x270>
    29f4:	0099a023          	sw	s1,0(s3)
    29f8:	00000513          	li	a0,0
    29fc:	1040006f          	j	2b00 <__sflush_r+0x270>
    2a00:	00c45783          	lhu	a5,12(s0)
    2a04:	0407e793          	ori	a5,a5,64
    2a08:	00f41623          	sh	a5,12(s0)
    2a0c:	0f40006f          	j	2b00 <__sflush_r+0x270>
    2a10:	01079713          	slli	a4,a5,0x10
    2a14:	01075713          	srli	a4,a4,0x10
    2a18:	0105a903          	lw	s2,16(a1)
    2a1c:	06090a63          	beqz	s2,2a90 <__sflush_r+0x200>
    2a20:	0005a483          	lw	s1,0(a1)
    2a24:	412484b3          	sub	s1,s1,s2
    2a28:	0125a023          	sw	s2,0(a1)
    2a2c:	00377713          	andi	a4,a4,3
    2a30:	00000793          	li	a5,0
    2a34:	00071463          	bnez	a4,2a3c <__sflush_r+0x1ac>
    2a38:	0145a783          	lw	a5,20(a1)
    2a3c:	00f42423          	sw	a5,8(s0)
    2a40:	04905c63          	blez	s1,2a98 <__sflush_r+0x208>
    2a44:	02442783          	lw	a5,36(s0)
    2a48:	00048693          	mv	a3,s1
    2a4c:	00090613          	mv	a2,s2
    2a50:	01c42583          	lw	a1,28(s0)
    2a54:	00098513          	mv	a0,s3
    2a58:	000780e7          	jalr	a5
    2a5c:	00a05c63          	blez	a0,2a74 <__sflush_r+0x1e4>
    2a60:	00a90933          	add	s2,s2,a0
    2a64:	40a484b3          	sub	s1,s1,a0
    2a68:	fc904ee3          	bgtz	s1,2a44 <__sflush_r+0x1b4>
    2a6c:	00000513          	li	a0,0
    2a70:	0900006f          	j	2b00 <__sflush_r+0x270>
    2a74:	00c45783          	lhu	a5,12(s0)
    2a78:	0407e793          	ori	a5,a5,64
    2a7c:	00f41623          	sh	a5,12(s0)
    2a80:	fff00513          	li	a0,-1
    2a84:	07c0006f          	j	2b00 <__sflush_r+0x270>
    2a88:	00000513          	li	a0,0
    2a8c:	0740006f          	j	2b00 <__sflush_r+0x270>
    2a90:	00000513          	li	a0,0
    2a94:	06c0006f          	j	2b00 <__sflush_r+0x270>
    2a98:	00000513          	li	a0,0
    2a9c:	0640006f          	j	2b00 <__sflush_r+0x270>
    2aa0:	00c45783          	lhu	a5,12(s0)
    2aa4:	fffff737          	lui	a4,0xfffff
    2aa8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.0+0xfffebc23>
    2aac:	00e7f7b3          	and	a5,a5,a4
    2ab0:	01079793          	slli	a5,a5,0x10
    2ab4:	4107d793          	srai	a5,a5,0x10
    2ab8:	00f41623          	sh	a5,12(s0)
    2abc:	00042223          	sw	zero,4(s0)
    2ac0:	01042703          	lw	a4,16(s0)
    2ac4:	00e42023          	sw	a4,0(s0)
    2ac8:	00c7d793          	srli	a5,a5,0xc
    2acc:	0017f793          	andi	a5,a5,1
    2ad0:	00078463          	beqz	a5,2ad8 <__sflush_r+0x248>
    2ad4:	04a42823          	sw	a0,80(s0)
    2ad8:	0099a023          	sw	s1,0(s3)
    2adc:	03042583          	lw	a1,48(s0)
    2ae0:	00000513          	li	a0,0
    2ae4:	00058e63          	beqz	a1,2b00 <__sflush_r+0x270>
    2ae8:	04040793          	addi	a5,s0,64
    2aec:	00f58663          	beq	a1,a5,2af8 <__sflush_r+0x268>
    2af0:	00098513          	mv	a0,s3
    2af4:	74c000ef          	jal	ra,3240 <_free_r>
    2af8:	02042823          	sw	zero,48(s0)
    2afc:	00000513          	li	a0,0
    2b00:	01c12083          	lw	ra,28(sp)
    2b04:	01812403          	lw	s0,24(sp)
    2b08:	01412483          	lw	s1,20(sp)
    2b0c:	01012903          	lw	s2,16(sp)
    2b10:	00c12983          	lw	s3,12(sp)
    2b14:	02010113          	addi	sp,sp,32
    2b18:	00008067          	ret

00002b1c <_fflush_r>:
    2b1c:	ff010113          	addi	sp,sp,-16
    2b20:	00112623          	sw	ra,12(sp)
    2b24:	00812423          	sw	s0,8(sp)
    2b28:	00912223          	sw	s1,4(sp)
    2b2c:	00050413          	mv	s0,a0
    2b30:	00058493          	mv	s1,a1
    2b34:	00050663          	beqz	a0,2b40 <_fflush_r+0x24>
    2b38:	03852783          	lw	a5,56(a0)
    2b3c:	02078263          	beqz	a5,2b60 <_fflush_r+0x44>
    2b40:	00c49783          	lh	a5,12(s1)
    2b44:	00000513          	li	a0,0
    2b48:	02079063          	bnez	a5,2b68 <_fflush_r+0x4c>
    2b4c:	00c12083          	lw	ra,12(sp)
    2b50:	00812403          	lw	s0,8(sp)
    2b54:	00412483          	lw	s1,4(sp)
    2b58:	01010113          	addi	sp,sp,16
    2b5c:	00008067          	ret
    2b60:	120000ef          	jal	ra,2c80 <__sinit>
    2b64:	fddff06f          	j	2b40 <_fflush_r+0x24>
    2b68:	00048593          	mv	a1,s1
    2b6c:	00040513          	mv	a0,s0
    2b70:	d21ff0ef          	jal	ra,2890 <__sflush_r>
    2b74:	fd9ff06f          	j	2b4c <_fflush_r+0x30>

00002b78 <fflush>:
    2b78:	ff010113          	addi	sp,sp,-16
    2b7c:	00112623          	sw	ra,12(sp)
    2b80:	02050063          	beqz	a0,2ba0 <fflush+0x28>
    2b84:	00050593          	mv	a1,a0
    2b88:	000117b7          	lui	a5,0x11
    2b8c:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    2b90:	f8dff0ef          	jal	ra,2b1c <_fflush_r>
    2b94:	00c12083          	lw	ra,12(sp)
    2b98:	01010113          	addi	sp,sp,16
    2b9c:	00008067          	ret
    2ba0:	000035b7          	lui	a1,0x3
    2ba4:	b1c58593          	addi	a1,a1,-1252 # 2b1c <_fflush_r>
    2ba8:	000117b7          	lui	a5,0x11
    2bac:	bc87a503          	lw	a0,-1080(a5) # 10bc8 <_global_impure_ptr>
    2bb0:	6b9000ef          	jal	ra,3a68 <_fwalk_reent>
    2bb4:	fe1ff06f          	j	2b94 <fflush+0x1c>

00002bb8 <__fp_lock>:
    2bb8:	00000513          	li	a0,0
    2bbc:	00008067          	ret

00002bc0 <__fp_unlock>:
    2bc0:	00000513          	li	a0,0
    2bc4:	00008067          	ret

00002bc8 <_cleanup_r>:
    2bc8:	ff010113          	addi	sp,sp,-16
    2bcc:	00112623          	sw	ra,12(sp)
    2bd0:	000065b7          	lui	a1,0x6
    2bd4:	b0458593          	addi	a1,a1,-1276 # 5b04 <_fclose_r>
    2bd8:	691000ef          	jal	ra,3a68 <_fwalk_reent>
    2bdc:	00c12083          	lw	ra,12(sp)
    2be0:	01010113          	addi	sp,sp,16
    2be4:	00008067          	ret

00002be8 <__sfmoreglue>:
    2be8:	ff010113          	addi	sp,sp,-16
    2bec:	00112623          	sw	ra,12(sp)
    2bf0:	00812423          	sw	s0,8(sp)
    2bf4:	00912223          	sw	s1,4(sp)
    2bf8:	01212023          	sw	s2,0(sp)
    2bfc:	00058913          	mv	s2,a1
    2c00:	fff58793          	addi	a5,a1,-1
    2c04:	00179413          	slli	s0,a5,0x1
    2c08:	00f40433          	add	s0,s0,a5
    2c0c:	00241413          	slli	s0,s0,0x2
    2c10:	00f40433          	add	s0,s0,a5
    2c14:	00341413          	slli	s0,s0,0x3
    2c18:	07440593          	addi	a1,s0,116
    2c1c:	19c010ef          	jal	ra,3db8 <_malloc_r>
    2c20:	00050493          	mv	s1,a0
    2c24:	02050063          	beqz	a0,2c44 <__sfmoreglue+0x5c>
    2c28:	00052023          	sw	zero,0(a0)
    2c2c:	01252223          	sw	s2,4(a0)
    2c30:	00c50513          	addi	a0,a0,12
    2c34:	00a4a423          	sw	a0,8(s1)
    2c38:	06840613          	addi	a2,s0,104
    2c3c:	00000593          	li	a1,0
    2c40:	53d010ef          	jal	ra,497c <memset>
    2c44:	00048513          	mv	a0,s1
    2c48:	00c12083          	lw	ra,12(sp)
    2c4c:	00812403          	lw	s0,8(sp)
    2c50:	00412483          	lw	s1,4(sp)
    2c54:	00012903          	lw	s2,0(sp)
    2c58:	01010113          	addi	sp,sp,16
    2c5c:	00008067          	ret

00002c60 <_cleanup>:
    2c60:	ff010113          	addi	sp,sp,-16
    2c64:	00112623          	sw	ra,12(sp)
    2c68:	000117b7          	lui	a5,0x11
    2c6c:	bc87a503          	lw	a0,-1080(a5) # 10bc8 <_global_impure_ptr>
    2c70:	f59ff0ef          	jal	ra,2bc8 <_cleanup_r>
    2c74:	00c12083          	lw	ra,12(sp)
    2c78:	01010113          	addi	sp,sp,16
    2c7c:	00008067          	ret

00002c80 <__sinit>:
    2c80:	03852783          	lw	a5,56(a0)
    2c84:	00078463          	beqz	a5,2c8c <__sinit+0xc>
    2c88:	00008067          	ret
    2c8c:	fe010113          	addi	sp,sp,-32
    2c90:	00112e23          	sw	ra,28(sp)
    2c94:	00812c23          	sw	s0,24(sp)
    2c98:	00912a23          	sw	s1,20(sp)
    2c9c:	01212823          	sw	s2,16(sp)
    2ca0:	01312623          	sw	s3,12(sp)
    2ca4:	01412423          	sw	s4,8(sp)
    2ca8:	01512223          	sw	s5,4(sp)
    2cac:	01612023          	sw	s6,0(sp)
    2cb0:	00050413          	mv	s0,a0
    2cb4:	000037b7          	lui	a5,0x3
    2cb8:	bc878793          	addi	a5,a5,-1080 # 2bc8 <_cleanup_r>
    2cbc:	02f52e23          	sw	a5,60(a0)
    2cc0:	2e052023          	sw	zero,736(a0)
    2cc4:	00300793          	li	a5,3
    2cc8:	2ef52223          	sw	a5,740(a0)
    2ccc:	2ec50793          	addi	a5,a0,748
    2cd0:	2ef52423          	sw	a5,744(a0)
    2cd4:	00452483          	lw	s1,4(a0)
    2cd8:	0004a023          	sw	zero,0(s1)
    2cdc:	0004a223          	sw	zero,4(s1)
    2ce0:	0004a423          	sw	zero,8(s1)
    2ce4:	00400793          	li	a5,4
    2ce8:	00f49623          	sh	a5,12(s1)
    2cec:	0604a223          	sw	zero,100(s1)
    2cf0:	00049723          	sh	zero,14(s1)
    2cf4:	0004a823          	sw	zero,16(s1)
    2cf8:	0004aa23          	sw	zero,20(s1)
    2cfc:	0004ac23          	sw	zero,24(s1)
    2d00:	00800613          	li	a2,8
    2d04:	00000593          	li	a1,0
    2d08:	05c48513          	addi	a0,s1,92
    2d0c:	471010ef          	jal	ra,497c <memset>
    2d10:	0094ae23          	sw	s1,28(s1)
    2d14:	00005ab7          	lui	s5,0x5
    2d18:	384a8a93          	addi	s5,s5,900 # 5384 <__sread>
    2d1c:	0354a023          	sw	s5,32(s1)
    2d20:	00005a37          	lui	s4,0x5
    2d24:	3dca0a13          	addi	s4,s4,988 # 53dc <__swrite>
    2d28:	0344a223          	sw	s4,36(s1)
    2d2c:	000059b7          	lui	s3,0x5
    2d30:	46898993          	addi	s3,s3,1128 # 5468 <__sseek>
    2d34:	0334a423          	sw	s3,40(s1)
    2d38:	00005937          	lui	s2,0x5
    2d3c:	4c490913          	addi	s2,s2,1220 # 54c4 <__sclose>
    2d40:	0324a623          	sw	s2,44(s1)
    2d44:	00842483          	lw	s1,8(s0)
    2d48:	0004a023          	sw	zero,0(s1)
    2d4c:	0004a223          	sw	zero,4(s1)
    2d50:	0004a423          	sw	zero,8(s1)
    2d54:	00900793          	li	a5,9
    2d58:	00f49623          	sh	a5,12(s1)
    2d5c:	0604a223          	sw	zero,100(s1)
    2d60:	00100b13          	li	s6,1
    2d64:	01649723          	sh	s6,14(s1)
    2d68:	0004a823          	sw	zero,16(s1)
    2d6c:	0004aa23          	sw	zero,20(s1)
    2d70:	0004ac23          	sw	zero,24(s1)
    2d74:	00800613          	li	a2,8
    2d78:	00000593          	li	a1,0
    2d7c:	05c48513          	addi	a0,s1,92
    2d80:	3fd010ef          	jal	ra,497c <memset>
    2d84:	0094ae23          	sw	s1,28(s1)
    2d88:	0354a023          	sw	s5,32(s1)
    2d8c:	0344a223          	sw	s4,36(s1)
    2d90:	0334a423          	sw	s3,40(s1)
    2d94:	0324a623          	sw	s2,44(s1)
    2d98:	00c42483          	lw	s1,12(s0)
    2d9c:	0004a023          	sw	zero,0(s1)
    2da0:	0004a223          	sw	zero,4(s1)
    2da4:	0004a423          	sw	zero,8(s1)
    2da8:	01200793          	li	a5,18
    2dac:	00f49623          	sh	a5,12(s1)
    2db0:	0604a223          	sw	zero,100(s1)
    2db4:	00200793          	li	a5,2
    2db8:	00f49723          	sh	a5,14(s1)
    2dbc:	0004a823          	sw	zero,16(s1)
    2dc0:	0004aa23          	sw	zero,20(s1)
    2dc4:	0004ac23          	sw	zero,24(s1)
    2dc8:	00800613          	li	a2,8
    2dcc:	00000593          	li	a1,0
    2dd0:	05c48513          	addi	a0,s1,92
    2dd4:	3a9010ef          	jal	ra,497c <memset>
    2dd8:	0094ae23          	sw	s1,28(s1)
    2ddc:	0354a023          	sw	s5,32(s1)
    2de0:	0344a223          	sw	s4,36(s1)
    2de4:	0334a423          	sw	s3,40(s1)
    2de8:	0324a623          	sw	s2,44(s1)
    2dec:	03642c23          	sw	s6,56(s0)
    2df0:	01c12083          	lw	ra,28(sp)
    2df4:	01812403          	lw	s0,24(sp)
    2df8:	01412483          	lw	s1,20(sp)
    2dfc:	01012903          	lw	s2,16(sp)
    2e00:	00c12983          	lw	s3,12(sp)
    2e04:	00812a03          	lw	s4,8(sp)
    2e08:	00412a83          	lw	s5,4(sp)
    2e0c:	00012b03          	lw	s6,0(sp)
    2e10:	02010113          	addi	sp,sp,32
    2e14:	00008067          	ret

00002e18 <__sfp>:
    2e18:	fe010113          	addi	sp,sp,-32
    2e1c:	00112e23          	sw	ra,28(sp)
    2e20:	00812c23          	sw	s0,24(sp)
    2e24:	00912a23          	sw	s1,20(sp)
    2e28:	01212823          	sw	s2,16(sp)
    2e2c:	01312623          	sw	s3,12(sp)
    2e30:	00050993          	mv	s3,a0
    2e34:	000117b7          	lui	a5,0x11
    2e38:	bc87a903          	lw	s2,-1080(a5) # 10bc8 <_global_impure_ptr>
    2e3c:	03892783          	lw	a5,56(s2)
    2e40:	00078863          	beqz	a5,2e50 <__sfp+0x38>
    2e44:	2e090913          	addi	s2,s2,736
    2e48:	fff00493          	li	s1,-1
    2e4c:	0800006f          	j	2ecc <__sfp+0xb4>
    2e50:	00090513          	mv	a0,s2
    2e54:	e2dff0ef          	jal	ra,2c80 <__sinit>
    2e58:	fedff06f          	j	2e44 <__sfp+0x2c>
    2e5c:	fff00793          	li	a5,-1
    2e60:	00f41723          	sh	a5,14(s0)
    2e64:	00100793          	li	a5,1
    2e68:	00f41623          	sh	a5,12(s0)
    2e6c:	06042223          	sw	zero,100(s0)
    2e70:	00042023          	sw	zero,0(s0)
    2e74:	00042423          	sw	zero,8(s0)
    2e78:	00042223          	sw	zero,4(s0)
    2e7c:	00042823          	sw	zero,16(s0)
    2e80:	00042a23          	sw	zero,20(s0)
    2e84:	00042c23          	sw	zero,24(s0)
    2e88:	00800613          	li	a2,8
    2e8c:	00000593          	li	a1,0
    2e90:	05c40513          	addi	a0,s0,92
    2e94:	2e9010ef          	jal	ra,497c <memset>
    2e98:	02042823          	sw	zero,48(s0)
    2e9c:	02042a23          	sw	zero,52(s0)
    2ea0:	04042223          	sw	zero,68(s0)
    2ea4:	04042423          	sw	zero,72(s0)
    2ea8:	00040513          	mv	a0,s0
    2eac:	01c12083          	lw	ra,28(sp)
    2eb0:	01812403          	lw	s0,24(sp)
    2eb4:	01412483          	lw	s1,20(sp)
    2eb8:	01012903          	lw	s2,16(sp)
    2ebc:	00c12983          	lw	s3,12(sp)
    2ec0:	02010113          	addi	sp,sp,32
    2ec4:	00008067          	ret
    2ec8:	00092903          	lw	s2,0(s2)
    2ecc:	00892403          	lw	s0,8(s2)
    2ed0:	00492783          	lw	a5,4(s2)
    2ed4:	fff78793          	addi	a5,a5,-1
    2ed8:	0007cc63          	bltz	a5,2ef0 <__sfp+0xd8>
    2edc:	00c41703          	lh	a4,12(s0)
    2ee0:	f6070ee3          	beqz	a4,2e5c <__sfp+0x44>
    2ee4:	06840413          	addi	s0,s0,104
    2ee8:	fff78793          	addi	a5,a5,-1
    2eec:	fe9798e3          	bne	a5,s1,2edc <__sfp+0xc4>
    2ef0:	00092783          	lw	a5,0(s2)
    2ef4:	fc079ae3          	bnez	a5,2ec8 <__sfp+0xb0>
    2ef8:	00400593          	li	a1,4
    2efc:	00098513          	mv	a0,s3
    2f00:	ce9ff0ef          	jal	ra,2be8 <__sfmoreglue>
    2f04:	00050413          	mv	s0,a0
    2f08:	00a92023          	sw	a0,0(s2)
    2f0c:	fa051ee3          	bnez	a0,2ec8 <__sfp+0xb0>
    2f10:	00c00793          	li	a5,12
    2f14:	00f9a023          	sw	a5,0(s3)
    2f18:	f91ff06f          	j	2ea8 <__sfp+0x90>

00002f1c <__sfp_lock_acquire>:
    2f1c:	00008067          	ret

00002f20 <__sfp_lock_release>:
    2f20:	00008067          	ret

00002f24 <__sinit_lock_acquire>:
    2f24:	00008067          	ret

00002f28 <__sinit_lock_release>:
    2f28:	00008067          	ret

00002f2c <__fp_lock_all>:
    2f2c:	ff010113          	addi	sp,sp,-16
    2f30:	00112623          	sw	ra,12(sp)
    2f34:	000035b7          	lui	a1,0x3
    2f38:	bb858593          	addi	a1,a1,-1096 # 2bb8 <__fp_lock>
    2f3c:	000117b7          	lui	a5,0x11
    2f40:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    2f44:	275000ef          	jal	ra,39b8 <_fwalk>
    2f48:	00c12083          	lw	ra,12(sp)
    2f4c:	01010113          	addi	sp,sp,16
    2f50:	00008067          	ret

00002f54 <__fp_unlock_all>:
    2f54:	ff010113          	addi	sp,sp,-16
    2f58:	00112623          	sw	ra,12(sp)
    2f5c:	000035b7          	lui	a1,0x3
    2f60:	bc058593          	addi	a1,a1,-1088 # 2bc0 <__fp_unlock>
    2f64:	000117b7          	lui	a5,0x11
    2f68:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    2f6c:	24d000ef          	jal	ra,39b8 <_fwalk>
    2f70:	00c12083          	lw	ra,12(sp)
    2f74:	01010113          	addi	sp,sp,16
    2f78:	00008067          	ret

00002f7c <__fputwc>:
    2f7c:	fe010113          	addi	sp,sp,-32
    2f80:	00112e23          	sw	ra,28(sp)
    2f84:	00812c23          	sw	s0,24(sp)
    2f88:	00912a23          	sw	s1,20(sp)
    2f8c:	01212823          	sw	s2,16(sp)
    2f90:	00050493          	mv	s1,a0
    2f94:	00058913          	mv	s2,a1
    2f98:	00060413          	mv	s0,a2
    2f9c:	441000ef          	jal	ra,3bdc <__locale_mb_cur_max>
    2fa0:	00100793          	li	a5,1
    2fa4:	00f51c63          	bne	a0,a5,2fbc <__fputwc+0x40>
    2fa8:	fff90793          	addi	a5,s2,-1
    2fac:	0fe00713          	li	a4,254
    2fb0:	00f76663          	bltu	a4,a5,2fbc <__fputwc+0x40>
    2fb4:	01210623          	sb	s2,12(sp)
    2fb8:	0240006f          	j	2fdc <__fputwc+0x60>
    2fbc:	05c40693          	addi	a3,s0,92
    2fc0:	00090613          	mv	a2,s2
    2fc4:	00c10593          	addi	a1,sp,12
    2fc8:	00048513          	mv	a0,s1
    2fcc:	135020ef          	jal	ra,5900 <_wcrtomb_r>
    2fd0:	fff00793          	li	a5,-1
    2fd4:	04f50c63          	beq	a0,a5,302c <__fputwc+0xb0>
    2fd8:	02050c63          	beqz	a0,3010 <__fputwc+0x94>
    2fdc:	00c14583          	lbu	a1,12(sp)
    2fe0:	00842783          	lw	a5,8(s0)
    2fe4:	fff78793          	addi	a5,a5,-1
    2fe8:	00f42423          	sw	a5,8(s0)
    2fec:	0007da63          	bgez	a5,3000 <__fputwc+0x84>
    2ff0:	01842703          	lw	a4,24(s0)
    2ff4:	04e7c463          	blt	a5,a4,303c <__fputwc+0xc0>
    2ff8:	00a00793          	li	a5,10
    2ffc:	04f58063          	beq	a1,a5,303c <__fputwc+0xc0>
    3000:	00042783          	lw	a5,0(s0)
    3004:	00178713          	addi	a4,a5,1
    3008:	00e42023          	sw	a4,0(s0)
    300c:	00b78023          	sb	a1,0(a5)
    3010:	00090513          	mv	a0,s2
    3014:	01c12083          	lw	ra,28(sp)
    3018:	01812403          	lw	s0,24(sp)
    301c:	01412483          	lw	s1,20(sp)
    3020:	01012903          	lw	s2,16(sp)
    3024:	02010113          	addi	sp,sp,32
    3028:	00008067          	ret
    302c:	00c45783          	lhu	a5,12(s0)
    3030:	0407e793          	ori	a5,a5,64
    3034:	00f41623          	sh	a5,12(s0)
    3038:	fddff06f          	j	3014 <__fputwc+0x98>
    303c:	00040613          	mv	a2,s0
    3040:	00048513          	mv	a0,s1
    3044:	74c020ef          	jal	ra,5790 <__swbuf_r>
    3048:	fff00793          	li	a5,-1
    304c:	fcf512e3          	bne	a0,a5,3010 <__fputwc+0x94>
    3050:	fff00513          	li	a0,-1
    3054:	fc1ff06f          	j	3014 <__fputwc+0x98>

00003058 <_fputwc_r>:
    3058:	ff010113          	addi	sp,sp,-16
    305c:	00112623          	sw	ra,12(sp)
    3060:	00c61703          	lh	a4,12(a2)
    3064:	00d75793          	srli	a5,a4,0xd
    3068:	0017f793          	andi	a5,a5,1
    306c:	02079063          	bnez	a5,308c <_fputwc_r+0x34>
    3070:	06462783          	lw	a5,100(a2)
    3074:	000026b7          	lui	a3,0x2
    3078:	00d76733          	or	a4,a4,a3
    307c:	00e61623          	sh	a4,12(a2)
    3080:	00002737          	lui	a4,0x2
    3084:	00e7e7b3          	or	a5,a5,a4
    3088:	06f62223          	sw	a5,100(a2)
    308c:	ef1ff0ef          	jal	ra,2f7c <__fputwc>
    3090:	00c12083          	lw	ra,12(sp)
    3094:	01010113          	addi	sp,sp,16
    3098:	00008067          	ret

0000309c <fputwc>:
    309c:	ff010113          	addi	sp,sp,-16
    30a0:	00112623          	sw	ra,12(sp)
    30a4:	00812423          	sw	s0,8(sp)
    30a8:	00912223          	sw	s1,4(sp)
    30ac:	01212023          	sw	s2,0(sp)
    30b0:	00050413          	mv	s0,a0
    30b4:	00058493          	mv	s1,a1
    30b8:	000117b7          	lui	a5,0x11
    30bc:	bbc7a903          	lw	s2,-1092(a5) # 10bbc <_impure_ptr>
    30c0:	00090663          	beqz	s2,30cc <fputwc+0x30>
    30c4:	03892783          	lw	a5,56(s2)
    30c8:	02078663          	beqz	a5,30f4 <fputwc+0x58>
    30cc:	00048613          	mv	a2,s1
    30d0:	00040593          	mv	a1,s0
    30d4:	00090513          	mv	a0,s2
    30d8:	f81ff0ef          	jal	ra,3058 <_fputwc_r>
    30dc:	00c12083          	lw	ra,12(sp)
    30e0:	00812403          	lw	s0,8(sp)
    30e4:	00412483          	lw	s1,4(sp)
    30e8:	00012903          	lw	s2,0(sp)
    30ec:	01010113          	addi	sp,sp,16
    30f0:	00008067          	ret
    30f4:	00090513          	mv	a0,s2
    30f8:	b89ff0ef          	jal	ra,2c80 <__sinit>
    30fc:	fd1ff06f          	j	30cc <fputwc+0x30>

00003100 <_malloc_trim_r>:
    3100:	fe010113          	addi	sp,sp,-32
    3104:	00112e23          	sw	ra,28(sp)
    3108:	00812c23          	sw	s0,24(sp)
    310c:	00912a23          	sw	s1,20(sp)
    3110:	01212823          	sw	s2,16(sp)
    3114:	01312623          	sw	s3,12(sp)
    3118:	00050993          	mv	s3,a0
    311c:	00058913          	mv	s2,a1
    3120:	139010ef          	jal	ra,4a58 <__malloc_lock>
    3124:	000107b7          	lui	a5,0x10
    3128:	7bc7a783          	lw	a5,1980(a5) # 107bc <__malloc_av_+0x8>
    312c:	0047a483          	lw	s1,4(a5)
    3130:	ffc4f493          	andi	s1,s1,-4
    3134:	000017b7          	lui	a5,0x1
    3138:	fef78413          	addi	s0,a5,-17 # fef <_nettle_aes_invert+0x113>
    313c:	41240433          	sub	s0,s0,s2
    3140:	00940433          	add	s0,s0,s1
    3144:	00c45413          	srli	s0,s0,0xc
    3148:	fff40413          	addi	s0,s0,-1
    314c:	00c41413          	slli	s0,s0,0xc
    3150:	04f44463          	blt	s0,a5,3198 <_malloc_trim_r+0x98>
    3154:	00000593          	li	a1,0
    3158:	00098513          	mv	a0,s3
    315c:	6ad010ef          	jal	ra,5008 <_sbrk_r>
    3160:	000107b7          	lui	a5,0x10
    3164:	7bc7a783          	lw	a5,1980(a5) # 107bc <__malloc_av_+0x8>
    3168:	009787b3          	add	a5,a5,s1
    316c:	02f50e63          	beq	a0,a5,31a8 <_malloc_trim_r+0xa8>
    3170:	00098513          	mv	a0,s3
    3174:	0e9010ef          	jal	ra,4a5c <__malloc_unlock>
    3178:	00000513          	li	a0,0
    317c:	01c12083          	lw	ra,28(sp)
    3180:	01812403          	lw	s0,24(sp)
    3184:	01412483          	lw	s1,20(sp)
    3188:	01012903          	lw	s2,16(sp)
    318c:	00c12983          	lw	s3,12(sp)
    3190:	02010113          	addi	sp,sp,32
    3194:	00008067          	ret
    3198:	00098513          	mv	a0,s3
    319c:	0c1010ef          	jal	ra,4a5c <__malloc_unlock>
    31a0:	00000513          	li	a0,0
    31a4:	fd9ff06f          	j	317c <_malloc_trim_r+0x7c>
    31a8:	408005b3          	neg	a1,s0
    31ac:	00098513          	mv	a0,s3
    31b0:	659010ef          	jal	ra,5008 <_sbrk_r>
    31b4:	fff00793          	li	a5,-1
    31b8:	02f50e63          	beq	a0,a5,31f4 <_malloc_trim_r+0xf4>
    31bc:	000107b7          	lui	a5,0x10
    31c0:	7bc7a783          	lw	a5,1980(a5) # 107bc <__malloc_av_+0x8>
    31c4:	408484b3          	sub	s1,s1,s0
    31c8:	0014e493          	ori	s1,s1,1
    31cc:	0097a223          	sw	s1,4(a5)
    31d0:	000147b7          	lui	a5,0x14
    31d4:	b9878793          	addi	a5,a5,-1128 # 13b98 <__malloc_current_mallinfo>
    31d8:	0007a703          	lw	a4,0(a5)
    31dc:	40870733          	sub	a4,a4,s0
    31e0:	00e7a023          	sw	a4,0(a5)
    31e4:	00098513          	mv	a0,s3
    31e8:	075010ef          	jal	ra,4a5c <__malloc_unlock>
    31ec:	00100513          	li	a0,1
    31f0:	f8dff06f          	j	317c <_malloc_trim_r+0x7c>
    31f4:	00000593          	li	a1,0
    31f8:	00098513          	mv	a0,s3
    31fc:	60d010ef          	jal	ra,5008 <_sbrk_r>
    3200:	000107b7          	lui	a5,0x10
    3204:	7bc7a703          	lw	a4,1980(a5) # 107bc <__malloc_av_+0x8>
    3208:	40e507b3          	sub	a5,a0,a4
    320c:	00f00693          	li	a3,15
    3210:	02f6d063          	bge	a3,a5,3230 <_malloc_trim_r+0x130>
    3214:	000116b7          	lui	a3,0x11
    3218:	bc06a683          	lw	a3,-1088(a3) # 10bc0 <__malloc_sbrk_base>
    321c:	40d50533          	sub	a0,a0,a3
    3220:	000146b7          	lui	a3,0x14
    3224:	b8a6ac23          	sw	a0,-1128(a3) # 13b98 <__malloc_current_mallinfo>
    3228:	0017e793          	ori	a5,a5,1
    322c:	00f72223          	sw	a5,4(a4) # 2004 <_vfiprintf_r+0x990>
    3230:	00098513          	mv	a0,s3
    3234:	029010ef          	jal	ra,4a5c <__malloc_unlock>
    3238:	00000513          	li	a0,0
    323c:	f41ff06f          	j	317c <_malloc_trim_r+0x7c>

00003240 <_free_r>:
    3240:	2e058863          	beqz	a1,3530 <_free_r+0x2f0>
    3244:	ff010113          	addi	sp,sp,-16
    3248:	00112623          	sw	ra,12(sp)
    324c:	00812423          	sw	s0,8(sp)
    3250:	00912223          	sw	s1,4(sp)
    3254:	00050413          	mv	s0,a0
    3258:	00058493          	mv	s1,a1
    325c:	7fc010ef          	jal	ra,4a58 <__malloc_lock>
    3260:	ff848513          	addi	a0,s1,-8
    3264:	ffc4a603          	lw	a2,-4(s1)
    3268:	ffe67793          	andi	a5,a2,-2
    326c:	00f506b3          	add	a3,a0,a5
    3270:	0046a703          	lw	a4,4(a3)
    3274:	ffc77713          	andi	a4,a4,-4
    3278:	000105b7          	lui	a1,0x10
    327c:	7bc5a583          	lw	a1,1980(a1) # 107bc <__malloc_av_+0x8>
    3280:	0ad58863          	beq	a1,a3,3330 <_free_r+0xf0>
    3284:	00e6a223          	sw	a4,4(a3)
    3288:	00167613          	andi	a2,a2,1
    328c:	02061a63          	bnez	a2,32c0 <_free_r+0x80>
    3290:	ff84a603          	lw	a2,-8(s1)
    3294:	40c50833          	sub	a6,a0,a2
    3298:	00c78633          	add	a2,a5,a2
    329c:	00882883          	lw	a7,8(a6)
    32a0:	000105b7          	lui	a1,0x10
    32a4:	7bc58593          	addi	a1,a1,1980 # 107bc <__malloc_av_+0x8>
    32a8:	24b88a63          	beq	a7,a1,34fc <_free_r+0x2bc>
    32ac:	00c82783          	lw	a5,12(a6)
    32b0:	00f8a623          	sw	a5,12(a7)
    32b4:	0117a423          	sw	a7,8(a5)
    32b8:	00060793          	mv	a5,a2
    32bc:	00080513          	mv	a0,a6
    32c0:	00e68633          	add	a2,a3,a4
    32c4:	00462603          	lw	a2,4(a2)
    32c8:	00167613          	andi	a2,a2,1
    32cc:	1c060c63          	beqz	a2,34a4 <_free_r+0x264>
    32d0:	0017e713          	ori	a4,a5,1
    32d4:	00e52223          	sw	a4,4(a0)
    32d8:	00f50733          	add	a4,a0,a5
    32dc:	00f72023          	sw	a5,0(a4)
    32e0:	1ff00713          	li	a4,511
    32e4:	0ef76263          	bltu	a4,a5,33c8 <_free_r+0x188>
    32e8:	00010737          	lui	a4,0x10
    32ec:	7b470713          	addi	a4,a4,1972 # 107b4 <__malloc_av_>
    32f0:	0057d613          	srli	a2,a5,0x5
    32f4:	00100693          	li	a3,1
    32f8:	00c696b3          	sll	a3,a3,a2
    32fc:	00472603          	lw	a2,4(a4)
    3300:	00c6e6b3          	or	a3,a3,a2
    3304:	00d72223          	sw	a3,4(a4)
    3308:	ff87f793          	andi	a5,a5,-8
    330c:	00878793          	addi	a5,a5,8
    3310:	00e787b3          	add	a5,a5,a4
    3314:	0007a703          	lw	a4,0(a5)
    3318:	ff878693          	addi	a3,a5,-8
    331c:	00d52623          	sw	a3,12(a0)
    3320:	00e52423          	sw	a4,8(a0)
    3324:	00a7a023          	sw	a0,0(a5)
    3328:	00a72623          	sw	a0,12(a4)
    332c:	1b40006f          	j	34e0 <_free_r+0x2a0>
    3330:	00e78733          	add	a4,a5,a4
    3334:	00167613          	andi	a2,a2,1
    3338:	02061063          	bnez	a2,3358 <_free_r+0x118>
    333c:	ff84a783          	lw	a5,-8(s1)
    3340:	40f50533          	sub	a0,a0,a5
    3344:	00f70733          	add	a4,a4,a5
    3348:	00c52783          	lw	a5,12(a0)
    334c:	00852683          	lw	a3,8(a0)
    3350:	00f6a623          	sw	a5,12(a3)
    3354:	00d7a423          	sw	a3,8(a5)
    3358:	00176793          	ori	a5,a4,1
    335c:	00f52223          	sw	a5,4(a0)
    3360:	000107b7          	lui	a5,0x10
    3364:	7aa7ae23          	sw	a0,1980(a5) # 107bc <__malloc_av_+0x8>
    3368:	000117b7          	lui	a5,0x11
    336c:	bc47a783          	lw	a5,-1084(a5) # 10bc4 <__malloc_trim_threshold>
    3370:	00f77863          	bgeu	a4,a5,3380 <_free_r+0x140>
    3374:	00040513          	mv	a0,s0
    3378:	6e4010ef          	jal	ra,4a5c <__malloc_unlock>
    337c:	16c0006f          	j	34e8 <_free_r+0x2a8>
    3380:	000147b7          	lui	a5,0x14
    3384:	bd47a583          	lw	a1,-1068(a5) # 13bd4 <__malloc_top_pad>
    3388:	00040513          	mv	a0,s0
    338c:	d75ff0ef          	jal	ra,3100 <_malloc_trim_r>
    3390:	fe5ff06f          	j	3374 <_free_r+0x134>
    3394:	00010737          	lui	a4,0x10
    3398:	7b470713          	addi	a4,a4,1972 # 107b4 <__malloc_av_>
    339c:	00a72a23          	sw	a0,20(a4)
    33a0:	00a72823          	sw	a0,16(a4)
    33a4:	00010737          	lui	a4,0x10
    33a8:	7bc70713          	addi	a4,a4,1980 # 107bc <__malloc_av_+0x8>
    33ac:	00e52623          	sw	a4,12(a0)
    33b0:	00e52423          	sw	a4,8(a0)
    33b4:	0017e713          	ori	a4,a5,1
    33b8:	00e52223          	sw	a4,4(a0)
    33bc:	00f50533          	add	a0,a0,a5
    33c0:	00f52023          	sw	a5,0(a0)
    33c4:	11c0006f          	j	34e0 <_free_r+0x2a0>
    33c8:	0097d713          	srli	a4,a5,0x9
    33cc:	00400693          	li	a3,4
    33d0:	04e6ec63          	bltu	a3,a4,3428 <_free_r+0x1e8>
    33d4:	0067d593          	srli	a1,a5,0x6
    33d8:	03858593          	addi	a1,a1,56
    33dc:	00158713          	addi	a4,a1,1
    33e0:	00371713          	slli	a4,a4,0x3
    33e4:	000106b7          	lui	a3,0x10
    33e8:	7b468693          	addi	a3,a3,1972 # 107b4 <__malloc_av_>
    33ec:	00d70733          	add	a4,a4,a3
    33f0:	ff870613          	addi	a2,a4,-8
    33f4:	00072703          	lw	a4,0(a4)
    33f8:	06e60e63          	beq	a2,a4,3474 <_free_r+0x234>
    33fc:	00472683          	lw	a3,4(a4)
    3400:	ffc6f693          	andi	a3,a3,-4
    3404:	00d7f663          	bgeu	a5,a3,3410 <_free_r+0x1d0>
    3408:	00872703          	lw	a4,8(a4)
    340c:	fee618e3          	bne	a2,a4,33fc <_free_r+0x1bc>
    3410:	00c72603          	lw	a2,12(a4)
    3414:	00c52623          	sw	a2,12(a0)
    3418:	00e52423          	sw	a4,8(a0)
    341c:	00a62423          	sw	a0,8(a2)
    3420:	00a72623          	sw	a0,12(a4)
    3424:	0bc0006f          	j	34e0 <_free_r+0x2a0>
    3428:	01400693          	li	a3,20
    342c:	05b70593          	addi	a1,a4,91
    3430:	fae6f6e3          	bgeu	a3,a4,33dc <_free_r+0x19c>
    3434:	05400693          	li	a3,84
    3438:	00e6e863          	bltu	a3,a4,3448 <_free_r+0x208>
    343c:	00c7d593          	srli	a1,a5,0xc
    3440:	06e58593          	addi	a1,a1,110
    3444:	f99ff06f          	j	33dc <_free_r+0x19c>
    3448:	15400693          	li	a3,340
    344c:	00e6e863          	bltu	a3,a4,345c <_free_r+0x21c>
    3450:	00f7d593          	srli	a1,a5,0xf
    3454:	07758593          	addi	a1,a1,119
    3458:	f85ff06f          	j	33dc <_free_r+0x19c>
    345c:	55400693          	li	a3,1364
    3460:	07e00593          	li	a1,126
    3464:	f6e6ece3          	bltu	a3,a4,33dc <_free_r+0x19c>
    3468:	0127d593          	srli	a1,a5,0x12
    346c:	07c58593          	addi	a1,a1,124
    3470:	f6dff06f          	j	33dc <_free_r+0x19c>
    3474:	00010837          	lui	a6,0x10
    3478:	7b480813          	addi	a6,a6,1972 # 107b4 <__malloc_av_>
    347c:	41f5d793          	srai	a5,a1,0x1f
    3480:	0037f793          	andi	a5,a5,3
    3484:	00b787b3          	add	a5,a5,a1
    3488:	4027d793          	srai	a5,a5,0x2
    348c:	00100693          	li	a3,1
    3490:	00f697b3          	sll	a5,a3,a5
    3494:	00482683          	lw	a3,4(a6)
    3498:	00d7e7b3          	or	a5,a5,a3
    349c:	00f82223          	sw	a5,4(a6)
    34a0:	f75ff06f          	j	3414 <_free_r+0x1d4>
    34a4:	00e787b3          	add	a5,a5,a4
    34a8:	0086a603          	lw	a2,8(a3)
    34ac:	00010737          	lui	a4,0x10
    34b0:	7bc70713          	addi	a4,a4,1980 # 107bc <__malloc_av_+0x8>
    34b4:	eee600e3          	beq	a2,a4,3394 <_free_r+0x154>
    34b8:	00000613          	li	a2,0
    34bc:	00c6a703          	lw	a4,12(a3)
    34c0:	0086a683          	lw	a3,8(a3)
    34c4:	00e6a623          	sw	a4,12(a3)
    34c8:	00d72423          	sw	a3,8(a4)
    34cc:	0017e713          	ori	a4,a5,1
    34d0:	00e52223          	sw	a4,4(a0)
    34d4:	00f50733          	add	a4,a0,a5
    34d8:	00f72023          	sw	a5,0(a4)
    34dc:	e00602e3          	beqz	a2,32e0 <_free_r+0xa0>
    34e0:	00040513          	mv	a0,s0
    34e4:	578010ef          	jal	ra,4a5c <__malloc_unlock>
    34e8:	00c12083          	lw	ra,12(sp)
    34ec:	00812403          	lw	s0,8(sp)
    34f0:	00412483          	lw	s1,4(sp)
    34f4:	01010113          	addi	sp,sp,16
    34f8:	00008067          	ret
    34fc:	00e685b3          	add	a1,a3,a4
    3500:	0045a583          	lw	a1,4(a1)
    3504:	0015f593          	andi	a1,a1,1
    3508:	00059a63          	bnez	a1,351c <_free_r+0x2dc>
    350c:	00c707b3          	add	a5,a4,a2
    3510:	00080513          	mv	a0,a6
    3514:	00100613          	li	a2,1
    3518:	fa5ff06f          	j	34bc <_free_r+0x27c>
    351c:	00166713          	ori	a4,a2,1
    3520:	00e82223          	sw	a4,4(a6)
    3524:	00f507b3          	add	a5,a0,a5
    3528:	00c7a023          	sw	a2,0(a5)
    352c:	fb5ff06f          	j	34e0 <_free_r+0x2a0>
    3530:	00008067          	ret

00003534 <__sfvwrite_r>:
    3534:	00862783          	lw	a5,8(a2)
    3538:	46078863          	beqz	a5,39a8 <__sfvwrite_r+0x474>
    353c:	fc010113          	addi	sp,sp,-64
    3540:	02112e23          	sw	ra,60(sp)
    3544:	02812c23          	sw	s0,56(sp)
    3548:	02912a23          	sw	s1,52(sp)
    354c:	03212823          	sw	s2,48(sp)
    3550:	03312623          	sw	s3,44(sp)
    3554:	03412423          	sw	s4,40(sp)
    3558:	03512223          	sw	s5,36(sp)
    355c:	03612023          	sw	s6,32(sp)
    3560:	01712e23          	sw	s7,28(sp)
    3564:	01812c23          	sw	s8,24(sp)
    3568:	01912a23          	sw	s9,20(sp)
    356c:	01a12823          	sw	s10,16(sp)
    3570:	01b12623          	sw	s11,12(sp)
    3574:	00050b93          	mv	s7,a0
    3578:	00058413          	mv	s0,a1
    357c:	00060a13          	mv	s4,a2
    3580:	00c5d783          	lhu	a5,12(a1)
    3584:	0087f793          	andi	a5,a5,8
    3588:	00078663          	beqz	a5,3594 <__sfvwrite_r+0x60>
    358c:	0105a783          	lw	a5,16(a1)
    3590:	00079a63          	bnez	a5,35a4 <__sfvwrite_r+0x70>
    3594:	00040593          	mv	a1,s0
    3598:	000b8513          	mv	a0,s7
    359c:	994ff0ef          	jal	ra,2730 <__swsetup_r>
    35a0:	40051863          	bnez	a0,39b0 <__sfvwrite_r+0x47c>
    35a4:	000a2483          	lw	s1,0(s4)
    35a8:	00c45783          	lhu	a5,12(s0)
    35ac:	0027f713          	andi	a4,a5,2
    35b0:	06071e63          	bnez	a4,362c <__sfvwrite_r+0xf8>
    35b4:	0017f793          	andi	a5,a5,1
    35b8:	14078063          	beqz	a5,36f8 <__sfvwrite_r+0x1c4>
    35bc:	00000a93          	li	s5,0
    35c0:	00000513          	li	a0,0
    35c4:	00000b13          	li	s6,0
    35c8:	00000993          	li	s3,0
    35cc:	00100c93          	li	s9,1
    35d0:	00000c13          	li	s8,0
    35d4:	27c0006f          	j	3850 <__sfvwrite_r+0x31c>
    35d8:	0004a983          	lw	s3,0(s1)
    35dc:	0044a903          	lw	s2,4(s1)
    35e0:	00848493          	addi	s1,s1,8
    35e4:	fe090ae3          	beqz	s2,35d8 <__sfvwrite_r+0xa4>
    35e8:	00090693          	mv	a3,s2
    35ec:	012af463          	bgeu	s5,s2,35f4 <__sfvwrite_r+0xc0>
    35f0:	000a8693          	mv	a3,s5
    35f4:	02442783          	lw	a5,36(s0)
    35f8:	00098613          	mv	a2,s3
    35fc:	01c42583          	lw	a1,28(s0)
    3600:	000b8513          	mv	a0,s7
    3604:	000780e7          	jalr	a5
    3608:	34a05a63          	blez	a0,395c <__sfvwrite_r+0x428>
    360c:	00a989b3          	add	s3,s3,a0
    3610:	40a90933          	sub	s2,s2,a0
    3614:	008a2783          	lw	a5,8(s4)
    3618:	40a787b3          	sub	a5,a5,a0
    361c:	00fa2423          	sw	a5,8(s4)
    3620:	fc0792e3          	bnez	a5,35e4 <__sfvwrite_r+0xb0>
    3624:	00000513          	li	a0,0
    3628:	3440006f          	j	396c <__sfvwrite_r+0x438>
    362c:	00000993          	li	s3,0
    3630:	00000913          	li	s2,0
    3634:	80000ab7          	lui	s5,0x80000
    3638:	c00aca93          	xori	s5,s5,-1024
    363c:	fa9ff06f          	j	35e4 <__sfvwrite_r+0xb0>
    3640:	0004ab03          	lw	s6,0(s1)
    3644:	0044a903          	lw	s2,4(s1)
    3648:	00848493          	addi	s1,s1,8
    364c:	fe090ae3          	beqz	s2,3640 <__sfvwrite_r+0x10c>
    3650:	00842983          	lw	s3,8(s0)
    3654:	00c45783          	lhu	a5,12(s0)
    3658:	2007f713          	andi	a4,a5,512
    365c:	14070463          	beqz	a4,37a4 <__sfvwrite_r+0x270>
    3660:	0f396a63          	bltu	s2,s3,3754 <__sfvwrite_r+0x220>
    3664:	4807f713          	andi	a4,a5,1152
    3668:	0e070863          	beqz	a4,3758 <__sfvwrite_r+0x224>
    366c:	01042583          	lw	a1,16(s0)
    3670:	00042d03          	lw	s10,0(s0)
    3674:	40bd0d33          	sub	s10,s10,a1
    3678:	01442683          	lw	a3,20(s0)
    367c:	00169713          	slli	a4,a3,0x1
    3680:	00d70733          	add	a4,a4,a3
    3684:	01f75a93          	srli	s5,a4,0x1f
    3688:	00ea8ab3          	add	s5,s5,a4
    368c:	401ada93          	srai	s5,s5,0x1
    3690:	001d0713          	addi	a4,s10,1
    3694:	01270733          	add	a4,a4,s2
    3698:	00eaf463          	bgeu	s5,a4,36a0 <__sfvwrite_r+0x16c>
    369c:	00070a93          	mv	s5,a4
    36a0:	4007f793          	andi	a5,a5,1024
    36a4:	06078c63          	beqz	a5,371c <__sfvwrite_r+0x1e8>
    36a8:	000a8593          	mv	a1,s5
    36ac:	000b8513          	mv	a0,s7
    36b0:	708000ef          	jal	ra,3db8 <_malloc_r>
    36b4:	00050993          	mv	s3,a0
    36b8:	04050c63          	beqz	a0,3710 <__sfvwrite_r+0x1dc>
    36bc:	000d0613          	mv	a2,s10
    36c0:	01042583          	lw	a1,16(s0)
    36c4:	028010ef          	jal	ra,46ec <memcpy>
    36c8:	00c45783          	lhu	a5,12(s0)
    36cc:	b7f7f793          	andi	a5,a5,-1153
    36d0:	0807e793          	ori	a5,a5,128
    36d4:	00f41623          	sh	a5,12(s0)
    36d8:	01342823          	sw	s3,16(s0)
    36dc:	01a989b3          	add	s3,s3,s10
    36e0:	01342023          	sw	s3,0(s0)
    36e4:	01542a23          	sw	s5,20(s0)
    36e8:	00090993          	mv	s3,s2
    36ec:	41aa8ab3          	sub	s5,s5,s10
    36f0:	01542423          	sw	s5,8(s0)
    36f4:	0640006f          	j	3758 <__sfvwrite_r+0x224>
    36f8:	00000b13          	li	s6,0
    36fc:	00000913          	li	s2,0
    3700:	80000c37          	lui	s8,0x80000
    3704:	ffec4c93          	xori	s9,s8,-2
    3708:	fffc4c13          	not	s8,s8
    370c:	f41ff06f          	j	364c <__sfvwrite_r+0x118>
    3710:	00c00793          	li	a5,12
    3714:	00fba023          	sw	a5,0(s7)
    3718:	2440006f          	j	395c <__sfvwrite_r+0x428>
    371c:	000a8613          	mv	a2,s5
    3720:	000b8513          	mv	a0,s7
    3724:	33c010ef          	jal	ra,4a60 <_realloc_r>
    3728:	00050993          	mv	s3,a0
    372c:	fa0516e3          	bnez	a0,36d8 <__sfvwrite_r+0x1a4>
    3730:	01042583          	lw	a1,16(s0)
    3734:	000b8513          	mv	a0,s7
    3738:	b09ff0ef          	jal	ra,3240 <_free_r>
    373c:	00c45783          	lhu	a5,12(s0)
    3740:	f7f7f793          	andi	a5,a5,-129
    3744:	00f41623          	sh	a5,12(s0)
    3748:	00c00793          	li	a5,12
    374c:	00fba023          	sw	a5,0(s7)
    3750:	20c0006f          	j	395c <__sfvwrite_r+0x428>
    3754:	00090993          	mv	s3,s2
    3758:	00098613          	mv	a2,s3
    375c:	000b0593          	mv	a1,s6
    3760:	00042503          	lw	a0,0(s0)
    3764:	104010ef          	jal	ra,4868 <memmove>
    3768:	00842783          	lw	a5,8(s0)
    376c:	413787b3          	sub	a5,a5,s3
    3770:	00f42423          	sw	a5,8(s0)
    3774:	00042783          	lw	a5,0(s0)
    3778:	013787b3          	add	a5,a5,s3
    377c:	00f42023          	sw	a5,0(s0)
    3780:	00090a93          	mv	s5,s2
    3784:	015b0b33          	add	s6,s6,s5
    3788:	41590933          	sub	s2,s2,s5
    378c:	008a2783          	lw	a5,8(s4)
    3790:	415787b3          	sub	a5,a5,s5
    3794:	00fa2423          	sw	a5,8(s4)
    3798:	ea079ae3          	bnez	a5,364c <__sfvwrite_r+0x118>
    379c:	00000513          	li	a0,0
    37a0:	1cc0006f          	j	396c <__sfvwrite_r+0x438>
    37a4:	00042503          	lw	a0,0(s0)
    37a8:	01042783          	lw	a5,16(s0)
    37ac:	00a7e663          	bltu	a5,a0,37b8 <__sfvwrite_r+0x284>
    37b0:	01442a83          	lw	s5,20(s0)
    37b4:	05597663          	bgeu	s2,s5,3800 <__sfvwrite_r+0x2cc>
    37b8:	01397463          	bgeu	s2,s3,37c0 <__sfvwrite_r+0x28c>
    37bc:	00090993          	mv	s3,s2
    37c0:	00098a93          	mv	s5,s3
    37c4:	00098613          	mv	a2,s3
    37c8:	000b0593          	mv	a1,s6
    37cc:	09c010ef          	jal	ra,4868 <memmove>
    37d0:	00842783          	lw	a5,8(s0)
    37d4:	413787b3          	sub	a5,a5,s3
    37d8:	00f42423          	sw	a5,8(s0)
    37dc:	00042703          	lw	a4,0(s0)
    37e0:	01370733          	add	a4,a4,s3
    37e4:	00e42023          	sw	a4,0(s0)
    37e8:	f8079ee3          	bnez	a5,3784 <__sfvwrite_r+0x250>
    37ec:	00040593          	mv	a1,s0
    37f0:	000b8513          	mv	a0,s7
    37f4:	b28ff0ef          	jal	ra,2b1c <_fflush_r>
    37f8:	f80506e3          	beqz	a0,3784 <__sfvwrite_r+0x250>
    37fc:	1600006f          	j	395c <__sfvwrite_r+0x428>
    3800:	000c0513          	mv	a0,s8
    3804:	012ce463          	bltu	s9,s2,380c <__sfvwrite_r+0x2d8>
    3808:	00090513          	mv	a0,s2
    380c:	000a8593          	mv	a1,s5
    3810:	bd5fd0ef          	jal	ra,13e4 <__divsi3>
    3814:	000a8593          	mv	a1,s5
    3818:	43c030ef          	jal	ra,6c54 <__mulsi3>
    381c:	00050693          	mv	a3,a0
    3820:	02442783          	lw	a5,36(s0)
    3824:	000b0613          	mv	a2,s6
    3828:	01c42583          	lw	a1,28(s0)
    382c:	000b8513          	mv	a0,s7
    3830:	000780e7          	jalr	a5
    3834:	00050a93          	mv	s5,a0
    3838:	f4a046e3          	bgtz	a0,3784 <__sfvwrite_r+0x250>
    383c:	1200006f          	j	395c <__sfvwrite_r+0x428>
    3840:	0004ab03          	lw	s6,0(s1)
    3844:	0044a983          	lw	s3,4(s1)
    3848:	00848493          	addi	s1,s1,8
    384c:	000c0513          	mv	a0,s8
    3850:	fe0988e3          	beqz	s3,3840 <__sfvwrite_r+0x30c>
    3854:	06050e63          	beqz	a0,38d0 <__sfvwrite_r+0x39c>
    3858:	000a8d13          	mv	s10,s5
    385c:	0159f463          	bgeu	s3,s5,3864 <__sfvwrite_r+0x330>
    3860:	00098d13          	mv	s10,s3
    3864:	000d0d93          	mv	s11,s10
    3868:	00842903          	lw	s2,8(s0)
    386c:	01442683          	lw	a3,20(s0)
    3870:	00042503          	lw	a0,0(s0)
    3874:	01042783          	lw	a5,16(s0)
    3878:	00a7f663          	bgeu	a5,a0,3884 <__sfvwrite_r+0x350>
    387c:	00d90933          	add	s2,s2,a3
    3880:	07a94a63          	blt	s2,s10,38f4 <__sfvwrite_r+0x3c0>
    3884:	08ddce63          	blt	s11,a3,3920 <__sfvwrite_r+0x3ec>
    3888:	02442783          	lw	a5,36(s0)
    388c:	000b0613          	mv	a2,s6
    3890:	01c42583          	lw	a1,28(s0)
    3894:	000b8513          	mv	a0,s7
    3898:	000780e7          	jalr	a5
    389c:	00050913          	mv	s2,a0
    38a0:	0aa05e63          	blez	a0,395c <__sfvwrite_r+0x428>
    38a4:	412a8ab3          	sub	s5,s5,s2
    38a8:	000c8513          	mv	a0,s9
    38ac:	0a0a8063          	beqz	s5,394c <__sfvwrite_r+0x418>
    38b0:	012b0b33          	add	s6,s6,s2
    38b4:	412989b3          	sub	s3,s3,s2
    38b8:	008a2783          	lw	a5,8(s4)
    38bc:	412787b3          	sub	a5,a5,s2
    38c0:	00fa2423          	sw	a5,8(s4)
    38c4:	f80796e3          	bnez	a5,3850 <__sfvwrite_r+0x31c>
    38c8:	00000513          	li	a0,0
    38cc:	0a00006f          	j	396c <__sfvwrite_r+0x438>
    38d0:	00098613          	mv	a2,s3
    38d4:	00a00593          	li	a1,10
    38d8:	000b0513          	mv	a0,s6
    38dc:	549000ef          	jal	ra,4624 <memchr>
    38e0:	00198a93          	addi	s5,s3,1
    38e4:	f6050ae3          	beqz	a0,3858 <__sfvwrite_r+0x324>
    38e8:	00150513          	addi	a0,a0,1
    38ec:	41650ab3          	sub	s5,a0,s6
    38f0:	f69ff06f          	j	3858 <__sfvwrite_r+0x324>
    38f4:	00090613          	mv	a2,s2
    38f8:	000b0593          	mv	a1,s6
    38fc:	76d000ef          	jal	ra,4868 <memmove>
    3900:	00042783          	lw	a5,0(s0)
    3904:	012787b3          	add	a5,a5,s2
    3908:	00f42023          	sw	a5,0(s0)
    390c:	00040593          	mv	a1,s0
    3910:	000b8513          	mv	a0,s7
    3914:	a08ff0ef          	jal	ra,2b1c <_fflush_r>
    3918:	f80506e3          	beqz	a0,38a4 <__sfvwrite_r+0x370>
    391c:	0400006f          	j	395c <__sfvwrite_r+0x428>
    3920:	000d0613          	mv	a2,s10
    3924:	000b0593          	mv	a1,s6
    3928:	741000ef          	jal	ra,4868 <memmove>
    392c:	00842783          	lw	a5,8(s0)
    3930:	41b787b3          	sub	a5,a5,s11
    3934:	00f42423          	sw	a5,8(s0)
    3938:	00042783          	lw	a5,0(s0)
    393c:	01a787b3          	add	a5,a5,s10
    3940:	00f42023          	sw	a5,0(s0)
    3944:	000d8913          	mv	s2,s11
    3948:	f5dff06f          	j	38a4 <__sfvwrite_r+0x370>
    394c:	00040593          	mv	a1,s0
    3950:	000b8513          	mv	a0,s7
    3954:	9c8ff0ef          	jal	ra,2b1c <_fflush_r>
    3958:	f4050ce3          	beqz	a0,38b0 <__sfvwrite_r+0x37c>
    395c:	00c45783          	lhu	a5,12(s0)
    3960:	0407e793          	ori	a5,a5,64
    3964:	00f41623          	sh	a5,12(s0)
    3968:	fff00513          	li	a0,-1
    396c:	03c12083          	lw	ra,60(sp)
    3970:	03812403          	lw	s0,56(sp)
    3974:	03412483          	lw	s1,52(sp)
    3978:	03012903          	lw	s2,48(sp)
    397c:	02c12983          	lw	s3,44(sp)
    3980:	02812a03          	lw	s4,40(sp)
    3984:	02412a83          	lw	s5,36(sp)
    3988:	02012b03          	lw	s6,32(sp)
    398c:	01c12b83          	lw	s7,28(sp)
    3990:	01812c03          	lw	s8,24(sp)
    3994:	01412c83          	lw	s9,20(sp)
    3998:	01012d03          	lw	s10,16(sp)
    399c:	00c12d83          	lw	s11,12(sp)
    39a0:	04010113          	addi	sp,sp,64
    39a4:	00008067          	ret
    39a8:	00000513          	li	a0,0
    39ac:	00008067          	ret
    39b0:	fff00513          	li	a0,-1
    39b4:	fb9ff06f          	j	396c <__sfvwrite_r+0x438>

000039b8 <_fwalk>:
    39b8:	fe010113          	addi	sp,sp,-32
    39bc:	00112e23          	sw	ra,28(sp)
    39c0:	00812c23          	sw	s0,24(sp)
    39c4:	00912a23          	sw	s1,20(sp)
    39c8:	01212823          	sw	s2,16(sp)
    39cc:	01312623          	sw	s3,12(sp)
    39d0:	01412423          	sw	s4,8(sp)
    39d4:	01512223          	sw	s5,4(sp)
    39d8:	01612023          	sw	s6,0(sp)
    39dc:	00058b13          	mv	s6,a1
    39e0:	2e050a93          	addi	s5,a0,736
    39e4:	00000a13          	li	s4,0
    39e8:	00100993          	li	s3,1
    39ec:	fff00913          	li	s2,-1
    39f0:	0380006f          	j	3a28 <_fwalk+0x70>
    39f4:	06840413          	addi	s0,s0,104
    39f8:	fff48493          	addi	s1,s1,-1
    39fc:	03248263          	beq	s1,s2,3a20 <_fwalk+0x68>
    3a00:	00c45783          	lhu	a5,12(s0)
    3a04:	fef9f8e3          	bgeu	s3,a5,39f4 <_fwalk+0x3c>
    3a08:	00e41783          	lh	a5,14(s0)
    3a0c:	ff2784e3          	beq	a5,s2,39f4 <_fwalk+0x3c>
    3a10:	00040513          	mv	a0,s0
    3a14:	000b00e7          	jalr	s6
    3a18:	00aa6a33          	or	s4,s4,a0
    3a1c:	fd9ff06f          	j	39f4 <_fwalk+0x3c>
    3a20:	000aaa83          	lw	s5,0(s5) # 80000000 <heap_end.0+0x7ffec424>
    3a24:	000a8c63          	beqz	s5,3a3c <_fwalk+0x84>
    3a28:	008aa403          	lw	s0,8(s5)
    3a2c:	004aa483          	lw	s1,4(s5)
    3a30:	fff48493          	addi	s1,s1,-1
    3a34:	fc04d6e3          	bgez	s1,3a00 <_fwalk+0x48>
    3a38:	fe9ff06f          	j	3a20 <_fwalk+0x68>
    3a3c:	000a0513          	mv	a0,s4
    3a40:	01c12083          	lw	ra,28(sp)
    3a44:	01812403          	lw	s0,24(sp)
    3a48:	01412483          	lw	s1,20(sp)
    3a4c:	01012903          	lw	s2,16(sp)
    3a50:	00c12983          	lw	s3,12(sp)
    3a54:	00812a03          	lw	s4,8(sp)
    3a58:	00412a83          	lw	s5,4(sp)
    3a5c:	00012b03          	lw	s6,0(sp)
    3a60:	02010113          	addi	sp,sp,32
    3a64:	00008067          	ret

00003a68 <_fwalk_reent>:
    3a68:	fd010113          	addi	sp,sp,-48
    3a6c:	02112623          	sw	ra,44(sp)
    3a70:	02812423          	sw	s0,40(sp)
    3a74:	02912223          	sw	s1,36(sp)
    3a78:	03212023          	sw	s2,32(sp)
    3a7c:	01312e23          	sw	s3,28(sp)
    3a80:	01412c23          	sw	s4,24(sp)
    3a84:	01512a23          	sw	s5,20(sp)
    3a88:	01612823          	sw	s6,16(sp)
    3a8c:	01712623          	sw	s7,12(sp)
    3a90:	00050b13          	mv	s6,a0
    3a94:	00058b93          	mv	s7,a1
    3a98:	2e050a93          	addi	s5,a0,736
    3a9c:	00000a13          	li	s4,0
    3aa0:	00100993          	li	s3,1
    3aa4:	fff00913          	li	s2,-1
    3aa8:	03c0006f          	j	3ae4 <_fwalk_reent+0x7c>
    3aac:	06840413          	addi	s0,s0,104
    3ab0:	fff48493          	addi	s1,s1,-1
    3ab4:	03248463          	beq	s1,s2,3adc <_fwalk_reent+0x74>
    3ab8:	00c45783          	lhu	a5,12(s0)
    3abc:	fef9f8e3          	bgeu	s3,a5,3aac <_fwalk_reent+0x44>
    3ac0:	00e41783          	lh	a5,14(s0)
    3ac4:	ff2784e3          	beq	a5,s2,3aac <_fwalk_reent+0x44>
    3ac8:	00040593          	mv	a1,s0
    3acc:	000b0513          	mv	a0,s6
    3ad0:	000b80e7          	jalr	s7
    3ad4:	00aa6a33          	or	s4,s4,a0
    3ad8:	fd5ff06f          	j	3aac <_fwalk_reent+0x44>
    3adc:	000aaa83          	lw	s5,0(s5)
    3ae0:	000a8c63          	beqz	s5,3af8 <_fwalk_reent+0x90>
    3ae4:	008aa403          	lw	s0,8(s5)
    3ae8:	004aa483          	lw	s1,4(s5)
    3aec:	fff48493          	addi	s1,s1,-1
    3af0:	fc04d4e3          	bgez	s1,3ab8 <_fwalk_reent+0x50>
    3af4:	fe9ff06f          	j	3adc <_fwalk_reent+0x74>
    3af8:	000a0513          	mv	a0,s4
    3afc:	02c12083          	lw	ra,44(sp)
    3b00:	02812403          	lw	s0,40(sp)
    3b04:	02412483          	lw	s1,36(sp)
    3b08:	02012903          	lw	s2,32(sp)
    3b0c:	01c12983          	lw	s3,28(sp)
    3b10:	01812a03          	lw	s4,24(sp)
    3b14:	01412a83          	lw	s5,20(sp)
    3b18:	01012b03          	lw	s6,16(sp)
    3b1c:	00c12b83          	lw	s7,12(sp)
    3b20:	03010113          	addi	sp,sp,48
    3b24:	00008067          	ret

00003b28 <__localeconv_l>:
    3b28:	0f050513          	addi	a0,a0,240
    3b2c:	00008067          	ret

00003b30 <_localeconv_r>:
    3b30:	00010537          	lui	a0,0x10
    3b34:	73850513          	addi	a0,a0,1848 # 10738 <__global_locale+0xf0>
    3b38:	00008067          	ret

00003b3c <localeconv>:
    3b3c:	00010537          	lui	a0,0x10
    3b40:	73850513          	addi	a0,a0,1848 # 10738 <__global_locale+0xf0>
    3b44:	00008067          	ret

00003b48 <_setlocale_r>:
    3b48:	08060463          	beqz	a2,3bd0 <_setlocale_r+0x88>
    3b4c:	ff010113          	addi	sp,sp,-16
    3b50:	00112623          	sw	ra,12(sp)
    3b54:	00812423          	sw	s0,8(sp)
    3b58:	00060413          	mv	s0,a2
    3b5c:	000135b7          	lui	a1,0x13
    3b60:	6f458593          	addi	a1,a1,1780 # 136f4 <__clz_tab+0x228>
    3b64:	00060513          	mv	a0,a2
    3b68:	179010ef          	jal	ra,54e0 <strcmp>
    3b6c:	00051e63          	bnez	a0,3b88 <_setlocale_r+0x40>
    3b70:	00013537          	lui	a0,0x13
    3b74:	6f050513          	addi	a0,a0,1776 # 136f0 <__clz_tab+0x224>
    3b78:	00c12083          	lw	ra,12(sp)
    3b7c:	00812403          	lw	s0,8(sp)
    3b80:	01010113          	addi	sp,sp,16
    3b84:	00008067          	ret
    3b88:	000135b7          	lui	a1,0x13
    3b8c:	6f058593          	addi	a1,a1,1776 # 136f0 <__clz_tab+0x224>
    3b90:	00040513          	mv	a0,s0
    3b94:	14d010ef          	jal	ra,54e0 <strcmp>
    3b98:	00051863          	bnez	a0,3ba8 <_setlocale_r+0x60>
    3b9c:	00013537          	lui	a0,0x13
    3ba0:	6f050513          	addi	a0,a0,1776 # 136f0 <__clz_tab+0x224>
    3ba4:	fd5ff06f          	j	3b78 <_setlocale_r+0x30>
    3ba8:	000135b7          	lui	a1,0x13
    3bac:	67058593          	addi	a1,a1,1648 # 13670 <__clz_tab+0x1a4>
    3bb0:	00040513          	mv	a0,s0
    3bb4:	12d010ef          	jal	ra,54e0 <strcmp>
    3bb8:	00051863          	bnez	a0,3bc8 <_setlocale_r+0x80>
    3bbc:	00013537          	lui	a0,0x13
    3bc0:	6f050513          	addi	a0,a0,1776 # 136f0 <__clz_tab+0x224>
    3bc4:	fb5ff06f          	j	3b78 <_setlocale_r+0x30>
    3bc8:	00000513          	li	a0,0
    3bcc:	fadff06f          	j	3b78 <_setlocale_r+0x30>
    3bd0:	00013537          	lui	a0,0x13
    3bd4:	6f050513          	addi	a0,a0,1776 # 136f0 <__clz_tab+0x224>
    3bd8:	00008067          	ret

00003bdc <__locale_mb_cur_max>:
    3bdc:	000107b7          	lui	a5,0x10
    3be0:	7707c503          	lbu	a0,1904(a5) # 10770 <__global_locale+0x128>
    3be4:	00008067          	ret

00003be8 <setlocale>:
    3be8:	ff010113          	addi	sp,sp,-16
    3bec:	00112623          	sw	ra,12(sp)
    3bf0:	00058613          	mv	a2,a1
    3bf4:	00050593          	mv	a1,a0
    3bf8:	000117b7          	lui	a5,0x11
    3bfc:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    3c00:	f49ff0ef          	jal	ra,3b48 <_setlocale_r>
    3c04:	00c12083          	lw	ra,12(sp)
    3c08:	01010113          	addi	sp,sp,16
    3c0c:	00008067          	ret

00003c10 <__swhatbuf_r>:
    3c10:	f9010113          	addi	sp,sp,-112
    3c14:	06112623          	sw	ra,108(sp)
    3c18:	06812423          	sw	s0,104(sp)
    3c1c:	06912223          	sw	s1,100(sp)
    3c20:	07212023          	sw	s2,96(sp)
    3c24:	00058413          	mv	s0,a1
    3c28:	00060493          	mv	s1,a2
    3c2c:	00068913          	mv	s2,a3
    3c30:	00e59583          	lh	a1,14(a1)
    3c34:	0405ca63          	bltz	a1,3c88 <__swhatbuf_r+0x78>
    3c38:	00810613          	addi	a2,sp,8
    3c3c:	7dd010ef          	jal	ra,5c18 <_fstat_r>
    3c40:	04054463          	bltz	a0,3c88 <__swhatbuf_r+0x78>
    3c44:	0000f7b7          	lui	a5,0xf
    3c48:	00c12703          	lw	a4,12(sp)
    3c4c:	00e7f7b3          	and	a5,a5,a4
    3c50:	ffffe737          	lui	a4,0xffffe
    3c54:	00e787b3          	add	a5,a5,a4
    3c58:	0017b793          	seqz	a5,a5
    3c5c:	00f92023          	sw	a5,0(s2)
    3c60:	40000793          	li	a5,1024
    3c64:	00001537          	lui	a0,0x1
    3c68:	80050513          	addi	a0,a0,-2048 # 800 <_nettle_aes_decrypt.part.0+0x154>
    3c6c:	00f4a023          	sw	a5,0(s1)
    3c70:	06c12083          	lw	ra,108(sp)
    3c74:	06812403          	lw	s0,104(sp)
    3c78:	06412483          	lw	s1,100(sp)
    3c7c:	06012903          	lw	s2,96(sp)
    3c80:	07010113          	addi	sp,sp,112
    3c84:	00008067          	ret
    3c88:	00092023          	sw	zero,0(s2)
    3c8c:	00c45783          	lhu	a5,12(s0)
    3c90:	0807f793          	andi	a5,a5,128
    3c94:	00078863          	beqz	a5,3ca4 <__swhatbuf_r+0x94>
    3c98:	04000793          	li	a5,64
    3c9c:	00000513          	li	a0,0
    3ca0:	fcdff06f          	j	3c6c <__swhatbuf_r+0x5c>
    3ca4:	40000793          	li	a5,1024
    3ca8:	00000513          	li	a0,0
    3cac:	fc1ff06f          	j	3c6c <__swhatbuf_r+0x5c>

00003cb0 <__smakebuf_r>:
    3cb0:	fe010113          	addi	sp,sp,-32
    3cb4:	00112e23          	sw	ra,28(sp)
    3cb8:	00812c23          	sw	s0,24(sp)
    3cbc:	00912a23          	sw	s1,20(sp)
    3cc0:	01212823          	sw	s2,16(sp)
    3cc4:	00058413          	mv	s0,a1
    3cc8:	00c5d783          	lhu	a5,12(a1)
    3ccc:	0027f793          	andi	a5,a5,2
    3cd0:	02078863          	beqz	a5,3d00 <__smakebuf_r+0x50>
    3cd4:	04358793          	addi	a5,a1,67
    3cd8:	00f5a023          	sw	a5,0(a1)
    3cdc:	00f5a823          	sw	a5,16(a1)
    3ce0:	00100793          	li	a5,1
    3ce4:	00f5aa23          	sw	a5,20(a1)
    3ce8:	01c12083          	lw	ra,28(sp)
    3cec:	01812403          	lw	s0,24(sp)
    3cf0:	01412483          	lw	s1,20(sp)
    3cf4:	01012903          	lw	s2,16(sp)
    3cf8:	02010113          	addi	sp,sp,32
    3cfc:	00008067          	ret
    3d00:	00050493          	mv	s1,a0
    3d04:	00810693          	addi	a3,sp,8
    3d08:	00c10613          	addi	a2,sp,12
    3d0c:	f05ff0ef          	jal	ra,3c10 <__swhatbuf_r>
    3d10:	00050913          	mv	s2,a0
    3d14:	00c12583          	lw	a1,12(sp)
    3d18:	00048513          	mv	a0,s1
    3d1c:	09c000ef          	jal	ra,3db8 <_malloc_r>
    3d20:	04050263          	beqz	a0,3d64 <__smakebuf_r+0xb4>
    3d24:	000037b7          	lui	a5,0x3
    3d28:	bc878793          	addi	a5,a5,-1080 # 2bc8 <_cleanup_r>
    3d2c:	02f4ae23          	sw	a5,60(s1)
    3d30:	00c45783          	lhu	a5,12(s0)
    3d34:	0807e793          	ori	a5,a5,128
    3d38:	00f41623          	sh	a5,12(s0)
    3d3c:	00a42023          	sw	a0,0(s0)
    3d40:	00a42823          	sw	a0,16(s0)
    3d44:	00c12783          	lw	a5,12(sp)
    3d48:	00f42a23          	sw	a5,20(s0)
    3d4c:	00812783          	lw	a5,8(sp)
    3d50:	04079263          	bnez	a5,3d94 <__smakebuf_r+0xe4>
    3d54:	00c45783          	lhu	a5,12(s0)
    3d58:	0127e533          	or	a0,a5,s2
    3d5c:	00a41623          	sh	a0,12(s0)
    3d60:	f89ff06f          	j	3ce8 <__smakebuf_r+0x38>
    3d64:	00c41783          	lh	a5,12(s0)
    3d68:	2007f713          	andi	a4,a5,512
    3d6c:	f6071ee3          	bnez	a4,3ce8 <__smakebuf_r+0x38>
    3d70:	ffc7f793          	andi	a5,a5,-4
    3d74:	0027e793          	ori	a5,a5,2
    3d78:	00f41623          	sh	a5,12(s0)
    3d7c:	04340793          	addi	a5,s0,67
    3d80:	00f42023          	sw	a5,0(s0)
    3d84:	00f42823          	sw	a5,16(s0)
    3d88:	00100793          	li	a5,1
    3d8c:	00f42a23          	sw	a5,20(s0)
    3d90:	f59ff06f          	j	3ce8 <__smakebuf_r+0x38>
    3d94:	00e41583          	lh	a1,14(s0)
    3d98:	00048513          	mv	a0,s1
    3d9c:	6cd010ef          	jal	ra,5c68 <_isatty_r>
    3da0:	fa050ae3          	beqz	a0,3d54 <__smakebuf_r+0xa4>
    3da4:	00c45783          	lhu	a5,12(s0)
    3da8:	ffc7f793          	andi	a5,a5,-4
    3dac:	0017e793          	ori	a5,a5,1
    3db0:	00f41623          	sh	a5,12(s0)
    3db4:	fa1ff06f          	j	3d54 <__smakebuf_r+0xa4>

00003db8 <_malloc_r>:
    3db8:	fd010113          	addi	sp,sp,-48
    3dbc:	02112623          	sw	ra,44(sp)
    3dc0:	02812423          	sw	s0,40(sp)
    3dc4:	02912223          	sw	s1,36(sp)
    3dc8:	03212023          	sw	s2,32(sp)
    3dcc:	01312e23          	sw	s3,28(sp)
    3dd0:	01412c23          	sw	s4,24(sp)
    3dd4:	01512a23          	sw	s5,20(sp)
    3dd8:	01612823          	sw	s6,16(sp)
    3ddc:	01712623          	sw	s7,12(sp)
    3de0:	00050913          	mv	s2,a0
    3de4:	00b58793          	addi	a5,a1,11
    3de8:	01600713          	li	a4,22
    3dec:	74f77263          	bgeu	a4,a5,4530 <_malloc_r+0x778>
    3df0:	ff87f493          	andi	s1,a5,-8
    3df4:	0607ca63          	bltz	a5,3e68 <_malloc_r+0xb0>
    3df8:	06b4e863          	bltu	s1,a1,3e68 <_malloc_r+0xb0>
    3dfc:	45d000ef          	jal	ra,4a58 <__malloc_lock>
    3e00:	1f700793          	li	a5,503
    3e04:	7497f063          	bgeu	a5,s1,4544 <_malloc_r+0x78c>
    3e08:	0094d793          	srli	a5,s1,0x9
    3e0c:	03f00693          	li	a3,63
    3e10:	00078a63          	beqz	a5,3e24 <_malloc_r+0x6c>
    3e14:	00400713          	li	a4,4
    3e18:	08f76c63          	bltu	a4,a5,3eb0 <_malloc_r+0xf8>
    3e1c:	0064d693          	srli	a3,s1,0x6
    3e20:	03868693          	addi	a3,a3,56
    3e24:	00168713          	addi	a4,a3,1
    3e28:	00371713          	slli	a4,a4,0x3
    3e2c:	000107b7          	lui	a5,0x10
    3e30:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    3e34:	00e787b3          	add	a5,a5,a4
    3e38:	ff878613          	addi	a2,a5,-8
    3e3c:	0047a403          	lw	s0,4(a5)
    3e40:	0c860063          	beq	a2,s0,3f00 <_malloc_r+0x148>
    3e44:	00f00593          	li	a1,15
    3e48:	00442783          	lw	a5,4(s0)
    3e4c:	ffc7f793          	andi	a5,a5,-4
    3e50:	40978733          	sub	a4,a5,s1
    3e54:	0ae5c463          	blt	a1,a4,3efc <_malloc_r+0x144>
    3e58:	1e075c63          	bgez	a4,4050 <_malloc_r+0x298>
    3e5c:	00c42403          	lw	s0,12(s0)
    3e60:	fe8614e3          	bne	a2,s0,3e48 <_malloc_r+0x90>
    3e64:	09c0006f          	j	3f00 <_malloc_r+0x148>
    3e68:	00c00793          	li	a5,12
    3e6c:	00f92023          	sw	a5,0(s2)
    3e70:	00000513          	li	a0,0
    3e74:	02c12083          	lw	ra,44(sp)
    3e78:	02812403          	lw	s0,40(sp)
    3e7c:	02412483          	lw	s1,36(sp)
    3e80:	02012903          	lw	s2,32(sp)
    3e84:	01c12983          	lw	s3,28(sp)
    3e88:	01812a03          	lw	s4,24(sp)
    3e8c:	01412a83          	lw	s5,20(sp)
    3e90:	01012b03          	lw	s6,16(sp)
    3e94:	00c12b83          	lw	s7,12(sp)
    3e98:	03010113          	addi	sp,sp,48
    3e9c:	00008067          	ret
    3ea0:	00c7a403          	lw	s0,12(a5)
    3ea4:	00268693          	addi	a3,a3,2
    3ea8:	04878e63          	beq	a5,s0,3f04 <_malloc_r+0x14c>
    3eac:	6b80006f          	j	4564 <_malloc_r+0x7ac>
    3eb0:	01400713          	li	a4,20
    3eb4:	05b78693          	addi	a3,a5,91
    3eb8:	f6f776e3          	bgeu	a4,a5,3e24 <_malloc_r+0x6c>
    3ebc:	05400713          	li	a4,84
    3ec0:	00f76863          	bltu	a4,a5,3ed0 <_malloc_r+0x118>
    3ec4:	00c4d693          	srli	a3,s1,0xc
    3ec8:	06e68693          	addi	a3,a3,110
    3ecc:	f59ff06f          	j	3e24 <_malloc_r+0x6c>
    3ed0:	15400713          	li	a4,340
    3ed4:	00f76863          	bltu	a4,a5,3ee4 <_malloc_r+0x12c>
    3ed8:	00f4d693          	srli	a3,s1,0xf
    3edc:	07768693          	addi	a3,a3,119
    3ee0:	f45ff06f          	j	3e24 <_malloc_r+0x6c>
    3ee4:	55400713          	li	a4,1364
    3ee8:	07e00693          	li	a3,126
    3eec:	f2f76ce3          	bltu	a4,a5,3e24 <_malloc_r+0x6c>
    3ef0:	0124d693          	srli	a3,s1,0x12
    3ef4:	07c68693          	addi	a3,a3,124
    3ef8:	f2dff06f          	j	3e24 <_malloc_r+0x6c>
    3efc:	fff68693          	addi	a3,a3,-1
    3f00:	00168693          	addi	a3,a3,1
    3f04:	000107b7          	lui	a5,0x10
    3f08:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    3f0c:	0107a403          	lw	s0,16(a5)
    3f10:	00878793          	addi	a5,a5,8
    3f14:	08f40063          	beq	s0,a5,3f94 <_malloc_r+0x1dc>
    3f18:	00442583          	lw	a1,4(s0)
    3f1c:	ffc5f593          	andi	a1,a1,-4
    3f20:	409587b3          	sub	a5,a1,s1
    3f24:	00078613          	mv	a2,a5
    3f28:	00f00713          	li	a4,15
    3f2c:	14f74a63          	blt	a4,a5,4080 <_malloc_r+0x2c8>
    3f30:	000107b7          	lui	a5,0x10
    3f34:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    3f38:	00878713          	addi	a4,a5,8
    3f3c:	00e7aa23          	sw	a4,20(a5)
    3f40:	00e7a823          	sw	a4,16(a5)
    3f44:	18065263          	bgez	a2,40c8 <_malloc_r+0x310>
    3f48:	1ff00793          	li	a5,511
    3f4c:	18b7ee63          	bltu	a5,a1,40e8 <_malloc_r+0x330>
    3f50:	000107b7          	lui	a5,0x10
    3f54:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    3f58:	0055d613          	srli	a2,a1,0x5
    3f5c:	00100713          	li	a4,1
    3f60:	00c71733          	sll	a4,a4,a2
    3f64:	0047a603          	lw	a2,4(a5)
    3f68:	00c76733          	or	a4,a4,a2
    3f6c:	00e7a223          	sw	a4,4(a5)
    3f70:	ff85f593          	andi	a1,a1,-8
    3f74:	00858593          	addi	a1,a1,8
    3f78:	00b787b3          	add	a5,a5,a1
    3f7c:	0007a703          	lw	a4,0(a5)
    3f80:	ff878613          	addi	a2,a5,-8
    3f84:	00c42623          	sw	a2,12(s0)
    3f88:	00e42423          	sw	a4,8(s0)
    3f8c:	0087a023          	sw	s0,0(a5)
    3f90:	00872623          	sw	s0,12(a4) # ffffe00c <heap_end.0+0xfffea430>
    3f94:	41f6d793          	srai	a5,a3,0x1f
    3f98:	0037f793          	andi	a5,a5,3
    3f9c:	00d787b3          	add	a5,a5,a3
    3fa0:	4027d793          	srai	a5,a5,0x2
    3fa4:	00100593          	li	a1,1
    3fa8:	00f595b3          	sll	a1,a1,a5
    3fac:	000107b7          	lui	a5,0x10
    3fb0:	7b87a783          	lw	a5,1976(a5) # 107b8 <__malloc_av_+0x4>
    3fb4:	2cb7ec63          	bltu	a5,a1,428c <_malloc_r+0x4d4>
    3fb8:	00b7f733          	and	a4,a5,a1
    3fbc:	02071463          	bnez	a4,3fe4 <_malloc_r+0x22c>
    3fc0:	ffc6f693          	andi	a3,a3,-4
    3fc4:	00468693          	addi	a3,a3,4
    3fc8:	00159593          	slli	a1,a1,0x1
    3fcc:	00b7f733          	and	a4,a5,a1
    3fd0:	00071a63          	bnez	a4,3fe4 <_malloc_r+0x22c>
    3fd4:	00468693          	addi	a3,a3,4
    3fd8:	00159593          	slli	a1,a1,0x1
    3fdc:	00b7f733          	and	a4,a5,a1
    3fe0:	fe070ae3          	beqz	a4,3fd4 <_malloc_r+0x21c>
    3fe4:	00010337          	lui	t1,0x10
    3fe8:	7b430313          	addi	t1,t1,1972 # 107b4 <__malloc_av_>
    3fec:	00f00813          	li	a6,15
    3ff0:	00369893          	slli	a7,a3,0x3
    3ff4:	011308b3          	add	a7,t1,a7
    3ff8:	00088513          	mv	a0,a7
    3ffc:	00068e13          	mv	t3,a3
    4000:	00c52403          	lw	s0,12(a0)
    4004:	02850063          	beq	a0,s0,4024 <_malloc_r+0x26c>
    4008:	00442783          	lw	a5,4(s0)
    400c:	ffc7f793          	andi	a5,a5,-4
    4010:	40978733          	sub	a4,a5,s1
    4014:	1ae84863          	blt	a6,a4,41c4 <_malloc_r+0x40c>
    4018:	20075263          	bgez	a4,421c <_malloc_r+0x464>
    401c:	00c42403          	lw	s0,12(s0)
    4020:	fe8514e3          	bne	a0,s0,4008 <_malloc_r+0x250>
    4024:	00850513          	addi	a0,a0,8
    4028:	001e0e13          	addi	t3,t3,1
    402c:	003e7793          	andi	a5,t3,3
    4030:	fc0798e3          	bnez	a5,4000 <_malloc_r+0x248>
    4034:	0036f793          	andi	a5,a3,3
    4038:	20078a63          	beqz	a5,424c <_malloc_r+0x494>
    403c:	fff68693          	addi	a3,a3,-1
    4040:	ff888893          	addi	a7,a7,-8
    4044:	0088a783          	lw	a5,8(a7)
    4048:	ff1786e3          	beq	a5,a7,4034 <_malloc_r+0x27c>
    404c:	2100006f          	j	425c <_malloc_r+0x4a4>
    4050:	00c42703          	lw	a4,12(s0)
    4054:	00842683          	lw	a3,8(s0)
    4058:	00e6a623          	sw	a4,12(a3)
    405c:	00d72423          	sw	a3,8(a4)
    4060:	00f407b3          	add	a5,s0,a5
    4064:	0047a703          	lw	a4,4(a5)
    4068:	00176713          	ori	a4,a4,1
    406c:	00e7a223          	sw	a4,4(a5)
    4070:	00090513          	mv	a0,s2
    4074:	1e9000ef          	jal	ra,4a5c <__malloc_unlock>
    4078:	00840513          	addi	a0,s0,8
    407c:	df9ff06f          	j	3e74 <_malloc_r+0xbc>
    4080:	009406b3          	add	a3,s0,s1
    4084:	0014e493          	ori	s1,s1,1
    4088:	00942223          	sw	s1,4(s0)
    408c:	00010737          	lui	a4,0x10
    4090:	7b470713          	addi	a4,a4,1972 # 107b4 <__malloc_av_>
    4094:	00d72a23          	sw	a3,20(a4)
    4098:	00d72823          	sw	a3,16(a4)
    409c:	00870713          	addi	a4,a4,8
    40a0:	00e6a623          	sw	a4,12(a3)
    40a4:	00e6a423          	sw	a4,8(a3)
    40a8:	0017e713          	ori	a4,a5,1
    40ac:	00e6a223          	sw	a4,4(a3)
    40b0:	00b405b3          	add	a1,s0,a1
    40b4:	00f5a023          	sw	a5,0(a1)
    40b8:	00090513          	mv	a0,s2
    40bc:	1a1000ef          	jal	ra,4a5c <__malloc_unlock>
    40c0:	00840513          	addi	a0,s0,8
    40c4:	db1ff06f          	j	3e74 <_malloc_r+0xbc>
    40c8:	00b405b3          	add	a1,s0,a1
    40cc:	0045a783          	lw	a5,4(a1)
    40d0:	0017e793          	ori	a5,a5,1
    40d4:	00f5a223          	sw	a5,4(a1)
    40d8:	00090513          	mv	a0,s2
    40dc:	181000ef          	jal	ra,4a5c <__malloc_unlock>
    40e0:	00840513          	addi	a0,s0,8
    40e4:	d91ff06f          	j	3e74 <_malloc_r+0xbc>
    40e8:	0095d793          	srli	a5,a1,0x9
    40ec:	00400713          	li	a4,4
    40f0:	04f76c63          	bltu	a4,a5,4148 <_malloc_r+0x390>
    40f4:	0065d513          	srli	a0,a1,0x6
    40f8:	03850513          	addi	a0,a0,56
    40fc:	00150713          	addi	a4,a0,1
    4100:	00371713          	slli	a4,a4,0x3
    4104:	000107b7          	lui	a5,0x10
    4108:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    410c:	00e787b3          	add	a5,a5,a4
    4110:	ff878613          	addi	a2,a5,-8
    4114:	0007a783          	lw	a5,0(a5)
    4118:	06f60e63          	beq	a2,a5,4194 <_malloc_r+0x3dc>
    411c:	0047a703          	lw	a4,4(a5)
    4120:	ffc77713          	andi	a4,a4,-4
    4124:	00e5f663          	bgeu	a1,a4,4130 <_malloc_r+0x378>
    4128:	0087a783          	lw	a5,8(a5)
    412c:	fef618e3          	bne	a2,a5,411c <_malloc_r+0x364>
    4130:	00c7a603          	lw	a2,12(a5)
    4134:	00c42623          	sw	a2,12(s0)
    4138:	00f42423          	sw	a5,8(s0)
    413c:	00862423          	sw	s0,8(a2)
    4140:	0087a623          	sw	s0,12(a5)
    4144:	e51ff06f          	j	3f94 <_malloc_r+0x1dc>
    4148:	01400713          	li	a4,20
    414c:	05b78513          	addi	a0,a5,91
    4150:	faf776e3          	bgeu	a4,a5,40fc <_malloc_r+0x344>
    4154:	05400713          	li	a4,84
    4158:	00f76863          	bltu	a4,a5,4168 <_malloc_r+0x3b0>
    415c:	00c5d513          	srli	a0,a1,0xc
    4160:	06e50513          	addi	a0,a0,110
    4164:	f99ff06f          	j	40fc <_malloc_r+0x344>
    4168:	15400713          	li	a4,340
    416c:	00f76863          	bltu	a4,a5,417c <_malloc_r+0x3c4>
    4170:	00f5d513          	srli	a0,a1,0xf
    4174:	07750513          	addi	a0,a0,119
    4178:	f85ff06f          	j	40fc <_malloc_r+0x344>
    417c:	55400713          	li	a4,1364
    4180:	07e00513          	li	a0,126
    4184:	f6f76ce3          	bltu	a4,a5,40fc <_malloc_r+0x344>
    4188:	0125d513          	srli	a0,a1,0x12
    418c:	07c50513          	addi	a0,a0,124
    4190:	f6dff06f          	j	40fc <_malloc_r+0x344>
    4194:	00010837          	lui	a6,0x10
    4198:	7b480813          	addi	a6,a6,1972 # 107b4 <__malloc_av_>
    419c:	41f55713          	srai	a4,a0,0x1f
    41a0:	00377713          	andi	a4,a4,3
    41a4:	00a70733          	add	a4,a4,a0
    41a8:	40275713          	srai	a4,a4,0x2
    41ac:	00100593          	li	a1,1
    41b0:	00e59733          	sll	a4,a1,a4
    41b4:	00482583          	lw	a1,4(a6)
    41b8:	00b76733          	or	a4,a4,a1
    41bc:	00e82223          	sw	a4,4(a6)
    41c0:	f75ff06f          	j	4134 <_malloc_r+0x37c>
    41c4:	00940633          	add	a2,s0,s1
    41c8:	0014e493          	ori	s1,s1,1
    41cc:	00942223          	sw	s1,4(s0)
    41d0:	00c42683          	lw	a3,12(s0)
    41d4:	00842583          	lw	a1,8(s0)
    41d8:	00d5a623          	sw	a3,12(a1)
    41dc:	00b6a423          	sw	a1,8(a3)
    41e0:	000106b7          	lui	a3,0x10
    41e4:	7b468693          	addi	a3,a3,1972 # 107b4 <__malloc_av_>
    41e8:	00c6aa23          	sw	a2,20(a3)
    41ec:	00c6a823          	sw	a2,16(a3)
    41f0:	00868693          	addi	a3,a3,8
    41f4:	00d62623          	sw	a3,12(a2)
    41f8:	00d62423          	sw	a3,8(a2)
    41fc:	00176693          	ori	a3,a4,1
    4200:	00d62223          	sw	a3,4(a2)
    4204:	00f407b3          	add	a5,s0,a5
    4208:	00e7a023          	sw	a4,0(a5)
    420c:	00090513          	mv	a0,s2
    4210:	04d000ef          	jal	ra,4a5c <__malloc_unlock>
    4214:	00840513          	addi	a0,s0,8
    4218:	c5dff06f          	j	3e74 <_malloc_r+0xbc>
    421c:	00f407b3          	add	a5,s0,a5
    4220:	0047a703          	lw	a4,4(a5)
    4224:	00176713          	ori	a4,a4,1
    4228:	00e7a223          	sw	a4,4(a5)
    422c:	00c42783          	lw	a5,12(s0)
    4230:	00842703          	lw	a4,8(s0)
    4234:	00f72623          	sw	a5,12(a4)
    4238:	00e7a423          	sw	a4,8(a5)
    423c:	00090513          	mv	a0,s2
    4240:	01d000ef          	jal	ra,4a5c <__malloc_unlock>
    4244:	00840513          	addi	a0,s0,8
    4248:	c2dff06f          	j	3e74 <_malloc_r+0xbc>
    424c:	fff5c713          	not	a4,a1
    4250:	00432783          	lw	a5,4(t1)
    4254:	00e7f7b3          	and	a5,a5,a4
    4258:	00f32223          	sw	a5,4(t1)
    425c:	00159593          	slli	a1,a1,0x1
    4260:	00432703          	lw	a4,4(t1)
    4264:	02b76463          	bltu	a4,a1,428c <_malloc_r+0x4d4>
    4268:	02058263          	beqz	a1,428c <_malloc_r+0x4d4>
    426c:	00b777b3          	and	a5,a4,a1
    4270:	00079a63          	bnez	a5,4284 <_malloc_r+0x4cc>
    4274:	004e0e13          	addi	t3,t3,4
    4278:	00159593          	slli	a1,a1,0x1
    427c:	00b777b3          	and	a5,a4,a1
    4280:	fe078ae3          	beqz	a5,4274 <_malloc_r+0x4bc>
    4284:	000e0693          	mv	a3,t3
    4288:	d69ff06f          	j	3ff0 <_malloc_r+0x238>
    428c:	000107b7          	lui	a5,0x10
    4290:	7bc7aa83          	lw	s5,1980(a5) # 107bc <__malloc_av_+0x8>
    4294:	004aa983          	lw	s3,4(s5)
    4298:	ffc9f993          	andi	s3,s3,-4
    429c:	0099e863          	bltu	s3,s1,42ac <_malloc_r+0x4f4>
    42a0:	409987b3          	sub	a5,s3,s1
    42a4:	00f00713          	li	a4,15
    42a8:	1af74a63          	blt	a4,a5,445c <_malloc_r+0x6a4>
    42ac:	013a8b33          	add	s6,s5,s3
    42b0:	000147b7          	lui	a5,0x14
    42b4:	bd47a403          	lw	s0,-1068(a5) # 13bd4 <__malloc_top_pad>
    42b8:	00848433          	add	s0,s1,s0
    42bc:	000117b7          	lui	a5,0x11
    42c0:	bc07a703          	lw	a4,-1088(a5) # 10bc0 <__malloc_sbrk_base>
    42c4:	fff00793          	li	a5,-1
    42c8:	04f70c63          	beq	a4,a5,4320 <_malloc_r+0x568>
    42cc:	000017b7          	lui	a5,0x1
    42d0:	00f78793          	addi	a5,a5,15 # 100f <_nettle_aes_invert+0x133>
    42d4:	00f40433          	add	s0,s0,a5
    42d8:	fffff7b7          	lui	a5,0xfffff
    42dc:	00f47433          	and	s0,s0,a5
    42e0:	00040593          	mv	a1,s0
    42e4:	00090513          	mv	a0,s2
    42e8:	521000ef          	jal	ra,5008 <_sbrk_r>
    42ec:	00050a13          	mv	s4,a0
    42f0:	fff00793          	li	a5,-1
    42f4:	14f50463          	beq	a0,a5,443c <_malloc_r+0x684>
    42f8:	03657863          	bgeu	a0,s6,4328 <_malloc_r+0x570>
    42fc:	000107b7          	lui	a5,0x10
    4300:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    4304:	12fa9c63          	bne	s5,a5,443c <_malloc_r+0x684>
    4308:	00014737          	lui	a4,0x14
    430c:	b9870713          	addi	a4,a4,-1128 # 13b98 <__malloc_current_mallinfo>
    4310:	00072783          	lw	a5,0(a4)
    4314:	00f407b3          	add	a5,s0,a5
    4318:	00f72023          	sw	a5,0(a4)
    431c:	0240006f          	j	4340 <_malloc_r+0x588>
    4320:	01040413          	addi	s0,s0,16
    4324:	fbdff06f          	j	42e0 <_malloc_r+0x528>
    4328:	00014737          	lui	a4,0x14
    432c:	b9870713          	addi	a4,a4,-1128 # 13b98 <__malloc_current_mallinfo>
    4330:	00072783          	lw	a5,0(a4)
    4334:	00f407b3          	add	a5,s0,a5
    4338:	00f72023          	sw	a5,0(a4)
    433c:	14ab0a63          	beq	s6,a0,4490 <_malloc_r+0x6d8>
    4340:	00011737          	lui	a4,0x11
    4344:	bc072683          	lw	a3,-1088(a4) # 10bc0 <__malloc_sbrk_base>
    4348:	fff00713          	li	a4,-1
    434c:	16e68263          	beq	a3,a4,44b0 <_malloc_r+0x6f8>
    4350:	416a0b33          	sub	s6,s4,s6
    4354:	00fb07b3          	add	a5,s6,a5
    4358:	00014737          	lui	a4,0x14
    435c:	b8f72c23          	sw	a5,-1128(a4) # 13b98 <__malloc_current_mallinfo>
    4360:	007a7b13          	andi	s6,s4,7
    4364:	140b0c63          	beqz	s6,44bc <_malloc_r+0x704>
    4368:	416a0a33          	sub	s4,s4,s6
    436c:	008a0a13          	addi	s4,s4,8
    4370:	008a0bb3          	add	s7,s4,s0
    4374:	00001737          	lui	a4,0x1
    4378:	00870793          	addi	a5,a4,8 # 1008 <_nettle_aes_invert+0x12c>
    437c:	416787b3          	sub	a5,a5,s6
    4380:	417787b3          	sub	a5,a5,s7
    4384:	fff70713          	addi	a4,a4,-1
    4388:	00e7f433          	and	s0,a5,a4
    438c:	00040593          	mv	a1,s0
    4390:	00090513          	mv	a0,s2
    4394:	475000ef          	jal	ra,5008 <_sbrk_r>
    4398:	fff00793          	li	a5,-1
    439c:	14f50863          	beq	a0,a5,44ec <_malloc_r+0x734>
    43a0:	000147b7          	lui	a5,0x14
    43a4:	b9878793          	addi	a5,a5,-1128 # 13b98 <__malloc_current_mallinfo>
    43a8:	0007a703          	lw	a4,0(a5)
    43ac:	00870733          	add	a4,a4,s0
    43b0:	00e7a023          	sw	a4,0(a5)
    43b4:	00010737          	lui	a4,0x10
    43b8:	7b470713          	addi	a4,a4,1972 # 107b4 <__malloc_av_>
    43bc:	01472423          	sw	s4,8(a4)
    43c0:	414507b3          	sub	a5,a0,s4
    43c4:	008787b3          	add	a5,a5,s0
    43c8:	0017e793          	ori	a5,a5,1
    43cc:	00fa2223          	sw	a5,4(s4)
    43d0:	02ea8e63          	beq	s5,a4,440c <_malloc_r+0x654>
    43d4:	00f00793          	li	a5,15
    43d8:	1337f263          	bgeu	a5,s3,44fc <_malloc_r+0x744>
    43dc:	ff498793          	addi	a5,s3,-12
    43e0:	ff87f793          	andi	a5,a5,-8
    43e4:	004aa703          	lw	a4,4(s5)
    43e8:	00177713          	andi	a4,a4,1
    43ec:	00f76733          	or	a4,a4,a5
    43f0:	00eaa223          	sw	a4,4(s5)
    43f4:	00fa8733          	add	a4,s5,a5
    43f8:	00500693          	li	a3,5
    43fc:	00d72223          	sw	a3,4(a4)
    4400:	00d72423          	sw	a3,8(a4)
    4404:	00f00713          	li	a4,15
    4408:	10f76463          	bltu	a4,a5,4510 <_malloc_r+0x758>
    440c:	000147b7          	lui	a5,0x14
    4410:	b987a783          	lw	a5,-1128(a5) # 13b98 <__malloc_current_mallinfo>
    4414:	00014737          	lui	a4,0x14
    4418:	bd072703          	lw	a4,-1072(a4) # 13bd0 <__malloc_max_sbrked_mem>
    441c:	00f77663          	bgeu	a4,a5,4428 <_malloc_r+0x670>
    4420:	00014737          	lui	a4,0x14
    4424:	bcf72823          	sw	a5,-1072(a4) # 13bd0 <__malloc_max_sbrked_mem>
    4428:	00014737          	lui	a4,0x14
    442c:	bcc72703          	lw	a4,-1076(a4) # 13bcc <__malloc_max_total_mem>
    4430:	00f77663          	bgeu	a4,a5,443c <_malloc_r+0x684>
    4434:	00014737          	lui	a4,0x14
    4438:	bcf72623          	sw	a5,-1076(a4) # 13bcc <__malloc_max_total_mem>
    443c:	000107b7          	lui	a5,0x10
    4440:	7bc7a783          	lw	a5,1980(a5) # 107bc <__malloc_av_+0x8>
    4444:	0047a703          	lw	a4,4(a5)
    4448:	ffc77713          	andi	a4,a4,-4
    444c:	409707b3          	sub	a5,a4,s1
    4450:	0c976863          	bltu	a4,s1,4520 <_malloc_r+0x768>
    4454:	00f00713          	li	a4,15
    4458:	0cf75463          	bge	a4,a5,4520 <_malloc_r+0x768>
    445c:	00010737          	lui	a4,0x10
    4460:	7b470713          	addi	a4,a4,1972 # 107b4 <__malloc_av_>
    4464:	00872403          	lw	s0,8(a4)
    4468:	0014e693          	ori	a3,s1,1
    446c:	00d42223          	sw	a3,4(s0)
    4470:	009404b3          	add	s1,s0,s1
    4474:	00972423          	sw	s1,8(a4)
    4478:	0017e793          	ori	a5,a5,1
    447c:	00f4a223          	sw	a5,4(s1)
    4480:	00090513          	mv	a0,s2
    4484:	5d8000ef          	jal	ra,4a5c <__malloc_unlock>
    4488:	00840513          	addi	a0,s0,8
    448c:	9e9ff06f          	j	3e74 <_malloc_r+0xbc>
    4490:	01451713          	slli	a4,a0,0x14
    4494:	ea0716e3          	bnez	a4,4340 <_malloc_r+0x588>
    4498:	000107b7          	lui	a5,0x10
    449c:	7bc7a703          	lw	a4,1980(a5) # 107bc <__malloc_av_+0x8>
    44a0:	008987b3          	add	a5,s3,s0
    44a4:	0017e793          	ori	a5,a5,1
    44a8:	00f72223          	sw	a5,4(a4)
    44ac:	f61ff06f          	j	440c <_malloc_r+0x654>
    44b0:	000117b7          	lui	a5,0x11
    44b4:	bd47a023          	sw	s4,-1088(a5) # 10bc0 <__malloc_sbrk_base>
    44b8:	ea9ff06f          	j	4360 <_malloc_r+0x5a8>
    44bc:	008a0bb3          	add	s7,s4,s0
    44c0:	417007b3          	neg	a5,s7
    44c4:	01479793          	slli	a5,a5,0x14
    44c8:	0147d413          	srli	s0,a5,0x14
    44cc:	00040593          	mv	a1,s0
    44d0:	00090513          	mv	a0,s2
    44d4:	335000ef          	jal	ra,5008 <_sbrk_r>
    44d8:	fff00793          	li	a5,-1
    44dc:	ecf512e3          	bne	a0,a5,43a0 <_malloc_r+0x5e8>
    44e0:	000b8513          	mv	a0,s7
    44e4:	000b0413          	mv	s0,s6
    44e8:	eb9ff06f          	j	43a0 <_malloc_r+0x5e8>
    44ec:	ff8b0513          	addi	a0,s6,-8
    44f0:	00ab8533          	add	a0,s7,a0
    44f4:	00000413          	li	s0,0
    44f8:	ea9ff06f          	j	43a0 <_malloc_r+0x5e8>
    44fc:	000107b7          	lui	a5,0x10
    4500:	7bc7a783          	lw	a5,1980(a5) # 107bc <__malloc_av_+0x8>
    4504:	00100713          	li	a4,1
    4508:	00e7a223          	sw	a4,4(a5)
    450c:	f31ff06f          	j	443c <_malloc_r+0x684>
    4510:	008a8593          	addi	a1,s5,8
    4514:	00090513          	mv	a0,s2
    4518:	d29fe0ef          	jal	ra,3240 <_free_r>
    451c:	ef1ff06f          	j	440c <_malloc_r+0x654>
    4520:	00090513          	mv	a0,s2
    4524:	538000ef          	jal	ra,4a5c <__malloc_unlock>
    4528:	00000513          	li	a0,0
    452c:	949ff06f          	j	3e74 <_malloc_r+0xbc>
    4530:	01000793          	li	a5,16
    4534:	92b7eae3          	bltu	a5,a1,3e68 <_malloc_r+0xb0>
    4538:	00090513          	mv	a0,s2
    453c:	51c000ef          	jal	ra,4a58 <__malloc_lock>
    4540:	01000493          	li	s1,16
    4544:	0034d693          	srli	a3,s1,0x3
    4548:	00848713          	addi	a4,s1,8
    454c:	000107b7          	lui	a5,0x10
    4550:	7b478793          	addi	a5,a5,1972 # 107b4 <__malloc_av_>
    4554:	00e787b3          	add	a5,a5,a4
    4558:	0047a403          	lw	s0,4(a5)
    455c:	ff878713          	addi	a4,a5,-8
    4560:	94e400e3          	beq	s0,a4,3ea0 <_malloc_r+0xe8>
    4564:	00442783          	lw	a5,4(s0)
    4568:	ffc7f793          	andi	a5,a5,-4
    456c:	00c42703          	lw	a4,12(s0)
    4570:	00842683          	lw	a3,8(s0)
    4574:	00e6a623          	sw	a4,12(a3)
    4578:	00d72423          	sw	a3,8(a4)
    457c:	00f407b3          	add	a5,s0,a5
    4580:	0047a703          	lw	a4,4(a5)
    4584:	00176713          	ori	a4,a4,1
    4588:	00e7a223          	sw	a4,4(a5)
    458c:	00090513          	mv	a0,s2
    4590:	4cc000ef          	jal	ra,4a5c <__malloc_unlock>
    4594:	00840513          	addi	a0,s0,8
    4598:	8ddff06f          	j	3e74 <_malloc_r+0xbc>

0000459c <_mbtowc_r>:
    459c:	ff010113          	addi	sp,sp,-16
    45a0:	00112623          	sw	ra,12(sp)
    45a4:	000107b7          	lui	a5,0x10
    45a8:	72c7a783          	lw	a5,1836(a5) # 1072c <__global_locale+0xe4>
    45ac:	000780e7          	jalr	a5
    45b0:	00c12083          	lw	ra,12(sp)
    45b4:	01010113          	addi	sp,sp,16
    45b8:	00008067          	ret

000045bc <__ascii_mbtowc>:
    45bc:	02058063          	beqz	a1,45dc <__ascii_mbtowc+0x20>
    45c0:	04060a63          	beqz	a2,4614 <__ascii_mbtowc+0x58>
    45c4:	04068c63          	beqz	a3,461c <__ascii_mbtowc+0x60>
    45c8:	00064783          	lbu	a5,0(a2)
    45cc:	00f5a023          	sw	a5,0(a1)
    45d0:	00064503          	lbu	a0,0(a2)
    45d4:	00a03533          	snez	a0,a0
    45d8:	00008067          	ret
    45dc:	ff010113          	addi	sp,sp,-16
    45e0:	00c10593          	addi	a1,sp,12
    45e4:	02060063          	beqz	a2,4604 <__ascii_mbtowc+0x48>
    45e8:	02068263          	beqz	a3,460c <__ascii_mbtowc+0x50>
    45ec:	00064783          	lbu	a5,0(a2)
    45f0:	00f5a023          	sw	a5,0(a1)
    45f4:	00064503          	lbu	a0,0(a2)
    45f8:	00a03533          	snez	a0,a0
    45fc:	01010113          	addi	sp,sp,16
    4600:	00008067          	ret
    4604:	00000513          	li	a0,0
    4608:	ff5ff06f          	j	45fc <__ascii_mbtowc+0x40>
    460c:	ffe00513          	li	a0,-2
    4610:	fedff06f          	j	45fc <__ascii_mbtowc+0x40>
    4614:	00000513          	li	a0,0
    4618:	00008067          	ret
    461c:	ffe00513          	li	a0,-2
    4620:	00008067          	ret

00004624 <memchr>:
    4624:	0ff5f693          	zext.b	a3,a1
    4628:	00357793          	andi	a5,a0,3
    462c:	02078a63          	beqz	a5,4660 <memchr+0x3c>
    4630:	fff60793          	addi	a5,a2,-1
    4634:	0a060463          	beqz	a2,46dc <memchr+0xb8>
    4638:	fff00613          	li	a2,-1
    463c:	00054703          	lbu	a4,0(a0)
    4640:	0ad70463          	beq	a4,a3,46e8 <memchr+0xc4>
    4644:	00150513          	addi	a0,a0,1
    4648:	00357713          	andi	a4,a0,3
    464c:	00070c63          	beqz	a4,4664 <memchr+0x40>
    4650:	fff78793          	addi	a5,a5,-1
    4654:	fec794e3          	bne	a5,a2,463c <memchr+0x18>
    4658:	00000513          	li	a0,0
    465c:	00008067          	ret
    4660:	00060793          	mv	a5,a2
    4664:	00300713          	li	a4,3
    4668:	04f77a63          	bgeu	a4,a5,46bc <memchr+0x98>
    466c:	0ff5f593          	zext.b	a1,a1
    4670:	00859713          	slli	a4,a1,0x8
    4674:	00b76733          	or	a4,a4,a1
    4678:	01071893          	slli	a7,a4,0x10
    467c:	00e8e8b3          	or	a7,a7,a4
    4680:	feff0837          	lui	a6,0xfeff0
    4684:	eff80813          	addi	a6,a6,-257 # fefefeff <heap_end.0+0xfefdc323>
    4688:	808085b7          	lui	a1,0x80808
    468c:	08058593          	addi	a1,a1,128 # 80808080 <heap_end.0+0x807f44a4>
    4690:	00300313          	li	t1,3
    4694:	00052703          	lw	a4,0(a0)
    4698:	00e8c733          	xor	a4,a7,a4
    469c:	01070633          	add	a2,a4,a6
    46a0:	fff74713          	not	a4,a4
    46a4:	00e67733          	and	a4,a2,a4
    46a8:	00b77733          	and	a4,a4,a1
    46ac:	00071863          	bnez	a4,46bc <memchr+0x98>
    46b0:	ffc78793          	addi	a5,a5,-4
    46b4:	00450513          	addi	a0,a0,4
    46b8:	fcf36ee3          	bltu	t1,a5,4694 <memchr+0x70>
    46bc:	02078463          	beqz	a5,46e4 <memchr+0xc0>
    46c0:	00f507b3          	add	a5,a0,a5
    46c4:	00054703          	lbu	a4,0(a0)
    46c8:	02d70063          	beq	a4,a3,46e8 <memchr+0xc4>
    46cc:	00150513          	addi	a0,a0,1
    46d0:	fea79ae3          	bne	a5,a0,46c4 <memchr+0xa0>
    46d4:	00000513          	li	a0,0
    46d8:	00008067          	ret
    46dc:	00000513          	li	a0,0
    46e0:	00008067          	ret
    46e4:	00000513          	li	a0,0
    46e8:	00008067          	ret

000046ec <memcpy>:
    46ec:	00c50333          	add	t1,a0,a2
    46f0:	00b547b3          	xor	a5,a0,a1
    46f4:	0037f793          	andi	a5,a5,3
    46f8:	06079663          	bnez	a5,4764 <memcpy+0x78>
    46fc:	00300793          	li	a5,3
    4700:	06c7f263          	bgeu	a5,a2,4764 <memcpy+0x78>
    4704:	00357793          	andi	a5,a0,3
    4708:	00050713          	mv	a4,a0
    470c:	08079863          	bnez	a5,479c <memcpy+0xb0>
    4710:	ffc37813          	andi	a6,t1,-4
    4714:	00080893          	mv	a7,a6
    4718:	40e806b3          	sub	a3,a6,a4
    471c:	02000793          	li	a5,32
    4720:	08d7cc63          	blt	a5,a3,47b8 <memcpy+0xcc>
    4724:	00058693          	mv	a3,a1
    4728:	00070793          	mv	a5,a4
    472c:	03077863          	bgeu	a4,a6,475c <memcpy+0x70>
    4730:	0006a603          	lw	a2,0(a3)
    4734:	00478793          	addi	a5,a5,4
    4738:	00468693          	addi	a3,a3,4
    473c:	fec7ae23          	sw	a2,-4(a5)
    4740:	ff17e8e3          	bltu	a5,a7,4730 <memcpy+0x44>
    4744:	fff80793          	addi	a5,a6,-1
    4748:	40e787b3          	sub	a5,a5,a4
    474c:	ffc7f793          	andi	a5,a5,-4
    4750:	00478793          	addi	a5,a5,4
    4754:	00f70733          	add	a4,a4,a5
    4758:	00f585b3          	add	a1,a1,a5
    475c:	00676863          	bltu	a4,t1,476c <memcpy+0x80>
    4760:	00008067          	ret
    4764:	10657063          	bgeu	a0,t1,4864 <memcpy+0x178>
    4768:	00050713          	mv	a4,a0
    476c:	0005c783          	lbu	a5,0(a1)
    4770:	00170713          	addi	a4,a4,1
    4774:	00158593          	addi	a1,a1,1
    4778:	fef70fa3          	sb	a5,-1(a4)
    477c:	fee318e3          	bne	t1,a4,476c <memcpy+0x80>
    4780:	00008067          	ret
    4784:	0005c783          	lbu	a5,0(a1)
    4788:	00170713          	addi	a4,a4,1
    478c:	00158593          	addi	a1,a1,1
    4790:	fef70fa3          	sb	a5,-1(a4)
    4794:	fee318e3          	bne	t1,a4,4784 <memcpy+0x98>
    4798:	0c00006f          	j	4858 <memcpy+0x16c>
    479c:	0005c783          	lbu	a5,0(a1)
    47a0:	00170713          	addi	a4,a4,1
    47a4:	00158593          	addi	a1,a1,1
    47a8:	fef70fa3          	sb	a5,-1(a4)
    47ac:	00377793          	andi	a5,a4,3
    47b0:	fe0796e3          	bnez	a5,479c <memcpy+0xb0>
    47b4:	f5dff06f          	j	4710 <memcpy+0x24>
    47b8:	ff010113          	addi	sp,sp,-16
    47bc:	00812623          	sw	s0,12(sp)
    47c0:	02000413          	li	s0,32
    47c4:	0005a383          	lw	t2,0(a1)
    47c8:	0045a283          	lw	t0,4(a1)
    47cc:	0085af83          	lw	t6,8(a1)
    47d0:	00c5af03          	lw	t5,12(a1)
    47d4:	0105ae83          	lw	t4,16(a1)
    47d8:	0145ae03          	lw	t3,20(a1)
    47dc:	0185a603          	lw	a2,24(a1)
    47e0:	01c5a683          	lw	a3,28(a1)
    47e4:	02458593          	addi	a1,a1,36
    47e8:	ffc5a783          	lw	a5,-4(a1)
    47ec:	00772023          	sw	t2,0(a4)
    47f0:	00572223          	sw	t0,4(a4)
    47f4:	01f72423          	sw	t6,8(a4)
    47f8:	01e72623          	sw	t5,12(a4)
    47fc:	01d72823          	sw	t4,16(a4)
    4800:	01c72a23          	sw	t3,20(a4)
    4804:	00c72c23          	sw	a2,24(a4)
    4808:	00d72e23          	sw	a3,28(a4)
    480c:	02470713          	addi	a4,a4,36
    4810:	fef72e23          	sw	a5,-4(a4)
    4814:	40e807b3          	sub	a5,a6,a4
    4818:	faf446e3          	blt	s0,a5,47c4 <memcpy+0xd8>
    481c:	00058693          	mv	a3,a1
    4820:	00070793          	mv	a5,a4
    4824:	03177863          	bgeu	a4,a7,4854 <memcpy+0x168>
    4828:	0006a603          	lw	a2,0(a3)
    482c:	00478793          	addi	a5,a5,4
    4830:	00468693          	addi	a3,a3,4
    4834:	fec7ae23          	sw	a2,-4(a5)
    4838:	ff17e8e3          	bltu	a5,a7,4828 <memcpy+0x13c>
    483c:	fff80793          	addi	a5,a6,-1
    4840:	40e787b3          	sub	a5,a5,a4
    4844:	ffc7f793          	andi	a5,a5,-4
    4848:	00478793          	addi	a5,a5,4
    484c:	00f70733          	add	a4,a4,a5
    4850:	00f585b3          	add	a1,a1,a5
    4854:	f26768e3          	bltu	a4,t1,4784 <memcpy+0x98>
    4858:	00c12403          	lw	s0,12(sp)
    485c:	01010113          	addi	sp,sp,16
    4860:	00008067          	ret
    4864:	00008067          	ret

00004868 <memmove>:
    4868:	02a5f663          	bgeu	a1,a0,4894 <memmove+0x2c>
    486c:	00c58733          	add	a4,a1,a2
    4870:	02e57263          	bgeu	a0,a4,4894 <memmove+0x2c>
    4874:	00c507b3          	add	a5,a0,a2
    4878:	10060063          	beqz	a2,4978 <memmove+0x110>
    487c:	fff70713          	addi	a4,a4,-1
    4880:	fff78793          	addi	a5,a5,-1
    4884:	00074683          	lbu	a3,0(a4)
    4888:	00d78023          	sb	a3,0(a5)
    488c:	fef518e3          	bne	a0,a5,487c <memmove+0x14>
    4890:	00008067          	ret
    4894:	00f00793          	li	a5,15
    4898:	00c7fe63          	bgeu	a5,a2,48b4 <memmove+0x4c>
    489c:	00b567b3          	or	a5,a0,a1
    48a0:	0037f793          	andi	a5,a5,3
    48a4:	04078663          	beqz	a5,48f0 <memmove+0x88>
    48a8:	fff60693          	addi	a3,a2,-1
    48ac:	00050793          	mv	a5,a0
    48b0:	0100006f          	j	48c0 <memmove+0x58>
    48b4:	00050793          	mv	a5,a0
    48b8:	fff60693          	addi	a3,a2,-1
    48bc:	02060863          	beqz	a2,48ec <memmove+0x84>
    48c0:	00168693          	addi	a3,a3,1
    48c4:	00d786b3          	add	a3,a5,a3
    48c8:	00158593          	addi	a1,a1,1
    48cc:	00178793          	addi	a5,a5,1
    48d0:	fff5c703          	lbu	a4,-1(a1)
    48d4:	fee78fa3          	sb	a4,-1(a5)
    48d8:	fed798e3          	bne	a5,a3,48c8 <memmove+0x60>
    48dc:	00008067          	ret
    48e0:	00070793          	mv	a5,a4
    48e4:	00068613          	mv	a2,a3
    48e8:	fd1ff06f          	j	48b8 <memmove+0x50>
    48ec:	00008067          	ret
    48f0:	ff060893          	addi	a7,a2,-16
    48f4:	ff08f893          	andi	a7,a7,-16
    48f8:	01088893          	addi	a7,a7,16
    48fc:	01150833          	add	a6,a0,a7
    4900:	00058793          	mv	a5,a1
    4904:	00050713          	mv	a4,a0
    4908:	0007a683          	lw	a3,0(a5)
    490c:	00d72023          	sw	a3,0(a4)
    4910:	0047a683          	lw	a3,4(a5)
    4914:	00d72223          	sw	a3,4(a4)
    4918:	0087a683          	lw	a3,8(a5)
    491c:	00d72423          	sw	a3,8(a4)
    4920:	01078793          	addi	a5,a5,16
    4924:	01070713          	addi	a4,a4,16
    4928:	ffc7a683          	lw	a3,-4(a5)
    492c:	fed72e23          	sw	a3,-4(a4)
    4930:	fce81ce3          	bne	a6,a4,4908 <memmove+0xa0>
    4934:	011585b3          	add	a1,a1,a7
    4938:	00f67693          	andi	a3,a2,15
    493c:	00c67793          	andi	a5,a2,12
    4940:	fa0780e3          	beqz	a5,48e0 <memmove+0x78>
    4944:	ffc68813          	addi	a6,a3,-4
    4948:	ffc87813          	andi	a6,a6,-4
    494c:	00480813          	addi	a6,a6,4
    4950:	010707b3          	add	a5,a4,a6
    4954:	00058693          	mv	a3,a1
    4958:	00468693          	addi	a3,a3,4
    495c:	00470713          	addi	a4,a4,4
    4960:	ffc6a883          	lw	a7,-4(a3)
    4964:	ff172e23          	sw	a7,-4(a4)
    4968:	fef718e3          	bne	a4,a5,4958 <memmove+0xf0>
    496c:	010585b3          	add	a1,a1,a6
    4970:	00367613          	andi	a2,a2,3
    4974:	f45ff06f          	j	48b8 <memmove+0x50>
    4978:	00008067          	ret

0000497c <memset>:
    497c:	00f00313          	li	t1,15
    4980:	00050713          	mv	a4,a0
    4984:	02c37e63          	bgeu	t1,a2,49c0 <memset+0x44>
    4988:	00f77793          	andi	a5,a4,15
    498c:	0a079063          	bnez	a5,4a2c <memset+0xb0>
    4990:	08059263          	bnez	a1,4a14 <memset+0x98>
    4994:	ff067693          	andi	a3,a2,-16
    4998:	00f67613          	andi	a2,a2,15
    499c:	00e686b3          	add	a3,a3,a4
    49a0:	00b72023          	sw	a1,0(a4)
    49a4:	00b72223          	sw	a1,4(a4)
    49a8:	00b72423          	sw	a1,8(a4)
    49ac:	00b72623          	sw	a1,12(a4)
    49b0:	01070713          	addi	a4,a4,16
    49b4:	fed766e3          	bltu	a4,a3,49a0 <memset+0x24>
    49b8:	00061463          	bnez	a2,49c0 <memset+0x44>
    49bc:	00008067          	ret
    49c0:	40c306b3          	sub	a3,t1,a2
    49c4:	00269693          	slli	a3,a3,0x2
    49c8:	00000297          	auipc	t0,0x0
    49cc:	005686b3          	add	a3,a3,t0
    49d0:	00c68067          	jr	12(a3)
    49d4:	00b70723          	sb	a1,14(a4)
    49d8:	00b706a3          	sb	a1,13(a4)
    49dc:	00b70623          	sb	a1,12(a4)
    49e0:	00b705a3          	sb	a1,11(a4)
    49e4:	00b70523          	sb	a1,10(a4)
    49e8:	00b704a3          	sb	a1,9(a4)
    49ec:	00b70423          	sb	a1,8(a4)
    49f0:	00b703a3          	sb	a1,7(a4)
    49f4:	00b70323          	sb	a1,6(a4)
    49f8:	00b702a3          	sb	a1,5(a4)
    49fc:	00b70223          	sb	a1,4(a4)
    4a00:	00b701a3          	sb	a1,3(a4)
    4a04:	00b70123          	sb	a1,2(a4)
    4a08:	00b700a3          	sb	a1,1(a4)
    4a0c:	00b70023          	sb	a1,0(a4)
    4a10:	00008067          	ret
    4a14:	0ff5f593          	zext.b	a1,a1
    4a18:	00859693          	slli	a3,a1,0x8
    4a1c:	00d5e5b3          	or	a1,a1,a3
    4a20:	01059693          	slli	a3,a1,0x10
    4a24:	00d5e5b3          	or	a1,a1,a3
    4a28:	f6dff06f          	j	4994 <memset+0x18>
    4a2c:	00279693          	slli	a3,a5,0x2
    4a30:	00000297          	auipc	t0,0x0
    4a34:	005686b3          	add	a3,a3,t0
    4a38:	00008293          	mv	t0,ra
    4a3c:	fa0680e7          	jalr	-96(a3)
    4a40:	00028093          	mv	ra,t0
    4a44:	ff078793          	addi	a5,a5,-16
    4a48:	40f70733          	sub	a4,a4,a5
    4a4c:	00f60633          	add	a2,a2,a5
    4a50:	f6c378e3          	bgeu	t1,a2,49c0 <memset+0x44>
    4a54:	f3dff06f          	j	4990 <memset+0x14>

00004a58 <__malloc_lock>:
    4a58:	00008067          	ret

00004a5c <__malloc_unlock>:
    4a5c:	00008067          	ret

00004a60 <_realloc_r>:
    4a60:	fd010113          	addi	sp,sp,-48
    4a64:	02112623          	sw	ra,44(sp)
    4a68:	02812423          	sw	s0,40(sp)
    4a6c:	02912223          	sw	s1,36(sp)
    4a70:	03212023          	sw	s2,32(sp)
    4a74:	01312e23          	sw	s3,28(sp)
    4a78:	01412c23          	sw	s4,24(sp)
    4a7c:	01512a23          	sw	s5,20(sp)
    4a80:	01612823          	sw	s6,16(sp)
    4a84:	01712623          	sw	s7,12(sp)
    4a88:	00050a13          	mv	s4,a0
    4a8c:	00060993          	mv	s3,a2
    4a90:	02058c63          	beqz	a1,4ac8 <_realloc_r+0x68>
    4a94:	00058413          	mv	s0,a1
    4a98:	fc1ff0ef          	jal	ra,4a58 <__malloc_lock>
    4a9c:	ffc42783          	lw	a5,-4(s0)
    4aa0:	00b98913          	addi	s2,s3,11
    4aa4:	01600713          	li	a4,22
    4aa8:	03277863          	bgeu	a4,s2,4ad8 <_realloc_r+0x78>
    4aac:	ff897913          	andi	s2,s2,-8
    4ab0:	00090713          	mv	a4,s2
    4ab4:	02095663          	bgez	s2,4ae0 <_realloc_r+0x80>
    4ab8:	00c00793          	li	a5,12
    4abc:	00fa2023          	sw	a5,0(s4)
    4ac0:	00000993          	li	s3,0
    4ac4:	2d80006f          	j	4d9c <_realloc_r+0x33c>
    4ac8:	00060593          	mv	a1,a2
    4acc:	aecff0ef          	jal	ra,3db8 <_malloc_r>
    4ad0:	00050993          	mv	s3,a0
    4ad4:	2c80006f          	j	4d9c <_realloc_r+0x33c>
    4ad8:	01000913          	li	s2,16
    4adc:	01000713          	li	a4,16
    4ae0:	fd396ce3          	bltu	s2,s3,4ab8 <_realloc_r+0x58>
    4ae4:	ff840a93          	addi	s5,s0,-8
    4ae8:	ffc7f493          	andi	s1,a5,-4
    4aec:	26e4dc63          	bge	s1,a4,4d64 <_realloc_r+0x304>
    4af0:	009a86b3          	add	a3,s5,s1
    4af4:	00010637          	lui	a2,0x10
    4af8:	7bc62603          	lw	a2,1980(a2) # 107bc <__malloc_av_+0x8>
    4afc:	42d60e63          	beq	a2,a3,4f38 <_realloc_r+0x4d8>
    4b00:	0046a603          	lw	a2,4(a3)
    4b04:	ffe67593          	andi	a1,a2,-2
    4b08:	00b685b3          	add	a1,a3,a1
    4b0c:	0045a583          	lw	a1,4(a1)
    4b10:	0015f593          	andi	a1,a1,1
    4b14:	36058c63          	beqz	a1,4e8c <_realloc_r+0x42c>
    4b18:	0017f793          	andi	a5,a5,1
    4b1c:	00079e63          	bnez	a5,4b38 <_realloc_r+0xd8>
    4b20:	ff842b83          	lw	s7,-8(s0)
    4b24:	417a8bb3          	sub	s7,s5,s7
    4b28:	004ba783          	lw	a5,4(s7)
    4b2c:	ffc7f793          	andi	a5,a5,-4
    4b30:	00f48b33          	add	s6,s1,a5
    4b34:	14eb5c63          	bge	s6,a4,4c8c <_realloc_r+0x22c>
    4b38:	00098593          	mv	a1,s3
    4b3c:	000a0513          	mv	a0,s4
    4b40:	a78ff0ef          	jal	ra,3db8 <_malloc_r>
    4b44:	00050993          	mv	s3,a0
    4b48:	20050263          	beqz	a0,4d4c <_realloc_r+0x2ec>
    4b4c:	ffc42783          	lw	a5,-4(s0)
    4b50:	ffe7f793          	andi	a5,a5,-2
    4b54:	00fa87b3          	add	a5,s5,a5
    4b58:	ff850713          	addi	a4,a0,-8
    4b5c:	1ee78e63          	beq	a5,a4,4d58 <_realloc_r+0x2f8>
    4b60:	ffc48613          	addi	a2,s1,-4
    4b64:	02400793          	li	a5,36
    4b68:	2cc7ee63          	bltu	a5,a2,4e44 <_realloc_r+0x3e4>
    4b6c:	01300793          	li	a5,19
    4b70:	28c7fe63          	bgeu	a5,a2,4e0c <_realloc_r+0x3ac>
    4b74:	00042783          	lw	a5,0(s0)
    4b78:	00f52023          	sw	a5,0(a0)
    4b7c:	00442783          	lw	a5,4(s0)
    4b80:	00f52223          	sw	a5,4(a0)
    4b84:	01b00793          	li	a5,27
    4b88:	24c7e263          	bltu	a5,a2,4dcc <_realloc_r+0x36c>
    4b8c:	00840713          	addi	a4,s0,8
    4b90:	00850793          	addi	a5,a0,8
    4b94:	2800006f          	j	4e14 <_realloc_r+0x3b4>
    4b98:	012a8ab3          	add	s5,s5,s2
    4b9c:	000107b7          	lui	a5,0x10
    4ba0:	7b57ae23          	sw	s5,1980(a5) # 107bc <__malloc_av_+0x8>
    4ba4:	412607b3          	sub	a5,a2,s2
    4ba8:	0017e793          	ori	a5,a5,1
    4bac:	00faa223          	sw	a5,4(s5)
    4bb0:	ffc42783          	lw	a5,-4(s0)
    4bb4:	0017f793          	andi	a5,a5,1
    4bb8:	0127e7b3          	or	a5,a5,s2
    4bbc:	fef42e23          	sw	a5,-4(s0)
    4bc0:	000a0513          	mv	a0,s4
    4bc4:	e99ff0ef          	jal	ra,4a5c <__malloc_unlock>
    4bc8:	00040993          	mv	s3,s0
    4bcc:	1d00006f          	j	4d9c <_realloc_r+0x33c>
    4bd0:	00c6a783          	lw	a5,12(a3)
    4bd4:	0086a703          	lw	a4,8(a3)
    4bd8:	00f72623          	sw	a5,12(a4)
    4bdc:	00e7a423          	sw	a4,8(a5)
    4be0:	00058493          	mv	s1,a1
    4be4:	1800006f          	j	4d64 <_realloc_r+0x304>
    4be8:	00842783          	lw	a5,8(s0)
    4bec:	00fba823          	sw	a5,16(s7)
    4bf0:	00c42783          	lw	a5,12(s0)
    4bf4:	00fbaa23          	sw	a5,20(s7)
    4bf8:	02400793          	li	a5,36
    4bfc:	00f60863          	beq	a2,a5,4c0c <_realloc_r+0x1ac>
    4c00:	01040413          	addi	s0,s0,16
    4c04:	018b8793          	addi	a5,s7,24
    4c08:	3b40006f          	j	4fbc <_realloc_r+0x55c>
    4c0c:	01042783          	lw	a5,16(s0)
    4c10:	00fbac23          	sw	a5,24(s7)
    4c14:	020b8793          	addi	a5,s7,32
    4c18:	01442703          	lw	a4,20(s0)
    4c1c:	00ebae23          	sw	a4,28(s7)
    4c20:	01840413          	addi	s0,s0,24
    4c24:	3980006f          	j	4fbc <_realloc_r+0x55c>
    4c28:	00040593          	mv	a1,s0
    4c2c:	00098513          	mv	a0,s3
    4c30:	c39ff0ef          	jal	ra,4868 <memmove>
    4c34:	3a00006f          	j	4fd4 <_realloc_r+0x574>
    4c38:	00842783          	lw	a5,8(s0)
    4c3c:	00fba823          	sw	a5,16(s7)
    4c40:	00c42783          	lw	a5,12(s0)
    4c44:	00fbaa23          	sw	a5,20(s7)
    4c48:	02400793          	li	a5,36
    4c4c:	00f60863          	beq	a2,a5,4c5c <_realloc_r+0x1fc>
    4c50:	01040413          	addi	s0,s0,16
    4c54:	018b8513          	addi	a0,s7,24
    4c58:	2bc0006f          	j	4f14 <_realloc_r+0x4b4>
    4c5c:	01042783          	lw	a5,16(s0)
    4c60:	00fbac23          	sw	a5,24(s7)
    4c64:	020b8513          	addi	a0,s7,32
    4c68:	01442783          	lw	a5,20(s0)
    4c6c:	00fbae23          	sw	a5,28(s7)
    4c70:	01840413          	addi	s0,s0,24
    4c74:	2a00006f          	j	4f14 <_realloc_r+0x4b4>
    4c78:	00040593          	mv	a1,s0
    4c7c:	bedff0ef          	jal	ra,4868 <memmove>
    4c80:	000b0493          	mv	s1,s6
    4c84:	000b8a93          	mv	s5,s7
    4c88:	0dc0006f          	j	4d64 <_realloc_r+0x304>
    4c8c:	00cba783          	lw	a5,12(s7)
    4c90:	008ba703          	lw	a4,8(s7)
    4c94:	00f72623          	sw	a5,12(a4)
    4c98:	00e7a423          	sw	a4,8(a5)
    4c9c:	008b8513          	addi	a0,s7,8
    4ca0:	ffc48613          	addi	a2,s1,-4
    4ca4:	02400793          	li	a5,36
    4ca8:	08c7e863          	bltu	a5,a2,4d38 <_realloc_r+0x2d8>
    4cac:	01300793          	li	a5,19
    4cb0:	02c7f263          	bgeu	a5,a2,4cd4 <_realloc_r+0x274>
    4cb4:	00042783          	lw	a5,0(s0)
    4cb8:	00fba423          	sw	a5,8(s7)
    4cbc:	00442783          	lw	a5,4(s0)
    4cc0:	00fba623          	sw	a5,12(s7)
    4cc4:	01b00793          	li	a5,27
    4cc8:	02c7e863          	bltu	a5,a2,4cf8 <_realloc_r+0x298>
    4ccc:	00840413          	addi	s0,s0,8
    4cd0:	010b8513          	addi	a0,s7,16
    4cd4:	00042783          	lw	a5,0(s0)
    4cd8:	00f52023          	sw	a5,0(a0)
    4cdc:	00442783          	lw	a5,4(s0)
    4ce0:	00f52223          	sw	a5,4(a0)
    4ce4:	00842783          	lw	a5,8(s0)
    4ce8:	00f52423          	sw	a5,8(a0)
    4cec:	000b0493          	mv	s1,s6
    4cf0:	000b8a93          	mv	s5,s7
    4cf4:	0700006f          	j	4d64 <_realloc_r+0x304>
    4cf8:	00842783          	lw	a5,8(s0)
    4cfc:	00fba823          	sw	a5,16(s7)
    4d00:	00c42783          	lw	a5,12(s0)
    4d04:	00fbaa23          	sw	a5,20(s7)
    4d08:	02400793          	li	a5,36
    4d0c:	00f60863          	beq	a2,a5,4d1c <_realloc_r+0x2bc>
    4d10:	01040413          	addi	s0,s0,16
    4d14:	018b8513          	addi	a0,s7,24
    4d18:	fbdff06f          	j	4cd4 <_realloc_r+0x274>
    4d1c:	01042783          	lw	a5,16(s0)
    4d20:	00fbac23          	sw	a5,24(s7)
    4d24:	020b8513          	addi	a0,s7,32
    4d28:	01442783          	lw	a5,20(s0)
    4d2c:	00fbae23          	sw	a5,28(s7)
    4d30:	01840413          	addi	s0,s0,24
    4d34:	fa1ff06f          	j	4cd4 <_realloc_r+0x274>
    4d38:	00040593          	mv	a1,s0
    4d3c:	b2dff0ef          	jal	ra,4868 <memmove>
    4d40:	000b0493          	mv	s1,s6
    4d44:	000b8a93          	mv	s5,s7
    4d48:	01c0006f          	j	4d64 <_realloc_r+0x304>
    4d4c:	000a0513          	mv	a0,s4
    4d50:	d0dff0ef          	jal	ra,4a5c <__malloc_unlock>
    4d54:	0480006f          	j	4d9c <_realloc_r+0x33c>
    4d58:	ffc52783          	lw	a5,-4(a0)
    4d5c:	ffc7f793          	andi	a5,a5,-4
    4d60:	00f484b3          	add	s1,s1,a5
    4d64:	412487b3          	sub	a5,s1,s2
    4d68:	00f00713          	li	a4,15
    4d6c:	0ef76263          	bltu	a4,a5,4e50 <_realloc_r+0x3f0>
    4d70:	004aa783          	lw	a5,4(s5)
    4d74:	0017f793          	andi	a5,a5,1
    4d78:	0097e7b3          	or	a5,a5,s1
    4d7c:	00faa223          	sw	a5,4(s5)
    4d80:	009a84b3          	add	s1,s5,s1
    4d84:	0044a783          	lw	a5,4(s1)
    4d88:	0017e793          	ori	a5,a5,1
    4d8c:	00f4a223          	sw	a5,4(s1)
    4d90:	000a0513          	mv	a0,s4
    4d94:	cc9ff0ef          	jal	ra,4a5c <__malloc_unlock>
    4d98:	008a8993          	addi	s3,s5,8
    4d9c:	00098513          	mv	a0,s3
    4da0:	02c12083          	lw	ra,44(sp)
    4da4:	02812403          	lw	s0,40(sp)
    4da8:	02412483          	lw	s1,36(sp)
    4dac:	02012903          	lw	s2,32(sp)
    4db0:	01c12983          	lw	s3,28(sp)
    4db4:	01812a03          	lw	s4,24(sp)
    4db8:	01412a83          	lw	s5,20(sp)
    4dbc:	01012b03          	lw	s6,16(sp)
    4dc0:	00c12b83          	lw	s7,12(sp)
    4dc4:	03010113          	addi	sp,sp,48
    4dc8:	00008067          	ret
    4dcc:	00842783          	lw	a5,8(s0)
    4dd0:	00f52423          	sw	a5,8(a0)
    4dd4:	00c42783          	lw	a5,12(s0)
    4dd8:	00f52623          	sw	a5,12(a0)
    4ddc:	02400793          	li	a5,36
    4de0:	00f60863          	beq	a2,a5,4df0 <_realloc_r+0x390>
    4de4:	01040713          	addi	a4,s0,16
    4de8:	01050793          	addi	a5,a0,16
    4dec:	0280006f          	j	4e14 <_realloc_r+0x3b4>
    4df0:	01042783          	lw	a5,16(s0)
    4df4:	00f52823          	sw	a5,16(a0)
    4df8:	01840713          	addi	a4,s0,24
    4dfc:	01850793          	addi	a5,a0,24
    4e00:	01442683          	lw	a3,20(s0)
    4e04:	00d52a23          	sw	a3,20(a0)
    4e08:	00c0006f          	j	4e14 <_realloc_r+0x3b4>
    4e0c:	00050793          	mv	a5,a0
    4e10:	00040713          	mv	a4,s0
    4e14:	00072683          	lw	a3,0(a4)
    4e18:	00d7a023          	sw	a3,0(a5)
    4e1c:	00472683          	lw	a3,4(a4)
    4e20:	00d7a223          	sw	a3,4(a5)
    4e24:	00872703          	lw	a4,8(a4)
    4e28:	00e7a423          	sw	a4,8(a5)
    4e2c:	00040593          	mv	a1,s0
    4e30:	000a0513          	mv	a0,s4
    4e34:	c0cfe0ef          	jal	ra,3240 <_free_r>
    4e38:	000a0513          	mv	a0,s4
    4e3c:	c21ff0ef          	jal	ra,4a5c <__malloc_unlock>
    4e40:	f5dff06f          	j	4d9c <_realloc_r+0x33c>
    4e44:	00040593          	mv	a1,s0
    4e48:	a21ff0ef          	jal	ra,4868 <memmove>
    4e4c:	fe1ff06f          	j	4e2c <_realloc_r+0x3cc>
    4e50:	012a85b3          	add	a1,s5,s2
    4e54:	004aa703          	lw	a4,4(s5)
    4e58:	00177713          	andi	a4,a4,1
    4e5c:	01276733          	or	a4,a4,s2
    4e60:	00eaa223          	sw	a4,4(s5)
    4e64:	0017e793          	ori	a5,a5,1
    4e68:	00f5a223          	sw	a5,4(a1)
    4e6c:	009a84b3          	add	s1,s5,s1
    4e70:	0044a783          	lw	a5,4(s1)
    4e74:	0017e793          	ori	a5,a5,1
    4e78:	00f4a223          	sw	a5,4(s1)
    4e7c:	00858593          	addi	a1,a1,8
    4e80:	000a0513          	mv	a0,s4
    4e84:	bbcfe0ef          	jal	ra,3240 <_free_r>
    4e88:	f09ff06f          	j	4d90 <_realloc_r+0x330>
    4e8c:	ffc67613          	andi	a2,a2,-4
    4e90:	00c485b3          	add	a1,s1,a2
    4e94:	d2e5dee3          	bge	a1,a4,4bd0 <_realloc_r+0x170>
    4e98:	0017f793          	andi	a5,a5,1
    4e9c:	c8079ee3          	bnez	a5,4b38 <_realloc_r+0xd8>
    4ea0:	ff842b83          	lw	s7,-8(s0)
    4ea4:	417a8bb3          	sub	s7,s5,s7
    4ea8:	004ba783          	lw	a5,4(s7)
    4eac:	ffc7f793          	andi	a5,a5,-4
    4eb0:	00c78633          	add	a2,a5,a2
    4eb4:	00960b33          	add	s6,a2,s1
    4eb8:	c6eb4ce3          	blt	s6,a4,4b30 <_realloc_r+0xd0>
    4ebc:	00c6a783          	lw	a5,12(a3)
    4ec0:	0086a703          	lw	a4,8(a3)
    4ec4:	00f72623          	sw	a5,12(a4)
    4ec8:	00e7a423          	sw	a4,8(a5)
    4ecc:	00cba783          	lw	a5,12(s7)
    4ed0:	008ba703          	lw	a4,8(s7)
    4ed4:	00f72623          	sw	a5,12(a4)
    4ed8:	00e7a423          	sw	a4,8(a5)
    4edc:	008b8513          	addi	a0,s7,8
    4ee0:	ffc48613          	addi	a2,s1,-4
    4ee4:	02400793          	li	a5,36
    4ee8:	d8c7e8e3          	bltu	a5,a2,4c78 <_realloc_r+0x218>
    4eec:	01300793          	li	a5,19
    4ef0:	02c7f263          	bgeu	a5,a2,4f14 <_realloc_r+0x4b4>
    4ef4:	00042783          	lw	a5,0(s0)
    4ef8:	00fba423          	sw	a5,8(s7)
    4efc:	00442783          	lw	a5,4(s0)
    4f00:	00fba623          	sw	a5,12(s7)
    4f04:	01b00793          	li	a5,27
    4f08:	d2c7e8e3          	bltu	a5,a2,4c38 <_realloc_r+0x1d8>
    4f0c:	00840413          	addi	s0,s0,8
    4f10:	010b8513          	addi	a0,s7,16
    4f14:	00042783          	lw	a5,0(s0)
    4f18:	00f52023          	sw	a5,0(a0)
    4f1c:	00442783          	lw	a5,4(s0)
    4f20:	00f52223          	sw	a5,4(a0)
    4f24:	00842783          	lw	a5,8(s0)
    4f28:	00f52423          	sw	a5,8(a0)
    4f2c:	000b0493          	mv	s1,s6
    4f30:	000b8a93          	mv	s5,s7
    4f34:	e31ff06f          	j	4d64 <_realloc_r+0x304>
    4f38:	0046a683          	lw	a3,4(a3)
    4f3c:	ffc6f693          	andi	a3,a3,-4
    4f40:	00d48633          	add	a2,s1,a3
    4f44:	01090593          	addi	a1,s2,16
    4f48:	c4b658e3          	bge	a2,a1,4b98 <_realloc_r+0x138>
    4f4c:	0017f793          	andi	a5,a5,1
    4f50:	be0794e3          	bnez	a5,4b38 <_realloc_r+0xd8>
    4f54:	ff842b83          	lw	s7,-8(s0)
    4f58:	417a8bb3          	sub	s7,s5,s7
    4f5c:	004ba783          	lw	a5,4(s7)
    4f60:	ffc7f793          	andi	a5,a5,-4
    4f64:	00d786b3          	add	a3,a5,a3
    4f68:	00968b33          	add	s6,a3,s1
    4f6c:	bcbb42e3          	blt	s6,a1,4b30 <_realloc_r+0xd0>
    4f70:	00cba783          	lw	a5,12(s7)
    4f74:	008ba703          	lw	a4,8(s7)
    4f78:	00f72623          	sw	a5,12(a4)
    4f7c:	00e7a423          	sw	a4,8(a5)
    4f80:	008b8993          	addi	s3,s7,8
    4f84:	ffc48613          	addi	a2,s1,-4
    4f88:	02400793          	li	a5,36
    4f8c:	c8c7eee3          	bltu	a5,a2,4c28 <_realloc_r+0x1c8>
    4f90:	01300713          	li	a4,19
    4f94:	00098793          	mv	a5,s3
    4f98:	02c77263          	bgeu	a4,a2,4fbc <_realloc_r+0x55c>
    4f9c:	00042783          	lw	a5,0(s0)
    4fa0:	00fba423          	sw	a5,8(s7)
    4fa4:	00442783          	lw	a5,4(s0)
    4fa8:	00fba623          	sw	a5,12(s7)
    4fac:	01b00793          	li	a5,27
    4fb0:	c2c7ece3          	bltu	a5,a2,4be8 <_realloc_r+0x188>
    4fb4:	00840413          	addi	s0,s0,8
    4fb8:	010b8793          	addi	a5,s7,16
    4fbc:	00042703          	lw	a4,0(s0)
    4fc0:	00e7a023          	sw	a4,0(a5)
    4fc4:	00442703          	lw	a4,4(s0)
    4fc8:	00e7a223          	sw	a4,4(a5)
    4fcc:	00842703          	lw	a4,8(s0)
    4fd0:	00e7a423          	sw	a4,8(a5)
    4fd4:	012b8733          	add	a4,s7,s2
    4fd8:	000107b7          	lui	a5,0x10
    4fdc:	7ae7ae23          	sw	a4,1980(a5) # 107bc <__malloc_av_+0x8>
    4fe0:	412b07b3          	sub	a5,s6,s2
    4fe4:	0017e793          	ori	a5,a5,1
    4fe8:	00f72223          	sw	a5,4(a4)
    4fec:	004ba783          	lw	a5,4(s7)
    4ff0:	0017f793          	andi	a5,a5,1
    4ff4:	0127e7b3          	or	a5,a5,s2
    4ff8:	00fba223          	sw	a5,4(s7)
    4ffc:	000a0513          	mv	a0,s4
    5000:	a5dff0ef          	jal	ra,4a5c <__malloc_unlock>
    5004:	d99ff06f          	j	4d9c <_realloc_r+0x33c>

00005008 <_sbrk_r>:
    5008:	ff010113          	addi	sp,sp,-16
    500c:	00112623          	sw	ra,12(sp)
    5010:	00812423          	sw	s0,8(sp)
    5014:	00050413          	mv	s0,a0
    5018:	000147b7          	lui	a5,0x14
    501c:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5020:	00058513          	mv	a0,a1
    5024:	03c010ef          	jal	ra,6060 <_sbrk>
    5028:	fff00793          	li	a5,-1
    502c:	00f50a63          	beq	a0,a5,5040 <_sbrk_r+0x38>
    5030:	00c12083          	lw	ra,12(sp)
    5034:	00812403          	lw	s0,8(sp)
    5038:	01010113          	addi	sp,sp,16
    503c:	00008067          	ret
    5040:	000147b7          	lui	a5,0x14
    5044:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5048:	fe0784e3          	beqz	a5,5030 <_sbrk_r+0x28>
    504c:	00f42023          	sw	a5,0(s0)
    5050:	fe1ff06f          	j	5030 <_sbrk_r+0x28>

00005054 <_init_signal_r>:
    5054:	2dc52783          	lw	a5,732(a0)
    5058:	00078663          	beqz	a5,5064 <_init_signal_r+0x10>
    505c:	00000513          	li	a0,0
    5060:	00008067          	ret
    5064:	ff010113          	addi	sp,sp,-16
    5068:	00112623          	sw	ra,12(sp)
    506c:	00812423          	sw	s0,8(sp)
    5070:	00050413          	mv	s0,a0
    5074:	08000593          	li	a1,128
    5078:	d41fe0ef          	jal	ra,3db8 <_malloc_r>
    507c:	2ca42e23          	sw	a0,732(s0)
    5080:	02050a63          	beqz	a0,50b4 <_init_signal_r+0x60>
    5084:	00000793          	li	a5,0
    5088:	08000693          	li	a3,128
    508c:	2dc42703          	lw	a4,732(s0)
    5090:	00f70733          	add	a4,a4,a5
    5094:	00072023          	sw	zero,0(a4)
    5098:	00478793          	addi	a5,a5,4
    509c:	fed798e3          	bne	a5,a3,508c <_init_signal_r+0x38>
    50a0:	00000513          	li	a0,0
    50a4:	00c12083          	lw	ra,12(sp)
    50a8:	00812403          	lw	s0,8(sp)
    50ac:	01010113          	addi	sp,sp,16
    50b0:	00008067          	ret
    50b4:	fff00513          	li	a0,-1
    50b8:	fedff06f          	j	50a4 <_init_signal_r+0x50>

000050bc <_signal_r>:
    50bc:	ff010113          	addi	sp,sp,-16
    50c0:	00112623          	sw	ra,12(sp)
    50c4:	00812423          	sw	s0,8(sp)
    50c8:	00912223          	sw	s1,4(sp)
    50cc:	01212023          	sw	s2,0(sp)
    50d0:	00050493          	mv	s1,a0
    50d4:	01f00793          	li	a5,31
    50d8:	04b7e063          	bltu	a5,a1,5118 <_signal_r+0x5c>
    50dc:	00058413          	mv	s0,a1
    50e0:	00060913          	mv	s2,a2
    50e4:	2dc52783          	lw	a5,732(a0)
    50e8:	04078063          	beqz	a5,5128 <_signal_r+0x6c>
    50ec:	00241413          	slli	s0,s0,0x2
    50f0:	2dc4a783          	lw	a5,732(s1)
    50f4:	008787b3          	add	a5,a5,s0
    50f8:	0007a503          	lw	a0,0(a5)
    50fc:	0127a023          	sw	s2,0(a5)
    5100:	00c12083          	lw	ra,12(sp)
    5104:	00812403          	lw	s0,8(sp)
    5108:	00412483          	lw	s1,4(sp)
    510c:	00012903          	lw	s2,0(sp)
    5110:	01010113          	addi	sp,sp,16
    5114:	00008067          	ret
    5118:	01600793          	li	a5,22
    511c:	00f52023          	sw	a5,0(a0)
    5120:	fff00513          	li	a0,-1
    5124:	fddff06f          	j	5100 <_signal_r+0x44>
    5128:	f2dff0ef          	jal	ra,5054 <_init_signal_r>
    512c:	00050793          	mv	a5,a0
    5130:	fff00513          	li	a0,-1
    5134:	fa078ce3          	beqz	a5,50ec <_signal_r+0x30>
    5138:	fc9ff06f          	j	5100 <_signal_r+0x44>

0000513c <_raise_r>:
    513c:	ff010113          	addi	sp,sp,-16
    5140:	00112623          	sw	ra,12(sp)
    5144:	00812423          	sw	s0,8(sp)
    5148:	00912223          	sw	s1,4(sp)
    514c:	00050493          	mv	s1,a0
    5150:	01f00793          	li	a5,31
    5154:	04b7ea63          	bltu	a5,a1,51a8 <_raise_r+0x6c>
    5158:	00058413          	mv	s0,a1
    515c:	2dc52783          	lw	a5,732(a0)
    5160:	04078c63          	beqz	a5,51b8 <_raise_r+0x7c>
    5164:	00259713          	slli	a4,a1,0x2
    5168:	00e787b3          	add	a5,a5,a4
    516c:	0007a703          	lw	a4,0(a5)
    5170:	04070463          	beqz	a4,51b8 <_raise_r+0x7c>
    5174:	00100693          	li	a3,1
    5178:	06d70663          	beq	a4,a3,51e4 <_raise_r+0xa8>
    517c:	fff00693          	li	a3,-1
    5180:	04d70a63          	beq	a4,a3,51d4 <_raise_r+0x98>
    5184:	0007a023          	sw	zero,0(a5)
    5188:	00058513          	mv	a0,a1
    518c:	000700e7          	jalr	a4
    5190:	00000513          	li	a0,0
    5194:	00c12083          	lw	ra,12(sp)
    5198:	00812403          	lw	s0,8(sp)
    519c:	00412483          	lw	s1,4(sp)
    51a0:	01010113          	addi	sp,sp,16
    51a4:	00008067          	ret
    51a8:	01600793          	li	a5,22
    51ac:	00f52023          	sw	a5,0(a0)
    51b0:	fff00513          	li	a0,-1
    51b4:	fe1ff06f          	j	5194 <_raise_r+0x58>
    51b8:	00048513          	mv	a0,s1
    51bc:	1b0000ef          	jal	ra,536c <_getpid_r>
    51c0:	00050593          	mv	a1,a0
    51c4:	00040613          	mv	a2,s0
    51c8:	00048513          	mv	a0,s1
    51cc:	150000ef          	jal	ra,531c <_kill_r>
    51d0:	fc5ff06f          	j	5194 <_raise_r+0x58>
    51d4:	01600793          	li	a5,22
    51d8:	00f52023          	sw	a5,0(a0)
    51dc:	00100513          	li	a0,1
    51e0:	fb5ff06f          	j	5194 <_raise_r+0x58>
    51e4:	00000513          	li	a0,0
    51e8:	fadff06f          	j	5194 <_raise_r+0x58>

000051ec <__sigtramp_r>:
    51ec:	01f00793          	li	a5,31
    51f0:	06b7ee63          	bltu	a5,a1,526c <__sigtramp_r+0x80>
    51f4:	ff010113          	addi	sp,sp,-16
    51f8:	00112623          	sw	ra,12(sp)
    51fc:	00812423          	sw	s0,8(sp)
    5200:	00912223          	sw	s1,4(sp)
    5204:	00050493          	mv	s1,a0
    5208:	00058413          	mv	s0,a1
    520c:	2dc52783          	lw	a5,732(a0)
    5210:	04078663          	beqz	a5,525c <__sigtramp_r+0x70>
    5214:	00241713          	slli	a4,s0,0x2
    5218:	2dc4a783          	lw	a5,732(s1)
    521c:	00e787b3          	add	a5,a5,a4
    5220:	0007a703          	lw	a4,0(a5)
    5224:	04070863          	beqz	a4,5274 <__sigtramp_r+0x88>
    5228:	fff00693          	li	a3,-1
    522c:	04d70863          	beq	a4,a3,527c <__sigtramp_r+0x90>
    5230:	00100693          	li	a3,1
    5234:	04d70863          	beq	a4,a3,5284 <__sigtramp_r+0x98>
    5238:	0007a023          	sw	zero,0(a5)
    523c:	00040513          	mv	a0,s0
    5240:	000700e7          	jalr	a4
    5244:	00000513          	li	a0,0
    5248:	00c12083          	lw	ra,12(sp)
    524c:	00812403          	lw	s0,8(sp)
    5250:	00412483          	lw	s1,4(sp)
    5254:	01010113          	addi	sp,sp,16
    5258:	00008067          	ret
    525c:	df9ff0ef          	jal	ra,5054 <_init_signal_r>
    5260:	fa050ae3          	beqz	a0,5214 <__sigtramp_r+0x28>
    5264:	fff00513          	li	a0,-1
    5268:	fe1ff06f          	j	5248 <__sigtramp_r+0x5c>
    526c:	fff00513          	li	a0,-1
    5270:	00008067          	ret
    5274:	00100513          	li	a0,1
    5278:	fd1ff06f          	j	5248 <__sigtramp_r+0x5c>
    527c:	00200513          	li	a0,2
    5280:	fc9ff06f          	j	5248 <__sigtramp_r+0x5c>
    5284:	00300513          	li	a0,3
    5288:	fc1ff06f          	j	5248 <__sigtramp_r+0x5c>

0000528c <raise>:
    528c:	ff010113          	addi	sp,sp,-16
    5290:	00112623          	sw	ra,12(sp)
    5294:	00050593          	mv	a1,a0
    5298:	000117b7          	lui	a5,0x11
    529c:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    52a0:	e9dff0ef          	jal	ra,513c <_raise_r>
    52a4:	00c12083          	lw	ra,12(sp)
    52a8:	01010113          	addi	sp,sp,16
    52ac:	00008067          	ret

000052b0 <signal>:
    52b0:	ff010113          	addi	sp,sp,-16
    52b4:	00112623          	sw	ra,12(sp)
    52b8:	00058613          	mv	a2,a1
    52bc:	00050593          	mv	a1,a0
    52c0:	000117b7          	lui	a5,0x11
    52c4:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    52c8:	df5ff0ef          	jal	ra,50bc <_signal_r>
    52cc:	00c12083          	lw	ra,12(sp)
    52d0:	01010113          	addi	sp,sp,16
    52d4:	00008067          	ret

000052d8 <_init_signal>:
    52d8:	ff010113          	addi	sp,sp,-16
    52dc:	00112623          	sw	ra,12(sp)
    52e0:	000117b7          	lui	a5,0x11
    52e4:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    52e8:	d6dff0ef          	jal	ra,5054 <_init_signal_r>
    52ec:	00c12083          	lw	ra,12(sp)
    52f0:	01010113          	addi	sp,sp,16
    52f4:	00008067          	ret

000052f8 <__sigtramp>:
    52f8:	ff010113          	addi	sp,sp,-16
    52fc:	00112623          	sw	ra,12(sp)
    5300:	00050593          	mv	a1,a0
    5304:	000117b7          	lui	a5,0x11
    5308:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    530c:	ee1ff0ef          	jal	ra,51ec <__sigtramp_r>
    5310:	00c12083          	lw	ra,12(sp)
    5314:	01010113          	addi	sp,sp,16
    5318:	00008067          	ret

0000531c <_kill_r>:
    531c:	ff010113          	addi	sp,sp,-16
    5320:	00112623          	sw	ra,12(sp)
    5324:	00812423          	sw	s0,8(sp)
    5328:	00050413          	mv	s0,a0
    532c:	00058513          	mv	a0,a1
    5330:	000147b7          	lui	a5,0x14
    5334:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5338:	00060593          	mv	a1,a2
    533c:	479000ef          	jal	ra,5fb4 <_kill>
    5340:	fff00793          	li	a5,-1
    5344:	00f50a63          	beq	a0,a5,5358 <_kill_r+0x3c>
    5348:	00c12083          	lw	ra,12(sp)
    534c:	00812403          	lw	s0,8(sp)
    5350:	01010113          	addi	sp,sp,16
    5354:	00008067          	ret
    5358:	000147b7          	lui	a5,0x14
    535c:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5360:	fe0784e3          	beqz	a5,5348 <_kill_r+0x2c>
    5364:	00f42023          	sw	a5,0(s0)
    5368:	fe1ff06f          	j	5348 <_kill_r+0x2c>

0000536c <_getpid_r>:
    536c:	ff010113          	addi	sp,sp,-16
    5370:	00112623          	sw	ra,12(sp)
    5374:	401000ef          	jal	ra,5f74 <_getpid>
    5378:	00c12083          	lw	ra,12(sp)
    537c:	01010113          	addi	sp,sp,16
    5380:	00008067          	ret

00005384 <__sread>:
    5384:	ff010113          	addi	sp,sp,-16
    5388:	00112623          	sw	ra,12(sp)
    538c:	00812423          	sw	s0,8(sp)
    5390:	00058413          	mv	s0,a1
    5394:	00e59583          	lh	a1,14(a1)
    5398:	171000ef          	jal	ra,5d08 <_read_r>
    539c:	02054063          	bltz	a0,53bc <__sread+0x38>
    53a0:	05042783          	lw	a5,80(s0)
    53a4:	00a787b3          	add	a5,a5,a0
    53a8:	04f42823          	sw	a5,80(s0)
    53ac:	00c12083          	lw	ra,12(sp)
    53b0:	00812403          	lw	s0,8(sp)
    53b4:	01010113          	addi	sp,sp,16
    53b8:	00008067          	ret
    53bc:	00c45783          	lhu	a5,12(s0)
    53c0:	fffff737          	lui	a4,0xfffff
    53c4:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffeb423>
    53c8:	00e7f7b3          	and	a5,a5,a4
    53cc:	00f41623          	sh	a5,12(s0)
    53d0:	fddff06f          	j	53ac <__sread+0x28>

000053d4 <__seofread>:
    53d4:	00000513          	li	a0,0
    53d8:	00008067          	ret

000053dc <__swrite>:
    53dc:	fe010113          	addi	sp,sp,-32
    53e0:	00112e23          	sw	ra,28(sp)
    53e4:	00812c23          	sw	s0,24(sp)
    53e8:	00912a23          	sw	s1,20(sp)
    53ec:	01212823          	sw	s2,16(sp)
    53f0:	01312623          	sw	s3,12(sp)
    53f4:	00050493          	mv	s1,a0
    53f8:	00058413          	mv	s0,a1
    53fc:	00060913          	mv	s2,a2
    5400:	00068993          	mv	s3,a3
    5404:	00c5d783          	lhu	a5,12(a1)
    5408:	1007f793          	andi	a5,a5,256
    540c:	04079463          	bnez	a5,5454 <__swrite+0x78>
    5410:	00c45783          	lhu	a5,12(s0)
    5414:	fffff737          	lui	a4,0xfffff
    5418:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffeb423>
    541c:	00e7f7b3          	and	a5,a5,a4
    5420:	00f41623          	sh	a5,12(s0)
    5424:	00098693          	mv	a3,s3
    5428:	00090613          	mv	a2,s2
    542c:	00e41583          	lh	a1,14(s0)
    5430:	00048513          	mv	a0,s1
    5434:	630000ef          	jal	ra,5a64 <_write_r>
    5438:	01c12083          	lw	ra,28(sp)
    543c:	01812403          	lw	s0,24(sp)
    5440:	01412483          	lw	s1,20(sp)
    5444:	01012903          	lw	s2,16(sp)
    5448:	00c12983          	lw	s3,12(sp)
    544c:	02010113          	addi	sp,sp,32
    5450:	00008067          	ret
    5454:	00200693          	li	a3,2
    5458:	00000613          	li	a2,0
    545c:	00e59583          	lh	a1,14(a1)
    5460:	055000ef          	jal	ra,5cb4 <_lseek_r>
    5464:	fadff06f          	j	5410 <__swrite+0x34>

00005468 <__sseek>:
    5468:	ff010113          	addi	sp,sp,-16
    546c:	00112623          	sw	ra,12(sp)
    5470:	00812423          	sw	s0,8(sp)
    5474:	00058413          	mv	s0,a1
    5478:	00e59583          	lh	a1,14(a1)
    547c:	039000ef          	jal	ra,5cb4 <_lseek_r>
    5480:	fff00793          	li	a5,-1
    5484:	02f50463          	beq	a0,a5,54ac <__sseek+0x44>
    5488:	00c45783          	lhu	a5,12(s0)
    548c:	00001737          	lui	a4,0x1
    5490:	00e7e7b3          	or	a5,a5,a4
    5494:	00f41623          	sh	a5,12(s0)
    5498:	04a42823          	sw	a0,80(s0)
    549c:	00c12083          	lw	ra,12(sp)
    54a0:	00812403          	lw	s0,8(sp)
    54a4:	01010113          	addi	sp,sp,16
    54a8:	00008067          	ret
    54ac:	00c45783          	lhu	a5,12(s0)
    54b0:	fffff737          	lui	a4,0xfffff
    54b4:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffeb423>
    54b8:	00e7f7b3          	and	a5,a5,a4
    54bc:	00f41623          	sh	a5,12(s0)
    54c0:	fddff06f          	j	549c <__sseek+0x34>

000054c4 <__sclose>:
    54c4:	ff010113          	addi	sp,sp,-16
    54c8:	00112623          	sw	ra,12(sp)
    54cc:	00e59583          	lh	a1,14(a1)
    54d0:	5e8000ef          	jal	ra,5ab8 <_close_r>
    54d4:	00c12083          	lw	ra,12(sp)
    54d8:	01010113          	addi	sp,sp,16
    54dc:	00008067          	ret

000054e0 <strcmp>:
    54e0:	00b56733          	or	a4,a0,a1
    54e4:	fff00393          	li	t2,-1
    54e8:	00377713          	andi	a4,a4,3
    54ec:	10071063          	bnez	a4,55ec <strcmp+0x10c>
    54f0:	7f7f87b7          	lui	a5,0x7f7f8
    54f4:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <heap_end.0+0x7f7e43a3>
    54f8:	00052603          	lw	a2,0(a0)
    54fc:	0005a683          	lw	a3,0(a1)
    5500:	00f672b3          	and	t0,a2,a5
    5504:	00f66333          	or	t1,a2,a5
    5508:	00f282b3          	add	t0,t0,a5
    550c:	0062e2b3          	or	t0,t0,t1
    5510:	10729263          	bne	t0,t2,5614 <strcmp+0x134>
    5514:	08d61663          	bne	a2,a3,55a0 <strcmp+0xc0>
    5518:	00452603          	lw	a2,4(a0)
    551c:	0045a683          	lw	a3,4(a1)
    5520:	00f672b3          	and	t0,a2,a5
    5524:	00f66333          	or	t1,a2,a5
    5528:	00f282b3          	add	t0,t0,a5
    552c:	0062e2b3          	or	t0,t0,t1
    5530:	0c729e63          	bne	t0,t2,560c <strcmp+0x12c>
    5534:	06d61663          	bne	a2,a3,55a0 <strcmp+0xc0>
    5538:	00852603          	lw	a2,8(a0)
    553c:	0085a683          	lw	a3,8(a1)
    5540:	00f672b3          	and	t0,a2,a5
    5544:	00f66333          	or	t1,a2,a5
    5548:	00f282b3          	add	t0,t0,a5
    554c:	0062e2b3          	or	t0,t0,t1
    5550:	0c729863          	bne	t0,t2,5620 <strcmp+0x140>
    5554:	04d61663          	bne	a2,a3,55a0 <strcmp+0xc0>
    5558:	00c52603          	lw	a2,12(a0)
    555c:	00c5a683          	lw	a3,12(a1)
    5560:	00f672b3          	and	t0,a2,a5
    5564:	00f66333          	or	t1,a2,a5
    5568:	00f282b3          	add	t0,t0,a5
    556c:	0062e2b3          	or	t0,t0,t1
    5570:	0c729263          	bne	t0,t2,5634 <strcmp+0x154>
    5574:	02d61663          	bne	a2,a3,55a0 <strcmp+0xc0>
    5578:	01052603          	lw	a2,16(a0)
    557c:	0105a683          	lw	a3,16(a1)
    5580:	00f672b3          	and	t0,a2,a5
    5584:	00f66333          	or	t1,a2,a5
    5588:	00f282b3          	add	t0,t0,a5
    558c:	0062e2b3          	or	t0,t0,t1
    5590:	0a729c63          	bne	t0,t2,5648 <strcmp+0x168>
    5594:	01450513          	addi	a0,a0,20
    5598:	01458593          	addi	a1,a1,20
    559c:	f4d60ee3          	beq	a2,a3,54f8 <strcmp+0x18>
    55a0:	01061713          	slli	a4,a2,0x10
    55a4:	01069793          	slli	a5,a3,0x10
    55a8:	00f71e63          	bne	a4,a5,55c4 <strcmp+0xe4>
    55ac:	01065713          	srli	a4,a2,0x10
    55b0:	0106d793          	srli	a5,a3,0x10
    55b4:	40f70533          	sub	a0,a4,a5
    55b8:	0ff57593          	zext.b	a1,a0
    55bc:	02059063          	bnez	a1,55dc <strcmp+0xfc>
    55c0:	00008067          	ret
    55c4:	01075713          	srli	a4,a4,0x10
    55c8:	0107d793          	srli	a5,a5,0x10
    55cc:	40f70533          	sub	a0,a4,a5
    55d0:	0ff57593          	zext.b	a1,a0
    55d4:	00059463          	bnez	a1,55dc <strcmp+0xfc>
    55d8:	00008067          	ret
    55dc:	0ff77713          	zext.b	a4,a4
    55e0:	0ff7f793          	zext.b	a5,a5
    55e4:	40f70533          	sub	a0,a4,a5
    55e8:	00008067          	ret
    55ec:	00054603          	lbu	a2,0(a0)
    55f0:	0005c683          	lbu	a3,0(a1)
    55f4:	00150513          	addi	a0,a0,1
    55f8:	00158593          	addi	a1,a1,1
    55fc:	00d61463          	bne	a2,a3,5604 <strcmp+0x124>
    5600:	fe0616e3          	bnez	a2,55ec <strcmp+0x10c>
    5604:	40d60533          	sub	a0,a2,a3
    5608:	00008067          	ret
    560c:	00450513          	addi	a0,a0,4
    5610:	00458593          	addi	a1,a1,4
    5614:	fcd61ce3          	bne	a2,a3,55ec <strcmp+0x10c>
    5618:	00000513          	li	a0,0
    561c:	00008067          	ret
    5620:	00850513          	addi	a0,a0,8
    5624:	00858593          	addi	a1,a1,8
    5628:	fcd612e3          	bne	a2,a3,55ec <strcmp+0x10c>
    562c:	00000513          	li	a0,0
    5630:	00008067          	ret
    5634:	00c50513          	addi	a0,a0,12
    5638:	00c58593          	addi	a1,a1,12
    563c:	fad618e3          	bne	a2,a3,55ec <strcmp+0x10c>
    5640:	00000513          	li	a0,0
    5644:	00008067          	ret
    5648:	01050513          	addi	a0,a0,16
    564c:	01058593          	addi	a1,a1,16
    5650:	f8d61ee3          	bne	a2,a3,55ec <strcmp+0x10c>
    5654:	00000513          	li	a0,0
    5658:	00008067          	ret

0000565c <strlen>:
    565c:	00357793          	andi	a5,a0,3
    5660:	00050713          	mv	a4,a0
    5664:	04079a63          	bnez	a5,56b8 <strlen+0x5c>
    5668:	7f7f86b7          	lui	a3,0x7f7f8
    566c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <heap_end.0+0x7f7e43a3>
    5670:	fff00593          	li	a1,-1
    5674:	00470713          	addi	a4,a4,4
    5678:	ffc72603          	lw	a2,-4(a4)
    567c:	00d677b3          	and	a5,a2,a3
    5680:	00d787b3          	add	a5,a5,a3
    5684:	00c7e7b3          	or	a5,a5,a2
    5688:	00d7e7b3          	or	a5,a5,a3
    568c:	feb784e3          	beq	a5,a1,5674 <strlen+0x18>
    5690:	40a707b3          	sub	a5,a4,a0
    5694:	ffc74683          	lbu	a3,-4(a4)
    5698:	04068263          	beqz	a3,56dc <strlen+0x80>
    569c:	ffd74683          	lbu	a3,-3(a4)
    56a0:	04068263          	beqz	a3,56e4 <strlen+0x88>
    56a4:	ffe74503          	lbu	a0,-2(a4)
    56a8:	00a03533          	snez	a0,a0
    56ac:	00f50533          	add	a0,a0,a5
    56b0:	ffe50513          	addi	a0,a0,-2
    56b4:	00008067          	ret
    56b8:	00074783          	lbu	a5,0(a4)
    56bc:	00170713          	addi	a4,a4,1
    56c0:	00078863          	beqz	a5,56d0 <strlen+0x74>
    56c4:	00377793          	andi	a5,a4,3
    56c8:	fe0798e3          	bnez	a5,56b8 <strlen+0x5c>
    56cc:	f9dff06f          	j	5668 <strlen+0xc>
    56d0:	40a70733          	sub	a4,a4,a0
    56d4:	fff70513          	addi	a0,a4,-1
    56d8:	00008067          	ret
    56dc:	ffc78513          	addi	a0,a5,-4
    56e0:	00008067          	ret
    56e4:	ffd78513          	addi	a0,a5,-3
    56e8:	00008067          	ret

000056ec <strncpy>:
    56ec:	00b567b3          	or	a5,a0,a1
    56f0:	0037f793          	andi	a5,a5,3
    56f4:	00050713          	mv	a4,a0
    56f8:	00079663          	bnez	a5,5704 <strncpy+0x18>
    56fc:	00300793          	li	a5,3
    5700:	02c7e663          	bltu	a5,a2,572c <strncpy+0x40>
    5704:	08060463          	beqz	a2,578c <strncpy+0xa0>
    5708:	fff60813          	addi	a6,a2,-1
    570c:	00158593          	addi	a1,a1,1
    5710:	00170793          	addi	a5,a4,1
    5714:	fff5c683          	lbu	a3,-1(a1)
    5718:	fed78fa3          	sb	a3,-1(a5)
    571c:	04068a63          	beqz	a3,5770 <strncpy+0x84>
    5720:	00078713          	mv	a4,a5
    5724:	00080613          	mv	a2,a6
    5728:	fddff06f          	j	5704 <strncpy+0x18>
    572c:	feff0337          	lui	t1,0xfeff0
    5730:	eff30313          	addi	t1,t1,-257 # fefefeff <heap_end.0+0xfefdc323>
    5734:	808088b7          	lui	a7,0x80808
    5738:	08088893          	addi	a7,a7,128 # 80808080 <heap_end.0+0x807f44a4>
    573c:	00300e13          	li	t3,3
    5740:	0005a683          	lw	a3,0(a1)
    5744:	006687b3          	add	a5,a3,t1
    5748:	fff6c813          	not	a6,a3
    574c:	0107f7b3          	and	a5,a5,a6
    5750:	0117f7b3          	and	a5,a5,a7
    5754:	fa0798e3          	bnez	a5,5704 <strncpy+0x18>
    5758:	ffc60613          	addi	a2,a2,-4
    575c:	00458593          	addi	a1,a1,4
    5760:	00470713          	addi	a4,a4,4
    5764:	fed72e23          	sw	a3,-4(a4)
    5768:	fcce6ce3          	bltu	t3,a2,5740 <strncpy+0x54>
    576c:	f99ff06f          	j	5704 <strncpy+0x18>
    5770:	00c70733          	add	a4,a4,a2
    5774:	00080a63          	beqz	a6,5788 <strncpy+0x9c>
    5778:	00178793          	addi	a5,a5,1
    577c:	fe078fa3          	sb	zero,-1(a5)
    5780:	fef71ce3          	bne	a4,a5,5778 <strncpy+0x8c>
    5784:	00008067          	ret
    5788:	00008067          	ret
    578c:	00008067          	ret

00005790 <__swbuf_r>:
    5790:	fe010113          	addi	sp,sp,-32
    5794:	00112e23          	sw	ra,28(sp)
    5798:	00812c23          	sw	s0,24(sp)
    579c:	00912a23          	sw	s1,20(sp)
    57a0:	01212823          	sw	s2,16(sp)
    57a4:	01312623          	sw	s3,12(sp)
    57a8:	00050913          	mv	s2,a0
    57ac:	00058493          	mv	s1,a1
    57b0:	00060413          	mv	s0,a2
    57b4:	00050663          	beqz	a0,57c0 <__swbuf_r+0x30>
    57b8:	03852783          	lw	a5,56(a0)
    57bc:	0e078463          	beqz	a5,58a4 <__swbuf_r+0x114>
    57c0:	01842783          	lw	a5,24(s0)
    57c4:	00f42423          	sw	a5,8(s0)
    57c8:	00c45783          	lhu	a5,12(s0)
    57cc:	0087f793          	andi	a5,a5,8
    57d0:	00078663          	beqz	a5,57dc <__swbuf_r+0x4c>
    57d4:	01042783          	lw	a5,16(s0)
    57d8:	00079a63          	bnez	a5,57ec <__swbuf_r+0x5c>
    57dc:	00040593          	mv	a1,s0
    57e0:	00090513          	mv	a0,s2
    57e4:	f4dfc0ef          	jal	ra,2730 <__swsetup_r>
    57e8:	0e051463          	bnez	a0,58d0 <__swbuf_r+0x140>
    57ec:	0ff4f993          	zext.b	s3,s1
    57f0:	0ff4f493          	zext.b	s1,s1
    57f4:	00c41703          	lh	a4,12(s0)
    57f8:	00d75793          	srli	a5,a4,0xd
    57fc:	0017f793          	andi	a5,a5,1
    5800:	02079263          	bnez	a5,5824 <__swbuf_r+0x94>
    5804:	000027b7          	lui	a5,0x2
    5808:	00f76733          	or	a4,a4,a5
    580c:	00e41623          	sh	a4,12(s0)
    5810:	06442783          	lw	a5,100(s0)
    5814:	ffffe737          	lui	a4,0xffffe
    5818:	fff70713          	addi	a4,a4,-1 # ffffdfff <heap_end.0+0xfffea423>
    581c:	00e7f7b3          	and	a5,a5,a4
    5820:	06f42223          	sw	a5,100(s0)
    5824:	00042783          	lw	a5,0(s0)
    5828:	01042703          	lw	a4,16(s0)
    582c:	40e787b3          	sub	a5,a5,a4
    5830:	01442703          	lw	a4,20(s0)
    5834:	06e7dc63          	bge	a5,a4,58ac <__swbuf_r+0x11c>
    5838:	00842703          	lw	a4,8(s0)
    583c:	fff70713          	addi	a4,a4,-1
    5840:	00e42423          	sw	a4,8(s0)
    5844:	00042703          	lw	a4,0(s0)
    5848:	00170693          	addi	a3,a4,1
    584c:	00d42023          	sw	a3,0(s0)
    5850:	01370023          	sb	s3,0(a4)
    5854:	00178793          	addi	a5,a5,1 # 2001 <_vfiprintf_r+0x98d>
    5858:	01442703          	lw	a4,20(s0)
    585c:	00f70c63          	beq	a4,a5,5874 <__swbuf_r+0xe4>
    5860:	00c45783          	lhu	a5,12(s0)
    5864:	0017f793          	andi	a5,a5,1
    5868:	00078e63          	beqz	a5,5884 <__swbuf_r+0xf4>
    586c:	00a00793          	li	a5,10
    5870:	00f49a63          	bne	s1,a5,5884 <__swbuf_r+0xf4>
    5874:	00040593          	mv	a1,s0
    5878:	00090513          	mv	a0,s2
    587c:	aa0fd0ef          	jal	ra,2b1c <_fflush_r>
    5880:	04051463          	bnez	a0,58c8 <__swbuf_r+0x138>
    5884:	00048513          	mv	a0,s1
    5888:	01c12083          	lw	ra,28(sp)
    588c:	01812403          	lw	s0,24(sp)
    5890:	01412483          	lw	s1,20(sp)
    5894:	01012903          	lw	s2,16(sp)
    5898:	00c12983          	lw	s3,12(sp)
    589c:	02010113          	addi	sp,sp,32
    58a0:	00008067          	ret
    58a4:	bdcfd0ef          	jal	ra,2c80 <__sinit>
    58a8:	f19ff06f          	j	57c0 <__swbuf_r+0x30>
    58ac:	00040593          	mv	a1,s0
    58b0:	00090513          	mv	a0,s2
    58b4:	a68fd0ef          	jal	ra,2b1c <_fflush_r>
    58b8:	00050793          	mv	a5,a0
    58bc:	f6050ee3          	beqz	a0,5838 <__swbuf_r+0xa8>
    58c0:	fff00493          	li	s1,-1
    58c4:	fc1ff06f          	j	5884 <__swbuf_r+0xf4>
    58c8:	fff00493          	li	s1,-1
    58cc:	fb9ff06f          	j	5884 <__swbuf_r+0xf4>
    58d0:	fff00493          	li	s1,-1
    58d4:	fb1ff06f          	j	5884 <__swbuf_r+0xf4>

000058d8 <__swbuf>:
    58d8:	ff010113          	addi	sp,sp,-16
    58dc:	00112623          	sw	ra,12(sp)
    58e0:	00058613          	mv	a2,a1
    58e4:	00050593          	mv	a1,a0
    58e8:	000117b7          	lui	a5,0x11
    58ec:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    58f0:	ea1ff0ef          	jal	ra,5790 <__swbuf_r>
    58f4:	00c12083          	lw	ra,12(sp)
    58f8:	01010113          	addi	sp,sp,16
    58fc:	00008067          	ret

00005900 <_wcrtomb_r>:
    5900:	fe010113          	addi	sp,sp,-32
    5904:	00112e23          	sw	ra,28(sp)
    5908:	00812c23          	sw	s0,24(sp)
    590c:	00912a23          	sw	s1,20(sp)
    5910:	00050413          	mv	s0,a0
    5914:	00068493          	mv	s1,a3
    5918:	02058a63          	beqz	a1,594c <_wcrtomb_r+0x4c>
    591c:	000107b7          	lui	a5,0x10
    5920:	7287a783          	lw	a5,1832(a5) # 10728 <__global_locale+0xe0>
    5924:	000780e7          	jalr	a5
    5928:	00050793          	mv	a5,a0
    592c:	fff00713          	li	a4,-1
    5930:	00078513          	mv	a0,a5
    5934:	02e78a63          	beq	a5,a4,5968 <_wcrtomb_r+0x68>
    5938:	01c12083          	lw	ra,28(sp)
    593c:	01812403          	lw	s0,24(sp)
    5940:	01412483          	lw	s1,20(sp)
    5944:	02010113          	addi	sp,sp,32
    5948:	00008067          	ret
    594c:	000107b7          	lui	a5,0x10
    5950:	7287a783          	lw	a5,1832(a5) # 10728 <__global_locale+0xe0>
    5954:	00000613          	li	a2,0
    5958:	00410593          	addi	a1,sp,4
    595c:	000780e7          	jalr	a5
    5960:	00050793          	mv	a5,a0
    5964:	fc9ff06f          	j	592c <_wcrtomb_r+0x2c>
    5968:	0004a023          	sw	zero,0(s1)
    596c:	08a00793          	li	a5,138
    5970:	00f42023          	sw	a5,0(s0)
    5974:	fff00513          	li	a0,-1
    5978:	fc1ff06f          	j	5938 <_wcrtomb_r+0x38>

0000597c <wcrtomb>:
    597c:	fe010113          	addi	sp,sp,-32
    5980:	00112e23          	sw	ra,28(sp)
    5984:	00812c23          	sw	s0,24(sp)
    5988:	00912a23          	sw	s1,20(sp)
    598c:	00060413          	mv	s0,a2
    5990:	000117b7          	lui	a5,0x11
    5994:	bbc7a483          	lw	s1,-1092(a5) # 10bbc <_impure_ptr>
    5998:	04050263          	beqz	a0,59dc <wcrtomb+0x60>
    599c:	000107b7          	lui	a5,0x10
    59a0:	7287a783          	lw	a5,1832(a5) # 10728 <__global_locale+0xe0>
    59a4:	00060693          	mv	a3,a2
    59a8:	00058613          	mv	a2,a1
    59ac:	00050593          	mv	a1,a0
    59b0:	00048513          	mv	a0,s1
    59b4:	000780e7          	jalr	a5
    59b8:	00050793          	mv	a5,a0
    59bc:	fff00713          	li	a4,-1
    59c0:	00078513          	mv	a0,a5
    59c4:	02e78e63          	beq	a5,a4,5a00 <wcrtomb+0x84>
    59c8:	01c12083          	lw	ra,28(sp)
    59cc:	01812403          	lw	s0,24(sp)
    59d0:	01412483          	lw	s1,20(sp)
    59d4:	02010113          	addi	sp,sp,32
    59d8:	00008067          	ret
    59dc:	000107b7          	lui	a5,0x10
    59e0:	7287a783          	lw	a5,1832(a5) # 10728 <__global_locale+0xe0>
    59e4:	00060693          	mv	a3,a2
    59e8:	00000613          	li	a2,0
    59ec:	00410593          	addi	a1,sp,4
    59f0:	00048513          	mv	a0,s1
    59f4:	000780e7          	jalr	a5
    59f8:	00050793          	mv	a5,a0
    59fc:	fc1ff06f          	j	59bc <wcrtomb+0x40>
    5a00:	00042023          	sw	zero,0(s0)
    5a04:	08a00793          	li	a5,138
    5a08:	00f4a023          	sw	a5,0(s1)
    5a0c:	fff00513          	li	a0,-1
    5a10:	fb9ff06f          	j	59c8 <wcrtomb+0x4c>

00005a14 <_wctomb_r>:
    5a14:	ff010113          	addi	sp,sp,-16
    5a18:	00112623          	sw	ra,12(sp)
    5a1c:	000107b7          	lui	a5,0x10
    5a20:	7287a783          	lw	a5,1832(a5) # 10728 <__global_locale+0xe0>
    5a24:	000780e7          	jalr	a5
    5a28:	00c12083          	lw	ra,12(sp)
    5a2c:	01010113          	addi	sp,sp,16
    5a30:	00008067          	ret

00005a34 <__ascii_wctomb>:
    5a34:	02058463          	beqz	a1,5a5c <__ascii_wctomb+0x28>
    5a38:	0ff00713          	li	a4,255
    5a3c:	00c76863          	bltu	a4,a2,5a4c <__ascii_wctomb+0x18>
    5a40:	00c58023          	sb	a2,0(a1)
    5a44:	00100513          	li	a0,1
    5a48:	00008067          	ret
    5a4c:	08a00793          	li	a5,138
    5a50:	00f52023          	sw	a5,0(a0)
    5a54:	fff00513          	li	a0,-1
    5a58:	00008067          	ret
    5a5c:	00000513          	li	a0,0
    5a60:	00008067          	ret

00005a64 <_write_r>:
    5a64:	ff010113          	addi	sp,sp,-16
    5a68:	00112623          	sw	ra,12(sp)
    5a6c:	00812423          	sw	s0,8(sp)
    5a70:	00050413          	mv	s0,a0
    5a74:	00058513          	mv	a0,a1
    5a78:	00060593          	mv	a1,a2
    5a7c:	000147b7          	lui	a5,0x14
    5a80:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5a84:	00068613          	mv	a2,a3
    5a88:	668000ef          	jal	ra,60f0 <_write>
    5a8c:	fff00793          	li	a5,-1
    5a90:	00f50a63          	beq	a0,a5,5aa4 <_write_r+0x40>
    5a94:	00c12083          	lw	ra,12(sp)
    5a98:	00812403          	lw	s0,8(sp)
    5a9c:	01010113          	addi	sp,sp,16
    5aa0:	00008067          	ret
    5aa4:	000147b7          	lui	a5,0x14
    5aa8:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5aac:	fe0784e3          	beqz	a5,5a94 <_write_r+0x30>
    5ab0:	00f42023          	sw	a5,0(s0)
    5ab4:	fe1ff06f          	j	5a94 <_write_r+0x30>

00005ab8 <_close_r>:
    5ab8:	ff010113          	addi	sp,sp,-16
    5abc:	00112623          	sw	ra,12(sp)
    5ac0:	00812423          	sw	s0,8(sp)
    5ac4:	00050413          	mv	s0,a0
    5ac8:	000147b7          	lui	a5,0x14
    5acc:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5ad0:	00058513          	mv	a0,a1
    5ad4:	3cc000ef          	jal	ra,5ea0 <_close>
    5ad8:	fff00793          	li	a5,-1
    5adc:	00f50a63          	beq	a0,a5,5af0 <_close_r+0x38>
    5ae0:	00c12083          	lw	ra,12(sp)
    5ae4:	00812403          	lw	s0,8(sp)
    5ae8:	01010113          	addi	sp,sp,16
    5aec:	00008067          	ret
    5af0:	000147b7          	lui	a5,0x14
    5af4:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5af8:	fe0784e3          	beqz	a5,5ae0 <_close_r+0x28>
    5afc:	00f42023          	sw	a5,0(s0)
    5b00:	fe1ff06f          	j	5ae0 <_close_r+0x28>

00005b04 <_fclose_r>:
    5b04:	ff010113          	addi	sp,sp,-16
    5b08:	00112623          	sw	ra,12(sp)
    5b0c:	00812423          	sw	s0,8(sp)
    5b10:	00912223          	sw	s1,4(sp)
    5b14:	01212023          	sw	s2,0(sp)
    5b18:	0c058a63          	beqz	a1,5bec <_fclose_r+0xe8>
    5b1c:	00050913          	mv	s2,a0
    5b20:	00058413          	mv	s0,a1
    5b24:	00050663          	beqz	a0,5b30 <_fclose_r+0x2c>
    5b28:	03852783          	lw	a5,56(a0)
    5b2c:	02078663          	beqz	a5,5b58 <_fclose_r+0x54>
    5b30:	00c41783          	lh	a5,12(s0)
    5b34:	00000493          	li	s1,0
    5b38:	02079463          	bnez	a5,5b60 <_fclose_r+0x5c>
    5b3c:	00048513          	mv	a0,s1
    5b40:	00c12083          	lw	ra,12(sp)
    5b44:	00812403          	lw	s0,8(sp)
    5b48:	00412483          	lw	s1,4(sp)
    5b4c:	00012903          	lw	s2,0(sp)
    5b50:	01010113          	addi	sp,sp,16
    5b54:	00008067          	ret
    5b58:	928fd0ef          	jal	ra,2c80 <__sinit>
    5b5c:	fd5ff06f          	j	5b30 <_fclose_r+0x2c>
    5b60:	00040593          	mv	a1,s0
    5b64:	00090513          	mv	a0,s2
    5b68:	d29fc0ef          	jal	ra,2890 <__sflush_r>
    5b6c:	00050493          	mv	s1,a0
    5b70:	02c42783          	lw	a5,44(s0)
    5b74:	00078a63          	beqz	a5,5b88 <_fclose_r+0x84>
    5b78:	01c42583          	lw	a1,28(s0)
    5b7c:	00090513          	mv	a0,s2
    5b80:	000780e7          	jalr	a5
    5b84:	04054863          	bltz	a0,5bd4 <_fclose_r+0xd0>
    5b88:	00c45783          	lhu	a5,12(s0)
    5b8c:	0807f793          	andi	a5,a5,128
    5b90:	04079663          	bnez	a5,5bdc <_fclose_r+0xd8>
    5b94:	03042583          	lw	a1,48(s0)
    5b98:	00058c63          	beqz	a1,5bb0 <_fclose_r+0xac>
    5b9c:	04040793          	addi	a5,s0,64
    5ba0:	00f58663          	beq	a1,a5,5bac <_fclose_r+0xa8>
    5ba4:	00090513          	mv	a0,s2
    5ba8:	e98fd0ef          	jal	ra,3240 <_free_r>
    5bac:	02042823          	sw	zero,48(s0)
    5bb0:	04442583          	lw	a1,68(s0)
    5bb4:	00058863          	beqz	a1,5bc4 <_fclose_r+0xc0>
    5bb8:	00090513          	mv	a0,s2
    5bbc:	e84fd0ef          	jal	ra,3240 <_free_r>
    5bc0:	04042223          	sw	zero,68(s0)
    5bc4:	b58fd0ef          	jal	ra,2f1c <__sfp_lock_acquire>
    5bc8:	00041623          	sh	zero,12(s0)
    5bcc:	b54fd0ef          	jal	ra,2f20 <__sfp_lock_release>
    5bd0:	f6dff06f          	j	5b3c <_fclose_r+0x38>
    5bd4:	fff00493          	li	s1,-1
    5bd8:	fb1ff06f          	j	5b88 <_fclose_r+0x84>
    5bdc:	01042583          	lw	a1,16(s0)
    5be0:	00090513          	mv	a0,s2
    5be4:	e5cfd0ef          	jal	ra,3240 <_free_r>
    5be8:	fadff06f          	j	5b94 <_fclose_r+0x90>
    5bec:	00000493          	li	s1,0
    5bf0:	f4dff06f          	j	5b3c <_fclose_r+0x38>

00005bf4 <fclose>:
    5bf4:	ff010113          	addi	sp,sp,-16
    5bf8:	00112623          	sw	ra,12(sp)
    5bfc:	00050593          	mv	a1,a0
    5c00:	000117b7          	lui	a5,0x11
    5c04:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    5c08:	efdff0ef          	jal	ra,5b04 <_fclose_r>
    5c0c:	00c12083          	lw	ra,12(sp)
    5c10:	01010113          	addi	sp,sp,16
    5c14:	00008067          	ret

00005c18 <_fstat_r>:
    5c18:	ff010113          	addi	sp,sp,-16
    5c1c:	00112623          	sw	ra,12(sp)
    5c20:	00812423          	sw	s0,8(sp)
    5c24:	00050413          	mv	s0,a0
    5c28:	00058513          	mv	a0,a1
    5c2c:	000147b7          	lui	a5,0x14
    5c30:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5c34:	00060593          	mv	a1,a2
    5c38:	2dc000ef          	jal	ra,5f14 <_fstat>
    5c3c:	fff00793          	li	a5,-1
    5c40:	00f50a63          	beq	a0,a5,5c54 <_fstat_r+0x3c>
    5c44:	00c12083          	lw	ra,12(sp)
    5c48:	00812403          	lw	s0,8(sp)
    5c4c:	01010113          	addi	sp,sp,16
    5c50:	00008067          	ret
    5c54:	000147b7          	lui	a5,0x14
    5c58:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5c5c:	fe0784e3          	beqz	a5,5c44 <_fstat_r+0x2c>
    5c60:	00f42023          	sw	a5,0(s0)
    5c64:	fe1ff06f          	j	5c44 <_fstat_r+0x2c>

00005c68 <_isatty_r>:
    5c68:	ff010113          	addi	sp,sp,-16
    5c6c:	00112623          	sw	ra,12(sp)
    5c70:	00812423          	sw	s0,8(sp)
    5c74:	00050413          	mv	s0,a0
    5c78:	000147b7          	lui	a5,0x14
    5c7c:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5c80:	00058513          	mv	a0,a1
    5c84:	2f8000ef          	jal	ra,5f7c <_isatty>
    5c88:	fff00793          	li	a5,-1
    5c8c:	00f50a63          	beq	a0,a5,5ca0 <_isatty_r+0x38>
    5c90:	00c12083          	lw	ra,12(sp)
    5c94:	00812403          	lw	s0,8(sp)
    5c98:	01010113          	addi	sp,sp,16
    5c9c:	00008067          	ret
    5ca0:	000147b7          	lui	a5,0x14
    5ca4:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5ca8:	fe0784e3          	beqz	a5,5c90 <_isatty_r+0x28>
    5cac:	00f42023          	sw	a5,0(s0)
    5cb0:	fe1ff06f          	j	5c90 <_isatty_r+0x28>

00005cb4 <_lseek_r>:
    5cb4:	ff010113          	addi	sp,sp,-16
    5cb8:	00112623          	sw	ra,12(sp)
    5cbc:	00812423          	sw	s0,8(sp)
    5cc0:	00050413          	mv	s0,a0
    5cc4:	00058513          	mv	a0,a1
    5cc8:	00060593          	mv	a1,a2
    5ccc:	000147b7          	lui	a5,0x14
    5cd0:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5cd4:	00068613          	mv	a2,a3
    5cd8:	300000ef          	jal	ra,5fd8 <_lseek>
    5cdc:	fff00793          	li	a5,-1
    5ce0:	00f50a63          	beq	a0,a5,5cf4 <_lseek_r+0x40>
    5ce4:	00c12083          	lw	ra,12(sp)
    5ce8:	00812403          	lw	s0,8(sp)
    5cec:	01010113          	addi	sp,sp,16
    5cf0:	00008067          	ret
    5cf4:	000147b7          	lui	a5,0x14
    5cf8:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5cfc:	fe0784e3          	beqz	a5,5ce4 <_lseek_r+0x30>
    5d00:	00f42023          	sw	a5,0(s0)
    5d04:	fe1ff06f          	j	5ce4 <_lseek_r+0x30>

00005d08 <_read_r>:
    5d08:	ff010113          	addi	sp,sp,-16
    5d0c:	00112623          	sw	ra,12(sp)
    5d10:	00812423          	sw	s0,8(sp)
    5d14:	00050413          	mv	s0,a0
    5d18:	00058513          	mv	a0,a1
    5d1c:	00060593          	mv	a1,a2
    5d20:	000147b7          	lui	a5,0x14
    5d24:	bc07ac23          	sw	zero,-1064(a5) # 13bd8 <errno>
    5d28:	00068613          	mv	a2,a3
    5d2c:	2f0000ef          	jal	ra,601c <_read>
    5d30:	fff00793          	li	a5,-1
    5d34:	00f50a63          	beq	a0,a5,5d48 <_read_r+0x40>
    5d38:	00c12083          	lw	ra,12(sp)
    5d3c:	00812403          	lw	s0,8(sp)
    5d40:	01010113          	addi	sp,sp,16
    5d44:	00008067          	ret
    5d48:	000147b7          	lui	a5,0x14
    5d4c:	bd87a783          	lw	a5,-1064(a5) # 13bd8 <errno>
    5d50:	fe0784e3          	beqz	a5,5d38 <_read_r+0x30>
    5d54:	00f42023          	sw	a5,0(s0)
    5d58:	fe1ff06f          	j	5d38 <_read_r+0x30>

00005d5c <cleanup_glue>:
    5d5c:	ff010113          	addi	sp,sp,-16
    5d60:	00112623          	sw	ra,12(sp)
    5d64:	00812423          	sw	s0,8(sp)
    5d68:	00912223          	sw	s1,4(sp)
    5d6c:	00050493          	mv	s1,a0
    5d70:	00058413          	mv	s0,a1
    5d74:	0005a583          	lw	a1,0(a1)
    5d78:	00058463          	beqz	a1,5d80 <cleanup_glue+0x24>
    5d7c:	fe1ff0ef          	jal	ra,5d5c <cleanup_glue>
    5d80:	00040593          	mv	a1,s0
    5d84:	00048513          	mv	a0,s1
    5d88:	cb8fd0ef          	jal	ra,3240 <_free_r>
    5d8c:	00c12083          	lw	ra,12(sp)
    5d90:	00812403          	lw	s0,8(sp)
    5d94:	00412483          	lw	s1,4(sp)
    5d98:	01010113          	addi	sp,sp,16
    5d9c:	00008067          	ret

00005da0 <_reclaim_reent>:
    5da0:	000117b7          	lui	a5,0x11
    5da4:	bbc7a783          	lw	a5,-1092(a5) # 10bbc <_impure_ptr>
    5da8:	0ea78a63          	beq	a5,a0,5e9c <_reclaim_reent+0xfc>
    5dac:	fe010113          	addi	sp,sp,-32
    5db0:	00112e23          	sw	ra,28(sp)
    5db4:	00812c23          	sw	s0,24(sp)
    5db8:	00912a23          	sw	s1,20(sp)
    5dbc:	01212823          	sw	s2,16(sp)
    5dc0:	01312623          	sw	s3,12(sp)
    5dc4:	00050493          	mv	s1,a0
    5dc8:	04c52783          	lw	a5,76(a0)
    5dcc:	04078663          	beqz	a5,5e18 <_reclaim_reent+0x78>
    5dd0:	00000913          	li	s2,0
    5dd4:	08000993          	li	s3,128
    5dd8:	00c0006f          	j	5de4 <_reclaim_reent+0x44>
    5ddc:	00490913          	addi	s2,s2,4
    5de0:	03390663          	beq	s2,s3,5e0c <_reclaim_reent+0x6c>
    5de4:	04c4a783          	lw	a5,76(s1)
    5de8:	012787b3          	add	a5,a5,s2
    5dec:	0007a403          	lw	s0,0(a5)
    5df0:	fe0406e3          	beqz	s0,5ddc <_reclaim_reent+0x3c>
    5df4:	00040593          	mv	a1,s0
    5df8:	00042403          	lw	s0,0(s0)
    5dfc:	00048513          	mv	a0,s1
    5e00:	c40fd0ef          	jal	ra,3240 <_free_r>
    5e04:	fe0418e3          	bnez	s0,5df4 <_reclaim_reent+0x54>
    5e08:	fd5ff06f          	j	5ddc <_reclaim_reent+0x3c>
    5e0c:	04c4a583          	lw	a1,76(s1)
    5e10:	00048513          	mv	a0,s1
    5e14:	c2cfd0ef          	jal	ra,3240 <_free_r>
    5e18:	0404a583          	lw	a1,64(s1)
    5e1c:	00058663          	beqz	a1,5e28 <_reclaim_reent+0x88>
    5e20:	00048513          	mv	a0,s1
    5e24:	c1cfd0ef          	jal	ra,3240 <_free_r>
    5e28:	1484a403          	lw	s0,328(s1)
    5e2c:	02040063          	beqz	s0,5e4c <_reclaim_reent+0xac>
    5e30:	14c48913          	addi	s2,s1,332
    5e34:	01240c63          	beq	s0,s2,5e4c <_reclaim_reent+0xac>
    5e38:	00040593          	mv	a1,s0
    5e3c:	00042403          	lw	s0,0(s0)
    5e40:	00048513          	mv	a0,s1
    5e44:	bfcfd0ef          	jal	ra,3240 <_free_r>
    5e48:	fe8918e3          	bne	s2,s0,5e38 <_reclaim_reent+0x98>
    5e4c:	0544a583          	lw	a1,84(s1)
    5e50:	00058663          	beqz	a1,5e5c <_reclaim_reent+0xbc>
    5e54:	00048513          	mv	a0,s1
    5e58:	be8fd0ef          	jal	ra,3240 <_free_r>
    5e5c:	0384a783          	lw	a5,56(s1)
    5e60:	02078063          	beqz	a5,5e80 <_reclaim_reent+0xe0>
    5e64:	03c4a783          	lw	a5,60(s1)
    5e68:	00048513          	mv	a0,s1
    5e6c:	000780e7          	jalr	a5
    5e70:	2e04a583          	lw	a1,736(s1)
    5e74:	00058663          	beqz	a1,5e80 <_reclaim_reent+0xe0>
    5e78:	00048513          	mv	a0,s1
    5e7c:	ee1ff0ef          	jal	ra,5d5c <cleanup_glue>
    5e80:	01c12083          	lw	ra,28(sp)
    5e84:	01812403          	lw	s0,24(sp)
    5e88:	01412483          	lw	s1,20(sp)
    5e8c:	01012903          	lw	s2,16(sp)
    5e90:	00c12983          	lw	s3,12(sp)
    5e94:	02010113          	addi	sp,sp,32
    5e98:	00008067          	ret
    5e9c:	00008067          	ret

00005ea0 <_close>:
    5ea0:	ff010113          	addi	sp,sp,-16
    5ea4:	00112623          	sw	ra,12(sp)
    5ea8:	00812423          	sw	s0,8(sp)
    5eac:	03900893          	li	a7,57
    5eb0:	00000073          	ecall
    5eb4:	00050413          	mv	s0,a0
    5eb8:	00054c63          	bltz	a0,5ed0 <_close+0x30>
    5ebc:	00040513          	mv	a0,s0
    5ec0:	00c12083          	lw	ra,12(sp)
    5ec4:	00812403          	lw	s0,8(sp)
    5ec8:	01010113          	addi	sp,sp,16
    5ecc:	00008067          	ret
    5ed0:	2e8000ef          	jal	ra,61b8 <__errno>
    5ed4:	40800433          	neg	s0,s0
    5ed8:	00852023          	sw	s0,0(a0)
    5edc:	fff00413          	li	s0,-1
    5ee0:	fddff06f          	j	5ebc <_close+0x1c>

00005ee4 <_exit>:
    5ee4:	05d00893          	li	a7,93
    5ee8:	00000073          	ecall
    5eec:	00054463          	bltz	a0,5ef4 <_exit+0x10>
    5ef0:	0000006f          	j	5ef0 <_exit+0xc>
    5ef4:	ff010113          	addi	sp,sp,-16
    5ef8:	00112623          	sw	ra,12(sp)
    5efc:	00812423          	sw	s0,8(sp)
    5f00:	00050413          	mv	s0,a0
    5f04:	2b4000ef          	jal	ra,61b8 <__errno>
    5f08:	40800433          	neg	s0,s0
    5f0c:	00852023          	sw	s0,0(a0)
    5f10:	0000006f          	j	5f10 <_exit+0x2c>

00005f14 <_fstat>:
    5f14:	f7010113          	addi	sp,sp,-144
    5f18:	08112623          	sw	ra,140(sp)
    5f1c:	08812423          	sw	s0,136(sp)
    5f20:	08912223          	sw	s1,132(sp)
    5f24:	00058493          	mv	s1,a1
    5f28:	05000893          	li	a7,80
    5f2c:	00010593          	mv	a1,sp
    5f30:	00000073          	ecall
    5f34:	00050413          	mv	s0,a0
    5f38:	02054463          	bltz	a0,5f60 <_fstat+0x4c>
    5f3c:	00010593          	mv	a1,sp
    5f40:	00048513          	mv	a0,s1
    5f44:	1f0000ef          	jal	ra,6134 <_conv_stat>
    5f48:	00040513          	mv	a0,s0
    5f4c:	08c12083          	lw	ra,140(sp)
    5f50:	08812403          	lw	s0,136(sp)
    5f54:	08412483          	lw	s1,132(sp)
    5f58:	09010113          	addi	sp,sp,144
    5f5c:	00008067          	ret
    5f60:	258000ef          	jal	ra,61b8 <__errno>
    5f64:	40800433          	neg	s0,s0
    5f68:	00852023          	sw	s0,0(a0)
    5f6c:	fff00413          	li	s0,-1
    5f70:	fcdff06f          	j	5f3c <_fstat+0x28>

00005f74 <_getpid>:
    5f74:	00100513          	li	a0,1
    5f78:	00008067          	ret

00005f7c <_isatty>:
    5f7c:	f9010113          	addi	sp,sp,-112
    5f80:	06112623          	sw	ra,108(sp)
    5f84:	00810593          	addi	a1,sp,8
    5f88:	f8dff0ef          	jal	ra,5f14 <_fstat>
    5f8c:	fff00793          	li	a5,-1
    5f90:	00f50e63          	beq	a0,a5,5fac <_isatty+0x30>
    5f94:	00c12503          	lw	a0,12(sp)
    5f98:	00d55513          	srli	a0,a0,0xd
    5f9c:	00157513          	andi	a0,a0,1
    5fa0:	06c12083          	lw	ra,108(sp)
    5fa4:	07010113          	addi	sp,sp,112
    5fa8:	00008067          	ret
    5fac:	00000513          	li	a0,0
    5fb0:	ff1ff06f          	j	5fa0 <_isatty+0x24>

00005fb4 <_kill>:
    5fb4:	ff010113          	addi	sp,sp,-16
    5fb8:	00112623          	sw	ra,12(sp)
    5fbc:	1fc000ef          	jal	ra,61b8 <__errno>
    5fc0:	01600793          	li	a5,22
    5fc4:	00f52023          	sw	a5,0(a0)
    5fc8:	fff00513          	li	a0,-1
    5fcc:	00c12083          	lw	ra,12(sp)
    5fd0:	01010113          	addi	sp,sp,16
    5fd4:	00008067          	ret

00005fd8 <_lseek>:
    5fd8:	ff010113          	addi	sp,sp,-16
    5fdc:	00112623          	sw	ra,12(sp)
    5fe0:	00812423          	sw	s0,8(sp)
    5fe4:	03e00893          	li	a7,62
    5fe8:	00000073          	ecall
    5fec:	00050413          	mv	s0,a0
    5ff0:	00054c63          	bltz	a0,6008 <_lseek+0x30>
    5ff4:	00040513          	mv	a0,s0
    5ff8:	00c12083          	lw	ra,12(sp)
    5ffc:	00812403          	lw	s0,8(sp)
    6000:	01010113          	addi	sp,sp,16
    6004:	00008067          	ret
    6008:	1b0000ef          	jal	ra,61b8 <__errno>
    600c:	40800433          	neg	s0,s0
    6010:	00852023          	sw	s0,0(a0)
    6014:	fff00413          	li	s0,-1
    6018:	fddff06f          	j	5ff4 <_lseek+0x1c>

0000601c <_read>:
    601c:	ff010113          	addi	sp,sp,-16
    6020:	00112623          	sw	ra,12(sp)
    6024:	00812423          	sw	s0,8(sp)
    6028:	03f00893          	li	a7,63
    602c:	00000073          	ecall
    6030:	00050413          	mv	s0,a0
    6034:	00054c63          	bltz	a0,604c <_read+0x30>
    6038:	00040513          	mv	a0,s0
    603c:	00c12083          	lw	ra,12(sp)
    6040:	00812403          	lw	s0,8(sp)
    6044:	01010113          	addi	sp,sp,16
    6048:	00008067          	ret
    604c:	16c000ef          	jal	ra,61b8 <__errno>
    6050:	40800433          	neg	s0,s0
    6054:	00852023          	sw	s0,0(a0)
    6058:	fff00413          	li	s0,-1
    605c:	fddff06f          	j	6038 <_read+0x1c>

00006060 <_sbrk>:
    6060:	ff010113          	addi	sp,sp,-16
    6064:	00112623          	sw	ra,12(sp)
    6068:	00050793          	mv	a5,a0
    606c:	00014737          	lui	a4,0x14
    6070:	bdc72703          	lw	a4,-1060(a4) # 13bdc <heap_end.0>
    6074:	02071063          	bnez	a4,6094 <_sbrk+0x34>
    6078:	0d600893          	li	a7,214
    607c:	00000513          	li	a0,0
    6080:	00000073          	ecall
    6084:	fff00713          	li	a4,-1
    6088:	04e50063          	beq	a0,a4,60c8 <_sbrk+0x68>
    608c:	00014737          	lui	a4,0x14
    6090:	bca72e23          	sw	a0,-1060(a4) # 13bdc <heap_end.0>
    6094:	00014737          	lui	a4,0x14
    6098:	bdc72703          	lw	a4,-1060(a4) # 13bdc <heap_end.0>
    609c:	00e787b3          	add	a5,a5,a4
    60a0:	0d600893          	li	a7,214
    60a4:	00078513          	mv	a0,a5
    60a8:	00000073          	ecall
    60ac:	02f51863          	bne	a0,a5,60dc <_sbrk+0x7c>
    60b0:	000146b7          	lui	a3,0x14
    60b4:	bcf6ae23          	sw	a5,-1060(a3) # 13bdc <heap_end.0>
    60b8:	00070513          	mv	a0,a4
    60bc:	00c12083          	lw	ra,12(sp)
    60c0:	01010113          	addi	sp,sp,16
    60c4:	00008067          	ret
    60c8:	0f0000ef          	jal	ra,61b8 <__errno>
    60cc:	00c00793          	li	a5,12
    60d0:	00f52023          	sw	a5,0(a0)
    60d4:	fff00513          	li	a0,-1
    60d8:	fe5ff06f          	j	60bc <_sbrk+0x5c>
    60dc:	0dc000ef          	jal	ra,61b8 <__errno>
    60e0:	00c00793          	li	a5,12
    60e4:	00f52023          	sw	a5,0(a0)
    60e8:	fff00513          	li	a0,-1
    60ec:	fd1ff06f          	j	60bc <_sbrk+0x5c>

000060f0 <_write>:
    60f0:	ff010113          	addi	sp,sp,-16
    60f4:	00112623          	sw	ra,12(sp)
    60f8:	00812423          	sw	s0,8(sp)
    60fc:	04000893          	li	a7,64
    6100:	00000073          	ecall
    6104:	00050413          	mv	s0,a0
    6108:	00054c63          	bltz	a0,6120 <_write+0x30>
    610c:	00040513          	mv	a0,s0
    6110:	00c12083          	lw	ra,12(sp)
    6114:	00812403          	lw	s0,8(sp)
    6118:	01010113          	addi	sp,sp,16
    611c:	00008067          	ret
    6120:	098000ef          	jal	ra,61b8 <__errno>
    6124:	40800433          	neg	s0,s0
    6128:	00852023          	sw	s0,0(a0)
    612c:	fff00413          	li	s0,-1
    6130:	fddff06f          	j	610c <_write+0x1c>

00006134 <_conv_stat>:
    6134:	0005a783          	lw	a5,0(a1)
    6138:	00f51023          	sh	a5,0(a0)
    613c:	0085a783          	lw	a5,8(a1)
    6140:	00f51123          	sh	a5,2(a0)
    6144:	0105a783          	lw	a5,16(a1)
    6148:	00f52223          	sw	a5,4(a0)
    614c:	0145a783          	lw	a5,20(a1)
    6150:	00f51423          	sh	a5,8(a0)
    6154:	0185a783          	lw	a5,24(a1)
    6158:	00f51523          	sh	a5,10(a0)
    615c:	01c5a783          	lw	a5,28(a1)
    6160:	00f51623          	sh	a5,12(a0)
    6164:	0205a783          	lw	a5,32(a1)
    6168:	00f51723          	sh	a5,14(a0)
    616c:	0305a783          	lw	a5,48(a1)
    6170:	00f52823          	sw	a5,16(a0)
    6174:	0405a783          	lw	a5,64(a1)
    6178:	04f52623          	sw	a5,76(a0)
    617c:	0385a783          	lw	a5,56(a1)
    6180:	04f52423          	sw	a5,72(a0)
    6184:	0485a703          	lw	a4,72(a1)
    6188:	04c5a783          	lw	a5,76(a1)
    618c:	00e52c23          	sw	a4,24(a0)
    6190:	00f52e23          	sw	a5,28(a0)
    6194:	0585a703          	lw	a4,88(a1)
    6198:	05c5a783          	lw	a5,92(a1)
    619c:	02e52423          	sw	a4,40(a0)
    61a0:	02f52623          	sw	a5,44(a0)
    61a4:	0685a703          	lw	a4,104(a1)
    61a8:	06c5a783          	lw	a5,108(a1)
    61ac:	02e52c23          	sw	a4,56(a0)
    61b0:	02f52e23          	sw	a5,60(a0)
    61b4:	00008067          	ret

000061b8 <__errno>:
    61b8:	000117b7          	lui	a5,0x11
    61bc:	bbc7a503          	lw	a0,-1092(a5) # 10bbc <_impure_ptr>
    61c0:	00008067          	ret

000061c4 <__udivdi3>:
    61c4:	fd010113          	addi	sp,sp,-48
    61c8:	01312e23          	sw	s3,28(sp)
    61cc:	02112623          	sw	ra,44(sp)
    61d0:	02812423          	sw	s0,40(sp)
    61d4:	02912223          	sw	s1,36(sp)
    61d8:	03212023          	sw	s2,32(sp)
    61dc:	01412c23          	sw	s4,24(sp)
    61e0:	01512a23          	sw	s5,20(sp)
    61e4:	01612823          	sw	s6,16(sp)
    61e8:	01712623          	sw	s7,12(sp)
    61ec:	01812423          	sw	s8,8(sp)
    61f0:	01912223          	sw	s9,4(sp)
    61f4:	00050993          	mv	s3,a0
    61f8:	38069463          	bnez	a3,6580 <__udivdi3+0x3bc>
    61fc:	000137b7          	lui	a5,0x13
    6200:	00060a13          	mv	s4,a2
    6204:	00050493          	mv	s1,a0
    6208:	4cc78793          	addi	a5,a5,1228 # 134cc <__clz_tab>
    620c:	12c5f863          	bgeu	a1,a2,633c <__udivdi3+0x178>
    6210:	00010737          	lui	a4,0x10
    6214:	00058913          	mv	s2,a1
    6218:	10e67863          	bgeu	a2,a4,6328 <__udivdi3+0x164>
    621c:	10063713          	sltiu	a4,a2,256
    6220:	00174713          	xori	a4,a4,1
    6224:	00371713          	slli	a4,a4,0x3
    6228:	00e656b3          	srl	a3,a2,a4
    622c:	00d787b3          	add	a5,a5,a3
    6230:	0007c783          	lbu	a5,0(a5)
    6234:	02000693          	li	a3,32
    6238:	00e787b3          	add	a5,a5,a4
    623c:	40f68733          	sub	a4,a3,a5
    6240:	00f68c63          	beq	a3,a5,6258 <__udivdi3+0x94>
    6244:	00e59933          	sll	s2,a1,a4
    6248:	00f9d7b3          	srl	a5,s3,a5
    624c:	00e61a33          	sll	s4,a2,a4
    6250:	0127e933          	or	s2,a5,s2
    6254:	00e994b3          	sll	s1,s3,a4
    6258:	010a5a93          	srli	s5,s4,0x10
    625c:	000a8593          	mv	a1,s5
    6260:	00090513          	mv	a0,s2
    6264:	010a1b13          	slli	s6,s4,0x10
    6268:	984fb0ef          	jal	ra,13ec <__udivsi3>
    626c:	010b5b13          	srli	s6,s6,0x10
    6270:	00050593          	mv	a1,a0
    6274:	00050993          	mv	s3,a0
    6278:	000b0513          	mv	a0,s6
    627c:	1d9000ef          	jal	ra,6c54 <__mulsi3>
    6280:	00050413          	mv	s0,a0
    6284:	000a8593          	mv	a1,s5
    6288:	00090513          	mv	a0,s2
    628c:	9a8fb0ef          	jal	ra,1434 <__umodsi3>
    6290:	01051513          	slli	a0,a0,0x10
    6294:	0104d713          	srli	a4,s1,0x10
    6298:	00a76733          	or	a4,a4,a0
    629c:	00098913          	mv	s2,s3
    62a0:	00877e63          	bgeu	a4,s0,62bc <__udivdi3+0xf8>
    62a4:	01470733          	add	a4,a4,s4
    62a8:	fff98913          	addi	s2,s3,-1
    62ac:	01476863          	bltu	a4,s4,62bc <__udivdi3+0xf8>
    62b0:	00877663          	bgeu	a4,s0,62bc <__udivdi3+0xf8>
    62b4:	ffe98913          	addi	s2,s3,-2
    62b8:	01470733          	add	a4,a4,s4
    62bc:	40870433          	sub	s0,a4,s0
    62c0:	000a8593          	mv	a1,s5
    62c4:	00040513          	mv	a0,s0
    62c8:	924fb0ef          	jal	ra,13ec <__udivsi3>
    62cc:	00050593          	mv	a1,a0
    62d0:	00050993          	mv	s3,a0
    62d4:	000b0513          	mv	a0,s6
    62d8:	17d000ef          	jal	ra,6c54 <__mulsi3>
    62dc:	00050b13          	mv	s6,a0
    62e0:	000a8593          	mv	a1,s5
    62e4:	00040513          	mv	a0,s0
    62e8:	94cfb0ef          	jal	ra,1434 <__umodsi3>
    62ec:	01049713          	slli	a4,s1,0x10
    62f0:	01051513          	slli	a0,a0,0x10
    62f4:	01075713          	srli	a4,a4,0x10
    62f8:	00a76733          	or	a4,a4,a0
    62fc:	00098693          	mv	a3,s3
    6300:	01677c63          	bgeu	a4,s6,6318 <__udivdi3+0x154>
    6304:	00ea0733          	add	a4,s4,a4
    6308:	fff98693          	addi	a3,s3,-1
    630c:	01476663          	bltu	a4,s4,6318 <__udivdi3+0x154>
    6310:	01677463          	bgeu	a4,s6,6318 <__udivdi3+0x154>
    6314:	ffe98693          	addi	a3,s3,-2
    6318:	01091793          	slli	a5,s2,0x10
    631c:	00d7e7b3          	or	a5,a5,a3
    6320:	00000913          	li	s2,0
    6324:	1200006f          	j	6444 <__udivdi3+0x280>
    6328:	010006b7          	lui	a3,0x1000
    632c:	01000713          	li	a4,16
    6330:	eed66ce3          	bltu	a2,a3,6228 <__udivdi3+0x64>
    6334:	01800713          	li	a4,24
    6338:	ef1ff06f          	j	6228 <__udivdi3+0x64>
    633c:	00061463          	bnez	a2,6344 <__udivdi3+0x180>
    6340:	00100073          	ebreak
    6344:	00010737          	lui	a4,0x10
    6348:	12e67c63          	bgeu	a2,a4,6480 <__udivdi3+0x2bc>
    634c:	10063713          	sltiu	a4,a2,256
    6350:	00174713          	xori	a4,a4,1
    6354:	00371713          	slli	a4,a4,0x3
    6358:	00e656b3          	srl	a3,a2,a4
    635c:	00d787b3          	add	a5,a5,a3
    6360:	0007c783          	lbu	a5,0(a5)
    6364:	02000693          	li	a3,32
    6368:	00e787b3          	add	a5,a5,a4
    636c:	40f68733          	sub	a4,a3,a5
    6370:	12f69263          	bne	a3,a5,6494 <__udivdi3+0x2d0>
    6374:	40c589b3          	sub	s3,a1,a2
    6378:	00100913          	li	s2,1
    637c:	010a5b13          	srli	s6,s4,0x10
    6380:	000b0593          	mv	a1,s6
    6384:	00098513          	mv	a0,s3
    6388:	010a1b93          	slli	s7,s4,0x10
    638c:	860fb0ef          	jal	ra,13ec <__udivsi3>
    6390:	010bdb93          	srli	s7,s7,0x10
    6394:	00050593          	mv	a1,a0
    6398:	00050c13          	mv	s8,a0
    639c:	000b8513          	mv	a0,s7
    63a0:	0b5000ef          	jal	ra,6c54 <__mulsi3>
    63a4:	00050a93          	mv	s5,a0
    63a8:	000b0593          	mv	a1,s6
    63ac:	00098513          	mv	a0,s3
    63b0:	884fb0ef          	jal	ra,1434 <__umodsi3>
    63b4:	01051513          	slli	a0,a0,0x10
    63b8:	0104d713          	srli	a4,s1,0x10
    63bc:	00a76733          	or	a4,a4,a0
    63c0:	000c0993          	mv	s3,s8
    63c4:	01577e63          	bgeu	a4,s5,63e0 <__udivdi3+0x21c>
    63c8:	01470733          	add	a4,a4,s4
    63cc:	fffc0993          	addi	s3,s8,-1 # 7fffffff <heap_end.0+0x7ffec423>
    63d0:	01476863          	bltu	a4,s4,63e0 <__udivdi3+0x21c>
    63d4:	01577663          	bgeu	a4,s5,63e0 <__udivdi3+0x21c>
    63d8:	ffec0993          	addi	s3,s8,-2
    63dc:	01470733          	add	a4,a4,s4
    63e0:	41570433          	sub	s0,a4,s5
    63e4:	000b0593          	mv	a1,s6
    63e8:	00040513          	mv	a0,s0
    63ec:	800fb0ef          	jal	ra,13ec <__udivsi3>
    63f0:	00050593          	mv	a1,a0
    63f4:	00050a93          	mv	s5,a0
    63f8:	000b8513          	mv	a0,s7
    63fc:	059000ef          	jal	ra,6c54 <__mulsi3>
    6400:	00050b93          	mv	s7,a0
    6404:	000b0593          	mv	a1,s6
    6408:	00040513          	mv	a0,s0
    640c:	828fb0ef          	jal	ra,1434 <__umodsi3>
    6410:	01049713          	slli	a4,s1,0x10
    6414:	01051513          	slli	a0,a0,0x10
    6418:	01075713          	srli	a4,a4,0x10
    641c:	00a76733          	or	a4,a4,a0
    6420:	000a8693          	mv	a3,s5
    6424:	01777c63          	bgeu	a4,s7,643c <__udivdi3+0x278>
    6428:	00ea0733          	add	a4,s4,a4
    642c:	fffa8693          	addi	a3,s5,-1
    6430:	01476663          	bltu	a4,s4,643c <__udivdi3+0x278>
    6434:	01777463          	bgeu	a4,s7,643c <__udivdi3+0x278>
    6438:	ffea8693          	addi	a3,s5,-2
    643c:	01099793          	slli	a5,s3,0x10
    6440:	00d7e7b3          	or	a5,a5,a3
    6444:	02c12083          	lw	ra,44(sp)
    6448:	02812403          	lw	s0,40(sp)
    644c:	02412483          	lw	s1,36(sp)
    6450:	01c12983          	lw	s3,28(sp)
    6454:	01812a03          	lw	s4,24(sp)
    6458:	01412a83          	lw	s5,20(sp)
    645c:	01012b03          	lw	s6,16(sp)
    6460:	00c12b83          	lw	s7,12(sp)
    6464:	00812c03          	lw	s8,8(sp)
    6468:	00412c83          	lw	s9,4(sp)
    646c:	00090593          	mv	a1,s2
    6470:	00078513          	mv	a0,a5
    6474:	02012903          	lw	s2,32(sp)
    6478:	03010113          	addi	sp,sp,48
    647c:	00008067          	ret
    6480:	010006b7          	lui	a3,0x1000
    6484:	01000713          	li	a4,16
    6488:	ecd668e3          	bltu	a2,a3,6358 <__udivdi3+0x194>
    648c:	01800713          	li	a4,24
    6490:	ec9ff06f          	j	6358 <__udivdi3+0x194>
    6494:	00e61a33          	sll	s4,a2,a4
    6498:	00f5d933          	srl	s2,a1,a5
    649c:	010a5b93          	srli	s7,s4,0x10
    64a0:	00e595b3          	sll	a1,a1,a4
    64a4:	00f9d7b3          	srl	a5,s3,a5
    64a8:	00b7eab3          	or	s5,a5,a1
    64ac:	00e994b3          	sll	s1,s3,a4
    64b0:	000b8593          	mv	a1,s7
    64b4:	00090513          	mv	a0,s2
    64b8:	010a1993          	slli	s3,s4,0x10
    64bc:	f31fa0ef          	jal	ra,13ec <__udivsi3>
    64c0:	0109d993          	srli	s3,s3,0x10
    64c4:	00050593          	mv	a1,a0
    64c8:	00050b13          	mv	s6,a0
    64cc:	00098513          	mv	a0,s3
    64d0:	784000ef          	jal	ra,6c54 <__mulsi3>
    64d4:	00050413          	mv	s0,a0
    64d8:	000b8593          	mv	a1,s7
    64dc:	00090513          	mv	a0,s2
    64e0:	f55fa0ef          	jal	ra,1434 <__umodsi3>
    64e4:	01051513          	slli	a0,a0,0x10
    64e8:	010ad713          	srli	a4,s5,0x10
    64ec:	00a76733          	or	a4,a4,a0
    64f0:	000b0913          	mv	s2,s6
    64f4:	00877e63          	bgeu	a4,s0,6510 <__udivdi3+0x34c>
    64f8:	01470733          	add	a4,a4,s4
    64fc:	fffb0913          	addi	s2,s6,-1
    6500:	01476863          	bltu	a4,s4,6510 <__udivdi3+0x34c>
    6504:	00877663          	bgeu	a4,s0,6510 <__udivdi3+0x34c>
    6508:	ffeb0913          	addi	s2,s6,-2
    650c:	01470733          	add	a4,a4,s4
    6510:	40870433          	sub	s0,a4,s0
    6514:	000b8593          	mv	a1,s7
    6518:	00040513          	mv	a0,s0
    651c:	ed1fa0ef          	jal	ra,13ec <__udivsi3>
    6520:	00050593          	mv	a1,a0
    6524:	00050b13          	mv	s6,a0
    6528:	00098513          	mv	a0,s3
    652c:	728000ef          	jal	ra,6c54 <__mulsi3>
    6530:	00050993          	mv	s3,a0
    6534:	000b8593          	mv	a1,s7
    6538:	00040513          	mv	a0,s0
    653c:	ef9fa0ef          	jal	ra,1434 <__umodsi3>
    6540:	010a9793          	slli	a5,s5,0x10
    6544:	01051513          	slli	a0,a0,0x10
    6548:	0107d793          	srli	a5,a5,0x10
    654c:	00a7e7b3          	or	a5,a5,a0
    6550:	000b0713          	mv	a4,s6
    6554:	0137fe63          	bgeu	a5,s3,6570 <__udivdi3+0x3ac>
    6558:	014787b3          	add	a5,a5,s4
    655c:	fffb0713          	addi	a4,s6,-1
    6560:	0147e863          	bltu	a5,s4,6570 <__udivdi3+0x3ac>
    6564:	0137f663          	bgeu	a5,s3,6570 <__udivdi3+0x3ac>
    6568:	ffeb0713          	addi	a4,s6,-2
    656c:	014787b3          	add	a5,a5,s4
    6570:	01091913          	slli	s2,s2,0x10
    6574:	413789b3          	sub	s3,a5,s3
    6578:	00e96933          	or	s2,s2,a4
    657c:	e01ff06f          	j	637c <__udivdi3+0x1b8>
    6580:	1ed5ec63          	bltu	a1,a3,6778 <__udivdi3+0x5b4>
    6584:	000107b7          	lui	a5,0x10
    6588:	04f6f463          	bgeu	a3,a5,65d0 <__udivdi3+0x40c>
    658c:	1006b513          	sltiu	a0,a3,256
    6590:	00154513          	xori	a0,a0,1
    6594:	00351513          	slli	a0,a0,0x3
    6598:	000137b7          	lui	a5,0x13
    659c:	00a6d733          	srl	a4,a3,a0
    65a0:	4cc78793          	addi	a5,a5,1228 # 134cc <__clz_tab>
    65a4:	00e787b3          	add	a5,a5,a4
    65a8:	0007c703          	lbu	a4,0(a5)
    65ac:	02000793          	li	a5,32
    65b0:	00a70733          	add	a4,a4,a0
    65b4:	40e78933          	sub	s2,a5,a4
    65b8:	02e79663          	bne	a5,a4,65e4 <__udivdi3+0x420>
    65bc:	00100793          	li	a5,1
    65c0:	e8b6e2e3          	bltu	a3,a1,6444 <__udivdi3+0x280>
    65c4:	00c9b7b3          	sltu	a5,s3,a2
    65c8:	0017c793          	xori	a5,a5,1
    65cc:	e79ff06f          	j	6444 <__udivdi3+0x280>
    65d0:	010007b7          	lui	a5,0x1000
    65d4:	01000513          	li	a0,16
    65d8:	fcf6e0e3          	bltu	a3,a5,6598 <__udivdi3+0x3d4>
    65dc:	01800513          	li	a0,24
    65e0:	fb9ff06f          	j	6598 <__udivdi3+0x3d4>
    65e4:	012696b3          	sll	a3,a3,s2
    65e8:	00e65b33          	srl	s6,a2,a4
    65ec:	00db6b33          	or	s6,s6,a3
    65f0:	00e5da33          	srl	s4,a1,a4
    65f4:	010b5c13          	srli	s8,s6,0x10
    65f8:	00e9d733          	srl	a4,s3,a4
    65fc:	012595b3          	sll	a1,a1,s2
    6600:	00b76ab3          	or	s5,a4,a1
    6604:	000a0513          	mv	a0,s4
    6608:	000c0593          	mv	a1,s8
    660c:	010b1b93          	slli	s7,s6,0x10
    6610:	012614b3          	sll	s1,a2,s2
    6614:	010bdb93          	srli	s7,s7,0x10
    6618:	dd5fa0ef          	jal	ra,13ec <__udivsi3>
    661c:	00050593          	mv	a1,a0
    6620:	00050c93          	mv	s9,a0
    6624:	000b8513          	mv	a0,s7
    6628:	62c000ef          	jal	ra,6c54 <__mulsi3>
    662c:	00050413          	mv	s0,a0
    6630:	000c0593          	mv	a1,s8
    6634:	000a0513          	mv	a0,s4
    6638:	dfdfa0ef          	jal	ra,1434 <__umodsi3>
    663c:	01051513          	slli	a0,a0,0x10
    6640:	010ad693          	srli	a3,s5,0x10
    6644:	00a6e6b3          	or	a3,a3,a0
    6648:	000c8a13          	mv	s4,s9
    664c:	0086fe63          	bgeu	a3,s0,6668 <__udivdi3+0x4a4>
    6650:	016686b3          	add	a3,a3,s6
    6654:	fffc8a13          	addi	s4,s9,-1
    6658:	0166e863          	bltu	a3,s6,6668 <__udivdi3+0x4a4>
    665c:	0086f663          	bgeu	a3,s0,6668 <__udivdi3+0x4a4>
    6660:	ffec8a13          	addi	s4,s9,-2
    6664:	016686b3          	add	a3,a3,s6
    6668:	40868433          	sub	s0,a3,s0
    666c:	000c0593          	mv	a1,s8
    6670:	00040513          	mv	a0,s0
    6674:	d79fa0ef          	jal	ra,13ec <__udivsi3>
    6678:	00050593          	mv	a1,a0
    667c:	00050c93          	mv	s9,a0
    6680:	000b8513          	mv	a0,s7
    6684:	5d0000ef          	jal	ra,6c54 <__mulsi3>
    6688:	00050b93          	mv	s7,a0
    668c:	000c0593          	mv	a1,s8
    6690:	00040513          	mv	a0,s0
    6694:	da1fa0ef          	jal	ra,1434 <__umodsi3>
    6698:	010a9713          	slli	a4,s5,0x10
    669c:	01051513          	slli	a0,a0,0x10
    66a0:	01075713          	srli	a4,a4,0x10
    66a4:	00a76733          	or	a4,a4,a0
    66a8:	000c8693          	mv	a3,s9
    66ac:	01777e63          	bgeu	a4,s7,66c8 <__udivdi3+0x504>
    66b0:	01670733          	add	a4,a4,s6
    66b4:	fffc8693          	addi	a3,s9,-1
    66b8:	01676863          	bltu	a4,s6,66c8 <__udivdi3+0x504>
    66bc:	01777663          	bgeu	a4,s7,66c8 <__udivdi3+0x504>
    66c0:	ffec8693          	addi	a3,s9,-2
    66c4:	01670733          	add	a4,a4,s6
    66c8:	010a1793          	slli	a5,s4,0x10
    66cc:	00010e37          	lui	t3,0x10
    66d0:	00d7e7b3          	or	a5,a5,a3
    66d4:	fffe0313          	addi	t1,t3,-1 # ffff <main+0x9387>
    66d8:	41770833          	sub	a6,a4,s7
    66dc:	0067f733          	and	a4,a5,t1
    66e0:	0064f333          	and	t1,s1,t1
    66e4:	0107de93          	srli	t4,a5,0x10
    66e8:	0104d493          	srli	s1,s1,0x10
    66ec:	00070513          	mv	a0,a4
    66f0:	00030593          	mv	a1,t1
    66f4:	560000ef          	jal	ra,6c54 <__mulsi3>
    66f8:	00050893          	mv	a7,a0
    66fc:	00048593          	mv	a1,s1
    6700:	00070513          	mv	a0,a4
    6704:	550000ef          	jal	ra,6c54 <__mulsi3>
    6708:	00050713          	mv	a4,a0
    670c:	00030593          	mv	a1,t1
    6710:	000e8513          	mv	a0,t4
    6714:	540000ef          	jal	ra,6c54 <__mulsi3>
    6718:	00050313          	mv	t1,a0
    671c:	00048593          	mv	a1,s1
    6720:	000e8513          	mv	a0,t4
    6724:	530000ef          	jal	ra,6c54 <__mulsi3>
    6728:	00670733          	add	a4,a4,t1
    672c:	0108d693          	srli	a3,a7,0x10
    6730:	00d70733          	add	a4,a4,a3
    6734:	00677463          	bgeu	a4,t1,673c <__udivdi3+0x578>
    6738:	01c50533          	add	a0,a0,t3
    673c:	01075693          	srli	a3,a4,0x10
    6740:	00a686b3          	add	a3,a3,a0
    6744:	02d86663          	bltu	a6,a3,6770 <__udivdi3+0x5ac>
    6748:	bcd81ce3          	bne	a6,a3,6320 <__udivdi3+0x15c>
    674c:	00010637          	lui	a2,0x10
    6750:	fff60613          	addi	a2,a2,-1 # ffff <main+0x9387>
    6754:	00c77733          	and	a4,a4,a2
    6758:	01071713          	slli	a4,a4,0x10
    675c:	00c8f8b3          	and	a7,a7,a2
    6760:	012996b3          	sll	a3,s3,s2
    6764:	01170733          	add	a4,a4,a7
    6768:	00000913          	li	s2,0
    676c:	cce6fce3          	bgeu	a3,a4,6444 <__udivdi3+0x280>
    6770:	fff78793          	addi	a5,a5,-1 # ffffff <heap_end.0+0xfec423>
    6774:	badff06f          	j	6320 <__udivdi3+0x15c>
    6778:	00000913          	li	s2,0
    677c:	00000793          	li	a5,0
    6780:	cc5ff06f          	j	6444 <__udivdi3+0x280>

00006784 <__umoddi3>:
    6784:	fd010113          	addi	sp,sp,-48
    6788:	02812423          	sw	s0,40(sp)
    678c:	02912223          	sw	s1,36(sp)
    6790:	02112623          	sw	ra,44(sp)
    6794:	03212023          	sw	s2,32(sp)
    6798:	01312e23          	sw	s3,28(sp)
    679c:	01412c23          	sw	s4,24(sp)
    67a0:	01512a23          	sw	s5,20(sp)
    67a4:	01612823          	sw	s6,16(sp)
    67a8:	01712623          	sw	s7,12(sp)
    67ac:	01812423          	sw	s8,8(sp)
    67b0:	01912223          	sw	s9,4(sp)
    67b4:	01a12023          	sw	s10,0(sp)
    67b8:	00050413          	mv	s0,a0
    67bc:	00058493          	mv	s1,a1
    67c0:	24069c63          	bnez	a3,6a18 <__umoddi3+0x294>
    67c4:	000137b7          	lui	a5,0x13
    67c8:	00060a13          	mv	s4,a2
    67cc:	4cc78793          	addi	a5,a5,1228 # 134cc <__clz_tab>
    67d0:	12c5fe63          	bgeu	a1,a2,690c <__umoddi3+0x188>
    67d4:	00010737          	lui	a4,0x10
    67d8:	12e67063          	bgeu	a2,a4,68f8 <__umoddi3+0x174>
    67dc:	10063713          	sltiu	a4,a2,256
    67e0:	00174713          	xori	a4,a4,1
    67e4:	00371713          	slli	a4,a4,0x3
    67e8:	00e656b3          	srl	a3,a2,a4
    67ec:	00d787b3          	add	a5,a5,a3
    67f0:	0007c783          	lbu	a5,0(a5)
    67f4:	00e787b3          	add	a5,a5,a4
    67f8:	02000713          	li	a4,32
    67fc:	40f70933          	sub	s2,a4,a5
    6800:	00f70c63          	beq	a4,a5,6818 <__umoddi3+0x94>
    6804:	012595b3          	sll	a1,a1,s2
    6808:	00f557b3          	srl	a5,a0,a5
    680c:	01261a33          	sll	s4,a2,s2
    6810:	00b7e4b3          	or	s1,a5,a1
    6814:	01251433          	sll	s0,a0,s2
    6818:	010a5a93          	srli	s5,s4,0x10
    681c:	000a8593          	mv	a1,s5
    6820:	010a1b13          	slli	s6,s4,0x10
    6824:	00048513          	mv	a0,s1
    6828:	bc5fa0ef          	jal	ra,13ec <__udivsi3>
    682c:	010b5b13          	srli	s6,s6,0x10
    6830:	000b0593          	mv	a1,s6
    6834:	420000ef          	jal	ra,6c54 <__mulsi3>
    6838:	00050993          	mv	s3,a0
    683c:	000a8593          	mv	a1,s5
    6840:	00048513          	mv	a0,s1
    6844:	bf1fa0ef          	jal	ra,1434 <__umodsi3>
    6848:	01051513          	slli	a0,a0,0x10
    684c:	01045793          	srli	a5,s0,0x10
    6850:	00a7e7b3          	or	a5,a5,a0
    6854:	0137fa63          	bgeu	a5,s3,6868 <__umoddi3+0xe4>
    6858:	014787b3          	add	a5,a5,s4
    685c:	0147e663          	bltu	a5,s4,6868 <__umoddi3+0xe4>
    6860:	0137f463          	bgeu	a5,s3,6868 <__umoddi3+0xe4>
    6864:	014787b3          	add	a5,a5,s4
    6868:	413784b3          	sub	s1,a5,s3
    686c:	000a8593          	mv	a1,s5
    6870:	00048513          	mv	a0,s1
    6874:	b79fa0ef          	jal	ra,13ec <__udivsi3>
    6878:	000b0593          	mv	a1,s6
    687c:	3d8000ef          	jal	ra,6c54 <__mulsi3>
    6880:	00050993          	mv	s3,a0
    6884:	000a8593          	mv	a1,s5
    6888:	00048513          	mv	a0,s1
    688c:	ba9fa0ef          	jal	ra,1434 <__umodsi3>
    6890:	01041413          	slli	s0,s0,0x10
    6894:	01051513          	slli	a0,a0,0x10
    6898:	01045413          	srli	s0,s0,0x10
    689c:	00a46433          	or	s0,s0,a0
    68a0:	01347a63          	bgeu	s0,s3,68b4 <__umoddi3+0x130>
    68a4:	01440433          	add	s0,s0,s4
    68a8:	01446663          	bltu	s0,s4,68b4 <__umoddi3+0x130>
    68ac:	01347463          	bgeu	s0,s3,68b4 <__umoddi3+0x130>
    68b0:	01440433          	add	s0,s0,s4
    68b4:	41340433          	sub	s0,s0,s3
    68b8:	01245533          	srl	a0,s0,s2
    68bc:	00000593          	li	a1,0
    68c0:	02c12083          	lw	ra,44(sp)
    68c4:	02812403          	lw	s0,40(sp)
    68c8:	02412483          	lw	s1,36(sp)
    68cc:	02012903          	lw	s2,32(sp)
    68d0:	01c12983          	lw	s3,28(sp)
    68d4:	01812a03          	lw	s4,24(sp)
    68d8:	01412a83          	lw	s5,20(sp)
    68dc:	01012b03          	lw	s6,16(sp)
    68e0:	00c12b83          	lw	s7,12(sp)
    68e4:	00812c03          	lw	s8,8(sp)
    68e8:	00412c83          	lw	s9,4(sp)
    68ec:	00012d03          	lw	s10,0(sp)
    68f0:	03010113          	addi	sp,sp,48
    68f4:	00008067          	ret
    68f8:	010006b7          	lui	a3,0x1000
    68fc:	01000713          	li	a4,16
    6900:	eed664e3          	bltu	a2,a3,67e8 <__umoddi3+0x64>
    6904:	01800713          	li	a4,24
    6908:	ee1ff06f          	j	67e8 <__umoddi3+0x64>
    690c:	00061463          	bnez	a2,6914 <__umoddi3+0x190>
    6910:	00100073          	ebreak
    6914:	00010737          	lui	a4,0x10
    6918:	0ee67663          	bgeu	a2,a4,6a04 <__umoddi3+0x280>
    691c:	10063713          	sltiu	a4,a2,256
    6920:	00174713          	xori	a4,a4,1
    6924:	00371713          	slli	a4,a4,0x3
    6928:	00e656b3          	srl	a3,a2,a4
    692c:	00d787b3          	add	a5,a5,a3
    6930:	0007c783          	lbu	a5,0(a5)
    6934:	40c584b3          	sub	s1,a1,a2
    6938:	00e787b3          	add	a5,a5,a4
    693c:	02000713          	li	a4,32
    6940:	40f70933          	sub	s2,a4,a5
    6944:	ecf70ae3          	beq	a4,a5,6818 <__umoddi3+0x94>
    6948:	01261a33          	sll	s4,a2,s2
    694c:	00f5dbb3          	srl	s7,a1,a5
    6950:	010a5b13          	srli	s6,s4,0x10
    6954:	00f557b3          	srl	a5,a0,a5
    6958:	012595b3          	sll	a1,a1,s2
    695c:	00b7e9b3          	or	s3,a5,a1
    6960:	01251433          	sll	s0,a0,s2
    6964:	000b0593          	mv	a1,s6
    6968:	010a1a93          	slli	s5,s4,0x10
    696c:	000b8513          	mv	a0,s7
    6970:	a7dfa0ef          	jal	ra,13ec <__udivsi3>
    6974:	010ada93          	srli	s5,s5,0x10
    6978:	000a8593          	mv	a1,s5
    697c:	2d8000ef          	jal	ra,6c54 <__mulsi3>
    6980:	00050493          	mv	s1,a0
    6984:	000b0593          	mv	a1,s6
    6988:	000b8513          	mv	a0,s7
    698c:	aa9fa0ef          	jal	ra,1434 <__umodsi3>
    6990:	01051513          	slli	a0,a0,0x10
    6994:	0109d713          	srli	a4,s3,0x10
    6998:	00a76733          	or	a4,a4,a0
    699c:	00977a63          	bgeu	a4,s1,69b0 <__umoddi3+0x22c>
    69a0:	01470733          	add	a4,a4,s4
    69a4:	01476663          	bltu	a4,s4,69b0 <__umoddi3+0x22c>
    69a8:	00977463          	bgeu	a4,s1,69b0 <__umoddi3+0x22c>
    69ac:	01470733          	add	a4,a4,s4
    69b0:	409704b3          	sub	s1,a4,s1
    69b4:	000b0593          	mv	a1,s6
    69b8:	00048513          	mv	a0,s1
    69bc:	a31fa0ef          	jal	ra,13ec <__udivsi3>
    69c0:	000a8593          	mv	a1,s5
    69c4:	290000ef          	jal	ra,6c54 <__mulsi3>
    69c8:	00050a93          	mv	s5,a0
    69cc:	000b0593          	mv	a1,s6
    69d0:	00048513          	mv	a0,s1
    69d4:	a61fa0ef          	jal	ra,1434 <__umodsi3>
    69d8:	01099793          	slli	a5,s3,0x10
    69dc:	01051513          	slli	a0,a0,0x10
    69e0:	0107d793          	srli	a5,a5,0x10
    69e4:	00a7e7b3          	or	a5,a5,a0
    69e8:	0157fa63          	bgeu	a5,s5,69fc <__umoddi3+0x278>
    69ec:	014787b3          	add	a5,a5,s4
    69f0:	0147e663          	bltu	a5,s4,69fc <__umoddi3+0x278>
    69f4:	0157f463          	bgeu	a5,s5,69fc <__umoddi3+0x278>
    69f8:	014787b3          	add	a5,a5,s4
    69fc:	415784b3          	sub	s1,a5,s5
    6a00:	e19ff06f          	j	6818 <__umoddi3+0x94>
    6a04:	010006b7          	lui	a3,0x1000
    6a08:	01000713          	li	a4,16
    6a0c:	f0d66ee3          	bltu	a2,a3,6928 <__umoddi3+0x1a4>
    6a10:	01800713          	li	a4,24
    6a14:	f15ff06f          	j	6928 <__umoddi3+0x1a4>
    6a18:	ead5e4e3          	bltu	a1,a3,68c0 <__umoddi3+0x13c>
    6a1c:	000107b7          	lui	a5,0x10
    6a20:	04f6fe63          	bgeu	a3,a5,6a7c <__umoddi3+0x2f8>
    6a24:	1006b793          	sltiu	a5,a3,256
    6a28:	0017c793          	xori	a5,a5,1
    6a2c:	00379793          	slli	a5,a5,0x3
    6a30:	00013737          	lui	a4,0x13
    6a34:	00f6d833          	srl	a6,a3,a5
    6a38:	4cc70713          	addi	a4,a4,1228 # 134cc <__clz_tab>
    6a3c:	01070733          	add	a4,a4,a6
    6a40:	00074983          	lbu	s3,0(a4)
    6a44:	00f989b3          	add	s3,s3,a5
    6a48:	02000793          	li	a5,32
    6a4c:	41378933          	sub	s2,a5,s3
    6a50:	05379063          	bne	a5,s3,6a90 <__umoddi3+0x30c>
    6a54:	00b6e463          	bltu	a3,a1,6a5c <__umoddi3+0x2d8>
    6a58:	00c56c63          	bltu	a0,a2,6a70 <__umoddi3+0x2ec>
    6a5c:	40c50633          	sub	a2,a0,a2
    6a60:	40d586b3          	sub	a3,a1,a3
    6a64:	00c535b3          	sltu	a1,a0,a2
    6a68:	40b684b3          	sub	s1,a3,a1
    6a6c:	00060413          	mv	s0,a2
    6a70:	00040513          	mv	a0,s0
    6a74:	00048593          	mv	a1,s1
    6a78:	e49ff06f          	j	68c0 <__umoddi3+0x13c>
    6a7c:	01000737          	lui	a4,0x1000
    6a80:	01000793          	li	a5,16
    6a84:	fae6e6e3          	bltu	a3,a4,6a30 <__umoddi3+0x2ac>
    6a88:	01800793          	li	a5,24
    6a8c:	fa5ff06f          	j	6a30 <__umoddi3+0x2ac>
    6a90:	012696b3          	sll	a3,a3,s2
    6a94:	01365b33          	srl	s6,a2,s3
    6a98:	00db6b33          	or	s6,s6,a3
    6a9c:	0135d4b3          	srl	s1,a1,s3
    6aa0:	01355a33          	srl	s4,a0,s3
    6aa4:	012595b3          	sll	a1,a1,s2
    6aa8:	010b5c93          	srli	s9,s6,0x10
    6aac:	00ba6a33          	or	s4,s4,a1
    6ab0:	01251ab3          	sll	s5,a0,s2
    6ab4:	000c8593          	mv	a1,s9
    6ab8:	00048513          	mv	a0,s1
    6abc:	010b1c13          	slli	s8,s6,0x10
    6ac0:	01261bb3          	sll	s7,a2,s2
    6ac4:	010c5c13          	srli	s8,s8,0x10
    6ac8:	925fa0ef          	jal	ra,13ec <__udivsi3>
    6acc:	00050593          	mv	a1,a0
    6ad0:	00050d13          	mv	s10,a0
    6ad4:	000c0513          	mv	a0,s8
    6ad8:	17c000ef          	jal	ra,6c54 <__mulsi3>
    6adc:	00050413          	mv	s0,a0
    6ae0:	000c8593          	mv	a1,s9
    6ae4:	00048513          	mv	a0,s1
    6ae8:	94dfa0ef          	jal	ra,1434 <__umodsi3>
    6aec:	01051513          	slli	a0,a0,0x10
    6af0:	010a5793          	srli	a5,s4,0x10
    6af4:	00a7e7b3          	or	a5,a5,a0
    6af8:	000d0493          	mv	s1,s10
    6afc:	0087fe63          	bgeu	a5,s0,6b18 <__umoddi3+0x394>
    6b00:	016787b3          	add	a5,a5,s6
    6b04:	fffd0493          	addi	s1,s10,-1
    6b08:	0167e863          	bltu	a5,s6,6b18 <__umoddi3+0x394>
    6b0c:	0087f663          	bgeu	a5,s0,6b18 <__umoddi3+0x394>
    6b10:	ffed0493          	addi	s1,s10,-2
    6b14:	016787b3          	add	a5,a5,s6
    6b18:	40878433          	sub	s0,a5,s0
    6b1c:	000c8593          	mv	a1,s9
    6b20:	00040513          	mv	a0,s0
    6b24:	8c9fa0ef          	jal	ra,13ec <__udivsi3>
    6b28:	00050593          	mv	a1,a0
    6b2c:	00050d13          	mv	s10,a0
    6b30:	000c0513          	mv	a0,s8
    6b34:	120000ef          	jal	ra,6c54 <__mulsi3>
    6b38:	000c8593          	mv	a1,s9
    6b3c:	00050c13          	mv	s8,a0
    6b40:	00040513          	mv	a0,s0
    6b44:	8f1fa0ef          	jal	ra,1434 <__umodsi3>
    6b48:	010a1593          	slli	a1,s4,0x10
    6b4c:	01051513          	slli	a0,a0,0x10
    6b50:	0105d593          	srli	a1,a1,0x10
    6b54:	00a5e5b3          	or	a1,a1,a0
    6b58:	000d0793          	mv	a5,s10
    6b5c:	0185fe63          	bgeu	a1,s8,6b78 <__umoddi3+0x3f4>
    6b60:	016585b3          	add	a1,a1,s6
    6b64:	fffd0793          	addi	a5,s10,-1
    6b68:	0165e863          	bltu	a1,s6,6b78 <__umoddi3+0x3f4>
    6b6c:	0185f663          	bgeu	a1,s8,6b78 <__umoddi3+0x3f4>
    6b70:	ffed0793          	addi	a5,s10,-2
    6b74:	016585b3          	add	a1,a1,s6
    6b78:	00010eb7          	lui	t4,0x10
    6b7c:	01049493          	slli	s1,s1,0x10
    6b80:	00f4e4b3          	or	s1,s1,a5
    6b84:	fffe8793          	addi	a5,t4,-1 # ffff <main+0x9387>
    6b88:	00f4f8b3          	and	a7,s1,a5
    6b8c:	00fbf7b3          	and	a5,s7,a5
    6b90:	41858733          	sub	a4,a1,s8
    6b94:	0104d493          	srli	s1,s1,0x10
    6b98:	010bde13          	srli	t3,s7,0x10
    6b9c:	00088513          	mv	a0,a7
    6ba0:	00078593          	mv	a1,a5
    6ba4:	0b0000ef          	jal	ra,6c54 <__mulsi3>
    6ba8:	00050813          	mv	a6,a0
    6bac:	000e0593          	mv	a1,t3
    6bb0:	00088513          	mv	a0,a7
    6bb4:	0a0000ef          	jal	ra,6c54 <__mulsi3>
    6bb8:	00050893          	mv	a7,a0
    6bbc:	00078593          	mv	a1,a5
    6bc0:	00048513          	mv	a0,s1
    6bc4:	090000ef          	jal	ra,6c54 <__mulsi3>
    6bc8:	00050313          	mv	t1,a0
    6bcc:	000e0593          	mv	a1,t3
    6bd0:	00048513          	mv	a0,s1
    6bd4:	080000ef          	jal	ra,6c54 <__mulsi3>
    6bd8:	01085793          	srli	a5,a6,0x10
    6bdc:	006888b3          	add	a7,a7,t1
    6be0:	011787b3          	add	a5,a5,a7
    6be4:	00050613          	mv	a2,a0
    6be8:	0067f463          	bgeu	a5,t1,6bf0 <__umoddi3+0x46c>
    6bec:	01d50633          	add	a2,a0,t4
    6bf0:	0107d693          	srli	a3,a5,0x10
    6bf4:	00c686b3          	add	a3,a3,a2
    6bf8:	00010637          	lui	a2,0x10
    6bfc:	fff60613          	addi	a2,a2,-1 # ffff <main+0x9387>
    6c00:	00c7f7b3          	and	a5,a5,a2
    6c04:	01079793          	slli	a5,a5,0x10
    6c08:	00c87833          	and	a6,a6,a2
    6c0c:	010787b3          	add	a5,a5,a6
    6c10:	00d76663          	bltu	a4,a3,6c1c <__umoddi3+0x498>
    6c14:	00d71e63          	bne	a4,a3,6c30 <__umoddi3+0x4ac>
    6c18:	00fafc63          	bgeu	s5,a5,6c30 <__umoddi3+0x4ac>
    6c1c:	41778633          	sub	a2,a5,s7
    6c20:	00c7b7b3          	sltu	a5,a5,a2
    6c24:	016787b3          	add	a5,a5,s6
    6c28:	40f686b3          	sub	a3,a3,a5
    6c2c:	00060793          	mv	a5,a2
    6c30:	40fa87b3          	sub	a5,s5,a5
    6c34:	00fabab3          	sltu	s5,s5,a5
    6c38:	40d705b3          	sub	a1,a4,a3
    6c3c:	415585b3          	sub	a1,a1,s5
    6c40:	013599b3          	sll	s3,a1,s3
    6c44:	0127d7b3          	srl	a5,a5,s2
    6c48:	00f9e533          	or	a0,s3,a5
    6c4c:	0125d5b3          	srl	a1,a1,s2
    6c50:	c71ff06f          	j	68c0 <__umoddi3+0x13c>

00006c54 <__mulsi3>:
    6c54:	00050613          	mv	a2,a0
    6c58:	00000513          	li	a0,0
    6c5c:	0015f693          	andi	a3,a1,1
    6c60:	00068463          	beqz	a3,6c68 <__mulsi3+0x14>
    6c64:	00c50533          	add	a0,a0,a2
    6c68:	0015d593          	srli	a1,a1,0x1
    6c6c:	00161613          	slli	a2,a2,0x1
    6c70:	fe0596e3          	bnez	a1,6c5c <__mulsi3+0x8>
    6c74:	00008067          	ret

Disassembly of section .text.startup:

00006c78 <main>:
    6c78:	fe010113          	addi	sp,sp,-32
    6c7c:	00112e23          	sw	ra,28(sp)
    6c80:	c40f90ef          	jal	ra,c0 <initialise_board>
    6c84:	f24fa0ef          	jal	ra,13a8 <initialise_benchmark>
    6c88:	00100513          	li	a0,1
    6c8c:	f20fa0ef          	jal	ra,13ac <warm_caches>
    6c90:	c34f90ef          	jal	ra,c4 <start_trigger>
    6c94:	f30fa0ef          	jal	ra,13c4 <benchmark>
    6c98:	00a12623          	sw	a0,12(sp)
    6c9c:	c54f90ef          	jal	ra,f0 <stop_trigger>
    6ca0:	00c12503          	lw	a0,12(sp)
    6ca4:	e94fa0ef          	jal	ra,1338 <verify_benchmark>
    6ca8:	00051a63          	bnez	a0,6cbc <main+0x44>
    6cac:	110007b7          	lui	a5,0x11000
    6cb0:	fff00713          	li	a4,-1
    6cb4:	00e7a823          	sw	a4,16(a5) # 11000010 <heap_end.0+0x10fec434>
    6cb8:	00e7aa23          	sw	a4,20(a5)
    6cbc:	110007b7          	lui	a5,0x11000
    6cc0:	00100713          	li	a4,1
    6cc4:	08e7a023          	sw	a4,128(a5) # 11000080 <heap_end.0+0x10fec4a4>
    6cc8:	0000006f          	j	6cc8 <main+0x50>
