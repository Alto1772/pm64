.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel snd_SEFCmd_08
/* 2847C 8004D07C 00A0382D */  daddu     $a3, $a1, $zero
/* 28480 8004D080 8CE20000 */  lw        $v0, ($a3)
/* 28484 8004D084 90430000 */  lbu       $v1, ($v0)
/* 28488 8004D088 90450001 */  lbu       $a1, 1($v0)
/* 2848C 8004D08C 90440002 */  lbu       $a0, 2($v0)
/* 28490 8004D090 24420003 */  addiu     $v0, $v0, 3
/* 28494 8004D094 ACE20000 */  sw        $v0, ($a3)
/* 28498 8004D098 00031A00 */  sll       $v1, $v1, 8
/* 2849C 8004D09C 00A32821 */  addu      $a1, $a1, $v1
/* 284A0 8004D0A0 00A0302D */  daddu     $a2, $a1, $zero
/* 284A4 8004D0A4 3084007F */  andi      $a0, $a0, 0x7f
/* 284A8 8004D0A8 00041040 */  sll       $v0, $a0, 1
/* 284AC 8004D0AC 00441021 */  addu      $v0, $v0, $a0
/* 284B0 8004D0B0 000210C0 */  sll       $v0, $v0, 3
/* 284B4 8004D0B4 00441821 */  addu      $v1, $v0, $a0
/* 284B8 8004D0B8 00052C00 */  sll       $a1, $a1, 0x10
/* 284BC 8004D0BC 1CA00002 */  bgtz      $a1, .L8004D0C8
/* 284C0 8004D0C0 00032080 */   sll      $a0, $v1, 2
/* 284C4 8004D0C4 24060001 */  addiu     $a2, $zero, 1
.L8004D0C8:
/* 284C8 8004D0C8 8CE20060 */  lw        $v0, 0x60($a3)
/* 284CC 8004D0CC 00031C80 */  sll       $v1, $v1, 0x12
/* 284D0 8004D0D0 00621823 */  subu      $v1, $v1, $v0
/* 284D4 8004D0D4 00061400 */  sll       $v0, $a2, 0x10
/* 284D8 8004D0D8 00021403 */  sra       $v0, $v0, 0x10
/* 284DC 8004D0DC 14400002 */  bnez      $v0, .L8004D0E8
/* 284E0 8004D0E0 0062001A */   div      $zero, $v1, $v0
/* 284E4 8004D0E4 0007000D */  break     7
.L8004D0E8:
/* 284E8 8004D0E8 2401FFFF */   addiu    $at, $zero, -1
/* 284EC 8004D0EC 14410004 */  bne       $v0, $at, .L8004D100
/* 284F0 8004D0F0 3C018000 */   lui      $at, 0x8000
/* 284F4 8004D0F4 14610002 */  bne       $v1, $at, .L8004D100
/* 284F8 8004D0F8 00000000 */   nop
/* 284FC 8004D0FC 0006000D */  break     6
.L8004D100:
/* 28500 8004D100 00001812 */   mflo     $v1
/* 28504 8004D104 A4E60068 */  sh        $a2, 0x68($a3)
/* 28508 8004D108 A4E4006A */  sh        $a0, 0x6a($a3)
/* 2850C 8004D10C 03E00008 */  jr        $ra
/* 28510 8004D110 ACE30064 */   sw       $v1, 0x64($a3)
