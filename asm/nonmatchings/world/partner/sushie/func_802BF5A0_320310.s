.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802BF5A0_320310
/* 320310 802BF5A0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 320314 802BF5A4 AFBF0028 */  sw        $ra, 0x28($sp)
/* 320318 802BF5A8 AFB30024 */  sw        $s3, 0x24($sp)
/* 32031C 802BF5AC AFB20020 */  sw        $s2, 0x20($sp)
/* 320320 802BF5B0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 320324 802BF5B4 AFB00018 */  sw        $s0, 0x18($sp)
/* 320328 802BF5B8 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 32032C 802BF5BC 8C91014C */  lw        $s1, 0x14c($a0)
/* 320330 802BF5C0 10A00009 */  beqz      $a1, .L802BF5E8
/* 320334 802BF5C4 0220202D */   daddu    $a0, $s1, $zero
/* 320338 802BF5C8 0C03AE2A */  jal       enable_partner_walking
/* 32033C 802BF5CC 24050001 */   addiu    $a1, $zero, 1
/* 320340 802BF5D0 3C04802C */  lui       $a0, %hi(D_802BFDF8_320B68)
/* 320344 802BF5D4 8C84FDF8 */  lw        $a0, %lo(D_802BFDF8_320B68)($a0)
/* 320348 802BF5D8 0C00A580 */  jal       mem_clear
/* 32034C 802BF5DC 2405001C */   addiu    $a1, $zero, 0x1c
/* 320350 802BF5E0 3C018011 */  lui       $at, %hi(D_8010C954)
/* 320354 802BF5E4 AC20C954 */  sw        $zero, %lo(D_8010C954)($at)
.L802BF5E8:
/* 320358 802BF5E8 3C138011 */  lui       $s3, %hi(D_8010C954)
/* 32035C 802BF5EC 2673C954 */  addiu     $s3, $s3, %lo(D_8010C954)
/* 320360 802BF5F0 8E720000 */  lw        $s2, ($s3)
/* 320364 802BF5F4 16400007 */  bnez      $s2, .L802BF614
/* 320368 802BF5F8 24050001 */   addiu    $a1, $zero, 1
/* 32036C 802BF5FC 0C03AE8F */  jal       func_800EBA3C
/* 320370 802BF600 0220202D */   daddu    $a0, $s1, $zero
/* 320374 802BF604 0C03AED0 */  jal       func_800EBB40
/* 320378 802BF608 0220202D */   daddu    $a0, $s1, $zero
/* 32037C 802BF60C 080AFE40 */  j         .L802BF900
/* 320380 802BF610 0000102D */   daddu    $v0, $zero, $zero
.L802BF614:
/* 320384 802BF614 3C10802C */  lui       $s0, %hi(D_802BFDF8_320B68)
/* 320388 802BF618 2610FDF8 */  addiu     $s0, $s0, %lo(D_802BFDF8_320B68)
/* 32038C 802BF61C 8E040000 */  lw        $a0, ($s0)
/* 320390 802BF620 8C830004 */  lw        $v1, 4($a0)
/* 320394 802BF624 10650030 */  beq       $v1, $a1, .L802BF6E8
/* 320398 802BF628 28620002 */   slti     $v0, $v1, 2
/* 32039C 802BF62C 10400005 */  beqz      $v0, .L802BF644
/* 3203A0 802BF630 24020002 */   addiu    $v0, $zero, 2
/* 3203A4 802BF634 10600009 */  beqz      $v1, .L802BF65C
/* 3203A8 802BF638 0000102D */   daddu    $v0, $zero, $zero
/* 3203AC 802BF63C 080AFE40 */  j         .L802BF900
/* 3203B0 802BF640 00000000 */   nop
.L802BF644:
/* 3203B4 802BF644 1062009A */  beq       $v1, $v0, .L802BF8B0
/* 3203B8 802BF648 24020003 */   addiu    $v0, $zero, 3
/* 3203BC 802BF64C 106200A0 */  beq       $v1, $v0, .L802BF8D0
/* 3203C0 802BF650 0000102D */   daddu    $v0, $zero, $zero
/* 3203C4 802BF654 080AFE40 */  j         .L802BF900
/* 3203C8 802BF658 00000000 */   nop
.L802BF65C:
/* 3203CC 802BF65C AC850004 */  sw        $a1, 4($a0)
/* 3203D0 802BF660 8E220000 */  lw        $v0, ($s1)
/* 3203D4 802BF664 AC820008 */  sw        $v0, 8($a0)
/* 3203D8 802BF668 C62C0038 */  lwc1      $f12, 0x38($s1)
/* 3203DC 802BF66C C62E0040 */  lwc1      $f14, 0x40($s1)
/* 3203E0 802BF670 8E460048 */  lw        $a2, 0x48($s2)
/* 3203E4 802BF674 0C00A7B5 */  jal       dist2D
/* 3203E8 802BF678 8E470050 */   lw       $a3, 0x50($s2)
/* 3203EC 802BF67C 8E020000 */  lw        $v0, ($s0)
/* 3203F0 802BF680 46000005 */  abs.s     $f0, $f0
/* 3203F4 802BF684 E440000C */  swc1      $f0, 0xc($v0)
/* 3203F8 802BF688 C64C0048 */  lwc1      $f12, 0x48($s2)
/* 3203FC 802BF68C C64E0050 */  lwc1      $f14, 0x50($s2)
/* 320400 802BF690 8E260038 */  lw        $a2, 0x38($s1)
/* 320404 802BF694 0C00A720 */  jal       atan2
/* 320408 802BF698 8E270040 */   lw       $a3, 0x40($s1)
/* 32040C 802BF69C 3C040004 */  lui       $a0, 4
/* 320410 802BF6A0 24020078 */  addiu     $v0, $zero, 0x78
/* 320414 802BF6A4 8E030000 */  lw        $v1, ($s0)
/* 320418 802BF6A8 3C0140C0 */  lui       $at, 0x40c0
/* 32041C 802BF6AC 44811000 */  mtc1      $at, $f2
/* 320420 802BF6B0 3C014248 */  lui       $at, 0x4248
/* 320424 802BF6B4 44812000 */  mtc1      $at, $f4
/* 320428 802BF6B8 34840148 */  ori       $a0, $a0, 0x148
/* 32042C 802BF6BC E4600010 */  swc1      $f0, 0x10($v1)
/* 320430 802BF6C0 E4620014 */  swc1      $f2, 0x14($v1)
/* 320434 802BF6C4 E4640018 */  swc1      $f4, 0x18($v1)
/* 320438 802BF6C8 AC620000 */  sw        $v0, ($v1)
/* 32043C 802BF6CC 8E220000 */  lw        $v0, ($s1)
/* 320440 802BF6D0 2403FDFF */  addiu     $v1, $zero, -0x201
/* 320444 802BF6D4 00441025 */  or        $v0, $v0, $a0
/* 320448 802BF6D8 00431024 */  and       $v0, $v0, $v1
/* 32044C 802BF6DC AE220000 */  sw        $v0, ($s1)
/* 320450 802BF6E0 3C10802C */  lui       $s0, %hi(D_802BFDF8_320B68)
/* 320454 802BF6E4 2610FDF8 */  addiu     $s0, $s0, %lo(D_802BFDF8_320B68)
.L802BF6E8:
/* 320458 802BF6E8 8E020000 */  lw        $v0, ($s0)
/* 32045C 802BF6EC 3C0140C9 */  lui       $at, 0x40c9
/* 320460 802BF6F0 34210FD0 */  ori       $at, $at, 0xfd0
/* 320464 802BF6F4 44810000 */  mtc1      $at, $f0
/* 320468 802BF6F8 C44C0010 */  lwc1      $f12, 0x10($v0)
/* 32046C 802BF6FC 46006302 */  mul.s     $f12, $f12, $f0
/* 320470 802BF700 00000000 */  nop
/* 320474 802BF704 27A50010 */  addiu     $a1, $sp, 0x10
/* 320478 802BF708 3C0143B4 */  lui       $at, 0x43b4
/* 32047C 802BF70C 44810000 */  mtc1      $at, $f0
/* 320480 802BF710 27A60014 */  addiu     $a2, $sp, 0x14
/* 320484 802BF714 0C00A82D */  jal       sin_cos_rad
/* 320488 802BF718 46006303 */   div.s    $f12, $f12, $f0
/* 32048C 802BF71C 8E020000 */  lw        $v0, ($s0)
/* 320490 802BF720 C7A20010 */  lwc1      $f2, 0x10($sp)
/* 320494 802BF724 C440000C */  lwc1      $f0, 0xc($v0)
/* 320498 802BF728 46001082 */  mul.s     $f2, $f2, $f0
/* 32049C 802BF72C 00000000 */  nop
/* 3204A0 802BF730 C6400048 */  lwc1      $f0, 0x48($s2)
/* 3204A4 802BF734 46020000 */  add.s     $f0, $f0, $f2
/* 3204A8 802BF738 E6200038 */  swc1      $f0, 0x38($s1)
/* 3204AC 802BF73C C7A20014 */  lwc1      $f2, 0x14($sp)
/* 3204B0 802BF740 C440000C */  lwc1      $f0, 0xc($v0)
/* 3204B4 802BF744 46001082 */  mul.s     $f2, $f2, $f0
/* 3204B8 802BF748 00000000 */  nop
/* 3204BC 802BF74C C6400050 */  lwc1      $f0, 0x50($s2)
/* 3204C0 802BF750 46020001 */  sub.s     $f0, $f0, $f2
/* 3204C4 802BF754 E6200040 */  swc1      $f0, 0x40($s1)
/* 3204C8 802BF758 C4400010 */  lwc1      $f0, 0x10($v0)
/* 3204CC 802BF75C C44C0014 */  lwc1      $f12, 0x14($v0)
/* 3204D0 802BF760 0C00A6C9 */  jal       clamp_angle
/* 3204D4 802BF764 460C0301 */   sub.s    $f12, $f0, $f12
/* 3204D8 802BF768 8E100000 */  lw        $s0, ($s0)
/* 3204DC 802BF76C 3C0141A0 */  lui       $at, 0x41a0
/* 3204E0 802BF770 44811000 */  mtc1      $at, $f2
/* 3204E4 802BF774 C604000C */  lwc1      $f4, 0xc($s0)
/* 3204E8 802BF778 4604103C */  c.lt.s    $f2, $f4
/* 3204EC 802BF77C 00000000 */  nop
/* 3204F0 802BF780 45000005 */  bc1f      .L802BF798
/* 3204F4 802BF784 E6000010 */   swc1     $f0, 0x10($s0)
/* 3204F8 802BF788 3C013F80 */  lui       $at, 0x3f80
/* 3204FC 802BF78C 44810000 */  mtc1      $at, $f0
/* 320500 802BF790 080AFDF1 */  j         .L802BF7C4
/* 320504 802BF794 46002001 */   sub.s    $f0, $f4, $f0
.L802BF798:
/* 320508 802BF798 3C014198 */  lui       $at, 0x4198
/* 32050C 802BF79C 44810000 */  mtc1      $at, $f0
/* 320510 802BF7A0 00000000 */  nop
/* 320514 802BF7A4 4600203C */  c.lt.s    $f4, $f0
/* 320518 802BF7A8 00000000 */  nop
/* 32051C 802BF7AC 45000006 */  bc1f      .L802BF7C8
/* 320520 802BF7B0 00000000 */   nop
/* 320524 802BF7B4 3C013F80 */  lui       $at, 0x3f80
/* 320528 802BF7B8 44810000 */  mtc1      $at, $f0
/* 32052C 802BF7BC 00000000 */  nop
/* 320530 802BF7C0 46002000 */  add.s     $f0, $f4, $f0
.L802BF7C4:
/* 320534 802BF7C4 E600000C */  swc1      $f0, 0xc($s0)
.L802BF7C8:
/* 320538 802BF7C8 3C10802C */  lui       $s0, %hi(D_802BFDF8_320B68)
/* 32053C 802BF7CC 2610FDF8 */  addiu     $s0, $s0, %lo(D_802BFDF8_320B68)
/* 320540 802BF7D0 8E020000 */  lw        $v0, ($s0)
/* 320544 802BF7D4 3C0140C9 */  lui       $at, 0x40c9
/* 320548 802BF7D8 34210FD0 */  ori       $at, $at, 0xfd0
/* 32054C 802BF7DC 44810000 */  mtc1      $at, $f0
/* 320550 802BF7E0 C44C0018 */  lwc1      $f12, 0x18($v0)
/* 320554 802BF7E4 46006302 */  mul.s     $f12, $f12, $f0
/* 320558 802BF7E8 00000000 */  nop
/* 32055C 802BF7EC 3C0143B4 */  lui       $at, 0x43b4
/* 320560 802BF7F0 4481A000 */  mtc1      $at, $f20
/* 320564 802BF7F4 0C00A85B */  jal       sin_rad
/* 320568 802BF7F8 46146303 */   div.s    $f12, $f12, $f20
/* 32056C 802BF7FC 8E020000 */  lw        $v0, ($s0)
/* 320570 802BF800 3C014040 */  lui       $at, 0x4040
/* 320574 802BF804 44812000 */  mtc1      $at, $f4
/* 320578 802BF808 C4420018 */  lwc1      $f2, 0x18($v0)
/* 32057C 802BF80C 46041080 */  add.s     $f2, $f2, $f4
/* 320580 802BF810 3C014316 */  lui       $at, 0x4316
/* 320584 802BF814 44813000 */  mtc1      $at, $f6
/* 320588 802BF818 00000000 */  nop
/* 32058C 802BF81C 4602303C */  c.lt.s    $f6, $f2
/* 320590 802BF820 E4420018 */  swc1      $f2, 0x18($v0)
/* 320594 802BF824 46040082 */  mul.s     $f2, $f0, $f4
/* 320598 802BF828 00000000 */  nop
/* 32059C 802BF82C 45030001 */  bc1tl     .L802BF834
/* 3205A0 802BF830 E4460018 */   swc1     $f6, 0x18($v0)
.L802BF834:
/* 3205A4 802BF834 C620003C */  lwc1      $f0, 0x3c($s1)
/* 3205A8 802BF838 46020000 */  add.s     $f0, $f0, $f2
/* 3205AC 802BF83C 8E020000 */  lw        $v0, ($s0)
/* 3205B0 802BF840 E620003C */  swc1      $f0, 0x3c($s1)
/* 3205B4 802BF844 C44C0010 */  lwc1      $f12, 0x10($v0)
/* 3205B8 802BF848 0C00A6C9 */  jal       clamp_angle
/* 3205BC 802BF84C 460CA301 */   sub.s    $f12, $f20, $f12
/* 3205C0 802BF850 8E020000 */  lw        $v0, ($s0)
/* 3205C4 802BF854 E6200034 */  swc1      $f0, 0x34($s1)
/* 3205C8 802BF858 C4400014 */  lwc1      $f0, 0x14($v0)
/* 3205CC 802BF85C 3C01802C */  lui       $at, %hi(D_802BFED8_320C48)
/* 3205D0 802BF860 D422FED8 */  ldc1      $f2, %lo(D_802BFED8_320C48)($at)
/* 3205D4 802BF864 46000021 */  cvt.d.s   $f0, $f0
/* 3205D8 802BF868 46220000 */  add.d     $f0, $f0, $f2
/* 3205DC 802BF86C 3C014220 */  lui       $at, 0x4220
/* 3205E0 802BF870 44811000 */  mtc1      $at, $f2
/* 3205E4 802BF874 46200020 */  cvt.s.d   $f0, $f0
/* 3205E8 802BF878 4600103C */  c.lt.s    $f2, $f0
/* 3205EC 802BF87C 00000000 */  nop
/* 3205F0 802BF880 45000002 */  bc1f      .L802BF88C
/* 3205F4 802BF884 E4400014 */   swc1     $f0, 0x14($v0)
/* 3205F8 802BF888 E4420014 */  swc1      $f2, 0x14($v0)
.L802BF88C:
/* 3205FC 802BF88C 8E030000 */  lw        $v1, ($s0)
/* 320600 802BF890 8C620000 */  lw        $v0, ($v1)
/* 320604 802BF894 2442FFFF */  addiu     $v0, $v0, -1
/* 320608 802BF898 14400018 */  bnez      $v0, .L802BF8FC
/* 32060C 802BF89C AC620000 */   sw       $v0, ($v1)
/* 320610 802BF8A0 8C620004 */  lw        $v0, 4($v1)
/* 320614 802BF8A4 24420001 */  addiu     $v0, $v0, 1
/* 320618 802BF8A8 080AFE3F */  j         .L802BF8FC
/* 32061C 802BF8AC AC620004 */   sw       $v0, 4($v1)
.L802BF8B0:
/* 320620 802BF8B0 8C820008 */  lw        $v0, 8($a0)
/* 320624 802BF8B4 AE220000 */  sw        $v0, ($s1)
/* 320628 802BF8B8 8C820004 */  lw        $v0, 4($a0)
/* 32062C 802BF8BC 2403001E */  addiu     $v1, $zero, 0x1e
/* 320630 802BF8C0 AC830000 */  sw        $v1, ($a0)
/* 320634 802BF8C4 24420001 */  addiu     $v0, $v0, 1
/* 320638 802BF8C8 080AFE3F */  j         .L802BF8FC
/* 32063C 802BF8CC AC820004 */   sw       $v0, 4($a0)
.L802BF8D0:
/* 320640 802BF8D0 0C03AE8F */  jal       func_800EBA3C
/* 320644 802BF8D4 0220202D */   daddu    $a0, $s1, $zero
/* 320648 802BF8D8 0C03AED0 */  jal       func_800EBB40
/* 32064C 802BF8DC 0220202D */   daddu    $a0, $s1, $zero
/* 320650 802BF8E0 8E030000 */  lw        $v1, ($s0)
/* 320654 802BF8E4 8C620000 */  lw        $v0, ($v1)
/* 320658 802BF8E8 2442FFFF */  addiu     $v0, $v0, -1
/* 32065C 802BF8EC 14400003 */  bnez      $v0, .L802BF8FC
/* 320660 802BF8F0 AC620000 */   sw       $v0, ($v1)
/* 320664 802BF8F4 AC600004 */  sw        $zero, 4($v1)
/* 320668 802BF8F8 AE600000 */  sw        $zero, ($s3)
.L802BF8FC:
/* 32066C 802BF8FC 0000102D */  daddu     $v0, $zero, $zero
.L802BF900:
/* 320670 802BF900 8FBF0028 */  lw        $ra, 0x28($sp)
/* 320674 802BF904 8FB30024 */  lw        $s3, 0x24($sp)
/* 320678 802BF908 8FB20020 */  lw        $s2, 0x20($sp)
/* 32067C 802BF90C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 320680 802BF910 8FB00018 */  lw        $s0, 0x18($sp)
/* 320684 802BF914 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 320688 802BF918 03E00008 */  jr        $ra
/* 32068C 802BF91C 27BD0038 */   addiu    $sp, $sp, 0x38