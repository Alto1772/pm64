.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_PAL_8002B574
    /* 6974 8002B574 27BDFFC8 */  addiu     $sp, $sp, -0x38
    /* 6978 8002B578 AFB7002C */  sw        $s7, 0x2C($sp)
    /* 697C 8002B57C 3C17800D */  lui       $s7, %hi(D_PAL_800D7430)
    /* 6980 8002B580 26F77430 */  addiu     $s7, $s7, %lo(D_PAL_800D7430)
    /* 6984 8002B584 AFB60028 */  sw        $s6, 0x28($sp)
    /* 6988 8002B588 02E0B02D */  daddu     $s6, $s7, $zero
    /* 698C 8002B58C AFBF0034 */  sw        $ra, 0x34($sp)
    /* 6990 8002B590 AFBE0030 */  sw        $fp, 0x30($sp)
    /* 6994 8002B594 AFB50024 */  sw        $s5, 0x24($sp)
    /* 6998 8002B598 AFB40020 */  sw        $s4, 0x20($sp)
    /* 699C 8002B59C AFB3001C */  sw        $s3, 0x1C($sp)
    /* 69A0 8002B5A0 AFB20018 */  sw        $s2, 0x18($sp)
    /* 69A4 8002B5A4 AFB10014 */  sw        $s1, 0x14($sp)
    /* 69A8 8002B5A8 0C00AC57 */  jal       func_PAL_8002B15C
    /* 69AC 8002B5AC AFB00010 */   sw       $s0, 0x10($sp)
    /* 69B0 8002B5B0 0000A82D */  daddu     $s5, $zero, $zero
    /* 69B4 8002B5B4 241E0004 */  addiu     $fp, $zero, 0x4
    /* 69B8 8002B5B8 3C128007 */  lui       $s2, %hi(D_PAL_80073D74)
    /* 69BC 8002B5BC 26523D74 */  addiu     $s2, $s2, %lo(D_PAL_80073D74)
    /* 69C0 8002B5C0 3C148007 */  lui       $s4, %hi(D_PAL_80073D14)
    /* 69C4 8002B5C4 26943D14 */  addiu     $s4, $s4, %lo(D_PAL_80073D14)
    /* 69C8 8002B5C8 3C13800A */  lui       $s3, %hi(D_PAL_80099190)
    /* 69CC 8002B5CC 26739190 */  addiu     $s3, $s3, %lo(D_PAL_80099190)
  .LPAL_8002B5D0:
    /* 69D0 8002B5D0 8E620000 */  lw        $v0, 0x0($s3)
    /* 69D4 8002B5D4 04400010 */  bltz      $v0, .LPAL_8002B618
    /* 69D8 8002B5D8 0000802D */   daddu    $s0, $zero, $zero
    /* 69DC 8002B5DC 0260882D */  daddu     $s1, $s3, $zero
  .LPAL_8002B5E0:
    /* 69E0 8002B5E0 8E240000 */  lw        $a0, 0x0($s1)
    /* 69E4 8002B5E4 02C0282D */  daddu     $a1, $s6, $zero
    /* 69E8 8002B5E8 0C00AEA7 */  jal       func_PAL_8002BA9C
    /* 69EC 8002B5EC 24061380 */   addiu    $a2, $zero, 0x1380
    /* 69F0 8002B5F0 0C00AC40 */  jal       func_PAL_8002B100
    /* 69F4 8002B5F4 02C0202D */   daddu    $a0, $s6, $zero
    /* 69F8 8002B5F8 14400005 */  bnez      $v0, .LPAL_8002B610
    /* 69FC 8002B5FC 00000000 */   nop
    /* 6A00 8002B600 26100001 */  addiu     $s0, $s0, 0x1
    /* 6A04 8002B604 2A020004 */  slti      $v0, $s0, 0x4
    /* 6A08 8002B608 1440FFF5 */  bnez      $v0, .LPAL_8002B5E0
    /* 6A0C 8002B60C 00000000 */   nop
  .LPAL_8002B610:
    /* 6A10 8002B610 161E0003 */  bne       $s0, $fp, .LPAL_8002B620
    /* 6A14 8002B614 24020001 */   addiu    $v0, $zero, 0x1
  .LPAL_8002B618:
    /* 6A18 8002B618 0800AD9E */  j         .LPAL_8002B678
    /* 6A1C 8002B61C A2400000 */   sb       $zero, 0x0($s2)
  .LPAL_8002B620:
    /* 6A20 8002B620 3C0A800E */  lui       $t2, %hi(D_PAL_800D871C)
    /* 6A24 8002B624 254A871C */  addiu     $t2, $t2, %lo(D_PAL_800D871C)
    /* 6A28 8002B628 8D470000 */  lw        $a3, 0x0($t2)
    /* 6A2C 8002B62C 8D480004 */  lw        $t0, 0x4($t2)
    /* 6A30 8002B630 8D490008 */  lw        $t1, 0x8($t2)
    /* 6A34 8002B634 AE870000 */  sw        $a3, 0x0($s4)
    /* 6A38 8002B638 AE880004 */  sw        $t0, 0x4($s4)
    /* 6A3C 8002B63C AE890008 */  sw        $t1, 0x8($s4)
    /* 6A40 8002B640 8D47000C */  lw        $a3, 0xC($t2)
    /* 6A44 8002B644 8D480010 */  lw        $t0, 0x10($t2)
    /* 6A48 8002B648 8D490014 */  lw        $t1, 0x14($t2)
    /* 6A4C 8002B64C AE87000C */  sw        $a3, 0xC($s4)
    /* 6A50 8002B650 AE880010 */  sw        $t0, 0x10($s4)
    /* 6A54 8002B654 AE890014 */  sw        $t1, 0x14($s4)
    /* 6A58 8002B658 A2420000 */  sb        $v0, 0x0($s2)
    /* 6A5C 8002B65C 3C048007 */  lui       $a0, %hi(D_PAL_800714AC)
    /* 6A60 8002B660 8C8414AC */  lw        $a0, %lo(D_PAL_800714AC)($a0)
    /* 6A64 8002B664 8EE3003C */  lw        $v1, 0x3C($s7)
    /* 6A68 8002B668 8C820168 */  lw        $v0, 0x168($a0)
    /* 6A6C 8002B66C 0043102B */  sltu      $v0, $v0, $v1
    /* 6A70 8002B670 54400001 */  bnel      $v0, $zero, .LPAL_8002B678
    /* 6A74 8002B674 AC830168 */   sw       $v1, 0x168($a0)
  .LPAL_8002B678:
    /* 6A78 8002B678 26520001 */  addiu     $s2, $s2, 0x1
    /* 6A7C 8002B67C 26940018 */  addiu     $s4, $s4, 0x18
    /* 6A80 8002B680 26B50001 */  addiu     $s5, $s5, 0x1
    /* 6A84 8002B684 2AA20004 */  slti      $v0, $s5, 0x4
    /* 6A88 8002B688 1440FFD1 */  bnez      $v0, .LPAL_8002B5D0
    /* 6A8C 8002B68C 26730008 */   addiu    $s3, $s3, 0x8
    /* 6A90 8002B690 8FBF0034 */  lw        $ra, 0x34($sp)
    /* 6A94 8002B694 8FBE0030 */  lw        $fp, 0x30($sp)
    /* 6A98 8002B698 8FB7002C */  lw        $s7, 0x2C($sp)
    /* 6A9C 8002B69C 8FB60028 */  lw        $s6, 0x28($sp)
    /* 6AA0 8002B6A0 8FB50024 */  lw        $s5, 0x24($sp)
    /* 6AA4 8002B6A4 8FB40020 */  lw        $s4, 0x20($sp)
    /* 6AA8 8002B6A8 8FB3001C */  lw        $s3, 0x1C($sp)
    /* 6AAC 8002B6AC 8FB20018 */  lw        $s2, 0x18($sp)
    /* 6AB0 8002B6B0 8FB10014 */  lw        $s1, 0x14($sp)
    /* 6AB4 8002B6B4 8FB00010 */  lw        $s0, 0x10($sp)
    /* 6AB8 8002B6B8 24020001 */  addiu     $v0, $zero, 0x1
    /* 6ABC 8002B6BC 03E00008 */  jr        $ra
    /* 6AC0 8002B6C0 27BD0038 */   addiu    $sp, $sp, 0x38
.size func_PAL_8002B574, . - func_PAL_8002B574
