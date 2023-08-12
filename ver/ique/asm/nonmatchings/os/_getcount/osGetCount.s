.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

# Handwritten function
glabel osGetCount
/* 3EEE0 80063AE0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 3EEE4 80063AE4 FFBF0030 */  sd        $ra, 0x30($sp)
/* 3EEE8 80063AE8 FFBE0028 */  sd        $fp, 0x28($sp)
/* 3EEEC 80063AEC 0C019B40 */  jal       __osDisableInt
/* 3EEF0 80063AF0 03A0F02D */   daddu    $fp, $sp, $zero
/* 3EEF4 80063AF4 AFC20024 */  sw        $v0, 0x24($fp)
/* 3EEF8 80063AF8 40054800 */  mfc0      $a1, $9 # handwritten instruction
/* 3EEFC 80063AFC AFC50020 */  sw        $a1, 0x20($fp)
/* 3EF00 80063B00 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EF04 80063B04 3C03800A */  lui       $v1, %hi(__osBbLastRCount)
/* 3EF08 80063B08 8C6391A4 */  lw        $v1, %lo(__osBbLastRCount)($v1)
/* 3EF0C 80063B0C 0043102B */  sltu      $v0, $v0, $v1
/* 3EF10 80063B10 10400006 */  beqz      $v0, .LIQUE_80063B2C
/* 3EF14 80063B14 00000000 */   nop
/* 3EF18 80063B18 3C02800A */  lui       $v0, %hi(__osBbRCountWraps)
/* 3EF1C 80063B1C 8C429198 */  lw        $v0, %lo(__osBbRCountWraps)($v0)
/* 3EF20 80063B20 24430001 */  addiu     $v1, $v0, 0x1
/* 3EF24 80063B24 3C01800A */  lui       $at, %hi(__osBbRCountWraps)
/* 3EF28 80063B28 AC239198 */  sw        $v1, %lo(__osBbRCountWraps)($at)
.LIQUE_80063B2C:
/* 3EF2C 80063B2C 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EF30 80063B30 3C01800A */  lui       $at, %hi(__osBbLastRCount)
/* 3EF34 80063B34 AC2291A4 */  sw        $v0, %lo(__osBbLastRCount)($at)
/* 3EF38 80063B38 3C02800A */  lui       $v0, %hi(__osBbRCountWraps)
/* 3EF3C 80063B3C 9C429198 */  lwu       $v0, %lo(__osBbRCountWraps)($v0)
/* 3EF40 80063B40 0002183C */  dsll32    $v1, $v0, 0
/* 3EF44 80063B44 9FC40020 */  lwu       $a0, 0x20($fp)
/* 3EF48 80063B48 00641025 */  or        $v0, $v1, $a0
/* 3EF4C 80063B4C 0040202D */  daddu     $a0, $v0, $zero
/* 3EF50 80063B50 00041978 */  dsll      $v1, $a0, 5
/* 3EF54 80063B54 0062182F */  dsubu     $v1, $v1, $v0
/* 3EF58 80063B58 000320B8 */  dsll      $a0, $v1, 2
/* 3EF5C 80063B5C 0082202D */  daddu     $a0, $a0, $v0
/* 3EF60 80063B60 240100C0 */  addiu     $at, $zero, 0xC0
/* 3EF64 80063B64 0081001F */  ddivu     $zero, $a0, $at
/* 3EF68 80063B68 00001012 */  mflo      $v0
/* 3EF6C 80063B6C 0002103C */  dsll32    $v0, $v0, 0
/* 3EF70 80063B70 0002103F */  dsra32    $v0, $v0, 0
/* 3EF74 80063B74 AFC20020 */  sw        $v0, 0x20($fp)
/* 3EF78 80063B78 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EF7C 80063B7C 3C03800A */  lui       $v1, %hi(__osBbLastVCount)
/* 3EF80 80063B80 8C6391E8 */  lw        $v1, %lo(__osBbLastVCount)($v1)
/* 3EF84 80063B84 0043102B */  sltu      $v0, $v0, $v1
/* 3EF88 80063B88 10400006 */  beqz      $v0, .LIQUE_80063BA4
/* 3EF8C 80063B8C 00000000 */   nop
/* 3EF90 80063B90 3C02800A */  lui       $v0, %hi(__osBbVCountWraps)
/* 3EF94 80063B94 8C429210 */  lw        $v0, %lo(__osBbVCountWraps)($v0)
/* 3EF98 80063B98 24430001 */  addiu     $v1, $v0, 0x1
/* 3EF9C 80063B9C 3C01800A */  lui       $at, %hi(__osBbVCountWraps)
/* 3EFA0 80063BA0 AC239210 */  sw        $v1, %lo(__osBbVCountWraps)($at)
.LIQUE_80063BA4:
/* 3EFA4 80063BA4 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EFA8 80063BA8 3C01800A */  lui       $at, %hi(__osBbLastVCount)
/* 3EFAC 80063BAC AC2291E8 */  sw        $v0, %lo(__osBbLastVCount)($at)
/* 3EFB0 80063BB0 0C019B5C */  jal       __osRestoreInt
/* 3EFB4 80063BB4 8FC40024 */   lw       $a0, 0x24($fp)
/* 3EFB8 80063BB8 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EFBC 80063BBC 08018EF1 */  j         .LIQUE_80063BC4
/* 3EFC0 80063BC0 0060102D */   daddu    $v0, $v1, $zero
.LIQUE_80063BC4:
/* 3EFC4 80063BC4 03C0E82D */  daddu     $sp, $fp, $zero
/* 3EFC8 80063BC8 DFBF0030 */  ld        $ra, 0x30($sp)
/* 3EFCC 80063BCC DFBE0028 */  ld        $fp, 0x28($sp)
/* 3EFD0 80063BD0 03E00008 */  jr        $ra
/* 3EFD4 80063BD4 27BD0038 */   addiu    $sp, $sp, 0x38
/* 3EFD8 80063BD8 00000000 */  nop
/* 3EFDC 80063BDC 00000000 */  nop
.size osGetCount, . - osGetCount
