.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_802A8180
/* 41CF10 802A8180 3C02800E */  lui   $v0, 0x800e
/* 41CF14 802A8184 8C42C4DC */  lw    $v0, -0x3b24($v0)
/* 41CF18 802A8188 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 41CF1C 802A818C 2443FFFF */  addiu $v1, $v0, -1
/* 41CF20 802A8190 2C6200CD */  sltiu $v0, $v1, 0xcd
/* 41CF24 802A8194 10400009 */  beqz  $v0, .L802A81BC
/* 41CF28 802A8198 AFBF0010 */   sw    $ra, 0x10($sp)
/* 41CF2C 802A819C 00031080 */  sll   $v0, $v1, 2
/* 41CF30 802A81A0 3C01802B */  lui   $at, 0x802b
/* 41CF34 802A81A4 00220821 */  addu  $at, $at, $v0
/* 41CF38 802A81A8 8C22C090 */  lw    $v0, -0x3f70($at)
/* 41CF3C 802A81AC 00400008 */  jr    $v0
/* 41CF40 802A81B0 00000000 */   nop   
/* 41CF44 802A81B4 0C0A8715 */  jal   func_802A1C54
/* 41CF48 802A81B8 00000000 */   nop   
.L802A81BC:
/* 41CF4C 802A81BC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 41CF50 802A81C0 03E00008 */  jr    $ra
/* 41CF54 802A81C4 27BD0018 */   addiu $sp, $sp, 0x18
