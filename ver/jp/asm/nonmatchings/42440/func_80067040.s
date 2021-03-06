.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80067040
/* 42440 80067040 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 42444 80067044 AFB00010 */  sw        $s0, 0x10($sp)
/* 42448 80067048 3C108009 */  lui       $s0, %hi(D_80095964)
/* 4244C 8006704C 8E105964 */  lw        $s0, %lo(D_80095964)($s0)
/* 42450 80067050 3C02A440 */  lui       $v0, 0xa440
/* 42454 80067054 34420010 */  ori       $v0, $v0, 0x10
/* 42458 80067058 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4245C 8006705C AFB40020 */  sw        $s4, 0x20($sp)
/* 42460 80067060 AFB3001C */  sw        $s3, 0x1c($sp)
/* 42464 80067064 AFB20018 */  sw        $s2, 0x18($sp)
/* 42468 80067068 AFB10014 */  sw        $s1, 0x14($sp)
/* 4246C 8006706C 8C420000 */  lw        $v0, ($v0)
/* 42470 80067070 8E040004 */  lw        $a0, 4($s0)
/* 42474 80067074 8E120008 */  lw        $s2, 8($s0)
/* 42478 80067078 0C018798 */  jal       func_80061E60
/* 4247C 8006707C 30510001 */   andi     $s1, $v0, 1
/* 42480 80067080 00111880 */  sll       $v1, $s1, 2
/* 42484 80067084 00711821 */  addu      $v1, $v1, $s1
/* 42488 80067088 00031880 */  sll       $v1, $v1, 2
/* 4248C 8006708C 02431821 */  addu      $v1, $s2, $v1
/* 42490 80067090 8C640028 */  lw        $a0, 0x28($v1)
/* 42494 80067094 96030000 */  lhu       $v1, ($s0)
/* 42498 80067098 30630002 */  andi      $v1, $v1, 2
/* 4249C 8006709C 10600008 */  beqz      $v1, .L800670C0
/* 424A0 800670A0 00443021 */   addu     $a2, $v0, $a0
/* 424A4 800670A4 8E420020 */  lw        $v0, 0x20($s2)
/* 424A8 800670A8 8E030020 */  lw        $v1, 0x20($s0)
/* 424AC 800670AC 2404F000 */  addiu     $a0, $zero, -0x1000
/* 424B0 800670B0 00441024 */  and       $v0, $v0, $a0
/* 424B4 800670B4 00621825 */  or        $v1, $v1, $v0
/* 424B8 800670B8 08019C32 */  j         .L800670C8
/* 424BC 800670BC AE030020 */   sw       $v1, 0x20($s0)
.L800670C0:
/* 424C0 800670C0 8E420020 */  lw        $v0, 0x20($s2)
/* 424C4 800670C4 AE020020 */  sw        $v0, 0x20($s0)
.L800670C8:
/* 424C8 800670C8 96020000 */  lhu       $v0, ($s0)
/* 424CC 800670CC 30420004 */  andi      $v0, $v0, 4
/* 424D0 800670D0 1040002B */  beqz      $v0, .L80067180
/* 424D4 800670D4 00111080 */   sll      $v0, $s1, 2
/* 424D8 800670D8 00511021 */  addu      $v0, $v0, $s1
/* 424DC 800670DC 00021080 */  sll       $v0, $v0, 2
/* 424E0 800670E0 02421021 */  addu      $v0, $s2, $v0
/* 424E4 800670E4 8C42002C */  lw        $v0, 0x2c($v0)
/* 424E8 800670E8 30420FFF */  andi      $v0, $v0, 0xfff
/* 424EC 800670EC 44822000 */  mtc1      $v0, $f4
/* 424F0 800670F0 00000000 */  nop
/* 424F4 800670F4 04410004 */  bgez      $v0, .L80067108
/* 424F8 800670F8 46802121 */   cvt.d.w  $f4, $f4
/* 424FC 800670FC 3C01800A */  lui       $at, %hi(D_80099D50)
/* 42500 80067100 D4209D50 */  ldc1      $f0, %lo(D_80099D50)($at)
/* 42504 80067104 46202100 */  add.d     $f4, $f4, $f0
.L80067108:
/* 42508 80067108 C6020024 */  lwc1      $f2, 0x24($s0)
/* 4250C 8006710C 46202020 */  cvt.s.d   $f0, $f4
/* 42510 80067110 46001082 */  mul.s     $f2, $f2, $f0
/* 42514 80067114 3C014F00 */  lui       $at, 0x4f00
/* 42518 80067118 44810000 */  mtc1      $at, $f0
/* 4251C 8006711C 00000000 */  nop
/* 42520 80067120 4602003E */  c.le.s    $f0, $f2
/* 42524 80067124 00000000 */  nop
/* 42528 80067128 00000000 */  nop
/* 4252C 8006712C 45030006 */  bc1tl     .L80067148
/* 42530 80067130 46001001 */   sub.s    $f0, $f2, $f0
/* 42534 80067134 4600100D */  trunc.w.s $f0, $f2
/* 42538 80067138 44040000 */  mfc1      $a0, $f0
/* 4253C 8006713C 00000000 */  nop
/* 42540 80067140 08019C57 */  j         .L8006715C
/* 42544 80067144 00111080 */   sll      $v0, $s1, 2
.L80067148:
/* 42548 80067148 4600008D */  trunc.w.s $f2, $f0
/* 4254C 8006714C 44041000 */  mfc1      $a0, $f2
/* 42550 80067150 3C028000 */  lui       $v0, 0x8000
/* 42554 80067154 00822025 */  or        $a0, $a0, $v0
/* 42558 80067158 00111080 */  sll       $v0, $s1, 2
.L8006715C:
/* 4255C 8006715C 00511021 */  addu      $v0, $v0, $s1
/* 42560 80067160 00021080 */  sll       $v0, $v0, 2
/* 42564 80067164 02421021 */  addu      $v0, $s2, $v0
/* 42568 80067168 AE04002C */  sw        $a0, 0x2c($s0)
/* 4256C 8006716C 8C42002C */  lw        $v0, 0x2c($v0)
/* 42570 80067170 2403F000 */  addiu     $v1, $zero, -0x1000
/* 42574 80067174 00431024 */  and       $v0, $v0, $v1
/* 42578 80067178 08019C64 */  j         .L80067190
/* 4257C 8006717C 00821025 */   or       $v0, $a0, $v0
.L80067180:
/* 42580 80067180 00511021 */  addu      $v0, $v0, $s1
/* 42584 80067184 00021080 */  sll       $v0, $v0, 2
/* 42588 80067188 02421021 */  addu      $v0, $s2, $v0
/* 4258C 8006718C 8C42002C */  lw        $v0, 0x2c($v0)
.L80067190:
/* 42590 80067190 AE02002C */  sw        $v0, 0x2c($s0)
/* 42594 80067194 8E53001C */  lw        $s3, 0x1c($s2)
/* 42598 80067198 00111080 */  sll       $v0, $s1, 2
/* 4259C 8006719C 00511021 */  addu      $v0, $v0, $s1
/* 425A0 800671A0 00021080 */  sll       $v0, $v0, 2
/* 425A4 800671A4 02428821 */  addu      $s1, $s2, $v0
/* 425A8 800671A8 96040000 */  lhu       $a0, ($s0)
/* 425AC 800671AC 3C058009 */  lui       $a1, %hi(D_8009467C)
/* 425B0 800671B0 8CA5467C */  lw        $a1, %lo(D_8009467C)($a1)
/* 425B4 800671B4 8E230030 */  lw        $v1, 0x30($s1)
/* 425B8 800671B8 30820020 */  andi      $v0, $a0, 0x20
/* 425BC 800671BC 2C420001 */  sltiu     $v0, $v0, 1
/* 425C0 800671C0 00021023 */  negu      $v0, $v0
/* 425C4 800671C4 02629824 */  and       $s3, $s3, $v0
/* 425C8 800671C8 00051400 */  sll       $v0, $a1, 0x10
/* 425CC 800671CC 00621823 */  subu      $v1, $v1, $v0
/* 425D0 800671D0 30840040 */  andi      $a0, $a0, 0x40
/* 425D4 800671D4 10800005 */  beqz      $a0, .L800671EC
/* 425D8 800671D8 0065A021 */   addu     $s4, $v1, $a1
/* 425DC 800671DC 8E040004 */  lw        $a0, 4($s0)
/* 425E0 800671E0 0C018798 */  jal       func_80061E60
/* 425E4 800671E4 AE00002C */   sw       $zero, 0x2c($s0)
/* 425E8 800671E8 00403021 */  addu      $a2, $v0, $zero
.L800671EC:
/* 425EC 800671EC 96020000 */  lhu       $v0, ($s0)
/* 425F0 800671F0 30420080 */  andi      $v0, $v0, 0x80
/* 425F4 800671F4 10400008 */  beqz      $v0, .L80067218
/* 425F8 800671F8 3C0303FF */   lui      $v1, 0x3ff
/* 425FC 800671FC 96020028 */  lhu       $v0, 0x28($s0)
/* 42600 80067200 8E040004 */  lw        $a0, 4($s0)
/* 42604 80067204 00021400 */  sll       $v0, $v0, 0x10
/* 42608 80067208 00431024 */  and       $v0, $v0, $v1
/* 4260C 8006720C 0C018798 */  jal       func_80061E60
/* 42610 80067210 AE02002C */   sw       $v0, 0x2c($s0)
/* 42614 80067214 00403021 */  addu      $a2, $v0, $zero
.L80067218:
/* 42618 80067218 3C02A440 */  lui       $v0, 0xa440
/* 4261C 8006721C 34420004 */  ori       $v0, $v0, 4
/* 42620 80067220 3C03A440 */  lui       $v1, 0xa440
/* 42624 80067224 34630008 */  ori       $v1, $v1, 8
/* 42628 80067228 3C04A440 */  lui       $a0, 0xa440
/* 4262C 8006722C 34840014 */  ori       $a0, $a0, 0x14
/* 42630 80067230 AC460000 */  sw        $a2, ($v0)
/* 42634 80067234 8E420008 */  lw        $v0, 8($s2)
/* 42638 80067238 3C05A440 */  lui       $a1, 0xa440
/* 4263C 8006723C 34A50018 */  ori       $a1, $a1, 0x18
/* 42640 80067240 AC620000 */  sw        $v0, ($v1)
/* 42644 80067244 8E42000C */  lw        $v0, 0xc($s2)
/* 42648 80067248 3C06A440 */  lui       $a2, 0xa440
/* 4264C 8006724C 34C60020 */  ori       $a2, $a2, 0x20
/* 42650 80067250 AC820000 */  sw        $v0, ($a0)
/* 42654 80067254 8E420010 */  lw        $v0, 0x10($s2)
/* 42658 80067258 3C03A440 */  lui       $v1, 0xa440
/* 4265C 8006725C 3463001C */  ori       $v1, $v1, 0x1c
/* 42660 80067260 ACA20000 */  sw        $v0, ($a1)
/* 42664 80067264 8E420014 */  lw        $v0, 0x14($s2)
/* 42668 80067268 3C04A440 */  lui       $a0, 0xa440
/* 4266C 8006726C 34840024 */  ori       $a0, $a0, 0x24
/* 42670 80067270 AC620000 */  sw        $v0, ($v1)
/* 42674 80067274 8E420018 */  lw        $v0, 0x18($s2)
/* 42678 80067278 3C03A440 */  lui       $v1, 0xa440
/* 4267C 8006727C 34630028 */  ori       $v1, $v1, 0x28
/* 42680 80067280 ACC20000 */  sw        $v0, ($a2)
/* 42684 80067284 AC930000 */  sw        $s3, ($a0)
/* 42688 80067288 AC740000 */  sw        $s4, ($v1)
/* 4268C 8006728C 8E230034 */  lw        $v1, 0x34($s1)
/* 42690 80067290 3C02A440 */  lui       $v0, 0xa440
/* 42694 80067294 3442002C */  ori       $v0, $v0, 0x2c
/* 42698 80067298 AC430000 */  sw        $v1, ($v0)
/* 4269C 8006729C 8E230038 */  lw        $v1, 0x38($s1)
/* 426A0 800672A0 3C02A440 */  lui       $v0, 0xa440
/* 426A4 800672A4 3442000C */  ori       $v0, $v0, 0xc
/* 426A8 800672A8 AC430000 */  sw        $v1, ($v0)
/* 426AC 800672AC 8E030020 */  lw        $v1, 0x20($s0)
/* 426B0 800672B0 3C02A440 */  lui       $v0, 0xa440
/* 426B4 800672B4 34420030 */  ori       $v0, $v0, 0x30
/* 426B8 800672B8 AC430000 */  sw        $v1, ($v0)
/* 426BC 800672BC 8E03002C */  lw        $v1, 0x2c($s0)
/* 426C0 800672C0 3C02A440 */  lui       $v0, 0xa440
/* 426C4 800672C4 34420034 */  ori       $v0, $v0, 0x34
/* 426C8 800672C8 AC430000 */  sw        $v1, ($v0)
/* 426CC 800672CC 8E03000C */  lw        $v1, 0xc($s0)
/* 426D0 800672D0 3C028009 */  lui       $v0, %hi(D_80095960)
/* 426D4 800672D4 8C425960 */  lw        $v0, %lo(D_80095960)($v0)
/* 426D8 800672D8 02003021 */  addu      $a2, $s0, $zero
/* 426DC 800672DC 24C80030 */  addiu     $t0, $a2, 0x30
/* 426E0 800672E0 3C018009 */  lui       $at, %hi(D_80095960)
/* 426E4 800672E4 AC265960 */  sw        $a2, %lo(D_80095960)($at)
/* 426E8 800672E8 00403821 */  addu      $a3, $v0, $zero
/* 426EC 800672EC 3C02A440 */  lui       $v0, 0xa440
/* 426F0 800672F0 3C018009 */  lui       $at, %hi(D_80095964)
/* 426F4 800672F4 AC275964 */  sw        $a3, %lo(D_80095964)($at)
/* 426F8 800672F8 AC430000 */  sw        $v1, ($v0)
.L800672FC:
/* 426FC 800672FC 8CC20000 */  lw        $v0, ($a2)
/* 42700 80067300 8CC30004 */  lw        $v1, 4($a2)
/* 42704 80067304 8CC40008 */  lw        $a0, 8($a2)
/* 42708 80067308 8CC5000C */  lw        $a1, 0xc($a2)
/* 4270C 8006730C ACE20000 */  sw        $v0, ($a3)
/* 42710 80067310 ACE30004 */  sw        $v1, 4($a3)
/* 42714 80067314 ACE40008 */  sw        $a0, 8($a3)
/* 42718 80067318 ACE5000C */  sw        $a1, 0xc($a3)
/* 4271C 8006731C 24C60010 */  addiu     $a2, $a2, 0x10
/* 42720 80067320 14C8FFF6 */  bne       $a2, $t0, .L800672FC
/* 42724 80067324 24E70010 */   addiu    $a3, $a3, 0x10
/* 42728 80067328 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4272C 8006732C 8FB40020 */  lw        $s4, 0x20($sp)
/* 42730 80067330 8FB3001C */  lw        $s3, 0x1c($sp)
/* 42734 80067334 8FB20018 */  lw        $s2, 0x18($sp)
/* 42738 80067338 8FB10014 */  lw        $s1, 0x14($sp)
/* 4273C 8006733C 8FB00010 */  lw        $s0, 0x10($sp)
/* 42740 80067340 03E00008 */  jr        $ra
/* 42744 80067344 27BD0028 */   addiu    $sp, $sp, 0x28
/* 42748 80067348 00000000 */  nop
/* 4274C 8006734C 00000000 */  nop
