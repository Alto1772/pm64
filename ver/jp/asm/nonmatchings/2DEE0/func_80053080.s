.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80053080
/* 2E480 80053080 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 2E484 80053084 AFB20018 */  sw        $s2, 0x18($sp)
/* 2E488 80053088 3C12800A */  lui       $s2, %hi(D_8009A5A0)
/* 2E48C 8005308C 8E52A5A0 */  lw        $s2, %lo(D_8009A5A0)($s2)
/* 2E490 80053090 AFB10014 */  sw        $s1, 0x14($sp)
/* 2E494 80053094 3C11800A */  lui       $s1, %hi(D_8009A620)
/* 2E498 80053098 8E31A620 */  lw        $s1, %lo(D_8009A620)($s1)
/* 2E49C 8005309C AFB00010 */  sw        $s0, 0x10($sp)
/* 2E4A0 800530A0 3C10800A */  lui       $s0, %hi(D_8009A608)
/* 2E4A4 800530A4 8E10A608 */  lw        $s0, %lo(D_8009A608)($s0)
/* 2E4A8 800530A8 AFBF001C */  sw        $ra, 0x1c($sp)
/* 2E4AC 800530AC 0C014CC1 */  jal       func_80053304
/* 2E4B0 800530B0 0240202D */   daddu    $a0, $s2, $zero
/* 2E4B4 800530B4 8E03000C */  lw        $v1, 0xc($s0)
/* 2E4B8 800530B8 8E020004 */  lw        $v0, 4($s0)
/* 2E4BC 800530BC 00621823 */  subu      $v1, $v1, $v0
/* 2E4C0 800530C0 1C600006 */  bgtz      $v1, .L800530DC
/* 2E4C4 800530C4 AE03000C */   sw       $v1, 0xc($s0)
/* 2E4C8 800530C8 8E020008 */  lw        $v0, 8($s0)
/* 2E4CC 800530CC 0200202D */  daddu     $a0, $s0, $zero
/* 2E4D0 800530D0 00621021 */  addu      $v0, $v1, $v0
/* 2E4D4 800530D4 0C01439B */  jal       func_80050E6C
/* 2E4D8 800530D8 AC82000C */   sw       $v0, 0xc($a0)
.L800530DC:
/* 2E4DC 800530DC 8622004A */  lh        $v0, 0x4a($s1)
/* 2E4E0 800530E0 10400007 */  beqz      $v0, .L80053100
/* 2E4E4 800530E4 00000000 */   nop
/* 2E4E8 800530E8 0C014DB6 */  jal       func_800536D8
/* 2E4EC 800530EC 26240040 */   addiu    $a0, $s1, 0x40
/* 2E4F0 800530F0 922400BE */  lbu       $a0, 0xbe($s1)
/* 2E4F4 800530F4 96250040 */  lhu       $a1, 0x40($s1)
/* 2E4F8 800530F8 0C014DD2 */  jal       func_80053748
/* 2E4FC 800530FC 8E26005C */   lw       $a2, 0x5c($s1)
.L80053100:
/* 2E500 80053100 8E23003C */  lw        $v1, 0x3c($s1)
/* 2E504 80053104 8E220034 */  lw        $v0, 0x34($s1)
/* 2E508 80053108 00621823 */  subu      $v1, $v1, $v0
/* 2E50C 8005310C 1C600007 */  bgtz      $v1, .L8005312C
/* 2E510 80053110 AE23003C */   sw       $v1, 0x3c($s1)
/* 2E514 80053114 8E220038 */  lw        $v0, 0x38($s1)
/* 2E518 80053118 0220202D */  daddu     $a0, $s1, $zero
/* 2E51C 8005311C 00621021 */  addu      $v0, $v1, $v0
/* 2E520 80053120 0C01303D */  jal       func_8004C0F4
/* 2E524 80053124 AE22003C */   sw       $v0, 0x3c($s1)
/* 2E528 80053128 A62200BA */  sh        $v0, 0xba($s1)
.L8005312C:
/* 2E52C 8005312C 3C118008 */  lui       $s1, %hi(D_80078D80)
/* 2E530 80053130 26318D80 */  addiu     $s1, $s1, %lo(D_80078D80)
/* 2E534 80053134 8E220000 */  lw        $v0, ($s1)
/* 2E538 80053138 14400045 */  bnez      $v0, .L80053250
/* 2E53C 8005313C 00000000 */   nop
/* 2E540 80053140 3C10800A */  lui       $s0, %hi(D_8009A5DC)
/* 2E544 80053144 8E10A5DC */  lw        $s0, %lo(D_8009A5DC)($s0)
/* 2E548 80053148 86020036 */  lh        $v0, 0x36($s0)
/* 2E54C 8005314C 10400003 */  beqz      $v0, .L8005315C
/* 2E550 80053150 00000000 */   nop
/* 2E554 80053154 0C013815 */  jal       func_8004E054
/* 2E558 80053158 0200202D */   daddu    $a0, $s0, $zero
.L8005315C:
/* 2E55C 8005315C 8E02001C */  lw        $v0, 0x1c($s0)
/* 2E560 80053160 10400004 */  beqz      $v0, .L80053174
/* 2E564 80053164 00000000 */   nop
/* 2E568 80053168 8E020018 */  lw        $v0, 0x18($s0)
/* 2E56C 8005316C 24420001 */  addiu     $v0, $v0, 1
/* 2E570 80053170 AE020018 */  sw        $v0, 0x18($s0)
.L80053174:
/* 2E574 80053174 8E030010 */  lw        $v1, 0x10($s0)
/* 2E578 80053178 8E020008 */  lw        $v0, 8($s0)
/* 2E57C 8005317C 00621823 */  subu      $v1, $v1, $v0
/* 2E580 80053180 1C600007 */  bgtz      $v1, .L800531A0
/* 2E584 80053184 AE030010 */   sw       $v1, 0x10($s0)
/* 2E588 80053188 8E02000C */  lw        $v0, 0xc($s0)
/* 2E58C 8005318C 0200202D */  daddu     $a0, $s0, $zero
/* 2E590 80053190 00621021 */  addu      $v0, $v1, $v0
/* 2E594 80053194 0C01385A */  jal       func_8004E168
/* 2E598 80053198 AE020010 */   sw       $v0, 0x10($s0)
/* 2E59C 8005319C A602005C */  sh        $v0, 0x5c($s0)
.L800531A0:
/* 2E5A0 800531A0 8E220000 */  lw        $v0, ($s1)
/* 2E5A4 800531A4 1440002A */  bnez      $v0, .L80053250
/* 2E5A8 800531A8 00000000 */   nop
/* 2E5AC 800531AC 8E420080 */  lw        $v0, 0x80($s2)
/* 2E5B0 800531B0 10400003 */  beqz      $v0, .L800531C0
/* 2E5B4 800531B4 00000000 */   nop
/* 2E5B8 800531B8 0C013721 */  jal       func_8004DC84
/* 2E5BC 800531BC 0240202D */   daddu    $a0, $s2, $zero
.L800531C0:
/* 2E5C0 800531C0 3C10800A */  lui       $s0, %hi(D_8009A644)
/* 2E5C4 800531C4 8E10A644 */  lw        $s0, %lo(D_8009A644)($s0)
/* 2E5C8 800531C8 86020046 */  lh        $v0, 0x46($s0)
/* 2E5CC 800531CC 1040000A */  beqz      $v0, .L800531F8
/* 2E5D0 800531D0 00000000 */   nop
/* 2E5D4 800531D4 0C014E16 */  jal       func_80053858
/* 2E5D8 800531D8 2604002C */   addiu    $a0, $s0, 0x2c
/* 2E5DC 800531DC 86020036 */  lh        $v0, 0x36($s0)
/* 2E5E0 800531E0 14400008 */  bnez      $v0, .L80053204
/* 2E5E4 800531E4 00000000 */   nop
/* 2E5E8 800531E8 0C01383D */  jal       func_8004E0F4
/* 2E5EC 800531EC 0200202D */   daddu    $a0, $s0, $zero
/* 2E5F0 800531F0 08014C83 */  j         .L8005320C
/* 2E5F4 800531F4 00000000 */   nop
.L800531F8:
/* 2E5F8 800531F8 86020036 */  lh        $v0, 0x36($s0)
/* 2E5FC 800531FC 10400003 */  beqz      $v0, .L8005320C
/* 2E600 80053200 00000000 */   nop
.L80053204:
/* 2E604 80053204 0C013815 */  jal       func_8004E054
/* 2E608 80053208 0200202D */   daddu    $a0, $s0, $zero
.L8005320C:
/* 2E60C 8005320C 8E02001C */  lw        $v0, 0x1c($s0)
/* 2E610 80053210 10400004 */  beqz      $v0, .L80053224
/* 2E614 80053214 00000000 */   nop
/* 2E618 80053218 8E020018 */  lw        $v0, 0x18($s0)
/* 2E61C 8005321C 24420001 */  addiu     $v0, $v0, 1
/* 2E620 80053220 AE020018 */  sw        $v0, 0x18($s0)
.L80053224:
/* 2E624 80053224 8E030010 */  lw        $v1, 0x10($s0)
/* 2E628 80053228 8E020008 */  lw        $v0, 8($s0)
/* 2E62C 8005322C 00621823 */  subu      $v1, $v1, $v0
/* 2E630 80053230 1C600007 */  bgtz      $v1, .L80053250
/* 2E634 80053234 AE030010 */   sw       $v1, 0x10($s0)
/* 2E638 80053238 8E02000C */  lw        $v0, 0xc($s0)
/* 2E63C 8005323C 0200202D */  daddu     $a0, $s0, $zero
/* 2E640 80053240 00621021 */  addu      $v0, $v1, $v0
/* 2E644 80053244 0C01385A */  jal       func_8004E168
/* 2E648 80053248 AE020010 */   sw       $v0, 0x10($s0)
/* 2E64C 8005324C A602005C */  sh        $v0, 0x5c($s0)
.L80053250:
/* 2E650 80053250 0C0148C4 */  jal       func_80052310
/* 2E654 80053254 0240202D */   daddu    $a0, $s2, $zero
/* 2E658 80053258 8FBF001C */  lw        $ra, 0x1c($sp)
/* 2E65C 8005325C 8FB20018 */  lw        $s2, 0x18($sp)
/* 2E660 80053260 8FB10014 */  lw        $s1, 0x14($sp)
/* 2E664 80053264 8FB00010 */  lw        $s0, 0x10($sp)
/* 2E668 80053268 03E00008 */  jr        $ra
/* 2E66C 8005326C 27BD0020 */   addiu    $sp, $sp, 0x20
