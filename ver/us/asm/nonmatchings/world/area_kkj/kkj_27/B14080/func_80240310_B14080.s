.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240310_B14080
/* B14080 80240310 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* B14084 80240314 AFB00010 */  sw        $s0, 0x10($sp)
/* B14088 80240318 0080802D */  daddu     $s0, $a0, $zero
/* B1408C 8024031C 3C030DB5 */  lui       $v1, 0xdb5
/* B14090 80240320 34638580 */  ori       $v1, $v1, 0x8580
/* B14094 80240324 AFBF0014 */  sw        $ra, 0x14($sp)
/* B14098 80240328 F7BA0030 */  sdc1      $f26, 0x30($sp)
/* B1409C 8024032C F7B80028 */  sdc1      $f24, 0x28($sp)
/* B140A0 80240330 F7B60020 */  sdc1      $f22, 0x20($sp)
/* B140A4 80240334 F7B40018 */  sdc1      $f20, 0x18($sp)
/* B140A8 80240338 C60200A8 */  lwc1      $f2, 0xa8($s0)
/* B140AC 8024033C 468010A0 */  cvt.s.w   $f2, $f2
/* B140B0 80240340 44061000 */  mfc1      $a2, $f2
/* B140B4 80240344 C60200AC */  lwc1      $f2, 0xac($s0)
/* B140B8 80240348 468010A0 */  cvt.s.w   $f2, $f2
/* B140BC 8024034C 8E02008C */  lw        $v0, 0x8c($s0)
/* B140C0 80240350 44071000 */  mfc1      $a3, $f2
/* B140C4 80240354 3C01C37A */  lui       $at, 0xc37a
/* B140C8 80240358 4481D000 */  mtc1      $at, $f26
/* B140CC 8024035C 4480C000 */  mtc1      $zero, $f24
/* B140D0 80240360 3C013A80 */  lui       $at, 0x3a80
/* B140D4 80240364 44810000 */  mtc1      $at, $f0
/* B140D8 80240368 00431021 */  addu      $v0, $v0, $v1
/* B140DC 8024036C 4482A000 */  mtc1      $v0, $f20
/* B140E0 80240370 00000000 */  nop
/* B140E4 80240374 4680A520 */  cvt.s.w   $f20, $f20
/* B140E8 80240378 4600D306 */  mov.s     $f12, $f26
/* B140EC 8024037C 4600A502 */  mul.s     $f20, $f20, $f0
/* B140F0 80240380 00000000 */  nop
/* B140F4 80240384 0C00A7B5 */  jal       dist2D
/* B140F8 80240388 4600C386 */   mov.s    $f14, $f24
/* B140FC 8024038C 4600D306 */  mov.s     $f12, $f26
/* B14100 80240390 4600C386 */  mov.s     $f14, $f24
/* B14104 80240394 C60200A8 */  lwc1      $f2, 0xa8($s0)
/* B14108 80240398 468010A0 */  cvt.s.w   $f2, $f2
/* B1410C 8024039C 44061000 */  mfc1      $a2, $f2
/* B14110 802403A0 C60200AC */  lwc1      $f2, 0xac($s0)
/* B14114 802403A4 468010A0 */  cvt.s.w   $f2, $f2
/* B14118 802403A8 44071000 */  mfc1      $a3, $f2
/* B1411C 802403AC 0C00A720 */  jal       atan2
/* B14120 802403B0 46000586 */   mov.s    $f22, $f0
/* B14124 802403B4 0C00A6C9 */  jal       clamp_angle
/* B14128 802403B8 46140301 */   sub.s    $f12, $f0, $f20
/* B1412C 802403BC 46000506 */  mov.s     $f20, $f0
/* B14130 802403C0 0C00A8BB */  jal       sin_deg
/* B14134 802403C4 4600A306 */   mov.s    $f12, $f20
/* B14138 802403C8 4600B002 */  mul.s     $f0, $f22, $f0
/* B1413C 802403CC 00000000 */  nop
/* B14140 802403D0 461A0000 */  add.s     $f0, $f0, $f26
/* B14144 802403D4 4600A306 */  mov.s     $f12, $f20
/* B14148 802403D8 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* B1414C 802403DC 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* B14150 802403E0 0C00A8D4 */  jal       cos_deg
/* B14154 802403E4 E6000028 */   swc1     $f0, 0x28($s0)
/* B14158 802403E8 4600B582 */  mul.s     $f22, $f22, $f0
/* B1415C 802403EC 00000000 */  nop
/* B14160 802403F0 4616C601 */  sub.s     $f24, $f24, $f22
/* B14164 802403F4 E6180030 */  swc1      $f24, 0x30($s0)
/* B14168 802403F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* B1416C 802403FC 8FB00010 */  lw        $s0, 0x10($sp)
/* B14170 80240400 D7BA0030 */  ldc1      $f26, 0x30($sp)
/* B14174 80240404 D7B80028 */  ldc1      $f24, 0x28($sp)
/* B14178 80240408 D7B60020 */  ldc1      $f22, 0x20($sp)
/* B1417C 8024040C D7B40018 */  ldc1      $f20, 0x18($sp)
/* B14180 80240410 24020002 */  addiu     $v0, $zero, 2
/* B14184 80240414 03E00008 */  jr        $ra
/* B14188 80240418 27BD0038 */   addiu    $sp, $sp, 0x38