.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219840_6253E0
/* 6253E0 80219840 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 6253E4 80219844 AFB10024 */  sw        $s1, 0x24($sp)
/* 6253E8 80219848 0080882D */  daddu     $s1, $a0, $zero
/* 6253EC 8021984C AFBF0028 */  sw        $ra, 0x28($sp)
/* 6253F0 80219850 AFB00020 */  sw        $s0, 0x20($sp)
/* 6253F4 80219854 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 6253F8 80219858 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 6253FC 8021985C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 625400 80219860 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 625404 80219864 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 625408 80219868 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 62540C 8021986C 8E30000C */  lw        $s0, 0xc($s1)
/* 625410 80219870 8E050000 */  lw        $a1, ($s0)
/* 625414 80219874 0C0B210B */  jal       get_float_variable
/* 625418 80219878 26100004 */   addiu    $s0, $s0, 4
/* 62541C 8021987C 8E050000 */  lw        $a1, ($s0)
/* 625420 80219880 26100004 */  addiu     $s0, $s0, 4
/* 625424 80219884 0220202D */  daddu     $a0, $s1, $zero
/* 625428 80219888 0C0B210B */  jal       get_float_variable
/* 62542C 8021988C 46000786 */   mov.s    $f30, $f0
/* 625430 80219890 8E050000 */  lw        $a1, ($s0)
/* 625434 80219894 26100004 */  addiu     $s0, $s0, 4
/* 625438 80219898 0220202D */  daddu     $a0, $s1, $zero
/* 62543C 8021989C 0C0B210B */  jal       get_float_variable
/* 625440 802198A0 46000506 */   mov.s    $f20, $f0
/* 625444 802198A4 8E050000 */  lw        $a1, ($s0)
/* 625448 802198A8 26100004 */  addiu     $s0, $s0, 4
/* 62544C 802198AC 0220202D */  daddu     $a0, $s1, $zero
/* 625450 802198B0 0C0B210B */  jal       get_float_variable
/* 625454 802198B4 46000706 */   mov.s    $f28, $f0
/* 625458 802198B8 8E050000 */  lw        $a1, ($s0)
/* 62545C 802198BC 26100004 */  addiu     $s0, $s0, 4
/* 625460 802198C0 0220202D */  daddu     $a0, $s1, $zero
/* 625464 802198C4 0C0B210B */  jal       get_float_variable
/* 625468 802198C8 46000686 */   mov.s    $f26, $f0
/* 62546C 802198CC 8E050000 */  lw        $a1, ($s0)
/* 625470 802198D0 26100004 */  addiu     $s0, $s0, 4
/* 625474 802198D4 0220202D */  daddu     $a0, $s1, $zero
/* 625478 802198D8 0C0B210B */  jal       get_float_variable
/* 62547C 802198DC 46000606 */   mov.s    $f24, $f0
/* 625480 802198E0 0220202D */  daddu     $a0, $s1, $zero
/* 625484 802198E4 8E050000 */  lw        $a1, ($s0)
/* 625488 802198E8 0C0B1EAF */  jal       get_variable
/* 62548C 802198EC 46000586 */   mov.s    $f22, $f0
/* 625490 802198F0 8E240148 */  lw        $a0, 0x148($s1)
/* 625494 802198F4 0C09A75B */  jal       get_actor
/* 625498 802198F8 0040802D */   daddu    $s0, $v0, $zero
/* 62549C 802198FC 4600A521 */  cvt.d.s   $f20, $f20
/* 6254A0 80219900 4405F000 */  mfc1      $a1, $f30
/* 6254A4 80219904 3C014014 */  lui       $at, 0x4014
/* 6254A8 80219908 44810800 */  mtc1      $at, $f1
/* 6254AC 8021990C 44800000 */  mtc1      $zero, $f0
/* 6254B0 80219910 4407E000 */  mfc1      $a3, $f28
/* 6254B4 80219914 4620A500 */  add.d     $f20, $f20, $f0
/* 6254B8 80219918 0000202D */  daddu     $a0, $zero, $zero
/* 6254BC 8021991C AFB0001C */  sw        $s0, 0x1c($sp)
/* 6254C0 80219920 4620A520 */  cvt.s.d   $f20, $f20
/* 6254C4 80219924 4406A000 */  mfc1      $a2, $f20
/* 6254C8 80219928 0040802D */  daddu     $s0, $v0, $zero
/* 6254CC 8021992C E7BA0010 */  swc1      $f26, 0x10($sp)
/* 6254D0 80219930 E7B80014 */  swc1      $f24, 0x14($sp)
/* 6254D4 80219934 0C01BFD4 */  jal       playFX_12
/* 6254D8 80219938 E7B60018 */   swc1     $f22, 0x18($sp)
/* 6254DC 8021993C 0040202D */  daddu     $a0, $v0, $zero
/* 6254E0 80219940 82030210 */  lb        $v1, 0x210($s0)
/* 6254E4 80219944 2402000A */  addiu     $v0, $zero, 0xa
/* 6254E8 80219948 14620007 */  bne       $v1, $v0, .L80219968
/* 6254EC 8021994C 00000000 */   nop
/* 6254F0 80219950 8C82000C */  lw        $v0, 0xc($a0)
/* 6254F4 80219954 3C013ECC */  lui       $at, 0x3ecc
/* 6254F8 80219958 3421CCCD */  ori       $at, $at, 0xcccd
/* 6254FC 8021995C 44810000 */  mtc1      $at, $f0
/* 625500 80219960 00000000 */  nop
/* 625504 80219964 E4400028 */  swc1      $f0, 0x28($v0)
.L80219968:
/* 625508 80219968 8FBF0028 */  lw        $ra, 0x28($sp)
/* 62550C 8021996C 8FB10024 */  lw        $s1, 0x24($sp)
/* 625510 80219970 8FB00020 */  lw        $s0, 0x20($sp)
/* 625514 80219974 D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 625518 80219978 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 62551C 8021997C D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 625520 80219980 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 625524 80219984 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 625528 80219988 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 62552C 8021998C 24020002 */  addiu     $v0, $zero, 2
/* 625530 80219990 03E00008 */  jr        $ra
/* 625534 80219994 27BD0060 */   addiu    $sp, $sp, 0x60
