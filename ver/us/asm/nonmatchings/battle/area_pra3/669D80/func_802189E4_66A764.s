.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802189E4_66A764
/* 66A764 802189E4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 66A768 802189E8 AFB00010 */  sw        $s0, 0x10($sp)
/* 66A76C 802189EC 0080802D */  daddu     $s0, $a0, $zero
/* 66A770 802189F0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 66A774 802189F4 0C09A75B */  jal       get_actor
/* 66A778 802189F8 8E040148 */   lw       $a0, 0x148($s0)
/* 66A77C 802189FC 0C09A75B */  jal       get_actor
/* 66A780 80218A00 84440428 */   lh       $a0, 0x428($v0)
/* 66A784 80218A04 0040202D */  daddu     $a0, $v0, $zero
/* 66A788 80218A08 8C820000 */  lw        $v0, ($a0)
/* 66A78C 80218A0C 30420800 */  andi      $v0, $v0, 0x800
/* 66A790 80218A10 1440000A */  bnez      $v0, .L80218A3C
/* 66A794 80218A14 00000000 */   nop
/* 66A798 80218A18 90820191 */  lbu       $v0, 0x191($a0)
/* 66A79C 80218A1C 8E030088 */  lw        $v1, 0x88($s0)
/* 66A7A0 80218A20 00021042 */  srl       $v0, $v0, 1
/* 66A7A4 80218A24 00621821 */  addu      $v1, $v1, $v0
/* 66A7A8 80218A28 AE030088 */  sw        $v1, 0x88($s0)
/* 66A7AC 80218A2C 90820191 */  lbu       $v0, 0x191($a0)
/* 66A7B0 80218A30 00021082 */  srl       $v0, $v0, 2
/* 66A7B4 80218A34 08086297 */  j         .L80218A5C
/* 66A7B8 80218A38 00621821 */   addu     $v1, $v1, $v0
.L80218A3C:
/* 66A7BC 80218A3C 90820191 */  lbu       $v0, 0x191($a0)
/* 66A7C0 80218A40 8E030088 */  lw        $v1, 0x88($s0)
/* 66A7C4 80218A44 00021042 */  srl       $v0, $v0, 1
/* 66A7C8 80218A48 00621823 */  subu      $v1, $v1, $v0
/* 66A7CC 80218A4C AE030088 */  sw        $v1, 0x88($s0)
/* 66A7D0 80218A50 90820191 */  lbu       $v0, 0x191($a0)
/* 66A7D4 80218A54 00021082 */  srl       $v0, $v0, 2
/* 66A7D8 80218A58 00621823 */  subu      $v1, $v1, $v0
.L80218A5C:
/* 66A7DC 80218A5C AE030088 */  sw        $v1, 0x88($s0)
/* 66A7E0 80218A60 90830191 */  lbu       $v1, 0x191($a0)
/* 66A7E4 80218A64 90840190 */  lbu       $a0, 0x190($a0)
/* 66A7E8 80218A68 0064102A */  slt       $v0, $v1, $a0
/* 66A7EC 80218A6C 54400001 */  bnel      $v0, $zero, .L80218A74
/* 66A7F0 80218A70 0080182D */   daddu    $v1, $a0, $zero
.L80218A74:
/* 66A7F4 80218A74 2462007E */  addiu     $v0, $v1, 0x7e
/* 66A7F8 80218A78 AE020090 */  sw        $v0, 0x90($s0)
/* 66A7FC 80218A7C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 66A800 80218A80 8FB00010 */  lw        $s0, 0x10($sp)
/* 66A804 80218A84 24020002 */  addiu     $v0, $zero, 2
/* 66A808 80218A88 03E00008 */  jr        $ra
/* 66A80C 80218A8C 27BD0018 */   addiu    $sp, $sp, 0x18
