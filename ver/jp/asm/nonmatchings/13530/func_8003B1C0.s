.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003B1C0
/* 165C0 8003B1C0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 165C4 8003B1C4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 165C8 8003B1C8 808200B6 */  lb        $v0, 0xb6($a0)
/* 165CC 8003B1CC 10400007 */  beqz      $v0, .L8003B1EC
/* 165D0 8003B1D0 00000000 */   nop
/* 165D4 8003B1D4 3C013F80 */  lui       $at, 0x3f80
/* 165D8 8003B1D8 44810000 */  mtc1      $at, $f0
/* 165DC 8003B1DC AC800318 */  sw        $zero, 0x318($a0)
/* 165E0 8003B1E0 AC80031C */  sw        $zero, 0x31c($a0)
/* 165E4 8003B1E4 A08000B6 */  sb        $zero, 0xb6($a0)
/* 165E8 8003B1E8 E4800320 */  swc1      $f0, 0x320($a0)
.L8003B1EC:
/* 165EC 8003B1EC 8C820000 */  lw        $v0, ($a0)
/* 165F0 8003B1F0 3C034000 */  lui       $v1, 0x4000
/* 165F4 8003B1F4 00431024 */  and       $v0, $v0, $v1
/* 165F8 8003B1F8 54400016 */  bnel      $v0, $zero, .L8003B254
/* 165FC 8003B1FC AFA60010 */   sw       $a2, 0x10($sp)
/* 16600 8003B200 908300AC */  lbu       $v1, 0xac($a0)
/* 16604 8003B204 908200AD */  lbu       $v0, 0xad($a0)
/* 16608 8003B208 00620018 */  mult      $v1, $v0
/* 1660C 8003B20C 00001812 */  mflo      $v1
/* 16610 8003B210 3C028080 */  lui       $v0, 0x8080
/* 16614 8003B214 34428081 */  ori       $v0, $v0, 0x8081
/* 16618 8003B218 00620018 */  mult      $v1, $v0
/* 1661C 8003B21C 8C820024 */  lw        $v0, 0x24($a0)
/* 16620 8003B220 0000382D */  daddu     $a3, $zero, $zero
/* 16624 8003B224 AFA60010 */  sw        $a2, 0x10($sp)
/* 16628 8003B228 00004810 */  mfhi      $t1
/* 1662C 8003B22C 01233021 */  addu      $a2, $t1, $v1
/* 16630 8003B230 000631C3 */  sra       $a2, $a2, 7
/* 16634 8003B234 00031FC3 */  sra       $v1, $v1, 0x1f
/* 16638 8003B238 00C33023 */  subu      $a2, $a2, $v1
/* 1663C 8003B23C 28C400FF */  slti      $a0, $a2, 0xff
/* 16640 8003B240 000427C0 */  sll       $a0, $a0, 0x1f
/* 16644 8003B244 0C0447CA */  jal       func_80111F28
/* 16648 8003B248 00442025 */   or       $a0, $v0, $a0
/* 1664C 8003B24C 0800EC9A */  j         .L8003B268
/* 16650 8003B250 00000000 */   nop
.L8003B254:
/* 16654 8003B254 3C044000 */  lui       $a0, 0x4000
/* 16658 8003B258 34840001 */  ori       $a0, $a0, 1
/* 1665C 8003B25C 0000302D */  daddu     $a2, $zero, $zero
/* 16660 8003B260 0C0445E4 */  jal       func_80111790
/* 16664 8003B264 00C0382D */   daddu    $a3, $a2, $zero
.L8003B268:
/* 16668 8003B268 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1666C 8003B26C 03E00008 */  jr        $ra
/* 16670 8003B270 27BD0020 */   addiu    $sp, $sp, 0x20
