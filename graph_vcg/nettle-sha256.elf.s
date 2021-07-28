
nettle-sha256.elf:     file format elf32-littleriscv


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
  84:	59c070ef          	jal	ra,7620 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <heap_end.0+0x10feeef4>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <heap_end.0+0x10feeef4>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <heap_end.0+0x10feef74>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <heap_end.0+0xeee4>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000117b7          	lui	a5,0x11
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	0ea7a823          	sw	a0,240(a5) # 110f0 <start_time>
      e4:	0ee7aa23          	sw	a4,244(a5)
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
     114:	0f07a583          	lw	a1,240(a5) # 110f0 <start_time>
     118:	0f47a703          	lw	a4,244(a5)
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

00000150 <sha256_init>:
     150:	000115b7          	lui	a1,0x11
     154:	ff010113          	addi	sp,sp,-16
     158:	02000613          	li	a2,32
     15c:	a0458593          	addi	a1,a1,-1532 # 10a04 <H0.1>
     160:	00812423          	sw	s0,8(sp)
     164:	00112623          	sw	ra,12(sp)
     168:	00050413          	mv	s0,a0
     16c:	505010ef          	jal	ra,1e70 <memcpy>
     170:	00000793          	li	a5,0
     174:	00000813          	li	a6,0
     178:	00c12083          	lw	ra,12(sp)
     17c:	02f42023          	sw	a5,32(s0)
     180:	03042223          	sw	a6,36(s0)
     184:	06042423          	sw	zero,104(s0)
     188:	00812403          	lw	s0,8(sp)
     18c:	01010113          	addi	sp,sp,16
     190:	00008067          	ret

00000194 <_nettle_write_be32>:
     194:	00255813          	srli	a6,a0,0x2
     198:	00357513          	andi	a0,a0,3
     19c:	08080463          	beqz	a6,224 <_nettle_write_be32+0x90>
     1a0:	00281693          	slli	a3,a6,0x2
     1a4:	00060793          	mv	a5,a2
     1a8:	00d586b3          	add	a3,a1,a3
     1ac:	0037c703          	lbu	a4,3(a5)
     1b0:	00478793          	addi	a5,a5,4
     1b4:	00458593          	addi	a1,a1,4
     1b8:	fee58e23          	sb	a4,-4(a1)
     1bc:	ffe7d703          	lhu	a4,-2(a5)
     1c0:	fee58ea3          	sb	a4,-3(a1)
     1c4:	ffc7a703          	lw	a4,-4(a5)
     1c8:	00875713          	srli	a4,a4,0x8
     1cc:	fee58f23          	sb	a4,-2(a1)
     1d0:	ffc7a703          	lw	a4,-4(a5)
     1d4:	fee58fa3          	sb	a4,-1(a1)
     1d8:	fcd59ae3          	bne	a1,a3,1ac <_nettle_write_be32+0x18>
     1dc:	02050463          	beqz	a0,204 <_nettle_write_be32+0x70>
     1e0:	00281813          	slli	a6,a6,0x2
     1e4:	01060633          	add	a2,a2,a6
     1e8:	00200713          	li	a4,2
     1ec:	00062783          	lw	a5,0(a2)
     1f0:	02e50063          	beq	a0,a4,210 <_nettle_write_be32+0x7c>
     1f4:	00300713          	li	a4,3
     1f8:	00e50863          	beq	a0,a4,208 <_nettle_write_be32+0x74>
     1fc:	0187d793          	srli	a5,a5,0x18
     200:	00f68023          	sb	a5,0(a3)
     204:	00008067          	ret
     208:	0087d713          	srli	a4,a5,0x8
     20c:	00e68123          	sb	a4,2(a3)
     210:	0107d713          	srli	a4,a5,0x10
     214:	0187d793          	srli	a5,a5,0x18
     218:	00e680a3          	sb	a4,1(a3)
     21c:	00f68023          	sb	a5,0(a3)
     220:	fe5ff06f          	j	204 <_nettle_write_be32+0x70>
     224:	00058693          	mv	a3,a1
     228:	fb5ff06f          	j	1dc <_nettle_write_be32+0x48>

0000022c <_nettle_sha256_compress>:
     22c:	f3010113          	addi	sp,sp,-208
     230:	0c812623          	sw	s0,204(sp)
     234:	0c912423          	sw	s1,200(sp)
     238:	0d212223          	sw	s2,196(sp)
     23c:	0d312023          	sw	s3,192(sp)
     240:	0b412e23          	sw	s4,188(sp)
     244:	0b512c23          	sw	s5,184(sp)
     248:	0b612a23          	sw	s6,180(sp)
     24c:	0b712823          	sw	s7,176(sp)
     250:	0b812623          	sw	s8,172(sp)
     254:	0b912423          	sw	s9,168(sp)
     258:	0ba12223          	sw	s10,164(sp)
     25c:	0bb12023          	sw	s11,160(sp)
     260:	02a12e23          	sw	a0,60(sp)
     264:	06010713          	addi	a4,sp,96
     268:	0a010893          	addi	a7,sp,160
     26c:	0005c783          	lbu	a5,0(a1)
     270:	0015c503          	lbu	a0,1(a1)
     274:	0035c803          	lbu	a6,3(a1)
     278:	0025c683          	lbu	a3,2(a1)
     27c:	01879793          	slli	a5,a5,0x18
     280:	01051513          	slli	a0,a0,0x10
     284:	00a7e7b3          	or	a5,a5,a0
     288:	0107e7b3          	or	a5,a5,a6
     28c:	00869693          	slli	a3,a3,0x8
     290:	00d7e7b3          	or	a5,a5,a3
     294:	00f72023          	sw	a5,0(a4)
     298:	00470713          	addi	a4,a4,4
     29c:	00458593          	addi	a1,a1,4
     2a0:	fce896e3          	bne	a7,a4,26c <_nettle_sha256_compress+0x40>
     2a4:	03c12783          	lw	a5,60(sp)
     2a8:	04060313          	addi	t1,a2,64
     2ac:	00060393          	mv	t2,a2
     2b0:	0007ae03          	lw	t3,0(a5)
     2b4:	0047ae83          	lw	t4,4(a5)
     2b8:	0087a903          	lw	s2,8(a5)
     2bc:	00c7a583          	lw	a1,12(a5)
     2c0:	0107af83          	lw	t6,16(a5)
     2c4:	0147a703          	lw	a4,20(a5)
     2c8:	0187a683          	lw	a3,24(a5)
     2cc:	01c7a783          	lw	a5,28(a5)
     2d0:	05c12023          	sw	t3,64(sp)
     2d4:	05d12223          	sw	t4,68(sp)
     2d8:	05212423          	sw	s2,72(sp)
     2dc:	04b12623          	sw	a1,76(sp)
     2e0:	05f12823          	sw	t6,80(sp)
     2e4:	04e12a23          	sw	a4,84(sp)
     2e8:	04d12c23          	sw	a3,88(sp)
     2ec:	04f12e23          	sw	a5,92(sp)
     2f0:	06010293          	addi	t0,sp,96
     2f4:	0002ac03          	lw	s8,0(t0)
     2f8:	01af9413          	slli	s0,t6,0x1a
     2fc:	015f9513          	slli	a0,t6,0x15
     300:	0003aa83          	lw	s5,0(t2)
     304:	006fd813          	srli	a6,t6,0x6
     308:	00bfd893          	srli	a7,t6,0xb
     30c:	019fdf13          	srli	t5,t6,0x19
     310:	00a8e8b3          	or	a7,a7,a0
     314:	007f9993          	slli	s3,t6,0x7
     318:	00886833          	or	a6,a6,s0
     31c:	01ee1b93          	slli	s7,t3,0x1e
     320:	00d74433          	xor	s0,a4,a3
     324:	013e1b13          	slli	s6,t3,0x13
     328:	01e9e9b3          	or	s3,s3,t5
     32c:	002e5513          	srli	a0,t3,0x2
     330:	00de5493          	srli	s1,t3,0xd
     334:	01184833          	xor	a6,a6,a7
     338:	016e5a13          	srli	s4,t3,0x16
     33c:	01de48b3          	xor	a7,t3,t4
     340:	018a8ab3          	add	s5,s5,s8
     344:	0164e4b3          	or	s1,s1,s6
     348:	01f47433          	and	s0,s0,t6
     34c:	00ae1f13          	slli	t5,t3,0xa
     350:	01384833          	xor	a6,a6,s3
     354:	01756533          	or	a0,a0,s7
     358:	01de79b3          	and	s3,t3,t4
     35c:	00d44433          	xor	s0,s0,a3
     360:	014f6f33          	or	t5,t5,s4
     364:	0128f8b3          	and	a7,a7,s2
     368:	01580833          	add	a6,a6,s5
     36c:	00954533          	xor	a0,a0,s1
     370:	01e54533          	xor	a0,a0,t5
     374:	0138c8b3          	xor	a7,a7,s3
     378:	00880833          	add	a6,a6,s0
     37c:	00f80833          	add	a6,a6,a5
     380:	0043ac83          	lw	s9,4(t2)
     384:	011507b3          	add	a5,a0,a7
     388:	0042ac03          	lw	s8,4(t0)
     38c:	01078f33          	add	t5,a5,a6
     390:	00b805b3          	add	a1,a6,a1
     394:	00efc9b3          	xor	s3,t6,a4
     398:	01a59b93          	slli	s7,a1,0x1a
     39c:	01559413          	slli	s0,a1,0x15
     3a0:	01ef1a93          	slli	s5,t5,0x1e
     3a4:	013f1813          	slli	a6,t5,0x13
     3a8:	0065d793          	srli	a5,a1,0x6
     3ac:	00b5d493          	srli	s1,a1,0xb
     3b0:	002f5893          	srli	a7,t5,0x2
     3b4:	00df5b13          	srli	s6,t5,0xd
     3b8:	01cf4a33          	xor	s4,t5,t3
     3bc:	00b9f9b3          	and	s3,s3,a1
     3c0:	0084e4b3          	or	s1,s1,s0
     3c4:	010b6b33          	or	s6,s6,a6
     3c8:	0177e7b3          	or	a5,a5,s7
     3cc:	00759413          	slli	s0,a1,0x7
     3d0:	0195db93          	srli	s7,a1,0x19
     3d4:	0158e8b3          	or	a7,a7,s5
     3d8:	00af1813          	slli	a6,t5,0xa
     3dc:	016f5a93          	srli	s5,t5,0x16
     3e0:	018c8533          	add	a0,s9,s8
     3e4:	01746433          	or	s0,s0,s7
     3e8:	01586833          	or	a6,a6,s5
     3ec:	00d50533          	add	a0,a0,a3
     3f0:	0097c7b3          	xor	a5,a5,s1
     3f4:	00e9c6b3          	xor	a3,s3,a4
     3f8:	0168c8b3          	xor	a7,a7,s6
     3fc:	01da79b3          	and	s3,s4,t4
     400:	01cf7a33          	and	s4,t5,t3
     404:	00d50533          	add	a0,a0,a3
     408:	0087c7b3          	xor	a5,a5,s0
     40c:	0149c6b3          	xor	a3,s3,s4
     410:	0108c8b3          	xor	a7,a7,a6
     414:	00a787b3          	add	a5,a5,a0
     418:	0082ab03          	lw	s6,8(t0)
     41c:	0083a803          	lw	a6,8(t2)
     420:	00d888b3          	add	a7,a7,a3
     424:	00f888b3          	add	a7,a7,a5
     428:	01278933          	add	s2,a5,s2
     42c:	01f5c4b3          	xor	s1,a1,t6
     430:	01a91b93          	slli	s7,s2,0x1a
     434:	01591413          	slli	s0,s2,0x15
     438:	01e89a93          	slli	s5,a7,0x1e
     43c:	01389693          	slli	a3,a7,0x13
     440:	00695793          	srli	a5,s2,0x6
     444:	00b95993          	srli	s3,s2,0xb
     448:	0028d513          	srli	a0,a7,0x2
     44c:	00d8da13          	srli	s4,a7,0xd
     450:	0089e9b3          	or	s3,s3,s0
     454:	00da6a33          	or	s4,s4,a3
     458:	01680833          	add	a6,a6,s6
     45c:	0124f4b3          	and	s1,s1,s2
     460:	01995b13          	srli	s6,s2,0x19
     464:	0177e7b3          	or	a5,a5,s7
     468:	00791413          	slli	s0,s2,0x7
     46c:	011f4bb3          	xor	s7,t5,a7
     470:	01556533          	or	a0,a0,s5
     474:	00a89693          	slli	a3,a7,0xa
     478:	0168da93          	srli	s5,a7,0x16
     47c:	01f4c4b3          	xor	s1,s1,t6
     480:	01646433          	or	s0,s0,s6
     484:	0156e6b3          	or	a3,a3,s5
     488:	00e80833          	add	a6,a6,a4
     48c:	0137c7b3          	xor	a5,a5,s3
     490:	01cbf733          	and	a4,s7,t3
     494:	011f79b3          	and	s3,t5,a7
     498:	01454533          	xor	a0,a0,s4
     49c:	00980833          	add	a6,a6,s1
     4a0:	01374733          	xor	a4,a4,s3
     4a4:	0087c7b3          	xor	a5,a5,s0
     4a8:	00d54533          	xor	a0,a0,a3
     4ac:	010787b3          	add	a5,a5,a6
     4b0:	00c2ab03          	lw	s6,12(t0)
     4b4:	00c3a683          	lw	a3,12(t2)
     4b8:	00e50533          	add	a0,a0,a4
     4bc:	00f50533          	add	a0,a0,a5
     4c0:	01d78eb3          	add	t4,a5,t4
     4c4:	0125c9b3          	xor	s3,a1,s2
     4c8:	01ae9b93          	slli	s7,t4,0x1a
     4cc:	015e9413          	slli	s0,t4,0x15
     4d0:	01e51a93          	slli	s5,a0,0x1e
     4d4:	01351713          	slli	a4,a0,0x13
     4d8:	006ed793          	srli	a5,t4,0x6
     4dc:	00beda13          	srli	s4,t4,0xb
     4e0:	00255813          	srli	a6,a0,0x2
     4e4:	00d55493          	srli	s1,a0,0xd
     4e8:	008a6a33          	or	s4,s4,s0
     4ec:	00e4e4b3          	or	s1,s1,a4
     4f0:	016686b3          	add	a3,a3,s6
     4f4:	00a8c733          	xor	a4,a7,a0
     4f8:	01655b13          	srli	s6,a0,0x16
     4fc:	01d9f9b3          	and	s3,s3,t4
     500:	0177e7b3          	or	a5,a5,s7
     504:	007e9413          	slli	s0,t4,0x7
     508:	019edb93          	srli	s7,t4,0x19
     50c:	01586833          	or	a6,a6,s5
     510:	00a51a93          	slli	s5,a0,0xa
     514:	00b9c9b3          	xor	s3,s3,a1
     518:	01746433          	or	s0,s0,s7
     51c:	01f686b3          	add	a3,a3,t6
     520:	0147c7b3          	xor	a5,a5,s4
     524:	016aefb3          	or	t6,s5,s6
     528:	00984833          	xor	a6,a6,s1
     52c:	01e77733          	and	a4,a4,t5
     530:	00a8f4b3          	and	s1,a7,a0
     534:	013686b3          	add	a3,a3,s3
     538:	00974733          	xor	a4,a4,s1
     53c:	0087c7b3          	xor	a5,a5,s0
     540:	01f84833          	xor	a6,a6,t6
     544:	00d787b3          	add	a5,a5,a3
     548:	0102ab03          	lw	s6,16(t0)
     54c:	0103aa83          	lw	s5,16(t2)
     550:	00e80833          	add	a6,a6,a4
     554:	00f80833          	add	a6,a6,a5
     558:	01c78e33          	add	t3,a5,t3
     55c:	01d949b3          	xor	s3,s2,t4
     560:	01ae1b93          	slli	s7,t3,0x1a
     564:	015e1413          	slli	s0,t3,0x15
     568:	006e5793          	srli	a5,t3,0x6
     56c:	00be5a13          	srli	s4,t3,0xb
     570:	01e81f93          	slli	t6,a6,0x1e
     574:	01381693          	slli	a3,a6,0x13
     578:	00285713          	srli	a4,a6,0x2
     57c:	00d85493          	srli	s1,a6,0xd
     580:	016a8ab3          	add	s5,s5,s6
     584:	008a6a33          	or	s4,s4,s0
     588:	00d4e4b3          	or	s1,s1,a3
     58c:	01c9f9b3          	and	s3,s3,t3
     590:	0177e7b3          	or	a5,a5,s7
     594:	007e1413          	slli	s0,t3,0x7
     598:	019e5b93          	srli	s7,t3,0x19
     59c:	01f76733          	or	a4,a4,t6
     5a0:	01685b13          	srli	s6,a6,0x16
     5a4:	010546b3          	xor	a3,a0,a6
     5a8:	00a81f93          	slli	t6,a6,0xa
     5ac:	0129c9b3          	xor	s3,s3,s2
     5b0:	01746433          	or	s0,s0,s7
     5b4:	016fefb3          	or	t6,t6,s6
     5b8:	00ba85b3          	add	a1,s5,a1
     5bc:	0147c7b3          	xor	a5,a5,s4
     5c0:	00974733          	xor	a4,a4,s1
     5c4:	0116f6b3          	and	a3,a3,a7
     5c8:	010574b3          	and	s1,a0,a6
     5cc:	013585b3          	add	a1,a1,s3
     5d0:	0096c6b3          	xor	a3,a3,s1
     5d4:	0087c7b3          	xor	a5,a5,s0
     5d8:	01f74733          	xor	a4,a4,t6
     5dc:	0142ab03          	lw	s6,20(t0)
     5e0:	00d70733          	add	a4,a4,a3
     5e4:	0143a403          	lw	s0,20(t2)
     5e8:	00b787b3          	add	a5,a5,a1
     5ec:	00f705b3          	add	a1,a4,a5
     5f0:	00ff07b3          	add	a5,t5,a5
     5f4:	01cecab3          	xor	s5,t4,t3
     5f8:	01a79b93          	slli	s7,a5,0x1a
     5fc:	01579493          	slli	s1,a5,0x15
     600:	01e59f93          	slli	t6,a1,0x1e
     604:	01359f13          	slli	t5,a1,0x13
     608:	0067d693          	srli	a3,a5,0x6
     60c:	00b7da13          	srli	s4,a5,0xb
     610:	0025d713          	srli	a4,a1,0x2
     614:	00d5d993          	srli	s3,a1,0xd
     618:	009a6a33          	or	s4,s4,s1
     61c:	01e9e9b3          	or	s3,s3,t5
     620:	01640433          	add	s0,s0,s6
     624:	00fafab3          	and	s5,s5,a5
     628:	0176e6b3          	or	a3,a3,s7
     62c:	01f76733          	or	a4,a4,t6
     630:	0197db93          	srli	s7,a5,0x19
     634:	0165db13          	srli	s6,a1,0x16
     638:	00779493          	slli	s1,a5,0x7
     63c:	00a59f93          	slli	t6,a1,0xa
     640:	00b84f33          	xor	t5,a6,a1
     644:	0174e4b3          	or	s1,s1,s7
     648:	016fefb3          	or	t6,t6,s6
     64c:	01240433          	add	s0,s0,s2
     650:	0146c6b3          	xor	a3,a3,s4
     654:	01dac933          	xor	s2,s5,t4
     658:	01374733          	xor	a4,a4,s3
     65c:	00af7f33          	and	t5,t5,a0
     660:	00b879b3          	and	s3,a6,a1
     664:	01240433          	add	s0,s0,s2
     668:	013f4f33          	xor	t5,t5,s3
     66c:	0096c6b3          	xor	a3,a3,s1
     670:	01f74733          	xor	a4,a4,t6
     674:	0182ab03          	lw	s6,24(t0)
     678:	008686b3          	add	a3,a3,s0
     67c:	01e70733          	add	a4,a4,t5
     680:	0183af83          	lw	t6,24(t2)
     684:	00d70933          	add	s2,a4,a3
     688:	00d886b3          	add	a3,a7,a3
     68c:	00fe49b3          	xor	s3,t3,a5
     690:	01a69b93          	slli	s7,a3,0x1a
     694:	01569413          	slli	s0,a3,0x15
     698:	01e91a93          	slli	s5,s2,0x1e
     69c:	01391f13          	slli	t5,s2,0x13
     6a0:	0066d713          	srli	a4,a3,0x6
     6a4:	00b6da13          	srli	s4,a3,0xb
     6a8:	00295893          	srli	a7,s2,0x2
     6ac:	00d95493          	srli	s1,s2,0xd
     6b0:	008a6a33          	or	s4,s4,s0
     6b4:	01e4e4b3          	or	s1,s1,t5
     6b8:	016f8fb3          	add	t6,t6,s6
     6bc:	01776733          	or	a4,a4,s7
     6c0:	0158e8b3          	or	a7,a7,s5
     6c4:	0196db93          	srli	s7,a3,0x19
     6c8:	01695b13          	srli	s6,s2,0x16
     6cc:	0125cab3          	xor	s5,a1,s2
     6d0:	00d9f9b3          	and	s3,s3,a3
     6d4:	00769413          	slli	s0,a3,0x7
     6d8:	00a91f13          	slli	t5,s2,0xa
     6dc:	01c9c9b3          	xor	s3,s3,t3
     6e0:	01746433          	or	s0,s0,s7
     6e4:	016f6f33          	or	t5,t5,s6
     6e8:	01df8fb3          	add	t6,t6,t4
     6ec:	01474733          	xor	a4,a4,s4
     6f0:	0098c8b3          	xor	a7,a7,s1
     6f4:	010afeb3          	and	t4,s5,a6
     6f8:	0125f4b3          	and	s1,a1,s2
     6fc:	013f8fb3          	add	t6,t6,s3
     700:	009eceb3          	xor	t4,t4,s1
     704:	00874733          	xor	a4,a4,s0
     708:	01e8c8b3          	xor	a7,a7,t5
     70c:	01c2ab03          	lw	s6,28(t0)
     710:	01f70733          	add	a4,a4,t6
     714:	01c3af03          	lw	t5,28(t2)
     718:	01d888b3          	add	a7,a7,t4
     71c:	00e88eb3          	add	t4,a7,a4
     720:	00e50733          	add	a4,a0,a4
     724:	01a71b93          	slli	s7,a4,0x1a
     728:	01571413          	slli	s0,a4,0x15
     72c:	01ee9a93          	slli	s5,t4,0x1e
     730:	013e9f93          	slli	t6,t4,0x13
     734:	00d7c9b3          	xor	s3,a5,a3
     738:	00675513          	srli	a0,a4,0x6
     73c:	00b75a13          	srli	s4,a4,0xb
     740:	002ed893          	srli	a7,t4,0x2
     744:	00ded493          	srli	s1,t4,0xd
     748:	0158e8b3          	or	a7,a7,s5
     74c:	01f4e4b3          	or	s1,s1,t6
     750:	016f0f33          	add	t5,t5,s6
     754:	01756533          	or	a0,a0,s7
     758:	008a6a33          	or	s4,s4,s0
     75c:	00e9f9b3          	and	s3,s3,a4
     760:	00771413          	slli	s0,a4,0x7
     764:	01975b93          	srli	s7,a4,0x19
     768:	00ae9f93          	slli	t6,t4,0xa
     76c:	016edb13          	srli	s6,t4,0x16
     770:	01d94ab3          	xor	s5,s2,t4
     774:	01cf0f33          	add	t5,t5,t3
     778:	016fefb3          	or	t6,t6,s6
     77c:	0098ce33          	xor	t3,a7,s1
     780:	00f9c9b3          	xor	s3,s3,a5
     784:	01454533          	xor	a0,a0,s4
     788:	01746433          	or	s0,s0,s7
     78c:	00baf8b3          	and	a7,s5,a1
     790:	01d974b3          	and	s1,s2,t4
     794:	01fe4e33          	xor	t3,t3,t6
     798:	013f0f33          	add	t5,t5,s3
     79c:	00854533          	xor	a0,a0,s0
     7a0:	0098c8b3          	xor	a7,a7,s1
     7a4:	01e50533          	add	a0,a0,t5
     7a8:	011e0e33          	add	t3,t3,a7
     7ac:	02038393          	addi	t2,t2,32
     7b0:	00a80fb3          	add	t6,a6,a0
     7b4:	00ae0e33          	add	t3,t3,a0
     7b8:	02028293          	addi	t0,t0,32
     7bc:	b2639ce3          	bne	t2,t1,2f4 <_nettle_sha256_compress+0xc8>
     7c0:	09c12f03          	lw	t5,156(sp)
     7c4:	06012503          	lw	a0,96(sp)
     7c8:	09812883          	lw	a7,152(sp)
     7cc:	01e12223          	sw	t5,4(sp)
     7d0:	08812f03          	lw	t5,136(sp)
     7d4:	00a12823          	sw	a0,16(sp)
     7d8:	08412803          	lw	a6,132(sp)
     7dc:	03e12223          	sw	t5,36(sp)
     7e0:	06812f03          	lw	t5,104(sp)
     7e4:	06412503          	lw	a0,100(sp)
     7e8:	10060613          	addi	a2,a2,256
     7ec:	03e12423          	sw	t5,40(sp)
     7f0:	08c12f03          	lw	t5,140(sp)
     7f4:	02c12c23          	sw	a2,56(sp)
     7f8:	03e12623          	sw	t5,44(sp)
     7fc:	06c12f03          	lw	t5,108(sp)
     800:	01e12423          	sw	t5,8(sp)
     804:	09012f03          	lw	t5,144(sp)
     808:	03e12823          	sw	t5,48(sp)
     80c:	07012f03          	lw	t5,112(sp)
     810:	01e12623          	sw	t5,12(sp)
     814:	09412f03          	lw	t5,148(sp)
     818:	03e12a23          	sw	t5,52(sp)
     81c:	07412f03          	lw	t5,116(sp)
     820:	01e12a23          	sw	t5,20(sp)
     824:	07812f03          	lw	t5,120(sp)
     828:	01e12c23          	sw	t5,24(sp)
     82c:	07c12f03          	lw	t5,124(sp)
     830:	01e12e23          	sw	t5,28(sp)
     834:	08012f03          	lw	t5,128(sp)
     838:	03e12023          	sw	t5,32(sp)
     83c:	0118db13          	srli	s6,a7,0x11
     840:	0138da93          	srli	s5,a7,0x13
     844:	01951493          	slli	s1,a0,0x19
     848:	01255413          	srli	s0,a0,0x12
     84c:	00f89f13          	slli	t5,a7,0xf
     850:	00d89293          	slli	t0,a7,0xd
     854:	00755a13          	srli	s4,a0,0x7
     858:	00e51393          	slli	t2,a0,0xe
     85c:	006fdc93          	srli	s9,t6,0x6
     860:	00bfdc13          	srli	s8,t6,0xb
     864:	0152e2b3          	or	t0,t0,s5
     868:	009a6a33          	or	s4,s4,s1
     86c:	01af9613          	slli	a2,t6,0x1a
     870:	015f9993          	slli	s3,t6,0x15
     874:	016f6f33          	or	t5,t5,s6
     878:	0083e3b3          	or	t2,t2,s0
     87c:	00a8db93          	srli	s7,a7,0xa
     880:	00355b13          	srli	s6,a0,0x3
     884:	007f9a93          	slli	s5,t6,0x7
     888:	019fd413          	srli	s0,t6,0x19
     88c:	013c69b3          	or	s3,s8,s3
     890:	005f4f33          	xor	t5,t5,t0
     894:	007a43b3          	xor	t2,s4,t2
     898:	00cce633          	or	a2,s9,a2
     89c:	00d744b3          	xor	s1,a4,a3
     8a0:	0163c3b3          	xor	t2,t2,s6
     8a4:	00de5c93          	srli	s9,t3,0xd
     8a8:	017f4f33          	xor	t5,t5,s7
     8ac:	01364633          	xor	a2,a2,s3
     8b0:	008ae9b3          	or	s3,s5,s0
     8b4:	013e1413          	slli	s0,t3,0x13
     8b8:	00032d83          	lw	s11,0(t1)
     8bc:	007f0f33          	add	t5,t5,t2
     8c0:	01f4f4b3          	and	s1,s1,t6
     8c4:	008ce433          	or	s0,s9,s0
     8c8:	01012c83          	lw	s9,16(sp)
     8cc:	010f02b3          	add	t0,t5,a6
     8d0:	00d4c4b3          	xor	s1,s1,a3
     8d4:	00412f03          	lw	t5,4(sp)
     8d8:	01364633          	xor	a2,a2,s3
     8dc:	00960633          	add	a2,a2,s1
     8e0:	005c8cb3          	add	s9,s9,t0
     8e4:	00412483          	lw	s1,4(sp)
     8e8:	002e5d13          	srli	s10,t3,0x2
     8ec:	01ee1a93          	slli	s5,t3,0x1e
     8f0:	01b60633          	add	a2,a2,s11
     8f4:	00ff1b93          	slli	s7,t5,0xf
     8f8:	00df1b13          	slli	s6,t5,0xd
     8fc:	015d6ab3          	or	s5,s10,s5
     900:	011f5993          	srli	s3,t5,0x11
     904:	02812d03          	lw	s10,40(sp)
     908:	01960633          	add	a2,a2,s9
     90c:	013f5f13          	srli	t5,t5,0x13
     910:	00f60633          	add	a2,a2,a5
     914:	01de43b3          	xor	t2,t3,t4
     918:	02412783          	lw	a5,36(sp)
     91c:	00ae1c13          	slli	s8,t3,0xa
     920:	013be9b3          	or	s3,s7,s3
     924:	016e5a13          	srli	s4,t3,0x16
     928:	01eb6f33          	or	t5,s6,t5
     92c:	01de72b3          	and	t0,t3,t4
     930:	014c6a33          	or	s4,s8,s4
     934:	0123f3b3          	and	t2,t2,s2
     938:	00a4dc13          	srli	s8,s1,0xa
     93c:	008ac433          	xor	s0,s5,s0
     940:	01e9cf33          	xor	t5,s3,t5
     944:	019d1b93          	slli	s7,s10,0x19
     948:	012d5b13          	srli	s6,s10,0x12
     94c:	01444433          	xor	s0,s0,s4
     950:	007d5493          	srli	s1,s10,0x7
     954:	00ed1a93          	slli	s5,s10,0xe
     958:	0053c3b3          	xor	t2,t2,t0
     95c:	018f4f33          	xor	t5,t5,s8
     960:	00b605b3          	add	a1,a2,a1
     964:	00432a03          	lw	s4,4(t1)
     968:	016aeab3          	or	s5,s5,s6
     96c:	00ff0f33          	add	t5,t5,a5
     970:	007403b3          	add	t2,s0,t2
     974:	0174e4b3          	or	s1,s1,s7
     978:	00c38433          	add	s0,t2,a2
     97c:	00812c03          	lw	s8,8(sp)
     980:	003d5613          	srli	a2,s10,0x3
     984:	0154c4b3          	xor	s1,s1,s5
     988:	00af0533          	add	a0,t5,a0
     98c:	0065d393          	srli	t2,a1,0x6
     990:	01a59f13          	slli	t5,a1,0x1a
     994:	00c4c7b3          	xor	a5,s1,a2
     998:	00efc9b3          	xor	s3,t6,a4
     99c:	01559613          	slli	a2,a1,0x15
     9a0:	01e41493          	slli	s1,s0,0x1e
     9a4:	00b5db93          	srli	s7,a1,0xb
     9a8:	00245293          	srli	t0,s0,0x2
     9ac:	00d45b13          	srli	s6,s0,0xd
     9b0:	01e3e3b3          	or	t2,t2,t5
     9b4:	01341f13          	slli	t5,s0,0x13
     9b8:	00f50533          	add	a0,a0,a5
     9bc:	01c44ab3          	xor	s5,s0,t3
     9c0:	00cbebb3          	or	s7,s7,a2
     9c4:	0195dd93          	srli	s11,a1,0x19
     9c8:	01eb6b33          	or	s6,s6,t5
     9cc:	01645d13          	srli	s10,s0,0x16
     9d0:	014686b3          	add	a3,a3,s4
     9d4:	00b9f9b3          	and	s3,s3,a1
     9d8:	00759613          	slli	a2,a1,0x7
     9dc:	0092e2b3          	or	t0,t0,s1
     9e0:	00a41f13          	slli	t5,s0,0xa
     9e4:	01912823          	sw	s9,16(sp)
     9e8:	00e9c9b3          	xor	s3,s3,a4
     9ec:	007c5c93          	srli	s9,s8,0x7
     9f0:	01dafab3          	and	s5,s5,t4
     9f4:	01c474b3          	and	s1,s0,t3
     9f8:	0173c3b3          	xor	t2,t2,s7
     9fc:	0162c2b3          	xor	t0,t0,s6
     a00:	019c1a13          	slli	s4,s8,0x19
     a04:	00ec1793          	slli	a5,s8,0xe
     a08:	01b66633          	or	a2,a2,s11
     a0c:	012c5c13          	srli	s8,s8,0x12
     a10:	01af6f33          	or	t5,t5,s10
     a14:	00a686b3          	add	a3,a3,a0
     a18:	014cea33          	or	s4,s9,s4
     a1c:	00d986b3          	add	a3,s3,a3
     a20:	01012c83          	lw	s9,16(sp)
     a24:	01e2cf33          	xor	t5,t0,t5
     a28:	0187e7b3          	or	a5,a5,s8
     a2c:	00c3c633          	xor	a2,t2,a2
     a30:	00812c03          	lw	s8,8(sp)
     a34:	009ac4b3          	xor	s1,s5,s1
     a38:	00d60633          	add	a2,a2,a3
     a3c:	009f04b3          	add	s1,t5,s1
     a40:	00c484b3          	add	s1,s1,a2
     a44:	01260933          	add	s2,a2,s2
     a48:	00832b83          	lw	s7,8(t1)
     a4c:	02c12603          	lw	a2,44(sp)
     a50:	02812d03          	lw	s10,40(sp)
     a54:	003c5b13          	srli	s6,s8,0x3
     a58:	011cd993          	srli	s3,s9,0x11
     a5c:	013cd393          	srli	t2,s9,0x13
     a60:	00fa47b3          	xor	a5,s4,a5
     a64:	00dc9293          	slli	t0,s9,0xd
     a68:	00fc9a13          	slli	s4,s9,0xf
     a6c:	0072e2b3          	or	t0,t0,t2
     a70:	0167c7b3          	xor	a5,a5,s6
     a74:	013a6a33          	or	s4,s4,s3
     a78:	00acd693          	srli	a3,s9,0xa
     a7c:	00c787b3          	add	a5,a5,a2
     a80:	005a4a33          	xor	s4,s4,t0
     a84:	01770733          	add	a4,a4,s7
     a88:	00c12b83          	lw	s7,12(sp)
     a8c:	01f5c9b3          	xor	s3,a1,t6
     a90:	01a787b3          	add	a5,a5,s10
     a94:	00da4a33          	xor	s4,s4,a3
     a98:	01a91c93          	slli	s9,s2,0x1a
     a9c:	01591693          	slli	a3,s2,0x15
     aa0:	01e49a93          	slli	s5,s1,0x1e
     aa4:	01349613          	slli	a2,s1,0x13
     aa8:	00695293          	srli	t0,s2,0x6
     aac:	00b95b13          	srli	s6,s2,0xb
     ab0:	0024d393          	srli	t2,s1,0x2
     ab4:	00d4df13          	srli	t5,s1,0xd
     ab8:	01478db3          	add	s11,a5,s4
     abc:	00db6b33          	or	s6,s6,a3
     ac0:	01995d13          	srli	s10,s2,0x19
     ac4:	0153e3b3          	or	t2,t2,s5
     ac8:	0129f9b3          	and	s3,s3,s2
     acc:	00944ab3          	xor	s5,s0,s1
     ad0:	0192e2b3          	or	t0,t0,s9
     ad4:	00791693          	slli	a3,s2,0x7
     ad8:	0164dc93          	srli	s9,s1,0x16
     adc:	00cf6f33          	or	t5,t5,a2
     ae0:	00a49613          	slli	a2,s1,0xa
     ae4:	007bdc13          	srli	s8,s7,0x7
     ae8:	01f9c9b3          	xor	s3,s3,t6
     aec:	01cafab3          	and	s5,s5,t3
     af0:	0162c2b3          	xor	t0,t0,s6
     af4:	01e3cf33          	xor	t5,t2,t5
     af8:	019b9a13          	slli	s4,s7,0x19
     afc:	009473b3          	and	t2,s0,s1
     b00:	00eb9793          	slli	a5,s7,0xe
     b04:	01b70733          	add	a4,a4,s11
     b08:	012bdb93          	srli	s7,s7,0x12
     b0c:	01a6e6b3          	or	a3,a3,s10
     b10:	01966633          	or	a2,a2,s9
     b14:	014c6a33          	or	s4,s8,s4
     b18:	00e98733          	add	a4,s3,a4
     b1c:	00cf4633          	xor	a2,t5,a2
     b20:	0177e7b3          	or	a5,a5,s7
     b24:	00d2c6b3          	xor	a3,t0,a3
     b28:	00c12b83          	lw	s7,12(sp)
     b2c:	007ac3b3          	xor	t2,s5,t2
     b30:	00e686b3          	add	a3,a3,a4
     b34:	00fa47b3          	xor	a5,s4,a5
     b38:	01355993          	srli	s3,a0,0x13
     b3c:	01155a13          	srli	s4,a0,0x11
     b40:	007603b3          	add	t2,a2,t2
     b44:	00f51f13          	slli	t5,a0,0xf
     b48:	00d51293          	slli	t0,a0,0xd
     b4c:	01d68eb3          	add	t4,a3,t4
     b50:	00d383b3          	add	t2,t2,a3
     b54:	0132e2b3          	or	t0,t0,s3
     b58:	03012683          	lw	a3,48(sp)
     b5c:	014f6f33          	or	t5,t5,s4
     b60:	003bdb13          	srli	s6,s7,0x3
     b64:	005f4f33          	xor	t5,t5,t0
     b68:	00812283          	lw	t0,8(sp)
     b6c:	00c32c03          	lw	s8,12(t1)
     b70:	0167c7b3          	xor	a5,a5,s6
     b74:	00d787b3          	add	a5,a5,a3
     b78:	00a55713          	srli	a4,a0,0xa
     b7c:	00ef4633          	xor	a2,t5,a4
     b80:	005787b3          	add	a5,a5,t0
     b84:	00c787b3          	add	a5,a5,a2
     b88:	018f8633          	add	a2,t6,s8
     b8c:	01412f83          	lw	t6,20(sp)
     b90:	015e9713          	slli	a4,t4,0x15
     b94:	00f12423          	sw	a5,8(sp)
     b98:	00bedb93          	srli	s7,t4,0xb
     b9c:	03b12423          	sw	s11,40(sp)
     ba0:	007fdc93          	srli	s9,t6,0x7
     ba4:	012fdc13          	srli	s8,t6,0x12
     ba8:	00ebebb3          	or	s7,s7,a4
     bac:	019edd93          	srli	s11,t4,0x19
     bb0:	019f9a13          	slli	s4,t6,0x19
     bb4:	00ef9793          	slli	a5,t6,0xe
     bb8:	007e9713          	slli	a4,t4,0x7
     bbc:	00812f83          	lw	t6,8(sp)
     bc0:	0125c9b3          	xor	s3,a1,s2
     bc4:	01ae9d13          	slli	s10,t4,0x1a
     bc8:	006ed293          	srli	t0,t4,0x6
     bcc:	01b76733          	or	a4,a4,s11
     bd0:	02812d83          	lw	s11,40(sp)
     bd4:	01e39a93          	slli	s5,t2,0x1e
     bd8:	01339693          	slli	a3,t2,0x13
     bdc:	0023db13          	srli	s6,t2,0x2
     be0:	00d3df13          	srli	t5,t2,0xd
     be4:	01d9f9b3          	and	s3,s3,t4
     be8:	01a2e2b3          	or	t0,t0,s10
     bec:	015b6b33          	or	s6,s6,s5
     bf0:	00a39d13          	slli	s10,t2,0xa
     bf4:	00b9c9b3          	xor	s3,s3,a1
     bf8:	0172c2b3          	xor	t0,t0,s7
     bfc:	00df6f33          	or	t5,t5,a3
     c00:	01f60633          	add	a2,a2,t6
     c04:	0163d693          	srli	a3,t2,0x16
     c08:	0187e7b3          	or	a5,a5,s8
     c0c:	01412c03          	lw	s8,20(sp)
     c10:	0074cab3          	xor	s5,s1,t2
     c14:	01eb4f33          	xor	t5,s6,t5
     c18:	014cea33          	or	s4,s9,s4
     c1c:	00c98633          	add	a2,s3,a2
     c20:	00dd66b3          	or	a3,s10,a3
     c24:	013dd993          	srli	s3,s11,0x13
     c28:	00e2c733          	xor	a4,t0,a4
     c2c:	00dd9293          	slli	t0,s11,0xd
     c30:	008afab3          	and	s5,s5,s0
     c34:	0074fb33          	and	s6,s1,t2
     c38:	00df46b3          	xor	a3,t5,a3
     c3c:	00fa47b3          	xor	a5,s4,a5
     c40:	00fd9f13          	slli	t5,s11,0xf
     c44:	011dda13          	srli	s4,s11,0x11
     c48:	0132e2b3          	or	t0,t0,s3
     c4c:	03412983          	lw	s3,52(sp)
     c50:	003c5b93          	srli	s7,s8,0x3
     c54:	014f6f33          	or	t5,t5,s4
     c58:	016acb33          	xor	s6,s5,s6
     c5c:	00c12a03          	lw	s4,12(sp)
     c60:	00c70733          	add	a4,a4,a2
     c64:	01668b33          	add	s6,a3,s6
     c68:	0177c7b3          	xor	a5,a5,s7
     c6c:	00eb0fb3          	add	t6,s6,a4
     c70:	01c70e33          	add	t3,a4,t3
     c74:	01812a83          	lw	s5,24(sp)
     c78:	01378733          	add	a4,a5,s3
     c7c:	00add693          	srli	a3,s11,0xa
     c80:	005f42b3          	xor	t0,t5,t0
     c84:	00d2c2b3          	xor	t0,t0,a3
     c88:	01470733          	add	a4,a4,s4
     c8c:	00be5d13          	srli	s10,t3,0xb
     c90:	002fdc93          	srli	s9,t6,0x2
     c94:	00570733          	add	a4,a4,t0
     c98:	015e1693          	slli	a3,t3,0x15
     c9c:	01ef9a13          	slli	s4,t6,0x1e
     ca0:	01032283          	lw	t0,16(t1)
     ca4:	007adb93          	srli	s7,s5,0x7
     ca8:	00ea9b13          	slli	s6,s5,0xe
     cac:	013f9c13          	slli	s8,t6,0x13
     cb0:	00e12623          	sw	a4,12(sp)
     cb4:	014cea33          	or	s4,s9,s4
     cb8:	019a9793          	slli	a5,s5,0x19
     cbc:	012ad993          	srli	s3,s5,0x12
     cc0:	00dfd613          	srli	a2,t6,0xd
     cc4:	00dd66b3          	or	a3,s10,a3
     cc8:	016fdc93          	srli	s9,t6,0x16
     ccc:	00af9d13          	slli	s10,t6,0xa
     cd0:	013b69b3          	or	s3,s6,s3
     cd4:	019d6cb3          	or	s9,s10,s9
     cd8:	01812b03          	lw	s6,24(sp)
     cdc:	01866633          	or	a2,a2,s8
     ce0:	00fbe7b3          	or	a5,s7,a5
     ce4:	01f3cc33          	xor	s8,t2,t6
     ce8:	00c12b83          	lw	s7,12(sp)
     cec:	00812d03          	lw	s10,8(sp)
     cf0:	006e5d93          	srli	s11,t3,0x6
     cf4:	01ae1a93          	slli	s5,t3,0x1a
     cf8:	00ca4633          	xor	a2,s4,a2
     cfc:	009c7c33          	and	s8,s8,s1
     d00:	01f3fa33          	and	s4,t2,t6
     d04:	01d94f33          	xor	t5,s2,t4
     d08:	015deab3          	or	s5,s11,s5
     d0c:	014c4c33          	xor	s8,s8,s4
     d10:	005585b3          	add	a1,a1,t0
     d14:	019e5713          	srli	a4,t3,0x19
     d18:	007e1293          	slli	t0,t3,0x7
     d1c:	01964633          	xor	a2,a2,s9
     d20:	017585b3          	add	a1,a1,s7
     d24:	00e2e733          	or	a4,t0,a4
     d28:	00fd1b93          	slli	s7,s10,0xf
     d2c:	01860633          	add	a2,a2,s8
     d30:	01cf7f33          	and	t5,t5,t3
     d34:	01412c03          	lw	s8,20(sp)
     d38:	003b5b13          	srli	s6,s6,0x3
     d3c:	00dac6b3          	xor	a3,s5,a3
     d40:	0137c7b3          	xor	a5,a5,s3
     d44:	00dd1a93          	slli	s5,s10,0xd
     d48:	011d5293          	srli	t0,s10,0x11
     d4c:	013d5993          	srli	s3,s10,0x13
     d50:	013ae9b3          	or	s3,s5,s3
     d54:	012f4f33          	xor	t5,t5,s2
     d58:	0167c7b3          	xor	a5,a5,s6
     d5c:	005be2b3          	or	t0,s7,t0
     d60:	00bf0f33          	add	t5,t5,a1
     d64:	00e6c6b3          	xor	a3,a3,a4
     d68:	01c12583          	lw	a1,28(sp)
     d6c:	00ad5713          	srli	a4,s10,0xa
     d70:	011787b3          	add	a5,a5,a7
     d74:	0132c2b3          	xor	t0,t0,s3
     d78:	01432c83          	lw	s9,20(t1)
     d7c:	01e686b3          	add	a3,a3,t5
     d80:	00e2c2b3          	xor	t0,t0,a4
     d84:	018787b3          	add	a5,a5,s8
     d88:	00d60f33          	add	t5,a2,a3
     d8c:	005787b3          	add	a5,a5,t0
     d90:	00d40633          	add	a2,s0,a3
     d94:	0075dd93          	srli	s11,a1,0x7
     d98:	00078413          	mv	s0,a5
     d9c:	00e59d13          	slli	s10,a1,0xe
     da0:	01a61c13          	slli	s8,a2,0x1a
     da4:	01561a13          	slli	s4,a2,0x15
     da8:	01959793          	slli	a5,a1,0x19
     dac:	0125da93          	srli	s5,a1,0x12
     db0:	00665b93          	srli	s7,a2,0x6
     db4:	01cec5b3          	xor	a1,t4,t3
     db8:	00b65713          	srli	a4,a2,0xb
     dbc:	00812a23          	sw	s0,20(sp)
     dc0:	018bebb3          	or	s7,s7,s8
     dc4:	00c5f5b3          	and	a1,a1,a2
     dc8:	01940433          	add	s0,s0,s9
     dcc:	01476733          	or	a4,a4,s4
     dd0:	00761c93          	slli	s9,a2,0x7
     dd4:	01965a13          	srli	s4,a2,0x19
     dd8:	01ef1993          	slli	s3,t5,0x1e
     ddc:	013f1293          	slli	t0,t5,0x13
     de0:	015d6ab3          	or	s5,s10,s5
     de4:	01240433          	add	s0,s0,s2
     de8:	01c12d03          	lw	s10,28(sp)
     dec:	014cea33          	or	s4,s9,s4
     df0:	002f5b13          	srli	s6,t5,0x2
     df4:	00df5693          	srli	a3,t5,0xd
     df8:	00fde7b3          	or	a5,s11,a5
     dfc:	01d5c5b3          	xor	a1,a1,t4
     e00:	00c12d83          	lw	s11,12(sp)
     e04:	00ebc733          	xor	a4,s7,a4
     e08:	013b6b33          	or	s6,s6,s3
     e0c:	00af1c13          	slli	s8,t5,0xa
     e10:	008585b3          	add	a1,a1,s0
     e14:	0056e6b3          	or	a3,a3,t0
     e18:	016f5993          	srli	s3,t5,0x16
     e1c:	01efc2b3          	xor	t0,t6,t5
     e20:	01474733          	xor	a4,a4,s4
     e24:	00b70733          	add	a4,a4,a1
     e28:	013c69b3          	or	s3,s8,s3
     e2c:	00412583          	lw	a1,4(sp)
     e30:	00db46b3          	xor	a3,s6,a3
     e34:	0072f2b3          	and	t0,t0,t2
     e38:	01effb33          	and	s6,t6,t5
     e3c:	00fd9c13          	slli	s8,s11,0xf
     e40:	00dd9b93          	slli	s7,s11,0xd
     e44:	0162c2b3          	xor	t0,t0,s6
     e48:	003d5d13          	srli	s10,s10,0x3
     e4c:	01812b03          	lw	s6,24(sp)
     e50:	0157c7b3          	xor	a5,a5,s5
     e54:	011dd913          	srli	s2,s11,0x11
     e58:	013dda93          	srli	s5,s11,0x13
     e5c:	0136c6b3          	xor	a3,a3,s3
     e60:	015beab3          	or	s5,s7,s5
     e64:	005686b3          	add	a3,a3,t0
     e68:	01a7c7b3          	xor	a5,a5,s10
     e6c:	012c6933          	or	s2,s8,s2
     e70:	01832c83          	lw	s9,24(t1)
     e74:	00add293          	srli	t0,s11,0xa
     e78:	00b787b3          	add	a5,a5,a1
     e7c:	01594933          	xor	s2,s2,s5
     e80:	00e685b3          	add	a1,a3,a4
     e84:	00e486b3          	add	a3,s1,a4
     e88:	02012483          	lw	s1,32(sp)
     e8c:	016787b3          	add	a5,a5,s6
     e90:	00594933          	xor	s2,s2,t0
     e94:	01278933          	add	s2,a5,s2
     e98:	01a69c13          	slli	s8,a3,0x1a
     e9c:	01569a13          	slli	s4,a3,0x15
     ea0:	01e59993          	slli	s3,a1,0x1e
     ea4:	01359293          	slli	t0,a1,0x13
     ea8:	0066db93          	srli	s7,a3,0x6
     eac:	00b6d713          	srli	a4,a3,0xb
     eb0:	0025db13          	srli	s6,a1,0x2
     eb4:	00d5d413          	srli	s0,a1,0xd
     eb8:	00e49d13          	slli	s10,s1,0xe
     ebc:	01212c23          	sw	s2,24(sp)
     ec0:	018bebb3          	or	s7,s7,s8
     ec4:	013b6b33          	or	s6,s6,s3
     ec8:	00a59c13          	slli	s8,a1,0xa
     ecc:	0124da93          	srli	s5,s1,0x12
     ed0:	01990933          	add	s2,s2,s9
     ed4:	01476733          	or	a4,a4,s4
     ed8:	00769c93          	slli	s9,a3,0x7
     edc:	0196da13          	srli	s4,a3,0x19
     ee0:	00546433          	or	s0,s0,t0
     ee4:	0165d993          	srli	s3,a1,0x16
     ee8:	00bf42b3          	xor	t0,t5,a1
     eec:	015d6ab3          	or	s5,s10,s5
     ef0:	014cea33          	or	s4,s9,s4
     ef4:	02012d03          	lw	s10,32(sp)
     ef8:	01412c83          	lw	s9,20(sp)
     efc:	013c69b3          	or	s3,s8,s3
     f00:	008b4433          	xor	s0,s6,s0
     f04:	01f2f2b3          	and	t0,t0,t6
     f08:	00bf7b33          	and	s6,t5,a1
     f0c:	0074dd93          	srli	s11,s1,0x7
     f10:	01344433          	xor	s0,s0,s3
     f14:	01949793          	slli	a5,s1,0x19
     f18:	0162c2b3          	xor	t0,t0,s6
     f1c:	00ce44b3          	xor	s1,t3,a2
     f20:	00fde7b3          	or	a5,s11,a5
     f24:	00ebc733          	xor	a4,s7,a4
     f28:	005402b3          	add	t0,s0,t0
     f2c:	01012403          	lw	s0,16(sp)
     f30:	01d90933          	add	s2,s2,t4
     f34:	011cdc13          	srli	s8,s9,0x11
     f38:	00dc9b93          	slli	s7,s9,0xd
     f3c:	00d4f4b3          	and	s1,s1,a3
     f40:	003d5d13          	srli	s10,s10,0x3
     f44:	0157c7b3          	xor	a5,a5,s5
     f48:	00fc9e93          	slli	t4,s9,0xf
     f4c:	013cda93          	srli	s5,s9,0x13
     f50:	01474733          	xor	a4,a4,s4
     f54:	01c12a03          	lw	s4,28(sp)
     f58:	015beab3          	or	s5,s7,s5
     f5c:	01c4c4b3          	xor	s1,s1,t3
     f60:	01a7c7b3          	xor	a5,a5,s10
     f64:	018eeeb3          	or	t4,t4,s8
     f68:	012484b3          	add	s1,s1,s2
     f6c:	008787b3          	add	a5,a5,s0
     f70:	015eceb3          	xor	t4,t4,s5
     f74:	00acd413          	srli	s0,s9,0xa
     f78:	00970733          	add	a4,a4,s1
     f7c:	01c32903          	lw	s2,28(t1)
     f80:	008eceb3          	xor	t4,t4,s0
     f84:	014787b3          	add	a5,a5,s4
     f88:	00e282b3          	add	t0,t0,a4
     f8c:	00e383b3          	add	t2,t2,a4
     f90:	01d787b3          	add	a5,a5,t4
     f94:	00078c93          	mv	s9,a5
     f98:	00785d93          	srli	s11,a6,0x7
     f9c:	00d644b3          	xor	s1,a2,a3
     fa0:	01a39c13          	slli	s8,t2,0x1a
     fa4:	01539a13          	slli	s4,t2,0x15
     fa8:	01e29993          	slli	s3,t0,0x1e
     fac:	01329e93          	slli	t4,t0,0x13
     fb0:	01981793          	slli	a5,a6,0x19
     fb4:	0063db93          	srli	s7,t2,0x6
     fb8:	00b3d713          	srli	a4,t2,0xb
     fbc:	0022db13          	srli	s6,t0,0x2
     fc0:	00d2d413          	srli	s0,t0,0xd
     fc4:	01912e23          	sw	s9,28(sp)
     fc8:	018bebb3          	or	s7,s7,s8
     fcc:	013b6b33          	or	s6,s6,s3
     fd0:	00a29c13          	slli	s8,t0,0xa
     fd4:	0074f4b3          	and	s1,s1,t2
     fd8:	012c8933          	add	s2,s9,s2
     fdc:	01476733          	or	a4,a4,s4
     fe0:	00739c93          	slli	s9,t2,0x7
     fe4:	0193da13          	srli	s4,t2,0x19
     fe8:	01d46433          	or	s0,s0,t4
     fec:	0162d993          	srli	s3,t0,0x16
     ff0:	0055ceb3          	xor	t4,a1,t0
     ff4:	00fde7b3          	or	a5,s11,a5
     ff8:	01812d83          	lw	s11,24(sp)
     ffc:	00e81d13          	slli	s10,a6,0xe
    1000:	01c90933          	add	s2,s2,t3
    1004:	014cea33          	or	s4,s9,s4
    1008:	013c69b3          	or	s3,s8,s3
    100c:	01285a93          	srli	s5,a6,0x12
    1010:	00c4c4b3          	xor	s1,s1,a2
    1014:	00ebc733          	xor	a4,s7,a4
    1018:	008b4433          	xor	s0,s6,s0
    101c:	01eefeb3          	and	t4,t4,t5
    1020:	0055fb33          	and	s6,a1,t0
    1024:	015d6ab3          	or	s5,s10,s5
    1028:	012484b3          	add	s1,s1,s2
    102c:	01344433          	xor	s0,s0,s3
    1030:	01474733          	xor	a4,a4,s4
    1034:	016eceb3          	xor	t4,t4,s6
    1038:	011ddc13          	srli	s8,s11,0x11
    103c:	00dd9b93          	slli	s7,s11,0xd
    1040:	00970733          	add	a4,a4,s1
    1044:	01d40eb3          	add	t4,s0,t4
    1048:	0157c7b3          	xor	a5,a5,s5
    104c:	00fd9e13          	slli	t3,s11,0xf
    1050:	013dda93          	srli	s5,s11,0x13
    1054:	00ee84b3          	add	s1,t4,a4
    1058:	00385d13          	srli	s10,a6,0x3
    105c:	02012e83          	lw	t4,32(sp)
    1060:	018e6e33          	or	t3,t3,s8
    1064:	015beab3          	or	s5,s7,s5
    1068:	015e4433          	xor	s0,t3,s5
    106c:	01a7c7b3          	xor	a5,a5,s10
    1070:	00ef8e33          	add	t3,t6,a4
    1074:	02412703          	lw	a4,36(sp)
    1078:	02032c83          	lw	s9,32(t1)
    107c:	00add913          	srli	s2,s11,0xa
    1080:	00a787b3          	add	a5,a5,a0
    1084:	01d787b3          	add	a5,a5,t4
    1088:	01244433          	xor	s0,s0,s2
    108c:	00878933          	add	s2,a5,s0
    1090:	00775d93          	srli	s11,a4,0x7
    1094:	00e71d13          	slli	s10,a4,0xe
    1098:	015e1a13          	slli	s4,t3,0x15
    109c:	01971793          	slli	a5,a4,0x19
    10a0:	01275a93          	srli	s5,a4,0x12
    10a4:	00be5713          	srli	a4,t3,0xb
    10a8:	03212023          	sw	s2,32(sp)
    10ac:	01476733          	or	a4,a4,s4
    10b0:	01990933          	add	s2,s2,s9
    10b4:	019e5a13          	srli	s4,t3,0x19
    10b8:	007e1c93          	slli	s9,t3,0x7
    10bc:	015d6ab3          	or	s5,s10,s5
    10c0:	014cea33          	or	s4,s9,s4
    10c4:	02412d03          	lw	s10,36(sp)
    10c8:	01c12c83          	lw	s9,28(sp)
    10cc:	01ae1c13          	slli	s8,t3,0x1a
    10d0:	01e49993          	slli	s3,s1,0x1e
    10d4:	01349e93          	slli	t4,s1,0x13
    10d8:	006e5b93          	srli	s7,t3,0x6
    10dc:	0024db13          	srli	s6,s1,0x2
    10e0:	00d4df93          	srli	t6,s1,0xd
    10e4:	018bebb3          	or	s7,s7,s8
    10e8:	013b6b33          	or	s6,s6,s3
    10ec:	00a49c13          	slli	s8,s1,0xa
    10f0:	01dfefb3          	or	t6,t6,t4
    10f4:	0164d993          	srli	s3,s1,0x16
    10f8:	0092ceb3          	xor	t4,t0,s1
    10fc:	00fde7b3          	or	a5,s11,a5
    1100:	02812d83          	lw	s11,40(sp)
    1104:	00c90933          	add	s2,s2,a2
    1108:	013c69b3          	or	s3,s8,s3
    110c:	003d5d13          	srli	s10,s10,0x3
    1110:	011cdc13          	srli	s8,s9,0x11
    1114:	00ebc733          	xor	a4,s7,a4
    1118:	01fb4fb3          	xor	t6,s6,t6
    111c:	00dc9b93          	slli	s7,s9,0xd
    1120:	0092fb33          	and	s6,t0,s1
    1124:	00befeb3          	and	t4,t4,a1
    1128:	0157c7b3          	xor	a5,a5,s5
    112c:	00fc9613          	slli	a2,s9,0xf
    1130:	013cda93          	srli	s5,s9,0x13
    1134:	013fcfb3          	xor	t6,t6,s3
    1138:	015beab3          	or	s5,s7,s5
    113c:	016eceb3          	xor	t4,t4,s6
    1140:	01a7c7b3          	xor	a5,a5,s10
    1144:	01866633          	or	a2,a2,s8
    1148:	0076c433          	xor	s0,a3,t2
    114c:	01df8eb3          	add	t4,t6,t4
    1150:	01b787b3          	add	a5,a5,s11
    1154:	00acdf93          	srli	t6,s9,0xa
    1158:	01564633          	xor	a2,a2,s5
    115c:	01f64633          	xor	a2,a2,t6
    1160:	01c47433          	and	s0,s0,t3
    1164:	010787b3          	add	a5,a5,a6
    1168:	00c78833          	add	a6,a5,a2
    116c:	00d44433          	xor	s0,s0,a3
    1170:	02c12603          	lw	a2,44(sp)
    1174:	01240433          	add	s0,s0,s2
    1178:	01474733          	xor	a4,a4,s4
    117c:	00870733          	add	a4,a4,s0
    1180:	02432903          	lw	s2,36(t1)
    1184:	00ee8eb3          	add	t4,t4,a4
    1188:	00ef0f33          	add	t5,t5,a4
    118c:	00765d93          	srli	s11,a2,0x7
    1190:	01961793          	slli	a5,a2,0x19
    1194:	00e61d13          	slli	s10,a2,0xe
    1198:	01c3c433          	xor	s0,t2,t3
    119c:	01af1c13          	slli	s8,t5,0x1a
    11a0:	015f1a13          	slli	s4,t5,0x15
    11a4:	01ee9993          	slli	s3,t4,0x1e
    11a8:	01265a93          	srli	s5,a2,0x12
    11ac:	006f5b93          	srli	s7,t5,0x6
    11b0:	013e9613          	slli	a2,t4,0x13
    11b4:	00bf5713          	srli	a4,t5,0xb
    11b8:	002edb13          	srli	s6,t4,0x2
    11bc:	00dedf93          	srli	t6,t4,0xd
    11c0:	00fde7b3          	or	a5,s11,a5
    11c4:	02c12d83          	lw	s11,44(sp)
    11c8:	018bebb3          	or	s7,s7,s8
    11cc:	007f1c93          	slli	s9,t5,0x7
    11d0:	013b6b33          	or	s6,s6,s3
    11d4:	00ae9c13          	slli	s8,t4,0xa
    11d8:	01e47433          	and	s0,s0,t5
    11dc:	01476733          	or	a4,a4,s4
    11e0:	00cfefb3          	or	t6,t6,a2
    11e4:	019f5a13          	srli	s4,t5,0x19
    11e8:	01d4c633          	xor	a2,s1,t4
    11ec:	016ed993          	srli	s3,t4,0x16
    11f0:	01280933          	add	s2,a6,s2
    11f4:	015d6ab3          	or	s5,s10,s5
    11f8:	00d90933          	add	s2,s2,a3
    11fc:	014cea33          	or	s4,s9,s4
    1200:	013c69b3          	or	s3,s8,s3
    1204:	00744433          	xor	s0,s0,t2
    1208:	00ebc733          	xor	a4,s7,a4
    120c:	01fb4fb3          	xor	t6,s6,t6
    1210:	00567633          	and	a2,a2,t0
    1214:	01d4fb33          	and	s6,s1,t4
    1218:	003ddd13          	srli	s10,s11,0x3
    121c:	01240433          	add	s0,s0,s2
    1220:	02012d83          	lw	s11,32(sp)
    1224:	013fcfb3          	xor	t6,t6,s3
    1228:	0157c7b3          	xor	a5,a5,s5
    122c:	01474733          	xor	a4,a4,s4
    1230:	01664633          	xor	a2,a2,s6
    1234:	00870733          	add	a4,a4,s0
    1238:	00cf8633          	add	a2,t6,a2
    123c:	01a7c7b3          	xor	a5,a5,s10
    1240:	00812d03          	lw	s10,8(sp)
    1244:	00e60433          	add	s0,a2,a4
    1248:	00e58fb3          	add	t6,a1,a4
    124c:	02832c83          	lw	s9,40(t1)
    1250:	02412703          	lw	a4,36(sp)
    1254:	011ddc13          	srli	s8,s11,0x11
    1258:	00dd9b93          	slli	s7,s11,0xd
    125c:	00fd9693          	slli	a3,s11,0xf
    1260:	013dda93          	srli	s5,s11,0x13
    1264:	015beab3          	or	s5,s7,s5
    1268:	0186e6b3          	or	a3,a3,s8
    126c:	01a787b3          	add	a5,a5,s10
    1270:	00add913          	srli	s2,s11,0xa
    1274:	0156c6b3          	xor	a3,a3,s5
    1278:	00e787b3          	add	a5,a5,a4
    127c:	03012703          	lw	a4,48(sp)
    1280:	0126c6b3          	xor	a3,a3,s2
    1284:	00d787b3          	add	a5,a5,a3
    1288:	00078913          	mv	s2,a5
    128c:	00775d93          	srli	s11,a4,0x7
    1290:	00e71d13          	slli	s10,a4,0xe
    1294:	01ee45b3          	xor	a1,t3,t5
    1298:	01af9c13          	slli	s8,t6,0x1a
    129c:	015f9a13          	slli	s4,t6,0x15
    12a0:	01e41993          	slli	s3,s0,0x1e
    12a4:	01341693          	slli	a3,s0,0x13
    12a8:	01971793          	slli	a5,a4,0x19
    12ac:	01275a93          	srli	s5,a4,0x12
    12b0:	006fdb93          	srli	s7,t6,0x6
    12b4:	00bfd713          	srli	a4,t6,0xb
    12b8:	00245b13          	srli	s6,s0,0x2
    12bc:	00d45613          	srli	a2,s0,0xd
    12c0:	03212223          	sw	s2,36(sp)
    12c4:	018bebb3          	or	s7,s7,s8
    12c8:	013b6b33          	or	s6,s6,s3
    12cc:	00a41c13          	slli	s8,s0,0xa
    12d0:	01f5f5b3          	and	a1,a1,t6
    12d4:	01990933          	add	s2,s2,s9
    12d8:	01476733          	or	a4,a4,s4
    12dc:	007f9c93          	slli	s9,t6,0x7
    12e0:	019fda13          	srli	s4,t6,0x19
    12e4:	00d66633          	or	a2,a2,a3
    12e8:	01645993          	srli	s3,s0,0x16
    12ec:	008ec6b3          	xor	a3,t4,s0
    12f0:	015d6ab3          	or	s5,s10,s5
    12f4:	00790933          	add	s2,s2,t2
    12f8:	03012d03          	lw	s10,48(sp)
    12fc:	008ef3b3          	and	t2,t4,s0
    1300:	014cea33          	or	s4,s9,s4
    1304:	013c69b3          	or	s3,s8,s3
    1308:	01c5c5b3          	xor	a1,a1,t3
    130c:	00ebc733          	xor	a4,s7,a4
    1310:	00cb4633          	xor	a2,s6,a2
    1314:	0096f6b3          	and	a3,a3,s1
    1318:	012585b3          	add	a1,a1,s2
    131c:	01364633          	xor	a2,a2,s3
    1320:	00fde7b3          	or	a5,s11,a5
    1324:	01474733          	xor	a4,a4,s4
    1328:	0076c6b3          	xor	a3,a3,t2
    132c:	00b70733          	add	a4,a4,a1
    1330:	00c12d83          	lw	s11,12(sp)
    1334:	00d606b3          	add	a3,a2,a3
    1338:	0157c7b3          	xor	a5,a5,s5
    133c:	01185c13          	srli	s8,a6,0x11
    1340:	00d81b93          	slli	s7,a6,0xd
    1344:	00f81a93          	slli	s5,a6,0xf
    1348:	01385b13          	srli	s6,a6,0x13
    134c:	00e683b3          	add	t2,a3,a4
    1350:	00e282b3          	add	t0,t0,a4
    1354:	016beb33          	or	s6,s7,s6
    1358:	02c12703          	lw	a4,44(sp)
    135c:	003d5d13          	srli	s10,s10,0x3
    1360:	018aeab3          	or	s5,s5,s8
    1364:	01a7c7b3          	xor	a5,a5,s10
    1368:	016acab3          	xor	s5,s5,s6
    136c:	00a85613          	srli	a2,a6,0xa
    1370:	00cacab3          	xor	s5,s5,a2
    1374:	01b787b3          	add	a5,a5,s11
    1378:	03412603          	lw	a2,52(sp)
    137c:	00e787b3          	add	a5,a5,a4
    1380:	015787b3          	add	a5,a5,s5
    1384:	00078c93          	mv	s9,a5
    1388:	02c32903          	lw	s2,44(t1)
    138c:	00765d93          	srli	s11,a2,0x7
    1390:	00e61d13          	slli	s10,a2,0xe
    1394:	01a29c13          	slli	s8,t0,0x1a
    1398:	01e39993          	slli	s3,t2,0x1e
    139c:	01339693          	slli	a3,t2,0x13
    13a0:	01961793          	slli	a5,a2,0x19
    13a4:	01265a93          	srli	s5,a2,0x12
    13a8:	0062db93          	srli	s7,t0,0x6
    13ac:	0023db13          	srli	s6,t2,0x2
    13b0:	00d3d613          	srli	a2,t2,0xd
    13b4:	018bebb3          	or	s7,s7,s8
    13b8:	013b6b33          	or	s6,s6,s3
    13bc:	00a39c13          	slli	s8,t2,0xa
    13c0:	00d66633          	or	a2,a2,a3
    13c4:	0163d993          	srli	s3,t2,0x16
    13c8:	007446b3          	xor	a3,s0,t2
    13cc:	01ff45b3          	xor	a1,t5,t6
    13d0:	01529a13          	slli	s4,t0,0x15
    13d4:	015d6ab3          	or	s5,s10,s5
    13d8:	013c69b3          	or	s3,s8,s3
    13dc:	03412d03          	lw	s10,52(sp)
    13e0:	00b2d713          	srli	a4,t0,0xb
    13e4:	00cb4633          	xor	a2,s6,a2
    13e8:	01d6f6b3          	and	a3,a3,t4
    13ec:	00747b33          	and	s6,s0,t2
    13f0:	03912623          	sw	s9,44(sp)
    13f4:	01364633          	xor	a2,a2,s3
    13f8:	0055f5b3          	and	a1,a1,t0
    13fc:	012c8933          	add	s2,s9,s2
    1400:	01476733          	or	a4,a4,s4
    1404:	00729c93          	slli	s9,t0,0x7
    1408:	0192da13          	srli	s4,t0,0x19
    140c:	0166c6b3          	xor	a3,a3,s6
    1410:	01c90933          	add	s2,s2,t3
    1414:	014cea33          	or	s4,s9,s4
    1418:	00d606b3          	add	a3,a2,a3
    141c:	02412c83          	lw	s9,36(sp)
    1420:	01412603          	lw	a2,20(sp)
    1424:	00fde7b3          	or	a5,s11,a5
    1428:	01e5c5b3          	xor	a1,a1,t5
    142c:	00ebc733          	xor	a4,s7,a4
    1430:	012585b3          	add	a1,a1,s2
    1434:	003d5d13          	srli	s10,s10,0x3
    1438:	0157c7b3          	xor	a5,a5,s5
    143c:	01474733          	xor	a4,a4,s4
    1440:	00b70733          	add	a4,a4,a1
    1444:	01a7c7b3          	xor	a5,a5,s10
    1448:	00e484b3          	add	s1,s1,a4
    144c:	011cdc13          	srli	s8,s9,0x11
    1450:	00dc9b93          	slli	s7,s9,0xd
    1454:	00fc9e13          	slli	t3,s9,0xf
    1458:	013cda93          	srli	s5,s9,0x13
    145c:	00c787b3          	add	a5,a5,a2
    1460:	00e68633          	add	a2,a3,a4
    1464:	03012703          	lw	a4,48(sp)
    1468:	015beab3          	or	s5,s7,s5
    146c:	018e6e33          	or	t3,t3,s8
    1470:	00acd593          	srli	a1,s9,0xa
    1474:	015e4e33          	xor	t3,t3,s5
    1478:	03032903          	lw	s2,48(t1)
    147c:	00be4e33          	xor	t3,t3,a1
    1480:	00e787b3          	add	a5,a5,a4
    1484:	01c787b3          	add	a5,a5,t3
    1488:	00078c93          	mv	s9,a5
    148c:	005fce33          	xor	t3,t6,t0
    1490:	01a49c13          	slli	s8,s1,0x1a
    1494:	01549a13          	slli	s4,s1,0x15
    1498:	0064db93          	srli	s7,s1,0x6
    149c:	00b4d713          	srli	a4,s1,0xb
    14a0:	0078dd93          	srli	s11,a7,0x7
    14a4:	03912823          	sw	s9,48(sp)
    14a8:	018bebb3          	or	s7,s7,s8
    14ac:	01989793          	slli	a5,a7,0x19
    14b0:	009e7e33          	and	t3,t3,s1
    14b4:	012c8933          	add	s2,s9,s2
    14b8:	01476733          	or	a4,a4,s4
    14bc:	00749c93          	slli	s9,s1,0x7
    14c0:	0194da13          	srli	s4,s1,0x19
    14c4:	00e89d13          	slli	s10,a7,0xe
    14c8:	01e61993          	slli	s3,a2,0x1e
    14cc:	01361693          	slli	a3,a2,0x13
    14d0:	01e90933          	add	s2,s2,t5
    14d4:	014cea33          	or	s4,s9,s4
    14d8:	0128da93          	srli	s5,a7,0x12
    14dc:	00265b13          	srli	s6,a2,0x2
    14e0:	00d65593          	srli	a1,a2,0xd
    14e4:	00fde7b3          	or	a5,s11,a5
    14e8:	01fe4e33          	xor	t3,t3,t6
    14ec:	02c12d83          	lw	s11,44(sp)
    14f0:	00ebc733          	xor	a4,s7,a4
    14f4:	013b6b33          	or	s6,s6,s3
    14f8:	00a61c13          	slli	s8,a2,0xa
    14fc:	015d6ab3          	or	s5,s10,s5
    1500:	012e0e33          	add	t3,t3,s2
    1504:	00d5e5b3          	or	a1,a1,a3
    1508:	01665993          	srli	s3,a2,0x16
    150c:	00c3c6b3          	xor	a3,t2,a2
    1510:	01474733          	xor	a4,a4,s4
    1514:	01c70733          	add	a4,a4,t3
    1518:	0038dd13          	srli	s10,a7,0x3
    151c:	013c69b3          	or	s3,s8,s3
    1520:	01812e03          	lw	t3,24(sp)
    1524:	00bb45b3          	xor	a1,s6,a1
    1528:	0086f6b3          	and	a3,a3,s0
    152c:	00c3fb33          	and	s6,t2,a2
    1530:	0157c7b3          	xor	a5,a5,s5
    1534:	011ddc13          	srli	s8,s11,0x11
    1538:	00dd9b93          	slli	s7,s11,0xd
    153c:	0135c5b3          	xor	a1,a1,s3
    1540:	01a7c7b3          	xor	a5,a5,s10
    1544:	00fd9f13          	slli	t5,s11,0xf
    1548:	03412d03          	lw	s10,52(sp)
    154c:	013dda93          	srli	s5,s11,0x13
    1550:	0166c6b3          	xor	a3,a3,s6
    1554:	015beab3          	or	s5,s7,s5
    1558:	018f6f33          	or	t5,t5,s8
    155c:	00d586b3          	add	a3,a1,a3
    1560:	00e685b3          	add	a1,a3,a4
    1564:	00add913          	srli	s2,s11,0xa
    1568:	00412683          	lw	a3,4(sp)
    156c:	01c78e33          	add	t3,a5,t3
    1570:	015f4f33          	xor	t5,t5,s5
    1574:	00ee87b3          	add	a5,t4,a4
    1578:	01ae0e33          	add	t3,t3,s10
    157c:	012f4f33          	xor	t5,t5,s2
    1580:	03432c83          	lw	s9,52(t1)
    1584:	01ee0f33          	add	t5,t3,t5
    1588:	01a79c13          	slli	s8,a5,0x1a
    158c:	01e59993          	slli	s3,a1,0x1e
    1590:	01359e13          	slli	t3,a1,0x13
    1594:	0067db93          	srli	s7,a5,0x6
    1598:	0025db13          	srli	s6,a1,0x2
    159c:	00d5de93          	srli	t4,a1,0xd
    15a0:	0076dd93          	srli	s11,a3,0x7
    15a4:	0126dd13          	srli	s10,a3,0x12
    15a8:	018bebb3          	or	s7,s7,s8
    15ac:	013b6b33          	or	s6,s6,s3
    15b0:	01969713          	slli	a4,a3,0x19
    15b4:	00e69a93          	slli	s5,a3,0xe
    15b8:	01ceeeb3          	or	t4,t4,t3
    15bc:	00a59c13          	slli	s8,a1,0xa
    15c0:	00b64e33          	xor	t3,a2,a1
    15c4:	0165d993          	srli	s3,a1,0x16
    15c8:	0092c933          	xor	s2,t0,s1
    15cc:	01aaeab3          	or	s5,s5,s10
    15d0:	013c69b3          	or	s3,s8,s3
    15d4:	00412d03          	lw	s10,4(sp)
    15d8:	01579a13          	slli	s4,a5,0x15
    15dc:	00ede733          	or	a4,s11,a4
    15e0:	01db4eb3          	xor	t4,s6,t4
    15e4:	03012d83          	lw	s11,48(sp)
    15e8:	00b67b33          	and	s6,a2,a1
    15ec:	007e7e33          	and	t3,t3,t2
    15f0:	00b7d693          	srli	a3,a5,0xb
    15f4:	03e12a23          	sw	t5,52(sp)
    15f8:	013eceb3          	xor	t4,t4,s3
    15fc:	019f0f33          	add	t5,t5,s9
    1600:	0146e6b3          	or	a3,a3,s4
    1604:	00779c93          	slli	s9,a5,0x7
    1608:	016e4e33          	xor	t3,t3,s6
    160c:	00f97933          	and	s2,s2,a5
    1610:	0197da13          	srli	s4,a5,0x19
    1614:	00594933          	xor	s2,s2,t0
    1618:	014cea33          	or	s4,s9,s4
    161c:	01ce8e33          	add	t3,t4,t3
    1620:	01ff0f33          	add	t5,t5,t6
    1624:	01c12e83          	lw	t4,28(sp)
    1628:	00dbc6b3          	xor	a3,s7,a3
    162c:	011ddc13          	srli	s8,s11,0x11
    1630:	00dd9b93          	slli	s7,s11,0xd
    1634:	012f0f33          	add	t5,t5,s2
    1638:	003d5d13          	srli	s10,s10,0x3
    163c:	01574733          	xor	a4,a4,s5
    1640:	00fd9f93          	slli	t6,s11,0xf
    1644:	013dda93          	srli	s5,s11,0x13
    1648:	0146c6b3          	xor	a3,a3,s4
    164c:	015beab3          	or	s5,s7,s5
    1650:	01e686b3          	add	a3,a3,t5
    1654:	01a74733          	xor	a4,a4,s10
    1658:	018fefb3          	or	t6,t6,s8
    165c:	00de0933          	add	s2,t3,a3
    1660:	03832c83          	lw	s9,56(t1)
    1664:	00d406b3          	add	a3,s0,a3
    1668:	01d70733          	add	a4,a4,t4
    166c:	01012403          	lw	s0,16(sp)
    1670:	00adde93          	srli	t4,s11,0xa
    1674:	015fcfb3          	xor	t6,t6,s5
    1678:	01dfcfb3          	xor	t6,t6,t4
    167c:	01170733          	add	a4,a4,a7
    1680:	01f708b3          	add	a7,a4,t6
    1684:	01941d93          	slli	s11,s0,0x19
    1688:	00e41d13          	slli	s10,s0,0xe
    168c:	00f4cfb3          	xor	t6,s1,a5
    1690:	01a69c13          	slli	s8,a3,0x1a
    1694:	01569a13          	slli	s4,a3,0x15
    1698:	00745713          	srli	a4,s0,0x7
    169c:	01245a93          	srli	s5,s0,0x12
    16a0:	0066db93          	srli	s7,a3,0x6
    16a4:	01988433          	add	s0,a7,s9
    16a8:	00b6de13          	srli	t3,a3,0xb
    16ac:	018bebb3          	or	s7,s7,s8
    16b0:	015d6ab3          	or	s5,s10,s5
    16b4:	00540433          	add	s0,s0,t0
    16b8:	03412d03          	lw	s10,52(sp)
    16bc:	01012283          	lw	t0,16(sp)
    16c0:	014e6e33          	or	t3,t3,s4
    16c4:	00769c93          	slli	s9,a3,0x7
    16c8:	00dfffb3          	and	t6,t6,a3
    16cc:	0196da13          	srli	s4,a3,0x19
    16d0:	014cea33          	or	s4,s9,s4
    16d4:	01e91993          	slli	s3,s2,0x1e
    16d8:	01391e93          	slli	t4,s2,0x13
    16dc:	009fcfb3          	xor	t6,t6,s1
    16e0:	01cbce33          	xor	t3,s7,t3
    16e4:	00295b13          	srli	s6,s2,0x2
    16e8:	00d95f13          	srli	t5,s2,0xd
    16ec:	013b6b33          	or	s6,s6,s3
    16f0:	008f8fb3          	add	t6,t6,s0
    16f4:	01df6f33          	or	t5,t5,t4
    16f8:	00a91c13          	slli	s8,s2,0xa
    16fc:	01b76733          	or	a4,a4,s11
    1700:	014e4e33          	xor	t3,t3,s4
    1704:	02012d83          	lw	s11,32(sp)
    1708:	01695993          	srli	s3,s2,0x16
    170c:	0125ceb3          	xor	t4,a1,s2
    1710:	01fe0e33          	add	t3,t3,t6
    1714:	013c69b3          	or	s3,s8,s3
    1718:	00ad5f93          	srli	t6,s10,0xa
    171c:	01eb4f33          	xor	t5,s6,t5
    1720:	00cefeb3          	and	t4,t4,a2
    1724:	00dd1b13          	slli	s6,s10,0xd
    1728:	0125fbb3          	and	s7,a1,s2
    172c:	01574733          	xor	a4,a4,s5
    1730:	0032dc93          	srli	s9,t0,0x3
    1734:	011d5c13          	srli	s8,s10,0x11
    1738:	00fd1293          	slli	t0,s10,0xf
    173c:	013d5a93          	srli	s5,s10,0x13
    1740:	00412d03          	lw	s10,4(sp)
    1744:	013f4f33          	xor	t5,t5,s3
    1748:	015b6ab3          	or	s5,s6,s5
    174c:	017eceb3          	xor	t4,t4,s7
    1750:	01974733          	xor	a4,a4,s9
    1754:	0182e2b3          	or	t0,t0,s8
    1758:	03c32983          	lw	s3,60(t1)
    175c:	01df0eb3          	add	t4,t5,t4
    1760:	0152c2b3          	xor	t0,t0,s5
    1764:	01b70f33          	add	t5,a4,s11
    1768:	01f2c2b3          	xor	t0,t0,t6
    176c:	01c38733          	add	a4,t2,t3
    1770:	01af0f33          	add	t5,t5,s10
    1774:	01ce8eb3          	add	t4,t4,t3
    1778:	005f0bb3          	add	s7,t5,t0
    177c:	01a71b13          	slli	s6,a4,0x1a
    1780:	01571413          	slli	s0,a4,0x15
    1784:	00d7cfb3          	xor	t6,a5,a3
    1788:	00675e13          	srli	t3,a4,0x6
    178c:	00b75a93          	srli	s5,a4,0xb
    1790:	01712223          	sw	s7,4(sp)
    1794:	013b89b3          	add	s3,s7,s3
    1798:	016e6e33          	or	t3,t3,s6
    179c:	008aeab3          	or	s5,s5,s0
    17a0:	00efffb3          	and	t6,t6,a4
    17a4:	00771413          	slli	s0,a4,0x7
    17a8:	01975b93          	srli	s7,a4,0x19
    17ac:	009989b3          	add	s3,s3,s1
    17b0:	00ffcfb3          	xor	t6,t6,a5
    17b4:	015e4e33          	xor	t3,t3,s5
    17b8:	01746433          	or	s0,s0,s7
    17bc:	01ee9393          	slli	t2,t4,0x1e
    17c0:	013e9293          	slli	t0,t4,0x13
    17c4:	013f8fb3          	add	t6,t6,s3
    17c8:	002eda13          	srli	s4,t4,0x2
    17cc:	00dedf13          	srli	t5,t4,0xd
    17d0:	008e4e33          	xor	t3,t3,s0
    17d4:	007a6a33          	or	s4,s4,t2
    17d8:	005f6f33          	or	t5,t5,t0
    17dc:	01fe0e33          	add	t3,t3,t6
    17e0:	00ae9b13          	slli	s6,t4,0xa
    17e4:	016ed393          	srli	t2,t4,0x16
    17e8:	01d942b3          	xor	t0,s2,t4
    17ec:	01c60fb3          	add	t6,a2,t3
    17f0:	01ea4f33          	xor	t5,s4,t5
    17f4:	007b63b3          	or	t2,s6,t2
    17f8:	00b2f2b3          	and	t0,t0,a1
    17fc:	01d974b3          	and	s1,s2,t4
    1800:	03812603          	lw	a2,56(sp)
    1804:	007f4f33          	xor	t5,t5,t2
    1808:	0092c4b3          	xor	s1,t0,s1
    180c:	009f0f33          	add	t5,t5,s1
    1810:	04030313          	addi	t1,t1,64
    1814:	01cf0e33          	add	t3,t5,t3
    1818:	82c31263          	bne	t1,a2,83c <_nettle_sha256_compress+0x610>
    181c:	04012603          	lw	a2,64(sp)
    1820:	0cc12403          	lw	s0,204(sp)
    1824:	0c812483          	lw	s1,200(sp)
    1828:	01c60333          	add	t1,a2,t3
    182c:	04412603          	lw	a2,68(sp)
    1830:	0c012983          	lw	s3,192(sp)
    1834:	0bc12a03          	lw	s4,188(sp)
    1838:	01d608b3          	add	a7,a2,t4
    183c:	04812603          	lw	a2,72(sp)
    1840:	0b812a83          	lw	s5,184(sp)
    1844:	0b412b03          	lw	s6,180(sp)
    1848:	01260833          	add	a6,a2,s2
    184c:	04c12603          	lw	a2,76(sp)
    1850:	0c412903          	lw	s2,196(sp)
    1854:	0b012b83          	lw	s7,176(sp)
    1858:	00b60533          	add	a0,a2,a1
    185c:	05012603          	lw	a2,80(sp)
    1860:	0ac12c03          	lw	s8,172(sp)
    1864:	0a812c83          	lw	s9,168(sp)
    1868:	01f605b3          	add	a1,a2,t6
    186c:	05412603          	lw	a2,84(sp)
    1870:	0a412d03          	lw	s10,164(sp)
    1874:	0a012d83          	lw	s11,160(sp)
    1878:	00e60633          	add	a2,a2,a4
    187c:	05812703          	lw	a4,88(sp)
    1880:	00d70733          	add	a4,a4,a3
    1884:	05c12683          	lw	a3,92(sp)
    1888:	00f687b3          	add	a5,a3,a5
    188c:	03c12683          	lw	a3,60(sp)
    1890:	0066a023          	sw	t1,0(a3)
    1894:	0116a223          	sw	a7,4(a3)
    1898:	0106a423          	sw	a6,8(a3)
    189c:	00a6a623          	sw	a0,12(a3)
    18a0:	00b6a823          	sw	a1,16(a3)
    18a4:	00c6aa23          	sw	a2,20(a3)
    18a8:	00e6ac23          	sw	a4,24(a3)
    18ac:	00f6ae23          	sw	a5,28(a3)
    18b0:	0d010113          	addi	sp,sp,208
    18b4:	00008067          	ret

000018b8 <sha256_update>:
    18b8:	fe010113          	addi	sp,sp,-32
    18bc:	01212823          	sw	s2,16(sp)
    18c0:	06852903          	lw	s2,104(a0)
    18c4:	00812c23          	sw	s0,24(sp)
    18c8:	00912a23          	sw	s1,20(sp)
    18cc:	01312623          	sw	s3,12(sp)
    18d0:	01412423          	sw	s4,8(sp)
    18d4:	00112e23          	sw	ra,28(sp)
    18d8:	01512223          	sw	s5,4(sp)
    18dc:	00050413          	mv	s0,a0
    18e0:	00058993          	mv	s3,a1
    18e4:	00060493          	mv	s1,a2
    18e8:	02850a13          	addi	s4,a0,40
    18ec:	04090e63          	beqz	s2,1948 <sha256_update+0x90>
    18f0:	04000a93          	li	s5,64
    18f4:	412a8ab3          	sub	s5,s5,s2
    18f8:	012a0533          	add	a0,s4,s2
    18fc:	0d55ee63          	bltu	a1,s5,19d8 <sha256_update+0x120>
    1900:	00060593          	mv	a1,a2
    1904:	000a8613          	mv	a2,s5
    1908:	568000ef          	jal	ra,1e70 <memcpy>
    190c:	00011637          	lui	a2,0x11
    1910:	a2460613          	addi	a2,a2,-1500 # 10a24 <K>
    1914:	000a0593          	mv	a1,s4
    1918:	00040513          	mv	a0,s0
    191c:	911fe0ef          	jal	ra,22c <_nettle_sha256_compress>
    1920:	02042783          	lw	a5,32(s0)
    1924:	02442683          	lw	a3,36(s0)
    1928:	fc098993          	addi	s3,s3,-64
    192c:	00178713          	addi	a4,a5,1
    1930:	00f737b3          	sltu	a5,a4,a5
    1934:	00d787b3          	add	a5,a5,a3
    1938:	02e42023          	sw	a4,32(s0)
    193c:	02f42223          	sw	a5,36(s0)
    1940:	015484b3          	add	s1,s1,s5
    1944:	013909b3          	add	s3,s2,s3
    1948:	03f00793          	li	a5,63
    194c:	0b37f263          	bgeu	a5,s3,19f0 <sha256_update+0x138>
    1950:	fc098913          	addi	s2,s3,-64
    1954:	fc097913          	andi	s2,s2,-64
    1958:	04090913          	addi	s2,s2,64
    195c:	00011ab7          	lui	s5,0x11
    1960:	01248933          	add	s2,s1,s2
    1964:	a24a8a93          	addi	s5,s5,-1500 # 10a24 <K>
    1968:	00048593          	mv	a1,s1
    196c:	000a8613          	mv	a2,s5
    1970:	00040513          	mv	a0,s0
    1974:	8b9fe0ef          	jal	ra,22c <_nettle_sha256_compress>
    1978:	02042783          	lw	a5,32(s0)
    197c:	02442683          	lw	a3,36(s0)
    1980:	04048493          	addi	s1,s1,64
    1984:	00178713          	addi	a4,a5,1
    1988:	00f737b3          	sltu	a5,a4,a5
    198c:	00d787b3          	add	a5,a5,a3
    1990:	02e42023          	sw	a4,32(s0)
    1994:	02f42223          	sw	a5,36(s0)
    1998:	fd2498e3          	bne	s1,s2,1968 <sha256_update+0xb0>
    199c:	03f9f993          	andi	s3,s3,63
    19a0:	00098613          	mv	a2,s3
    19a4:	00090593          	mv	a1,s2
    19a8:	000a0513          	mv	a0,s4
    19ac:	4c4000ef          	jal	ra,1e70 <memcpy>
    19b0:	07342423          	sw	s3,104(s0)
    19b4:	01c12083          	lw	ra,28(sp)
    19b8:	01812403          	lw	s0,24(sp)
    19bc:	01412483          	lw	s1,20(sp)
    19c0:	01012903          	lw	s2,16(sp)
    19c4:	00c12983          	lw	s3,12(sp)
    19c8:	00812a03          	lw	s4,8(sp)
    19cc:	00412a83          	lw	s5,4(sp)
    19d0:	02010113          	addi	sp,sp,32
    19d4:	00008067          	ret
    19d8:	00058613          	mv	a2,a1
    19dc:	00048593          	mv	a1,s1
    19e0:	490000ef          	jal	ra,1e70 <memcpy>
    19e4:	06842783          	lw	a5,104(s0)
    19e8:	00f989b3          	add	s3,s3,a5
    19ec:	fc5ff06f          	j	19b0 <sha256_update+0xf8>
    19f0:	00048913          	mv	s2,s1
    19f4:	fadff06f          	j	19a0 <sha256_update+0xe8>

000019f8 <sha256_write_digest>:
    19f8:	fe010113          	addi	sp,sp,-32
    19fc:	00112e23          	sw	ra,28(sp)
    1a00:	00812c23          	sw	s0,24(sp)
    1a04:	00912a23          	sw	s1,20(sp)
    1a08:	01212823          	sw	s2,16(sp)
    1a0c:	01312623          	sw	s3,12(sp)
    1a10:	01412423          	sw	s4,8(sp)
    1a14:	02000793          	li	a5,32
    1a18:	14b7e663          	bltu	a5,a1,1b64 <sha256_write_digest+0x16c>
    1a1c:	06852783          	lw	a5,104(a0)
    1a20:	03f00713          	li	a4,63
    1a24:	00050413          	mv	s0,a0
    1a28:	10f76e63          	bltu	a4,a5,1b44 <sha256_write_digest+0x14c>
    1a2c:	00f50733          	add	a4,a0,a5
    1a30:	f8000693          	li	a3,-128
    1a34:	00060913          	mv	s2,a2
    1a38:	00178793          	addi	a5,a5,1
    1a3c:	02850a13          	addi	s4,a0,40
    1a40:	02d70423          	sb	a3,40(a4)
    1a44:	03800613          	li	a2,56
    1a48:	00058493          	mv	s1,a1
    1a4c:	00fa0533          	add	a0,s4,a5
    1a50:	0cf66063          	bltu	a2,a5,1b10 <sha256_write_digest+0x118>
    1a54:	000119b7          	lui	s3,0x11
    1a58:	40f60633          	sub	a2,a2,a5
    1a5c:	a2498993          	addi	s3,s3,-1500 # 10a24 <K>
    1a60:	00000593          	li	a1,0
    1a64:	588000ef          	jal	ra,1fec <memset>
    1a68:	02042683          	lw	a3,32(s0)
    1a6c:	06842603          	lw	a2,104(s0)
    1a70:	02442703          	lw	a4,36(s0)
    1a74:	00969793          	slli	a5,a3,0x9
    1a78:	00361613          	slli	a2,a2,0x3
    1a7c:	00c7e7b3          	or	a5,a5,a2
    1a80:	01079613          	slli	a2,a5,0x10
    1a84:	0176d693          	srli	a3,a3,0x17
    1a88:	00971713          	slli	a4,a4,0x9
    1a8c:	01065613          	srli	a2,a2,0x10
    1a90:	00e6e733          	or	a4,a3,a4
    1a94:	00865613          	srli	a2,a2,0x8
    1a98:	00879693          	slli	a3,a5,0x8
    1a9c:	00875513          	srli	a0,a4,0x8
    1aa0:	00c6e6b3          	or	a3,a3,a2
    1aa4:	01875893          	srli	a7,a4,0x18
    1aa8:	01075813          	srli	a6,a4,0x10
    1aac:	0187d593          	srli	a1,a5,0x18
    1ab0:	0107d793          	srli	a5,a5,0x10
    1ab4:	07140023          	sb	a7,96(s0)
    1ab8:	070400a3          	sb	a6,97(s0)
    1abc:	06a40123          	sb	a0,98(s0)
    1ac0:	06e401a3          	sb	a4,99(s0)
    1ac4:	06b40223          	sb	a1,100(s0)
    1ac8:	06f402a3          	sb	a5,101(s0)
    1acc:	06d41323          	sh	a3,102(s0)
    1ad0:	00098613          	mv	a2,s3
    1ad4:	000a0593          	mv	a1,s4
    1ad8:	00040513          	mv	a0,s0
    1adc:	f50fe0ef          	jal	ra,22c <_nettle_sha256_compress>
    1ae0:	00040613          	mv	a2,s0
    1ae4:	00090593          	mv	a1,s2
    1ae8:	00048513          	mv	a0,s1
    1aec:	ea8fe0ef          	jal	ra,194 <_nettle_write_be32>
    1af0:	01c12083          	lw	ra,28(sp)
    1af4:	01812403          	lw	s0,24(sp)
    1af8:	01412483          	lw	s1,20(sp)
    1afc:	01012903          	lw	s2,16(sp)
    1b00:	00c12983          	lw	s3,12(sp)
    1b04:	00812a03          	lw	s4,8(sp)
    1b08:	02010113          	addi	sp,sp,32
    1b0c:	00008067          	ret
    1b10:	04000613          	li	a2,64
    1b14:	40f60633          	sub	a2,a2,a5
    1b18:	00000593          	li	a1,0
    1b1c:	000119b7          	lui	s3,0x11
    1b20:	4cc000ef          	jal	ra,1fec <memset>
    1b24:	a2498993          	addi	s3,s3,-1500 # 10a24 <K>
    1b28:	00098613          	mv	a2,s3
    1b2c:	00040513          	mv	a0,s0
    1b30:	000a0593          	mv	a1,s4
    1b34:	ef8fe0ef          	jal	ra,22c <_nettle_sha256_compress>
    1b38:	000a0513          	mv	a0,s4
    1b3c:	03800613          	li	a2,56
    1b40:	f21ff06f          	j	1a60 <sha256_write_digest+0x68>
    1b44:	000116b7          	lui	a3,0x11
    1b48:	00011637          	lui	a2,0x11
    1b4c:	00011537          	lui	a0,0x11
    1b50:	f3068693          	addi	a3,a3,-208 # 10f30 <__clz_tab+0x14c>
    1b54:	b2460613          	addi	a2,a2,-1244 # 10b24 <__func__.0>
    1b58:	16600593          	li	a1,358
    1b5c:	f0450513          	addi	a0,a0,-252 # 10f04 <__clz_tab+0x120>
    1b60:	22c000ef          	jal	ra,1d8c <__assert_func>
    1b64:	000116b7          	lui	a3,0x11
    1b68:	00011637          	lui	a2,0x11
    1b6c:	00011537          	lui	a0,0x11
    1b70:	ee468693          	addi	a3,a3,-284 # 10ee4 <__clz_tab+0x100>
    1b74:	b2460613          	addi	a2,a2,-1244 # 10b24 <__func__.0>
    1b78:	16400593          	li	a1,356
    1b7c:	f0450513          	addi	a0,a0,-252 # 10f04 <__clz_tab+0x120>
    1b80:	20c000ef          	jal	ra,1d8c <__assert_func>

00001b84 <sha256_digest>:
    1b84:	ff010113          	addi	sp,sp,-16
    1b88:	00112623          	sw	ra,12(sp)
    1b8c:	00812423          	sw	s0,8(sp)
    1b90:	00050413          	mv	s0,a0
    1b94:	e65ff0ef          	jal	ra,19f8 <sha256_write_digest>
    1b98:	000115b7          	lui	a1,0x11
    1b9c:	00040513          	mv	a0,s0
    1ba0:	02000613          	li	a2,32
    1ba4:	a0458593          	addi	a1,a1,-1532 # 10a04 <H0.1>
    1ba8:	2c8000ef          	jal	ra,1e70 <memcpy>
    1bac:	00000793          	li	a5,0
    1bb0:	00000813          	li	a6,0
    1bb4:	00c12083          	lw	ra,12(sp)
    1bb8:	02f42023          	sw	a5,32(s0)
    1bbc:	03042223          	sw	a6,36(s0)
    1bc0:	06042423          	sw	zero,104(s0)
    1bc4:	00812403          	lw	s0,8(sp)
    1bc8:	01010113          	addi	sp,sp,16
    1bcc:	00008067          	ret

00001bd0 <benchmark_body>:
    1bd0:	12a05a63          	blez	a0,1d04 <benchmark_body+0x134>
    1bd4:	000117b7          	lui	a5,0x11
    1bd8:	f5010113          	addi	sp,sp,-176
    1bdc:	a0478793          	addi	a5,a5,-1532 # 10a04 <H0.1>
    1be0:	09412c23          	sw	s4,152(sp)
    1be4:	09512a23          	sw	s5,148(sp)
    1be8:	09612823          	sw	s6,144(sp)
    1bec:	09712623          	sw	s7,140(sp)
    1bf0:	09812423          	sw	s8,136(sp)
    1bf4:	09912223          	sw	s9,132(sp)
    1bf8:	09a12023          	sw	s10,128(sp)
    1bfc:	07b12e23          	sw	s11,124(sp)
    1c00:	0047ad03          	lw	s10,4(a5)
    1c04:	0007ad83          	lw	s11,0(a5)
    1c08:	0087ac83          	lw	s9,8(a5)
    1c0c:	00c7ac03          	lw	s8,12(a5)
    1c10:	0107ab83          	lw	s7,16(a5)
    1c14:	0147ab03          	lw	s6,20(a5)
    1c18:	0187aa83          	lw	s5,24(a5)
    1c1c:	01c7aa03          	lw	s4,28(a5)
    1c20:	0b212023          	sw	s2,160(sp)
    1c24:	00011937          	lui	s2,0x11
    1c28:	0a812423          	sw	s0,168(sp)
    1c2c:	0a912223          	sw	s1,164(sp)
    1c30:	09312e23          	sw	s3,156(sp)
    1c34:	0a112623          	sw	ra,172(sp)
    1c38:	00050493          	mv	s1,a0
    1c3c:	00000413          	li	s0,0
    1c40:	0a490993          	addi	s3,s2,164 # 110a4 <buffer>
    1c44:	000107b7          	lui	a5,0x10
    1c48:	00078613          	mv	a2,a5
    1c4c:	03800593          	li	a1,56
    1c50:	00010513          	mv	a0,sp
    1c54:	00000793          	li	a5,0
    1c58:	00000813          	li	a6,0
    1c5c:	0009a023          	sw	zero,0(s3)
    1c60:	0009a223          	sw	zero,4(s3)
    1c64:	0009a423          	sw	zero,8(s3)
    1c68:	0009a623          	sw	zero,12(s3)
    1c6c:	0009a823          	sw	zero,16(s3)
    1c70:	0009aa23          	sw	zero,20(s3)
    1c74:	0009ac23          	sw	zero,24(s3)
    1c78:	0009ae23          	sw	zero,28(s3)
    1c7c:	01b12023          	sw	s11,0(sp)
    1c80:	01a12223          	sw	s10,4(sp)
    1c84:	01912423          	sw	s9,8(sp)
    1c88:	01812623          	sw	s8,12(sp)
    1c8c:	01712823          	sw	s7,16(sp)
    1c90:	01612a23          	sw	s6,20(sp)
    1c94:	01512c23          	sw	s5,24(sp)
    1c98:	01412e23          	sw	s4,28(sp)
    1c9c:	02f12023          	sw	a5,32(sp)
    1ca0:	03012223          	sw	a6,36(sp)
    1ca4:	06012423          	sw	zero,104(sp)
    1ca8:	c11ff0ef          	jal	ra,18b8 <sha256_update>
    1cac:	00140413          	addi	s0,s0,1
    1cb0:	0a490613          	addi	a2,s2,164
    1cb4:	02000593          	li	a1,32
    1cb8:	00010513          	mv	a0,sp
    1cbc:	d3dff0ef          	jal	ra,19f8 <sha256_write_digest>
    1cc0:	f88492e3          	bne	s1,s0,1c44 <benchmark_body+0x74>
    1cc4:	0ac12083          	lw	ra,172(sp)
    1cc8:	0a812403          	lw	s0,168(sp)
    1ccc:	0a412483          	lw	s1,164(sp)
    1cd0:	0a012903          	lw	s2,160(sp)
    1cd4:	09c12983          	lw	s3,156(sp)
    1cd8:	09812a03          	lw	s4,152(sp)
    1cdc:	09412a83          	lw	s5,148(sp)
    1ce0:	09012b03          	lw	s6,144(sp)
    1ce4:	08c12b83          	lw	s7,140(sp)
    1ce8:	08812c03          	lw	s8,136(sp)
    1cec:	08412c83          	lw	s9,132(sp)
    1cf0:	08012d03          	lw	s10,128(sp)
    1cf4:	07c12d83          	lw	s11,124(sp)
    1cf8:	00000513          	li	a0,0
    1cfc:	0b010113          	addi	sp,sp,176
    1d00:	00008067          	ret
    1d04:	00000513          	li	a0,0
    1d08:	00008067          	ret

00001d0c <verify_benchmark>:
    1d0c:	000105b7          	lui	a1,0x10
    1d10:	00058593          	mv	a1,a1
    1d14:	000116b7          	lui	a3,0x11
    1d18:	03858713          	addi	a4,a1,56 # 10038 <hash>
    1d1c:	0a468693          	addi	a3,a3,164 # 110a4 <buffer>
    1d20:	04058593          	addi	a1,a1,64
    1d24:	00100513          	li	a0,1
    1d28:	00074783          	lbu	a5,0(a4)
    1d2c:	0006c603          	lbu	a2,0(a3)
    1d30:	00170713          	addi	a4,a4,1
    1d34:	00168693          	addi	a3,a3,1
    1d38:	40c787b3          	sub	a5,a5,a2
    1d3c:	0017b793          	seqz	a5,a5
    1d40:	40f007b3          	neg	a5,a5
    1d44:	00f57533          	and	a0,a0,a5
    1d48:	feb710e3          	bne	a4,a1,1d28 <verify_benchmark+0x1c>
    1d4c:	00008067          	ret

00001d50 <initialise_benchmark>:
    1d50:	00008067          	ret

00001d54 <warm_caches>:
    1d54:	ff010113          	addi	sp,sp,-16
    1d58:	00112623          	sw	ra,12(sp)
    1d5c:	e75ff0ef          	jal	ra,1bd0 <benchmark_body>
    1d60:	00c12083          	lw	ra,12(sp)
    1d64:	01010113          	addi	sp,sp,16
    1d68:	00008067          	ret

00001d6c <benchmark>:
    1d6c:	0000a537          	lui	a0,0xa
    1d70:	ff010113          	addi	sp,sp,-16
    1d74:	b1450513          	addi	a0,a0,-1260 # 9b14 <main+0x24f4>
    1d78:	00112623          	sw	ra,12(sp)
    1d7c:	e55ff0ef          	jal	ra,1bd0 <benchmark_body>
    1d80:	00c12083          	lw	ra,12(sp)
    1d84:	01010113          	addi	sp,sp,16
    1d88:	00008067          	ret

00001d8c <__assert_func>:
    1d8c:	ff010113          	addi	sp,sp,-16
    1d90:	00112623          	sw	ra,12(sp)
    1d94:	00050893          	mv	a7,a0
    1d98:	00058713          	mv	a4,a1
    1d9c:	00060813          	mv	a6,a2
    1da0:	00068613          	mv	a2,a3
    1da4:	000117b7          	lui	a5,0x11
    1da8:	9f47a783          	lw	a5,-1548(a5) # 109f4 <_impure_ptr>
    1dac:	00c7a503          	lw	a0,12(a5)
    1db0:	02080063          	beqz	a6,1dd0 <__assert_func+0x44>
    1db4:	000117b7          	lui	a5,0x11
    1db8:	f5878793          	addi	a5,a5,-168 # 10f58 <__clz_tab+0x174>
    1dbc:	00088693          	mv	a3,a7
    1dc0:	000115b7          	lui	a1,0x11
    1dc4:	f6858593          	addi	a1,a1,-152 # 10f68 <__clz_tab+0x184>
    1dc8:	060000ef          	jal	ra,1e28 <fiprintf>
    1dcc:	5f8010ef          	jal	ra,33c4 <abort>
    1dd0:	00011837          	lui	a6,0x11
    1dd4:	f6480793          	addi	a5,a6,-156 # 10f64 <__clz_tab+0x180>
    1dd8:	f6480813          	addi	a6,a6,-156
    1ddc:	fe1ff06f          	j	1dbc <__assert_func+0x30>

00001de0 <__assert>:
    1de0:	ff010113          	addi	sp,sp,-16
    1de4:	00112623          	sw	ra,12(sp)
    1de8:	00060693          	mv	a3,a2
    1dec:	00000613          	li	a2,0
    1df0:	f9dff0ef          	jal	ra,1d8c <__assert_func>

00001df4 <_fiprintf_r>:
    1df4:	fc010113          	addi	sp,sp,-64
    1df8:	00112e23          	sw	ra,28(sp)
    1dfc:	02d12623          	sw	a3,44(sp)
    1e00:	02e12823          	sw	a4,48(sp)
    1e04:	02f12a23          	sw	a5,52(sp)
    1e08:	03012c23          	sw	a6,56(sp)
    1e0c:	03112e23          	sw	a7,60(sp)
    1e10:	02c10693          	addi	a3,sp,44
    1e14:	00d12623          	sw	a3,12(sp)
    1e18:	3a8000ef          	jal	ra,21c0 <_vfiprintf_r>
    1e1c:	01c12083          	lw	ra,28(sp)
    1e20:	04010113          	addi	sp,sp,64
    1e24:	00008067          	ret

00001e28 <fiprintf>:
    1e28:	fc010113          	addi	sp,sp,-64
    1e2c:	00112e23          	sw	ra,28(sp)
    1e30:	02c12423          	sw	a2,40(sp)
    1e34:	02d12623          	sw	a3,44(sp)
    1e38:	02e12823          	sw	a4,48(sp)
    1e3c:	02f12a23          	sw	a5,52(sp)
    1e40:	03012c23          	sw	a6,56(sp)
    1e44:	03112e23          	sw	a7,60(sp)
    1e48:	02810693          	addi	a3,sp,40
    1e4c:	00d12623          	sw	a3,12(sp)
    1e50:	00058613          	mv	a2,a1
    1e54:	00050593          	mv	a1,a0
    1e58:	000117b7          	lui	a5,0x11
    1e5c:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    1e60:	360000ef          	jal	ra,21c0 <_vfiprintf_r>
    1e64:	01c12083          	lw	ra,28(sp)
    1e68:	04010113          	addi	sp,sp,64
    1e6c:	00008067          	ret

00001e70 <memcpy>:
    1e70:	00c50333          	add	t1,a0,a2
    1e74:	00b547b3          	xor	a5,a0,a1
    1e78:	0037f793          	andi	a5,a5,3
    1e7c:	06079663          	bnez	a5,1ee8 <memcpy+0x78>
    1e80:	00300793          	li	a5,3
    1e84:	06c7f263          	bgeu	a5,a2,1ee8 <memcpy+0x78>
    1e88:	00357793          	andi	a5,a0,3
    1e8c:	00050713          	mv	a4,a0
    1e90:	08079863          	bnez	a5,1f20 <memcpy+0xb0>
    1e94:	ffc37813          	andi	a6,t1,-4
    1e98:	00080893          	mv	a7,a6
    1e9c:	40e806b3          	sub	a3,a6,a4
    1ea0:	02000793          	li	a5,32
    1ea4:	08d7cc63          	blt	a5,a3,1f3c <memcpy+0xcc>
    1ea8:	00058693          	mv	a3,a1
    1eac:	00070793          	mv	a5,a4
    1eb0:	03077863          	bgeu	a4,a6,1ee0 <memcpy+0x70>
    1eb4:	0006a603          	lw	a2,0(a3)
    1eb8:	00478793          	addi	a5,a5,4
    1ebc:	00468693          	addi	a3,a3,4
    1ec0:	fec7ae23          	sw	a2,-4(a5)
    1ec4:	ff17e8e3          	bltu	a5,a7,1eb4 <memcpy+0x44>
    1ec8:	fff80793          	addi	a5,a6,-1
    1ecc:	40e787b3          	sub	a5,a5,a4
    1ed0:	ffc7f793          	andi	a5,a5,-4
    1ed4:	00478793          	addi	a5,a5,4
    1ed8:	00f70733          	add	a4,a4,a5
    1edc:	00f585b3          	add	a1,a1,a5
    1ee0:	00676863          	bltu	a4,t1,1ef0 <memcpy+0x80>
    1ee4:	00008067          	ret
    1ee8:	10657063          	bgeu	a0,t1,1fe8 <memcpy+0x178>
    1eec:	00050713          	mv	a4,a0
    1ef0:	0005c783          	lbu	a5,0(a1)
    1ef4:	00170713          	addi	a4,a4,1
    1ef8:	00158593          	addi	a1,a1,1
    1efc:	fef70fa3          	sb	a5,-1(a4)
    1f00:	fee318e3          	bne	t1,a4,1ef0 <memcpy+0x80>
    1f04:	00008067          	ret
    1f08:	0005c783          	lbu	a5,0(a1)
    1f0c:	00170713          	addi	a4,a4,1
    1f10:	00158593          	addi	a1,a1,1
    1f14:	fef70fa3          	sb	a5,-1(a4)
    1f18:	fee318e3          	bne	t1,a4,1f08 <memcpy+0x98>
    1f1c:	0c00006f          	j	1fdc <memcpy+0x16c>
    1f20:	0005c783          	lbu	a5,0(a1)
    1f24:	00170713          	addi	a4,a4,1
    1f28:	00158593          	addi	a1,a1,1
    1f2c:	fef70fa3          	sb	a5,-1(a4)
    1f30:	00377793          	andi	a5,a4,3
    1f34:	fe0796e3          	bnez	a5,1f20 <memcpy+0xb0>
    1f38:	f5dff06f          	j	1e94 <memcpy+0x24>
    1f3c:	ff010113          	addi	sp,sp,-16
    1f40:	00812623          	sw	s0,12(sp)
    1f44:	02000413          	li	s0,32
    1f48:	0005a383          	lw	t2,0(a1)
    1f4c:	0045a283          	lw	t0,4(a1)
    1f50:	0085af83          	lw	t6,8(a1)
    1f54:	00c5af03          	lw	t5,12(a1)
    1f58:	0105ae83          	lw	t4,16(a1)
    1f5c:	0145ae03          	lw	t3,20(a1)
    1f60:	0185a603          	lw	a2,24(a1)
    1f64:	01c5a683          	lw	a3,28(a1)
    1f68:	02458593          	addi	a1,a1,36
    1f6c:	ffc5a783          	lw	a5,-4(a1)
    1f70:	00772023          	sw	t2,0(a4)
    1f74:	00572223          	sw	t0,4(a4)
    1f78:	01f72423          	sw	t6,8(a4)
    1f7c:	01e72623          	sw	t5,12(a4)
    1f80:	01d72823          	sw	t4,16(a4)
    1f84:	01c72a23          	sw	t3,20(a4)
    1f88:	00c72c23          	sw	a2,24(a4)
    1f8c:	00d72e23          	sw	a3,28(a4)
    1f90:	02470713          	addi	a4,a4,36
    1f94:	fef72e23          	sw	a5,-4(a4)
    1f98:	40e807b3          	sub	a5,a6,a4
    1f9c:	faf446e3          	blt	s0,a5,1f48 <memcpy+0xd8>
    1fa0:	00058693          	mv	a3,a1
    1fa4:	00070793          	mv	a5,a4
    1fa8:	03177863          	bgeu	a4,a7,1fd8 <memcpy+0x168>
    1fac:	0006a603          	lw	a2,0(a3)
    1fb0:	00478793          	addi	a5,a5,4
    1fb4:	00468693          	addi	a3,a3,4
    1fb8:	fec7ae23          	sw	a2,-4(a5)
    1fbc:	ff17e8e3          	bltu	a5,a7,1fac <memcpy+0x13c>
    1fc0:	fff80793          	addi	a5,a6,-1
    1fc4:	40e787b3          	sub	a5,a5,a4
    1fc8:	ffc7f793          	andi	a5,a5,-4
    1fcc:	00478793          	addi	a5,a5,4
    1fd0:	00f70733          	add	a4,a4,a5
    1fd4:	00f585b3          	add	a1,a1,a5
    1fd8:	f26768e3          	bltu	a4,t1,1f08 <memcpy+0x98>
    1fdc:	00c12403          	lw	s0,12(sp)
    1fe0:	01010113          	addi	sp,sp,16
    1fe4:	00008067          	ret
    1fe8:	00008067          	ret

00001fec <memset>:
    1fec:	00f00313          	li	t1,15
    1ff0:	00050713          	mv	a4,a0
    1ff4:	02c37e63          	bgeu	t1,a2,2030 <memset+0x44>
    1ff8:	00f77793          	andi	a5,a4,15
    1ffc:	0a079063          	bnez	a5,209c <memset+0xb0>
    2000:	08059263          	bnez	a1,2084 <memset+0x98>
    2004:	ff067693          	andi	a3,a2,-16
    2008:	00f67613          	andi	a2,a2,15
    200c:	00e686b3          	add	a3,a3,a4
    2010:	00b72023          	sw	a1,0(a4)
    2014:	00b72223          	sw	a1,4(a4)
    2018:	00b72423          	sw	a1,8(a4)
    201c:	00b72623          	sw	a1,12(a4)
    2020:	01070713          	addi	a4,a4,16
    2024:	fed766e3          	bltu	a4,a3,2010 <memset+0x24>
    2028:	00061463          	bnez	a2,2030 <memset+0x44>
    202c:	00008067          	ret
    2030:	40c306b3          	sub	a3,t1,a2
    2034:	00269693          	slli	a3,a3,0x2
    2038:	00000297          	auipc	t0,0x0
    203c:	005686b3          	add	a3,a3,t0
    2040:	00c68067          	jr	12(a3)
    2044:	00b70723          	sb	a1,14(a4)
    2048:	00b706a3          	sb	a1,13(a4)
    204c:	00b70623          	sb	a1,12(a4)
    2050:	00b705a3          	sb	a1,11(a4)
    2054:	00b70523          	sb	a1,10(a4)
    2058:	00b704a3          	sb	a1,9(a4)
    205c:	00b70423          	sb	a1,8(a4)
    2060:	00b703a3          	sb	a1,7(a4)
    2064:	00b70323          	sb	a1,6(a4)
    2068:	00b702a3          	sb	a1,5(a4)
    206c:	00b70223          	sb	a1,4(a4)
    2070:	00b701a3          	sb	a1,3(a4)
    2074:	00b70123          	sb	a1,2(a4)
    2078:	00b700a3          	sb	a1,1(a4)
    207c:	00b70023          	sb	a1,0(a4)
    2080:	00008067          	ret
    2084:	0ff5f593          	zext.b	a1,a1
    2088:	00859693          	slli	a3,a1,0x8
    208c:	00d5e5b3          	or	a1,a1,a3
    2090:	01059693          	slli	a3,a1,0x10
    2094:	00d5e5b3          	or	a1,a1,a3
    2098:	f6dff06f          	j	2004 <memset+0x18>
    209c:	00279693          	slli	a3,a5,0x2
    20a0:	00000297          	auipc	t0,0x0
    20a4:	005686b3          	add	a3,a3,t0
    20a8:	00008293          	mv	t0,ra
    20ac:	fa0680e7          	jalr	-96(a3)
    20b0:	00028093          	mv	ra,t0
    20b4:	ff078793          	addi	a5,a5,-16
    20b8:	40f70733          	sub	a4,a4,a5
    20bc:	00f60633          	add	a2,a2,a5
    20c0:	f6c378e3          	bgeu	t1,a2,2030 <memset+0x44>
    20c4:	f3dff06f          	j	2000 <memset+0x14>

000020c8 <__sprint_r>:
    20c8:	fd010113          	addi	sp,sp,-48
    20cc:	02112623          	sw	ra,44(sp)
    20d0:	02812423          	sw	s0,40(sp)
    20d4:	02912223          	sw	s1,36(sp)
    20d8:	03212023          	sw	s2,32(sp)
    20dc:	01312e23          	sw	s3,28(sp)
    20e0:	01412c23          	sw	s4,24(sp)
    20e4:	01512a23          	sw	s5,20(sp)
    20e8:	01612823          	sw	s6,16(sp)
    20ec:	01712623          	sw	s7,12(sp)
    20f0:	01812423          	sw	s8,8(sp)
    20f4:	00060b13          	mv	s6,a2
    20f8:	00862783          	lw	a5,8(a2)
    20fc:	0a078e63          	beqz	a5,21b8 <__sprint_r+0xf0>
    2100:	00050993          	mv	s3,a0
    2104:	00058913          	mv	s2,a1
    2108:	0645a703          	lw	a4,100(a1)
    210c:	000027b7          	lui	a5,0x2
    2110:	00e7f7b3          	and	a5,a5,a4
    2114:	06078063          	beqz	a5,2174 <__sprint_r+0xac>
    2118:	00062b83          	lw	s7,0(a2)
    211c:	fff00a93          	li	s5,-1
    2120:	000ba403          	lw	s0,0(s7)
    2124:	004bac03          	lw	s8,4(s7)
    2128:	002c5a13          	srli	s4,s8,0x2
    212c:	03405463          	blez	s4,2154 <__sprint_r+0x8c>
    2130:	00000493          	li	s1,0
    2134:	00090613          	mv	a2,s2
    2138:	00042583          	lw	a1,0(s0)
    213c:	00098513          	mv	a0,s3
    2140:	265010ef          	jal	ra,3ba4 <_fputwc_r>
    2144:	03550c63          	beq	a0,s5,217c <__sprint_r+0xb4>
    2148:	00148493          	addi	s1,s1,1
    214c:	00440413          	addi	s0,s0,4
    2150:	fe9a12e3          	bne	s4,s1,2134 <__sprint_r+0x6c>
    2154:	ffcc7c13          	andi	s8,s8,-4
    2158:	008b2783          	lw	a5,8(s6)
    215c:	418787b3          	sub	a5,a5,s8
    2160:	00fb2423          	sw	a5,8(s6)
    2164:	008b8b93          	addi	s7,s7,8
    2168:	fa079ce3          	bnez	a5,2120 <__sprint_r+0x58>
    216c:	00000513          	li	a0,0
    2170:	0100006f          	j	2180 <__sprint_r+0xb8>
    2174:	70d010ef          	jal	ra,4080 <__sfvwrite_r>
    2178:	0080006f          	j	2180 <__sprint_r+0xb8>
    217c:	fff00513          	li	a0,-1
    2180:	000b2423          	sw	zero,8(s6)
    2184:	000b2223          	sw	zero,4(s6)
    2188:	02c12083          	lw	ra,44(sp)
    218c:	02812403          	lw	s0,40(sp)
    2190:	02412483          	lw	s1,36(sp)
    2194:	02012903          	lw	s2,32(sp)
    2198:	01c12983          	lw	s3,28(sp)
    219c:	01812a03          	lw	s4,24(sp)
    21a0:	01412a83          	lw	s5,20(sp)
    21a4:	01012b03          	lw	s6,16(sp)
    21a8:	00c12b83          	lw	s7,12(sp)
    21ac:	00812c03          	lw	s8,8(sp)
    21b0:	03010113          	addi	sp,sp,48
    21b4:	00008067          	ret
    21b8:	00000513          	li	a0,0
    21bc:	fc9ff06f          	j	2184 <__sprint_r+0xbc>

000021c0 <_vfiprintf_r>:
    21c0:	ed010113          	addi	sp,sp,-304
    21c4:	12112623          	sw	ra,300(sp)
    21c8:	12812423          	sw	s0,296(sp)
    21cc:	12912223          	sw	s1,292(sp)
    21d0:	13212023          	sw	s2,288(sp)
    21d4:	11312e23          	sw	s3,284(sp)
    21d8:	11412c23          	sw	s4,280(sp)
    21dc:	11512a23          	sw	s5,276(sp)
    21e0:	11612823          	sw	s6,272(sp)
    21e4:	11712623          	sw	s7,268(sp)
    21e8:	11812423          	sw	s8,264(sp)
    21ec:	11912223          	sw	s9,260(sp)
    21f0:	11a12023          	sw	s10,256(sp)
    21f4:	0fb12e23          	sw	s11,252(sp)
    21f8:	00a12623          	sw	a0,12(sp)
    21fc:	00b12223          	sw	a1,4(sp)
    2200:	00060d93          	mv	s11,a2
    2204:	00d12823          	sw	a3,16(sp)
    2208:	00050663          	beqz	a0,2214 <_vfiprintf_r+0x54>
    220c:	03852783          	lw	a5,56(a0)
    2210:	0a078c63          	beqz	a5,22c8 <_vfiprintf_r+0x108>
    2214:	00412603          	lw	a2,4(sp)
    2218:	00c61703          	lh	a4,12(a2)
    221c:	00d75793          	srli	a5,a4,0xd
    2220:	0017f793          	andi	a5,a5,1
    2224:	02079263          	bnez	a5,2248 <_vfiprintf_r+0x88>
    2228:	06462783          	lw	a5,100(a2)
    222c:	000026b7          	lui	a3,0x2
    2230:	00d76733          	or	a4,a4,a3
    2234:	00e61623          	sh	a4,12(a2)
    2238:	ffffe737          	lui	a4,0xffffe
    223c:	fff70713          	addi	a4,a4,-1 # ffffdfff <heap_end.0+0xfffecef3>
    2240:	00e7f7b3          	and	a5,a5,a4
    2244:	06f62223          	sw	a5,100(a2)
    2248:	00412703          	lw	a4,4(sp)
    224c:	00c75783          	lhu	a5,12(a4)
    2250:	0087f793          	andi	a5,a5,8
    2254:	00078663          	beqz	a5,2260 <_vfiprintf_r+0xa0>
    2258:	01072783          	lw	a5,16(a4)
    225c:	00079a63          	bnez	a5,2270 <_vfiprintf_r+0xb0>
    2260:	00412583          	lw	a1,4(sp)
    2264:	00c12503          	lw	a0,12(sp)
    2268:	014010ef          	jal	ra,327c <__swsetup_r>
    226c:	680518e3          	bnez	a0,30fc <_vfiprintf_r+0xf3c>
    2270:	00412783          	lw	a5,4(sp)
    2274:	00c7d783          	lhu	a5,12(a5) # 200c <memset+0x20>
    2278:	01a7f793          	andi	a5,a5,26
    227c:	00a00713          	li	a4,10
    2280:	04e78863          	beq	a5,a4,22d0 <_vfiprintf_r+0x110>
    2284:	0a010413          	addi	s0,sp,160
    2288:	0e812023          	sw	s0,224(sp)
    228c:	0e012423          	sw	zero,232(sp)
    2290:	0e012223          	sw	zero,228(sp)
    2294:	02012023          	sw	zero,32(sp)
    2298:	02012223          	sw	zero,36(sp)
    229c:	02012623          	sw	zero,44(sp)
    22a0:	02012423          	sw	zero,40(sp)
    22a4:	00012423          	sw	zero,8(sp)
    22a8:	000117b7          	lui	a5,0x11
    22ac:	b5478793          	addi	a5,a5,-1196 # 10b54 <nettle_sha256+0x1c>
    22b0:	00f12c23          	sw	a5,24(sp)
    22b4:	000117b7          	lui	a5,0x11
    22b8:	cc078793          	addi	a5,a5,-832 # 10cc0 <blanks.1>
    22bc:	00f12e23          	sw	a5,28(sp)
    22c0:	01078d13          	addi	s10,a5,16
    22c4:	1b90006f          	j	2c7c <_vfiprintf_r+0xabc>
    22c8:	504010ef          	jal	ra,37cc <__sinit>
    22cc:	f49ff06f          	j	2214 <_vfiprintf_r+0x54>
    22d0:	00412783          	lw	a5,4(sp)
    22d4:	00e79783          	lh	a5,14(a5)
    22d8:	fa07c6e3          	bltz	a5,2284 <_vfiprintf_r+0xc4>
    22dc:	01012683          	lw	a3,16(sp)
    22e0:	000d8613          	mv	a2,s11
    22e4:	00412583          	lw	a1,4(sp)
    22e8:	00c12503          	lw	a0,12(sp)
    22ec:	6d1000ef          	jal	ra,31bc <__sbprintf>
    22f0:	00a12423          	sw	a0,8(sp)
    22f4:	5a90006f          	j	309c <_vfiprintf_r+0xedc>
    22f8:	41b48933          	sub	s2,s1,s11
    22fc:	1fb480e3          	beq	s1,s11,2cdc <_vfiprintf_r+0xb1c>
    2300:	1a50006f          	j	2ca4 <_vfiprintf_r+0xae4>
    2304:	0e010613          	addi	a2,sp,224
    2308:	00412583          	lw	a1,4(sp)
    230c:	00c12503          	lw	a0,12(sp)
    2310:	db9ff0ef          	jal	ra,20c8 <__sprint_r>
    2314:	56051ce3          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2318:	0a010413          	addi	s0,sp,160
    231c:	1b50006f          	j	2cd0 <_vfiprintf_r+0xb10>
    2320:	00c12b03          	lw	s6,12(sp)
    2324:	000b0513          	mv	a0,s6
    2328:	354020ef          	jal	ra,467c <_localeconv_r>
    232c:	00452783          	lw	a5,4(a0)
    2330:	02f12423          	sw	a5,40(sp)
    2334:	00078513          	mv	a0,a5
    2338:	419030ef          	jal	ra,5f50 <strlen>
    233c:	00050a93          	mv	s5,a0
    2340:	02a12623          	sw	a0,44(sp)
    2344:	000b0513          	mv	a0,s6
    2348:	334020ef          	jal	ra,467c <_localeconv_r>
    234c:	00852783          	lw	a5,8(a0)
    2350:	02f12223          	sw	a5,36(sp)
    2354:	040a8863          	beqz	s5,23a4 <_vfiprintf_r+0x1e4>
    2358:	04078663          	beqz	a5,23a4 <_vfiprintf_r+0x1e4>
    235c:	0007c783          	lbu	a5,0(a5)
    2360:	04078263          	beqz	a5,23a4 <_vfiprintf_r+0x1e4>
    2364:	40096913          	ori	s2,s2,1024
    2368:	03c0006f          	j	23a4 <_vfiprintf_r+0x1e4>
    236c:	0ef14783          	lbu	a5,239(sp)
    2370:	02079a63          	bnez	a5,23a4 <_vfiprintf_r+0x1e4>
    2374:	02000793          	li	a5,32
    2378:	0ef107a3          	sb	a5,239(sp)
    237c:	0280006f          	j	23a4 <_vfiprintf_r+0x1e4>
    2380:	00196913          	ori	s2,s2,1
    2384:	0200006f          	j	23a4 <_vfiprintf_r+0x1e4>
    2388:	01012703          	lw	a4,16(sp)
    238c:	00470793          	addi	a5,a4,4
    2390:	00072c03          	lw	s8,0(a4)
    2394:	00f12823          	sw	a5,16(sp)
    2398:	000c5663          	bgez	s8,23a4 <_vfiprintf_r+0x1e4>
    239c:	41800c33          	neg	s8,s8
    23a0:	00496913          	ori	s2,s2,4
    23a4:	000d8793          	mv	a5,s11
    23a8:	00178d93          	addi	s11,a5,1
    23ac:	0007c703          	lbu	a4,0(a5)
    23b0:	05a00693          	li	a3,90
    23b4:	00000613          	li	a2,0
    23b8:	fe070793          	addi	a5,a4,-32
    23bc:	14f6ece3          	bltu	a3,a5,2d14 <_vfiprintf_r+0xb54>
    23c0:	00279793          	slli	a5,a5,0x2
    23c4:	01812583          	lw	a1,24(sp)
    23c8:	00b787b3          	add	a5,a5,a1
    23cc:	0007a783          	lw	a5,0(a5)
    23d0:	00078067          	jr	a5
    23d4:	02b00793          	li	a5,43
    23d8:	0ef107a3          	sb	a5,239(sp)
    23dc:	fc9ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    23e0:	001d8593          	addi	a1,s11,1
    23e4:	000dc703          	lbu	a4,0(s11)
    23e8:	03370e63          	beq	a4,s3,2424 <_vfiprintf_r+0x264>
    23ec:	fd070513          	addi	a0,a4,-48
    23f0:	00060c93          	mv	s9,a2
    23f4:	02a4e263          	bltu	s1,a0,2418 <_vfiprintf_r+0x258>
    23f8:	002c9793          	slli	a5,s9,0x2
    23fc:	019787b3          	add	a5,a5,s9
    2400:	00179793          	slli	a5,a5,0x1
    2404:	00a78cb3          	add	s9,a5,a0
    2408:	00158593          	addi	a1,a1,1
    240c:	fff5c703          	lbu	a4,-1(a1)
    2410:	fd070513          	addi	a0,a4,-48
    2414:	fea4f2e3          	bgeu	s1,a0,23f8 <_vfiprintf_r+0x238>
    2418:	020cc863          	bltz	s9,2448 <_vfiprintf_r+0x288>
    241c:	00058d93          	mv	s11,a1
    2420:	f99ff06f          	j	23b8 <_vfiprintf_r+0x1f8>
    2424:	01012703          	lw	a4,16(sp)
    2428:	00470793          	addi	a5,a4,4
    242c:	00072c83          	lw	s9,0(a4)
    2430:	000cc863          	bltz	s9,2440 <_vfiprintf_r+0x280>
    2434:	00f12823          	sw	a5,16(sp)
    2438:	00058d93          	mv	s11,a1
    243c:	f69ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    2440:	000a0c93          	mv	s9,s4
    2444:	ff1ff06f          	j	2434 <_vfiprintf_r+0x274>
    2448:	000a0c93          	mv	s9,s4
    244c:	fd1ff06f          	j	241c <_vfiprintf_r+0x25c>
    2450:	08096913          	ori	s2,s2,128
    2454:	f51ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    2458:	00000c13          	li	s8,0
    245c:	002c1793          	slli	a5,s8,0x2
    2460:	018787b3          	add	a5,a5,s8
    2464:	00179793          	slli	a5,a5,0x1
    2468:	fd070713          	addi	a4,a4,-48
    246c:	00f70c33          	add	s8,a4,a5
    2470:	001d8d93          	addi	s11,s11,1
    2474:	fffdc703          	lbu	a4,-1(s11)
    2478:	fd070793          	addi	a5,a4,-48
    247c:	fef4f0e3          	bgeu	s1,a5,245c <_vfiprintf_r+0x29c>
    2480:	f39ff06f          	j	23b8 <_vfiprintf_r+0x1f8>
    2484:	000dc703          	lbu	a4,0(s11)
    2488:	06800793          	li	a5,104
    248c:	00f70663          	beq	a4,a5,2498 <_vfiprintf_r+0x2d8>
    2490:	04096913          	ori	s2,s2,64
    2494:	f11ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    2498:	001d8d93          	addi	s11,s11,1
    249c:	20096913          	ori	s2,s2,512
    24a0:	f05ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    24a4:	000dc703          	lbu	a4,0(s11)
    24a8:	06c00793          	li	a5,108
    24ac:	00f70663          	beq	a4,a5,24b8 <_vfiprintf_r+0x2f8>
    24b0:	01096913          	ori	s2,s2,16
    24b4:	ef1ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    24b8:	001d8d93          	addi	s11,s11,1
    24bc:	02096913          	ori	s2,s2,32
    24c0:	ee5ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    24c4:	02096913          	ori	s2,s2,32
    24c8:	eddff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    24cc:	02096913          	ori	s2,s2,32
    24d0:	ed5ff06f          	j	23a4 <_vfiprintf_r+0x1e4>
    24d4:	01012703          	lw	a4,16(sp)
    24d8:	00072783          	lw	a5,0(a4)
    24dc:	02f10e23          	sb	a5,60(sp)
    24e0:	0e0107a3          	sb	zero,239(sp)
    24e4:	00470793          	addi	a5,a4,4
    24e8:	00f12823          	sw	a5,16(sp)
    24ec:	00100a93          	li	s5,1
    24f0:	03c10493          	addi	s1,sp,60
    24f4:	fffaca13          	not	s4,s5
    24f8:	41fa5a13          	srai	s4,s4,0x1f
    24fc:	014afa33          	and	s4,s5,s4
    2500:	00000c93          	li	s9,0
    2504:	66c0006f          	j	2b70 <_vfiprintf_r+0x9b0>
    2508:	01096713          	ori	a4,s2,16
    250c:	02077793          	andi	a5,a4,32
    2510:	04078863          	beqz	a5,2560 <_vfiprintf_r+0x3a0>
    2514:	01012783          	lw	a5,16(sp)
    2518:	00778793          	addi	a5,a5,7
    251c:	ff87f793          	andi	a5,a5,-8
    2520:	00878693          	addi	a3,a5,8
    2524:	00d12823          	sw	a3,16(sp)
    2528:	0007aa03          	lw	s4,0(a5)
    252c:	0047a983          	lw	s3,4(a5)
    2530:	00100793          	li	a5,1
    2534:	1809d663          	bgez	s3,26c0 <_vfiprintf_r+0x500>
    2538:	014037b3          	snez	a5,s4
    253c:	413009b3          	neg	s3,s3
    2540:	40f989b3          	sub	s3,s3,a5
    2544:	41400a33          	neg	s4,s4
    2548:	02d00793          	li	a5,45
    254c:	0ef107a3          	sb	a5,239(sp)
    2550:	00100793          	li	a5,1
    2554:	16c0006f          	j	26c0 <_vfiprintf_r+0x500>
    2558:	00090713          	mv	a4,s2
    255c:	fb1ff06f          	j	250c <_vfiprintf_r+0x34c>
    2560:	01077793          	andi	a5,a4,16
    2564:	00078e63          	beqz	a5,2580 <_vfiprintf_r+0x3c0>
    2568:	01012783          	lw	a5,16(sp)
    256c:	0007aa03          	lw	s4,0(a5)
    2570:	41fa5993          	srai	s3,s4,0x1f
    2574:	00478793          	addi	a5,a5,4
    2578:	00f12823          	sw	a5,16(sp)
    257c:	fb5ff06f          	j	2530 <_vfiprintf_r+0x370>
    2580:	04077793          	andi	a5,a4,64
    2584:	00078e63          	beqz	a5,25a0 <_vfiprintf_r+0x3e0>
    2588:	01012783          	lw	a5,16(sp)
    258c:	00079a03          	lh	s4,0(a5)
    2590:	41fa5993          	srai	s3,s4,0x1f
    2594:	00478793          	addi	a5,a5,4
    2598:	00f12823          	sw	a5,16(sp)
    259c:	f95ff06f          	j	2530 <_vfiprintf_r+0x370>
    25a0:	20077793          	andi	a5,a4,512
    25a4:	00078e63          	beqz	a5,25c0 <_vfiprintf_r+0x400>
    25a8:	01012783          	lw	a5,16(sp)
    25ac:	00078a03          	lb	s4,0(a5)
    25b0:	41fa5993          	srai	s3,s4,0x1f
    25b4:	00478793          	addi	a5,a5,4
    25b8:	00f12823          	sw	a5,16(sp)
    25bc:	f75ff06f          	j	2530 <_vfiprintf_r+0x370>
    25c0:	01012783          	lw	a5,16(sp)
    25c4:	0007aa03          	lw	s4,0(a5)
    25c8:	41fa5993          	srai	s3,s4,0x1f
    25cc:	00478793          	addi	a5,a5,4
    25d0:	00f12823          	sw	a5,16(sp)
    25d4:	f5dff06f          	j	2530 <_vfiprintf_r+0x370>
    25d8:	02097793          	andi	a5,s2,32
    25dc:	02078463          	beqz	a5,2604 <_vfiprintf_r+0x444>
    25e0:	01012683          	lw	a3,16(sp)
    25e4:	0006a783          	lw	a5,0(a3) # 2000 <memset+0x14>
    25e8:	00812703          	lw	a4,8(sp)
    25ec:	00e7a023          	sw	a4,0(a5)
    25f0:	41f75713          	srai	a4,a4,0x1f
    25f4:	00e7a223          	sw	a4,4(a5)
    25f8:	00468793          	addi	a5,a3,4
    25fc:	00f12823          	sw	a5,16(sp)
    2600:	67c0006f          	j	2c7c <_vfiprintf_r+0xabc>
    2604:	01097793          	andi	a5,s2,16
    2608:	02078063          	beqz	a5,2628 <_vfiprintf_r+0x468>
    260c:	01012703          	lw	a4,16(sp)
    2610:	00072783          	lw	a5,0(a4)
    2614:	00812683          	lw	a3,8(sp)
    2618:	00d7a023          	sw	a3,0(a5)
    261c:	00470793          	addi	a5,a4,4
    2620:	00f12823          	sw	a5,16(sp)
    2624:	6580006f          	j	2c7c <_vfiprintf_r+0xabc>
    2628:	04097793          	andi	a5,s2,64
    262c:	02078063          	beqz	a5,264c <_vfiprintf_r+0x48c>
    2630:	01012703          	lw	a4,16(sp)
    2634:	00072783          	lw	a5,0(a4)
    2638:	00812683          	lw	a3,8(sp)
    263c:	00d79023          	sh	a3,0(a5)
    2640:	00470793          	addi	a5,a4,4
    2644:	00f12823          	sw	a5,16(sp)
    2648:	6340006f          	j	2c7c <_vfiprintf_r+0xabc>
    264c:	20097913          	andi	s2,s2,512
    2650:	02090063          	beqz	s2,2670 <_vfiprintf_r+0x4b0>
    2654:	01012703          	lw	a4,16(sp)
    2658:	00072783          	lw	a5,0(a4)
    265c:	00812683          	lw	a3,8(sp)
    2660:	00d78023          	sb	a3,0(a5)
    2664:	00470793          	addi	a5,a4,4
    2668:	00f12823          	sw	a5,16(sp)
    266c:	6100006f          	j	2c7c <_vfiprintf_r+0xabc>
    2670:	01012703          	lw	a4,16(sp)
    2674:	00072783          	lw	a5,0(a4)
    2678:	00812683          	lw	a3,8(sp)
    267c:	00d7a023          	sw	a3,0(a5)
    2680:	00470793          	addi	a5,a4,4
    2684:	00f12823          	sw	a5,16(sp)
    2688:	5f40006f          	j	2c7c <_vfiprintf_r+0xabc>
    268c:	01096913          	ori	s2,s2,16
    2690:	02097793          	andi	a5,s2,32
    2694:	06078063          	beqz	a5,26f4 <_vfiprintf_r+0x534>
    2698:	01012783          	lw	a5,16(sp)
    269c:	00778793          	addi	a5,a5,7
    26a0:	ff87f793          	andi	a5,a5,-8
    26a4:	00878713          	addi	a4,a5,8
    26a8:	00e12823          	sw	a4,16(sp)
    26ac:	0007aa03          	lw	s4,0(a5)
    26b0:	0047a983          	lw	s3,4(a5)
    26b4:	bff97713          	andi	a4,s2,-1025
    26b8:	00000793          	li	a5,0
    26bc:	0e0107a3          	sb	zero,239(sp)
    26c0:	240cc8e3          	bltz	s9,3110 <_vfiprintf_r+0xf50>
    26c4:	f7f77913          	andi	s2,a4,-129
    26c8:	013a66b3          	or	a3,s4,s3
    26cc:	2e069c63          	bnez	a3,29c4 <_vfiprintf_r+0x804>
    26d0:	220c9ce3          	bnez	s9,3108 <_vfiprintf_r+0xf48>
    26d4:	0a010493          	addi	s1,sp,160
    26d8:	46079c63          	bnez	a5,2b50 <_vfiprintf_r+0x990>
    26dc:	00177713          	andi	a4,a4,1
    26e0:	46070863          	beqz	a4,2b50 <_vfiprintf_r+0x990>
    26e4:	03000793          	li	a5,48
    26e8:	08f10fa3          	sb	a5,159(sp)
    26ec:	09f10493          	addi	s1,sp,159
    26f0:	4600006f          	j	2b50 <_vfiprintf_r+0x990>
    26f4:	01097793          	andi	a5,s2,16
    26f8:	00078e63          	beqz	a5,2714 <_vfiprintf_r+0x554>
    26fc:	01012783          	lw	a5,16(sp)
    2700:	0007aa03          	lw	s4,0(a5)
    2704:	00000993          	li	s3,0
    2708:	00478793          	addi	a5,a5,4
    270c:	00f12823          	sw	a5,16(sp)
    2710:	fa5ff06f          	j	26b4 <_vfiprintf_r+0x4f4>
    2714:	04097793          	andi	a5,s2,64
    2718:	00078e63          	beqz	a5,2734 <_vfiprintf_r+0x574>
    271c:	01012783          	lw	a5,16(sp)
    2720:	0007da03          	lhu	s4,0(a5)
    2724:	00000993          	li	s3,0
    2728:	00478793          	addi	a5,a5,4
    272c:	00f12823          	sw	a5,16(sp)
    2730:	f85ff06f          	j	26b4 <_vfiprintf_r+0x4f4>
    2734:	20097793          	andi	a5,s2,512
    2738:	00078e63          	beqz	a5,2754 <_vfiprintf_r+0x594>
    273c:	01012783          	lw	a5,16(sp)
    2740:	0007ca03          	lbu	s4,0(a5)
    2744:	00000993          	li	s3,0
    2748:	00478793          	addi	a5,a5,4
    274c:	00f12823          	sw	a5,16(sp)
    2750:	f65ff06f          	j	26b4 <_vfiprintf_r+0x4f4>
    2754:	01012783          	lw	a5,16(sp)
    2758:	0007aa03          	lw	s4,0(a5)
    275c:	00000993          	li	s3,0
    2760:	00478793          	addi	a5,a5,4
    2764:	00f12823          	sw	a5,16(sp)
    2768:	f4dff06f          	j	26b4 <_vfiprintf_r+0x4f4>
    276c:	01012683          	lw	a3,16(sp)
    2770:	0006aa03          	lw	s4,0(a3)
    2774:	00000993          	li	s3,0
    2778:	00296713          	ori	a4,s2,2
    277c:	03000793          	li	a5,48
    2780:	02f10c23          	sb	a5,56(sp)
    2784:	07800793          	li	a5,120
    2788:	02f10ca3          	sb	a5,57(sp)
    278c:	00468793          	addi	a5,a3,4
    2790:	00f12823          	sw	a5,16(sp)
    2794:	000117b7          	lui	a5,0x11
    2798:	fac78793          	addi	a5,a5,-84 # 10fac <__clz_tab+0x1c8>
    279c:	02f12023          	sw	a5,32(sp)
    27a0:	00200793          	li	a5,2
    27a4:	f19ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    27a8:	01012783          	lw	a5,16(sp)
    27ac:	00478993          	addi	s3,a5,4
    27b0:	0007a483          	lw	s1,0(a5)
    27b4:	0e0107a3          	sb	zero,239(sp)
    27b8:	02048663          	beqz	s1,27e4 <_vfiprintf_r+0x624>
    27bc:	040cc463          	bltz	s9,2804 <_vfiprintf_r+0x644>
    27c0:	000c8613          	mv	a2,s9
    27c4:	00000593          	li	a1,0
    27c8:	00048513          	mv	a0,s1
    27cc:	1a5020ef          	jal	ra,5170 <memchr>
    27d0:	54050e63          	beqz	a0,2d2c <_vfiprintf_r+0xb6c>
    27d4:	40950ab3          	sub	s5,a0,s1
    27d8:	01312823          	sw	s3,16(sp)
    27dc:	00000c93          	li	s9,0
    27e0:	3780006f          	j	2b58 <_vfiprintf_r+0x998>
    27e4:	000c8a93          	mv	s5,s9
    27e8:	00600793          	li	a5,6
    27ec:	0197f463          	bgeu	a5,s9,27f4 <_vfiprintf_r+0x634>
    27f0:	00600a93          	li	s5,6
    27f4:	01312823          	sw	s3,16(sp)
    27f8:	000114b7          	lui	s1,0x11
    27fc:	fdc48493          	addi	s1,s1,-36 # 10fdc <__clz_tab+0x1f8>
    2800:	cf5ff06f          	j	24f4 <_vfiprintf_r+0x334>
    2804:	00048513          	mv	a0,s1
    2808:	748030ef          	jal	ra,5f50 <strlen>
    280c:	00050a93          	mv	s5,a0
    2810:	01312823          	sw	s3,16(sp)
    2814:	00000c93          	li	s9,0
    2818:	3400006f          	j	2b58 <_vfiprintf_r+0x998>
    281c:	01096713          	ori	a4,s2,16
    2820:	02077793          	andi	a5,a4,32
    2824:	02078863          	beqz	a5,2854 <_vfiprintf_r+0x694>
    2828:	01012783          	lw	a5,16(sp)
    282c:	00778793          	addi	a5,a5,7
    2830:	ff87f793          	andi	a5,a5,-8
    2834:	00878693          	addi	a3,a5,8
    2838:	00d12823          	sw	a3,16(sp)
    283c:	0007aa03          	lw	s4,0(a5)
    2840:	0047a983          	lw	s3,4(a5)
    2844:	00100793          	li	a5,1
    2848:	e75ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    284c:	00090713          	mv	a4,s2
    2850:	fd1ff06f          	j	2820 <_vfiprintf_r+0x660>
    2854:	01077793          	andi	a5,a4,16
    2858:	02078063          	beqz	a5,2878 <_vfiprintf_r+0x6b8>
    285c:	01012783          	lw	a5,16(sp)
    2860:	0007aa03          	lw	s4,0(a5)
    2864:	00000993          	li	s3,0
    2868:	00478793          	addi	a5,a5,4
    286c:	00f12823          	sw	a5,16(sp)
    2870:	00100793          	li	a5,1
    2874:	e49ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    2878:	04077793          	andi	a5,a4,64
    287c:	02078063          	beqz	a5,289c <_vfiprintf_r+0x6dc>
    2880:	01012783          	lw	a5,16(sp)
    2884:	0007da03          	lhu	s4,0(a5)
    2888:	00000993          	li	s3,0
    288c:	00478793          	addi	a5,a5,4
    2890:	00f12823          	sw	a5,16(sp)
    2894:	00100793          	li	a5,1
    2898:	e25ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    289c:	20077793          	andi	a5,a4,512
    28a0:	02078063          	beqz	a5,28c0 <_vfiprintf_r+0x700>
    28a4:	01012783          	lw	a5,16(sp)
    28a8:	0007ca03          	lbu	s4,0(a5)
    28ac:	00000993          	li	s3,0
    28b0:	00478793          	addi	a5,a5,4
    28b4:	00f12823          	sw	a5,16(sp)
    28b8:	00100793          	li	a5,1
    28bc:	e01ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    28c0:	01012783          	lw	a5,16(sp)
    28c4:	0007aa03          	lw	s4,0(a5)
    28c8:	00000993          	li	s3,0
    28cc:	00478793          	addi	a5,a5,4
    28d0:	00f12823          	sw	a5,16(sp)
    28d4:	00100793          	li	a5,1
    28d8:	de5ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    28dc:	000117b7          	lui	a5,0x11
    28e0:	f9878793          	addi	a5,a5,-104 # 10f98 <__clz_tab+0x1b4>
    28e4:	02f12023          	sw	a5,32(sp)
    28e8:	0100006f          	j	28f8 <_vfiprintf_r+0x738>
    28ec:	000117b7          	lui	a5,0x11
    28f0:	fac78793          	addi	a5,a5,-84 # 10fac <__clz_tab+0x1c8>
    28f4:	02f12023          	sw	a5,32(sp)
    28f8:	02097793          	andi	a5,s2,32
    28fc:	04078663          	beqz	a5,2948 <_vfiprintf_r+0x788>
    2900:	01012783          	lw	a5,16(sp)
    2904:	00778793          	addi	a5,a5,7
    2908:	ff87f793          	andi	a5,a5,-8
    290c:	00878693          	addi	a3,a5,8
    2910:	00d12823          	sw	a3,16(sp)
    2914:	0007aa03          	lw	s4,0(a5)
    2918:	0047a983          	lw	s3,4(a5)
    291c:	00197793          	andi	a5,s2,1
    2920:	00078e63          	beqz	a5,293c <_vfiprintf_r+0x77c>
    2924:	013a67b3          	or	a5,s4,s3
    2928:	00078a63          	beqz	a5,293c <_vfiprintf_r+0x77c>
    292c:	03000793          	li	a5,48
    2930:	02f10c23          	sb	a5,56(sp)
    2934:	02e10ca3          	sb	a4,57(sp)
    2938:	00296913          	ori	s2,s2,2
    293c:	bff97713          	andi	a4,s2,-1025
    2940:	00200793          	li	a5,2
    2944:	d79ff06f          	j	26bc <_vfiprintf_r+0x4fc>
    2948:	01097793          	andi	a5,s2,16
    294c:	00078e63          	beqz	a5,2968 <_vfiprintf_r+0x7a8>
    2950:	01012783          	lw	a5,16(sp)
    2954:	0007aa03          	lw	s4,0(a5)
    2958:	00000993          	li	s3,0
    295c:	00478793          	addi	a5,a5,4
    2960:	00f12823          	sw	a5,16(sp)
    2964:	fb9ff06f          	j	291c <_vfiprintf_r+0x75c>
    2968:	04097793          	andi	a5,s2,64
    296c:	00078e63          	beqz	a5,2988 <_vfiprintf_r+0x7c8>
    2970:	01012783          	lw	a5,16(sp)
    2974:	0007da03          	lhu	s4,0(a5)
    2978:	00000993          	li	s3,0
    297c:	00478793          	addi	a5,a5,4
    2980:	00f12823          	sw	a5,16(sp)
    2984:	f99ff06f          	j	291c <_vfiprintf_r+0x75c>
    2988:	20097793          	andi	a5,s2,512
    298c:	00078e63          	beqz	a5,29a8 <_vfiprintf_r+0x7e8>
    2990:	01012783          	lw	a5,16(sp)
    2994:	0007ca03          	lbu	s4,0(a5)
    2998:	00000993          	li	s3,0
    299c:	00478793          	addi	a5,a5,4
    29a0:	00f12823          	sw	a5,16(sp)
    29a4:	f79ff06f          	j	291c <_vfiprintf_r+0x75c>
    29a8:	01012783          	lw	a5,16(sp)
    29ac:	0007aa03          	lw	s4,0(a5)
    29b0:	00000993          	li	s3,0
    29b4:	00478793          	addi	a5,a5,4
    29b8:	00f12823          	sw	a5,16(sp)
    29bc:	f61ff06f          	j	291c <_vfiprintf_r+0x75c>
    29c0:	00070913          	mv	s2,a4
    29c4:	00100713          	li	a4,1
    29c8:	02e78463          	beq	a5,a4,29f0 <_vfiprintf_r+0x830>
    29cc:	00200713          	li	a4,2
    29d0:	14e78263          	beq	a5,a4,2b14 <_vfiprintf_r+0x954>
    29d4:	76078463          	beqz	a5,313c <_vfiprintf_r+0xf7c>
    29d8:	000114b7          	lui	s1,0x11
    29dc:	fc048513          	addi	a0,s1,-64 # 10fc0 <__clz_tab+0x1dc>
    29e0:	570030ef          	jal	ra,5f50 <strlen>
    29e4:	00050a93          	mv	s5,a0
    29e8:	fc048493          	addi	s1,s1,-64
    29ec:	16c0006f          	j	2b58 <_vfiprintf_r+0x998>
    29f0:	00099863          	bnez	s3,2a00 <_vfiprintf_r+0x840>
    29f4:	02099463          	bnez	s3,2a1c <_vfiprintf_r+0x85c>
    29f8:	00900793          	li	a5,9
    29fc:	0347f063          	bgeu	a5,s4,2a1c <_vfiprintf_r+0x85c>
    2a00:	00000b13          	li	s6,0
    2a04:	0a010a93          	addi	s5,sp,160
    2a08:	40097b93          	andi	s7,s2,1024
    2a0c:	00812a23          	sw	s0,20(sp)
    2a10:	02412403          	lw	s0,36(sp)
    2a14:	0900006f          	j	2aa4 <_vfiprintf_r+0x8e4>
    2a18:	00070913          	mv	s2,a4
    2a1c:	030a0a13          	addi	s4,s4,48
    2a20:	09410fa3          	sb	s4,159(sp)
    2a24:	09f10493          	addi	s1,sp,159
    2a28:	1280006f          	j	2b50 <_vfiprintf_r+0x990>
    2a2c:	00900793          	li	a5,9
    2a30:	0147e863          	bltu	a5,s4,2a40 <_vfiprintf_r+0x880>
    2a34:	02812223          	sw	s0,36(sp)
    2a38:	01412403          	lw	s0,20(sp)
    2a3c:	1140006f          	j	2b50 <_vfiprintf_r+0x990>
    2a40:	02c12783          	lw	a5,44(sp)
    2a44:	40f484b3          	sub	s1,s1,a5
    2a48:	00078613          	mv	a2,a5
    2a4c:	02812583          	lw	a1,40(sp)
    2a50:	00048513          	mv	a0,s1
    2a54:	58c030ef          	jal	ra,5fe0 <strncpy>
    2a58:	00144783          	lbu	a5,1(s0)
    2a5c:	00f037b3          	snez	a5,a5
    2a60:	00f40433          	add	s0,s0,a5
    2a64:	00a00613          	li	a2,10
    2a68:	00000693          	li	a3,0
    2a6c:	000a0513          	mv	a0,s4
    2a70:	00098593          	mv	a1,s3
    2a74:	044040ef          	jal	ra,6ab8 <__udivdi3>
    2a78:	00000b13          	li	s6,0
    2a7c:	01c0006f          	j	2a98 <_vfiprintf_r+0x8d8>
    2a80:	00a00613          	li	a2,10
    2a84:	00000693          	li	a3,0
    2a88:	000a0513          	mv	a0,s4
    2a8c:	00098593          	mv	a1,s3
    2a90:	028040ef          	jal	ra,6ab8 <__udivdi3>
    2a94:	04098e63          	beqz	s3,2af0 <_vfiprintf_r+0x930>
    2a98:	00050a13          	mv	s4,a0
    2a9c:	00058993          	mv	s3,a1
    2aa0:	00048a93          	mv	s5,s1
    2aa4:	fffa8493          	addi	s1,s5,-1
    2aa8:	00a00613          	li	a2,10
    2aac:	00000693          	li	a3,0
    2ab0:	000a0513          	mv	a0,s4
    2ab4:	00098593          	mv	a1,s3
    2ab8:	5c0040ef          	jal	ra,7078 <__umoddi3>
    2abc:	03050513          	addi	a0,a0,48
    2ac0:	feaa8fa3          	sb	a0,-1(s5)
    2ac4:	001b0b13          	addi	s6,s6,1
    2ac8:	fa0b8ce3          	beqz	s7,2a80 <_vfiprintf_r+0x8c0>
    2acc:	00044783          	lbu	a5,0(s0)
    2ad0:	fb6798e3          	bne	a5,s6,2a80 <_vfiprintf_r+0x8c0>
    2ad4:	0ff00713          	li	a4,255
    2ad8:	fae784e3          	beq	a5,a4,2a80 <_vfiprintf_r+0x8c0>
    2adc:	f60992e3          	bnez	s3,2a40 <_vfiprintf_r+0x880>
    2ae0:	f40986e3          	beqz	s3,2a2c <_vfiprintf_r+0x86c>
    2ae4:	02812223          	sw	s0,36(sp)
    2ae8:	01412403          	lw	s0,20(sp)
    2aec:	0640006f          	j	2b50 <_vfiprintf_r+0x990>
    2af0:	20099c63          	bnez	s3,2d08 <_vfiprintf_r+0xb48>
    2af4:	00900793          	li	a5,9
    2af8:	fb47e0e3          	bltu	a5,s4,2a98 <_vfiprintf_r+0x8d8>
    2afc:	02812223          	sw	s0,36(sp)
    2b00:	01412403          	lw	s0,20(sp)
    2b04:	04c0006f          	j	2b50 <_vfiprintf_r+0x990>
    2b08:	00070913          	mv	s2,a4
    2b0c:	00000a13          	li	s4,0
    2b10:	00000993          	li	s3,0
    2b14:	0a010493          	addi	s1,sp,160
    2b18:	02012683          	lw	a3,32(sp)
    2b1c:	fff48493          	addi	s1,s1,-1
    2b20:	00fa7793          	andi	a5,s4,15
    2b24:	00f687b3          	add	a5,a3,a5
    2b28:	0007c783          	lbu	a5,0(a5)
    2b2c:	00f48023          	sb	a5,0(s1)
    2b30:	01c99713          	slli	a4,s3,0x1c
    2b34:	004a5793          	srli	a5,s4,0x4
    2b38:	00f767b3          	or	a5,a4,a5
    2b3c:	0049d713          	srli	a4,s3,0x4
    2b40:	00078a13          	mv	s4,a5
    2b44:	00070993          	mv	s3,a4
    2b48:	00e7e7b3          	or	a5,a5,a4
    2b4c:	fc0798e3          	bnez	a5,2b1c <_vfiprintf_r+0x95c>
    2b50:	0a010a93          	addi	s5,sp,160
    2b54:	409a8ab3          	sub	s5,s5,s1
    2b58:	000c8a13          	mv	s4,s9
    2b5c:	015cd463          	bge	s9,s5,2b64 <_vfiprintf_r+0x9a4>
    2b60:	000a8a13          	mv	s4,s5
    2b64:	0ef14783          	lbu	a5,239(sp)
    2b68:	00f037b3          	snez	a5,a5
    2b6c:	00fa0a33          	add	s4,s4,a5
    2b70:	00297793          	andi	a5,s2,2
    2b74:	00f12a23          	sw	a5,20(sp)
    2b78:	00078463          	beqz	a5,2b80 <_vfiprintf_r+0x9c0>
    2b7c:	002a0a13          	addi	s4,s4,2
    2b80:	08497b93          	andi	s7,s2,132
    2b84:	000b9663          	bnez	s7,2b90 <_vfiprintf_r+0x9d0>
    2b88:	414c09b3          	sub	s3,s8,s4
    2b8c:	1b304863          	bgtz	s3,2d3c <_vfiprintf_r+0xb7c>
    2b90:	0ef14783          	lbu	a5,239(sp)
    2b94:	02078c63          	beqz	a5,2bcc <_vfiprintf_r+0xa0c>
    2b98:	0ef10793          	addi	a5,sp,239
    2b9c:	00f42023          	sw	a5,0(s0)
    2ba0:	00100793          	li	a5,1
    2ba4:	00f42223          	sw	a5,4(s0)
    2ba8:	0e812783          	lw	a5,232(sp)
    2bac:	00178793          	addi	a5,a5,1
    2bb0:	0ef12423          	sw	a5,232(sp)
    2bb4:	0e412783          	lw	a5,228(sp)
    2bb8:	00178793          	addi	a5,a5,1
    2bbc:	0ef12223          	sw	a5,228(sp)
    2bc0:	00700713          	li	a4,7
    2bc4:	00840413          	addi	s0,s0,8
    2bc8:	22f74663          	blt	a4,a5,2df4 <_vfiprintf_r+0xc34>
    2bcc:	01412783          	lw	a5,20(sp)
    2bd0:	02078c63          	beqz	a5,2c08 <_vfiprintf_r+0xa48>
    2bd4:	03810793          	addi	a5,sp,56
    2bd8:	00f42023          	sw	a5,0(s0)
    2bdc:	00200793          	li	a5,2
    2be0:	00f42223          	sw	a5,4(s0)
    2be4:	0e812783          	lw	a5,232(sp)
    2be8:	00278793          	addi	a5,a5,2
    2bec:	0ef12423          	sw	a5,232(sp)
    2bf0:	0e412783          	lw	a5,228(sp)
    2bf4:	00178793          	addi	a5,a5,1
    2bf8:	0ef12223          	sw	a5,228(sp)
    2bfc:	00700713          	li	a4,7
    2c00:	00840413          	addi	s0,s0,8
    2c04:	20f74663          	blt	a4,a5,2e10 <_vfiprintf_r+0xc50>
    2c08:	08000793          	li	a5,128
    2c0c:	22fb8063          	beq	s7,a5,2e2c <_vfiprintf_r+0xc6c>
    2c10:	415c8cb3          	sub	s9,s9,s5
    2c14:	2d904a63          	bgtz	s9,2ee8 <_vfiprintf_r+0xd28>
    2c18:	00942023          	sw	s1,0(s0)
    2c1c:	01542223          	sw	s5,4(s0)
    2c20:	0e812783          	lw	a5,232(sp)
    2c24:	015787b3          	add	a5,a5,s5
    2c28:	0ef12423          	sw	a5,232(sp)
    2c2c:	0e412783          	lw	a5,228(sp)
    2c30:	00178793          	addi	a5,a5,1
    2c34:	0ef12223          	sw	a5,228(sp)
    2c38:	00700713          	li	a4,7
    2c3c:	00840413          	addi	s0,s0,8
    2c40:	36f74063          	blt	a4,a5,2fa0 <_vfiprintf_r+0xde0>
    2c44:	00497913          	andi	s2,s2,4
    2c48:	00090663          	beqz	s2,2c54 <_vfiprintf_r+0xa94>
    2c4c:	414c04b3          	sub	s1,s8,s4
    2c50:	36904663          	bgtz	s1,2fbc <_vfiprintf_r+0xdfc>
    2c54:	000c0793          	mv	a5,s8
    2c58:	014c5463          	bge	s8,s4,2c60 <_vfiprintf_r+0xaa0>
    2c5c:	000a0793          	mv	a5,s4
    2c60:	00812703          	lw	a4,8(sp)
    2c64:	00f707b3          	add	a5,a4,a5
    2c68:	00f12423          	sw	a5,8(sp)
    2c6c:	0e812783          	lw	a5,232(sp)
    2c70:	3e079e63          	bnez	a5,306c <_vfiprintf_r+0xeac>
    2c74:	0e012223          	sw	zero,228(sp)
    2c78:	0a010413          	addi	s0,sp,160
    2c7c:	000dc783          	lbu	a5,0(s11)
    2c80:	40078263          	beqz	a5,3084 <_vfiprintf_r+0xec4>
    2c84:	000d8493          	mv	s1,s11
    2c88:	02500713          	li	a4,37
    2c8c:	e6e78663          	beq	a5,a4,22f8 <_vfiprintf_r+0x138>
    2c90:	00148493          	addi	s1,s1,1
    2c94:	0004c783          	lbu	a5,0(s1)
    2c98:	fe079ae3          	bnez	a5,2c8c <_vfiprintf_r+0xacc>
    2c9c:	41b48933          	sub	s2,s1,s11
    2ca0:	3fb48263          	beq	s1,s11,3084 <_vfiprintf_r+0xec4>
    2ca4:	01b42023          	sw	s11,0(s0)
    2ca8:	01242223          	sw	s2,4(s0)
    2cac:	0e812783          	lw	a5,232(sp)
    2cb0:	012787b3          	add	a5,a5,s2
    2cb4:	0ef12423          	sw	a5,232(sp)
    2cb8:	0e412783          	lw	a5,228(sp)
    2cbc:	00178793          	addi	a5,a5,1
    2cc0:	0ef12223          	sw	a5,228(sp)
    2cc4:	00700713          	li	a4,7
    2cc8:	00840413          	addi	s0,s0,8
    2ccc:	e2f74c63          	blt	a4,a5,2304 <_vfiprintf_r+0x144>
    2cd0:	00812783          	lw	a5,8(sp)
    2cd4:	012787b3          	add	a5,a5,s2
    2cd8:	00f12423          	sw	a5,8(sp)
    2cdc:	0004c783          	lbu	a5,0(s1)
    2ce0:	3a078263          	beqz	a5,3084 <_vfiprintf_r+0xec4>
    2ce4:	00148793          	addi	a5,s1,1
    2ce8:	0e0107a3          	sb	zero,239(sp)
    2cec:	fff00c93          	li	s9,-1
    2cf0:	00000c13          	li	s8,0
    2cf4:	00000913          	li	s2,0
    2cf8:	00900493          	li	s1,9
    2cfc:	02a00993          	li	s3,42
    2d00:	fff00a13          	li	s4,-1
    2d04:	ea4ff06f          	j	23a8 <_vfiprintf_r+0x1e8>
    2d08:	02812223          	sw	s0,36(sp)
    2d0c:	01412403          	lw	s0,20(sp)
    2d10:	e41ff06f          	j	2b50 <_vfiprintf_r+0x990>
    2d14:	36070863          	beqz	a4,3084 <_vfiprintf_r+0xec4>
    2d18:	02e10e23          	sb	a4,60(sp)
    2d1c:	0e0107a3          	sb	zero,239(sp)
    2d20:	00100a93          	li	s5,1
    2d24:	03c10493          	addi	s1,sp,60
    2d28:	fccff06f          	j	24f4 <_vfiprintf_r+0x334>
    2d2c:	01312823          	sw	s3,16(sp)
    2d30:	000c8a93          	mv	s5,s9
    2d34:	00000c93          	li	s9,0
    2d38:	e21ff06f          	j	2b58 <_vfiprintf_r+0x998>
    2d3c:	01000793          	li	a5,16
    2d40:	0737d463          	bge	a5,s3,2da8 <_vfiprintf_r+0xbe8>
    2d44:	01000b13          	li	s6,16
    2d48:	00040713          	mv	a4,s0
    2d4c:	01c12403          	lw	s0,28(sp)
    2d50:	00c0006f          	j	2d5c <_vfiprintf_r+0xb9c>
    2d54:	ff098993          	addi	s3,s3,-16
    2d58:	053b5663          	bge	s6,s3,2da4 <_vfiprintf_r+0xbe4>
    2d5c:	00872023          	sw	s0,0(a4)
    2d60:	01672223          	sw	s6,4(a4)
    2d64:	0e812783          	lw	a5,232(sp)
    2d68:	01078793          	addi	a5,a5,16
    2d6c:	0ef12423          	sw	a5,232(sp)
    2d70:	0e412783          	lw	a5,228(sp)
    2d74:	00178793          	addi	a5,a5,1
    2d78:	0ef12223          	sw	a5,228(sp)
    2d7c:	00700693          	li	a3,7
    2d80:	00870713          	addi	a4,a4,8
    2d84:	fcf6d8e3          	bge	a3,a5,2d54 <_vfiprintf_r+0xb94>
    2d88:	0e010613          	addi	a2,sp,224
    2d8c:	00412583          	lw	a1,4(sp)
    2d90:	00c12503          	lw	a0,12(sp)
    2d94:	b34ff0ef          	jal	ra,20c8 <__sprint_r>
    2d98:	2e051a63          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2d9c:	0a010713          	addi	a4,sp,160
    2da0:	fb5ff06f          	j	2d54 <_vfiprintf_r+0xb94>
    2da4:	00070413          	mv	s0,a4
    2da8:	01c12783          	lw	a5,28(sp)
    2dac:	00f42023          	sw	a5,0(s0)
    2db0:	01342223          	sw	s3,4(s0)
    2db4:	0e812783          	lw	a5,232(sp)
    2db8:	013787b3          	add	a5,a5,s3
    2dbc:	0ef12423          	sw	a5,232(sp)
    2dc0:	0e412783          	lw	a5,228(sp)
    2dc4:	00178793          	addi	a5,a5,1
    2dc8:	0ef12223          	sw	a5,228(sp)
    2dcc:	00700713          	li	a4,7
    2dd0:	00840413          	addi	s0,s0,8
    2dd4:	daf75ee3          	bge	a4,a5,2b90 <_vfiprintf_r+0x9d0>
    2dd8:	0e010613          	addi	a2,sp,224
    2ddc:	00412583          	lw	a1,4(sp)
    2de0:	00c12503          	lw	a0,12(sp)
    2de4:	ae4ff0ef          	jal	ra,20c8 <__sprint_r>
    2de8:	2a051263          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2dec:	0a010413          	addi	s0,sp,160
    2df0:	da1ff06f          	j	2b90 <_vfiprintf_r+0x9d0>
    2df4:	0e010613          	addi	a2,sp,224
    2df8:	00412583          	lw	a1,4(sp)
    2dfc:	00c12503          	lw	a0,12(sp)
    2e00:	ac8ff0ef          	jal	ra,20c8 <__sprint_r>
    2e04:	28051463          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2e08:	0a010413          	addi	s0,sp,160
    2e0c:	dc1ff06f          	j	2bcc <_vfiprintf_r+0xa0c>
    2e10:	0e010613          	addi	a2,sp,224
    2e14:	00412583          	lw	a1,4(sp)
    2e18:	00c12503          	lw	a0,12(sp)
    2e1c:	aacff0ef          	jal	ra,20c8 <__sprint_r>
    2e20:	26051663          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2e24:	0a010413          	addi	s0,sp,160
    2e28:	de1ff06f          	j	2c08 <_vfiprintf_r+0xa48>
    2e2c:	414c09b3          	sub	s3,s8,s4
    2e30:	df3050e3          	blez	s3,2c10 <_vfiprintf_r+0xa50>
    2e34:	01000793          	li	a5,16
    2e38:	0737d463          	bge	a5,s3,2ea0 <_vfiprintf_r+0xce0>
    2e3c:	01000b13          	li	s6,16
    2e40:	00700b93          	li	s7,7
    2e44:	00040713          	mv	a4,s0
    2e48:	00c12403          	lw	s0,12(sp)
    2e4c:	00c0006f          	j	2e58 <_vfiprintf_r+0xc98>
    2e50:	ff098993          	addi	s3,s3,-16
    2e54:	053b5463          	bge	s6,s3,2e9c <_vfiprintf_r+0xcdc>
    2e58:	01a72023          	sw	s10,0(a4)
    2e5c:	01672223          	sw	s6,4(a4)
    2e60:	0e812783          	lw	a5,232(sp)
    2e64:	01078793          	addi	a5,a5,16
    2e68:	0ef12423          	sw	a5,232(sp)
    2e6c:	0e412783          	lw	a5,228(sp)
    2e70:	00178793          	addi	a5,a5,1
    2e74:	0ef12223          	sw	a5,228(sp)
    2e78:	00870713          	addi	a4,a4,8
    2e7c:	fcfbdae3          	bge	s7,a5,2e50 <_vfiprintf_r+0xc90>
    2e80:	0e010613          	addi	a2,sp,224
    2e84:	00412583          	lw	a1,4(sp)
    2e88:	00040513          	mv	a0,s0
    2e8c:	a3cff0ef          	jal	ra,20c8 <__sprint_r>
    2e90:	1e051e63          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2e94:	0a010713          	addi	a4,sp,160
    2e98:	fb9ff06f          	j	2e50 <_vfiprintf_r+0xc90>
    2e9c:	00070413          	mv	s0,a4
    2ea0:	01a42023          	sw	s10,0(s0)
    2ea4:	01342223          	sw	s3,4(s0)
    2ea8:	0e812783          	lw	a5,232(sp)
    2eac:	013787b3          	add	a5,a5,s3
    2eb0:	0ef12423          	sw	a5,232(sp)
    2eb4:	0e412783          	lw	a5,228(sp)
    2eb8:	00178793          	addi	a5,a5,1
    2ebc:	0ef12223          	sw	a5,228(sp)
    2ec0:	00700713          	li	a4,7
    2ec4:	00840413          	addi	s0,s0,8
    2ec8:	d4f754e3          	bge	a4,a5,2c10 <_vfiprintf_r+0xa50>
    2ecc:	0e010613          	addi	a2,sp,224
    2ed0:	00412583          	lw	a1,4(sp)
    2ed4:	00c12503          	lw	a0,12(sp)
    2ed8:	9f0ff0ef          	jal	ra,20c8 <__sprint_r>
    2edc:	1a051863          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2ee0:	0a010413          	addi	s0,sp,160
    2ee4:	d2dff06f          	j	2c10 <_vfiprintf_r+0xa50>
    2ee8:	01000793          	li	a5,16
    2eec:	0797d663          	bge	a5,s9,2f58 <_vfiprintf_r+0xd98>
    2ef0:	01000b13          	li	s6,16
    2ef4:	00700b93          	li	s7,7
    2ef8:	00040713          	mv	a4,s0
    2efc:	00c12983          	lw	s3,12(sp)
    2f00:	00412403          	lw	s0,4(sp)
    2f04:	00c0006f          	j	2f10 <_vfiprintf_r+0xd50>
    2f08:	ff0c8c93          	addi	s9,s9,-16
    2f0c:	059b5463          	bge	s6,s9,2f54 <_vfiprintf_r+0xd94>
    2f10:	01a72023          	sw	s10,0(a4)
    2f14:	01672223          	sw	s6,4(a4)
    2f18:	0e812783          	lw	a5,232(sp)
    2f1c:	01078793          	addi	a5,a5,16
    2f20:	0ef12423          	sw	a5,232(sp)
    2f24:	0e412783          	lw	a5,228(sp)
    2f28:	00178793          	addi	a5,a5,1
    2f2c:	0ef12223          	sw	a5,228(sp)
    2f30:	00870713          	addi	a4,a4,8
    2f34:	fcfbdae3          	bge	s7,a5,2f08 <_vfiprintf_r+0xd48>
    2f38:	0e010613          	addi	a2,sp,224
    2f3c:	00040593          	mv	a1,s0
    2f40:	00098513          	mv	a0,s3
    2f44:	984ff0ef          	jal	ra,20c8 <__sprint_r>
    2f48:	14051263          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2f4c:	0a010713          	addi	a4,sp,160
    2f50:	fb9ff06f          	j	2f08 <_vfiprintf_r+0xd48>
    2f54:	00070413          	mv	s0,a4
    2f58:	01a42023          	sw	s10,0(s0)
    2f5c:	01942223          	sw	s9,4(s0)
    2f60:	0e812783          	lw	a5,232(sp)
    2f64:	019787b3          	add	a5,a5,s9
    2f68:	0ef12423          	sw	a5,232(sp)
    2f6c:	0e412783          	lw	a5,228(sp)
    2f70:	00178793          	addi	a5,a5,1
    2f74:	0ef12223          	sw	a5,228(sp)
    2f78:	00700713          	li	a4,7
    2f7c:	00840413          	addi	s0,s0,8
    2f80:	c8f75ce3          	bge	a4,a5,2c18 <_vfiprintf_r+0xa58>
    2f84:	0e010613          	addi	a2,sp,224
    2f88:	00412583          	lw	a1,4(sp)
    2f8c:	00c12503          	lw	a0,12(sp)
    2f90:	938ff0ef          	jal	ra,20c8 <__sprint_r>
    2f94:	0e051c63          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2f98:	0a010413          	addi	s0,sp,160
    2f9c:	c7dff06f          	j	2c18 <_vfiprintf_r+0xa58>
    2fa0:	0e010613          	addi	a2,sp,224
    2fa4:	00412583          	lw	a1,4(sp)
    2fa8:	00c12503          	lw	a0,12(sp)
    2fac:	91cff0ef          	jal	ra,20c8 <__sprint_r>
    2fb0:	0c051e63          	bnez	a0,308c <_vfiprintf_r+0xecc>
    2fb4:	0a010413          	addi	s0,sp,160
    2fb8:	c8dff06f          	j	2c44 <_vfiprintf_r+0xa84>
    2fbc:	01000793          	li	a5,16
    2fc0:	0697d463          	bge	a5,s1,3028 <_vfiprintf_r+0xe68>
    2fc4:	01000913          	li	s2,16
    2fc8:	00700993          	li	s3,7
    2fcc:	00c12b03          	lw	s6,12(sp)
    2fd0:	00412b83          	lw	s7,4(sp)
    2fd4:	01c12a83          	lw	s5,28(sp)
    2fd8:	00c0006f          	j	2fe4 <_vfiprintf_r+0xe24>
    2fdc:	ff048493          	addi	s1,s1,-16
    2fe0:	04995463          	bge	s2,s1,3028 <_vfiprintf_r+0xe68>
    2fe4:	01542023          	sw	s5,0(s0)
    2fe8:	01242223          	sw	s2,4(s0)
    2fec:	0e812783          	lw	a5,232(sp)
    2ff0:	01078793          	addi	a5,a5,16
    2ff4:	0ef12423          	sw	a5,232(sp)
    2ff8:	0e412783          	lw	a5,228(sp)
    2ffc:	00178793          	addi	a5,a5,1
    3000:	0ef12223          	sw	a5,228(sp)
    3004:	00840413          	addi	s0,s0,8
    3008:	fcf9dae3          	bge	s3,a5,2fdc <_vfiprintf_r+0xe1c>
    300c:	0e010613          	addi	a2,sp,224
    3010:	000b8593          	mv	a1,s7
    3014:	000b0513          	mv	a0,s6
    3018:	8b0ff0ef          	jal	ra,20c8 <__sprint_r>
    301c:	06051863          	bnez	a0,308c <_vfiprintf_r+0xecc>
    3020:	0a010413          	addi	s0,sp,160
    3024:	fb9ff06f          	j	2fdc <_vfiprintf_r+0xe1c>
    3028:	01c12783          	lw	a5,28(sp)
    302c:	00f42023          	sw	a5,0(s0)
    3030:	00942223          	sw	s1,4(s0)
    3034:	0e812783          	lw	a5,232(sp)
    3038:	009787b3          	add	a5,a5,s1
    303c:	0ef12423          	sw	a5,232(sp)
    3040:	0e412783          	lw	a5,228(sp)
    3044:	00178793          	addi	a5,a5,1
    3048:	0ef12223          	sw	a5,228(sp)
    304c:	00700713          	li	a4,7
    3050:	c0f752e3          	bge	a4,a5,2c54 <_vfiprintf_r+0xa94>
    3054:	0e010613          	addi	a2,sp,224
    3058:	00412583          	lw	a1,4(sp)
    305c:	00c12503          	lw	a0,12(sp)
    3060:	868ff0ef          	jal	ra,20c8 <__sprint_r>
    3064:	be0508e3          	beqz	a0,2c54 <_vfiprintf_r+0xa94>
    3068:	0240006f          	j	308c <_vfiprintf_r+0xecc>
    306c:	0e010613          	addi	a2,sp,224
    3070:	00412583          	lw	a1,4(sp)
    3074:	00c12503          	lw	a0,12(sp)
    3078:	850ff0ef          	jal	ra,20c8 <__sprint_r>
    307c:	be050ce3          	beqz	a0,2c74 <_vfiprintf_r+0xab4>
    3080:	00c0006f          	j	308c <_vfiprintf_r+0xecc>
    3084:	0e812783          	lw	a5,232(sp)
    3088:	04079a63          	bnez	a5,30dc <_vfiprintf_r+0xf1c>
    308c:	00412783          	lw	a5,4(sp)
    3090:	00c7d783          	lhu	a5,12(a5)
    3094:	0407f793          	andi	a5,a5,64
    3098:	04079c63          	bnez	a5,30f0 <_vfiprintf_r+0xf30>
    309c:	00812503          	lw	a0,8(sp)
    30a0:	12c12083          	lw	ra,300(sp)
    30a4:	12812403          	lw	s0,296(sp)
    30a8:	12412483          	lw	s1,292(sp)
    30ac:	12012903          	lw	s2,288(sp)
    30b0:	11c12983          	lw	s3,284(sp)
    30b4:	11812a03          	lw	s4,280(sp)
    30b8:	11412a83          	lw	s5,276(sp)
    30bc:	11012b03          	lw	s6,272(sp)
    30c0:	10c12b83          	lw	s7,268(sp)
    30c4:	10812c03          	lw	s8,264(sp)
    30c8:	10412c83          	lw	s9,260(sp)
    30cc:	10012d03          	lw	s10,256(sp)
    30d0:	0fc12d83          	lw	s11,252(sp)
    30d4:	13010113          	addi	sp,sp,304
    30d8:	00008067          	ret
    30dc:	0e010613          	addi	a2,sp,224
    30e0:	00412583          	lw	a1,4(sp)
    30e4:	00c12503          	lw	a0,12(sp)
    30e8:	fe1fe0ef          	jal	ra,20c8 <__sprint_r>
    30ec:	fa1ff06f          	j	308c <_vfiprintf_r+0xecc>
    30f0:	fff00793          	li	a5,-1
    30f4:	00f12423          	sw	a5,8(sp)
    30f8:	fa5ff06f          	j	309c <_vfiprintf_r+0xedc>
    30fc:	fff00793          	li	a5,-1
    3100:	00f12423          	sw	a5,8(sp)
    3104:	f99ff06f          	j	309c <_vfiprintf_r+0xedc>
    3108:	00090713          	mv	a4,s2
    310c:	00c0006f          	j	3118 <_vfiprintf_r+0xf58>
    3110:	013a66b3          	or	a3,s4,s3
    3114:	8a0696e3          	bnez	a3,29c0 <_vfiprintf_r+0x800>
    3118:	00100693          	li	a3,1
    311c:	8ed78ee3          	beq	a5,a3,2a18 <_vfiprintf_r+0x858>
    3120:	00200693          	li	a3,2
    3124:	9ed782e3          	beq	a5,a3,2b08 <_vfiprintf_r+0x948>
    3128:	00070913          	mv	s2,a4
    312c:	8a0796e3          	bnez	a5,29d8 <_vfiprintf_r+0x818>
    3130:	00070913          	mv	s2,a4
    3134:	00000a13          	li	s4,0
    3138:	00000993          	li	s3,0
    313c:	0a010493          	addi	s1,sp,160
    3140:	00048613          	mv	a2,s1
    3144:	fff48493          	addi	s1,s1,-1
    3148:	007a7713          	andi	a4,s4,7
    314c:	03070713          	addi	a4,a4,48
    3150:	00e48023          	sb	a4,0(s1)
    3154:	01d99693          	slli	a3,s3,0x1d
    3158:	003a5793          	srli	a5,s4,0x3
    315c:	00f6e7b3          	or	a5,a3,a5
    3160:	0039d693          	srli	a3,s3,0x3
    3164:	00078a13          	mv	s4,a5
    3168:	00068993          	mv	s3,a3
    316c:	00d7e7b3          	or	a5,a5,a3
    3170:	fc0798e3          	bnez	a5,3140 <_vfiprintf_r+0xf80>
    3174:	00197793          	andi	a5,s2,1
    3178:	9c078ce3          	beqz	a5,2b50 <_vfiprintf_r+0x990>
    317c:	03000793          	li	a5,48
    3180:	9cf708e3          	beq	a4,a5,2b50 <_vfiprintf_r+0x990>
    3184:	fef48fa3          	sb	a5,-1(s1)
    3188:	ffe60493          	addi	s1,a2,-2
    318c:	9c5ff06f          	j	2b50 <_vfiprintf_r+0x990>

00003190 <vfiprintf>:
    3190:	ff010113          	addi	sp,sp,-16
    3194:	00112623          	sw	ra,12(sp)
    3198:	00060693          	mv	a3,a2
    319c:	00058613          	mv	a2,a1
    31a0:	00050593          	mv	a1,a0
    31a4:	000117b7          	lui	a5,0x11
    31a8:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    31ac:	814ff0ef          	jal	ra,21c0 <_vfiprintf_r>
    31b0:	00c12083          	lw	ra,12(sp)
    31b4:	01010113          	addi	sp,sp,16
    31b8:	00008067          	ret

000031bc <__sbprintf>:
    31bc:	b8010113          	addi	sp,sp,-1152
    31c0:	46112e23          	sw	ra,1148(sp)
    31c4:	46812c23          	sw	s0,1144(sp)
    31c8:	46912a23          	sw	s1,1140(sp)
    31cc:	47212823          	sw	s2,1136(sp)
    31d0:	00050913          	mv	s2,a0
    31d4:	00058413          	mv	s0,a1
    31d8:	00c5d783          	lhu	a5,12(a1)
    31dc:	ffd7f793          	andi	a5,a5,-3
    31e0:	40f11a23          	sh	a5,1044(sp)
    31e4:	0645a783          	lw	a5,100(a1)
    31e8:	46f12623          	sw	a5,1132(sp)
    31ec:	00e5d783          	lhu	a5,14(a1)
    31f0:	40f11b23          	sh	a5,1046(sp)
    31f4:	01c5a783          	lw	a5,28(a1)
    31f8:	42f12223          	sw	a5,1060(sp)
    31fc:	0245a783          	lw	a5,36(a1)
    3200:	42f12623          	sw	a5,1068(sp)
    3204:	00810793          	addi	a5,sp,8
    3208:	40f12423          	sw	a5,1032(sp)
    320c:	40f12c23          	sw	a5,1048(sp)
    3210:	40000793          	li	a5,1024
    3214:	40f12823          	sw	a5,1040(sp)
    3218:	40f12e23          	sw	a5,1052(sp)
    321c:	42012023          	sw	zero,1056(sp)
    3220:	40810593          	addi	a1,sp,1032
    3224:	f9dfe0ef          	jal	ra,21c0 <_vfiprintf_r>
    3228:	00050493          	mv	s1,a0
    322c:	02055c63          	bgez	a0,3264 <__sbprintf+0xa8>
    3230:	41415783          	lhu	a5,1044(sp)
    3234:	0407f793          	andi	a5,a5,64
    3238:	00078863          	beqz	a5,3248 <__sbprintf+0x8c>
    323c:	00c45783          	lhu	a5,12(s0)
    3240:	0407e793          	ori	a5,a5,64
    3244:	00f41623          	sh	a5,12(s0)
    3248:	00048513          	mv	a0,s1
    324c:	47c12083          	lw	ra,1148(sp)
    3250:	47812403          	lw	s0,1144(sp)
    3254:	47412483          	lw	s1,1140(sp)
    3258:	47012903          	lw	s2,1136(sp)
    325c:	48010113          	addi	sp,sp,1152
    3260:	00008067          	ret
    3264:	40810593          	addi	a1,sp,1032
    3268:	00090513          	mv	a0,s2
    326c:	3fc000ef          	jal	ra,3668 <_fflush_r>
    3270:	fc0500e3          	beqz	a0,3230 <__sbprintf+0x74>
    3274:	fff00493          	li	s1,-1
    3278:	fb9ff06f          	j	3230 <__sbprintf+0x74>

0000327c <__swsetup_r>:
    327c:	ff010113          	addi	sp,sp,-16
    3280:	00112623          	sw	ra,12(sp)
    3284:	00812423          	sw	s0,8(sp)
    3288:	00912223          	sw	s1,4(sp)
    328c:	00050493          	mv	s1,a0
    3290:	00058413          	mv	s0,a1
    3294:	000117b7          	lui	a5,0x11
    3298:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    329c:	00050663          	beqz	a0,32a8 <__swsetup_r+0x2c>
    32a0:	03852783          	lw	a5,56(a0)
    32a4:	0a078663          	beqz	a5,3350 <__swsetup_r+0xd4>
    32a8:	00c45783          	lhu	a5,12(s0)
    32ac:	0087f713          	andi	a4,a5,8
    32b0:	04071a63          	bnez	a4,3304 <__swsetup_r+0x88>
    32b4:	0107f713          	andi	a4,a5,16
    32b8:	0a070063          	beqz	a4,3358 <__swsetup_r+0xdc>
    32bc:	0047f793          	andi	a5,a5,4
    32c0:	02078c63          	beqz	a5,32f8 <__swsetup_r+0x7c>
    32c4:	03042583          	lw	a1,48(s0)
    32c8:	00058c63          	beqz	a1,32e0 <__swsetup_r+0x64>
    32cc:	04040793          	addi	a5,s0,64
    32d0:	00f58663          	beq	a1,a5,32dc <__swsetup_r+0x60>
    32d4:	00048513          	mv	a0,s1
    32d8:	2b5000ef          	jal	ra,3d8c <_free_r>
    32dc:	02042823          	sw	zero,48(s0)
    32e0:	00c45783          	lhu	a5,12(s0)
    32e4:	fdb7f793          	andi	a5,a5,-37
    32e8:	00f41623          	sh	a5,12(s0)
    32ec:	00042223          	sw	zero,4(s0)
    32f0:	01042783          	lw	a5,16(s0)
    32f4:	00f42023          	sw	a5,0(s0)
    32f8:	00c45783          	lhu	a5,12(s0)
    32fc:	0087e793          	ori	a5,a5,8
    3300:	00f41623          	sh	a5,12(s0)
    3304:	01042783          	lw	a5,16(s0)
    3308:	06078663          	beqz	a5,3374 <__swsetup_r+0xf8>
    330c:	00c41783          	lh	a5,12(s0)
    3310:	01079713          	slli	a4,a5,0x10
    3314:	01075713          	srli	a4,a4,0x10
    3318:	0017f693          	andi	a3,a5,1
    331c:	06068c63          	beqz	a3,3394 <__swsetup_r+0x118>
    3320:	00042423          	sw	zero,8(s0)
    3324:	01442683          	lw	a3,20(s0)
    3328:	40d006b3          	neg	a3,a3
    332c:	00d42c23          	sw	a3,24(s0)
    3330:	01042683          	lw	a3,16(s0)
    3334:	00000513          	li	a0,0
    3338:	06068a63          	beqz	a3,33ac <__swsetup_r+0x130>
    333c:	00c12083          	lw	ra,12(sp)
    3340:	00812403          	lw	s0,8(sp)
    3344:	00412483          	lw	s1,4(sp)
    3348:	01010113          	addi	sp,sp,16
    334c:	00008067          	ret
    3350:	47c000ef          	jal	ra,37cc <__sinit>
    3354:	f55ff06f          	j	32a8 <__swsetup_r+0x2c>
    3358:	00900793          	li	a5,9
    335c:	00f4a023          	sw	a5,0(s1)
    3360:	00c45783          	lhu	a5,12(s0)
    3364:	0407e793          	ori	a5,a5,64
    3368:	00f41623          	sh	a5,12(s0)
    336c:	fff00513          	li	a0,-1
    3370:	fcdff06f          	j	333c <__swsetup_r+0xc0>
    3374:	00c45783          	lhu	a5,12(s0)
    3378:	2807f793          	andi	a5,a5,640
    337c:	20000713          	li	a4,512
    3380:	f8e786e3          	beq	a5,a4,330c <__swsetup_r+0x90>
    3384:	00040593          	mv	a1,s0
    3388:	00048513          	mv	a0,s1
    338c:	470010ef          	jal	ra,47fc <__smakebuf_r>
    3390:	f7dff06f          	j	330c <__swsetup_r+0x90>
    3394:	00277693          	andi	a3,a4,2
    3398:	00000613          	li	a2,0
    339c:	00069463          	bnez	a3,33a4 <__swsetup_r+0x128>
    33a0:	01442603          	lw	a2,20(s0)
    33a4:	00c42423          	sw	a2,8(s0)
    33a8:	f89ff06f          	j	3330 <__swsetup_r+0xb4>
    33ac:	08077713          	andi	a4,a4,128
    33b0:	f80706e3          	beqz	a4,333c <__swsetup_r+0xc0>
    33b4:	0407e793          	ori	a5,a5,64
    33b8:	00f41623          	sh	a5,12(s0)
    33bc:	fff00513          	li	a0,-1
    33c0:	f7dff06f          	j	333c <__swsetup_r+0xc0>

000033c4 <abort>:
    33c4:	ff010113          	addi	sp,sp,-16
    33c8:	00112623          	sw	ra,12(sp)
    33cc:	00600513          	li	a0,6
    33d0:	7b0020ef          	jal	ra,5b80 <raise>
    33d4:	00100513          	li	a0,1
    33d8:	400030ef          	jal	ra,67d8 <_exit>

000033dc <__sflush_r>:
    33dc:	fe010113          	addi	sp,sp,-32
    33e0:	00112e23          	sw	ra,28(sp)
    33e4:	00812c23          	sw	s0,24(sp)
    33e8:	00912a23          	sw	s1,20(sp)
    33ec:	01212823          	sw	s2,16(sp)
    33f0:	01312623          	sw	s3,12(sp)
    33f4:	00050993          	mv	s3,a0
    33f8:	00058413          	mv	s0,a1
    33fc:	00c59783          	lh	a5,12(a1)
    3400:	0087f693          	andi	a3,a5,8
    3404:	14069c63          	bnez	a3,355c <__sflush_r+0x180>
    3408:	00001737          	lui	a4,0x1
    340c:	80070713          	addi	a4,a4,-2048 # 800 <_nettle_sha256_compress+0x5d4>
    3410:	00e7e7b3          	or	a5,a5,a4
    3414:	00f59623          	sh	a5,12(a1)
    3418:	0045a783          	lw	a5,4(a1)
    341c:	0cf05663          	blez	a5,34e8 <__sflush_r+0x10c>
    3420:	02842783          	lw	a5,40(s0)
    3424:	1a078863          	beqz	a5,35d4 <__sflush_r+0x1f8>
    3428:	0009a483          	lw	s1,0(s3)
    342c:	0009a023          	sw	zero,0(s3)
    3430:	00c45783          	lhu	a5,12(s0)
    3434:	00001737          	lui	a4,0x1
    3438:	00e7f7b3          	and	a5,a5,a4
    343c:	0a078e63          	beqz	a5,34f8 <__sflush_r+0x11c>
    3440:	05042503          	lw	a0,80(s0)
    3444:	00c45783          	lhu	a5,12(s0)
    3448:	0047f793          	andi	a5,a5,4
    344c:	00078e63          	beqz	a5,3468 <__sflush_r+0x8c>
    3450:	00442783          	lw	a5,4(s0)
    3454:	40f50533          	sub	a0,a0,a5
    3458:	03042783          	lw	a5,48(s0)
    345c:	00078663          	beqz	a5,3468 <__sflush_r+0x8c>
    3460:	03c42783          	lw	a5,60(s0)
    3464:	40f50533          	sub	a0,a0,a5
    3468:	02842783          	lw	a5,40(s0)
    346c:	00000693          	li	a3,0
    3470:	00050613          	mv	a2,a0
    3474:	01c42583          	lw	a1,28(s0)
    3478:	00098513          	mv	a0,s3
    347c:	000780e7          	jalr	a5
    3480:	fff00793          	li	a5,-1
    3484:	16f51463          	bne	a0,a5,35ec <__sflush_r+0x210>
    3488:	0009a703          	lw	a4,0(s3)
    348c:	01d00793          	li	a5,29
    3490:	0ae7ee63          	bltu	a5,a4,354c <__sflush_r+0x170>
    3494:	204007b7          	lui	a5,0x20400
    3498:	00178793          	addi	a5,a5,1 # 20400001 <heap_end.0+0x203eeef5>
    349c:	00e7d7b3          	srl	a5,a5,a4
    34a0:	0017f793          	andi	a5,a5,1
    34a4:	0a078463          	beqz	a5,354c <__sflush_r+0x170>
    34a8:	00c45783          	lhu	a5,12(s0)
    34ac:	fffff737          	lui	a4,0xfffff
    34b0:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.0+0xfffee6f3>
    34b4:	00e7f7b3          	and	a5,a5,a4
    34b8:	01079793          	slli	a5,a5,0x10
    34bc:	4107d793          	srai	a5,a5,0x10
    34c0:	00f41623          	sh	a5,12(s0)
    34c4:	00042223          	sw	zero,4(s0)
    34c8:	01042703          	lw	a4,16(s0)
    34cc:	00e42023          	sw	a4,0(s0)
    34d0:	00c7d793          	srli	a5,a5,0xc
    34d4:	0017f793          	andi	a5,a5,1
    34d8:	14078663          	beqz	a5,3624 <__sflush_r+0x248>
    34dc:	0009a783          	lw	a5,0(s3)
    34e0:	14079263          	bnez	a5,3624 <__sflush_r+0x248>
    34e4:	13c0006f          	j	3620 <__sflush_r+0x244>
    34e8:	03c5a783          	lw	a5,60(a1)
    34ec:	00000513          	li	a0,0
    34f0:	f2f048e3          	bgtz	a5,3420 <__sflush_r+0x44>
    34f4:	1580006f          	j	364c <__sflush_r+0x270>
    34f8:	02842783          	lw	a5,40(s0)
    34fc:	00100693          	li	a3,1
    3500:	00000613          	li	a2,0
    3504:	01c42583          	lw	a1,28(s0)
    3508:	00098513          	mv	a0,s3
    350c:	000780e7          	jalr	a5
    3510:	fff00793          	li	a5,-1
    3514:	f2f518e3          	bne	a0,a5,3444 <__sflush_r+0x68>
    3518:	0009a783          	lw	a5,0(s3)
    351c:	f20784e3          	beqz	a5,3444 <__sflush_r+0x68>
    3520:	01d00713          	li	a4,29
    3524:	00e78e63          	beq	a5,a4,3540 <__sflush_r+0x164>
    3528:	01600713          	li	a4,22
    352c:	00e78a63          	beq	a5,a4,3540 <__sflush_r+0x164>
    3530:	00c45783          	lhu	a5,12(s0)
    3534:	0407e793          	ori	a5,a5,64
    3538:	00f41623          	sh	a5,12(s0)
    353c:	1100006f          	j	364c <__sflush_r+0x270>
    3540:	0099a023          	sw	s1,0(s3)
    3544:	00000513          	li	a0,0
    3548:	1040006f          	j	364c <__sflush_r+0x270>
    354c:	00c45783          	lhu	a5,12(s0)
    3550:	0407e793          	ori	a5,a5,64
    3554:	00f41623          	sh	a5,12(s0)
    3558:	0f40006f          	j	364c <__sflush_r+0x270>
    355c:	01079713          	slli	a4,a5,0x10
    3560:	01075713          	srli	a4,a4,0x10
    3564:	0105a903          	lw	s2,16(a1)
    3568:	06090a63          	beqz	s2,35dc <__sflush_r+0x200>
    356c:	0005a483          	lw	s1,0(a1)
    3570:	412484b3          	sub	s1,s1,s2
    3574:	0125a023          	sw	s2,0(a1)
    3578:	00377713          	andi	a4,a4,3
    357c:	00000793          	li	a5,0
    3580:	00071463          	bnez	a4,3588 <__sflush_r+0x1ac>
    3584:	0145a783          	lw	a5,20(a1)
    3588:	00f42423          	sw	a5,8(s0)
    358c:	04905c63          	blez	s1,35e4 <__sflush_r+0x208>
    3590:	02442783          	lw	a5,36(s0)
    3594:	00048693          	mv	a3,s1
    3598:	00090613          	mv	a2,s2
    359c:	01c42583          	lw	a1,28(s0)
    35a0:	00098513          	mv	a0,s3
    35a4:	000780e7          	jalr	a5
    35a8:	00a05c63          	blez	a0,35c0 <__sflush_r+0x1e4>
    35ac:	00a90933          	add	s2,s2,a0
    35b0:	40a484b3          	sub	s1,s1,a0
    35b4:	fc904ee3          	bgtz	s1,3590 <__sflush_r+0x1b4>
    35b8:	00000513          	li	a0,0
    35bc:	0900006f          	j	364c <__sflush_r+0x270>
    35c0:	00c45783          	lhu	a5,12(s0)
    35c4:	0407e793          	ori	a5,a5,64
    35c8:	00f41623          	sh	a5,12(s0)
    35cc:	fff00513          	li	a0,-1
    35d0:	07c0006f          	j	364c <__sflush_r+0x270>
    35d4:	00000513          	li	a0,0
    35d8:	0740006f          	j	364c <__sflush_r+0x270>
    35dc:	00000513          	li	a0,0
    35e0:	06c0006f          	j	364c <__sflush_r+0x270>
    35e4:	00000513          	li	a0,0
    35e8:	0640006f          	j	364c <__sflush_r+0x270>
    35ec:	00c45783          	lhu	a5,12(s0)
    35f0:	fffff737          	lui	a4,0xfffff
    35f4:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.0+0xfffee6f3>
    35f8:	00e7f7b3          	and	a5,a5,a4
    35fc:	01079793          	slli	a5,a5,0x10
    3600:	4107d793          	srai	a5,a5,0x10
    3604:	00f41623          	sh	a5,12(s0)
    3608:	00042223          	sw	zero,4(s0)
    360c:	01042703          	lw	a4,16(s0)
    3610:	00e42023          	sw	a4,0(s0)
    3614:	00c7d793          	srli	a5,a5,0xc
    3618:	0017f793          	andi	a5,a5,1
    361c:	00078463          	beqz	a5,3624 <__sflush_r+0x248>
    3620:	04a42823          	sw	a0,80(s0)
    3624:	0099a023          	sw	s1,0(s3)
    3628:	03042583          	lw	a1,48(s0)
    362c:	00000513          	li	a0,0
    3630:	00058e63          	beqz	a1,364c <__sflush_r+0x270>
    3634:	04040793          	addi	a5,s0,64
    3638:	00f58663          	beq	a1,a5,3644 <__sflush_r+0x268>
    363c:	00098513          	mv	a0,s3
    3640:	74c000ef          	jal	ra,3d8c <_free_r>
    3644:	02042823          	sw	zero,48(s0)
    3648:	00000513          	li	a0,0
    364c:	01c12083          	lw	ra,28(sp)
    3650:	01812403          	lw	s0,24(sp)
    3654:	01412483          	lw	s1,20(sp)
    3658:	01012903          	lw	s2,16(sp)
    365c:	00c12983          	lw	s3,12(sp)
    3660:	02010113          	addi	sp,sp,32
    3664:	00008067          	ret

00003668 <_fflush_r>:
    3668:	ff010113          	addi	sp,sp,-16
    366c:	00112623          	sw	ra,12(sp)
    3670:	00812423          	sw	s0,8(sp)
    3674:	00912223          	sw	s1,4(sp)
    3678:	00050413          	mv	s0,a0
    367c:	00058493          	mv	s1,a1
    3680:	00050663          	beqz	a0,368c <_fflush_r+0x24>
    3684:	03852783          	lw	a5,56(a0)
    3688:	02078263          	beqz	a5,36ac <_fflush_r+0x44>
    368c:	00c49783          	lh	a5,12(s1)
    3690:	00000513          	li	a0,0
    3694:	02079063          	bnez	a5,36b4 <_fflush_r+0x4c>
    3698:	00c12083          	lw	ra,12(sp)
    369c:	00812403          	lw	s0,8(sp)
    36a0:	00412483          	lw	s1,4(sp)
    36a4:	01010113          	addi	sp,sp,16
    36a8:	00008067          	ret
    36ac:	120000ef          	jal	ra,37cc <__sinit>
    36b0:	fddff06f          	j	368c <_fflush_r+0x24>
    36b4:	00048593          	mv	a1,s1
    36b8:	00040513          	mv	a0,s0
    36bc:	d21ff0ef          	jal	ra,33dc <__sflush_r>
    36c0:	fd9ff06f          	j	3698 <_fflush_r+0x30>

000036c4 <fflush>:
    36c4:	ff010113          	addi	sp,sp,-16
    36c8:	00112623          	sw	ra,12(sp)
    36cc:	02050063          	beqz	a0,36ec <fflush+0x28>
    36d0:	00050593          	mv	a1,a0
    36d4:	000117b7          	lui	a5,0x11
    36d8:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    36dc:	f8dff0ef          	jal	ra,3668 <_fflush_r>
    36e0:	00c12083          	lw	ra,12(sp)
    36e4:	01010113          	addi	sp,sp,16
    36e8:	00008067          	ret
    36ec:	000035b7          	lui	a1,0x3
    36f0:	66858593          	addi	a1,a1,1640 # 3668 <_fflush_r>
    36f4:	000117b7          	lui	a5,0x11
    36f8:	a007a503          	lw	a0,-1536(a5) # 10a00 <_global_impure_ptr>
    36fc:	6b9000ef          	jal	ra,45b4 <_fwalk_reent>
    3700:	fe1ff06f          	j	36e0 <fflush+0x1c>

00003704 <__fp_lock>:
    3704:	00000513          	li	a0,0
    3708:	00008067          	ret

0000370c <__fp_unlock>:
    370c:	00000513          	li	a0,0
    3710:	00008067          	ret

00003714 <_cleanup_r>:
    3714:	ff010113          	addi	sp,sp,-16
    3718:	00112623          	sw	ra,12(sp)
    371c:	000065b7          	lui	a1,0x6
    3720:	3f858593          	addi	a1,a1,1016 # 63f8 <_fclose_r>
    3724:	691000ef          	jal	ra,45b4 <_fwalk_reent>
    3728:	00c12083          	lw	ra,12(sp)
    372c:	01010113          	addi	sp,sp,16
    3730:	00008067          	ret

00003734 <__sfmoreglue>:
    3734:	ff010113          	addi	sp,sp,-16
    3738:	00112623          	sw	ra,12(sp)
    373c:	00812423          	sw	s0,8(sp)
    3740:	00912223          	sw	s1,4(sp)
    3744:	01212023          	sw	s2,0(sp)
    3748:	00058913          	mv	s2,a1
    374c:	fff58793          	addi	a5,a1,-1
    3750:	00179413          	slli	s0,a5,0x1
    3754:	00f40433          	add	s0,s0,a5
    3758:	00241413          	slli	s0,s0,0x2
    375c:	00f40433          	add	s0,s0,a5
    3760:	00341413          	slli	s0,s0,0x3
    3764:	07440593          	addi	a1,s0,116
    3768:	19c010ef          	jal	ra,4904 <_malloc_r>
    376c:	00050493          	mv	s1,a0
    3770:	02050063          	beqz	a0,3790 <__sfmoreglue+0x5c>
    3774:	00052023          	sw	zero,0(a0)
    3778:	01252223          	sw	s2,4(a0)
    377c:	00c50513          	addi	a0,a0,12
    3780:	00a4a423          	sw	a0,8(s1)
    3784:	06840613          	addi	a2,s0,104
    3788:	00000593          	li	a1,0
    378c:	861fe0ef          	jal	ra,1fec <memset>
    3790:	00048513          	mv	a0,s1
    3794:	00c12083          	lw	ra,12(sp)
    3798:	00812403          	lw	s0,8(sp)
    379c:	00412483          	lw	s1,4(sp)
    37a0:	00012903          	lw	s2,0(sp)
    37a4:	01010113          	addi	sp,sp,16
    37a8:	00008067          	ret

000037ac <_cleanup>:
    37ac:	ff010113          	addi	sp,sp,-16
    37b0:	00112623          	sw	ra,12(sp)
    37b4:	000117b7          	lui	a5,0x11
    37b8:	a007a503          	lw	a0,-1536(a5) # 10a00 <_global_impure_ptr>
    37bc:	f59ff0ef          	jal	ra,3714 <_cleanup_r>
    37c0:	00c12083          	lw	ra,12(sp)
    37c4:	01010113          	addi	sp,sp,16
    37c8:	00008067          	ret

000037cc <__sinit>:
    37cc:	03852783          	lw	a5,56(a0)
    37d0:	00078463          	beqz	a5,37d8 <__sinit+0xc>
    37d4:	00008067          	ret
    37d8:	fe010113          	addi	sp,sp,-32
    37dc:	00112e23          	sw	ra,28(sp)
    37e0:	00812c23          	sw	s0,24(sp)
    37e4:	00912a23          	sw	s1,20(sp)
    37e8:	01212823          	sw	s2,16(sp)
    37ec:	01312623          	sw	s3,12(sp)
    37f0:	01412423          	sw	s4,8(sp)
    37f4:	01512223          	sw	s5,4(sp)
    37f8:	01612023          	sw	s6,0(sp)
    37fc:	00050413          	mv	s0,a0
    3800:	000037b7          	lui	a5,0x3
    3804:	71478793          	addi	a5,a5,1812 # 3714 <_cleanup_r>
    3808:	02f52e23          	sw	a5,60(a0)
    380c:	2e052023          	sw	zero,736(a0)
    3810:	00300793          	li	a5,3
    3814:	2ef52223          	sw	a5,740(a0)
    3818:	2ec50793          	addi	a5,a0,748
    381c:	2ef52423          	sw	a5,744(a0)
    3820:	00452483          	lw	s1,4(a0)
    3824:	0004a023          	sw	zero,0(s1)
    3828:	0004a223          	sw	zero,4(s1)
    382c:	0004a423          	sw	zero,8(s1)
    3830:	00400793          	li	a5,4
    3834:	00f49623          	sh	a5,12(s1)
    3838:	0604a223          	sw	zero,100(s1)
    383c:	00049723          	sh	zero,14(s1)
    3840:	0004a823          	sw	zero,16(s1)
    3844:	0004aa23          	sw	zero,20(s1)
    3848:	0004ac23          	sw	zero,24(s1)
    384c:	00800613          	li	a2,8
    3850:	00000593          	li	a1,0
    3854:	05c48513          	addi	a0,s1,92
    3858:	f94fe0ef          	jal	ra,1fec <memset>
    385c:	0094ae23          	sw	s1,28(s1)
    3860:	00006ab7          	lui	s5,0x6
    3864:	c78a8a93          	addi	s5,s5,-904 # 5c78 <__sread>
    3868:	0354a023          	sw	s5,32(s1)
    386c:	00006a37          	lui	s4,0x6
    3870:	cd0a0a13          	addi	s4,s4,-816 # 5cd0 <__swrite>
    3874:	0344a223          	sw	s4,36(s1)
    3878:	000069b7          	lui	s3,0x6
    387c:	d5c98993          	addi	s3,s3,-676 # 5d5c <__sseek>
    3880:	0334a423          	sw	s3,40(s1)
    3884:	00006937          	lui	s2,0x6
    3888:	db890913          	addi	s2,s2,-584 # 5db8 <__sclose>
    388c:	0324a623          	sw	s2,44(s1)
    3890:	00842483          	lw	s1,8(s0)
    3894:	0004a023          	sw	zero,0(s1)
    3898:	0004a223          	sw	zero,4(s1)
    389c:	0004a423          	sw	zero,8(s1)
    38a0:	00900793          	li	a5,9
    38a4:	00f49623          	sh	a5,12(s1)
    38a8:	0604a223          	sw	zero,100(s1)
    38ac:	00100b13          	li	s6,1
    38b0:	01649723          	sh	s6,14(s1)
    38b4:	0004a823          	sw	zero,16(s1)
    38b8:	0004aa23          	sw	zero,20(s1)
    38bc:	0004ac23          	sw	zero,24(s1)
    38c0:	00800613          	li	a2,8
    38c4:	00000593          	li	a1,0
    38c8:	05c48513          	addi	a0,s1,92
    38cc:	f20fe0ef          	jal	ra,1fec <memset>
    38d0:	0094ae23          	sw	s1,28(s1)
    38d4:	0354a023          	sw	s5,32(s1)
    38d8:	0344a223          	sw	s4,36(s1)
    38dc:	0334a423          	sw	s3,40(s1)
    38e0:	0324a623          	sw	s2,44(s1)
    38e4:	00c42483          	lw	s1,12(s0)
    38e8:	0004a023          	sw	zero,0(s1)
    38ec:	0004a223          	sw	zero,4(s1)
    38f0:	0004a423          	sw	zero,8(s1)
    38f4:	01200793          	li	a5,18
    38f8:	00f49623          	sh	a5,12(s1)
    38fc:	0604a223          	sw	zero,100(s1)
    3900:	00200793          	li	a5,2
    3904:	00f49723          	sh	a5,14(s1)
    3908:	0004a823          	sw	zero,16(s1)
    390c:	0004aa23          	sw	zero,20(s1)
    3910:	0004ac23          	sw	zero,24(s1)
    3914:	00800613          	li	a2,8
    3918:	00000593          	li	a1,0
    391c:	05c48513          	addi	a0,s1,92
    3920:	eccfe0ef          	jal	ra,1fec <memset>
    3924:	0094ae23          	sw	s1,28(s1)
    3928:	0354a023          	sw	s5,32(s1)
    392c:	0344a223          	sw	s4,36(s1)
    3930:	0334a423          	sw	s3,40(s1)
    3934:	0324a623          	sw	s2,44(s1)
    3938:	03642c23          	sw	s6,56(s0)
    393c:	01c12083          	lw	ra,28(sp)
    3940:	01812403          	lw	s0,24(sp)
    3944:	01412483          	lw	s1,20(sp)
    3948:	01012903          	lw	s2,16(sp)
    394c:	00c12983          	lw	s3,12(sp)
    3950:	00812a03          	lw	s4,8(sp)
    3954:	00412a83          	lw	s5,4(sp)
    3958:	00012b03          	lw	s6,0(sp)
    395c:	02010113          	addi	sp,sp,32
    3960:	00008067          	ret

00003964 <__sfp>:
    3964:	fe010113          	addi	sp,sp,-32
    3968:	00112e23          	sw	ra,28(sp)
    396c:	00812c23          	sw	s0,24(sp)
    3970:	00912a23          	sw	s1,20(sp)
    3974:	01212823          	sw	s2,16(sp)
    3978:	01312623          	sw	s3,12(sp)
    397c:	00050993          	mv	s3,a0
    3980:	000117b7          	lui	a5,0x11
    3984:	a007a903          	lw	s2,-1536(a5) # 10a00 <_global_impure_ptr>
    3988:	03892783          	lw	a5,56(s2)
    398c:	00078863          	beqz	a5,399c <__sfp+0x38>
    3990:	2e090913          	addi	s2,s2,736
    3994:	fff00493          	li	s1,-1
    3998:	0800006f          	j	3a18 <__sfp+0xb4>
    399c:	00090513          	mv	a0,s2
    39a0:	e2dff0ef          	jal	ra,37cc <__sinit>
    39a4:	fedff06f          	j	3990 <__sfp+0x2c>
    39a8:	fff00793          	li	a5,-1
    39ac:	00f41723          	sh	a5,14(s0)
    39b0:	00100793          	li	a5,1
    39b4:	00f41623          	sh	a5,12(s0)
    39b8:	06042223          	sw	zero,100(s0)
    39bc:	00042023          	sw	zero,0(s0)
    39c0:	00042423          	sw	zero,8(s0)
    39c4:	00042223          	sw	zero,4(s0)
    39c8:	00042823          	sw	zero,16(s0)
    39cc:	00042a23          	sw	zero,20(s0)
    39d0:	00042c23          	sw	zero,24(s0)
    39d4:	00800613          	li	a2,8
    39d8:	00000593          	li	a1,0
    39dc:	05c40513          	addi	a0,s0,92
    39e0:	e0cfe0ef          	jal	ra,1fec <memset>
    39e4:	02042823          	sw	zero,48(s0)
    39e8:	02042a23          	sw	zero,52(s0)
    39ec:	04042223          	sw	zero,68(s0)
    39f0:	04042423          	sw	zero,72(s0)
    39f4:	00040513          	mv	a0,s0
    39f8:	01c12083          	lw	ra,28(sp)
    39fc:	01812403          	lw	s0,24(sp)
    3a00:	01412483          	lw	s1,20(sp)
    3a04:	01012903          	lw	s2,16(sp)
    3a08:	00c12983          	lw	s3,12(sp)
    3a0c:	02010113          	addi	sp,sp,32
    3a10:	00008067          	ret
    3a14:	00092903          	lw	s2,0(s2)
    3a18:	00892403          	lw	s0,8(s2)
    3a1c:	00492783          	lw	a5,4(s2)
    3a20:	fff78793          	addi	a5,a5,-1
    3a24:	0007cc63          	bltz	a5,3a3c <__sfp+0xd8>
    3a28:	00c41703          	lh	a4,12(s0)
    3a2c:	f6070ee3          	beqz	a4,39a8 <__sfp+0x44>
    3a30:	06840413          	addi	s0,s0,104
    3a34:	fff78793          	addi	a5,a5,-1
    3a38:	fe9798e3          	bne	a5,s1,3a28 <__sfp+0xc4>
    3a3c:	00092783          	lw	a5,0(s2)
    3a40:	fc079ae3          	bnez	a5,3a14 <__sfp+0xb0>
    3a44:	00400593          	li	a1,4
    3a48:	00098513          	mv	a0,s3
    3a4c:	ce9ff0ef          	jal	ra,3734 <__sfmoreglue>
    3a50:	00050413          	mv	s0,a0
    3a54:	00a92023          	sw	a0,0(s2)
    3a58:	fa051ee3          	bnez	a0,3a14 <__sfp+0xb0>
    3a5c:	00c00793          	li	a5,12
    3a60:	00f9a023          	sw	a5,0(s3)
    3a64:	f91ff06f          	j	39f4 <__sfp+0x90>

00003a68 <__sfp_lock_acquire>:
    3a68:	00008067          	ret

00003a6c <__sfp_lock_release>:
    3a6c:	00008067          	ret

00003a70 <__sinit_lock_acquire>:
    3a70:	00008067          	ret

00003a74 <__sinit_lock_release>:
    3a74:	00008067          	ret

00003a78 <__fp_lock_all>:
    3a78:	ff010113          	addi	sp,sp,-16
    3a7c:	00112623          	sw	ra,12(sp)
    3a80:	000035b7          	lui	a1,0x3
    3a84:	70458593          	addi	a1,a1,1796 # 3704 <__fp_lock>
    3a88:	000117b7          	lui	a5,0x11
    3a8c:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    3a90:	275000ef          	jal	ra,4504 <_fwalk>
    3a94:	00c12083          	lw	ra,12(sp)
    3a98:	01010113          	addi	sp,sp,16
    3a9c:	00008067          	ret

00003aa0 <__fp_unlock_all>:
    3aa0:	ff010113          	addi	sp,sp,-16
    3aa4:	00112623          	sw	ra,12(sp)
    3aa8:	000035b7          	lui	a1,0x3
    3aac:	70c58593          	addi	a1,a1,1804 # 370c <__fp_unlock>
    3ab0:	000117b7          	lui	a5,0x11
    3ab4:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    3ab8:	24d000ef          	jal	ra,4504 <_fwalk>
    3abc:	00c12083          	lw	ra,12(sp)
    3ac0:	01010113          	addi	sp,sp,16
    3ac4:	00008067          	ret

00003ac8 <__fputwc>:
    3ac8:	fe010113          	addi	sp,sp,-32
    3acc:	00112e23          	sw	ra,28(sp)
    3ad0:	00812c23          	sw	s0,24(sp)
    3ad4:	00912a23          	sw	s1,20(sp)
    3ad8:	01212823          	sw	s2,16(sp)
    3adc:	00050493          	mv	s1,a0
    3ae0:	00058913          	mv	s2,a1
    3ae4:	00060413          	mv	s0,a2
    3ae8:	441000ef          	jal	ra,4728 <__locale_mb_cur_max>
    3aec:	00100793          	li	a5,1
    3af0:	00f51c63          	bne	a0,a5,3b08 <__fputwc+0x40>
    3af4:	fff90793          	addi	a5,s2,-1
    3af8:	0fe00713          	li	a4,254
    3afc:	00f76663          	bltu	a4,a5,3b08 <__fputwc+0x40>
    3b00:	01210623          	sb	s2,12(sp)
    3b04:	0240006f          	j	3b28 <__fputwc+0x60>
    3b08:	05c40693          	addi	a3,s0,92
    3b0c:	00090613          	mv	a2,s2
    3b10:	00c10593          	addi	a1,sp,12
    3b14:	00048513          	mv	a0,s1
    3b18:	6dc020ef          	jal	ra,61f4 <_wcrtomb_r>
    3b1c:	fff00793          	li	a5,-1
    3b20:	04f50c63          	beq	a0,a5,3b78 <__fputwc+0xb0>
    3b24:	02050c63          	beqz	a0,3b5c <__fputwc+0x94>
    3b28:	00c14583          	lbu	a1,12(sp)
    3b2c:	00842783          	lw	a5,8(s0)
    3b30:	fff78793          	addi	a5,a5,-1
    3b34:	00f42423          	sw	a5,8(s0)
    3b38:	0007da63          	bgez	a5,3b4c <__fputwc+0x84>
    3b3c:	01842703          	lw	a4,24(s0)
    3b40:	04e7c463          	blt	a5,a4,3b88 <__fputwc+0xc0>
    3b44:	00a00793          	li	a5,10
    3b48:	04f58063          	beq	a1,a5,3b88 <__fputwc+0xc0>
    3b4c:	00042783          	lw	a5,0(s0)
    3b50:	00178713          	addi	a4,a5,1
    3b54:	00e42023          	sw	a4,0(s0)
    3b58:	00b78023          	sb	a1,0(a5)
    3b5c:	00090513          	mv	a0,s2
    3b60:	01c12083          	lw	ra,28(sp)
    3b64:	01812403          	lw	s0,24(sp)
    3b68:	01412483          	lw	s1,20(sp)
    3b6c:	01012903          	lw	s2,16(sp)
    3b70:	02010113          	addi	sp,sp,32
    3b74:	00008067          	ret
    3b78:	00c45783          	lhu	a5,12(s0)
    3b7c:	0407e793          	ori	a5,a5,64
    3b80:	00f41623          	sh	a5,12(s0)
    3b84:	fddff06f          	j	3b60 <__fputwc+0x98>
    3b88:	00040613          	mv	a2,s0
    3b8c:	00048513          	mv	a0,s1
    3b90:	4f4020ef          	jal	ra,6084 <__swbuf_r>
    3b94:	fff00793          	li	a5,-1
    3b98:	fcf512e3          	bne	a0,a5,3b5c <__fputwc+0x94>
    3b9c:	fff00513          	li	a0,-1
    3ba0:	fc1ff06f          	j	3b60 <__fputwc+0x98>

00003ba4 <_fputwc_r>:
    3ba4:	ff010113          	addi	sp,sp,-16
    3ba8:	00112623          	sw	ra,12(sp)
    3bac:	00c61703          	lh	a4,12(a2)
    3bb0:	00d75793          	srli	a5,a4,0xd
    3bb4:	0017f793          	andi	a5,a5,1
    3bb8:	02079063          	bnez	a5,3bd8 <_fputwc_r+0x34>
    3bbc:	06462783          	lw	a5,100(a2)
    3bc0:	000026b7          	lui	a3,0x2
    3bc4:	00d76733          	or	a4,a4,a3
    3bc8:	00e61623          	sh	a4,12(a2)
    3bcc:	00002737          	lui	a4,0x2
    3bd0:	00e7e7b3          	or	a5,a5,a4
    3bd4:	06f62223          	sw	a5,100(a2)
    3bd8:	ef1ff0ef          	jal	ra,3ac8 <__fputwc>
    3bdc:	00c12083          	lw	ra,12(sp)
    3be0:	01010113          	addi	sp,sp,16
    3be4:	00008067          	ret

00003be8 <fputwc>:
    3be8:	ff010113          	addi	sp,sp,-16
    3bec:	00112623          	sw	ra,12(sp)
    3bf0:	00812423          	sw	s0,8(sp)
    3bf4:	00912223          	sw	s1,4(sp)
    3bf8:	01212023          	sw	s2,0(sp)
    3bfc:	00050413          	mv	s0,a0
    3c00:	00058493          	mv	s1,a1
    3c04:	000117b7          	lui	a5,0x11
    3c08:	9f47a903          	lw	s2,-1548(a5) # 109f4 <_impure_ptr>
    3c0c:	00090663          	beqz	s2,3c18 <fputwc+0x30>
    3c10:	03892783          	lw	a5,56(s2)
    3c14:	02078663          	beqz	a5,3c40 <fputwc+0x58>
    3c18:	00048613          	mv	a2,s1
    3c1c:	00040593          	mv	a1,s0
    3c20:	00090513          	mv	a0,s2
    3c24:	f81ff0ef          	jal	ra,3ba4 <_fputwc_r>
    3c28:	00c12083          	lw	ra,12(sp)
    3c2c:	00812403          	lw	s0,8(sp)
    3c30:	00412483          	lw	s1,4(sp)
    3c34:	00012903          	lw	s2,0(sp)
    3c38:	01010113          	addi	sp,sp,16
    3c3c:	00008067          	ret
    3c40:	00090513          	mv	a0,s2
    3c44:	b89ff0ef          	jal	ra,37cc <__sinit>
    3c48:	fd1ff06f          	j	3c18 <fputwc+0x30>

00003c4c <_malloc_trim_r>:
    3c4c:	fe010113          	addi	sp,sp,-32
    3c50:	00112e23          	sw	ra,28(sp)
    3c54:	00812c23          	sw	s0,24(sp)
    3c58:	00912a23          	sw	s1,20(sp)
    3c5c:	01212823          	sw	s2,16(sp)
    3c60:	01312623          	sw	s3,12(sp)
    3c64:	00050993          	mv	s3,a0
    3c68:	00058913          	mv	s2,a1
    3c6c:	6e0010ef          	jal	ra,534c <__malloc_lock>
    3c70:	000107b7          	lui	a5,0x10
    3c74:	5f47a783          	lw	a5,1524(a5) # 105f4 <__malloc_av_+0x8>
    3c78:	0047a483          	lw	s1,4(a5)
    3c7c:	ffc4f493          	andi	s1,s1,-4
    3c80:	000017b7          	lui	a5,0x1
    3c84:	fef78413          	addi	s0,a5,-17 # fef <_nettle_sha256_compress+0xdc3>
    3c88:	41240433          	sub	s0,s0,s2
    3c8c:	00940433          	add	s0,s0,s1
    3c90:	00c45413          	srli	s0,s0,0xc
    3c94:	fff40413          	addi	s0,s0,-1
    3c98:	00c41413          	slli	s0,s0,0xc
    3c9c:	04f44463          	blt	s0,a5,3ce4 <_malloc_trim_r+0x98>
    3ca0:	00000593          	li	a1,0
    3ca4:	00098513          	mv	a0,s3
    3ca8:	455010ef          	jal	ra,58fc <_sbrk_r>
    3cac:	000107b7          	lui	a5,0x10
    3cb0:	5f47a783          	lw	a5,1524(a5) # 105f4 <__malloc_av_+0x8>
    3cb4:	009787b3          	add	a5,a5,s1
    3cb8:	02f50e63          	beq	a0,a5,3cf4 <_malloc_trim_r+0xa8>
    3cbc:	00098513          	mv	a0,s3
    3cc0:	690010ef          	jal	ra,5350 <__malloc_unlock>
    3cc4:	00000513          	li	a0,0
    3cc8:	01c12083          	lw	ra,28(sp)
    3ccc:	01812403          	lw	s0,24(sp)
    3cd0:	01412483          	lw	s1,20(sp)
    3cd4:	01012903          	lw	s2,16(sp)
    3cd8:	00c12983          	lw	s3,12(sp)
    3cdc:	02010113          	addi	sp,sp,32
    3ce0:	00008067          	ret
    3ce4:	00098513          	mv	a0,s3
    3ce8:	668010ef          	jal	ra,5350 <__malloc_unlock>
    3cec:	00000513          	li	a0,0
    3cf0:	fd9ff06f          	j	3cc8 <_malloc_trim_r+0x7c>
    3cf4:	408005b3          	neg	a1,s0
    3cf8:	00098513          	mv	a0,s3
    3cfc:	401010ef          	jal	ra,58fc <_sbrk_r>
    3d00:	fff00793          	li	a5,-1
    3d04:	02f50e63          	beq	a0,a5,3d40 <_malloc_trim_r+0xf4>
    3d08:	000107b7          	lui	a5,0x10
    3d0c:	5f47a783          	lw	a5,1524(a5) # 105f4 <__malloc_av_+0x8>
    3d10:	408484b3          	sub	s1,s1,s0
    3d14:	0014e493          	ori	s1,s1,1
    3d18:	0097a223          	sw	s1,4(a5)
    3d1c:	000117b7          	lui	a5,0x11
    3d20:	0c478793          	addi	a5,a5,196 # 110c4 <__malloc_current_mallinfo>
    3d24:	0007a703          	lw	a4,0(a5)
    3d28:	40870733          	sub	a4,a4,s0
    3d2c:	00e7a023          	sw	a4,0(a5)
    3d30:	00098513          	mv	a0,s3
    3d34:	61c010ef          	jal	ra,5350 <__malloc_unlock>
    3d38:	00100513          	li	a0,1
    3d3c:	f8dff06f          	j	3cc8 <_malloc_trim_r+0x7c>
    3d40:	00000593          	li	a1,0
    3d44:	00098513          	mv	a0,s3
    3d48:	3b5010ef          	jal	ra,58fc <_sbrk_r>
    3d4c:	000107b7          	lui	a5,0x10
    3d50:	5f47a703          	lw	a4,1524(a5) # 105f4 <__malloc_av_+0x8>
    3d54:	40e507b3          	sub	a5,a0,a4
    3d58:	00f00693          	li	a3,15
    3d5c:	02f6d063          	bge	a3,a5,3d7c <_malloc_trim_r+0x130>
    3d60:	000116b7          	lui	a3,0x11
    3d64:	9f86a683          	lw	a3,-1544(a3) # 109f8 <__malloc_sbrk_base>
    3d68:	40d50533          	sub	a0,a0,a3
    3d6c:	000116b7          	lui	a3,0x11
    3d70:	0ca6a223          	sw	a0,196(a3) # 110c4 <__malloc_current_mallinfo>
    3d74:	0017e793          	ori	a5,a5,1
    3d78:	00f72223          	sw	a5,4(a4) # 2004 <memset+0x18>
    3d7c:	00098513          	mv	a0,s3
    3d80:	5d0010ef          	jal	ra,5350 <__malloc_unlock>
    3d84:	00000513          	li	a0,0
    3d88:	f41ff06f          	j	3cc8 <_malloc_trim_r+0x7c>

00003d8c <_free_r>:
    3d8c:	2e058863          	beqz	a1,407c <_free_r+0x2f0>
    3d90:	ff010113          	addi	sp,sp,-16
    3d94:	00112623          	sw	ra,12(sp)
    3d98:	00812423          	sw	s0,8(sp)
    3d9c:	00912223          	sw	s1,4(sp)
    3da0:	00050413          	mv	s0,a0
    3da4:	00058493          	mv	s1,a1
    3da8:	5a4010ef          	jal	ra,534c <__malloc_lock>
    3dac:	ff848513          	addi	a0,s1,-8
    3db0:	ffc4a603          	lw	a2,-4(s1)
    3db4:	ffe67793          	andi	a5,a2,-2
    3db8:	00f506b3          	add	a3,a0,a5
    3dbc:	0046a703          	lw	a4,4(a3)
    3dc0:	ffc77713          	andi	a4,a4,-4
    3dc4:	000105b7          	lui	a1,0x10
    3dc8:	5f45a583          	lw	a1,1524(a1) # 105f4 <__malloc_av_+0x8>
    3dcc:	0ad58863          	beq	a1,a3,3e7c <_free_r+0xf0>
    3dd0:	00e6a223          	sw	a4,4(a3)
    3dd4:	00167613          	andi	a2,a2,1
    3dd8:	02061a63          	bnez	a2,3e0c <_free_r+0x80>
    3ddc:	ff84a603          	lw	a2,-8(s1)
    3de0:	40c50833          	sub	a6,a0,a2
    3de4:	00c78633          	add	a2,a5,a2
    3de8:	00882883          	lw	a7,8(a6)
    3dec:	000105b7          	lui	a1,0x10
    3df0:	5f458593          	addi	a1,a1,1524 # 105f4 <__malloc_av_+0x8>
    3df4:	24b88a63          	beq	a7,a1,4048 <_free_r+0x2bc>
    3df8:	00c82783          	lw	a5,12(a6)
    3dfc:	00f8a623          	sw	a5,12(a7)
    3e00:	0117a423          	sw	a7,8(a5)
    3e04:	00060793          	mv	a5,a2
    3e08:	00080513          	mv	a0,a6
    3e0c:	00e68633          	add	a2,a3,a4
    3e10:	00462603          	lw	a2,4(a2)
    3e14:	00167613          	andi	a2,a2,1
    3e18:	1c060c63          	beqz	a2,3ff0 <_free_r+0x264>
    3e1c:	0017e713          	ori	a4,a5,1
    3e20:	00e52223          	sw	a4,4(a0)
    3e24:	00f50733          	add	a4,a0,a5
    3e28:	00f72023          	sw	a5,0(a4)
    3e2c:	1ff00713          	li	a4,511
    3e30:	0ef76263          	bltu	a4,a5,3f14 <_free_r+0x188>
    3e34:	00010737          	lui	a4,0x10
    3e38:	5ec70713          	addi	a4,a4,1516 # 105ec <__malloc_av_>
    3e3c:	0057d613          	srli	a2,a5,0x5
    3e40:	00100693          	li	a3,1
    3e44:	00c696b3          	sll	a3,a3,a2
    3e48:	00472603          	lw	a2,4(a4)
    3e4c:	00c6e6b3          	or	a3,a3,a2
    3e50:	00d72223          	sw	a3,4(a4)
    3e54:	ff87f793          	andi	a5,a5,-8
    3e58:	00878793          	addi	a5,a5,8
    3e5c:	00e787b3          	add	a5,a5,a4
    3e60:	0007a703          	lw	a4,0(a5)
    3e64:	ff878693          	addi	a3,a5,-8
    3e68:	00d52623          	sw	a3,12(a0)
    3e6c:	00e52423          	sw	a4,8(a0)
    3e70:	00a7a023          	sw	a0,0(a5)
    3e74:	00a72623          	sw	a0,12(a4)
    3e78:	1b40006f          	j	402c <_free_r+0x2a0>
    3e7c:	00e78733          	add	a4,a5,a4
    3e80:	00167613          	andi	a2,a2,1
    3e84:	02061063          	bnez	a2,3ea4 <_free_r+0x118>
    3e88:	ff84a783          	lw	a5,-8(s1)
    3e8c:	40f50533          	sub	a0,a0,a5
    3e90:	00f70733          	add	a4,a4,a5
    3e94:	00c52783          	lw	a5,12(a0)
    3e98:	00852683          	lw	a3,8(a0)
    3e9c:	00f6a623          	sw	a5,12(a3)
    3ea0:	00d7a423          	sw	a3,8(a5)
    3ea4:	00176793          	ori	a5,a4,1
    3ea8:	00f52223          	sw	a5,4(a0)
    3eac:	000107b7          	lui	a5,0x10
    3eb0:	5ea7aa23          	sw	a0,1524(a5) # 105f4 <__malloc_av_+0x8>
    3eb4:	000117b7          	lui	a5,0x11
    3eb8:	9fc7a783          	lw	a5,-1540(a5) # 109fc <__malloc_trim_threshold>
    3ebc:	00f77863          	bgeu	a4,a5,3ecc <_free_r+0x140>
    3ec0:	00040513          	mv	a0,s0
    3ec4:	48c010ef          	jal	ra,5350 <__malloc_unlock>
    3ec8:	16c0006f          	j	4034 <_free_r+0x2a8>
    3ecc:	000117b7          	lui	a5,0x11
    3ed0:	1047a583          	lw	a1,260(a5) # 11104 <__malloc_top_pad>
    3ed4:	00040513          	mv	a0,s0
    3ed8:	d75ff0ef          	jal	ra,3c4c <_malloc_trim_r>
    3edc:	fe5ff06f          	j	3ec0 <_free_r+0x134>
    3ee0:	00010737          	lui	a4,0x10
    3ee4:	5ec70713          	addi	a4,a4,1516 # 105ec <__malloc_av_>
    3ee8:	00a72a23          	sw	a0,20(a4)
    3eec:	00a72823          	sw	a0,16(a4)
    3ef0:	00010737          	lui	a4,0x10
    3ef4:	5f470713          	addi	a4,a4,1524 # 105f4 <__malloc_av_+0x8>
    3ef8:	00e52623          	sw	a4,12(a0)
    3efc:	00e52423          	sw	a4,8(a0)
    3f00:	0017e713          	ori	a4,a5,1
    3f04:	00e52223          	sw	a4,4(a0)
    3f08:	00f50533          	add	a0,a0,a5
    3f0c:	00f52023          	sw	a5,0(a0)
    3f10:	11c0006f          	j	402c <_free_r+0x2a0>
    3f14:	0097d713          	srli	a4,a5,0x9
    3f18:	00400693          	li	a3,4
    3f1c:	04e6ec63          	bltu	a3,a4,3f74 <_free_r+0x1e8>
    3f20:	0067d593          	srli	a1,a5,0x6
    3f24:	03858593          	addi	a1,a1,56
    3f28:	00158713          	addi	a4,a1,1
    3f2c:	00371713          	slli	a4,a4,0x3
    3f30:	000106b7          	lui	a3,0x10
    3f34:	5ec68693          	addi	a3,a3,1516 # 105ec <__malloc_av_>
    3f38:	00d70733          	add	a4,a4,a3
    3f3c:	ff870613          	addi	a2,a4,-8
    3f40:	00072703          	lw	a4,0(a4)
    3f44:	06e60e63          	beq	a2,a4,3fc0 <_free_r+0x234>
    3f48:	00472683          	lw	a3,4(a4)
    3f4c:	ffc6f693          	andi	a3,a3,-4
    3f50:	00d7f663          	bgeu	a5,a3,3f5c <_free_r+0x1d0>
    3f54:	00872703          	lw	a4,8(a4)
    3f58:	fee618e3          	bne	a2,a4,3f48 <_free_r+0x1bc>
    3f5c:	00c72603          	lw	a2,12(a4)
    3f60:	00c52623          	sw	a2,12(a0)
    3f64:	00e52423          	sw	a4,8(a0)
    3f68:	00a62423          	sw	a0,8(a2)
    3f6c:	00a72623          	sw	a0,12(a4)
    3f70:	0bc0006f          	j	402c <_free_r+0x2a0>
    3f74:	01400693          	li	a3,20
    3f78:	05b70593          	addi	a1,a4,91
    3f7c:	fae6f6e3          	bgeu	a3,a4,3f28 <_free_r+0x19c>
    3f80:	05400693          	li	a3,84
    3f84:	00e6e863          	bltu	a3,a4,3f94 <_free_r+0x208>
    3f88:	00c7d593          	srli	a1,a5,0xc
    3f8c:	06e58593          	addi	a1,a1,110
    3f90:	f99ff06f          	j	3f28 <_free_r+0x19c>
    3f94:	15400693          	li	a3,340
    3f98:	00e6e863          	bltu	a3,a4,3fa8 <_free_r+0x21c>
    3f9c:	00f7d593          	srli	a1,a5,0xf
    3fa0:	07758593          	addi	a1,a1,119
    3fa4:	f85ff06f          	j	3f28 <_free_r+0x19c>
    3fa8:	55400693          	li	a3,1364
    3fac:	07e00593          	li	a1,126
    3fb0:	f6e6ece3          	bltu	a3,a4,3f28 <_free_r+0x19c>
    3fb4:	0127d593          	srli	a1,a5,0x12
    3fb8:	07c58593          	addi	a1,a1,124
    3fbc:	f6dff06f          	j	3f28 <_free_r+0x19c>
    3fc0:	00010837          	lui	a6,0x10
    3fc4:	5ec80813          	addi	a6,a6,1516 # 105ec <__malloc_av_>
    3fc8:	41f5d793          	srai	a5,a1,0x1f
    3fcc:	0037f793          	andi	a5,a5,3
    3fd0:	00b787b3          	add	a5,a5,a1
    3fd4:	4027d793          	srai	a5,a5,0x2
    3fd8:	00100693          	li	a3,1
    3fdc:	00f697b3          	sll	a5,a3,a5
    3fe0:	00482683          	lw	a3,4(a6)
    3fe4:	00d7e7b3          	or	a5,a5,a3
    3fe8:	00f82223          	sw	a5,4(a6)
    3fec:	f75ff06f          	j	3f60 <_free_r+0x1d4>
    3ff0:	00e787b3          	add	a5,a5,a4
    3ff4:	0086a603          	lw	a2,8(a3)
    3ff8:	00010737          	lui	a4,0x10
    3ffc:	5f470713          	addi	a4,a4,1524 # 105f4 <__malloc_av_+0x8>
    4000:	eee600e3          	beq	a2,a4,3ee0 <_free_r+0x154>
    4004:	00000613          	li	a2,0
    4008:	00c6a703          	lw	a4,12(a3)
    400c:	0086a683          	lw	a3,8(a3)
    4010:	00e6a623          	sw	a4,12(a3)
    4014:	00d72423          	sw	a3,8(a4)
    4018:	0017e713          	ori	a4,a5,1
    401c:	00e52223          	sw	a4,4(a0)
    4020:	00f50733          	add	a4,a0,a5
    4024:	00f72023          	sw	a5,0(a4)
    4028:	e00602e3          	beqz	a2,3e2c <_free_r+0xa0>
    402c:	00040513          	mv	a0,s0
    4030:	320010ef          	jal	ra,5350 <__malloc_unlock>
    4034:	00c12083          	lw	ra,12(sp)
    4038:	00812403          	lw	s0,8(sp)
    403c:	00412483          	lw	s1,4(sp)
    4040:	01010113          	addi	sp,sp,16
    4044:	00008067          	ret
    4048:	00e685b3          	add	a1,a3,a4
    404c:	0045a583          	lw	a1,4(a1)
    4050:	0015f593          	andi	a1,a1,1
    4054:	00059a63          	bnez	a1,4068 <_free_r+0x2dc>
    4058:	00c707b3          	add	a5,a4,a2
    405c:	00080513          	mv	a0,a6
    4060:	00100613          	li	a2,1
    4064:	fa5ff06f          	j	4008 <_free_r+0x27c>
    4068:	00166713          	ori	a4,a2,1
    406c:	00e82223          	sw	a4,4(a6)
    4070:	00f507b3          	add	a5,a0,a5
    4074:	00c7a023          	sw	a2,0(a5)
    4078:	fb5ff06f          	j	402c <_free_r+0x2a0>
    407c:	00008067          	ret

00004080 <__sfvwrite_r>:
    4080:	00862783          	lw	a5,8(a2)
    4084:	46078863          	beqz	a5,44f4 <__sfvwrite_r+0x474>
    4088:	fc010113          	addi	sp,sp,-64
    408c:	02112e23          	sw	ra,60(sp)
    4090:	02812c23          	sw	s0,56(sp)
    4094:	02912a23          	sw	s1,52(sp)
    4098:	03212823          	sw	s2,48(sp)
    409c:	03312623          	sw	s3,44(sp)
    40a0:	03412423          	sw	s4,40(sp)
    40a4:	03512223          	sw	s5,36(sp)
    40a8:	03612023          	sw	s6,32(sp)
    40ac:	01712e23          	sw	s7,28(sp)
    40b0:	01812c23          	sw	s8,24(sp)
    40b4:	01912a23          	sw	s9,20(sp)
    40b8:	01a12823          	sw	s10,16(sp)
    40bc:	01b12623          	sw	s11,12(sp)
    40c0:	00050b93          	mv	s7,a0
    40c4:	00058413          	mv	s0,a1
    40c8:	00060a13          	mv	s4,a2
    40cc:	00c5d783          	lhu	a5,12(a1)
    40d0:	0087f793          	andi	a5,a5,8
    40d4:	00078663          	beqz	a5,40e0 <__sfvwrite_r+0x60>
    40d8:	0105a783          	lw	a5,16(a1)
    40dc:	00079a63          	bnez	a5,40f0 <__sfvwrite_r+0x70>
    40e0:	00040593          	mv	a1,s0
    40e4:	000b8513          	mv	a0,s7
    40e8:	994ff0ef          	jal	ra,327c <__swsetup_r>
    40ec:	40051863          	bnez	a0,44fc <__sfvwrite_r+0x47c>
    40f0:	000a2483          	lw	s1,0(s4)
    40f4:	00c45783          	lhu	a5,12(s0)
    40f8:	0027f713          	andi	a4,a5,2
    40fc:	06071e63          	bnez	a4,4178 <__sfvwrite_r+0xf8>
    4100:	0017f793          	andi	a5,a5,1
    4104:	14078063          	beqz	a5,4244 <__sfvwrite_r+0x1c4>
    4108:	00000a93          	li	s5,0
    410c:	00000513          	li	a0,0
    4110:	00000b13          	li	s6,0
    4114:	00000993          	li	s3,0
    4118:	00100c93          	li	s9,1
    411c:	00000c13          	li	s8,0
    4120:	27c0006f          	j	439c <__sfvwrite_r+0x31c>
    4124:	0004a983          	lw	s3,0(s1)
    4128:	0044a903          	lw	s2,4(s1)
    412c:	00848493          	addi	s1,s1,8
    4130:	fe090ae3          	beqz	s2,4124 <__sfvwrite_r+0xa4>
    4134:	00090693          	mv	a3,s2
    4138:	012af463          	bgeu	s5,s2,4140 <__sfvwrite_r+0xc0>
    413c:	000a8693          	mv	a3,s5
    4140:	02442783          	lw	a5,36(s0)
    4144:	00098613          	mv	a2,s3
    4148:	01c42583          	lw	a1,28(s0)
    414c:	000b8513          	mv	a0,s7
    4150:	000780e7          	jalr	a5
    4154:	34a05a63          	blez	a0,44a8 <__sfvwrite_r+0x428>
    4158:	00a989b3          	add	s3,s3,a0
    415c:	40a90933          	sub	s2,s2,a0
    4160:	008a2783          	lw	a5,8(s4)
    4164:	40a787b3          	sub	a5,a5,a0
    4168:	00fa2423          	sw	a5,8(s4)
    416c:	fc0792e3          	bnez	a5,4130 <__sfvwrite_r+0xb0>
    4170:	00000513          	li	a0,0
    4174:	3440006f          	j	44b8 <__sfvwrite_r+0x438>
    4178:	00000993          	li	s3,0
    417c:	00000913          	li	s2,0
    4180:	80000ab7          	lui	s5,0x80000
    4184:	c00aca93          	xori	s5,s5,-1024
    4188:	fa9ff06f          	j	4130 <__sfvwrite_r+0xb0>
    418c:	0004ab03          	lw	s6,0(s1)
    4190:	0044a903          	lw	s2,4(s1)
    4194:	00848493          	addi	s1,s1,8
    4198:	fe090ae3          	beqz	s2,418c <__sfvwrite_r+0x10c>
    419c:	00842983          	lw	s3,8(s0)
    41a0:	00c45783          	lhu	a5,12(s0)
    41a4:	2007f713          	andi	a4,a5,512
    41a8:	14070463          	beqz	a4,42f0 <__sfvwrite_r+0x270>
    41ac:	0f396a63          	bltu	s2,s3,42a0 <__sfvwrite_r+0x220>
    41b0:	4807f713          	andi	a4,a5,1152
    41b4:	0e070863          	beqz	a4,42a4 <__sfvwrite_r+0x224>
    41b8:	01042583          	lw	a1,16(s0)
    41bc:	00042d03          	lw	s10,0(s0)
    41c0:	40bd0d33          	sub	s10,s10,a1
    41c4:	01442683          	lw	a3,20(s0)
    41c8:	00169713          	slli	a4,a3,0x1
    41cc:	00d70733          	add	a4,a4,a3
    41d0:	01f75a93          	srli	s5,a4,0x1f
    41d4:	00ea8ab3          	add	s5,s5,a4
    41d8:	401ada93          	srai	s5,s5,0x1
    41dc:	001d0713          	addi	a4,s10,1
    41e0:	01270733          	add	a4,a4,s2
    41e4:	00eaf463          	bgeu	s5,a4,41ec <__sfvwrite_r+0x16c>
    41e8:	00070a93          	mv	s5,a4
    41ec:	4007f793          	andi	a5,a5,1024
    41f0:	06078c63          	beqz	a5,4268 <__sfvwrite_r+0x1e8>
    41f4:	000a8593          	mv	a1,s5
    41f8:	000b8513          	mv	a0,s7
    41fc:	708000ef          	jal	ra,4904 <_malloc_r>
    4200:	00050993          	mv	s3,a0
    4204:	04050c63          	beqz	a0,425c <__sfvwrite_r+0x1dc>
    4208:	000d0613          	mv	a2,s10
    420c:	01042583          	lw	a1,16(s0)
    4210:	c61fd0ef          	jal	ra,1e70 <memcpy>
    4214:	00c45783          	lhu	a5,12(s0)
    4218:	b7f7f793          	andi	a5,a5,-1153
    421c:	0807e793          	ori	a5,a5,128
    4220:	00f41623          	sh	a5,12(s0)
    4224:	01342823          	sw	s3,16(s0)
    4228:	01a989b3          	add	s3,s3,s10
    422c:	01342023          	sw	s3,0(s0)
    4230:	01542a23          	sw	s5,20(s0)
    4234:	00090993          	mv	s3,s2
    4238:	41aa8ab3          	sub	s5,s5,s10
    423c:	01542423          	sw	s5,8(s0)
    4240:	0640006f          	j	42a4 <__sfvwrite_r+0x224>
    4244:	00000b13          	li	s6,0
    4248:	00000913          	li	s2,0
    424c:	80000c37          	lui	s8,0x80000
    4250:	ffec4c93          	xori	s9,s8,-2
    4254:	fffc4c13          	not	s8,s8
    4258:	f41ff06f          	j	4198 <__sfvwrite_r+0x118>
    425c:	00c00793          	li	a5,12
    4260:	00fba023          	sw	a5,0(s7)
    4264:	2440006f          	j	44a8 <__sfvwrite_r+0x428>
    4268:	000a8613          	mv	a2,s5
    426c:	000b8513          	mv	a0,s7
    4270:	0e4010ef          	jal	ra,5354 <_realloc_r>
    4274:	00050993          	mv	s3,a0
    4278:	fa0516e3          	bnez	a0,4224 <__sfvwrite_r+0x1a4>
    427c:	01042583          	lw	a1,16(s0)
    4280:	000b8513          	mv	a0,s7
    4284:	b09ff0ef          	jal	ra,3d8c <_free_r>
    4288:	00c45783          	lhu	a5,12(s0)
    428c:	f7f7f793          	andi	a5,a5,-129
    4290:	00f41623          	sh	a5,12(s0)
    4294:	00c00793          	li	a5,12
    4298:	00fba023          	sw	a5,0(s7)
    429c:	20c0006f          	j	44a8 <__sfvwrite_r+0x428>
    42a0:	00090993          	mv	s3,s2
    42a4:	00098613          	mv	a2,s3
    42a8:	000b0593          	mv	a1,s6
    42ac:	00042503          	lw	a0,0(s0)
    42b0:	789000ef          	jal	ra,5238 <memmove>
    42b4:	00842783          	lw	a5,8(s0)
    42b8:	413787b3          	sub	a5,a5,s3
    42bc:	00f42423          	sw	a5,8(s0)
    42c0:	00042783          	lw	a5,0(s0)
    42c4:	013787b3          	add	a5,a5,s3
    42c8:	00f42023          	sw	a5,0(s0)
    42cc:	00090a93          	mv	s5,s2
    42d0:	015b0b33          	add	s6,s6,s5
    42d4:	41590933          	sub	s2,s2,s5
    42d8:	008a2783          	lw	a5,8(s4)
    42dc:	415787b3          	sub	a5,a5,s5
    42e0:	00fa2423          	sw	a5,8(s4)
    42e4:	ea079ae3          	bnez	a5,4198 <__sfvwrite_r+0x118>
    42e8:	00000513          	li	a0,0
    42ec:	1cc0006f          	j	44b8 <__sfvwrite_r+0x438>
    42f0:	00042503          	lw	a0,0(s0)
    42f4:	01042783          	lw	a5,16(s0)
    42f8:	00a7e663          	bltu	a5,a0,4304 <__sfvwrite_r+0x284>
    42fc:	01442a83          	lw	s5,20(s0)
    4300:	05597663          	bgeu	s2,s5,434c <__sfvwrite_r+0x2cc>
    4304:	01397463          	bgeu	s2,s3,430c <__sfvwrite_r+0x28c>
    4308:	00090993          	mv	s3,s2
    430c:	00098a93          	mv	s5,s3
    4310:	00098613          	mv	a2,s3
    4314:	000b0593          	mv	a1,s6
    4318:	721000ef          	jal	ra,5238 <memmove>
    431c:	00842783          	lw	a5,8(s0)
    4320:	413787b3          	sub	a5,a5,s3
    4324:	00f42423          	sw	a5,8(s0)
    4328:	00042703          	lw	a4,0(s0)
    432c:	01370733          	add	a4,a4,s3
    4330:	00e42023          	sw	a4,0(s0)
    4334:	f8079ee3          	bnez	a5,42d0 <__sfvwrite_r+0x250>
    4338:	00040593          	mv	a1,s0
    433c:	000b8513          	mv	a0,s7
    4340:	b28ff0ef          	jal	ra,3668 <_fflush_r>
    4344:	f80506e3          	beqz	a0,42d0 <__sfvwrite_r+0x250>
    4348:	1600006f          	j	44a8 <__sfvwrite_r+0x428>
    434c:	000c0513          	mv	a0,s8
    4350:	012ce463          	bltu	s9,s2,4358 <__sfvwrite_r+0x2d8>
    4354:	00090513          	mv	a0,s2
    4358:	000a8593          	mv	a1,s5
    435c:	210030ef          	jal	ra,756c <__divsi3>
    4360:	000a8593          	mv	a1,s5
    4364:	1e4030ef          	jal	ra,7548 <__mulsi3>
    4368:	00050693          	mv	a3,a0
    436c:	02442783          	lw	a5,36(s0)
    4370:	000b0613          	mv	a2,s6
    4374:	01c42583          	lw	a1,28(s0)
    4378:	000b8513          	mv	a0,s7
    437c:	000780e7          	jalr	a5
    4380:	00050a93          	mv	s5,a0
    4384:	f4a046e3          	bgtz	a0,42d0 <__sfvwrite_r+0x250>
    4388:	1200006f          	j	44a8 <__sfvwrite_r+0x428>
    438c:	0004ab03          	lw	s6,0(s1)
    4390:	0044a983          	lw	s3,4(s1)
    4394:	00848493          	addi	s1,s1,8
    4398:	000c0513          	mv	a0,s8
    439c:	fe0988e3          	beqz	s3,438c <__sfvwrite_r+0x30c>
    43a0:	06050e63          	beqz	a0,441c <__sfvwrite_r+0x39c>
    43a4:	000a8d13          	mv	s10,s5
    43a8:	0159f463          	bgeu	s3,s5,43b0 <__sfvwrite_r+0x330>
    43ac:	00098d13          	mv	s10,s3
    43b0:	000d0d93          	mv	s11,s10
    43b4:	00842903          	lw	s2,8(s0)
    43b8:	01442683          	lw	a3,20(s0)
    43bc:	00042503          	lw	a0,0(s0)
    43c0:	01042783          	lw	a5,16(s0)
    43c4:	00a7f663          	bgeu	a5,a0,43d0 <__sfvwrite_r+0x350>
    43c8:	00d90933          	add	s2,s2,a3
    43cc:	07a94a63          	blt	s2,s10,4440 <__sfvwrite_r+0x3c0>
    43d0:	08ddce63          	blt	s11,a3,446c <__sfvwrite_r+0x3ec>
    43d4:	02442783          	lw	a5,36(s0)
    43d8:	000b0613          	mv	a2,s6
    43dc:	01c42583          	lw	a1,28(s0)
    43e0:	000b8513          	mv	a0,s7
    43e4:	000780e7          	jalr	a5
    43e8:	00050913          	mv	s2,a0
    43ec:	0aa05e63          	blez	a0,44a8 <__sfvwrite_r+0x428>
    43f0:	412a8ab3          	sub	s5,s5,s2
    43f4:	000c8513          	mv	a0,s9
    43f8:	0a0a8063          	beqz	s5,4498 <__sfvwrite_r+0x418>
    43fc:	012b0b33          	add	s6,s6,s2
    4400:	412989b3          	sub	s3,s3,s2
    4404:	008a2783          	lw	a5,8(s4)
    4408:	412787b3          	sub	a5,a5,s2
    440c:	00fa2423          	sw	a5,8(s4)
    4410:	f80796e3          	bnez	a5,439c <__sfvwrite_r+0x31c>
    4414:	00000513          	li	a0,0
    4418:	0a00006f          	j	44b8 <__sfvwrite_r+0x438>
    441c:	00098613          	mv	a2,s3
    4420:	00a00593          	li	a1,10
    4424:	000b0513          	mv	a0,s6
    4428:	549000ef          	jal	ra,5170 <memchr>
    442c:	00198a93          	addi	s5,s3,1
    4430:	f6050ae3          	beqz	a0,43a4 <__sfvwrite_r+0x324>
    4434:	00150513          	addi	a0,a0,1
    4438:	41650ab3          	sub	s5,a0,s6
    443c:	f69ff06f          	j	43a4 <__sfvwrite_r+0x324>
    4440:	00090613          	mv	a2,s2
    4444:	000b0593          	mv	a1,s6
    4448:	5f1000ef          	jal	ra,5238 <memmove>
    444c:	00042783          	lw	a5,0(s0)
    4450:	012787b3          	add	a5,a5,s2
    4454:	00f42023          	sw	a5,0(s0)
    4458:	00040593          	mv	a1,s0
    445c:	000b8513          	mv	a0,s7
    4460:	a08ff0ef          	jal	ra,3668 <_fflush_r>
    4464:	f80506e3          	beqz	a0,43f0 <__sfvwrite_r+0x370>
    4468:	0400006f          	j	44a8 <__sfvwrite_r+0x428>
    446c:	000d0613          	mv	a2,s10
    4470:	000b0593          	mv	a1,s6
    4474:	5c5000ef          	jal	ra,5238 <memmove>
    4478:	00842783          	lw	a5,8(s0)
    447c:	41b787b3          	sub	a5,a5,s11
    4480:	00f42423          	sw	a5,8(s0)
    4484:	00042783          	lw	a5,0(s0)
    4488:	01a787b3          	add	a5,a5,s10
    448c:	00f42023          	sw	a5,0(s0)
    4490:	000d8913          	mv	s2,s11
    4494:	f5dff06f          	j	43f0 <__sfvwrite_r+0x370>
    4498:	00040593          	mv	a1,s0
    449c:	000b8513          	mv	a0,s7
    44a0:	9c8ff0ef          	jal	ra,3668 <_fflush_r>
    44a4:	f4050ce3          	beqz	a0,43fc <__sfvwrite_r+0x37c>
    44a8:	00c45783          	lhu	a5,12(s0)
    44ac:	0407e793          	ori	a5,a5,64
    44b0:	00f41623          	sh	a5,12(s0)
    44b4:	fff00513          	li	a0,-1
    44b8:	03c12083          	lw	ra,60(sp)
    44bc:	03812403          	lw	s0,56(sp)
    44c0:	03412483          	lw	s1,52(sp)
    44c4:	03012903          	lw	s2,48(sp)
    44c8:	02c12983          	lw	s3,44(sp)
    44cc:	02812a03          	lw	s4,40(sp)
    44d0:	02412a83          	lw	s5,36(sp)
    44d4:	02012b03          	lw	s6,32(sp)
    44d8:	01c12b83          	lw	s7,28(sp)
    44dc:	01812c03          	lw	s8,24(sp)
    44e0:	01412c83          	lw	s9,20(sp)
    44e4:	01012d03          	lw	s10,16(sp)
    44e8:	00c12d83          	lw	s11,12(sp)
    44ec:	04010113          	addi	sp,sp,64
    44f0:	00008067          	ret
    44f4:	00000513          	li	a0,0
    44f8:	00008067          	ret
    44fc:	fff00513          	li	a0,-1
    4500:	fb9ff06f          	j	44b8 <__sfvwrite_r+0x438>

00004504 <_fwalk>:
    4504:	fe010113          	addi	sp,sp,-32
    4508:	00112e23          	sw	ra,28(sp)
    450c:	00812c23          	sw	s0,24(sp)
    4510:	00912a23          	sw	s1,20(sp)
    4514:	01212823          	sw	s2,16(sp)
    4518:	01312623          	sw	s3,12(sp)
    451c:	01412423          	sw	s4,8(sp)
    4520:	01512223          	sw	s5,4(sp)
    4524:	01612023          	sw	s6,0(sp)
    4528:	00058b13          	mv	s6,a1
    452c:	2e050a93          	addi	s5,a0,736
    4530:	00000a13          	li	s4,0
    4534:	00100993          	li	s3,1
    4538:	fff00913          	li	s2,-1
    453c:	0380006f          	j	4574 <_fwalk+0x70>
    4540:	06840413          	addi	s0,s0,104
    4544:	fff48493          	addi	s1,s1,-1
    4548:	03248263          	beq	s1,s2,456c <_fwalk+0x68>
    454c:	00c45783          	lhu	a5,12(s0)
    4550:	fef9f8e3          	bgeu	s3,a5,4540 <_fwalk+0x3c>
    4554:	00e41783          	lh	a5,14(s0)
    4558:	ff2784e3          	beq	a5,s2,4540 <_fwalk+0x3c>
    455c:	00040513          	mv	a0,s0
    4560:	000b00e7          	jalr	s6
    4564:	00aa6a33          	or	s4,s4,a0
    4568:	fd9ff06f          	j	4540 <_fwalk+0x3c>
    456c:	000aaa83          	lw	s5,0(s5) # 80000000 <heap_end.0+0x7ffeeef4>
    4570:	000a8c63          	beqz	s5,4588 <_fwalk+0x84>
    4574:	008aa403          	lw	s0,8(s5)
    4578:	004aa483          	lw	s1,4(s5)
    457c:	fff48493          	addi	s1,s1,-1
    4580:	fc04d6e3          	bgez	s1,454c <_fwalk+0x48>
    4584:	fe9ff06f          	j	456c <_fwalk+0x68>
    4588:	000a0513          	mv	a0,s4
    458c:	01c12083          	lw	ra,28(sp)
    4590:	01812403          	lw	s0,24(sp)
    4594:	01412483          	lw	s1,20(sp)
    4598:	01012903          	lw	s2,16(sp)
    459c:	00c12983          	lw	s3,12(sp)
    45a0:	00812a03          	lw	s4,8(sp)
    45a4:	00412a83          	lw	s5,4(sp)
    45a8:	00012b03          	lw	s6,0(sp)
    45ac:	02010113          	addi	sp,sp,32
    45b0:	00008067          	ret

000045b4 <_fwalk_reent>:
    45b4:	fd010113          	addi	sp,sp,-48
    45b8:	02112623          	sw	ra,44(sp)
    45bc:	02812423          	sw	s0,40(sp)
    45c0:	02912223          	sw	s1,36(sp)
    45c4:	03212023          	sw	s2,32(sp)
    45c8:	01312e23          	sw	s3,28(sp)
    45cc:	01412c23          	sw	s4,24(sp)
    45d0:	01512a23          	sw	s5,20(sp)
    45d4:	01612823          	sw	s6,16(sp)
    45d8:	01712623          	sw	s7,12(sp)
    45dc:	00050b13          	mv	s6,a0
    45e0:	00058b93          	mv	s7,a1
    45e4:	2e050a93          	addi	s5,a0,736
    45e8:	00000a13          	li	s4,0
    45ec:	00100993          	li	s3,1
    45f0:	fff00913          	li	s2,-1
    45f4:	03c0006f          	j	4630 <_fwalk_reent+0x7c>
    45f8:	06840413          	addi	s0,s0,104
    45fc:	fff48493          	addi	s1,s1,-1
    4600:	03248463          	beq	s1,s2,4628 <_fwalk_reent+0x74>
    4604:	00c45783          	lhu	a5,12(s0)
    4608:	fef9f8e3          	bgeu	s3,a5,45f8 <_fwalk_reent+0x44>
    460c:	00e41783          	lh	a5,14(s0)
    4610:	ff2784e3          	beq	a5,s2,45f8 <_fwalk_reent+0x44>
    4614:	00040593          	mv	a1,s0
    4618:	000b0513          	mv	a0,s6
    461c:	000b80e7          	jalr	s7
    4620:	00aa6a33          	or	s4,s4,a0
    4624:	fd5ff06f          	j	45f8 <_fwalk_reent+0x44>
    4628:	000aaa83          	lw	s5,0(s5)
    462c:	000a8c63          	beqz	s5,4644 <_fwalk_reent+0x90>
    4630:	008aa403          	lw	s0,8(s5)
    4634:	004aa483          	lw	s1,4(s5)
    4638:	fff48493          	addi	s1,s1,-1
    463c:	fc04d4e3          	bgez	s1,4604 <_fwalk_reent+0x50>
    4640:	fe9ff06f          	j	4628 <_fwalk_reent+0x74>
    4644:	000a0513          	mv	a0,s4
    4648:	02c12083          	lw	ra,44(sp)
    464c:	02812403          	lw	s0,40(sp)
    4650:	02412483          	lw	s1,36(sp)
    4654:	02012903          	lw	s2,32(sp)
    4658:	01c12983          	lw	s3,28(sp)
    465c:	01812a03          	lw	s4,24(sp)
    4660:	01412a83          	lw	s5,20(sp)
    4664:	01012b03          	lw	s6,16(sp)
    4668:	00c12b83          	lw	s7,12(sp)
    466c:	03010113          	addi	sp,sp,48
    4670:	00008067          	ret

00004674 <__localeconv_l>:
    4674:	0f050513          	addi	a0,a0,240
    4678:	00008067          	ret

0000467c <_localeconv_r>:
    467c:	00010537          	lui	a0,0x10
    4680:	57050513          	addi	a0,a0,1392 # 10570 <__global_locale+0xf0>
    4684:	00008067          	ret

00004688 <localeconv>:
    4688:	00010537          	lui	a0,0x10
    468c:	57050513          	addi	a0,a0,1392 # 10570 <__global_locale+0xf0>
    4690:	00008067          	ret

00004694 <_setlocale_r>:
    4694:	08060463          	beqz	a2,471c <_setlocale_r+0x88>
    4698:	ff010113          	addi	sp,sp,-16
    469c:	00112623          	sw	ra,12(sp)
    46a0:	00812423          	sw	s0,8(sp)
    46a4:	00060413          	mv	s0,a2
    46a8:	000115b7          	lui	a1,0x11
    46ac:	fe858593          	addi	a1,a1,-24 # 10fe8 <__clz_tab+0x204>
    46b0:	00060513          	mv	a0,a2
    46b4:	720010ef          	jal	ra,5dd4 <strcmp>
    46b8:	00051e63          	bnez	a0,46d4 <_setlocale_r+0x40>
    46bc:	00011537          	lui	a0,0x11
    46c0:	fe450513          	addi	a0,a0,-28 # 10fe4 <__clz_tab+0x200>
    46c4:	00c12083          	lw	ra,12(sp)
    46c8:	00812403          	lw	s0,8(sp)
    46cc:	01010113          	addi	sp,sp,16
    46d0:	00008067          	ret
    46d4:	000115b7          	lui	a1,0x11
    46d8:	fe458593          	addi	a1,a1,-28 # 10fe4 <__clz_tab+0x200>
    46dc:	00040513          	mv	a0,s0
    46e0:	6f4010ef          	jal	ra,5dd4 <strcmp>
    46e4:	00051863          	bnez	a0,46f4 <_setlocale_r+0x60>
    46e8:	00011537          	lui	a0,0x11
    46ec:	fe450513          	addi	a0,a0,-28 # 10fe4 <__clz_tab+0x200>
    46f0:	fd5ff06f          	j	46c4 <_setlocale_r+0x30>
    46f4:	000115b7          	lui	a1,0x11
    46f8:	f6458593          	addi	a1,a1,-156 # 10f64 <__clz_tab+0x180>
    46fc:	00040513          	mv	a0,s0
    4700:	6d4010ef          	jal	ra,5dd4 <strcmp>
    4704:	00051863          	bnez	a0,4714 <_setlocale_r+0x80>
    4708:	00011537          	lui	a0,0x11
    470c:	fe450513          	addi	a0,a0,-28 # 10fe4 <__clz_tab+0x200>
    4710:	fb5ff06f          	j	46c4 <_setlocale_r+0x30>
    4714:	00000513          	li	a0,0
    4718:	fadff06f          	j	46c4 <_setlocale_r+0x30>
    471c:	00011537          	lui	a0,0x11
    4720:	fe450513          	addi	a0,a0,-28 # 10fe4 <__clz_tab+0x200>
    4724:	00008067          	ret

00004728 <__locale_mb_cur_max>:
    4728:	000107b7          	lui	a5,0x10
    472c:	5a87c503          	lbu	a0,1448(a5) # 105a8 <__global_locale+0x128>
    4730:	00008067          	ret

00004734 <setlocale>:
    4734:	ff010113          	addi	sp,sp,-16
    4738:	00112623          	sw	ra,12(sp)
    473c:	00058613          	mv	a2,a1
    4740:	00050593          	mv	a1,a0
    4744:	000117b7          	lui	a5,0x11
    4748:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    474c:	f49ff0ef          	jal	ra,4694 <_setlocale_r>
    4750:	00c12083          	lw	ra,12(sp)
    4754:	01010113          	addi	sp,sp,16
    4758:	00008067          	ret

0000475c <__swhatbuf_r>:
    475c:	f9010113          	addi	sp,sp,-112
    4760:	06112623          	sw	ra,108(sp)
    4764:	06812423          	sw	s0,104(sp)
    4768:	06912223          	sw	s1,100(sp)
    476c:	07212023          	sw	s2,96(sp)
    4770:	00058413          	mv	s0,a1
    4774:	00060493          	mv	s1,a2
    4778:	00068913          	mv	s2,a3
    477c:	00e59583          	lh	a1,14(a1)
    4780:	0405ca63          	bltz	a1,47d4 <__swhatbuf_r+0x78>
    4784:	00810613          	addi	a2,sp,8
    4788:	585010ef          	jal	ra,650c <_fstat_r>
    478c:	04054463          	bltz	a0,47d4 <__swhatbuf_r+0x78>
    4790:	0000f7b7          	lui	a5,0xf
    4794:	00c12703          	lw	a4,12(sp)
    4798:	00e7f7b3          	and	a5,a5,a4
    479c:	ffffe737          	lui	a4,0xffffe
    47a0:	00e787b3          	add	a5,a5,a4
    47a4:	0017b793          	seqz	a5,a5
    47a8:	00f92023          	sw	a5,0(s2)
    47ac:	40000793          	li	a5,1024
    47b0:	00001537          	lui	a0,0x1
    47b4:	80050513          	addi	a0,a0,-2048 # 800 <_nettle_sha256_compress+0x5d4>
    47b8:	00f4a023          	sw	a5,0(s1)
    47bc:	06c12083          	lw	ra,108(sp)
    47c0:	06812403          	lw	s0,104(sp)
    47c4:	06412483          	lw	s1,100(sp)
    47c8:	06012903          	lw	s2,96(sp)
    47cc:	07010113          	addi	sp,sp,112
    47d0:	00008067          	ret
    47d4:	00092023          	sw	zero,0(s2)
    47d8:	00c45783          	lhu	a5,12(s0)
    47dc:	0807f793          	andi	a5,a5,128
    47e0:	00078863          	beqz	a5,47f0 <__swhatbuf_r+0x94>
    47e4:	04000793          	li	a5,64
    47e8:	00000513          	li	a0,0
    47ec:	fcdff06f          	j	47b8 <__swhatbuf_r+0x5c>
    47f0:	40000793          	li	a5,1024
    47f4:	00000513          	li	a0,0
    47f8:	fc1ff06f          	j	47b8 <__swhatbuf_r+0x5c>

000047fc <__smakebuf_r>:
    47fc:	fe010113          	addi	sp,sp,-32
    4800:	00112e23          	sw	ra,28(sp)
    4804:	00812c23          	sw	s0,24(sp)
    4808:	00912a23          	sw	s1,20(sp)
    480c:	01212823          	sw	s2,16(sp)
    4810:	00058413          	mv	s0,a1
    4814:	00c5d783          	lhu	a5,12(a1)
    4818:	0027f793          	andi	a5,a5,2
    481c:	02078863          	beqz	a5,484c <__smakebuf_r+0x50>
    4820:	04358793          	addi	a5,a1,67
    4824:	00f5a023          	sw	a5,0(a1)
    4828:	00f5a823          	sw	a5,16(a1)
    482c:	00100793          	li	a5,1
    4830:	00f5aa23          	sw	a5,20(a1)
    4834:	01c12083          	lw	ra,28(sp)
    4838:	01812403          	lw	s0,24(sp)
    483c:	01412483          	lw	s1,20(sp)
    4840:	01012903          	lw	s2,16(sp)
    4844:	02010113          	addi	sp,sp,32
    4848:	00008067          	ret
    484c:	00050493          	mv	s1,a0
    4850:	00810693          	addi	a3,sp,8
    4854:	00c10613          	addi	a2,sp,12
    4858:	f05ff0ef          	jal	ra,475c <__swhatbuf_r>
    485c:	00050913          	mv	s2,a0
    4860:	00c12583          	lw	a1,12(sp)
    4864:	00048513          	mv	a0,s1
    4868:	09c000ef          	jal	ra,4904 <_malloc_r>
    486c:	04050263          	beqz	a0,48b0 <__smakebuf_r+0xb4>
    4870:	000037b7          	lui	a5,0x3
    4874:	71478793          	addi	a5,a5,1812 # 3714 <_cleanup_r>
    4878:	02f4ae23          	sw	a5,60(s1)
    487c:	00c45783          	lhu	a5,12(s0)
    4880:	0807e793          	ori	a5,a5,128
    4884:	00f41623          	sh	a5,12(s0)
    4888:	00a42023          	sw	a0,0(s0)
    488c:	00a42823          	sw	a0,16(s0)
    4890:	00c12783          	lw	a5,12(sp)
    4894:	00f42a23          	sw	a5,20(s0)
    4898:	00812783          	lw	a5,8(sp)
    489c:	04079263          	bnez	a5,48e0 <__smakebuf_r+0xe4>
    48a0:	00c45783          	lhu	a5,12(s0)
    48a4:	0127e533          	or	a0,a5,s2
    48a8:	00a41623          	sh	a0,12(s0)
    48ac:	f89ff06f          	j	4834 <__smakebuf_r+0x38>
    48b0:	00c41783          	lh	a5,12(s0)
    48b4:	2007f713          	andi	a4,a5,512
    48b8:	f6071ee3          	bnez	a4,4834 <__smakebuf_r+0x38>
    48bc:	ffc7f793          	andi	a5,a5,-4
    48c0:	0027e793          	ori	a5,a5,2
    48c4:	00f41623          	sh	a5,12(s0)
    48c8:	04340793          	addi	a5,s0,67
    48cc:	00f42023          	sw	a5,0(s0)
    48d0:	00f42823          	sw	a5,16(s0)
    48d4:	00100793          	li	a5,1
    48d8:	00f42a23          	sw	a5,20(s0)
    48dc:	f59ff06f          	j	4834 <__smakebuf_r+0x38>
    48e0:	00e41583          	lh	a1,14(s0)
    48e4:	00048513          	mv	a0,s1
    48e8:	475010ef          	jal	ra,655c <_isatty_r>
    48ec:	fa050ae3          	beqz	a0,48a0 <__smakebuf_r+0xa4>
    48f0:	00c45783          	lhu	a5,12(s0)
    48f4:	ffc7f793          	andi	a5,a5,-4
    48f8:	0017e793          	ori	a5,a5,1
    48fc:	00f41623          	sh	a5,12(s0)
    4900:	fa1ff06f          	j	48a0 <__smakebuf_r+0xa4>

00004904 <_malloc_r>:
    4904:	fd010113          	addi	sp,sp,-48
    4908:	02112623          	sw	ra,44(sp)
    490c:	02812423          	sw	s0,40(sp)
    4910:	02912223          	sw	s1,36(sp)
    4914:	03212023          	sw	s2,32(sp)
    4918:	01312e23          	sw	s3,28(sp)
    491c:	01412c23          	sw	s4,24(sp)
    4920:	01512a23          	sw	s5,20(sp)
    4924:	01612823          	sw	s6,16(sp)
    4928:	01712623          	sw	s7,12(sp)
    492c:	00050913          	mv	s2,a0
    4930:	00b58793          	addi	a5,a1,11
    4934:	01600713          	li	a4,22
    4938:	74f77263          	bgeu	a4,a5,507c <_malloc_r+0x778>
    493c:	ff87f493          	andi	s1,a5,-8
    4940:	0607ca63          	bltz	a5,49b4 <_malloc_r+0xb0>
    4944:	06b4e863          	bltu	s1,a1,49b4 <_malloc_r+0xb0>
    4948:	205000ef          	jal	ra,534c <__malloc_lock>
    494c:	1f700793          	li	a5,503
    4950:	7497f063          	bgeu	a5,s1,5090 <_malloc_r+0x78c>
    4954:	0094d793          	srli	a5,s1,0x9
    4958:	03f00693          	li	a3,63
    495c:	00078a63          	beqz	a5,4970 <_malloc_r+0x6c>
    4960:	00400713          	li	a4,4
    4964:	08f76c63          	bltu	a4,a5,49fc <_malloc_r+0xf8>
    4968:	0064d693          	srli	a3,s1,0x6
    496c:	03868693          	addi	a3,a3,56
    4970:	00168713          	addi	a4,a3,1
    4974:	00371713          	slli	a4,a4,0x3
    4978:	000107b7          	lui	a5,0x10
    497c:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4980:	00e787b3          	add	a5,a5,a4
    4984:	ff878613          	addi	a2,a5,-8
    4988:	0047a403          	lw	s0,4(a5)
    498c:	0c860063          	beq	a2,s0,4a4c <_malloc_r+0x148>
    4990:	00f00593          	li	a1,15
    4994:	00442783          	lw	a5,4(s0)
    4998:	ffc7f793          	andi	a5,a5,-4
    499c:	40978733          	sub	a4,a5,s1
    49a0:	0ae5c463          	blt	a1,a4,4a48 <_malloc_r+0x144>
    49a4:	1e075c63          	bgez	a4,4b9c <_malloc_r+0x298>
    49a8:	00c42403          	lw	s0,12(s0)
    49ac:	fe8614e3          	bne	a2,s0,4994 <_malloc_r+0x90>
    49b0:	09c0006f          	j	4a4c <_malloc_r+0x148>
    49b4:	00c00793          	li	a5,12
    49b8:	00f92023          	sw	a5,0(s2)
    49bc:	00000513          	li	a0,0
    49c0:	02c12083          	lw	ra,44(sp)
    49c4:	02812403          	lw	s0,40(sp)
    49c8:	02412483          	lw	s1,36(sp)
    49cc:	02012903          	lw	s2,32(sp)
    49d0:	01c12983          	lw	s3,28(sp)
    49d4:	01812a03          	lw	s4,24(sp)
    49d8:	01412a83          	lw	s5,20(sp)
    49dc:	01012b03          	lw	s6,16(sp)
    49e0:	00c12b83          	lw	s7,12(sp)
    49e4:	03010113          	addi	sp,sp,48
    49e8:	00008067          	ret
    49ec:	00c7a403          	lw	s0,12(a5)
    49f0:	00268693          	addi	a3,a3,2
    49f4:	04878e63          	beq	a5,s0,4a50 <_malloc_r+0x14c>
    49f8:	6b80006f          	j	50b0 <_malloc_r+0x7ac>
    49fc:	01400713          	li	a4,20
    4a00:	05b78693          	addi	a3,a5,91
    4a04:	f6f776e3          	bgeu	a4,a5,4970 <_malloc_r+0x6c>
    4a08:	05400713          	li	a4,84
    4a0c:	00f76863          	bltu	a4,a5,4a1c <_malloc_r+0x118>
    4a10:	00c4d693          	srli	a3,s1,0xc
    4a14:	06e68693          	addi	a3,a3,110
    4a18:	f59ff06f          	j	4970 <_malloc_r+0x6c>
    4a1c:	15400713          	li	a4,340
    4a20:	00f76863          	bltu	a4,a5,4a30 <_malloc_r+0x12c>
    4a24:	00f4d693          	srli	a3,s1,0xf
    4a28:	07768693          	addi	a3,a3,119
    4a2c:	f45ff06f          	j	4970 <_malloc_r+0x6c>
    4a30:	55400713          	li	a4,1364
    4a34:	07e00693          	li	a3,126
    4a38:	f2f76ce3          	bltu	a4,a5,4970 <_malloc_r+0x6c>
    4a3c:	0124d693          	srli	a3,s1,0x12
    4a40:	07c68693          	addi	a3,a3,124
    4a44:	f2dff06f          	j	4970 <_malloc_r+0x6c>
    4a48:	fff68693          	addi	a3,a3,-1
    4a4c:	00168693          	addi	a3,a3,1
    4a50:	000107b7          	lui	a5,0x10
    4a54:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4a58:	0107a403          	lw	s0,16(a5)
    4a5c:	00878793          	addi	a5,a5,8
    4a60:	08f40063          	beq	s0,a5,4ae0 <_malloc_r+0x1dc>
    4a64:	00442583          	lw	a1,4(s0)
    4a68:	ffc5f593          	andi	a1,a1,-4
    4a6c:	409587b3          	sub	a5,a1,s1
    4a70:	00078613          	mv	a2,a5
    4a74:	00f00713          	li	a4,15
    4a78:	14f74a63          	blt	a4,a5,4bcc <_malloc_r+0x2c8>
    4a7c:	000107b7          	lui	a5,0x10
    4a80:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4a84:	00878713          	addi	a4,a5,8
    4a88:	00e7aa23          	sw	a4,20(a5)
    4a8c:	00e7a823          	sw	a4,16(a5)
    4a90:	18065263          	bgez	a2,4c14 <_malloc_r+0x310>
    4a94:	1ff00793          	li	a5,511
    4a98:	18b7ee63          	bltu	a5,a1,4c34 <_malloc_r+0x330>
    4a9c:	000107b7          	lui	a5,0x10
    4aa0:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4aa4:	0055d613          	srli	a2,a1,0x5
    4aa8:	00100713          	li	a4,1
    4aac:	00c71733          	sll	a4,a4,a2
    4ab0:	0047a603          	lw	a2,4(a5)
    4ab4:	00c76733          	or	a4,a4,a2
    4ab8:	00e7a223          	sw	a4,4(a5)
    4abc:	ff85f593          	andi	a1,a1,-8
    4ac0:	00858593          	addi	a1,a1,8
    4ac4:	00b787b3          	add	a5,a5,a1
    4ac8:	0007a703          	lw	a4,0(a5)
    4acc:	ff878613          	addi	a2,a5,-8
    4ad0:	00c42623          	sw	a2,12(s0)
    4ad4:	00e42423          	sw	a4,8(s0)
    4ad8:	0087a023          	sw	s0,0(a5)
    4adc:	00872623          	sw	s0,12(a4) # ffffe00c <heap_end.0+0xfffecf00>
    4ae0:	41f6d793          	srai	a5,a3,0x1f
    4ae4:	0037f793          	andi	a5,a5,3
    4ae8:	00d787b3          	add	a5,a5,a3
    4aec:	4027d793          	srai	a5,a5,0x2
    4af0:	00100593          	li	a1,1
    4af4:	00f595b3          	sll	a1,a1,a5
    4af8:	000107b7          	lui	a5,0x10
    4afc:	5f07a783          	lw	a5,1520(a5) # 105f0 <__malloc_av_+0x4>
    4b00:	2cb7ec63          	bltu	a5,a1,4dd8 <_malloc_r+0x4d4>
    4b04:	00b7f733          	and	a4,a5,a1
    4b08:	02071463          	bnez	a4,4b30 <_malloc_r+0x22c>
    4b0c:	ffc6f693          	andi	a3,a3,-4
    4b10:	00468693          	addi	a3,a3,4
    4b14:	00159593          	slli	a1,a1,0x1
    4b18:	00b7f733          	and	a4,a5,a1
    4b1c:	00071a63          	bnez	a4,4b30 <_malloc_r+0x22c>
    4b20:	00468693          	addi	a3,a3,4
    4b24:	00159593          	slli	a1,a1,0x1
    4b28:	00b7f733          	and	a4,a5,a1
    4b2c:	fe070ae3          	beqz	a4,4b20 <_malloc_r+0x21c>
    4b30:	00010337          	lui	t1,0x10
    4b34:	5ec30313          	addi	t1,t1,1516 # 105ec <__malloc_av_>
    4b38:	00f00813          	li	a6,15
    4b3c:	00369893          	slli	a7,a3,0x3
    4b40:	011308b3          	add	a7,t1,a7
    4b44:	00088513          	mv	a0,a7
    4b48:	00068e13          	mv	t3,a3
    4b4c:	00c52403          	lw	s0,12(a0)
    4b50:	02850063          	beq	a0,s0,4b70 <_malloc_r+0x26c>
    4b54:	00442783          	lw	a5,4(s0)
    4b58:	ffc7f793          	andi	a5,a5,-4
    4b5c:	40978733          	sub	a4,a5,s1
    4b60:	1ae84863          	blt	a6,a4,4d10 <_malloc_r+0x40c>
    4b64:	20075263          	bgez	a4,4d68 <_malloc_r+0x464>
    4b68:	00c42403          	lw	s0,12(s0)
    4b6c:	fe8514e3          	bne	a0,s0,4b54 <_malloc_r+0x250>
    4b70:	00850513          	addi	a0,a0,8
    4b74:	001e0e13          	addi	t3,t3,1
    4b78:	003e7793          	andi	a5,t3,3
    4b7c:	fc0798e3          	bnez	a5,4b4c <_malloc_r+0x248>
    4b80:	0036f793          	andi	a5,a3,3
    4b84:	20078a63          	beqz	a5,4d98 <_malloc_r+0x494>
    4b88:	fff68693          	addi	a3,a3,-1
    4b8c:	ff888893          	addi	a7,a7,-8
    4b90:	0088a783          	lw	a5,8(a7)
    4b94:	ff1786e3          	beq	a5,a7,4b80 <_malloc_r+0x27c>
    4b98:	2100006f          	j	4da8 <_malloc_r+0x4a4>
    4b9c:	00c42703          	lw	a4,12(s0)
    4ba0:	00842683          	lw	a3,8(s0)
    4ba4:	00e6a623          	sw	a4,12(a3)
    4ba8:	00d72423          	sw	a3,8(a4)
    4bac:	00f407b3          	add	a5,s0,a5
    4bb0:	0047a703          	lw	a4,4(a5)
    4bb4:	00176713          	ori	a4,a4,1
    4bb8:	00e7a223          	sw	a4,4(a5)
    4bbc:	00090513          	mv	a0,s2
    4bc0:	790000ef          	jal	ra,5350 <__malloc_unlock>
    4bc4:	00840513          	addi	a0,s0,8
    4bc8:	df9ff06f          	j	49c0 <_malloc_r+0xbc>
    4bcc:	009406b3          	add	a3,s0,s1
    4bd0:	0014e493          	ori	s1,s1,1
    4bd4:	00942223          	sw	s1,4(s0)
    4bd8:	00010737          	lui	a4,0x10
    4bdc:	5ec70713          	addi	a4,a4,1516 # 105ec <__malloc_av_>
    4be0:	00d72a23          	sw	a3,20(a4)
    4be4:	00d72823          	sw	a3,16(a4)
    4be8:	00870713          	addi	a4,a4,8
    4bec:	00e6a623          	sw	a4,12(a3)
    4bf0:	00e6a423          	sw	a4,8(a3)
    4bf4:	0017e713          	ori	a4,a5,1
    4bf8:	00e6a223          	sw	a4,4(a3)
    4bfc:	00b405b3          	add	a1,s0,a1
    4c00:	00f5a023          	sw	a5,0(a1)
    4c04:	00090513          	mv	a0,s2
    4c08:	748000ef          	jal	ra,5350 <__malloc_unlock>
    4c0c:	00840513          	addi	a0,s0,8
    4c10:	db1ff06f          	j	49c0 <_malloc_r+0xbc>
    4c14:	00b405b3          	add	a1,s0,a1
    4c18:	0045a783          	lw	a5,4(a1)
    4c1c:	0017e793          	ori	a5,a5,1
    4c20:	00f5a223          	sw	a5,4(a1)
    4c24:	00090513          	mv	a0,s2
    4c28:	728000ef          	jal	ra,5350 <__malloc_unlock>
    4c2c:	00840513          	addi	a0,s0,8
    4c30:	d91ff06f          	j	49c0 <_malloc_r+0xbc>
    4c34:	0095d793          	srli	a5,a1,0x9
    4c38:	00400713          	li	a4,4
    4c3c:	04f76c63          	bltu	a4,a5,4c94 <_malloc_r+0x390>
    4c40:	0065d513          	srli	a0,a1,0x6
    4c44:	03850513          	addi	a0,a0,56
    4c48:	00150713          	addi	a4,a0,1
    4c4c:	00371713          	slli	a4,a4,0x3
    4c50:	000107b7          	lui	a5,0x10
    4c54:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4c58:	00e787b3          	add	a5,a5,a4
    4c5c:	ff878613          	addi	a2,a5,-8
    4c60:	0007a783          	lw	a5,0(a5)
    4c64:	06f60e63          	beq	a2,a5,4ce0 <_malloc_r+0x3dc>
    4c68:	0047a703          	lw	a4,4(a5)
    4c6c:	ffc77713          	andi	a4,a4,-4
    4c70:	00e5f663          	bgeu	a1,a4,4c7c <_malloc_r+0x378>
    4c74:	0087a783          	lw	a5,8(a5)
    4c78:	fef618e3          	bne	a2,a5,4c68 <_malloc_r+0x364>
    4c7c:	00c7a603          	lw	a2,12(a5)
    4c80:	00c42623          	sw	a2,12(s0)
    4c84:	00f42423          	sw	a5,8(s0)
    4c88:	00862423          	sw	s0,8(a2)
    4c8c:	0087a623          	sw	s0,12(a5)
    4c90:	e51ff06f          	j	4ae0 <_malloc_r+0x1dc>
    4c94:	01400713          	li	a4,20
    4c98:	05b78513          	addi	a0,a5,91
    4c9c:	faf776e3          	bgeu	a4,a5,4c48 <_malloc_r+0x344>
    4ca0:	05400713          	li	a4,84
    4ca4:	00f76863          	bltu	a4,a5,4cb4 <_malloc_r+0x3b0>
    4ca8:	00c5d513          	srli	a0,a1,0xc
    4cac:	06e50513          	addi	a0,a0,110
    4cb0:	f99ff06f          	j	4c48 <_malloc_r+0x344>
    4cb4:	15400713          	li	a4,340
    4cb8:	00f76863          	bltu	a4,a5,4cc8 <_malloc_r+0x3c4>
    4cbc:	00f5d513          	srli	a0,a1,0xf
    4cc0:	07750513          	addi	a0,a0,119
    4cc4:	f85ff06f          	j	4c48 <_malloc_r+0x344>
    4cc8:	55400713          	li	a4,1364
    4ccc:	07e00513          	li	a0,126
    4cd0:	f6f76ce3          	bltu	a4,a5,4c48 <_malloc_r+0x344>
    4cd4:	0125d513          	srli	a0,a1,0x12
    4cd8:	07c50513          	addi	a0,a0,124
    4cdc:	f6dff06f          	j	4c48 <_malloc_r+0x344>
    4ce0:	00010837          	lui	a6,0x10
    4ce4:	5ec80813          	addi	a6,a6,1516 # 105ec <__malloc_av_>
    4ce8:	41f55713          	srai	a4,a0,0x1f
    4cec:	00377713          	andi	a4,a4,3
    4cf0:	00a70733          	add	a4,a4,a0
    4cf4:	40275713          	srai	a4,a4,0x2
    4cf8:	00100593          	li	a1,1
    4cfc:	00e59733          	sll	a4,a1,a4
    4d00:	00482583          	lw	a1,4(a6)
    4d04:	00b76733          	or	a4,a4,a1
    4d08:	00e82223          	sw	a4,4(a6)
    4d0c:	f75ff06f          	j	4c80 <_malloc_r+0x37c>
    4d10:	00940633          	add	a2,s0,s1
    4d14:	0014e493          	ori	s1,s1,1
    4d18:	00942223          	sw	s1,4(s0)
    4d1c:	00c42683          	lw	a3,12(s0)
    4d20:	00842583          	lw	a1,8(s0)
    4d24:	00d5a623          	sw	a3,12(a1)
    4d28:	00b6a423          	sw	a1,8(a3)
    4d2c:	000106b7          	lui	a3,0x10
    4d30:	5ec68693          	addi	a3,a3,1516 # 105ec <__malloc_av_>
    4d34:	00c6aa23          	sw	a2,20(a3)
    4d38:	00c6a823          	sw	a2,16(a3)
    4d3c:	00868693          	addi	a3,a3,8
    4d40:	00d62623          	sw	a3,12(a2)
    4d44:	00d62423          	sw	a3,8(a2)
    4d48:	00176693          	ori	a3,a4,1
    4d4c:	00d62223          	sw	a3,4(a2)
    4d50:	00f407b3          	add	a5,s0,a5
    4d54:	00e7a023          	sw	a4,0(a5)
    4d58:	00090513          	mv	a0,s2
    4d5c:	5f4000ef          	jal	ra,5350 <__malloc_unlock>
    4d60:	00840513          	addi	a0,s0,8
    4d64:	c5dff06f          	j	49c0 <_malloc_r+0xbc>
    4d68:	00f407b3          	add	a5,s0,a5
    4d6c:	0047a703          	lw	a4,4(a5)
    4d70:	00176713          	ori	a4,a4,1
    4d74:	00e7a223          	sw	a4,4(a5)
    4d78:	00c42783          	lw	a5,12(s0)
    4d7c:	00842703          	lw	a4,8(s0)
    4d80:	00f72623          	sw	a5,12(a4)
    4d84:	00e7a423          	sw	a4,8(a5)
    4d88:	00090513          	mv	a0,s2
    4d8c:	5c4000ef          	jal	ra,5350 <__malloc_unlock>
    4d90:	00840513          	addi	a0,s0,8
    4d94:	c2dff06f          	j	49c0 <_malloc_r+0xbc>
    4d98:	fff5c713          	not	a4,a1
    4d9c:	00432783          	lw	a5,4(t1)
    4da0:	00e7f7b3          	and	a5,a5,a4
    4da4:	00f32223          	sw	a5,4(t1)
    4da8:	00159593          	slli	a1,a1,0x1
    4dac:	00432703          	lw	a4,4(t1)
    4db0:	02b76463          	bltu	a4,a1,4dd8 <_malloc_r+0x4d4>
    4db4:	02058263          	beqz	a1,4dd8 <_malloc_r+0x4d4>
    4db8:	00b777b3          	and	a5,a4,a1
    4dbc:	00079a63          	bnez	a5,4dd0 <_malloc_r+0x4cc>
    4dc0:	004e0e13          	addi	t3,t3,4
    4dc4:	00159593          	slli	a1,a1,0x1
    4dc8:	00b777b3          	and	a5,a4,a1
    4dcc:	fe078ae3          	beqz	a5,4dc0 <_malloc_r+0x4bc>
    4dd0:	000e0693          	mv	a3,t3
    4dd4:	d69ff06f          	j	4b3c <_malloc_r+0x238>
    4dd8:	000107b7          	lui	a5,0x10
    4ddc:	5f47aa83          	lw	s5,1524(a5) # 105f4 <__malloc_av_+0x8>
    4de0:	004aa983          	lw	s3,4(s5)
    4de4:	ffc9f993          	andi	s3,s3,-4
    4de8:	0099e863          	bltu	s3,s1,4df8 <_malloc_r+0x4f4>
    4dec:	409987b3          	sub	a5,s3,s1
    4df0:	00f00713          	li	a4,15
    4df4:	1af74a63          	blt	a4,a5,4fa8 <_malloc_r+0x6a4>
    4df8:	013a8b33          	add	s6,s5,s3
    4dfc:	000117b7          	lui	a5,0x11
    4e00:	1047a403          	lw	s0,260(a5) # 11104 <__malloc_top_pad>
    4e04:	00848433          	add	s0,s1,s0
    4e08:	000117b7          	lui	a5,0x11
    4e0c:	9f87a703          	lw	a4,-1544(a5) # 109f8 <__malloc_sbrk_base>
    4e10:	fff00793          	li	a5,-1
    4e14:	04f70c63          	beq	a4,a5,4e6c <_malloc_r+0x568>
    4e18:	000017b7          	lui	a5,0x1
    4e1c:	00f78793          	addi	a5,a5,15 # 100f <_nettle_sha256_compress+0xde3>
    4e20:	00f40433          	add	s0,s0,a5
    4e24:	fffff7b7          	lui	a5,0xfffff
    4e28:	00f47433          	and	s0,s0,a5
    4e2c:	00040593          	mv	a1,s0
    4e30:	00090513          	mv	a0,s2
    4e34:	2c9000ef          	jal	ra,58fc <_sbrk_r>
    4e38:	00050a13          	mv	s4,a0
    4e3c:	fff00793          	li	a5,-1
    4e40:	14f50463          	beq	a0,a5,4f88 <_malloc_r+0x684>
    4e44:	03657863          	bgeu	a0,s6,4e74 <_malloc_r+0x570>
    4e48:	000107b7          	lui	a5,0x10
    4e4c:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    4e50:	12fa9c63          	bne	s5,a5,4f88 <_malloc_r+0x684>
    4e54:	00011737          	lui	a4,0x11
    4e58:	0c470713          	addi	a4,a4,196 # 110c4 <__malloc_current_mallinfo>
    4e5c:	00072783          	lw	a5,0(a4)
    4e60:	00f407b3          	add	a5,s0,a5
    4e64:	00f72023          	sw	a5,0(a4)
    4e68:	0240006f          	j	4e8c <_malloc_r+0x588>
    4e6c:	01040413          	addi	s0,s0,16
    4e70:	fbdff06f          	j	4e2c <_malloc_r+0x528>
    4e74:	00011737          	lui	a4,0x11
    4e78:	0c470713          	addi	a4,a4,196 # 110c4 <__malloc_current_mallinfo>
    4e7c:	00072783          	lw	a5,0(a4)
    4e80:	00f407b3          	add	a5,s0,a5
    4e84:	00f72023          	sw	a5,0(a4)
    4e88:	14ab0a63          	beq	s6,a0,4fdc <_malloc_r+0x6d8>
    4e8c:	00011737          	lui	a4,0x11
    4e90:	9f872683          	lw	a3,-1544(a4) # 109f8 <__malloc_sbrk_base>
    4e94:	fff00713          	li	a4,-1
    4e98:	16e68263          	beq	a3,a4,4ffc <_malloc_r+0x6f8>
    4e9c:	416a0b33          	sub	s6,s4,s6
    4ea0:	00fb07b3          	add	a5,s6,a5
    4ea4:	00011737          	lui	a4,0x11
    4ea8:	0cf72223          	sw	a5,196(a4) # 110c4 <__malloc_current_mallinfo>
    4eac:	007a7b13          	andi	s6,s4,7
    4eb0:	140b0c63          	beqz	s6,5008 <_malloc_r+0x704>
    4eb4:	416a0a33          	sub	s4,s4,s6
    4eb8:	008a0a13          	addi	s4,s4,8
    4ebc:	008a0bb3          	add	s7,s4,s0
    4ec0:	00001737          	lui	a4,0x1
    4ec4:	00870793          	addi	a5,a4,8 # 1008 <_nettle_sha256_compress+0xddc>
    4ec8:	416787b3          	sub	a5,a5,s6
    4ecc:	417787b3          	sub	a5,a5,s7
    4ed0:	fff70713          	addi	a4,a4,-1
    4ed4:	00e7f433          	and	s0,a5,a4
    4ed8:	00040593          	mv	a1,s0
    4edc:	00090513          	mv	a0,s2
    4ee0:	21d000ef          	jal	ra,58fc <_sbrk_r>
    4ee4:	fff00793          	li	a5,-1
    4ee8:	14f50863          	beq	a0,a5,5038 <_malloc_r+0x734>
    4eec:	000117b7          	lui	a5,0x11
    4ef0:	0c478793          	addi	a5,a5,196 # 110c4 <__malloc_current_mallinfo>
    4ef4:	0007a703          	lw	a4,0(a5)
    4ef8:	00870733          	add	a4,a4,s0
    4efc:	00e7a023          	sw	a4,0(a5)
    4f00:	00010737          	lui	a4,0x10
    4f04:	5ec70713          	addi	a4,a4,1516 # 105ec <__malloc_av_>
    4f08:	01472423          	sw	s4,8(a4)
    4f0c:	414507b3          	sub	a5,a0,s4
    4f10:	008787b3          	add	a5,a5,s0
    4f14:	0017e793          	ori	a5,a5,1
    4f18:	00fa2223          	sw	a5,4(s4)
    4f1c:	02ea8e63          	beq	s5,a4,4f58 <_malloc_r+0x654>
    4f20:	00f00793          	li	a5,15
    4f24:	1337f263          	bgeu	a5,s3,5048 <_malloc_r+0x744>
    4f28:	ff498793          	addi	a5,s3,-12
    4f2c:	ff87f793          	andi	a5,a5,-8
    4f30:	004aa703          	lw	a4,4(s5)
    4f34:	00177713          	andi	a4,a4,1
    4f38:	00f76733          	or	a4,a4,a5
    4f3c:	00eaa223          	sw	a4,4(s5)
    4f40:	00fa8733          	add	a4,s5,a5
    4f44:	00500693          	li	a3,5
    4f48:	00d72223          	sw	a3,4(a4)
    4f4c:	00d72423          	sw	a3,8(a4)
    4f50:	00f00713          	li	a4,15
    4f54:	10f76463          	bltu	a4,a5,505c <_malloc_r+0x758>
    4f58:	000117b7          	lui	a5,0x11
    4f5c:	0c47a783          	lw	a5,196(a5) # 110c4 <__malloc_current_mallinfo>
    4f60:	00011737          	lui	a4,0x11
    4f64:	10072703          	lw	a4,256(a4) # 11100 <__malloc_max_sbrked_mem>
    4f68:	00f77663          	bgeu	a4,a5,4f74 <_malloc_r+0x670>
    4f6c:	00011737          	lui	a4,0x11
    4f70:	10f72023          	sw	a5,256(a4) # 11100 <__malloc_max_sbrked_mem>
    4f74:	00011737          	lui	a4,0x11
    4f78:	0fc72703          	lw	a4,252(a4) # 110fc <__malloc_max_total_mem>
    4f7c:	00f77663          	bgeu	a4,a5,4f88 <_malloc_r+0x684>
    4f80:	00011737          	lui	a4,0x11
    4f84:	0ef72e23          	sw	a5,252(a4) # 110fc <__malloc_max_total_mem>
    4f88:	000107b7          	lui	a5,0x10
    4f8c:	5f47a783          	lw	a5,1524(a5) # 105f4 <__malloc_av_+0x8>
    4f90:	0047a703          	lw	a4,4(a5)
    4f94:	ffc77713          	andi	a4,a4,-4
    4f98:	409707b3          	sub	a5,a4,s1
    4f9c:	0c976863          	bltu	a4,s1,506c <_malloc_r+0x768>
    4fa0:	00f00713          	li	a4,15
    4fa4:	0cf75463          	bge	a4,a5,506c <_malloc_r+0x768>
    4fa8:	00010737          	lui	a4,0x10
    4fac:	5ec70713          	addi	a4,a4,1516 # 105ec <__malloc_av_>
    4fb0:	00872403          	lw	s0,8(a4)
    4fb4:	0014e693          	ori	a3,s1,1
    4fb8:	00d42223          	sw	a3,4(s0)
    4fbc:	009404b3          	add	s1,s0,s1
    4fc0:	00972423          	sw	s1,8(a4)
    4fc4:	0017e793          	ori	a5,a5,1
    4fc8:	00f4a223          	sw	a5,4(s1)
    4fcc:	00090513          	mv	a0,s2
    4fd0:	380000ef          	jal	ra,5350 <__malloc_unlock>
    4fd4:	00840513          	addi	a0,s0,8
    4fd8:	9e9ff06f          	j	49c0 <_malloc_r+0xbc>
    4fdc:	01451713          	slli	a4,a0,0x14
    4fe0:	ea0716e3          	bnez	a4,4e8c <_malloc_r+0x588>
    4fe4:	000107b7          	lui	a5,0x10
    4fe8:	5f47a703          	lw	a4,1524(a5) # 105f4 <__malloc_av_+0x8>
    4fec:	008987b3          	add	a5,s3,s0
    4ff0:	0017e793          	ori	a5,a5,1
    4ff4:	00f72223          	sw	a5,4(a4)
    4ff8:	f61ff06f          	j	4f58 <_malloc_r+0x654>
    4ffc:	000117b7          	lui	a5,0x11
    5000:	9f47ac23          	sw	s4,-1544(a5) # 109f8 <__malloc_sbrk_base>
    5004:	ea9ff06f          	j	4eac <_malloc_r+0x5a8>
    5008:	008a0bb3          	add	s7,s4,s0
    500c:	417007b3          	neg	a5,s7
    5010:	01479793          	slli	a5,a5,0x14
    5014:	0147d413          	srli	s0,a5,0x14
    5018:	00040593          	mv	a1,s0
    501c:	00090513          	mv	a0,s2
    5020:	0dd000ef          	jal	ra,58fc <_sbrk_r>
    5024:	fff00793          	li	a5,-1
    5028:	ecf512e3          	bne	a0,a5,4eec <_malloc_r+0x5e8>
    502c:	000b8513          	mv	a0,s7
    5030:	000b0413          	mv	s0,s6
    5034:	eb9ff06f          	j	4eec <_malloc_r+0x5e8>
    5038:	ff8b0513          	addi	a0,s6,-8
    503c:	00ab8533          	add	a0,s7,a0
    5040:	00000413          	li	s0,0
    5044:	ea9ff06f          	j	4eec <_malloc_r+0x5e8>
    5048:	000107b7          	lui	a5,0x10
    504c:	5f47a783          	lw	a5,1524(a5) # 105f4 <__malloc_av_+0x8>
    5050:	00100713          	li	a4,1
    5054:	00e7a223          	sw	a4,4(a5)
    5058:	f31ff06f          	j	4f88 <_malloc_r+0x684>
    505c:	008a8593          	addi	a1,s5,8
    5060:	00090513          	mv	a0,s2
    5064:	d29fe0ef          	jal	ra,3d8c <_free_r>
    5068:	ef1ff06f          	j	4f58 <_malloc_r+0x654>
    506c:	00090513          	mv	a0,s2
    5070:	2e0000ef          	jal	ra,5350 <__malloc_unlock>
    5074:	00000513          	li	a0,0
    5078:	949ff06f          	j	49c0 <_malloc_r+0xbc>
    507c:	01000793          	li	a5,16
    5080:	92b7eae3          	bltu	a5,a1,49b4 <_malloc_r+0xb0>
    5084:	00090513          	mv	a0,s2
    5088:	2c4000ef          	jal	ra,534c <__malloc_lock>
    508c:	01000493          	li	s1,16
    5090:	0034d693          	srli	a3,s1,0x3
    5094:	00848713          	addi	a4,s1,8
    5098:	000107b7          	lui	a5,0x10
    509c:	5ec78793          	addi	a5,a5,1516 # 105ec <__malloc_av_>
    50a0:	00e787b3          	add	a5,a5,a4
    50a4:	0047a403          	lw	s0,4(a5)
    50a8:	ff878713          	addi	a4,a5,-8
    50ac:	94e400e3          	beq	s0,a4,49ec <_malloc_r+0xe8>
    50b0:	00442783          	lw	a5,4(s0)
    50b4:	ffc7f793          	andi	a5,a5,-4
    50b8:	00c42703          	lw	a4,12(s0)
    50bc:	00842683          	lw	a3,8(s0)
    50c0:	00e6a623          	sw	a4,12(a3)
    50c4:	00d72423          	sw	a3,8(a4)
    50c8:	00f407b3          	add	a5,s0,a5
    50cc:	0047a703          	lw	a4,4(a5)
    50d0:	00176713          	ori	a4,a4,1
    50d4:	00e7a223          	sw	a4,4(a5)
    50d8:	00090513          	mv	a0,s2
    50dc:	274000ef          	jal	ra,5350 <__malloc_unlock>
    50e0:	00840513          	addi	a0,s0,8
    50e4:	8ddff06f          	j	49c0 <_malloc_r+0xbc>

000050e8 <_mbtowc_r>:
    50e8:	ff010113          	addi	sp,sp,-16
    50ec:	00112623          	sw	ra,12(sp)
    50f0:	000107b7          	lui	a5,0x10
    50f4:	5647a783          	lw	a5,1380(a5) # 10564 <__global_locale+0xe4>
    50f8:	000780e7          	jalr	a5
    50fc:	00c12083          	lw	ra,12(sp)
    5100:	01010113          	addi	sp,sp,16
    5104:	00008067          	ret

00005108 <__ascii_mbtowc>:
    5108:	02058063          	beqz	a1,5128 <__ascii_mbtowc+0x20>
    510c:	04060a63          	beqz	a2,5160 <__ascii_mbtowc+0x58>
    5110:	04068c63          	beqz	a3,5168 <__ascii_mbtowc+0x60>
    5114:	00064783          	lbu	a5,0(a2)
    5118:	00f5a023          	sw	a5,0(a1)
    511c:	00064503          	lbu	a0,0(a2)
    5120:	00a03533          	snez	a0,a0
    5124:	00008067          	ret
    5128:	ff010113          	addi	sp,sp,-16
    512c:	00c10593          	addi	a1,sp,12
    5130:	02060063          	beqz	a2,5150 <__ascii_mbtowc+0x48>
    5134:	02068263          	beqz	a3,5158 <__ascii_mbtowc+0x50>
    5138:	00064783          	lbu	a5,0(a2)
    513c:	00f5a023          	sw	a5,0(a1)
    5140:	00064503          	lbu	a0,0(a2)
    5144:	00a03533          	snez	a0,a0
    5148:	01010113          	addi	sp,sp,16
    514c:	00008067          	ret
    5150:	00000513          	li	a0,0
    5154:	ff5ff06f          	j	5148 <__ascii_mbtowc+0x40>
    5158:	ffe00513          	li	a0,-2
    515c:	fedff06f          	j	5148 <__ascii_mbtowc+0x40>
    5160:	00000513          	li	a0,0
    5164:	00008067          	ret
    5168:	ffe00513          	li	a0,-2
    516c:	00008067          	ret

00005170 <memchr>:
    5170:	0ff5f693          	zext.b	a3,a1
    5174:	00357793          	andi	a5,a0,3
    5178:	02078a63          	beqz	a5,51ac <memchr+0x3c>
    517c:	fff60793          	addi	a5,a2,-1
    5180:	0a060463          	beqz	a2,5228 <memchr+0xb8>
    5184:	fff00613          	li	a2,-1
    5188:	00054703          	lbu	a4,0(a0)
    518c:	0ad70463          	beq	a4,a3,5234 <memchr+0xc4>
    5190:	00150513          	addi	a0,a0,1
    5194:	00357713          	andi	a4,a0,3
    5198:	00070c63          	beqz	a4,51b0 <memchr+0x40>
    519c:	fff78793          	addi	a5,a5,-1
    51a0:	fec794e3          	bne	a5,a2,5188 <memchr+0x18>
    51a4:	00000513          	li	a0,0
    51a8:	00008067          	ret
    51ac:	00060793          	mv	a5,a2
    51b0:	00300713          	li	a4,3
    51b4:	04f77a63          	bgeu	a4,a5,5208 <memchr+0x98>
    51b8:	0ff5f593          	zext.b	a1,a1
    51bc:	00859713          	slli	a4,a1,0x8
    51c0:	00b76733          	or	a4,a4,a1
    51c4:	01071893          	slli	a7,a4,0x10
    51c8:	00e8e8b3          	or	a7,a7,a4
    51cc:	feff0837          	lui	a6,0xfeff0
    51d0:	eff80813          	addi	a6,a6,-257 # fefefeff <heap_end.0+0xfefdedf3>
    51d4:	808085b7          	lui	a1,0x80808
    51d8:	08058593          	addi	a1,a1,128 # 80808080 <heap_end.0+0x807f6f74>
    51dc:	00300313          	li	t1,3
    51e0:	00052703          	lw	a4,0(a0)
    51e4:	00e8c733          	xor	a4,a7,a4
    51e8:	01070633          	add	a2,a4,a6
    51ec:	fff74713          	not	a4,a4
    51f0:	00e67733          	and	a4,a2,a4
    51f4:	00b77733          	and	a4,a4,a1
    51f8:	00071863          	bnez	a4,5208 <memchr+0x98>
    51fc:	ffc78793          	addi	a5,a5,-4
    5200:	00450513          	addi	a0,a0,4
    5204:	fcf36ee3          	bltu	t1,a5,51e0 <memchr+0x70>
    5208:	02078463          	beqz	a5,5230 <memchr+0xc0>
    520c:	00f507b3          	add	a5,a0,a5
    5210:	00054703          	lbu	a4,0(a0)
    5214:	02d70063          	beq	a4,a3,5234 <memchr+0xc4>
    5218:	00150513          	addi	a0,a0,1
    521c:	fea79ae3          	bne	a5,a0,5210 <memchr+0xa0>
    5220:	00000513          	li	a0,0
    5224:	00008067          	ret
    5228:	00000513          	li	a0,0
    522c:	00008067          	ret
    5230:	00000513          	li	a0,0
    5234:	00008067          	ret

00005238 <memmove>:
    5238:	02a5f663          	bgeu	a1,a0,5264 <memmove+0x2c>
    523c:	00c58733          	add	a4,a1,a2
    5240:	02e57263          	bgeu	a0,a4,5264 <memmove+0x2c>
    5244:	00c507b3          	add	a5,a0,a2
    5248:	10060063          	beqz	a2,5348 <memmove+0x110>
    524c:	fff70713          	addi	a4,a4,-1
    5250:	fff78793          	addi	a5,a5,-1
    5254:	00074683          	lbu	a3,0(a4)
    5258:	00d78023          	sb	a3,0(a5)
    525c:	fef518e3          	bne	a0,a5,524c <memmove+0x14>
    5260:	00008067          	ret
    5264:	00f00793          	li	a5,15
    5268:	00c7fe63          	bgeu	a5,a2,5284 <memmove+0x4c>
    526c:	00b567b3          	or	a5,a0,a1
    5270:	0037f793          	andi	a5,a5,3
    5274:	04078663          	beqz	a5,52c0 <memmove+0x88>
    5278:	fff60693          	addi	a3,a2,-1
    527c:	00050793          	mv	a5,a0
    5280:	0100006f          	j	5290 <memmove+0x58>
    5284:	00050793          	mv	a5,a0
    5288:	fff60693          	addi	a3,a2,-1
    528c:	02060863          	beqz	a2,52bc <memmove+0x84>
    5290:	00168693          	addi	a3,a3,1
    5294:	00d786b3          	add	a3,a5,a3
    5298:	00158593          	addi	a1,a1,1
    529c:	00178793          	addi	a5,a5,1
    52a0:	fff5c703          	lbu	a4,-1(a1)
    52a4:	fee78fa3          	sb	a4,-1(a5)
    52a8:	fed798e3          	bne	a5,a3,5298 <memmove+0x60>
    52ac:	00008067          	ret
    52b0:	00070793          	mv	a5,a4
    52b4:	00068613          	mv	a2,a3
    52b8:	fd1ff06f          	j	5288 <memmove+0x50>
    52bc:	00008067          	ret
    52c0:	ff060893          	addi	a7,a2,-16
    52c4:	ff08f893          	andi	a7,a7,-16
    52c8:	01088893          	addi	a7,a7,16
    52cc:	01150833          	add	a6,a0,a7
    52d0:	00058793          	mv	a5,a1
    52d4:	00050713          	mv	a4,a0
    52d8:	0007a683          	lw	a3,0(a5)
    52dc:	00d72023          	sw	a3,0(a4)
    52e0:	0047a683          	lw	a3,4(a5)
    52e4:	00d72223          	sw	a3,4(a4)
    52e8:	0087a683          	lw	a3,8(a5)
    52ec:	00d72423          	sw	a3,8(a4)
    52f0:	01078793          	addi	a5,a5,16
    52f4:	01070713          	addi	a4,a4,16
    52f8:	ffc7a683          	lw	a3,-4(a5)
    52fc:	fed72e23          	sw	a3,-4(a4)
    5300:	fce81ce3          	bne	a6,a4,52d8 <memmove+0xa0>
    5304:	011585b3          	add	a1,a1,a7
    5308:	00f67693          	andi	a3,a2,15
    530c:	00c67793          	andi	a5,a2,12
    5310:	fa0780e3          	beqz	a5,52b0 <memmove+0x78>
    5314:	ffc68813          	addi	a6,a3,-4
    5318:	ffc87813          	andi	a6,a6,-4
    531c:	00480813          	addi	a6,a6,4
    5320:	010707b3          	add	a5,a4,a6
    5324:	00058693          	mv	a3,a1
    5328:	00468693          	addi	a3,a3,4
    532c:	00470713          	addi	a4,a4,4
    5330:	ffc6a883          	lw	a7,-4(a3)
    5334:	ff172e23          	sw	a7,-4(a4)
    5338:	fef718e3          	bne	a4,a5,5328 <memmove+0xf0>
    533c:	010585b3          	add	a1,a1,a6
    5340:	00367613          	andi	a2,a2,3
    5344:	f45ff06f          	j	5288 <memmove+0x50>
    5348:	00008067          	ret

0000534c <__malloc_lock>:
    534c:	00008067          	ret

00005350 <__malloc_unlock>:
    5350:	00008067          	ret

00005354 <_realloc_r>:
    5354:	fd010113          	addi	sp,sp,-48
    5358:	02112623          	sw	ra,44(sp)
    535c:	02812423          	sw	s0,40(sp)
    5360:	02912223          	sw	s1,36(sp)
    5364:	03212023          	sw	s2,32(sp)
    5368:	01312e23          	sw	s3,28(sp)
    536c:	01412c23          	sw	s4,24(sp)
    5370:	01512a23          	sw	s5,20(sp)
    5374:	01612823          	sw	s6,16(sp)
    5378:	01712623          	sw	s7,12(sp)
    537c:	00050a13          	mv	s4,a0
    5380:	00060993          	mv	s3,a2
    5384:	02058c63          	beqz	a1,53bc <_realloc_r+0x68>
    5388:	00058413          	mv	s0,a1
    538c:	fc1ff0ef          	jal	ra,534c <__malloc_lock>
    5390:	ffc42783          	lw	a5,-4(s0)
    5394:	00b98913          	addi	s2,s3,11
    5398:	01600713          	li	a4,22
    539c:	03277863          	bgeu	a4,s2,53cc <_realloc_r+0x78>
    53a0:	ff897913          	andi	s2,s2,-8
    53a4:	00090713          	mv	a4,s2
    53a8:	02095663          	bgez	s2,53d4 <_realloc_r+0x80>
    53ac:	00c00793          	li	a5,12
    53b0:	00fa2023          	sw	a5,0(s4)
    53b4:	00000993          	li	s3,0
    53b8:	2d80006f          	j	5690 <_realloc_r+0x33c>
    53bc:	00060593          	mv	a1,a2
    53c0:	d44ff0ef          	jal	ra,4904 <_malloc_r>
    53c4:	00050993          	mv	s3,a0
    53c8:	2c80006f          	j	5690 <_realloc_r+0x33c>
    53cc:	01000913          	li	s2,16
    53d0:	01000713          	li	a4,16
    53d4:	fd396ce3          	bltu	s2,s3,53ac <_realloc_r+0x58>
    53d8:	ff840a93          	addi	s5,s0,-8
    53dc:	ffc7f493          	andi	s1,a5,-4
    53e0:	26e4dc63          	bge	s1,a4,5658 <_realloc_r+0x304>
    53e4:	009a86b3          	add	a3,s5,s1
    53e8:	00010637          	lui	a2,0x10
    53ec:	5f462603          	lw	a2,1524(a2) # 105f4 <__malloc_av_+0x8>
    53f0:	42d60e63          	beq	a2,a3,582c <_realloc_r+0x4d8>
    53f4:	0046a603          	lw	a2,4(a3)
    53f8:	ffe67593          	andi	a1,a2,-2
    53fc:	00b685b3          	add	a1,a3,a1
    5400:	0045a583          	lw	a1,4(a1)
    5404:	0015f593          	andi	a1,a1,1
    5408:	36058c63          	beqz	a1,5780 <_realloc_r+0x42c>
    540c:	0017f793          	andi	a5,a5,1
    5410:	00079e63          	bnez	a5,542c <_realloc_r+0xd8>
    5414:	ff842b83          	lw	s7,-8(s0)
    5418:	417a8bb3          	sub	s7,s5,s7
    541c:	004ba783          	lw	a5,4(s7)
    5420:	ffc7f793          	andi	a5,a5,-4
    5424:	00f48b33          	add	s6,s1,a5
    5428:	14eb5c63          	bge	s6,a4,5580 <_realloc_r+0x22c>
    542c:	00098593          	mv	a1,s3
    5430:	000a0513          	mv	a0,s4
    5434:	cd0ff0ef          	jal	ra,4904 <_malloc_r>
    5438:	00050993          	mv	s3,a0
    543c:	20050263          	beqz	a0,5640 <_realloc_r+0x2ec>
    5440:	ffc42783          	lw	a5,-4(s0)
    5444:	ffe7f793          	andi	a5,a5,-2
    5448:	00fa87b3          	add	a5,s5,a5
    544c:	ff850713          	addi	a4,a0,-8
    5450:	1ee78e63          	beq	a5,a4,564c <_realloc_r+0x2f8>
    5454:	ffc48613          	addi	a2,s1,-4
    5458:	02400793          	li	a5,36
    545c:	2cc7ee63          	bltu	a5,a2,5738 <_realloc_r+0x3e4>
    5460:	01300793          	li	a5,19
    5464:	28c7fe63          	bgeu	a5,a2,5700 <_realloc_r+0x3ac>
    5468:	00042783          	lw	a5,0(s0)
    546c:	00f52023          	sw	a5,0(a0)
    5470:	00442783          	lw	a5,4(s0)
    5474:	00f52223          	sw	a5,4(a0)
    5478:	01b00793          	li	a5,27
    547c:	24c7e263          	bltu	a5,a2,56c0 <_realloc_r+0x36c>
    5480:	00840713          	addi	a4,s0,8
    5484:	00850793          	addi	a5,a0,8
    5488:	2800006f          	j	5708 <_realloc_r+0x3b4>
    548c:	012a8ab3          	add	s5,s5,s2
    5490:	000107b7          	lui	a5,0x10
    5494:	5f57aa23          	sw	s5,1524(a5) # 105f4 <__malloc_av_+0x8>
    5498:	412607b3          	sub	a5,a2,s2
    549c:	0017e793          	ori	a5,a5,1
    54a0:	00faa223          	sw	a5,4(s5)
    54a4:	ffc42783          	lw	a5,-4(s0)
    54a8:	0017f793          	andi	a5,a5,1
    54ac:	0127e7b3          	or	a5,a5,s2
    54b0:	fef42e23          	sw	a5,-4(s0)
    54b4:	000a0513          	mv	a0,s4
    54b8:	e99ff0ef          	jal	ra,5350 <__malloc_unlock>
    54bc:	00040993          	mv	s3,s0
    54c0:	1d00006f          	j	5690 <_realloc_r+0x33c>
    54c4:	00c6a783          	lw	a5,12(a3)
    54c8:	0086a703          	lw	a4,8(a3)
    54cc:	00f72623          	sw	a5,12(a4)
    54d0:	00e7a423          	sw	a4,8(a5)
    54d4:	00058493          	mv	s1,a1
    54d8:	1800006f          	j	5658 <_realloc_r+0x304>
    54dc:	00842783          	lw	a5,8(s0)
    54e0:	00fba823          	sw	a5,16(s7)
    54e4:	00c42783          	lw	a5,12(s0)
    54e8:	00fbaa23          	sw	a5,20(s7)
    54ec:	02400793          	li	a5,36
    54f0:	00f60863          	beq	a2,a5,5500 <_realloc_r+0x1ac>
    54f4:	01040413          	addi	s0,s0,16
    54f8:	018b8793          	addi	a5,s7,24
    54fc:	3b40006f          	j	58b0 <_realloc_r+0x55c>
    5500:	01042783          	lw	a5,16(s0)
    5504:	00fbac23          	sw	a5,24(s7)
    5508:	020b8793          	addi	a5,s7,32
    550c:	01442703          	lw	a4,20(s0)
    5510:	00ebae23          	sw	a4,28(s7)
    5514:	01840413          	addi	s0,s0,24
    5518:	3980006f          	j	58b0 <_realloc_r+0x55c>
    551c:	00040593          	mv	a1,s0
    5520:	00098513          	mv	a0,s3
    5524:	d15ff0ef          	jal	ra,5238 <memmove>
    5528:	3a00006f          	j	58c8 <_realloc_r+0x574>
    552c:	00842783          	lw	a5,8(s0)
    5530:	00fba823          	sw	a5,16(s7)
    5534:	00c42783          	lw	a5,12(s0)
    5538:	00fbaa23          	sw	a5,20(s7)
    553c:	02400793          	li	a5,36
    5540:	00f60863          	beq	a2,a5,5550 <_realloc_r+0x1fc>
    5544:	01040413          	addi	s0,s0,16
    5548:	018b8513          	addi	a0,s7,24
    554c:	2bc0006f          	j	5808 <_realloc_r+0x4b4>
    5550:	01042783          	lw	a5,16(s0)
    5554:	00fbac23          	sw	a5,24(s7)
    5558:	020b8513          	addi	a0,s7,32
    555c:	01442783          	lw	a5,20(s0)
    5560:	00fbae23          	sw	a5,28(s7)
    5564:	01840413          	addi	s0,s0,24
    5568:	2a00006f          	j	5808 <_realloc_r+0x4b4>
    556c:	00040593          	mv	a1,s0
    5570:	cc9ff0ef          	jal	ra,5238 <memmove>
    5574:	000b0493          	mv	s1,s6
    5578:	000b8a93          	mv	s5,s7
    557c:	0dc0006f          	j	5658 <_realloc_r+0x304>
    5580:	00cba783          	lw	a5,12(s7)
    5584:	008ba703          	lw	a4,8(s7)
    5588:	00f72623          	sw	a5,12(a4)
    558c:	00e7a423          	sw	a4,8(a5)
    5590:	008b8513          	addi	a0,s7,8
    5594:	ffc48613          	addi	a2,s1,-4
    5598:	02400793          	li	a5,36
    559c:	08c7e863          	bltu	a5,a2,562c <_realloc_r+0x2d8>
    55a0:	01300793          	li	a5,19
    55a4:	02c7f263          	bgeu	a5,a2,55c8 <_realloc_r+0x274>
    55a8:	00042783          	lw	a5,0(s0)
    55ac:	00fba423          	sw	a5,8(s7)
    55b0:	00442783          	lw	a5,4(s0)
    55b4:	00fba623          	sw	a5,12(s7)
    55b8:	01b00793          	li	a5,27
    55bc:	02c7e863          	bltu	a5,a2,55ec <_realloc_r+0x298>
    55c0:	00840413          	addi	s0,s0,8
    55c4:	010b8513          	addi	a0,s7,16
    55c8:	00042783          	lw	a5,0(s0)
    55cc:	00f52023          	sw	a5,0(a0)
    55d0:	00442783          	lw	a5,4(s0)
    55d4:	00f52223          	sw	a5,4(a0)
    55d8:	00842783          	lw	a5,8(s0)
    55dc:	00f52423          	sw	a5,8(a0)
    55e0:	000b0493          	mv	s1,s6
    55e4:	000b8a93          	mv	s5,s7
    55e8:	0700006f          	j	5658 <_realloc_r+0x304>
    55ec:	00842783          	lw	a5,8(s0)
    55f0:	00fba823          	sw	a5,16(s7)
    55f4:	00c42783          	lw	a5,12(s0)
    55f8:	00fbaa23          	sw	a5,20(s7)
    55fc:	02400793          	li	a5,36
    5600:	00f60863          	beq	a2,a5,5610 <_realloc_r+0x2bc>
    5604:	01040413          	addi	s0,s0,16
    5608:	018b8513          	addi	a0,s7,24
    560c:	fbdff06f          	j	55c8 <_realloc_r+0x274>
    5610:	01042783          	lw	a5,16(s0)
    5614:	00fbac23          	sw	a5,24(s7)
    5618:	020b8513          	addi	a0,s7,32
    561c:	01442783          	lw	a5,20(s0)
    5620:	00fbae23          	sw	a5,28(s7)
    5624:	01840413          	addi	s0,s0,24
    5628:	fa1ff06f          	j	55c8 <_realloc_r+0x274>
    562c:	00040593          	mv	a1,s0
    5630:	c09ff0ef          	jal	ra,5238 <memmove>
    5634:	000b0493          	mv	s1,s6
    5638:	000b8a93          	mv	s5,s7
    563c:	01c0006f          	j	5658 <_realloc_r+0x304>
    5640:	000a0513          	mv	a0,s4
    5644:	d0dff0ef          	jal	ra,5350 <__malloc_unlock>
    5648:	0480006f          	j	5690 <_realloc_r+0x33c>
    564c:	ffc52783          	lw	a5,-4(a0)
    5650:	ffc7f793          	andi	a5,a5,-4
    5654:	00f484b3          	add	s1,s1,a5
    5658:	412487b3          	sub	a5,s1,s2
    565c:	00f00713          	li	a4,15
    5660:	0ef76263          	bltu	a4,a5,5744 <_realloc_r+0x3f0>
    5664:	004aa783          	lw	a5,4(s5)
    5668:	0017f793          	andi	a5,a5,1
    566c:	0097e7b3          	or	a5,a5,s1
    5670:	00faa223          	sw	a5,4(s5)
    5674:	009a84b3          	add	s1,s5,s1
    5678:	0044a783          	lw	a5,4(s1)
    567c:	0017e793          	ori	a5,a5,1
    5680:	00f4a223          	sw	a5,4(s1)
    5684:	000a0513          	mv	a0,s4
    5688:	cc9ff0ef          	jal	ra,5350 <__malloc_unlock>
    568c:	008a8993          	addi	s3,s5,8
    5690:	00098513          	mv	a0,s3
    5694:	02c12083          	lw	ra,44(sp)
    5698:	02812403          	lw	s0,40(sp)
    569c:	02412483          	lw	s1,36(sp)
    56a0:	02012903          	lw	s2,32(sp)
    56a4:	01c12983          	lw	s3,28(sp)
    56a8:	01812a03          	lw	s4,24(sp)
    56ac:	01412a83          	lw	s5,20(sp)
    56b0:	01012b03          	lw	s6,16(sp)
    56b4:	00c12b83          	lw	s7,12(sp)
    56b8:	03010113          	addi	sp,sp,48
    56bc:	00008067          	ret
    56c0:	00842783          	lw	a5,8(s0)
    56c4:	00f52423          	sw	a5,8(a0)
    56c8:	00c42783          	lw	a5,12(s0)
    56cc:	00f52623          	sw	a5,12(a0)
    56d0:	02400793          	li	a5,36
    56d4:	00f60863          	beq	a2,a5,56e4 <_realloc_r+0x390>
    56d8:	01040713          	addi	a4,s0,16
    56dc:	01050793          	addi	a5,a0,16
    56e0:	0280006f          	j	5708 <_realloc_r+0x3b4>
    56e4:	01042783          	lw	a5,16(s0)
    56e8:	00f52823          	sw	a5,16(a0)
    56ec:	01840713          	addi	a4,s0,24
    56f0:	01850793          	addi	a5,a0,24
    56f4:	01442683          	lw	a3,20(s0)
    56f8:	00d52a23          	sw	a3,20(a0)
    56fc:	00c0006f          	j	5708 <_realloc_r+0x3b4>
    5700:	00050793          	mv	a5,a0
    5704:	00040713          	mv	a4,s0
    5708:	00072683          	lw	a3,0(a4)
    570c:	00d7a023          	sw	a3,0(a5)
    5710:	00472683          	lw	a3,4(a4)
    5714:	00d7a223          	sw	a3,4(a5)
    5718:	00872703          	lw	a4,8(a4)
    571c:	00e7a423          	sw	a4,8(a5)
    5720:	00040593          	mv	a1,s0
    5724:	000a0513          	mv	a0,s4
    5728:	e64fe0ef          	jal	ra,3d8c <_free_r>
    572c:	000a0513          	mv	a0,s4
    5730:	c21ff0ef          	jal	ra,5350 <__malloc_unlock>
    5734:	f5dff06f          	j	5690 <_realloc_r+0x33c>
    5738:	00040593          	mv	a1,s0
    573c:	afdff0ef          	jal	ra,5238 <memmove>
    5740:	fe1ff06f          	j	5720 <_realloc_r+0x3cc>
    5744:	012a85b3          	add	a1,s5,s2
    5748:	004aa703          	lw	a4,4(s5)
    574c:	00177713          	andi	a4,a4,1
    5750:	01276733          	or	a4,a4,s2
    5754:	00eaa223          	sw	a4,4(s5)
    5758:	0017e793          	ori	a5,a5,1
    575c:	00f5a223          	sw	a5,4(a1)
    5760:	009a84b3          	add	s1,s5,s1
    5764:	0044a783          	lw	a5,4(s1)
    5768:	0017e793          	ori	a5,a5,1
    576c:	00f4a223          	sw	a5,4(s1)
    5770:	00858593          	addi	a1,a1,8
    5774:	000a0513          	mv	a0,s4
    5778:	e14fe0ef          	jal	ra,3d8c <_free_r>
    577c:	f09ff06f          	j	5684 <_realloc_r+0x330>
    5780:	ffc67613          	andi	a2,a2,-4
    5784:	00c485b3          	add	a1,s1,a2
    5788:	d2e5dee3          	bge	a1,a4,54c4 <_realloc_r+0x170>
    578c:	0017f793          	andi	a5,a5,1
    5790:	c8079ee3          	bnez	a5,542c <_realloc_r+0xd8>
    5794:	ff842b83          	lw	s7,-8(s0)
    5798:	417a8bb3          	sub	s7,s5,s7
    579c:	004ba783          	lw	a5,4(s7)
    57a0:	ffc7f793          	andi	a5,a5,-4
    57a4:	00c78633          	add	a2,a5,a2
    57a8:	00960b33          	add	s6,a2,s1
    57ac:	c6eb4ce3          	blt	s6,a4,5424 <_realloc_r+0xd0>
    57b0:	00c6a783          	lw	a5,12(a3)
    57b4:	0086a703          	lw	a4,8(a3)
    57b8:	00f72623          	sw	a5,12(a4)
    57bc:	00e7a423          	sw	a4,8(a5)
    57c0:	00cba783          	lw	a5,12(s7)
    57c4:	008ba703          	lw	a4,8(s7)
    57c8:	00f72623          	sw	a5,12(a4)
    57cc:	00e7a423          	sw	a4,8(a5)
    57d0:	008b8513          	addi	a0,s7,8
    57d4:	ffc48613          	addi	a2,s1,-4
    57d8:	02400793          	li	a5,36
    57dc:	d8c7e8e3          	bltu	a5,a2,556c <_realloc_r+0x218>
    57e0:	01300793          	li	a5,19
    57e4:	02c7f263          	bgeu	a5,a2,5808 <_realloc_r+0x4b4>
    57e8:	00042783          	lw	a5,0(s0)
    57ec:	00fba423          	sw	a5,8(s7)
    57f0:	00442783          	lw	a5,4(s0)
    57f4:	00fba623          	sw	a5,12(s7)
    57f8:	01b00793          	li	a5,27
    57fc:	d2c7e8e3          	bltu	a5,a2,552c <_realloc_r+0x1d8>
    5800:	00840413          	addi	s0,s0,8
    5804:	010b8513          	addi	a0,s7,16
    5808:	00042783          	lw	a5,0(s0)
    580c:	00f52023          	sw	a5,0(a0)
    5810:	00442783          	lw	a5,4(s0)
    5814:	00f52223          	sw	a5,4(a0)
    5818:	00842783          	lw	a5,8(s0)
    581c:	00f52423          	sw	a5,8(a0)
    5820:	000b0493          	mv	s1,s6
    5824:	000b8a93          	mv	s5,s7
    5828:	e31ff06f          	j	5658 <_realloc_r+0x304>
    582c:	0046a683          	lw	a3,4(a3)
    5830:	ffc6f693          	andi	a3,a3,-4
    5834:	00d48633          	add	a2,s1,a3
    5838:	01090593          	addi	a1,s2,16
    583c:	c4b658e3          	bge	a2,a1,548c <_realloc_r+0x138>
    5840:	0017f793          	andi	a5,a5,1
    5844:	be0794e3          	bnez	a5,542c <_realloc_r+0xd8>
    5848:	ff842b83          	lw	s7,-8(s0)
    584c:	417a8bb3          	sub	s7,s5,s7
    5850:	004ba783          	lw	a5,4(s7)
    5854:	ffc7f793          	andi	a5,a5,-4
    5858:	00d786b3          	add	a3,a5,a3
    585c:	00968b33          	add	s6,a3,s1
    5860:	bcbb42e3          	blt	s6,a1,5424 <_realloc_r+0xd0>
    5864:	00cba783          	lw	a5,12(s7)
    5868:	008ba703          	lw	a4,8(s7)
    586c:	00f72623          	sw	a5,12(a4)
    5870:	00e7a423          	sw	a4,8(a5)
    5874:	008b8993          	addi	s3,s7,8
    5878:	ffc48613          	addi	a2,s1,-4
    587c:	02400793          	li	a5,36
    5880:	c8c7eee3          	bltu	a5,a2,551c <_realloc_r+0x1c8>
    5884:	01300713          	li	a4,19
    5888:	00098793          	mv	a5,s3
    588c:	02c77263          	bgeu	a4,a2,58b0 <_realloc_r+0x55c>
    5890:	00042783          	lw	a5,0(s0)
    5894:	00fba423          	sw	a5,8(s7)
    5898:	00442783          	lw	a5,4(s0)
    589c:	00fba623          	sw	a5,12(s7)
    58a0:	01b00793          	li	a5,27
    58a4:	c2c7ece3          	bltu	a5,a2,54dc <_realloc_r+0x188>
    58a8:	00840413          	addi	s0,s0,8
    58ac:	010b8793          	addi	a5,s7,16
    58b0:	00042703          	lw	a4,0(s0)
    58b4:	00e7a023          	sw	a4,0(a5)
    58b8:	00442703          	lw	a4,4(s0)
    58bc:	00e7a223          	sw	a4,4(a5)
    58c0:	00842703          	lw	a4,8(s0)
    58c4:	00e7a423          	sw	a4,8(a5)
    58c8:	012b8733          	add	a4,s7,s2
    58cc:	000107b7          	lui	a5,0x10
    58d0:	5ee7aa23          	sw	a4,1524(a5) # 105f4 <__malloc_av_+0x8>
    58d4:	412b07b3          	sub	a5,s6,s2
    58d8:	0017e793          	ori	a5,a5,1
    58dc:	00f72223          	sw	a5,4(a4)
    58e0:	004ba783          	lw	a5,4(s7)
    58e4:	0017f793          	andi	a5,a5,1
    58e8:	0127e7b3          	or	a5,a5,s2
    58ec:	00fba223          	sw	a5,4(s7)
    58f0:	000a0513          	mv	a0,s4
    58f4:	a5dff0ef          	jal	ra,5350 <__malloc_unlock>
    58f8:	d99ff06f          	j	5690 <_realloc_r+0x33c>

000058fc <_sbrk_r>:
    58fc:	ff010113          	addi	sp,sp,-16
    5900:	00112623          	sw	ra,12(sp)
    5904:	00812423          	sw	s0,8(sp)
    5908:	00050413          	mv	s0,a0
    590c:	000117b7          	lui	a5,0x11
    5910:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    5914:	00058513          	mv	a0,a1
    5918:	03c010ef          	jal	ra,6954 <_sbrk>
    591c:	fff00793          	li	a5,-1
    5920:	00f50a63          	beq	a0,a5,5934 <_sbrk_r+0x38>
    5924:	00c12083          	lw	ra,12(sp)
    5928:	00812403          	lw	s0,8(sp)
    592c:	01010113          	addi	sp,sp,16
    5930:	00008067          	ret
    5934:	000117b7          	lui	a5,0x11
    5938:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    593c:	fe0784e3          	beqz	a5,5924 <_sbrk_r+0x28>
    5940:	00f42023          	sw	a5,0(s0)
    5944:	fe1ff06f          	j	5924 <_sbrk_r+0x28>

00005948 <_init_signal_r>:
    5948:	2dc52783          	lw	a5,732(a0)
    594c:	00078663          	beqz	a5,5958 <_init_signal_r+0x10>
    5950:	00000513          	li	a0,0
    5954:	00008067          	ret
    5958:	ff010113          	addi	sp,sp,-16
    595c:	00112623          	sw	ra,12(sp)
    5960:	00812423          	sw	s0,8(sp)
    5964:	00050413          	mv	s0,a0
    5968:	08000593          	li	a1,128
    596c:	f99fe0ef          	jal	ra,4904 <_malloc_r>
    5970:	2ca42e23          	sw	a0,732(s0)
    5974:	02050a63          	beqz	a0,59a8 <_init_signal_r+0x60>
    5978:	00000793          	li	a5,0
    597c:	08000693          	li	a3,128
    5980:	2dc42703          	lw	a4,732(s0)
    5984:	00f70733          	add	a4,a4,a5
    5988:	00072023          	sw	zero,0(a4)
    598c:	00478793          	addi	a5,a5,4
    5990:	fed798e3          	bne	a5,a3,5980 <_init_signal_r+0x38>
    5994:	00000513          	li	a0,0
    5998:	00c12083          	lw	ra,12(sp)
    599c:	00812403          	lw	s0,8(sp)
    59a0:	01010113          	addi	sp,sp,16
    59a4:	00008067          	ret
    59a8:	fff00513          	li	a0,-1
    59ac:	fedff06f          	j	5998 <_init_signal_r+0x50>

000059b0 <_signal_r>:
    59b0:	ff010113          	addi	sp,sp,-16
    59b4:	00112623          	sw	ra,12(sp)
    59b8:	00812423          	sw	s0,8(sp)
    59bc:	00912223          	sw	s1,4(sp)
    59c0:	01212023          	sw	s2,0(sp)
    59c4:	00050493          	mv	s1,a0
    59c8:	01f00793          	li	a5,31
    59cc:	04b7e063          	bltu	a5,a1,5a0c <_signal_r+0x5c>
    59d0:	00058413          	mv	s0,a1
    59d4:	00060913          	mv	s2,a2
    59d8:	2dc52783          	lw	a5,732(a0)
    59dc:	04078063          	beqz	a5,5a1c <_signal_r+0x6c>
    59e0:	00241413          	slli	s0,s0,0x2
    59e4:	2dc4a783          	lw	a5,732(s1)
    59e8:	008787b3          	add	a5,a5,s0
    59ec:	0007a503          	lw	a0,0(a5)
    59f0:	0127a023          	sw	s2,0(a5)
    59f4:	00c12083          	lw	ra,12(sp)
    59f8:	00812403          	lw	s0,8(sp)
    59fc:	00412483          	lw	s1,4(sp)
    5a00:	00012903          	lw	s2,0(sp)
    5a04:	01010113          	addi	sp,sp,16
    5a08:	00008067          	ret
    5a0c:	01600793          	li	a5,22
    5a10:	00f52023          	sw	a5,0(a0)
    5a14:	fff00513          	li	a0,-1
    5a18:	fddff06f          	j	59f4 <_signal_r+0x44>
    5a1c:	f2dff0ef          	jal	ra,5948 <_init_signal_r>
    5a20:	00050793          	mv	a5,a0
    5a24:	fff00513          	li	a0,-1
    5a28:	fa078ce3          	beqz	a5,59e0 <_signal_r+0x30>
    5a2c:	fc9ff06f          	j	59f4 <_signal_r+0x44>

00005a30 <_raise_r>:
    5a30:	ff010113          	addi	sp,sp,-16
    5a34:	00112623          	sw	ra,12(sp)
    5a38:	00812423          	sw	s0,8(sp)
    5a3c:	00912223          	sw	s1,4(sp)
    5a40:	00050493          	mv	s1,a0
    5a44:	01f00793          	li	a5,31
    5a48:	04b7ea63          	bltu	a5,a1,5a9c <_raise_r+0x6c>
    5a4c:	00058413          	mv	s0,a1
    5a50:	2dc52783          	lw	a5,732(a0)
    5a54:	04078c63          	beqz	a5,5aac <_raise_r+0x7c>
    5a58:	00259713          	slli	a4,a1,0x2
    5a5c:	00e787b3          	add	a5,a5,a4
    5a60:	0007a703          	lw	a4,0(a5)
    5a64:	04070463          	beqz	a4,5aac <_raise_r+0x7c>
    5a68:	00100693          	li	a3,1
    5a6c:	06d70663          	beq	a4,a3,5ad8 <_raise_r+0xa8>
    5a70:	fff00693          	li	a3,-1
    5a74:	04d70a63          	beq	a4,a3,5ac8 <_raise_r+0x98>
    5a78:	0007a023          	sw	zero,0(a5)
    5a7c:	00058513          	mv	a0,a1
    5a80:	000700e7          	jalr	a4
    5a84:	00000513          	li	a0,0
    5a88:	00c12083          	lw	ra,12(sp)
    5a8c:	00812403          	lw	s0,8(sp)
    5a90:	00412483          	lw	s1,4(sp)
    5a94:	01010113          	addi	sp,sp,16
    5a98:	00008067          	ret
    5a9c:	01600793          	li	a5,22
    5aa0:	00f52023          	sw	a5,0(a0)
    5aa4:	fff00513          	li	a0,-1
    5aa8:	fe1ff06f          	j	5a88 <_raise_r+0x58>
    5aac:	00048513          	mv	a0,s1
    5ab0:	1b0000ef          	jal	ra,5c60 <_getpid_r>
    5ab4:	00050593          	mv	a1,a0
    5ab8:	00040613          	mv	a2,s0
    5abc:	00048513          	mv	a0,s1
    5ac0:	150000ef          	jal	ra,5c10 <_kill_r>
    5ac4:	fc5ff06f          	j	5a88 <_raise_r+0x58>
    5ac8:	01600793          	li	a5,22
    5acc:	00f52023          	sw	a5,0(a0)
    5ad0:	00100513          	li	a0,1
    5ad4:	fb5ff06f          	j	5a88 <_raise_r+0x58>
    5ad8:	00000513          	li	a0,0
    5adc:	fadff06f          	j	5a88 <_raise_r+0x58>

00005ae0 <__sigtramp_r>:
    5ae0:	01f00793          	li	a5,31
    5ae4:	06b7ee63          	bltu	a5,a1,5b60 <__sigtramp_r+0x80>
    5ae8:	ff010113          	addi	sp,sp,-16
    5aec:	00112623          	sw	ra,12(sp)
    5af0:	00812423          	sw	s0,8(sp)
    5af4:	00912223          	sw	s1,4(sp)
    5af8:	00050493          	mv	s1,a0
    5afc:	00058413          	mv	s0,a1
    5b00:	2dc52783          	lw	a5,732(a0)
    5b04:	04078663          	beqz	a5,5b50 <__sigtramp_r+0x70>
    5b08:	00241713          	slli	a4,s0,0x2
    5b0c:	2dc4a783          	lw	a5,732(s1)
    5b10:	00e787b3          	add	a5,a5,a4
    5b14:	0007a703          	lw	a4,0(a5)
    5b18:	04070863          	beqz	a4,5b68 <__sigtramp_r+0x88>
    5b1c:	fff00693          	li	a3,-1
    5b20:	04d70863          	beq	a4,a3,5b70 <__sigtramp_r+0x90>
    5b24:	00100693          	li	a3,1
    5b28:	04d70863          	beq	a4,a3,5b78 <__sigtramp_r+0x98>
    5b2c:	0007a023          	sw	zero,0(a5)
    5b30:	00040513          	mv	a0,s0
    5b34:	000700e7          	jalr	a4
    5b38:	00000513          	li	a0,0
    5b3c:	00c12083          	lw	ra,12(sp)
    5b40:	00812403          	lw	s0,8(sp)
    5b44:	00412483          	lw	s1,4(sp)
    5b48:	01010113          	addi	sp,sp,16
    5b4c:	00008067          	ret
    5b50:	df9ff0ef          	jal	ra,5948 <_init_signal_r>
    5b54:	fa050ae3          	beqz	a0,5b08 <__sigtramp_r+0x28>
    5b58:	fff00513          	li	a0,-1
    5b5c:	fe1ff06f          	j	5b3c <__sigtramp_r+0x5c>
    5b60:	fff00513          	li	a0,-1
    5b64:	00008067          	ret
    5b68:	00100513          	li	a0,1
    5b6c:	fd1ff06f          	j	5b3c <__sigtramp_r+0x5c>
    5b70:	00200513          	li	a0,2
    5b74:	fc9ff06f          	j	5b3c <__sigtramp_r+0x5c>
    5b78:	00300513          	li	a0,3
    5b7c:	fc1ff06f          	j	5b3c <__sigtramp_r+0x5c>

00005b80 <raise>:
    5b80:	ff010113          	addi	sp,sp,-16
    5b84:	00112623          	sw	ra,12(sp)
    5b88:	00050593          	mv	a1,a0
    5b8c:	000117b7          	lui	a5,0x11
    5b90:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    5b94:	e9dff0ef          	jal	ra,5a30 <_raise_r>
    5b98:	00c12083          	lw	ra,12(sp)
    5b9c:	01010113          	addi	sp,sp,16
    5ba0:	00008067          	ret

00005ba4 <signal>:
    5ba4:	ff010113          	addi	sp,sp,-16
    5ba8:	00112623          	sw	ra,12(sp)
    5bac:	00058613          	mv	a2,a1
    5bb0:	00050593          	mv	a1,a0
    5bb4:	000117b7          	lui	a5,0x11
    5bb8:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    5bbc:	df5ff0ef          	jal	ra,59b0 <_signal_r>
    5bc0:	00c12083          	lw	ra,12(sp)
    5bc4:	01010113          	addi	sp,sp,16
    5bc8:	00008067          	ret

00005bcc <_init_signal>:
    5bcc:	ff010113          	addi	sp,sp,-16
    5bd0:	00112623          	sw	ra,12(sp)
    5bd4:	000117b7          	lui	a5,0x11
    5bd8:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    5bdc:	d6dff0ef          	jal	ra,5948 <_init_signal_r>
    5be0:	00c12083          	lw	ra,12(sp)
    5be4:	01010113          	addi	sp,sp,16
    5be8:	00008067          	ret

00005bec <__sigtramp>:
    5bec:	ff010113          	addi	sp,sp,-16
    5bf0:	00112623          	sw	ra,12(sp)
    5bf4:	00050593          	mv	a1,a0
    5bf8:	000117b7          	lui	a5,0x11
    5bfc:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    5c00:	ee1ff0ef          	jal	ra,5ae0 <__sigtramp_r>
    5c04:	00c12083          	lw	ra,12(sp)
    5c08:	01010113          	addi	sp,sp,16
    5c0c:	00008067          	ret

00005c10 <_kill_r>:
    5c10:	ff010113          	addi	sp,sp,-16
    5c14:	00112623          	sw	ra,12(sp)
    5c18:	00812423          	sw	s0,8(sp)
    5c1c:	00050413          	mv	s0,a0
    5c20:	00058513          	mv	a0,a1
    5c24:	000117b7          	lui	a5,0x11
    5c28:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    5c2c:	00060593          	mv	a1,a2
    5c30:	479000ef          	jal	ra,68a8 <_kill>
    5c34:	fff00793          	li	a5,-1
    5c38:	00f50a63          	beq	a0,a5,5c4c <_kill_r+0x3c>
    5c3c:	00c12083          	lw	ra,12(sp)
    5c40:	00812403          	lw	s0,8(sp)
    5c44:	01010113          	addi	sp,sp,16
    5c48:	00008067          	ret
    5c4c:	000117b7          	lui	a5,0x11
    5c50:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    5c54:	fe0784e3          	beqz	a5,5c3c <_kill_r+0x2c>
    5c58:	00f42023          	sw	a5,0(s0)
    5c5c:	fe1ff06f          	j	5c3c <_kill_r+0x2c>

00005c60 <_getpid_r>:
    5c60:	ff010113          	addi	sp,sp,-16
    5c64:	00112623          	sw	ra,12(sp)
    5c68:	401000ef          	jal	ra,6868 <_getpid>
    5c6c:	00c12083          	lw	ra,12(sp)
    5c70:	01010113          	addi	sp,sp,16
    5c74:	00008067          	ret

00005c78 <__sread>:
    5c78:	ff010113          	addi	sp,sp,-16
    5c7c:	00112623          	sw	ra,12(sp)
    5c80:	00812423          	sw	s0,8(sp)
    5c84:	00058413          	mv	s0,a1
    5c88:	00e59583          	lh	a1,14(a1)
    5c8c:	171000ef          	jal	ra,65fc <_read_r>
    5c90:	02054063          	bltz	a0,5cb0 <__sread+0x38>
    5c94:	05042783          	lw	a5,80(s0)
    5c98:	00a787b3          	add	a5,a5,a0
    5c9c:	04f42823          	sw	a5,80(s0)
    5ca0:	00c12083          	lw	ra,12(sp)
    5ca4:	00812403          	lw	s0,8(sp)
    5ca8:	01010113          	addi	sp,sp,16
    5cac:	00008067          	ret
    5cb0:	00c45783          	lhu	a5,12(s0)
    5cb4:	fffff737          	lui	a4,0xfffff
    5cb8:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffedef3>
    5cbc:	00e7f7b3          	and	a5,a5,a4
    5cc0:	00f41623          	sh	a5,12(s0)
    5cc4:	fddff06f          	j	5ca0 <__sread+0x28>

00005cc8 <__seofread>:
    5cc8:	00000513          	li	a0,0
    5ccc:	00008067          	ret

00005cd0 <__swrite>:
    5cd0:	fe010113          	addi	sp,sp,-32
    5cd4:	00112e23          	sw	ra,28(sp)
    5cd8:	00812c23          	sw	s0,24(sp)
    5cdc:	00912a23          	sw	s1,20(sp)
    5ce0:	01212823          	sw	s2,16(sp)
    5ce4:	01312623          	sw	s3,12(sp)
    5ce8:	00050493          	mv	s1,a0
    5cec:	00058413          	mv	s0,a1
    5cf0:	00060913          	mv	s2,a2
    5cf4:	00068993          	mv	s3,a3
    5cf8:	00c5d783          	lhu	a5,12(a1)
    5cfc:	1007f793          	andi	a5,a5,256
    5d00:	04079463          	bnez	a5,5d48 <__swrite+0x78>
    5d04:	00c45783          	lhu	a5,12(s0)
    5d08:	fffff737          	lui	a4,0xfffff
    5d0c:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffedef3>
    5d10:	00e7f7b3          	and	a5,a5,a4
    5d14:	00f41623          	sh	a5,12(s0)
    5d18:	00098693          	mv	a3,s3
    5d1c:	00090613          	mv	a2,s2
    5d20:	00e41583          	lh	a1,14(s0)
    5d24:	00048513          	mv	a0,s1
    5d28:	630000ef          	jal	ra,6358 <_write_r>
    5d2c:	01c12083          	lw	ra,28(sp)
    5d30:	01812403          	lw	s0,24(sp)
    5d34:	01412483          	lw	s1,20(sp)
    5d38:	01012903          	lw	s2,16(sp)
    5d3c:	00c12983          	lw	s3,12(sp)
    5d40:	02010113          	addi	sp,sp,32
    5d44:	00008067          	ret
    5d48:	00200693          	li	a3,2
    5d4c:	00000613          	li	a2,0
    5d50:	00e59583          	lh	a1,14(a1)
    5d54:	055000ef          	jal	ra,65a8 <_lseek_r>
    5d58:	fadff06f          	j	5d04 <__swrite+0x34>

00005d5c <__sseek>:
    5d5c:	ff010113          	addi	sp,sp,-16
    5d60:	00112623          	sw	ra,12(sp)
    5d64:	00812423          	sw	s0,8(sp)
    5d68:	00058413          	mv	s0,a1
    5d6c:	00e59583          	lh	a1,14(a1)
    5d70:	039000ef          	jal	ra,65a8 <_lseek_r>
    5d74:	fff00793          	li	a5,-1
    5d78:	02f50463          	beq	a0,a5,5da0 <__sseek+0x44>
    5d7c:	00c45783          	lhu	a5,12(s0)
    5d80:	00001737          	lui	a4,0x1
    5d84:	00e7e7b3          	or	a5,a5,a4
    5d88:	00f41623          	sh	a5,12(s0)
    5d8c:	04a42823          	sw	a0,80(s0)
    5d90:	00c12083          	lw	ra,12(sp)
    5d94:	00812403          	lw	s0,8(sp)
    5d98:	01010113          	addi	sp,sp,16
    5d9c:	00008067          	ret
    5da0:	00c45783          	lhu	a5,12(s0)
    5da4:	fffff737          	lui	a4,0xfffff
    5da8:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.0+0xfffedef3>
    5dac:	00e7f7b3          	and	a5,a5,a4
    5db0:	00f41623          	sh	a5,12(s0)
    5db4:	fddff06f          	j	5d90 <__sseek+0x34>

00005db8 <__sclose>:
    5db8:	ff010113          	addi	sp,sp,-16
    5dbc:	00112623          	sw	ra,12(sp)
    5dc0:	00e59583          	lh	a1,14(a1)
    5dc4:	5e8000ef          	jal	ra,63ac <_close_r>
    5dc8:	00c12083          	lw	ra,12(sp)
    5dcc:	01010113          	addi	sp,sp,16
    5dd0:	00008067          	ret

00005dd4 <strcmp>:
    5dd4:	00b56733          	or	a4,a0,a1
    5dd8:	fff00393          	li	t2,-1
    5ddc:	00377713          	andi	a4,a4,3
    5de0:	10071063          	bnez	a4,5ee0 <strcmp+0x10c>
    5de4:	7f7f87b7          	lui	a5,0x7f7f8
    5de8:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <heap_end.0+0x7f7e6e73>
    5dec:	00052603          	lw	a2,0(a0)
    5df0:	0005a683          	lw	a3,0(a1)
    5df4:	00f672b3          	and	t0,a2,a5
    5df8:	00f66333          	or	t1,a2,a5
    5dfc:	00f282b3          	add	t0,t0,a5
    5e00:	0062e2b3          	or	t0,t0,t1
    5e04:	10729263          	bne	t0,t2,5f08 <strcmp+0x134>
    5e08:	08d61663          	bne	a2,a3,5e94 <strcmp+0xc0>
    5e0c:	00452603          	lw	a2,4(a0)
    5e10:	0045a683          	lw	a3,4(a1)
    5e14:	00f672b3          	and	t0,a2,a5
    5e18:	00f66333          	or	t1,a2,a5
    5e1c:	00f282b3          	add	t0,t0,a5
    5e20:	0062e2b3          	or	t0,t0,t1
    5e24:	0c729e63          	bne	t0,t2,5f00 <strcmp+0x12c>
    5e28:	06d61663          	bne	a2,a3,5e94 <strcmp+0xc0>
    5e2c:	00852603          	lw	a2,8(a0)
    5e30:	0085a683          	lw	a3,8(a1)
    5e34:	00f672b3          	and	t0,a2,a5
    5e38:	00f66333          	or	t1,a2,a5
    5e3c:	00f282b3          	add	t0,t0,a5
    5e40:	0062e2b3          	or	t0,t0,t1
    5e44:	0c729863          	bne	t0,t2,5f14 <strcmp+0x140>
    5e48:	04d61663          	bne	a2,a3,5e94 <strcmp+0xc0>
    5e4c:	00c52603          	lw	a2,12(a0)
    5e50:	00c5a683          	lw	a3,12(a1)
    5e54:	00f672b3          	and	t0,a2,a5
    5e58:	00f66333          	or	t1,a2,a5
    5e5c:	00f282b3          	add	t0,t0,a5
    5e60:	0062e2b3          	or	t0,t0,t1
    5e64:	0c729263          	bne	t0,t2,5f28 <strcmp+0x154>
    5e68:	02d61663          	bne	a2,a3,5e94 <strcmp+0xc0>
    5e6c:	01052603          	lw	a2,16(a0)
    5e70:	0105a683          	lw	a3,16(a1)
    5e74:	00f672b3          	and	t0,a2,a5
    5e78:	00f66333          	or	t1,a2,a5
    5e7c:	00f282b3          	add	t0,t0,a5
    5e80:	0062e2b3          	or	t0,t0,t1
    5e84:	0a729c63          	bne	t0,t2,5f3c <strcmp+0x168>
    5e88:	01450513          	addi	a0,a0,20
    5e8c:	01458593          	addi	a1,a1,20
    5e90:	f4d60ee3          	beq	a2,a3,5dec <strcmp+0x18>
    5e94:	01061713          	slli	a4,a2,0x10
    5e98:	01069793          	slli	a5,a3,0x10
    5e9c:	00f71e63          	bne	a4,a5,5eb8 <strcmp+0xe4>
    5ea0:	01065713          	srli	a4,a2,0x10
    5ea4:	0106d793          	srli	a5,a3,0x10
    5ea8:	40f70533          	sub	a0,a4,a5
    5eac:	0ff57593          	zext.b	a1,a0
    5eb0:	02059063          	bnez	a1,5ed0 <strcmp+0xfc>
    5eb4:	00008067          	ret
    5eb8:	01075713          	srli	a4,a4,0x10
    5ebc:	0107d793          	srli	a5,a5,0x10
    5ec0:	40f70533          	sub	a0,a4,a5
    5ec4:	0ff57593          	zext.b	a1,a0
    5ec8:	00059463          	bnez	a1,5ed0 <strcmp+0xfc>
    5ecc:	00008067          	ret
    5ed0:	0ff77713          	zext.b	a4,a4
    5ed4:	0ff7f793          	zext.b	a5,a5
    5ed8:	40f70533          	sub	a0,a4,a5
    5edc:	00008067          	ret
    5ee0:	00054603          	lbu	a2,0(a0)
    5ee4:	0005c683          	lbu	a3,0(a1)
    5ee8:	00150513          	addi	a0,a0,1
    5eec:	00158593          	addi	a1,a1,1
    5ef0:	00d61463          	bne	a2,a3,5ef8 <strcmp+0x124>
    5ef4:	fe0616e3          	bnez	a2,5ee0 <strcmp+0x10c>
    5ef8:	40d60533          	sub	a0,a2,a3
    5efc:	00008067          	ret
    5f00:	00450513          	addi	a0,a0,4
    5f04:	00458593          	addi	a1,a1,4
    5f08:	fcd61ce3          	bne	a2,a3,5ee0 <strcmp+0x10c>
    5f0c:	00000513          	li	a0,0
    5f10:	00008067          	ret
    5f14:	00850513          	addi	a0,a0,8
    5f18:	00858593          	addi	a1,a1,8
    5f1c:	fcd612e3          	bne	a2,a3,5ee0 <strcmp+0x10c>
    5f20:	00000513          	li	a0,0
    5f24:	00008067          	ret
    5f28:	00c50513          	addi	a0,a0,12
    5f2c:	00c58593          	addi	a1,a1,12
    5f30:	fad618e3          	bne	a2,a3,5ee0 <strcmp+0x10c>
    5f34:	00000513          	li	a0,0
    5f38:	00008067          	ret
    5f3c:	01050513          	addi	a0,a0,16
    5f40:	01058593          	addi	a1,a1,16
    5f44:	f8d61ee3          	bne	a2,a3,5ee0 <strcmp+0x10c>
    5f48:	00000513          	li	a0,0
    5f4c:	00008067          	ret

00005f50 <strlen>:
    5f50:	00357793          	andi	a5,a0,3
    5f54:	00050713          	mv	a4,a0
    5f58:	04079a63          	bnez	a5,5fac <strlen+0x5c>
    5f5c:	7f7f86b7          	lui	a3,0x7f7f8
    5f60:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <heap_end.0+0x7f7e6e73>
    5f64:	fff00593          	li	a1,-1
    5f68:	00470713          	addi	a4,a4,4
    5f6c:	ffc72603          	lw	a2,-4(a4)
    5f70:	00d677b3          	and	a5,a2,a3
    5f74:	00d787b3          	add	a5,a5,a3
    5f78:	00c7e7b3          	or	a5,a5,a2
    5f7c:	00d7e7b3          	or	a5,a5,a3
    5f80:	feb784e3          	beq	a5,a1,5f68 <strlen+0x18>
    5f84:	40a707b3          	sub	a5,a4,a0
    5f88:	ffc74683          	lbu	a3,-4(a4)
    5f8c:	04068263          	beqz	a3,5fd0 <strlen+0x80>
    5f90:	ffd74683          	lbu	a3,-3(a4)
    5f94:	04068263          	beqz	a3,5fd8 <strlen+0x88>
    5f98:	ffe74503          	lbu	a0,-2(a4)
    5f9c:	00a03533          	snez	a0,a0
    5fa0:	00f50533          	add	a0,a0,a5
    5fa4:	ffe50513          	addi	a0,a0,-2
    5fa8:	00008067          	ret
    5fac:	00074783          	lbu	a5,0(a4)
    5fb0:	00170713          	addi	a4,a4,1
    5fb4:	00078863          	beqz	a5,5fc4 <strlen+0x74>
    5fb8:	00377793          	andi	a5,a4,3
    5fbc:	fe0798e3          	bnez	a5,5fac <strlen+0x5c>
    5fc0:	f9dff06f          	j	5f5c <strlen+0xc>
    5fc4:	40a70733          	sub	a4,a4,a0
    5fc8:	fff70513          	addi	a0,a4,-1
    5fcc:	00008067          	ret
    5fd0:	ffc78513          	addi	a0,a5,-4
    5fd4:	00008067          	ret
    5fd8:	ffd78513          	addi	a0,a5,-3
    5fdc:	00008067          	ret

00005fe0 <strncpy>:
    5fe0:	00b567b3          	or	a5,a0,a1
    5fe4:	0037f793          	andi	a5,a5,3
    5fe8:	00050713          	mv	a4,a0
    5fec:	00079663          	bnez	a5,5ff8 <strncpy+0x18>
    5ff0:	00300793          	li	a5,3
    5ff4:	02c7e663          	bltu	a5,a2,6020 <strncpy+0x40>
    5ff8:	08060463          	beqz	a2,6080 <strncpy+0xa0>
    5ffc:	fff60813          	addi	a6,a2,-1
    6000:	00158593          	addi	a1,a1,1
    6004:	00170793          	addi	a5,a4,1
    6008:	fff5c683          	lbu	a3,-1(a1)
    600c:	fed78fa3          	sb	a3,-1(a5)
    6010:	04068a63          	beqz	a3,6064 <strncpy+0x84>
    6014:	00078713          	mv	a4,a5
    6018:	00080613          	mv	a2,a6
    601c:	fddff06f          	j	5ff8 <strncpy+0x18>
    6020:	feff0337          	lui	t1,0xfeff0
    6024:	eff30313          	addi	t1,t1,-257 # fefefeff <heap_end.0+0xfefdedf3>
    6028:	808088b7          	lui	a7,0x80808
    602c:	08088893          	addi	a7,a7,128 # 80808080 <heap_end.0+0x807f6f74>
    6030:	00300e13          	li	t3,3
    6034:	0005a683          	lw	a3,0(a1)
    6038:	006687b3          	add	a5,a3,t1
    603c:	fff6c813          	not	a6,a3
    6040:	0107f7b3          	and	a5,a5,a6
    6044:	0117f7b3          	and	a5,a5,a7
    6048:	fa0798e3          	bnez	a5,5ff8 <strncpy+0x18>
    604c:	ffc60613          	addi	a2,a2,-4
    6050:	00458593          	addi	a1,a1,4
    6054:	00470713          	addi	a4,a4,4
    6058:	fed72e23          	sw	a3,-4(a4)
    605c:	fcce6ce3          	bltu	t3,a2,6034 <strncpy+0x54>
    6060:	f99ff06f          	j	5ff8 <strncpy+0x18>
    6064:	00c70733          	add	a4,a4,a2
    6068:	00080a63          	beqz	a6,607c <strncpy+0x9c>
    606c:	00178793          	addi	a5,a5,1
    6070:	fe078fa3          	sb	zero,-1(a5)
    6074:	fef71ce3          	bne	a4,a5,606c <strncpy+0x8c>
    6078:	00008067          	ret
    607c:	00008067          	ret
    6080:	00008067          	ret

00006084 <__swbuf_r>:
    6084:	fe010113          	addi	sp,sp,-32
    6088:	00112e23          	sw	ra,28(sp)
    608c:	00812c23          	sw	s0,24(sp)
    6090:	00912a23          	sw	s1,20(sp)
    6094:	01212823          	sw	s2,16(sp)
    6098:	01312623          	sw	s3,12(sp)
    609c:	00050913          	mv	s2,a0
    60a0:	00058493          	mv	s1,a1
    60a4:	00060413          	mv	s0,a2
    60a8:	00050663          	beqz	a0,60b4 <__swbuf_r+0x30>
    60ac:	03852783          	lw	a5,56(a0)
    60b0:	0e078463          	beqz	a5,6198 <__swbuf_r+0x114>
    60b4:	01842783          	lw	a5,24(s0)
    60b8:	00f42423          	sw	a5,8(s0)
    60bc:	00c45783          	lhu	a5,12(s0)
    60c0:	0087f793          	andi	a5,a5,8
    60c4:	00078663          	beqz	a5,60d0 <__swbuf_r+0x4c>
    60c8:	01042783          	lw	a5,16(s0)
    60cc:	00079a63          	bnez	a5,60e0 <__swbuf_r+0x5c>
    60d0:	00040593          	mv	a1,s0
    60d4:	00090513          	mv	a0,s2
    60d8:	9a4fd0ef          	jal	ra,327c <__swsetup_r>
    60dc:	0e051463          	bnez	a0,61c4 <__swbuf_r+0x140>
    60e0:	0ff4f993          	zext.b	s3,s1
    60e4:	0ff4f493          	zext.b	s1,s1
    60e8:	00c41703          	lh	a4,12(s0)
    60ec:	00d75793          	srli	a5,a4,0xd
    60f0:	0017f793          	andi	a5,a5,1
    60f4:	02079263          	bnez	a5,6118 <__swbuf_r+0x94>
    60f8:	000027b7          	lui	a5,0x2
    60fc:	00f76733          	or	a4,a4,a5
    6100:	00e41623          	sh	a4,12(s0)
    6104:	06442783          	lw	a5,100(s0)
    6108:	ffffe737          	lui	a4,0xffffe
    610c:	fff70713          	addi	a4,a4,-1 # ffffdfff <heap_end.0+0xfffecef3>
    6110:	00e7f7b3          	and	a5,a5,a4
    6114:	06f42223          	sw	a5,100(s0)
    6118:	00042783          	lw	a5,0(s0)
    611c:	01042703          	lw	a4,16(s0)
    6120:	40e787b3          	sub	a5,a5,a4
    6124:	01442703          	lw	a4,20(s0)
    6128:	06e7dc63          	bge	a5,a4,61a0 <__swbuf_r+0x11c>
    612c:	00842703          	lw	a4,8(s0)
    6130:	fff70713          	addi	a4,a4,-1
    6134:	00e42423          	sw	a4,8(s0)
    6138:	00042703          	lw	a4,0(s0)
    613c:	00170693          	addi	a3,a4,1
    6140:	00d42023          	sw	a3,0(s0)
    6144:	01370023          	sb	s3,0(a4)
    6148:	00178793          	addi	a5,a5,1 # 2001 <memset+0x15>
    614c:	01442703          	lw	a4,20(s0)
    6150:	00f70c63          	beq	a4,a5,6168 <__swbuf_r+0xe4>
    6154:	00c45783          	lhu	a5,12(s0)
    6158:	0017f793          	andi	a5,a5,1
    615c:	00078e63          	beqz	a5,6178 <__swbuf_r+0xf4>
    6160:	00a00793          	li	a5,10
    6164:	00f49a63          	bne	s1,a5,6178 <__swbuf_r+0xf4>
    6168:	00040593          	mv	a1,s0
    616c:	00090513          	mv	a0,s2
    6170:	cf8fd0ef          	jal	ra,3668 <_fflush_r>
    6174:	04051463          	bnez	a0,61bc <__swbuf_r+0x138>
    6178:	00048513          	mv	a0,s1
    617c:	01c12083          	lw	ra,28(sp)
    6180:	01812403          	lw	s0,24(sp)
    6184:	01412483          	lw	s1,20(sp)
    6188:	01012903          	lw	s2,16(sp)
    618c:	00c12983          	lw	s3,12(sp)
    6190:	02010113          	addi	sp,sp,32
    6194:	00008067          	ret
    6198:	e34fd0ef          	jal	ra,37cc <__sinit>
    619c:	f19ff06f          	j	60b4 <__swbuf_r+0x30>
    61a0:	00040593          	mv	a1,s0
    61a4:	00090513          	mv	a0,s2
    61a8:	cc0fd0ef          	jal	ra,3668 <_fflush_r>
    61ac:	00050793          	mv	a5,a0
    61b0:	f6050ee3          	beqz	a0,612c <__swbuf_r+0xa8>
    61b4:	fff00493          	li	s1,-1
    61b8:	fc1ff06f          	j	6178 <__swbuf_r+0xf4>
    61bc:	fff00493          	li	s1,-1
    61c0:	fb9ff06f          	j	6178 <__swbuf_r+0xf4>
    61c4:	fff00493          	li	s1,-1
    61c8:	fb1ff06f          	j	6178 <__swbuf_r+0xf4>

000061cc <__swbuf>:
    61cc:	ff010113          	addi	sp,sp,-16
    61d0:	00112623          	sw	ra,12(sp)
    61d4:	00058613          	mv	a2,a1
    61d8:	00050593          	mv	a1,a0
    61dc:	000117b7          	lui	a5,0x11
    61e0:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    61e4:	ea1ff0ef          	jal	ra,6084 <__swbuf_r>
    61e8:	00c12083          	lw	ra,12(sp)
    61ec:	01010113          	addi	sp,sp,16
    61f0:	00008067          	ret

000061f4 <_wcrtomb_r>:
    61f4:	fe010113          	addi	sp,sp,-32
    61f8:	00112e23          	sw	ra,28(sp)
    61fc:	00812c23          	sw	s0,24(sp)
    6200:	00912a23          	sw	s1,20(sp)
    6204:	00050413          	mv	s0,a0
    6208:	00068493          	mv	s1,a3
    620c:	02058a63          	beqz	a1,6240 <_wcrtomb_r+0x4c>
    6210:	000107b7          	lui	a5,0x10
    6214:	5607a783          	lw	a5,1376(a5) # 10560 <__global_locale+0xe0>
    6218:	000780e7          	jalr	a5
    621c:	00050793          	mv	a5,a0
    6220:	fff00713          	li	a4,-1
    6224:	00078513          	mv	a0,a5
    6228:	02e78a63          	beq	a5,a4,625c <_wcrtomb_r+0x68>
    622c:	01c12083          	lw	ra,28(sp)
    6230:	01812403          	lw	s0,24(sp)
    6234:	01412483          	lw	s1,20(sp)
    6238:	02010113          	addi	sp,sp,32
    623c:	00008067          	ret
    6240:	000107b7          	lui	a5,0x10
    6244:	5607a783          	lw	a5,1376(a5) # 10560 <__global_locale+0xe0>
    6248:	00000613          	li	a2,0
    624c:	00410593          	addi	a1,sp,4
    6250:	000780e7          	jalr	a5
    6254:	00050793          	mv	a5,a0
    6258:	fc9ff06f          	j	6220 <_wcrtomb_r+0x2c>
    625c:	0004a023          	sw	zero,0(s1)
    6260:	08a00793          	li	a5,138
    6264:	00f42023          	sw	a5,0(s0)
    6268:	fff00513          	li	a0,-1
    626c:	fc1ff06f          	j	622c <_wcrtomb_r+0x38>

00006270 <wcrtomb>:
    6270:	fe010113          	addi	sp,sp,-32
    6274:	00112e23          	sw	ra,28(sp)
    6278:	00812c23          	sw	s0,24(sp)
    627c:	00912a23          	sw	s1,20(sp)
    6280:	00060413          	mv	s0,a2
    6284:	000117b7          	lui	a5,0x11
    6288:	9f47a483          	lw	s1,-1548(a5) # 109f4 <_impure_ptr>
    628c:	04050263          	beqz	a0,62d0 <wcrtomb+0x60>
    6290:	000107b7          	lui	a5,0x10
    6294:	5607a783          	lw	a5,1376(a5) # 10560 <__global_locale+0xe0>
    6298:	00060693          	mv	a3,a2
    629c:	00058613          	mv	a2,a1
    62a0:	00050593          	mv	a1,a0
    62a4:	00048513          	mv	a0,s1
    62a8:	000780e7          	jalr	a5
    62ac:	00050793          	mv	a5,a0
    62b0:	fff00713          	li	a4,-1
    62b4:	00078513          	mv	a0,a5
    62b8:	02e78e63          	beq	a5,a4,62f4 <wcrtomb+0x84>
    62bc:	01c12083          	lw	ra,28(sp)
    62c0:	01812403          	lw	s0,24(sp)
    62c4:	01412483          	lw	s1,20(sp)
    62c8:	02010113          	addi	sp,sp,32
    62cc:	00008067          	ret
    62d0:	000107b7          	lui	a5,0x10
    62d4:	5607a783          	lw	a5,1376(a5) # 10560 <__global_locale+0xe0>
    62d8:	00060693          	mv	a3,a2
    62dc:	00000613          	li	a2,0
    62e0:	00410593          	addi	a1,sp,4
    62e4:	00048513          	mv	a0,s1
    62e8:	000780e7          	jalr	a5
    62ec:	00050793          	mv	a5,a0
    62f0:	fc1ff06f          	j	62b0 <wcrtomb+0x40>
    62f4:	00042023          	sw	zero,0(s0)
    62f8:	08a00793          	li	a5,138
    62fc:	00f4a023          	sw	a5,0(s1)
    6300:	fff00513          	li	a0,-1
    6304:	fb9ff06f          	j	62bc <wcrtomb+0x4c>

00006308 <_wctomb_r>:
    6308:	ff010113          	addi	sp,sp,-16
    630c:	00112623          	sw	ra,12(sp)
    6310:	000107b7          	lui	a5,0x10
    6314:	5607a783          	lw	a5,1376(a5) # 10560 <__global_locale+0xe0>
    6318:	000780e7          	jalr	a5
    631c:	00c12083          	lw	ra,12(sp)
    6320:	01010113          	addi	sp,sp,16
    6324:	00008067          	ret

00006328 <__ascii_wctomb>:
    6328:	02058463          	beqz	a1,6350 <__ascii_wctomb+0x28>
    632c:	0ff00713          	li	a4,255
    6330:	00c76863          	bltu	a4,a2,6340 <__ascii_wctomb+0x18>
    6334:	00c58023          	sb	a2,0(a1)
    6338:	00100513          	li	a0,1
    633c:	00008067          	ret
    6340:	08a00793          	li	a5,138
    6344:	00f52023          	sw	a5,0(a0)
    6348:	fff00513          	li	a0,-1
    634c:	00008067          	ret
    6350:	00000513          	li	a0,0
    6354:	00008067          	ret

00006358 <_write_r>:
    6358:	ff010113          	addi	sp,sp,-16
    635c:	00112623          	sw	ra,12(sp)
    6360:	00812423          	sw	s0,8(sp)
    6364:	00050413          	mv	s0,a0
    6368:	00058513          	mv	a0,a1
    636c:	00060593          	mv	a1,a2
    6370:	000117b7          	lui	a5,0x11
    6374:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    6378:	00068613          	mv	a2,a3
    637c:	668000ef          	jal	ra,69e4 <_write>
    6380:	fff00793          	li	a5,-1
    6384:	00f50a63          	beq	a0,a5,6398 <_write_r+0x40>
    6388:	00c12083          	lw	ra,12(sp)
    638c:	00812403          	lw	s0,8(sp)
    6390:	01010113          	addi	sp,sp,16
    6394:	00008067          	ret
    6398:	000117b7          	lui	a5,0x11
    639c:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    63a0:	fe0784e3          	beqz	a5,6388 <_write_r+0x30>
    63a4:	00f42023          	sw	a5,0(s0)
    63a8:	fe1ff06f          	j	6388 <_write_r+0x30>

000063ac <_close_r>:
    63ac:	ff010113          	addi	sp,sp,-16
    63b0:	00112623          	sw	ra,12(sp)
    63b4:	00812423          	sw	s0,8(sp)
    63b8:	00050413          	mv	s0,a0
    63bc:	000117b7          	lui	a5,0x11
    63c0:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    63c4:	00058513          	mv	a0,a1
    63c8:	3cc000ef          	jal	ra,6794 <_close>
    63cc:	fff00793          	li	a5,-1
    63d0:	00f50a63          	beq	a0,a5,63e4 <_close_r+0x38>
    63d4:	00c12083          	lw	ra,12(sp)
    63d8:	00812403          	lw	s0,8(sp)
    63dc:	01010113          	addi	sp,sp,16
    63e0:	00008067          	ret
    63e4:	000117b7          	lui	a5,0x11
    63e8:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    63ec:	fe0784e3          	beqz	a5,63d4 <_close_r+0x28>
    63f0:	00f42023          	sw	a5,0(s0)
    63f4:	fe1ff06f          	j	63d4 <_close_r+0x28>

000063f8 <_fclose_r>:
    63f8:	ff010113          	addi	sp,sp,-16
    63fc:	00112623          	sw	ra,12(sp)
    6400:	00812423          	sw	s0,8(sp)
    6404:	00912223          	sw	s1,4(sp)
    6408:	01212023          	sw	s2,0(sp)
    640c:	0c058a63          	beqz	a1,64e0 <_fclose_r+0xe8>
    6410:	00050913          	mv	s2,a0
    6414:	00058413          	mv	s0,a1
    6418:	00050663          	beqz	a0,6424 <_fclose_r+0x2c>
    641c:	03852783          	lw	a5,56(a0)
    6420:	02078663          	beqz	a5,644c <_fclose_r+0x54>
    6424:	00c41783          	lh	a5,12(s0)
    6428:	00000493          	li	s1,0
    642c:	02079463          	bnez	a5,6454 <_fclose_r+0x5c>
    6430:	00048513          	mv	a0,s1
    6434:	00c12083          	lw	ra,12(sp)
    6438:	00812403          	lw	s0,8(sp)
    643c:	00412483          	lw	s1,4(sp)
    6440:	00012903          	lw	s2,0(sp)
    6444:	01010113          	addi	sp,sp,16
    6448:	00008067          	ret
    644c:	b80fd0ef          	jal	ra,37cc <__sinit>
    6450:	fd5ff06f          	j	6424 <_fclose_r+0x2c>
    6454:	00040593          	mv	a1,s0
    6458:	00090513          	mv	a0,s2
    645c:	f81fc0ef          	jal	ra,33dc <__sflush_r>
    6460:	00050493          	mv	s1,a0
    6464:	02c42783          	lw	a5,44(s0)
    6468:	00078a63          	beqz	a5,647c <_fclose_r+0x84>
    646c:	01c42583          	lw	a1,28(s0)
    6470:	00090513          	mv	a0,s2
    6474:	000780e7          	jalr	a5
    6478:	04054863          	bltz	a0,64c8 <_fclose_r+0xd0>
    647c:	00c45783          	lhu	a5,12(s0)
    6480:	0807f793          	andi	a5,a5,128
    6484:	04079663          	bnez	a5,64d0 <_fclose_r+0xd8>
    6488:	03042583          	lw	a1,48(s0)
    648c:	00058c63          	beqz	a1,64a4 <_fclose_r+0xac>
    6490:	04040793          	addi	a5,s0,64
    6494:	00f58663          	beq	a1,a5,64a0 <_fclose_r+0xa8>
    6498:	00090513          	mv	a0,s2
    649c:	8f1fd0ef          	jal	ra,3d8c <_free_r>
    64a0:	02042823          	sw	zero,48(s0)
    64a4:	04442583          	lw	a1,68(s0)
    64a8:	00058863          	beqz	a1,64b8 <_fclose_r+0xc0>
    64ac:	00090513          	mv	a0,s2
    64b0:	8ddfd0ef          	jal	ra,3d8c <_free_r>
    64b4:	04042223          	sw	zero,68(s0)
    64b8:	db0fd0ef          	jal	ra,3a68 <__sfp_lock_acquire>
    64bc:	00041623          	sh	zero,12(s0)
    64c0:	dacfd0ef          	jal	ra,3a6c <__sfp_lock_release>
    64c4:	f6dff06f          	j	6430 <_fclose_r+0x38>
    64c8:	fff00493          	li	s1,-1
    64cc:	fb1ff06f          	j	647c <_fclose_r+0x84>
    64d0:	01042583          	lw	a1,16(s0)
    64d4:	00090513          	mv	a0,s2
    64d8:	8b5fd0ef          	jal	ra,3d8c <_free_r>
    64dc:	fadff06f          	j	6488 <_fclose_r+0x90>
    64e0:	00000493          	li	s1,0
    64e4:	f4dff06f          	j	6430 <_fclose_r+0x38>

000064e8 <fclose>:
    64e8:	ff010113          	addi	sp,sp,-16
    64ec:	00112623          	sw	ra,12(sp)
    64f0:	00050593          	mv	a1,a0
    64f4:	000117b7          	lui	a5,0x11
    64f8:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    64fc:	efdff0ef          	jal	ra,63f8 <_fclose_r>
    6500:	00c12083          	lw	ra,12(sp)
    6504:	01010113          	addi	sp,sp,16
    6508:	00008067          	ret

0000650c <_fstat_r>:
    650c:	ff010113          	addi	sp,sp,-16
    6510:	00112623          	sw	ra,12(sp)
    6514:	00812423          	sw	s0,8(sp)
    6518:	00050413          	mv	s0,a0
    651c:	00058513          	mv	a0,a1
    6520:	000117b7          	lui	a5,0x11
    6524:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    6528:	00060593          	mv	a1,a2
    652c:	2dc000ef          	jal	ra,6808 <_fstat>
    6530:	fff00793          	li	a5,-1
    6534:	00f50a63          	beq	a0,a5,6548 <_fstat_r+0x3c>
    6538:	00c12083          	lw	ra,12(sp)
    653c:	00812403          	lw	s0,8(sp)
    6540:	01010113          	addi	sp,sp,16
    6544:	00008067          	ret
    6548:	000117b7          	lui	a5,0x11
    654c:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    6550:	fe0784e3          	beqz	a5,6538 <_fstat_r+0x2c>
    6554:	00f42023          	sw	a5,0(s0)
    6558:	fe1ff06f          	j	6538 <_fstat_r+0x2c>

0000655c <_isatty_r>:
    655c:	ff010113          	addi	sp,sp,-16
    6560:	00112623          	sw	ra,12(sp)
    6564:	00812423          	sw	s0,8(sp)
    6568:	00050413          	mv	s0,a0
    656c:	000117b7          	lui	a5,0x11
    6570:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    6574:	00058513          	mv	a0,a1
    6578:	2f8000ef          	jal	ra,6870 <_isatty>
    657c:	fff00793          	li	a5,-1
    6580:	00f50a63          	beq	a0,a5,6594 <_isatty_r+0x38>
    6584:	00c12083          	lw	ra,12(sp)
    6588:	00812403          	lw	s0,8(sp)
    658c:	01010113          	addi	sp,sp,16
    6590:	00008067          	ret
    6594:	000117b7          	lui	a5,0x11
    6598:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    659c:	fe0784e3          	beqz	a5,6584 <_isatty_r+0x28>
    65a0:	00f42023          	sw	a5,0(s0)
    65a4:	fe1ff06f          	j	6584 <_isatty_r+0x28>

000065a8 <_lseek_r>:
    65a8:	ff010113          	addi	sp,sp,-16
    65ac:	00112623          	sw	ra,12(sp)
    65b0:	00812423          	sw	s0,8(sp)
    65b4:	00050413          	mv	s0,a0
    65b8:	00058513          	mv	a0,a1
    65bc:	00060593          	mv	a1,a2
    65c0:	000117b7          	lui	a5,0x11
    65c4:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    65c8:	00068613          	mv	a2,a3
    65cc:	300000ef          	jal	ra,68cc <_lseek>
    65d0:	fff00793          	li	a5,-1
    65d4:	00f50a63          	beq	a0,a5,65e8 <_lseek_r+0x40>
    65d8:	00c12083          	lw	ra,12(sp)
    65dc:	00812403          	lw	s0,8(sp)
    65e0:	01010113          	addi	sp,sp,16
    65e4:	00008067          	ret
    65e8:	000117b7          	lui	a5,0x11
    65ec:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    65f0:	fe0784e3          	beqz	a5,65d8 <_lseek_r+0x30>
    65f4:	00f42023          	sw	a5,0(s0)
    65f8:	fe1ff06f          	j	65d8 <_lseek_r+0x30>

000065fc <_read_r>:
    65fc:	ff010113          	addi	sp,sp,-16
    6600:	00112623          	sw	ra,12(sp)
    6604:	00812423          	sw	s0,8(sp)
    6608:	00050413          	mv	s0,a0
    660c:	00058513          	mv	a0,a1
    6610:	00060593          	mv	a1,a2
    6614:	000117b7          	lui	a5,0x11
    6618:	1007a423          	sw	zero,264(a5) # 11108 <errno>
    661c:	00068613          	mv	a2,a3
    6620:	2f0000ef          	jal	ra,6910 <_read>
    6624:	fff00793          	li	a5,-1
    6628:	00f50a63          	beq	a0,a5,663c <_read_r+0x40>
    662c:	00c12083          	lw	ra,12(sp)
    6630:	00812403          	lw	s0,8(sp)
    6634:	01010113          	addi	sp,sp,16
    6638:	00008067          	ret
    663c:	000117b7          	lui	a5,0x11
    6640:	1087a783          	lw	a5,264(a5) # 11108 <errno>
    6644:	fe0784e3          	beqz	a5,662c <_read_r+0x30>
    6648:	00f42023          	sw	a5,0(s0)
    664c:	fe1ff06f          	j	662c <_read_r+0x30>

00006650 <cleanup_glue>:
    6650:	ff010113          	addi	sp,sp,-16
    6654:	00112623          	sw	ra,12(sp)
    6658:	00812423          	sw	s0,8(sp)
    665c:	00912223          	sw	s1,4(sp)
    6660:	00050493          	mv	s1,a0
    6664:	00058413          	mv	s0,a1
    6668:	0005a583          	lw	a1,0(a1)
    666c:	00058463          	beqz	a1,6674 <cleanup_glue+0x24>
    6670:	fe1ff0ef          	jal	ra,6650 <cleanup_glue>
    6674:	00040593          	mv	a1,s0
    6678:	00048513          	mv	a0,s1
    667c:	f10fd0ef          	jal	ra,3d8c <_free_r>
    6680:	00c12083          	lw	ra,12(sp)
    6684:	00812403          	lw	s0,8(sp)
    6688:	00412483          	lw	s1,4(sp)
    668c:	01010113          	addi	sp,sp,16
    6690:	00008067          	ret

00006694 <_reclaim_reent>:
    6694:	000117b7          	lui	a5,0x11
    6698:	9f47a783          	lw	a5,-1548(a5) # 109f4 <_impure_ptr>
    669c:	0ea78a63          	beq	a5,a0,6790 <_reclaim_reent+0xfc>
    66a0:	fe010113          	addi	sp,sp,-32
    66a4:	00112e23          	sw	ra,28(sp)
    66a8:	00812c23          	sw	s0,24(sp)
    66ac:	00912a23          	sw	s1,20(sp)
    66b0:	01212823          	sw	s2,16(sp)
    66b4:	01312623          	sw	s3,12(sp)
    66b8:	00050493          	mv	s1,a0
    66bc:	04c52783          	lw	a5,76(a0)
    66c0:	04078663          	beqz	a5,670c <_reclaim_reent+0x78>
    66c4:	00000913          	li	s2,0
    66c8:	08000993          	li	s3,128
    66cc:	00c0006f          	j	66d8 <_reclaim_reent+0x44>
    66d0:	00490913          	addi	s2,s2,4
    66d4:	03390663          	beq	s2,s3,6700 <_reclaim_reent+0x6c>
    66d8:	04c4a783          	lw	a5,76(s1)
    66dc:	012787b3          	add	a5,a5,s2
    66e0:	0007a403          	lw	s0,0(a5)
    66e4:	fe0406e3          	beqz	s0,66d0 <_reclaim_reent+0x3c>
    66e8:	00040593          	mv	a1,s0
    66ec:	00042403          	lw	s0,0(s0)
    66f0:	00048513          	mv	a0,s1
    66f4:	e98fd0ef          	jal	ra,3d8c <_free_r>
    66f8:	fe0418e3          	bnez	s0,66e8 <_reclaim_reent+0x54>
    66fc:	fd5ff06f          	j	66d0 <_reclaim_reent+0x3c>
    6700:	04c4a583          	lw	a1,76(s1)
    6704:	00048513          	mv	a0,s1
    6708:	e84fd0ef          	jal	ra,3d8c <_free_r>
    670c:	0404a583          	lw	a1,64(s1)
    6710:	00058663          	beqz	a1,671c <_reclaim_reent+0x88>
    6714:	00048513          	mv	a0,s1
    6718:	e74fd0ef          	jal	ra,3d8c <_free_r>
    671c:	1484a403          	lw	s0,328(s1)
    6720:	02040063          	beqz	s0,6740 <_reclaim_reent+0xac>
    6724:	14c48913          	addi	s2,s1,332
    6728:	01240c63          	beq	s0,s2,6740 <_reclaim_reent+0xac>
    672c:	00040593          	mv	a1,s0
    6730:	00042403          	lw	s0,0(s0)
    6734:	00048513          	mv	a0,s1
    6738:	e54fd0ef          	jal	ra,3d8c <_free_r>
    673c:	fe8918e3          	bne	s2,s0,672c <_reclaim_reent+0x98>
    6740:	0544a583          	lw	a1,84(s1)
    6744:	00058663          	beqz	a1,6750 <_reclaim_reent+0xbc>
    6748:	00048513          	mv	a0,s1
    674c:	e40fd0ef          	jal	ra,3d8c <_free_r>
    6750:	0384a783          	lw	a5,56(s1)
    6754:	02078063          	beqz	a5,6774 <_reclaim_reent+0xe0>
    6758:	03c4a783          	lw	a5,60(s1)
    675c:	00048513          	mv	a0,s1
    6760:	000780e7          	jalr	a5
    6764:	2e04a583          	lw	a1,736(s1)
    6768:	00058663          	beqz	a1,6774 <_reclaim_reent+0xe0>
    676c:	00048513          	mv	a0,s1
    6770:	ee1ff0ef          	jal	ra,6650 <cleanup_glue>
    6774:	01c12083          	lw	ra,28(sp)
    6778:	01812403          	lw	s0,24(sp)
    677c:	01412483          	lw	s1,20(sp)
    6780:	01012903          	lw	s2,16(sp)
    6784:	00c12983          	lw	s3,12(sp)
    6788:	02010113          	addi	sp,sp,32
    678c:	00008067          	ret
    6790:	00008067          	ret

00006794 <_close>:
    6794:	ff010113          	addi	sp,sp,-16
    6798:	00112623          	sw	ra,12(sp)
    679c:	00812423          	sw	s0,8(sp)
    67a0:	03900893          	li	a7,57
    67a4:	00000073          	ecall
    67a8:	00050413          	mv	s0,a0
    67ac:	00054c63          	bltz	a0,67c4 <_close+0x30>
    67b0:	00040513          	mv	a0,s0
    67b4:	00c12083          	lw	ra,12(sp)
    67b8:	00812403          	lw	s0,8(sp)
    67bc:	01010113          	addi	sp,sp,16
    67c0:	00008067          	ret
    67c4:	2e8000ef          	jal	ra,6aac <__errno>
    67c8:	40800433          	neg	s0,s0
    67cc:	00852023          	sw	s0,0(a0)
    67d0:	fff00413          	li	s0,-1
    67d4:	fddff06f          	j	67b0 <_close+0x1c>

000067d8 <_exit>:
    67d8:	05d00893          	li	a7,93
    67dc:	00000073          	ecall
    67e0:	00054463          	bltz	a0,67e8 <_exit+0x10>
    67e4:	0000006f          	j	67e4 <_exit+0xc>
    67e8:	ff010113          	addi	sp,sp,-16
    67ec:	00112623          	sw	ra,12(sp)
    67f0:	00812423          	sw	s0,8(sp)
    67f4:	00050413          	mv	s0,a0
    67f8:	2b4000ef          	jal	ra,6aac <__errno>
    67fc:	40800433          	neg	s0,s0
    6800:	00852023          	sw	s0,0(a0)
    6804:	0000006f          	j	6804 <_exit+0x2c>

00006808 <_fstat>:
    6808:	f7010113          	addi	sp,sp,-144
    680c:	08112623          	sw	ra,140(sp)
    6810:	08812423          	sw	s0,136(sp)
    6814:	08912223          	sw	s1,132(sp)
    6818:	00058493          	mv	s1,a1
    681c:	05000893          	li	a7,80
    6820:	00010593          	mv	a1,sp
    6824:	00000073          	ecall
    6828:	00050413          	mv	s0,a0
    682c:	02054463          	bltz	a0,6854 <_fstat+0x4c>
    6830:	00010593          	mv	a1,sp
    6834:	00048513          	mv	a0,s1
    6838:	1f0000ef          	jal	ra,6a28 <_conv_stat>
    683c:	00040513          	mv	a0,s0
    6840:	08c12083          	lw	ra,140(sp)
    6844:	08812403          	lw	s0,136(sp)
    6848:	08412483          	lw	s1,132(sp)
    684c:	09010113          	addi	sp,sp,144
    6850:	00008067          	ret
    6854:	258000ef          	jal	ra,6aac <__errno>
    6858:	40800433          	neg	s0,s0
    685c:	00852023          	sw	s0,0(a0)
    6860:	fff00413          	li	s0,-1
    6864:	fcdff06f          	j	6830 <_fstat+0x28>

00006868 <_getpid>:
    6868:	00100513          	li	a0,1
    686c:	00008067          	ret

00006870 <_isatty>:
    6870:	f9010113          	addi	sp,sp,-112
    6874:	06112623          	sw	ra,108(sp)
    6878:	00810593          	addi	a1,sp,8
    687c:	f8dff0ef          	jal	ra,6808 <_fstat>
    6880:	fff00793          	li	a5,-1
    6884:	00f50e63          	beq	a0,a5,68a0 <_isatty+0x30>
    6888:	00c12503          	lw	a0,12(sp)
    688c:	00d55513          	srli	a0,a0,0xd
    6890:	00157513          	andi	a0,a0,1
    6894:	06c12083          	lw	ra,108(sp)
    6898:	07010113          	addi	sp,sp,112
    689c:	00008067          	ret
    68a0:	00000513          	li	a0,0
    68a4:	ff1ff06f          	j	6894 <_isatty+0x24>

000068a8 <_kill>:
    68a8:	ff010113          	addi	sp,sp,-16
    68ac:	00112623          	sw	ra,12(sp)
    68b0:	1fc000ef          	jal	ra,6aac <__errno>
    68b4:	01600793          	li	a5,22
    68b8:	00f52023          	sw	a5,0(a0)
    68bc:	fff00513          	li	a0,-1
    68c0:	00c12083          	lw	ra,12(sp)
    68c4:	01010113          	addi	sp,sp,16
    68c8:	00008067          	ret

000068cc <_lseek>:
    68cc:	ff010113          	addi	sp,sp,-16
    68d0:	00112623          	sw	ra,12(sp)
    68d4:	00812423          	sw	s0,8(sp)
    68d8:	03e00893          	li	a7,62
    68dc:	00000073          	ecall
    68e0:	00050413          	mv	s0,a0
    68e4:	00054c63          	bltz	a0,68fc <_lseek+0x30>
    68e8:	00040513          	mv	a0,s0
    68ec:	00c12083          	lw	ra,12(sp)
    68f0:	00812403          	lw	s0,8(sp)
    68f4:	01010113          	addi	sp,sp,16
    68f8:	00008067          	ret
    68fc:	1b0000ef          	jal	ra,6aac <__errno>
    6900:	40800433          	neg	s0,s0
    6904:	00852023          	sw	s0,0(a0)
    6908:	fff00413          	li	s0,-1
    690c:	fddff06f          	j	68e8 <_lseek+0x1c>

00006910 <_read>:
    6910:	ff010113          	addi	sp,sp,-16
    6914:	00112623          	sw	ra,12(sp)
    6918:	00812423          	sw	s0,8(sp)
    691c:	03f00893          	li	a7,63
    6920:	00000073          	ecall
    6924:	00050413          	mv	s0,a0
    6928:	00054c63          	bltz	a0,6940 <_read+0x30>
    692c:	00040513          	mv	a0,s0
    6930:	00c12083          	lw	ra,12(sp)
    6934:	00812403          	lw	s0,8(sp)
    6938:	01010113          	addi	sp,sp,16
    693c:	00008067          	ret
    6940:	16c000ef          	jal	ra,6aac <__errno>
    6944:	40800433          	neg	s0,s0
    6948:	00852023          	sw	s0,0(a0)
    694c:	fff00413          	li	s0,-1
    6950:	fddff06f          	j	692c <_read+0x1c>

00006954 <_sbrk>:
    6954:	ff010113          	addi	sp,sp,-16
    6958:	00112623          	sw	ra,12(sp)
    695c:	00050793          	mv	a5,a0
    6960:	00011737          	lui	a4,0x11
    6964:	10c72703          	lw	a4,268(a4) # 1110c <heap_end.0>
    6968:	02071063          	bnez	a4,6988 <_sbrk+0x34>
    696c:	0d600893          	li	a7,214
    6970:	00000513          	li	a0,0
    6974:	00000073          	ecall
    6978:	fff00713          	li	a4,-1
    697c:	04e50063          	beq	a0,a4,69bc <_sbrk+0x68>
    6980:	00011737          	lui	a4,0x11
    6984:	10a72623          	sw	a0,268(a4) # 1110c <heap_end.0>
    6988:	00011737          	lui	a4,0x11
    698c:	10c72703          	lw	a4,268(a4) # 1110c <heap_end.0>
    6990:	00e787b3          	add	a5,a5,a4
    6994:	0d600893          	li	a7,214
    6998:	00078513          	mv	a0,a5
    699c:	00000073          	ecall
    69a0:	02f51863          	bne	a0,a5,69d0 <_sbrk+0x7c>
    69a4:	000116b7          	lui	a3,0x11
    69a8:	10f6a623          	sw	a5,268(a3) # 1110c <heap_end.0>
    69ac:	00070513          	mv	a0,a4
    69b0:	00c12083          	lw	ra,12(sp)
    69b4:	01010113          	addi	sp,sp,16
    69b8:	00008067          	ret
    69bc:	0f0000ef          	jal	ra,6aac <__errno>
    69c0:	00c00793          	li	a5,12
    69c4:	00f52023          	sw	a5,0(a0)
    69c8:	fff00513          	li	a0,-1
    69cc:	fe5ff06f          	j	69b0 <_sbrk+0x5c>
    69d0:	0dc000ef          	jal	ra,6aac <__errno>
    69d4:	00c00793          	li	a5,12
    69d8:	00f52023          	sw	a5,0(a0)
    69dc:	fff00513          	li	a0,-1
    69e0:	fd1ff06f          	j	69b0 <_sbrk+0x5c>

000069e4 <_write>:
    69e4:	ff010113          	addi	sp,sp,-16
    69e8:	00112623          	sw	ra,12(sp)
    69ec:	00812423          	sw	s0,8(sp)
    69f0:	04000893          	li	a7,64
    69f4:	00000073          	ecall
    69f8:	00050413          	mv	s0,a0
    69fc:	00054c63          	bltz	a0,6a14 <_write+0x30>
    6a00:	00040513          	mv	a0,s0
    6a04:	00c12083          	lw	ra,12(sp)
    6a08:	00812403          	lw	s0,8(sp)
    6a0c:	01010113          	addi	sp,sp,16
    6a10:	00008067          	ret
    6a14:	098000ef          	jal	ra,6aac <__errno>
    6a18:	40800433          	neg	s0,s0
    6a1c:	00852023          	sw	s0,0(a0)
    6a20:	fff00413          	li	s0,-1
    6a24:	fddff06f          	j	6a00 <_write+0x1c>

00006a28 <_conv_stat>:
    6a28:	0005a783          	lw	a5,0(a1)
    6a2c:	00f51023          	sh	a5,0(a0)
    6a30:	0085a783          	lw	a5,8(a1)
    6a34:	00f51123          	sh	a5,2(a0)
    6a38:	0105a783          	lw	a5,16(a1)
    6a3c:	00f52223          	sw	a5,4(a0)
    6a40:	0145a783          	lw	a5,20(a1)
    6a44:	00f51423          	sh	a5,8(a0)
    6a48:	0185a783          	lw	a5,24(a1)
    6a4c:	00f51523          	sh	a5,10(a0)
    6a50:	01c5a783          	lw	a5,28(a1)
    6a54:	00f51623          	sh	a5,12(a0)
    6a58:	0205a783          	lw	a5,32(a1)
    6a5c:	00f51723          	sh	a5,14(a0)
    6a60:	0305a783          	lw	a5,48(a1)
    6a64:	00f52823          	sw	a5,16(a0)
    6a68:	0405a783          	lw	a5,64(a1)
    6a6c:	04f52623          	sw	a5,76(a0)
    6a70:	0385a783          	lw	a5,56(a1)
    6a74:	04f52423          	sw	a5,72(a0)
    6a78:	0485a703          	lw	a4,72(a1)
    6a7c:	04c5a783          	lw	a5,76(a1)
    6a80:	00e52c23          	sw	a4,24(a0)
    6a84:	00f52e23          	sw	a5,28(a0)
    6a88:	0585a703          	lw	a4,88(a1)
    6a8c:	05c5a783          	lw	a5,92(a1)
    6a90:	02e52423          	sw	a4,40(a0)
    6a94:	02f52623          	sw	a5,44(a0)
    6a98:	0685a703          	lw	a4,104(a1)
    6a9c:	06c5a783          	lw	a5,108(a1)
    6aa0:	02e52c23          	sw	a4,56(a0)
    6aa4:	02f52e23          	sw	a5,60(a0)
    6aa8:	00008067          	ret

00006aac <__errno>:
    6aac:	000117b7          	lui	a5,0x11
    6ab0:	9f47a503          	lw	a0,-1548(a5) # 109f4 <_impure_ptr>
    6ab4:	00008067          	ret

00006ab8 <__udivdi3>:
    6ab8:	fd010113          	addi	sp,sp,-48
    6abc:	01312e23          	sw	s3,28(sp)
    6ac0:	02112623          	sw	ra,44(sp)
    6ac4:	02812423          	sw	s0,40(sp)
    6ac8:	02912223          	sw	s1,36(sp)
    6acc:	03212023          	sw	s2,32(sp)
    6ad0:	01412c23          	sw	s4,24(sp)
    6ad4:	01512a23          	sw	s5,20(sp)
    6ad8:	01612823          	sw	s6,16(sp)
    6adc:	01712623          	sw	s7,12(sp)
    6ae0:	01812423          	sw	s8,8(sp)
    6ae4:	01912223          	sw	s9,4(sp)
    6ae8:	00050993          	mv	s3,a0
    6aec:	38069463          	bnez	a3,6e74 <__udivdi3+0x3bc>
    6af0:	000117b7          	lui	a5,0x11
    6af4:	00060a13          	mv	s4,a2
    6af8:	00050493          	mv	s1,a0
    6afc:	de478793          	addi	a5,a5,-540 # 10de4 <__clz_tab>
    6b00:	12c5f863          	bgeu	a1,a2,6c30 <__udivdi3+0x178>
    6b04:	00010737          	lui	a4,0x10
    6b08:	00058913          	mv	s2,a1
    6b0c:	10e67863          	bgeu	a2,a4,6c1c <__udivdi3+0x164>
    6b10:	10063713          	sltiu	a4,a2,256
    6b14:	00174713          	xori	a4,a4,1
    6b18:	00371713          	slli	a4,a4,0x3
    6b1c:	00e656b3          	srl	a3,a2,a4
    6b20:	00d787b3          	add	a5,a5,a3
    6b24:	0007c783          	lbu	a5,0(a5)
    6b28:	02000693          	li	a3,32
    6b2c:	00e787b3          	add	a5,a5,a4
    6b30:	40f68733          	sub	a4,a3,a5
    6b34:	00f68c63          	beq	a3,a5,6b4c <__udivdi3+0x94>
    6b38:	00e59933          	sll	s2,a1,a4
    6b3c:	00f9d7b3          	srl	a5,s3,a5
    6b40:	00e61a33          	sll	s4,a2,a4
    6b44:	0127e933          	or	s2,a5,s2
    6b48:	00e994b3          	sll	s1,s3,a4
    6b4c:	010a5a93          	srli	s5,s4,0x10
    6b50:	000a8593          	mv	a1,s5
    6b54:	00090513          	mv	a0,s2
    6b58:	010a1b13          	slli	s6,s4,0x10
    6b5c:	219000ef          	jal	ra,7574 <__udivsi3>
    6b60:	010b5b13          	srli	s6,s6,0x10
    6b64:	00050593          	mv	a1,a0
    6b68:	00050993          	mv	s3,a0
    6b6c:	000b0513          	mv	a0,s6
    6b70:	1d9000ef          	jal	ra,7548 <__mulsi3>
    6b74:	00050413          	mv	s0,a0
    6b78:	000a8593          	mv	a1,s5
    6b7c:	00090513          	mv	a0,s2
    6b80:	23d000ef          	jal	ra,75bc <__umodsi3>
    6b84:	01051513          	slli	a0,a0,0x10
    6b88:	0104d713          	srli	a4,s1,0x10
    6b8c:	00a76733          	or	a4,a4,a0
    6b90:	00098913          	mv	s2,s3
    6b94:	00877e63          	bgeu	a4,s0,6bb0 <__udivdi3+0xf8>
    6b98:	01470733          	add	a4,a4,s4
    6b9c:	fff98913          	addi	s2,s3,-1
    6ba0:	01476863          	bltu	a4,s4,6bb0 <__udivdi3+0xf8>
    6ba4:	00877663          	bgeu	a4,s0,6bb0 <__udivdi3+0xf8>
    6ba8:	ffe98913          	addi	s2,s3,-2
    6bac:	01470733          	add	a4,a4,s4
    6bb0:	40870433          	sub	s0,a4,s0
    6bb4:	000a8593          	mv	a1,s5
    6bb8:	00040513          	mv	a0,s0
    6bbc:	1b9000ef          	jal	ra,7574 <__udivsi3>
    6bc0:	00050593          	mv	a1,a0
    6bc4:	00050993          	mv	s3,a0
    6bc8:	000b0513          	mv	a0,s6
    6bcc:	17d000ef          	jal	ra,7548 <__mulsi3>
    6bd0:	00050b13          	mv	s6,a0
    6bd4:	000a8593          	mv	a1,s5
    6bd8:	00040513          	mv	a0,s0
    6bdc:	1e1000ef          	jal	ra,75bc <__umodsi3>
    6be0:	01049713          	slli	a4,s1,0x10
    6be4:	01051513          	slli	a0,a0,0x10
    6be8:	01075713          	srli	a4,a4,0x10
    6bec:	00a76733          	or	a4,a4,a0
    6bf0:	00098693          	mv	a3,s3
    6bf4:	01677c63          	bgeu	a4,s6,6c0c <__udivdi3+0x154>
    6bf8:	00ea0733          	add	a4,s4,a4
    6bfc:	fff98693          	addi	a3,s3,-1
    6c00:	01476663          	bltu	a4,s4,6c0c <__udivdi3+0x154>
    6c04:	01677463          	bgeu	a4,s6,6c0c <__udivdi3+0x154>
    6c08:	ffe98693          	addi	a3,s3,-2
    6c0c:	01091793          	slli	a5,s2,0x10
    6c10:	00d7e7b3          	or	a5,a5,a3
    6c14:	00000913          	li	s2,0
    6c18:	1200006f          	j	6d38 <__udivdi3+0x280>
    6c1c:	010006b7          	lui	a3,0x1000
    6c20:	01000713          	li	a4,16
    6c24:	eed66ce3          	bltu	a2,a3,6b1c <__udivdi3+0x64>
    6c28:	01800713          	li	a4,24
    6c2c:	ef1ff06f          	j	6b1c <__udivdi3+0x64>
    6c30:	00061463          	bnez	a2,6c38 <__udivdi3+0x180>
    6c34:	00100073          	ebreak
    6c38:	00010737          	lui	a4,0x10
    6c3c:	12e67c63          	bgeu	a2,a4,6d74 <__udivdi3+0x2bc>
    6c40:	10063713          	sltiu	a4,a2,256
    6c44:	00174713          	xori	a4,a4,1
    6c48:	00371713          	slli	a4,a4,0x3
    6c4c:	00e656b3          	srl	a3,a2,a4
    6c50:	00d787b3          	add	a5,a5,a3
    6c54:	0007c783          	lbu	a5,0(a5)
    6c58:	02000693          	li	a3,32
    6c5c:	00e787b3          	add	a5,a5,a4
    6c60:	40f68733          	sub	a4,a3,a5
    6c64:	12f69263          	bne	a3,a5,6d88 <__udivdi3+0x2d0>
    6c68:	40c589b3          	sub	s3,a1,a2
    6c6c:	00100913          	li	s2,1
    6c70:	010a5b13          	srli	s6,s4,0x10
    6c74:	000b0593          	mv	a1,s6
    6c78:	00098513          	mv	a0,s3
    6c7c:	010a1b93          	slli	s7,s4,0x10
    6c80:	0f5000ef          	jal	ra,7574 <__udivsi3>
    6c84:	010bdb93          	srli	s7,s7,0x10
    6c88:	00050593          	mv	a1,a0
    6c8c:	00050c13          	mv	s8,a0
    6c90:	000b8513          	mv	a0,s7
    6c94:	0b5000ef          	jal	ra,7548 <__mulsi3>
    6c98:	00050a93          	mv	s5,a0
    6c9c:	000b0593          	mv	a1,s6
    6ca0:	00098513          	mv	a0,s3
    6ca4:	119000ef          	jal	ra,75bc <__umodsi3>
    6ca8:	01051513          	slli	a0,a0,0x10
    6cac:	0104d713          	srli	a4,s1,0x10
    6cb0:	00a76733          	or	a4,a4,a0
    6cb4:	000c0993          	mv	s3,s8
    6cb8:	01577e63          	bgeu	a4,s5,6cd4 <__udivdi3+0x21c>
    6cbc:	01470733          	add	a4,a4,s4
    6cc0:	fffc0993          	addi	s3,s8,-1 # 7fffffff <heap_end.0+0x7ffeeef3>
    6cc4:	01476863          	bltu	a4,s4,6cd4 <__udivdi3+0x21c>
    6cc8:	01577663          	bgeu	a4,s5,6cd4 <__udivdi3+0x21c>
    6ccc:	ffec0993          	addi	s3,s8,-2
    6cd0:	01470733          	add	a4,a4,s4
    6cd4:	41570433          	sub	s0,a4,s5
    6cd8:	000b0593          	mv	a1,s6
    6cdc:	00040513          	mv	a0,s0
    6ce0:	095000ef          	jal	ra,7574 <__udivsi3>
    6ce4:	00050593          	mv	a1,a0
    6ce8:	00050a93          	mv	s5,a0
    6cec:	000b8513          	mv	a0,s7
    6cf0:	059000ef          	jal	ra,7548 <__mulsi3>
    6cf4:	00050b93          	mv	s7,a0
    6cf8:	000b0593          	mv	a1,s6
    6cfc:	00040513          	mv	a0,s0
    6d00:	0bd000ef          	jal	ra,75bc <__umodsi3>
    6d04:	01049713          	slli	a4,s1,0x10
    6d08:	01051513          	slli	a0,a0,0x10
    6d0c:	01075713          	srli	a4,a4,0x10
    6d10:	00a76733          	or	a4,a4,a0
    6d14:	000a8693          	mv	a3,s5
    6d18:	01777c63          	bgeu	a4,s7,6d30 <__udivdi3+0x278>
    6d1c:	00ea0733          	add	a4,s4,a4
    6d20:	fffa8693          	addi	a3,s5,-1
    6d24:	01476663          	bltu	a4,s4,6d30 <__udivdi3+0x278>
    6d28:	01777463          	bgeu	a4,s7,6d30 <__udivdi3+0x278>
    6d2c:	ffea8693          	addi	a3,s5,-2
    6d30:	01099793          	slli	a5,s3,0x10
    6d34:	00d7e7b3          	or	a5,a5,a3
    6d38:	02c12083          	lw	ra,44(sp)
    6d3c:	02812403          	lw	s0,40(sp)
    6d40:	02412483          	lw	s1,36(sp)
    6d44:	01c12983          	lw	s3,28(sp)
    6d48:	01812a03          	lw	s4,24(sp)
    6d4c:	01412a83          	lw	s5,20(sp)
    6d50:	01012b03          	lw	s6,16(sp)
    6d54:	00c12b83          	lw	s7,12(sp)
    6d58:	00812c03          	lw	s8,8(sp)
    6d5c:	00412c83          	lw	s9,4(sp)
    6d60:	00090593          	mv	a1,s2
    6d64:	00078513          	mv	a0,a5
    6d68:	02012903          	lw	s2,32(sp)
    6d6c:	03010113          	addi	sp,sp,48
    6d70:	00008067          	ret
    6d74:	010006b7          	lui	a3,0x1000
    6d78:	01000713          	li	a4,16
    6d7c:	ecd668e3          	bltu	a2,a3,6c4c <__udivdi3+0x194>
    6d80:	01800713          	li	a4,24
    6d84:	ec9ff06f          	j	6c4c <__udivdi3+0x194>
    6d88:	00e61a33          	sll	s4,a2,a4
    6d8c:	00f5d933          	srl	s2,a1,a5
    6d90:	010a5b93          	srli	s7,s4,0x10
    6d94:	00e595b3          	sll	a1,a1,a4
    6d98:	00f9d7b3          	srl	a5,s3,a5
    6d9c:	00b7eab3          	or	s5,a5,a1
    6da0:	00e994b3          	sll	s1,s3,a4
    6da4:	000b8593          	mv	a1,s7
    6da8:	00090513          	mv	a0,s2
    6dac:	010a1993          	slli	s3,s4,0x10
    6db0:	7c4000ef          	jal	ra,7574 <__udivsi3>
    6db4:	0109d993          	srli	s3,s3,0x10
    6db8:	00050593          	mv	a1,a0
    6dbc:	00050b13          	mv	s6,a0
    6dc0:	00098513          	mv	a0,s3
    6dc4:	784000ef          	jal	ra,7548 <__mulsi3>
    6dc8:	00050413          	mv	s0,a0
    6dcc:	000b8593          	mv	a1,s7
    6dd0:	00090513          	mv	a0,s2
    6dd4:	7e8000ef          	jal	ra,75bc <__umodsi3>
    6dd8:	01051513          	slli	a0,a0,0x10
    6ddc:	010ad713          	srli	a4,s5,0x10
    6de0:	00a76733          	or	a4,a4,a0
    6de4:	000b0913          	mv	s2,s6
    6de8:	00877e63          	bgeu	a4,s0,6e04 <__udivdi3+0x34c>
    6dec:	01470733          	add	a4,a4,s4
    6df0:	fffb0913          	addi	s2,s6,-1
    6df4:	01476863          	bltu	a4,s4,6e04 <__udivdi3+0x34c>
    6df8:	00877663          	bgeu	a4,s0,6e04 <__udivdi3+0x34c>
    6dfc:	ffeb0913          	addi	s2,s6,-2
    6e00:	01470733          	add	a4,a4,s4
    6e04:	40870433          	sub	s0,a4,s0
    6e08:	000b8593          	mv	a1,s7
    6e0c:	00040513          	mv	a0,s0
    6e10:	764000ef          	jal	ra,7574 <__udivsi3>
    6e14:	00050593          	mv	a1,a0
    6e18:	00050b13          	mv	s6,a0
    6e1c:	00098513          	mv	a0,s3
    6e20:	728000ef          	jal	ra,7548 <__mulsi3>
    6e24:	00050993          	mv	s3,a0
    6e28:	000b8593          	mv	a1,s7
    6e2c:	00040513          	mv	a0,s0
    6e30:	78c000ef          	jal	ra,75bc <__umodsi3>
    6e34:	010a9793          	slli	a5,s5,0x10
    6e38:	01051513          	slli	a0,a0,0x10
    6e3c:	0107d793          	srli	a5,a5,0x10
    6e40:	00a7e7b3          	or	a5,a5,a0
    6e44:	000b0713          	mv	a4,s6
    6e48:	0137fe63          	bgeu	a5,s3,6e64 <__udivdi3+0x3ac>
    6e4c:	014787b3          	add	a5,a5,s4
    6e50:	fffb0713          	addi	a4,s6,-1
    6e54:	0147e863          	bltu	a5,s4,6e64 <__udivdi3+0x3ac>
    6e58:	0137f663          	bgeu	a5,s3,6e64 <__udivdi3+0x3ac>
    6e5c:	ffeb0713          	addi	a4,s6,-2
    6e60:	014787b3          	add	a5,a5,s4
    6e64:	01091913          	slli	s2,s2,0x10
    6e68:	413789b3          	sub	s3,a5,s3
    6e6c:	00e96933          	or	s2,s2,a4
    6e70:	e01ff06f          	j	6c70 <__udivdi3+0x1b8>
    6e74:	1ed5ec63          	bltu	a1,a3,706c <__udivdi3+0x5b4>
    6e78:	000107b7          	lui	a5,0x10
    6e7c:	04f6f463          	bgeu	a3,a5,6ec4 <__udivdi3+0x40c>
    6e80:	1006b513          	sltiu	a0,a3,256
    6e84:	00154513          	xori	a0,a0,1
    6e88:	00351513          	slli	a0,a0,0x3
    6e8c:	000117b7          	lui	a5,0x11
    6e90:	00a6d733          	srl	a4,a3,a0
    6e94:	de478793          	addi	a5,a5,-540 # 10de4 <__clz_tab>
    6e98:	00e787b3          	add	a5,a5,a4
    6e9c:	0007c703          	lbu	a4,0(a5)
    6ea0:	02000793          	li	a5,32
    6ea4:	00a70733          	add	a4,a4,a0
    6ea8:	40e78933          	sub	s2,a5,a4
    6eac:	02e79663          	bne	a5,a4,6ed8 <__udivdi3+0x420>
    6eb0:	00100793          	li	a5,1
    6eb4:	e8b6e2e3          	bltu	a3,a1,6d38 <__udivdi3+0x280>
    6eb8:	00c9b7b3          	sltu	a5,s3,a2
    6ebc:	0017c793          	xori	a5,a5,1
    6ec0:	e79ff06f          	j	6d38 <__udivdi3+0x280>
    6ec4:	010007b7          	lui	a5,0x1000
    6ec8:	01000513          	li	a0,16
    6ecc:	fcf6e0e3          	bltu	a3,a5,6e8c <__udivdi3+0x3d4>
    6ed0:	01800513          	li	a0,24
    6ed4:	fb9ff06f          	j	6e8c <__udivdi3+0x3d4>
    6ed8:	012696b3          	sll	a3,a3,s2
    6edc:	00e65b33          	srl	s6,a2,a4
    6ee0:	00db6b33          	or	s6,s6,a3
    6ee4:	00e5da33          	srl	s4,a1,a4
    6ee8:	010b5c13          	srli	s8,s6,0x10
    6eec:	00e9d733          	srl	a4,s3,a4
    6ef0:	012595b3          	sll	a1,a1,s2
    6ef4:	00b76ab3          	or	s5,a4,a1
    6ef8:	000a0513          	mv	a0,s4
    6efc:	000c0593          	mv	a1,s8
    6f00:	010b1b93          	slli	s7,s6,0x10
    6f04:	012614b3          	sll	s1,a2,s2
    6f08:	010bdb93          	srli	s7,s7,0x10
    6f0c:	668000ef          	jal	ra,7574 <__udivsi3>
    6f10:	00050593          	mv	a1,a0
    6f14:	00050c93          	mv	s9,a0
    6f18:	000b8513          	mv	a0,s7
    6f1c:	62c000ef          	jal	ra,7548 <__mulsi3>
    6f20:	00050413          	mv	s0,a0
    6f24:	000c0593          	mv	a1,s8
    6f28:	000a0513          	mv	a0,s4
    6f2c:	690000ef          	jal	ra,75bc <__umodsi3>
    6f30:	01051513          	slli	a0,a0,0x10
    6f34:	010ad693          	srli	a3,s5,0x10
    6f38:	00a6e6b3          	or	a3,a3,a0
    6f3c:	000c8a13          	mv	s4,s9
    6f40:	0086fe63          	bgeu	a3,s0,6f5c <__udivdi3+0x4a4>
    6f44:	016686b3          	add	a3,a3,s6
    6f48:	fffc8a13          	addi	s4,s9,-1
    6f4c:	0166e863          	bltu	a3,s6,6f5c <__udivdi3+0x4a4>
    6f50:	0086f663          	bgeu	a3,s0,6f5c <__udivdi3+0x4a4>
    6f54:	ffec8a13          	addi	s4,s9,-2
    6f58:	016686b3          	add	a3,a3,s6
    6f5c:	40868433          	sub	s0,a3,s0
    6f60:	000c0593          	mv	a1,s8
    6f64:	00040513          	mv	a0,s0
    6f68:	60c000ef          	jal	ra,7574 <__udivsi3>
    6f6c:	00050593          	mv	a1,a0
    6f70:	00050c93          	mv	s9,a0
    6f74:	000b8513          	mv	a0,s7
    6f78:	5d0000ef          	jal	ra,7548 <__mulsi3>
    6f7c:	00050b93          	mv	s7,a0
    6f80:	000c0593          	mv	a1,s8
    6f84:	00040513          	mv	a0,s0
    6f88:	634000ef          	jal	ra,75bc <__umodsi3>
    6f8c:	010a9713          	slli	a4,s5,0x10
    6f90:	01051513          	slli	a0,a0,0x10
    6f94:	01075713          	srli	a4,a4,0x10
    6f98:	00a76733          	or	a4,a4,a0
    6f9c:	000c8693          	mv	a3,s9
    6fa0:	01777e63          	bgeu	a4,s7,6fbc <__udivdi3+0x504>
    6fa4:	01670733          	add	a4,a4,s6
    6fa8:	fffc8693          	addi	a3,s9,-1
    6fac:	01676863          	bltu	a4,s6,6fbc <__udivdi3+0x504>
    6fb0:	01777663          	bgeu	a4,s7,6fbc <__udivdi3+0x504>
    6fb4:	ffec8693          	addi	a3,s9,-2
    6fb8:	01670733          	add	a4,a4,s6
    6fbc:	010a1793          	slli	a5,s4,0x10
    6fc0:	00010e37          	lui	t3,0x10
    6fc4:	00d7e7b3          	or	a5,a5,a3
    6fc8:	fffe0313          	addi	t1,t3,-1 # ffff <main+0x89df>
    6fcc:	41770833          	sub	a6,a4,s7
    6fd0:	0067f733          	and	a4,a5,t1
    6fd4:	0064f333          	and	t1,s1,t1
    6fd8:	0107de93          	srli	t4,a5,0x10
    6fdc:	0104d493          	srli	s1,s1,0x10
    6fe0:	00070513          	mv	a0,a4
    6fe4:	00030593          	mv	a1,t1
    6fe8:	560000ef          	jal	ra,7548 <__mulsi3>
    6fec:	00050893          	mv	a7,a0
    6ff0:	00048593          	mv	a1,s1
    6ff4:	00070513          	mv	a0,a4
    6ff8:	550000ef          	jal	ra,7548 <__mulsi3>
    6ffc:	00050713          	mv	a4,a0
    7000:	00030593          	mv	a1,t1
    7004:	000e8513          	mv	a0,t4
    7008:	540000ef          	jal	ra,7548 <__mulsi3>
    700c:	00050313          	mv	t1,a0
    7010:	00048593          	mv	a1,s1
    7014:	000e8513          	mv	a0,t4
    7018:	530000ef          	jal	ra,7548 <__mulsi3>
    701c:	00670733          	add	a4,a4,t1
    7020:	0108d693          	srli	a3,a7,0x10
    7024:	00d70733          	add	a4,a4,a3
    7028:	00677463          	bgeu	a4,t1,7030 <__udivdi3+0x578>
    702c:	01c50533          	add	a0,a0,t3
    7030:	01075693          	srli	a3,a4,0x10
    7034:	00a686b3          	add	a3,a3,a0
    7038:	02d86663          	bltu	a6,a3,7064 <__udivdi3+0x5ac>
    703c:	bcd81ce3          	bne	a6,a3,6c14 <__udivdi3+0x15c>
    7040:	00010637          	lui	a2,0x10
    7044:	fff60613          	addi	a2,a2,-1 # ffff <main+0x89df>
    7048:	00c77733          	and	a4,a4,a2
    704c:	01071713          	slli	a4,a4,0x10
    7050:	00c8f8b3          	and	a7,a7,a2
    7054:	012996b3          	sll	a3,s3,s2
    7058:	01170733          	add	a4,a4,a7
    705c:	00000913          	li	s2,0
    7060:	cce6fce3          	bgeu	a3,a4,6d38 <__udivdi3+0x280>
    7064:	fff78793          	addi	a5,a5,-1 # ffffff <heap_end.0+0xfeeef3>
    7068:	badff06f          	j	6c14 <__udivdi3+0x15c>
    706c:	00000913          	li	s2,0
    7070:	00000793          	li	a5,0
    7074:	cc5ff06f          	j	6d38 <__udivdi3+0x280>

00007078 <__umoddi3>:
    7078:	fd010113          	addi	sp,sp,-48
    707c:	02812423          	sw	s0,40(sp)
    7080:	02912223          	sw	s1,36(sp)
    7084:	02112623          	sw	ra,44(sp)
    7088:	03212023          	sw	s2,32(sp)
    708c:	01312e23          	sw	s3,28(sp)
    7090:	01412c23          	sw	s4,24(sp)
    7094:	01512a23          	sw	s5,20(sp)
    7098:	01612823          	sw	s6,16(sp)
    709c:	01712623          	sw	s7,12(sp)
    70a0:	01812423          	sw	s8,8(sp)
    70a4:	01912223          	sw	s9,4(sp)
    70a8:	01a12023          	sw	s10,0(sp)
    70ac:	00050413          	mv	s0,a0
    70b0:	00058493          	mv	s1,a1
    70b4:	24069c63          	bnez	a3,730c <__umoddi3+0x294>
    70b8:	000117b7          	lui	a5,0x11
    70bc:	00060a13          	mv	s4,a2
    70c0:	de478793          	addi	a5,a5,-540 # 10de4 <__clz_tab>
    70c4:	12c5fe63          	bgeu	a1,a2,7200 <__umoddi3+0x188>
    70c8:	00010737          	lui	a4,0x10
    70cc:	12e67063          	bgeu	a2,a4,71ec <__umoddi3+0x174>
    70d0:	10063713          	sltiu	a4,a2,256
    70d4:	00174713          	xori	a4,a4,1
    70d8:	00371713          	slli	a4,a4,0x3
    70dc:	00e656b3          	srl	a3,a2,a4
    70e0:	00d787b3          	add	a5,a5,a3
    70e4:	0007c783          	lbu	a5,0(a5)
    70e8:	00e787b3          	add	a5,a5,a4
    70ec:	02000713          	li	a4,32
    70f0:	40f70933          	sub	s2,a4,a5
    70f4:	00f70c63          	beq	a4,a5,710c <__umoddi3+0x94>
    70f8:	012595b3          	sll	a1,a1,s2
    70fc:	00f557b3          	srl	a5,a0,a5
    7100:	01261a33          	sll	s4,a2,s2
    7104:	00b7e4b3          	or	s1,a5,a1
    7108:	01251433          	sll	s0,a0,s2
    710c:	010a5a93          	srli	s5,s4,0x10
    7110:	000a8593          	mv	a1,s5
    7114:	010a1b13          	slli	s6,s4,0x10
    7118:	00048513          	mv	a0,s1
    711c:	458000ef          	jal	ra,7574 <__udivsi3>
    7120:	010b5b13          	srli	s6,s6,0x10
    7124:	000b0593          	mv	a1,s6
    7128:	420000ef          	jal	ra,7548 <__mulsi3>
    712c:	00050993          	mv	s3,a0
    7130:	000a8593          	mv	a1,s5
    7134:	00048513          	mv	a0,s1
    7138:	484000ef          	jal	ra,75bc <__umodsi3>
    713c:	01051513          	slli	a0,a0,0x10
    7140:	01045793          	srli	a5,s0,0x10
    7144:	00a7e7b3          	or	a5,a5,a0
    7148:	0137fa63          	bgeu	a5,s3,715c <__umoddi3+0xe4>
    714c:	014787b3          	add	a5,a5,s4
    7150:	0147e663          	bltu	a5,s4,715c <__umoddi3+0xe4>
    7154:	0137f463          	bgeu	a5,s3,715c <__umoddi3+0xe4>
    7158:	014787b3          	add	a5,a5,s4
    715c:	413784b3          	sub	s1,a5,s3
    7160:	000a8593          	mv	a1,s5
    7164:	00048513          	mv	a0,s1
    7168:	40c000ef          	jal	ra,7574 <__udivsi3>
    716c:	000b0593          	mv	a1,s6
    7170:	3d8000ef          	jal	ra,7548 <__mulsi3>
    7174:	00050993          	mv	s3,a0
    7178:	000a8593          	mv	a1,s5
    717c:	00048513          	mv	a0,s1
    7180:	43c000ef          	jal	ra,75bc <__umodsi3>
    7184:	01041413          	slli	s0,s0,0x10
    7188:	01051513          	slli	a0,a0,0x10
    718c:	01045413          	srli	s0,s0,0x10
    7190:	00a46433          	or	s0,s0,a0
    7194:	01347a63          	bgeu	s0,s3,71a8 <__umoddi3+0x130>
    7198:	01440433          	add	s0,s0,s4
    719c:	01446663          	bltu	s0,s4,71a8 <__umoddi3+0x130>
    71a0:	01347463          	bgeu	s0,s3,71a8 <__umoddi3+0x130>
    71a4:	01440433          	add	s0,s0,s4
    71a8:	41340433          	sub	s0,s0,s3
    71ac:	01245533          	srl	a0,s0,s2
    71b0:	00000593          	li	a1,0
    71b4:	02c12083          	lw	ra,44(sp)
    71b8:	02812403          	lw	s0,40(sp)
    71bc:	02412483          	lw	s1,36(sp)
    71c0:	02012903          	lw	s2,32(sp)
    71c4:	01c12983          	lw	s3,28(sp)
    71c8:	01812a03          	lw	s4,24(sp)
    71cc:	01412a83          	lw	s5,20(sp)
    71d0:	01012b03          	lw	s6,16(sp)
    71d4:	00c12b83          	lw	s7,12(sp)
    71d8:	00812c03          	lw	s8,8(sp)
    71dc:	00412c83          	lw	s9,4(sp)
    71e0:	00012d03          	lw	s10,0(sp)
    71e4:	03010113          	addi	sp,sp,48
    71e8:	00008067          	ret
    71ec:	010006b7          	lui	a3,0x1000
    71f0:	01000713          	li	a4,16
    71f4:	eed664e3          	bltu	a2,a3,70dc <__umoddi3+0x64>
    71f8:	01800713          	li	a4,24
    71fc:	ee1ff06f          	j	70dc <__umoddi3+0x64>
    7200:	00061463          	bnez	a2,7208 <__umoddi3+0x190>
    7204:	00100073          	ebreak
    7208:	00010737          	lui	a4,0x10
    720c:	0ee67663          	bgeu	a2,a4,72f8 <__umoddi3+0x280>
    7210:	10063713          	sltiu	a4,a2,256
    7214:	00174713          	xori	a4,a4,1
    7218:	00371713          	slli	a4,a4,0x3
    721c:	00e656b3          	srl	a3,a2,a4
    7220:	00d787b3          	add	a5,a5,a3
    7224:	0007c783          	lbu	a5,0(a5)
    7228:	40c584b3          	sub	s1,a1,a2
    722c:	00e787b3          	add	a5,a5,a4
    7230:	02000713          	li	a4,32
    7234:	40f70933          	sub	s2,a4,a5
    7238:	ecf70ae3          	beq	a4,a5,710c <__umoddi3+0x94>
    723c:	01261a33          	sll	s4,a2,s2
    7240:	00f5dbb3          	srl	s7,a1,a5
    7244:	010a5b13          	srli	s6,s4,0x10
    7248:	00f557b3          	srl	a5,a0,a5
    724c:	012595b3          	sll	a1,a1,s2
    7250:	00b7e9b3          	or	s3,a5,a1
    7254:	01251433          	sll	s0,a0,s2
    7258:	000b0593          	mv	a1,s6
    725c:	010a1a93          	slli	s5,s4,0x10
    7260:	000b8513          	mv	a0,s7
    7264:	310000ef          	jal	ra,7574 <__udivsi3>
    7268:	010ada93          	srli	s5,s5,0x10
    726c:	000a8593          	mv	a1,s5
    7270:	2d8000ef          	jal	ra,7548 <__mulsi3>
    7274:	00050493          	mv	s1,a0
    7278:	000b0593          	mv	a1,s6
    727c:	000b8513          	mv	a0,s7
    7280:	33c000ef          	jal	ra,75bc <__umodsi3>
    7284:	01051513          	slli	a0,a0,0x10
    7288:	0109d713          	srli	a4,s3,0x10
    728c:	00a76733          	or	a4,a4,a0
    7290:	00977a63          	bgeu	a4,s1,72a4 <__umoddi3+0x22c>
    7294:	01470733          	add	a4,a4,s4
    7298:	01476663          	bltu	a4,s4,72a4 <__umoddi3+0x22c>
    729c:	00977463          	bgeu	a4,s1,72a4 <__umoddi3+0x22c>
    72a0:	01470733          	add	a4,a4,s4
    72a4:	409704b3          	sub	s1,a4,s1
    72a8:	000b0593          	mv	a1,s6
    72ac:	00048513          	mv	a0,s1
    72b0:	2c4000ef          	jal	ra,7574 <__udivsi3>
    72b4:	000a8593          	mv	a1,s5
    72b8:	290000ef          	jal	ra,7548 <__mulsi3>
    72bc:	00050a93          	mv	s5,a0
    72c0:	000b0593          	mv	a1,s6
    72c4:	00048513          	mv	a0,s1
    72c8:	2f4000ef          	jal	ra,75bc <__umodsi3>
    72cc:	01099793          	slli	a5,s3,0x10
    72d0:	01051513          	slli	a0,a0,0x10
    72d4:	0107d793          	srli	a5,a5,0x10
    72d8:	00a7e7b3          	or	a5,a5,a0
    72dc:	0157fa63          	bgeu	a5,s5,72f0 <__umoddi3+0x278>
    72e0:	014787b3          	add	a5,a5,s4
    72e4:	0147e663          	bltu	a5,s4,72f0 <__umoddi3+0x278>
    72e8:	0157f463          	bgeu	a5,s5,72f0 <__umoddi3+0x278>
    72ec:	014787b3          	add	a5,a5,s4
    72f0:	415784b3          	sub	s1,a5,s5
    72f4:	e19ff06f          	j	710c <__umoddi3+0x94>
    72f8:	010006b7          	lui	a3,0x1000
    72fc:	01000713          	li	a4,16
    7300:	f0d66ee3          	bltu	a2,a3,721c <__umoddi3+0x1a4>
    7304:	01800713          	li	a4,24
    7308:	f15ff06f          	j	721c <__umoddi3+0x1a4>
    730c:	ead5e4e3          	bltu	a1,a3,71b4 <__umoddi3+0x13c>
    7310:	000107b7          	lui	a5,0x10
    7314:	04f6fe63          	bgeu	a3,a5,7370 <__umoddi3+0x2f8>
    7318:	1006b793          	sltiu	a5,a3,256
    731c:	0017c793          	xori	a5,a5,1
    7320:	00379793          	slli	a5,a5,0x3
    7324:	00011737          	lui	a4,0x11
    7328:	00f6d833          	srl	a6,a3,a5
    732c:	de470713          	addi	a4,a4,-540 # 10de4 <__clz_tab>
    7330:	01070733          	add	a4,a4,a6
    7334:	00074983          	lbu	s3,0(a4)
    7338:	00f989b3          	add	s3,s3,a5
    733c:	02000793          	li	a5,32
    7340:	41378933          	sub	s2,a5,s3
    7344:	05379063          	bne	a5,s3,7384 <__umoddi3+0x30c>
    7348:	00b6e463          	bltu	a3,a1,7350 <__umoddi3+0x2d8>
    734c:	00c56c63          	bltu	a0,a2,7364 <__umoddi3+0x2ec>
    7350:	40c50633          	sub	a2,a0,a2
    7354:	40d586b3          	sub	a3,a1,a3
    7358:	00c535b3          	sltu	a1,a0,a2
    735c:	40b684b3          	sub	s1,a3,a1
    7360:	00060413          	mv	s0,a2
    7364:	00040513          	mv	a0,s0
    7368:	00048593          	mv	a1,s1
    736c:	e49ff06f          	j	71b4 <__umoddi3+0x13c>
    7370:	01000737          	lui	a4,0x1000
    7374:	01000793          	li	a5,16
    7378:	fae6e6e3          	bltu	a3,a4,7324 <__umoddi3+0x2ac>
    737c:	01800793          	li	a5,24
    7380:	fa5ff06f          	j	7324 <__umoddi3+0x2ac>
    7384:	012696b3          	sll	a3,a3,s2
    7388:	01365b33          	srl	s6,a2,s3
    738c:	00db6b33          	or	s6,s6,a3
    7390:	0135d4b3          	srl	s1,a1,s3
    7394:	01355a33          	srl	s4,a0,s3
    7398:	012595b3          	sll	a1,a1,s2
    739c:	010b5c93          	srli	s9,s6,0x10
    73a0:	00ba6a33          	or	s4,s4,a1
    73a4:	01251ab3          	sll	s5,a0,s2
    73a8:	000c8593          	mv	a1,s9
    73ac:	00048513          	mv	a0,s1
    73b0:	010b1c13          	slli	s8,s6,0x10
    73b4:	01261bb3          	sll	s7,a2,s2
    73b8:	010c5c13          	srli	s8,s8,0x10
    73bc:	1b8000ef          	jal	ra,7574 <__udivsi3>
    73c0:	00050593          	mv	a1,a0
    73c4:	00050d13          	mv	s10,a0
    73c8:	000c0513          	mv	a0,s8
    73cc:	17c000ef          	jal	ra,7548 <__mulsi3>
    73d0:	00050413          	mv	s0,a0
    73d4:	000c8593          	mv	a1,s9
    73d8:	00048513          	mv	a0,s1
    73dc:	1e0000ef          	jal	ra,75bc <__umodsi3>
    73e0:	01051513          	slli	a0,a0,0x10
    73e4:	010a5793          	srli	a5,s4,0x10
    73e8:	00a7e7b3          	or	a5,a5,a0
    73ec:	000d0493          	mv	s1,s10
    73f0:	0087fe63          	bgeu	a5,s0,740c <__umoddi3+0x394>
    73f4:	016787b3          	add	a5,a5,s6
    73f8:	fffd0493          	addi	s1,s10,-1
    73fc:	0167e863          	bltu	a5,s6,740c <__umoddi3+0x394>
    7400:	0087f663          	bgeu	a5,s0,740c <__umoddi3+0x394>
    7404:	ffed0493          	addi	s1,s10,-2
    7408:	016787b3          	add	a5,a5,s6
    740c:	40878433          	sub	s0,a5,s0
    7410:	000c8593          	mv	a1,s9
    7414:	00040513          	mv	a0,s0
    7418:	15c000ef          	jal	ra,7574 <__udivsi3>
    741c:	00050593          	mv	a1,a0
    7420:	00050d13          	mv	s10,a0
    7424:	000c0513          	mv	a0,s8
    7428:	120000ef          	jal	ra,7548 <__mulsi3>
    742c:	000c8593          	mv	a1,s9
    7430:	00050c13          	mv	s8,a0
    7434:	00040513          	mv	a0,s0
    7438:	184000ef          	jal	ra,75bc <__umodsi3>
    743c:	010a1593          	slli	a1,s4,0x10
    7440:	01051513          	slli	a0,a0,0x10
    7444:	0105d593          	srli	a1,a1,0x10
    7448:	00a5e5b3          	or	a1,a1,a0
    744c:	000d0793          	mv	a5,s10
    7450:	0185fe63          	bgeu	a1,s8,746c <__umoddi3+0x3f4>
    7454:	016585b3          	add	a1,a1,s6
    7458:	fffd0793          	addi	a5,s10,-1
    745c:	0165e863          	bltu	a1,s6,746c <__umoddi3+0x3f4>
    7460:	0185f663          	bgeu	a1,s8,746c <__umoddi3+0x3f4>
    7464:	ffed0793          	addi	a5,s10,-2
    7468:	016585b3          	add	a1,a1,s6
    746c:	00010eb7          	lui	t4,0x10
    7470:	01049493          	slli	s1,s1,0x10
    7474:	00f4e4b3          	or	s1,s1,a5
    7478:	fffe8793          	addi	a5,t4,-1 # ffff <main+0x89df>
    747c:	00f4f8b3          	and	a7,s1,a5
    7480:	00fbf7b3          	and	a5,s7,a5
    7484:	41858733          	sub	a4,a1,s8
    7488:	0104d493          	srli	s1,s1,0x10
    748c:	010bde13          	srli	t3,s7,0x10
    7490:	00088513          	mv	a0,a7
    7494:	00078593          	mv	a1,a5
    7498:	0b0000ef          	jal	ra,7548 <__mulsi3>
    749c:	00050813          	mv	a6,a0
    74a0:	000e0593          	mv	a1,t3
    74a4:	00088513          	mv	a0,a7
    74a8:	0a0000ef          	jal	ra,7548 <__mulsi3>
    74ac:	00050893          	mv	a7,a0
    74b0:	00078593          	mv	a1,a5
    74b4:	00048513          	mv	a0,s1
    74b8:	090000ef          	jal	ra,7548 <__mulsi3>
    74bc:	00050313          	mv	t1,a0
    74c0:	000e0593          	mv	a1,t3
    74c4:	00048513          	mv	a0,s1
    74c8:	080000ef          	jal	ra,7548 <__mulsi3>
    74cc:	01085793          	srli	a5,a6,0x10
    74d0:	006888b3          	add	a7,a7,t1
    74d4:	011787b3          	add	a5,a5,a7
    74d8:	00050613          	mv	a2,a0
    74dc:	0067f463          	bgeu	a5,t1,74e4 <__umoddi3+0x46c>
    74e0:	01d50633          	add	a2,a0,t4
    74e4:	0107d693          	srli	a3,a5,0x10
    74e8:	00c686b3          	add	a3,a3,a2
    74ec:	00010637          	lui	a2,0x10
    74f0:	fff60613          	addi	a2,a2,-1 # ffff <main+0x89df>
    74f4:	00c7f7b3          	and	a5,a5,a2
    74f8:	01079793          	slli	a5,a5,0x10
    74fc:	00c87833          	and	a6,a6,a2
    7500:	010787b3          	add	a5,a5,a6
    7504:	00d76663          	bltu	a4,a3,7510 <__umoddi3+0x498>
    7508:	00d71e63          	bne	a4,a3,7524 <__umoddi3+0x4ac>
    750c:	00fafc63          	bgeu	s5,a5,7524 <__umoddi3+0x4ac>
    7510:	41778633          	sub	a2,a5,s7
    7514:	00c7b7b3          	sltu	a5,a5,a2
    7518:	016787b3          	add	a5,a5,s6
    751c:	40f686b3          	sub	a3,a3,a5
    7520:	00060793          	mv	a5,a2
    7524:	40fa87b3          	sub	a5,s5,a5
    7528:	00fabab3          	sltu	s5,s5,a5
    752c:	40d705b3          	sub	a1,a4,a3
    7530:	415585b3          	sub	a1,a1,s5
    7534:	013599b3          	sll	s3,a1,s3
    7538:	0127d7b3          	srl	a5,a5,s2
    753c:	00f9e533          	or	a0,s3,a5
    7540:	0125d5b3          	srl	a1,a1,s2
    7544:	c71ff06f          	j	71b4 <__umoddi3+0x13c>

00007548 <__mulsi3>:
    7548:	00050613          	mv	a2,a0
    754c:	00000513          	li	a0,0
    7550:	0015f693          	andi	a3,a1,1
    7554:	00068463          	beqz	a3,755c <__mulsi3+0x14>
    7558:	00c50533          	add	a0,a0,a2
    755c:	0015d593          	srli	a1,a1,0x1
    7560:	00161613          	slli	a2,a2,0x1
    7564:	fe0596e3          	bnez	a1,7550 <__mulsi3+0x8>
    7568:	00008067          	ret

0000756c <__divsi3>:
    756c:	06054063          	bltz	a0,75cc <__umodsi3+0x10>
    7570:	0605c663          	bltz	a1,75dc <__umodsi3+0x20>

00007574 <__udivsi3>:
    7574:	00058613          	mv	a2,a1
    7578:	00050593          	mv	a1,a0
    757c:	fff00513          	li	a0,-1
    7580:	02060c63          	beqz	a2,75b8 <__udivsi3+0x44>
    7584:	00100693          	li	a3,1
    7588:	00b67a63          	bgeu	a2,a1,759c <__udivsi3+0x28>
    758c:	00c05863          	blez	a2,759c <__udivsi3+0x28>
    7590:	00161613          	slli	a2,a2,0x1
    7594:	00169693          	slli	a3,a3,0x1
    7598:	feb66ae3          	bltu	a2,a1,758c <__udivsi3+0x18>
    759c:	00000513          	li	a0,0
    75a0:	00c5e663          	bltu	a1,a2,75ac <__udivsi3+0x38>
    75a4:	40c585b3          	sub	a1,a1,a2
    75a8:	00d56533          	or	a0,a0,a3
    75ac:	0016d693          	srli	a3,a3,0x1
    75b0:	00165613          	srli	a2,a2,0x1
    75b4:	fe0696e3          	bnez	a3,75a0 <__udivsi3+0x2c>
    75b8:	00008067          	ret

000075bc <__umodsi3>:
    75bc:	00008293          	mv	t0,ra
    75c0:	fb5ff0ef          	jal	ra,7574 <__udivsi3>
    75c4:	00058513          	mv	a0,a1
    75c8:	00028067          	jr	t0 # 20a0 <memset+0xb4>
    75cc:	40a00533          	neg	a0,a0
    75d0:	00b04863          	bgtz	a1,75e0 <__umodsi3+0x24>
    75d4:	40b005b3          	neg	a1,a1
    75d8:	f9dff06f          	j	7574 <__udivsi3>
    75dc:	40b005b3          	neg	a1,a1
    75e0:	00008293          	mv	t0,ra
    75e4:	f91ff0ef          	jal	ra,7574 <__udivsi3>
    75e8:	40a00533          	neg	a0,a0
    75ec:	00028067          	jr	t0

000075f0 <__modsi3>:
    75f0:	00008293          	mv	t0,ra
    75f4:	0005ca63          	bltz	a1,7608 <__modsi3+0x18>
    75f8:	00054c63          	bltz	a0,7610 <__modsi3+0x20>
    75fc:	f79ff0ef          	jal	ra,7574 <__udivsi3>
    7600:	00058513          	mv	a0,a1
    7604:	00028067          	jr	t0
    7608:	40b005b3          	neg	a1,a1
    760c:	fe0558e3          	bgez	a0,75fc <__modsi3+0xc>
    7610:	40a00533          	neg	a0,a0
    7614:	f61ff0ef          	jal	ra,7574 <__udivsi3>
    7618:	40b00533          	neg	a0,a1
    761c:	00028067          	jr	t0

Disassembly of section .text.startup:

00007620 <main>:
    7620:	fe010113          	addi	sp,sp,-32
    7624:	00112e23          	sw	ra,28(sp)
    7628:	a99f80ef          	jal	ra,c0 <initialise_board>
    762c:	f24fa0ef          	jal	ra,1d50 <initialise_benchmark>
    7630:	00100513          	li	a0,1
    7634:	f20fa0ef          	jal	ra,1d54 <warm_caches>
    7638:	a8df80ef          	jal	ra,c4 <start_trigger>
    763c:	f30fa0ef          	jal	ra,1d6c <benchmark>
    7640:	00a12623          	sw	a0,12(sp)
    7644:	aadf80ef          	jal	ra,f0 <stop_trigger>
    7648:	00c12503          	lw	a0,12(sp)
    764c:	ec0fa0ef          	jal	ra,1d0c <verify_benchmark>
    7650:	00051a63          	bnez	a0,7664 <main+0x44>
    7654:	110007b7          	lui	a5,0x11000
    7658:	fff00713          	li	a4,-1
    765c:	00e7a823          	sw	a4,16(a5) # 11000010 <heap_end.0+0x10feef04>
    7660:	00e7aa23          	sw	a4,20(a5)
    7664:	110007b7          	lui	a5,0x11000
    7668:	00100713          	li	a4,1
    766c:	08e7a023          	sw	a4,128(a5) # 11000080 <heap_end.0+0x10feef74>
    7670:	0000006f          	j	7670 <main+0x50>
