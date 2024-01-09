.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pause_items_draw_contents
/* 144D60 80248FA0 27BDFF58 */  addiu     $sp, $sp, -0xA8
/* 144D64 80248FA4 3C038027 */  lui       $v1, %hi(gPauseItemsCurrentPage)
/* 144D68 80248FA8 8C63FB88 */  lw        $v1, %lo(gPauseItemsCurrentPage)($v1)
/* 144D6C 80248FAC 240A0001 */  addiu     $t2, $zero, 0x1
/* 144D70 80248FB0 AFA500AC */  sw        $a1, 0xAC($sp)
/* 144D74 80248FB4 AFAA0060 */  sw        $t2, 0x60($sp)
/* 144D78 80248FB8 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 144D7C 80248FBC AFA600B0 */  sw        $a2, 0xB0($sp)
/* 144D80 80248FC0 AFA700B4 */  sw        $a3, 0xB4($sp)
/* 144D84 80248FC4 8FA700B0 */  lw        $a3, 0xB0($sp)
/* 144D88 80248FC8 240B000A */  addiu     $t3, $zero, 0xA
/* 144D8C 80248FCC AFAB0064 */  sw        $t3, 0x64($sp)
/* 144D90 80248FD0 8FAB00B4 */  lw        $t3, 0xB4($sp)
/* 144D94 80248FD4 AFBF00A4 */  sw        $ra, 0xA4($sp)
/* 144D98 80248FD8 AFBE00A0 */  sw        $fp, 0xA0($sp)
/* 144D9C 80248FDC AFB7009C */  sw        $s7, 0x9C($sp)
/* 144DA0 80248FE0 AFB60098 */  sw        $s6, 0x98($sp)
/* 144DA4 80248FE4 AFB50094 */  sw        $s5, 0x94($sp)
/* 144DA8 80248FE8 AFB40090 */  sw        $s4, 0x90($sp)
/* 144DAC 80248FEC AFB3008C */  sw        $s3, 0x8C($sp)
/* 144DB0 80248FF0 AFB20088 */  sw        $s2, 0x88($sp)
/* 144DB4 80248FF4 AFB10084 */  sw        $s1, 0x84($sp)
/* 144DB8 80248FF8 AFB00080 */  sw        $s0, 0x80($sp)
/* 144DBC 80248FFC 25460044 */  addiu     $a2, $t2, 0x44
/* 144DC0 80249000 00031040 */  sll       $v0, $v1, 1
/* 144DC4 80249004 00431021 */  addu      $v0, $v0, $v1
/* 144DC8 80249008 00021080 */  sll       $v0, $v0, 2
/* 144DCC 8024900C 3C088027 */  lui       $t0, %hi(D_8026FB92)
/* 144DD0 80249010 01024021 */  addu      $t0, $t0, $v0
/* 144DD4 80249014 9108FB92 */  lbu       $t0, %lo(D_8026FB92)($t0)
/* 144DD8 80249018 8FAA00B8 */  lw        $t2, 0xB8($sp)
/* 144DDC 8024901C 2562FFBC */  addiu     $v0, $t3, -0x44
/* 144DE0 80249020 AFA20014 */  sw        $v0, 0x14($sp)
/* 144DE4 80249024 240200FF */  addiu     $v0, $zero, 0xFF
/* 144DE8 80249028 AFA00010 */  sw        $zero, 0x10($sp)
/* 144DEC 8024902C AFA2001C */  sw        $v0, 0x1C($sp)
/* 144DF0 80249030 AFA00020 */  sw        $zero, 0x20($sp)
/* 144DF4 80249034 AFA00024 */  sw        $zero, 0x24($sp)
/* 144DF8 80249038 AFA00028 */  sw        $zero, 0x28($sp)
/* 144DFC 8024903C AFA0002C */  sw        $zero, 0x2C($sp)
/* 144E00 80249040 AFA00030 */  sw        $zero, 0x30($sp)
/* 144E04 80249044 AFA00034 */  sw        $zero, 0x34($sp)
/* 144E08 80249048 AFA00038 */  sw        $zero, 0x38($sp)
/* 144E0C 8024904C AFA0003C */  sw        $zero, 0x3C($sp)
/* 144E10 80249050 AFAA0018 */  sw        $t2, 0x18($sp)
/* 144E14 80249054 AFA00040 */  sw        $zero, 0x40($sp)
/* 144E18 80249058 3C038027 */  lui       $v1, %hi(gPauseItemsSelectedIndex)
/* 144E1C 8024905C 8C63FC80 */  lw        $v1, %lo(gPauseItemsSelectedIndex)($v1)
/* 144E20 80249060 15000002 */  bnez      $t0, .LJP_8024906C
/* 144E24 80249064 0068001A */   div      $zero, $v1, $t0
/* 144E28 80249068 0007000D */  break     7
.LJP_8024906C:
/* 144E2C 8024906C 2401FFFF */  addiu     $at, $zero, -0x1
/* 144E30 80249070 15010004 */  bne       $t0, $at, .LJP_80249084
/* 144E34 80249074 3C018000 */   lui      $at, (0x80000000 >> 16)
/* 144E38 80249078 14610002 */  bne       $v1, $at, .LJP_80249084
/* 144E3C 8024907C 00000000 */   nop
/* 144E40 80249080 0006000D */  break     6
.LJP_80249084:
/* 144E44 80249084 00005012 */  mflo      $t2
/* 144E48 80249088 00005810 */  mfhi      $t3
/* 144E4C 8024908C 24040004 */  addiu     $a0, $zero, 0x4
/* 144E50 80249090 3C058027 */  lui       $a1, %hi(gPauseWS_18)
/* 144E54 80249094 24A5F3C0 */  addiu     $a1, $a1, %lo(gPauseWS_18)
/* 144E58 80249098 24020140 */  addiu     $v0, $zero, 0x140
/* 144E5C 8024909C AFA20044 */  sw        $v0, 0x44($sp)
/* 144E60 802490A0 240200F0 */  addiu     $v0, $zero, 0xF0
/* 144E64 802490A4 AFA20048 */  sw        $v0, 0x48($sp)
/* 144E68 802490A8 AFA0004C */  sw        $zero, 0x4C($sp)
/* 144E6C 802490AC AFAA005C */  sw        $t2, 0x5C($sp)
/* 144E70 802490B0 0C03D51C */  jal       draw_box
/* 144E74 802490B4 AFAB0058 */   sw       $t3, 0x58($sp)
/* 144E78 802490B8 3C108027 */  lui       $s0, %hi(gPauseItemsPages)
/* 144E7C 802490BC 2610FB90 */  addiu     $s0, $s0, %lo(gPauseItemsPages)
/* 144E80 802490C0 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 144E84 802490C4 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 144E88 802490C8 25660007 */  addiu     $a2, $t3, 0x7
/* 144E8C 802490CC 8FAB00B4 */  lw        $t3, 0xB4($sp)
/* 144E90 802490D0 25440001 */  addiu     $a0, $t2, 0x1
/* 144E94 802490D4 014B1021 */  addu      $v0, $t2, $t3
/* 144E98 802490D8 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 144E9C 802490DC 8FAB00B8 */  lw        $t3, 0xB8($sp)
/* 144EA0 802490E0 2447FFFF */  addiu     $a3, $v0, -0x1
/* 144EA4 802490E4 014B1021 */  addu      $v0, $t2, $t3
/* 144EA8 802490E8 1C800002 */  bgtz      $a0, .LJP_802490F4
/* 144EAC 802490EC 2448FFF9 */   addiu    $t0, $v0, -0x7
/* 144EB0 802490F0 24040001 */  addiu     $a0, $zero, 0x1
.LJP_802490F4:
/* 144EB4 802490F4 58C00001 */  blezl     $a2, .LJP_802490FC
/* 144EB8 802490F8 24060001 */   addiu    $a2, $zero, 0x1
.LJP_802490FC:
/* 144EBC 802490FC 18E00277 */  blez      $a3, .LJP_80249ADC
/* 144EC0 80249100 00000000 */   nop
/* 144EC4 80249104 19000275 */  blez      $t0, .LJP_80249ADC
/* 144EC8 80249108 2882013F */   slti     $v0, $a0, 0x13F
/* 144ECC 8024910C 10400273 */  beqz      $v0, .LJP_80249ADC
/* 144ED0 80249110 28C200EF */   slti     $v0, $a2, 0xEF
/* 144ED4 80249114 10400271 */  beqz      $v0, .LJP_80249ADC
/* 144ED8 80249118 28E2013F */   slti     $v0, $a3, 0x13F
/* 144EDC 8024911C 50400001 */  beql      $v0, $zero, .LJP_80249124
/* 144EE0 80249120 2407013F */   addiu    $a3, $zero, 0x13F
.LJP_80249124:
/* 144EE4 80249124 290200EF */  slti      $v0, $t0, 0xEF
/* 144EE8 80249128 50400001 */  beql      $v0, $zero, .LJP_80249130
/* 144EEC 8024912C 240800EF */   addiu    $t0, $zero, 0xEF
.LJP_80249130:
/* 144EF0 80249130 3C03800A */  lui       $v1, %hi(gMainGfxPos)
/* 144EF4 80249134 2463A64C */  addiu     $v1, $v1, %lo(gMainGfxPos)
/* 144EF8 80249138 44841000 */  mtc1      $a0, $f2
/* 144EFC 8024913C 00000000 */  nop
/* 144F00 80249140 468010A0 */  cvt.s.w   $f2, $f2
/* 144F04 80249144 44860000 */  mtc1      $a2, $f0
/* 144F08 80249148 00000000 */  nop
/* 144F0C 8024914C 46800020 */  cvt.s.w   $f0, $f0
/* 144F10 80249150 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 144F14 80249154 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 144F18 80249158 3C014080 */  lui       $at, (0x40800000 >> 16)
/* 144F1C 8024915C 44812000 */  mtc1      $at, $f4
/* 144F20 80249160 3C04ED00 */  lui       $a0, (0xED000000 >> 16)
/* 144F24 80249164 AFA00054 */  sw        $zero, 0x54($sp)
/* 144F28 80249168 AFA00050 */  sw        $zero, 0x50($sp)
/* 144F2C 8024916C 254A0067 */  addiu     $t2, $t2, 0x67
/* 144F30 80249170 46041082 */  mul.s     $f2, $f2, $f4
/* 144F34 80249174 00000000 */  nop
/* 144F38 80249178 256B0017 */  addiu     $t3, $t3, 0x17
/* 144F3C 8024917C AFAA006C */  sw        $t2, 0x6C($sp)
/* 144F40 80249180 AFAB0070 */  sw        $t3, 0x70($sp)
/* 144F44 80249184 8C620000 */  lw        $v0, 0x0($v1)
/* 144F48 80249188 46040002 */  mul.s     $f0, $f0, $f4
/* 144F4C 8024918C 00000000 */  nop
/* 144F50 80249190 0040282D */  daddu     $a1, $v0, $zero
/* 144F54 80249194 24420008 */  addiu     $v0, $v0, 0x8
/* 144F58 80249198 AC620000 */  sw        $v0, 0x0($v1)
/* 144F5C 8024919C 4600118D */  trunc.w.s $f6, $f2
/* 144F60 802491A0 44023000 */  mfc1      $v0, $f6
/* 144F64 802491A4 00000000 */  nop
/* 144F68 802491A8 30420FFF */  andi      $v0, $v0, 0xFFF
/* 144F6C 802491AC 00021300 */  sll       $v0, $v0, 12
/* 144F70 802491B0 4600018D */  trunc.w.s $f6, $f0
/* 144F74 802491B4 44033000 */  mfc1      $v1, $f6
/* 144F78 802491B8 44871000 */  mtc1      $a3, $f2
/* 144F7C 802491BC 00000000 */  nop
/* 144F80 802491C0 468010A0 */  cvt.s.w   $f2, $f2
/* 144F84 802491C4 46041082 */  mul.s     $f2, $f2, $f4
/* 144F88 802491C8 00000000 */  nop
/* 144F8C 802491CC 30630FFF */  andi      $v1, $v1, 0xFFF
/* 144F90 802491D0 00641825 */  or        $v1, $v1, $a0
/* 144F94 802491D4 00431025 */  or        $v0, $v0, $v1
/* 144F98 802491D8 44880000 */  mtc1      $t0, $f0
/* 144F9C 802491DC 00000000 */  nop
/* 144FA0 802491E0 46800020 */  cvt.s.w   $f0, $f0
/* 144FA4 802491E4 46040002 */  mul.s     $f0, $f0, $f4
/* 144FA8 802491E8 00000000 */  nop
/* 144FAC 802491EC ACA20000 */  sw        $v0, 0x0($a1)
/* 144FB0 802491F0 4600118D */  trunc.w.s $f6, $f2
/* 144FB4 802491F4 44023000 */  mfc1      $v0, $f6
/* 144FB8 802491F8 00000000 */  nop
/* 144FBC 802491FC 30420FFF */  andi      $v0, $v0, 0xFFF
/* 144FC0 80249200 00021300 */  sll       $v0, $v0, 12
/* 144FC4 80249204 4600018D */  trunc.w.s $f6, $f0
/* 144FC8 80249208 44033000 */  mfc1      $v1, $f6
/* 144FCC 8024920C 00000000 */  nop
/* 144FD0 80249210 30630FFF */  andi      $v1, $v1, 0xFFF
/* 144FD4 80249214 00431025 */  or        $v0, $v0, $v1
/* 144FD8 80249218 ACA20004 */  sw        $v0, 0x4($a1)
.LJP_8024921C:
/* 144FDC 8024921C 0000F02D */  daddu     $fp, $zero, $zero
/* 144FE0 80249220 3C0B8027 */  lui       $t3, %hi(gPauseItemsPages)
/* 144FE4 80249224 256BFB90 */  addiu     $t3, $t3, %lo(gPauseItemsPages)
/* 144FE8 80249228 AFAB007C */  sw        $t3, 0x7C($sp)
.LJP_8024922C:
/* 144FEC 8024922C 8FAA007C */  lw        $t2, 0x7C($sp)
/* 144FF0 80249230 91420000 */  lbu       $v0, 0x0($t2)
/* 144FF4 80249234 104000E2 */  beqz      $v0, .LJP_802495C0
/* 144FF8 80249238 00000000 */   nop
/* 144FFC 8024923C 03C0202D */  daddu     $a0, $fp, $zero
/* 145000 80249240 0C092392 */  jal       pause_items_get_pos_y
/* 145004 80249244 0000282D */   daddu    $a1, $zero, $zero
/* 145008 80249248 8FAB007C */  lw        $t3, 0x7C($sp)
/* 14500C 8024924C 8D620008 */  lw        $v0, 0x8($t3)
/* 145010 80249250 184000D5 */  blez      $v0, .LJP_802495A8
/* 145014 80249254 0000902D */   daddu    $s2, $zero, $zero
/* 145018 80249258 8FAA0054 */  lw        $t2, 0x54($sp)
/* 14501C 8024925C 3C0B8027 */  lui       $t3, %hi(gPauseItemsIconIDs)
/* 145020 80249260 256BFCA8 */  addiu     $t3, $t3, %lo(gPauseItemsIconIDs)
/* 145024 80249264 000A1080 */  sll       $v0, $t2, 2
/* 145028 80249268 004B5821 */  addu      $t3, $v0, $t3
/* 14502C 8024926C AFAB0078 */  sw        $t3, 0x78($sp)
.LJP_80249270:
/* 145030 80249270 8FAA007C */  lw        $t2, 0x7C($sp)
/* 145034 80249274 3C0B8027 */  lui       $t3, %hi(gPauseItemsItemIDs)
/* 145038 80249278 256BFAC0 */  addiu     $t3, $t3, %lo(gPauseItemsItemIDs)
/* 14503C 8024927C 8D420004 */  lw        $v0, 0x4($t2)
/* 145040 80249280 24037FFF */  addiu     $v1, $zero, 0x7FFF
/* 145044 80249284 00521021 */  addu      $v0, $v0, $s2
/* 145048 80249288 00021040 */  sll       $v0, $v0, 1
/* 14504C 8024928C 004B1021 */  addu      $v0, $v0, $t3
/* 145050 80249290 84500000 */  lh        $s0, 0x0($v0)
/* 145054 80249294 94560000 */  lhu       $s6, 0x0($v0)
/* 145058 80249298 120300BD */  beq       $s0, $v1, .LJP_80249590
/* 14505C 8024929C 0000982D */   daddu    $s3, $zero, $zero
/* 145060 802492A0 03C0202D */  daddu     $a0, $fp, $zero
/* 145064 802492A4 0C09237C */  jal       pause_items_get_pos_x
/* 145068 802492A8 0240282D */   daddu    $a1, $s2, $zero
/* 14506C 802492AC 03C0202D */  daddu     $a0, $fp, $zero
/* 145070 802492B0 0240282D */  daddu     $a1, $s2, $zero
/* 145074 802492B4 0C092392 */  jal       pause_items_get_pos_y
/* 145078 802492B8 AFA20068 */   sw       $v0, 0x68($sp)
/* 14507C 802492BC 0040B82D */  daddu     $s7, $v0, $zero
/* 145080 802492C0 3A027FFE */  xori      $v0, $s0, 0x7FFE
/* 145084 802492C4 3C038027 */  lui       $v1, %hi(gPauseMenuCurrentTab)
/* 145088 802492C8 8063F7A4 */  lb        $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 14508C 802492CC 2C420001 */  sltiu     $v0, $v0, 0x1
/* 145090 802492D0 AFA20074 */  sw        $v0, 0x74($sp)
/* 145094 802492D4 24020003 */  addiu     $v0, $zero, 0x3
/* 145098 802492D8 14620012 */  bne       $v1, $v0, .LJP_80249324
/* 14509C 802492DC 0000A02D */   daddu    $s4, $zero, $zero
/* 1450A0 802492E0 3C028027 */  lui       $v0, %hi(gPauseItemsLevel)
/* 1450A4 802492E4 8C42FCA0 */  lw        $v0, %lo(gPauseItemsLevel)($v0)
/* 1450A8 802492E8 240A0001 */  addiu     $t2, $zero, 0x1
/* 1450AC 802492EC 144A000D */  bne       $v0, $t2, .LJP_80249324
/* 1450B0 802492F0 03C0202D */   daddu    $a0, $fp, $zero
/* 1450B4 802492F4 0C0923B2 */  jal       pause_items_get_column
/* 1450B8 802492F8 0240282D */   daddu    $a1, $s2, $zero
/* 1450BC 802492FC 8FAB0058 */  lw        $t3, 0x58($sp)
/* 1450C0 80249300 144B0008 */  bne       $v0, $t3, .LJP_80249324
/* 1450C4 80249304 0000A02D */   daddu    $s4, $zero, $zero
/* 1450C8 80249308 03C0202D */  daddu     $a0, $fp, $zero
/* 1450CC 8024930C 0C0923C4 */  jal       pause_items_get_row
/* 1450D0 80249310 0240282D */   daddu    $a1, $s2, $zero
/* 1450D4 80249314 8FAA005C */  lw        $t2, 0x5C($sp)
/* 1450D8 80249318 004A1026 */  xor       $v0, $v0, $t2
/* 1450DC 8024931C 2C530001 */  sltiu     $s3, $v0, 0x1
/* 1450E0 80249320 0000A02D */  daddu     $s4, $zero, $zero
.LJP_80249324:
/* 1450E4 80249324 12600003 */  beqz      $s3, .LJP_80249334
/* 1450E8 80249328 0280A82D */   daddu    $s5, $s4, $zero
/* 1450EC 8024932C 2414FFFF */  addiu     $s4, $zero, -0x1
/* 1450F0 80249330 0280A82D */  daddu     $s5, $s4, $zero
.LJP_80249334:
/* 1450F4 80249334 8FAB0050 */  lw        $t3, 0x50($sp)
/* 1450F8 80249338 15600007 */  bnez      $t3, .LJP_80249358
/* 1450FC 8024933C 240A0001 */   addiu    $t2, $zero, 0x1
/* 145100 80249340 240B000A */  addiu     $t3, $zero, 0xA
/* 145104 80249344 AFAA0060 */  sw        $t2, 0x60($sp)
/* 145108 80249348 12600003 */  beqz      $s3, .LJP_80249358
/* 14510C 8024934C AFAB0064 */   sw       $t3, 0x64($sp)
/* 145110 80249350 240A0009 */  addiu     $t2, $zero, 0x9
/* 145114 80249354 AFAA0060 */  sw        $t2, 0x60($sp)
.LJP_80249358:
/* 145118 80249358 0C0923D8 */  jal       pause_items_is_visible
/* 14511C 8024935C 02E0202D */   daddu    $a0, $s7, $zero
/* 145120 80249360 1040008B */  beqz      $v0, .LJP_80249590
/* 145124 80249364 00000000 */   nop
/* 145128 80249368 8FAB0050 */  lw        $t3, 0x50($sp)
/* 14512C 8024936C 15600035 */  bnez      $t3, .LJP_80249444
/* 145130 80249370 00000000 */   nop
/* 145134 80249374 8FAA0074 */  lw        $t2, 0x74($sp)
/* 145138 80249378 11400016 */  beqz      $t2, .LJP_802493D4
/* 14513C 8024937C 00161400 */   sll      $v0, $s6, 16
/* 145140 80249380 0C09396C */  jal       pause_get_menu_msg
/* 145144 80249384 2404004D */   addiu    $a0, $zero, 0x4D
/* 145148 80249388 8FA40068 */  lw        $a0, 0x68($sp)
/* 14514C 8024938C 0C0923E6 */  jal       pause_items_scroll_offset_x
/* 145150 80249390 0040882D */   daddu    $s1, $v0, $zero
/* 145154 80249394 8FAB006C */  lw        $t3, 0x6C($sp)
/* 145158 80249398 02E0202D */  daddu     $a0, $s7, $zero
/* 14515C 8024939C 01628021 */  addu      $s0, $t3, $v0
/* 145160 802493A0 0C0923E2 */  jal       pause_items_scroll_offset_y
/* 145164 802493A4 02148021 */   addu     $s0, $s0, $s4
/* 145168 802493A8 0220202D */  daddu     $a0, $s1, $zero
/* 14516C 802493AC 0200282D */  daddu     $a1, $s0, $zero
/* 145170 802493B0 240700FF */  addiu     $a3, $zero, 0xFF
/* 145174 802493B4 8FAA0070 */  lw        $t2, 0x70($sp)
/* 145178 802493B8 8FAB0064 */  lw        $t3, 0x64($sp)
/* 14517C 802493BC 01421021 */  addu      $v0, $t2, $v0
/* 145180 802493C0 8FAA0060 */  lw        $t2, 0x60($sp)
/* 145184 802493C4 00553021 */  addu      $a2, $v0, $s5
/* 145188 802493C8 AFAB0010 */  sw        $t3, 0x10($sp)
/* 14518C 802493CC 0809250F */  j         .LJP_8024943C
/* 145190 802493D0 AFAA0014 */   sw       $t2, 0x14($sp)
.LJP_802493D4:
/* 145194 802493D4 000212C3 */  sra       $v0, $v0, 11
/* 145198 802493D8 3C0B8008 */  lui       $t3, %hi(gItemTable)
/* 14519C 802493DC 256B78B0 */  addiu     $t3, $t3, %lo(gItemTable)
/* 1451A0 802493E0 004B8821 */  addu      $s1, $v0, $t3
/* 1451A4 802493E4 8E220000 */  lw        $v0, 0x0($s1)
/* 1451A8 802493E8 10400016 */  beqz      $v0, .LJP_80249444
/* 1451AC 802493EC 00000000 */   nop
/* 1451B0 802493F0 18400014 */  blez      $v0, .LJP_80249444
/* 1451B4 802493F4 00000000 */   nop
/* 1451B8 802493F8 0C0923E6 */  jal       pause_items_scroll_offset_x
/* 1451BC 802493FC 8FA40068 */   lw       $a0, 0x68($sp)
/* 1451C0 80249400 8FAA006C */  lw        $t2, 0x6C($sp)
/* 1451C4 80249404 02E0202D */  daddu     $a0, $s7, $zero
/* 1451C8 80249408 01428021 */  addu      $s0, $t2, $v0
/* 1451CC 8024940C 0C0923E2 */  jal       pause_items_scroll_offset_y
/* 1451D0 80249410 02148021 */   addu     $s0, $s0, $s4
/* 1451D4 80249414 0200282D */  daddu     $a1, $s0, $zero
/* 1451D8 80249418 8FAB0070 */  lw        $t3, 0x70($sp)
/* 1451DC 8024941C 8FAA0064 */  lw        $t2, 0x64($sp)
/* 1451E0 80249420 01621021 */  addu      $v0, $t3, $v0
/* 1451E4 80249424 8FAB0060 */  lw        $t3, 0x60($sp)
/* 1451E8 80249428 240700FF */  addiu     $a3, $zero, 0xFF
/* 1451EC 8024942C AFAA0010 */  sw        $t2, 0x10($sp)
/* 1451F0 80249430 AFAB0014 */  sw        $t3, 0x14($sp)
/* 1451F4 80249434 8E240000 */  lw        $a0, 0x0($s1)
/* 1451F8 80249438 00553021 */  addu      $a2, $v0, $s5
.LJP_8024943C:
/* 1451FC 8024943C 0C04ADC4 */  jal       draw_msg
/* 145200 80249440 00000000 */   nop
.LJP_80249444:
/* 145204 80249444 8FAA0050 */  lw        $t2, 0x50($sp)
/* 145208 80249448 240B0001 */  addiu     $t3, $zero, 0x1
/* 14520C 8024944C 154B0050 */  bne       $t2, $t3, .LJP_80249590
/* 145210 80249450 3C052000 */   lui      $a1, (0x20000000 >> 16)
/* 145214 80249454 8FAA0078 */  lw        $t2, 0x78($sp)
/* 145218 80249458 8D510000 */  lw        $s1, 0x0($t2)
/* 14521C 8024945C 0C0526B7 */  jal       hud_element_clear_flags
/* 145220 80249460 0220202D */   daddu    $a0, $s1, $zero
/* 145224 80249464 0220202D */  daddu     $a0, $s1, $zero
/* 145228 80249468 0C0526AC */  jal       hud_element_set_flags
/* 14522C 8024946C 34058000 */   ori      $a1, $zero, 0x8000
/* 145230 80249470 8FAB0074 */  lw        $t3, 0x74($sp)
/* 145234 80249474 11600005 */  beqz      $t3, .LJP_8024948C
/* 145238 80249478 00000000 */   nop
/* 14523C 8024947C 3C118027 */  lui       $s1, %hi(D_8026FCF4)
/* 145240 80249480 8E31FCF4 */  lw        $s1, %lo(D_8026FCF4)($s1)
/* 145244 80249484 08092545 */  j         .LJP_80249514
/* 145248 80249488 00000000 */   nop
.LJP_8024948C:
/* 14524C 8024948C 12600010 */  beqz      $s3, .LJP_802494D0
/* 145250 80249490 0220202D */   daddu    $a0, $s1, $zero
/* 145254 80249494 0C0526AC */  jal       hud_element_set_flags
/* 145258 80249498 3C052000 */   lui      $a1, (0x20000000 >> 16)
/* 14525C 8024949C 00161400 */  sll       $v0, $s6, 16
/* 145260 802494A0 000212C3 */  sra       $v0, $v0, 11
/* 145264 802494A4 3C0A8008 */  lui       $t2, %hi(gItemTable)
/* 145268 802494A8 254A78B0 */  addiu     $t2, $t2, %lo(gItemTable)
/* 14526C 802494AC 004A1021 */  addu      $v0, $v0, $t2
/* 145270 802494B0 84420004 */  lh        $v0, 0x4($v0)
/* 145274 802494B4 3C0B8009 */  lui       $t3, %hi(gItemHudScripts)
/* 145278 802494B8 256BA650 */  addiu     $t3, $t3, %lo(gItemHudScripts)
/* 14527C 802494BC 000210C0 */  sll       $v0, $v0, 3
/* 145280 802494C0 004B1021 */  addu      $v0, $v0, $t3
/* 145284 802494C4 8C420000 */  lw        $v0, 0x0($v0)
/* 145288 802494C8 3C018027 */  lui       $at, %hi(gPauseCurrentDescIconScript)
/* 14528C 802494CC AC22F79C */  sw        $v0, %lo(gPauseCurrentDescIconScript)($at)
.LJP_802494D0:
/* 145290 802494D0 00161400 */  sll       $v0, $s6, 16
/* 145294 802494D4 000212C3 */  sra       $v0, $v0, 11
/* 145298 802494D8 3C0A8008 */  lui       $t2, %hi(gItemTable)
/* 14529C 802494DC 254A78B0 */  addiu     $t2, $t2, %lo(gItemTable)
/* 1452A0 802494E0 004A1021 */  addu      $v0, $v0, $t2
/* 1452A4 802494E4 84420004 */  lh        $v0, 0x4($v0)
/* 1452A8 802494E8 3C0B8009 */  lui       $t3, %hi(gItemHudScripts)
/* 1452AC 802494EC 256BA650 */  addiu     $t3, $t3, %lo(gItemHudScripts)
/* 1452B0 802494F0 000210C0 */  sll       $v0, $v0, 3
/* 1452B4 802494F4 004B1021 */  addu      $v0, $v0, $t3
/* 1452B8 802494F8 8C450000 */  lw        $a1, 0x0($v0)
/* 1452BC 802494FC 0C05262B */  jal       hud_element_set_script
/* 1452C0 80249500 0220202D */   daddu    $a0, $s1, $zero
/* 1452C4 80249504 3C053F2B */  lui       $a1, (0x3F2BBA99 >> 16)
/* 1452C8 80249508 34A5BA99 */  ori       $a1, $a1, (0x3F2BBA99 & 0xFFFF)
/* 1452CC 8024950C 0C052734 */  jal       hud_element_set_scale
/* 1452D0 80249510 0220202D */   daddu    $a0, $s1, $zero
.LJP_80249514:
/* 1452D4 80249514 8FA40068 */  lw        $a0, 0x68($sp)
/* 1452D8 80249518 0C0923E6 */  jal       pause_items_scroll_offset_x
/* 1452DC 8024951C 00000000 */   nop
/* 1452E0 80249520 02E0202D */  daddu     $a0, $s7, $zero
/* 1452E4 80249524 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 1452E8 80249528 2450005D */  addiu     $s0, $v0, 0x5D
/* 1452EC 8024952C 01508021 */  addu      $s0, $t2, $s0
/* 1452F0 80249530 0C0923E2 */  jal       pause_items_scroll_offset_y
/* 1452F4 80249534 02148021 */   addu     $s0, $s0, $s4
/* 1452F8 80249538 0220202D */  daddu     $a0, $s1, $zero
/* 1452FC 8024953C 0200282D */  daddu     $a1, $s0, $zero
/* 145300 80249540 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 145304 80249544 2442001C */  addiu     $v0, $v0, 0x1C
/* 145308 80249548 01621021 */  addu      $v0, $t3, $v0
/* 14530C 8024954C 0C05268D */  jal       hud_element_set_render_pos
/* 145310 80249550 00553021 */   addu     $a2, $v0, $s5
/* 145314 80249554 8FAA0054 */  lw        $t2, 0x54($sp)
/* 145318 80249558 15400005 */  bnez      $t2, .LJP_80249570
/* 14531C 8024955C 00000000 */   nop
/* 145320 80249560 0C052624 */  jal       hud_element_draw_without_clipping
/* 145324 80249564 0220202D */   daddu    $a0, $s1, $zero
/* 145328 80249568 0809255E */  j         .LJP_80249578
/* 14532C 8024956C 00000000 */   nop
.LJP_80249570:
/* 145330 80249570 0C05261D */  jal       hud_element_draw_next
/* 145334 80249574 0220202D */   daddu    $a0, $s1, $zero
.LJP_80249578:
/* 145338 80249578 8FAB0078 */  lw        $t3, 0x78($sp)
/* 14533C 8024957C 8FAA0054 */  lw        $t2, 0x54($sp)
/* 145340 80249580 256B0004 */  addiu     $t3, $t3, 0x4
/* 145344 80249584 254A0001 */  addiu     $t2, $t2, 0x1
/* 145348 80249588 AFAB0078 */  sw        $t3, 0x78($sp)
/* 14534C 8024958C AFAA0054 */  sw        $t2, 0x54($sp)
.LJP_80249590:
/* 145350 80249590 8FAB007C */  lw        $t3, 0x7C($sp)
/* 145354 80249594 8D620008 */  lw        $v0, 0x8($t3)
/* 145358 80249598 26520001 */  addiu     $s2, $s2, 0x1
/* 14535C 8024959C 0242102A */  slt       $v0, $s2, $v0
/* 145360 802495A0 1440FF33 */  bnez      $v0, .LJP_80249270
/* 145364 802495A4 00000000 */   nop
.LJP_802495A8:
/* 145368 802495A8 27DE0001 */  addiu     $fp, $fp, 0x1
/* 14536C 802495AC 8FAA007C */  lw        $t2, 0x7C($sp)
/* 145370 802495B0 2BC20014 */  slti      $v0, $fp, 0x14
/* 145374 802495B4 254A000C */  addiu     $t2, $t2, 0xC
/* 145378 802495B8 1440FF1C */  bnez      $v0, .LJP_8024922C
/* 14537C 802495BC AFAA007C */   sw       $t2, 0x7C($sp)
.LJP_802495C0:
/* 145380 802495C0 8FAB0050 */  lw        $t3, 0x50($sp)
/* 145384 802495C4 256B0001 */  addiu     $t3, $t3, 0x1
/* 145388 802495C8 29620003 */  slti      $v0, $t3, 0x3
/* 14538C 802495CC 1440FF13 */  bnez      $v0, .LJP_8024921C
/* 145390 802495D0 AFAB0050 */   sw       $t3, 0x50($sp)
/* 145394 802495D4 3C09800A */  lui       $t1, %hi(gMainGfxPos)
/* 145398 802495D8 2529A64C */  addiu     $t1, $t1, %lo(gMainGfxPos)
/* 14539C 802495DC 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 1453A0 802495E0 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 1453A4 802495E4 8D250000 */  lw        $a1, 0x0($t1)
/* 1453A8 802495E8 25440001 */  addiu     $a0, $t2, 0x1
/* 1453AC 802495EC 25660001 */  addiu     $a2, $t3, 0x1
/* 1453B0 802495F0 00A0182D */  daddu     $v1, $a1, $zero
/* 1453B4 802495F4 8FAB00B4 */  lw        $t3, 0xB4($sp)
/* 1453B8 802495F8 24A50008 */  addiu     $a1, $a1, 0x8
/* 1453BC 802495FC 014B1021 */  addu      $v0, $t2, $t3
/* 1453C0 80249600 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 1453C4 80249604 8FAB00B8 */  lw        $t3, 0xB8($sp)
/* 1453C8 80249608 2447FFFF */  addiu     $a3, $v0, -0x1
/* 1453CC 8024960C 014B1021 */  addu      $v0, $t2, $t3
/* 1453D0 80249610 2448FFFF */  addiu     $t0, $v0, -0x1
/* 1453D4 80249614 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* 1453D8 80249618 AD250000 */  sw        $a1, 0x0($t1)
/* 1453DC 8024961C AC620000 */  sw        $v0, 0x0($v1)
/* 1453E0 80249620 1C800002 */  bgtz      $a0, .LJP_8024962C
/* 1453E4 80249624 AC600004 */   sw       $zero, 0x4($v1)
/* 1453E8 80249628 24040001 */  addiu     $a0, $zero, 0x1
.LJP_8024962C:
/* 1453EC 8024962C 58C00001 */  blezl     $a2, .LJP_80249634
/* 1453F0 80249630 24060001 */   addiu    $a2, $zero, 0x1
.LJP_80249634:
/* 1453F4 80249634 18E00129 */  blez      $a3, .LJP_80249ADC
/* 1453F8 80249638 00000000 */   nop
/* 1453FC 8024963C 19000127 */  blez      $t0, .LJP_80249ADC
/* 145400 80249640 2882013F */   slti     $v0, $a0, 0x13F
/* 145404 80249644 10400125 */  beqz      $v0, .LJP_80249ADC
/* 145408 80249648 28C200EF */   slti     $v0, $a2, 0xEF
/* 14540C 8024964C 10400123 */  beqz      $v0, .LJP_80249ADC
/* 145410 80249650 28E2013F */   slti     $v0, $a3, 0x13F
/* 145414 80249654 50400001 */  beql      $v0, $zero, .LJP_8024965C
/* 145418 80249658 2407013F */   addiu    $a3, $zero, 0x13F
.LJP_8024965C:
/* 14541C 8024965C 290200EF */  slti      $v0, $t0, 0xEF
/* 145420 80249660 50400001 */  beql      $v0, $zero, .LJP_80249668
/* 145424 80249664 240800EF */   addiu    $t0, $zero, 0xEF
.LJP_80249668:
/* 145428 80249668 3C014080 */  lui       $at, (0x40800000 >> 16)
/* 14542C 8024966C 44812000 */  mtc1      $at, $f4
/* 145430 80249670 44840000 */  mtc1      $a0, $f0
/* 145434 80249674 00000000 */  nop
/* 145438 80249678 46800020 */  cvt.s.w   $f0, $f0
/* 14543C 8024967C 46040002 */  mul.s     $f0, $f0, $f4
/* 145440 80249680 00000000 */  nop
/* 145444 80249684 24A20008 */  addiu     $v0, $a1, 0x8
/* 145448 80249688 44861000 */  mtc1      $a2, $f2
/* 14544C 8024968C 00000000 */  nop
/* 145450 80249690 468010A0 */  cvt.s.w   $f2, $f2
/* 145454 80249694 3C04ED00 */  lui       $a0, (0xED000000 >> 16)
/* 145458 80249698 46041082 */  mul.s     $f2, $f2, $f4
/* 14545C 8024969C 00000000 */  nop
/* 145460 802496A0 AD220000 */  sw        $v0, 0x0($t1)
/* 145464 802496A4 4600018D */  trunc.w.s $f6, $f0
/* 145468 802496A8 44023000 */  mfc1      $v0, $f6
/* 14546C 802496AC 00000000 */  nop
/* 145470 802496B0 30420FFF */  andi      $v0, $v0, 0xFFF
/* 145474 802496B4 00021300 */  sll       $v0, $v0, 12
/* 145478 802496B8 4600118D */  trunc.w.s $f6, $f2
/* 14547C 802496BC 44033000 */  mfc1      $v1, $f6
/* 145480 802496C0 44871000 */  mtc1      $a3, $f2
/* 145484 802496C4 00000000 */  nop
/* 145488 802496C8 468010A0 */  cvt.s.w   $f2, $f2
/* 14548C 802496CC 46041082 */  mul.s     $f2, $f2, $f4
/* 145490 802496D0 00000000 */  nop
/* 145494 802496D4 30630FFF */  andi      $v1, $v1, 0xFFF
/* 145498 802496D8 00641825 */  or        $v1, $v1, $a0
/* 14549C 802496DC 00431025 */  or        $v0, $v0, $v1
/* 1454A0 802496E0 44880000 */  mtc1      $t0, $f0
/* 1454A4 802496E4 00000000 */  nop
/* 1454A8 802496E8 46800020 */  cvt.s.w   $f0, $f0
/* 1454AC 802496EC 46040002 */  mul.s     $f0, $f0, $f4
/* 1454B0 802496F0 00000000 */  nop
/* 1454B4 802496F4 ACA20000 */  sw        $v0, 0x0($a1)
/* 1454B8 802496F8 4600118D */  trunc.w.s $f6, $f2
/* 1454BC 802496FC 44023000 */  mfc1      $v0, $f6
/* 1454C0 80249700 00000000 */  nop
/* 1454C4 80249704 30420FFF */  andi      $v0, $v0, 0xFFF
/* 1454C8 80249708 00021300 */  sll       $v0, $v0, 12
/* 1454CC 8024970C 4600018D */  trunc.w.s $f6, $f0
/* 1454D0 80249710 44033000 */  mfc1      $v1, $f6
/* 1454D4 80249714 00000000 */  nop
/* 1454D8 80249718 30630FFF */  andi      $v1, $v1, 0xFFF
/* 1454DC 8024971C 00431025 */  or        $v0, $v0, $v1
/* 1454E0 80249720 3C038027 */  lui       $v1, %hi(gPauseMenuCurrentTab)
/* 1454E4 80249724 8063F7A4 */  lb        $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 1454E8 80249728 ACA20004 */  sw        $v0, 0x4($a1)
/* 1454EC 8024972C 24020003 */  addiu     $v0, $zero, 0x3
/* 1454F0 80249730 1462002A */  bne       $v1, $v0, .LJP_802497DC
/* 1454F4 80249734 24020001 */   addiu    $v0, $zero, 0x1
/* 1454F8 80249738 3C038027 */  lui       $v1, %hi(gPauseItemsLevel)
/* 1454FC 8024973C 8C63FCA0 */  lw        $v1, %lo(gPauseItemsLevel)($v1)
/* 145500 80249740 14620026 */  bne       $v1, $v0, .LJP_802497DC
/* 145504 80249744 00000000 */   nop
/* 145508 80249748 3C118027 */  lui       $s1, %hi(gPauseItemsCurrentPage)
/* 14550C 8024974C 2631FB88 */  addiu     $s1, $s1, %lo(gPauseItemsCurrentPage)
/* 145510 80249750 8E220000 */  lw        $v0, 0x0($s1)
/* 145514 80249754 1840000E */  blez      $v0, .LJP_80249790
/* 145518 80249758 24420001 */   addiu    $v0, $v0, 0x1
/* 14551C 8024975C 3C108027 */  lui       $s0, %hi(gPauseItemsIconIDs)
/* 145520 80249760 2610FCA8 */  addiu     $s0, $s0, %lo(gPauseItemsIconIDs)
/* 145524 80249764 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 145528 80249768 8E040040 */  lw        $a0, 0x40($s0)
/* 14552C 8024976C 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145530 80249770 25650116 */  addiu     $a1, $t3, 0x116
/* 145534 80249774 0C05268D */  jal       hud_element_set_render_pos
/* 145538 80249778 2546000E */   addiu    $a2, $t2, 0xE
/* 14553C 8024977C 8E040040 */  lw        $a0, 0x40($s0)
/* 145540 80249780 0C052624 */  jal       hud_element_draw_without_clipping
/* 145544 80249784 00000000 */   nop
/* 145548 80249788 8E220000 */  lw        $v0, 0x0($s1)
/* 14554C 8024978C 24420001 */  addiu     $v0, $v0, 0x1
.LJP_80249790:
/* 145550 80249790 00021840 */  sll       $v1, $v0, 1
/* 145554 80249794 00621821 */  addu      $v1, $v1, $v0
/* 145558 80249798 00031880 */  sll       $v1, $v1, 2
/* 14555C 8024979C 3C028027 */  lui       $v0, %hi(gPauseItemsPages)
/* 145560 802497A0 00431021 */  addu      $v0, $v0, $v1
/* 145564 802497A4 9042FB90 */  lbu       $v0, %lo(gPauseItemsPages)($v0)
/* 145568 802497A8 1040000C */  beqz      $v0, .LJP_802497DC
/* 14556C 802497AC 00000000 */   nop
/* 145570 802497B0 3C108027 */  lui       $s0, %hi(gPauseItemsIconIDs)
/* 145574 802497B4 2610FCA8 */  addiu     $s0, $s0, %lo(gPauseItemsIconIDs)
/* 145578 802497B8 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 14557C 802497BC 8E040044 */  lw        $a0, 0x44($s0)
/* 145580 802497C0 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145584 802497C4 25650116 */  addiu     $a1, $t3, 0x116
/* 145588 802497C8 0C05268D */  jal       hud_element_set_render_pos
/* 14558C 802497CC 25460092 */   addiu    $a2, $t2, 0x92
/* 145590 802497D0 8E040044 */  lw        $a0, 0x44($s0)
/* 145594 802497D4 0C052624 */  jal       hud_element_draw_without_clipping
/* 145598 802497D8 00000000 */   nop
.LJP_802497DC:
/* 14559C 802497DC 3C038027 */  lui       $v1, %hi(gPauseItemsCurrentTab)
/* 1455A0 802497E0 8C63FCA4 */  lw        $v1, %lo(gPauseItemsCurrentTab)($v1)
/* 1455A4 802497E4 8FA600AC */  lw        $a2, 0xAC($sp)
/* 1455A8 802497E8 50600001 */  beql      $v1, $zero, .LJP_802497F0
/* 1455AC 802497EC 24C60009 */   addiu    $a2, $a2, 0x9
.LJP_802497F0:
/* 1455B0 802497F0 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 1455B4 802497F4 24020047 */  addiu     $v0, $zero, 0x47
/* 1455B8 802497F8 AFA20014 */  sw        $v0, 0x14($sp)
/* 1455BC 802497FC 24020022 */  addiu     $v0, $zero, 0x22
/* 1455C0 80249800 AFA20018 */  sw        $v0, 0x18($sp)
/* 1455C4 80249804 240200FF */  addiu     $v0, $zero, 0xFF
/* 1455C8 80249808 AFA2001C */  sw        $v0, 0x1C($sp)
/* 1455CC 8024980C 24020001 */  addiu     $v0, $zero, 0x1
/* 1455D0 80249810 AFA00010 */  sw        $zero, 0x10($sp)
/* 1455D4 80249814 14620004 */  bne       $v1, $v0, .LJP_80249828
/* 1455D8 80249818 25670007 */   addiu    $a3, $t3, 0x7
/* 1455DC 8024981C 24020080 */  addiu     $v0, $zero, 0x80
/* 1455E0 80249820 0809260B */  j         .LJP_8024982C
/* 1455E4 80249824 AFA20020 */   sw       $v0, 0x20($sp)
.LJP_80249828:
/* 1455E8 80249828 AFA00020 */  sw        $zero, 0x20($sp)
.LJP_8024982C:
/* 1455EC 8024982C 24040004 */  addiu     $a0, $zero, 0x4
/* 1455F0 80249830 3C058027 */  lui       $a1, %hi(gPauseWS_17)
/* 1455F4 80249834 24A5F388 */  addiu     $a1, $a1, %lo(gPauseWS_17)
/* 1455F8 80249838 24020140 */  addiu     $v0, $zero, 0x140
/* 1455FC 8024983C AFA20044 */  sw        $v0, 0x44($sp)
/* 145600 80249840 240200F0 */  addiu     $v0, $zero, 0xF0
/* 145604 80249844 AFA00024 */  sw        $zero, 0x24($sp)
/* 145608 80249848 AFA00028 */  sw        $zero, 0x28($sp)
/* 14560C 8024984C AFA0002C */  sw        $zero, 0x2C($sp)
/* 145610 80249850 AFA00030 */  sw        $zero, 0x30($sp)
/* 145614 80249854 AFA00034 */  sw        $zero, 0x34($sp)
/* 145618 80249858 AFA00038 */  sw        $zero, 0x38($sp)
/* 14561C 8024985C AFA0003C */  sw        $zero, 0x3C($sp)
/* 145620 80249860 AFA00040 */  sw        $zero, 0x40($sp)
/* 145624 80249864 AFA20048 */  sw        $v0, 0x48($sp)
/* 145628 80249868 0C03D51C */  jal       draw_box
/* 14562C 8024986C AFA0004C */   sw       $zero, 0x4C($sp)
/* 145630 80249870 0C09396C */  jal       pause_get_menu_msg
/* 145634 80249874 2404004E */   addiu    $a0, $zero, 0x4E
/* 145638 80249878 3C118027 */  lui       $s1, %hi(gPauseItemsCurrentTab)
/* 14563C 8024987C 2631FCA4 */  addiu     $s1, $s1, %lo(gPauseItemsCurrentTab)
/* 145640 80249880 8FAA00AC */  lw        $t2, 0xAC($sp)
/* 145644 80249884 8E230000 */  lw        $v1, 0x0($s1)
/* 145648 80249888 14600002 */  bnez      $v1, .LJP_80249894
/* 14564C 8024988C 25450009 */   addiu    $a1, $t2, 0x9
/* 145650 80249890 25450012 */  addiu     $a1, $t2, 0x12
.LJP_80249894:
/* 145654 80249894 240700FF */  addiu     $a3, $zero, 0xFF
/* 145658 80249898 8FAB00B0 */  lw        $t3, 0xB0($sp)
/* 14565C 8024989C 24100001 */  addiu     $s0, $zero, 0x1
/* 145660 802498A0 14700002 */  bne       $v1, $s0, .LJP_802498AC
/* 145664 802498A4 25660011 */   addiu    $a2, $t3, 0x11
/* 145668 802498A8 240700BF */  addiu     $a3, $zero, 0xBF
.LJP_802498AC:
/* 14566C 802498AC 0040202D */  daddu     $a0, $v0, $zero
/* 145670 802498B0 AFA00010 */  sw        $zero, 0x10($sp)
/* 145674 802498B4 0C04ADC4 */  jal       draw_msg
/* 145678 802498B8 AFB00014 */   sw       $s0, 0x14($sp)
/* 14567C 802498BC 8E230000 */  lw        $v1, 0x0($s1)
/* 145680 802498C0 8FA600AC */  lw        $a2, 0xAC($sp)
/* 145684 802498C4 50700001 */  beql      $v1, $s0, .LJP_802498CC
/* 145688 802498C8 24C60009 */   addiu    $a2, $a2, 0x9
.LJP_802498CC:
/* 14568C 802498CC 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145690 802498D0 24020047 */  addiu     $v0, $zero, 0x47
/* 145694 802498D4 AFA20014 */  sw        $v0, 0x14($sp)
/* 145698 802498D8 24020022 */  addiu     $v0, $zero, 0x22
/* 14569C 802498DC AFA20018 */  sw        $v0, 0x18($sp)
/* 1456A0 802498E0 240200FF */  addiu     $v0, $zero, 0xFF
/* 1456A4 802498E4 AFA00010 */  sw        $zero, 0x10($sp)
/* 1456A8 802498E8 AFA2001C */  sw        $v0, 0x1C($sp)
/* 1456AC 802498EC 14600004 */  bnez      $v1, .LJP_80249900
/* 1456B0 802498F0 25470027 */   addiu    $a3, $t2, 0x27
/* 1456B4 802498F4 24020080 */  addiu     $v0, $zero, 0x80
/* 1456B8 802498F8 08092641 */  j         .LJP_80249904
/* 1456BC 802498FC AFA20020 */   sw       $v0, 0x20($sp)
.LJP_80249900:
/* 1456C0 80249900 AFA00020 */  sw        $zero, 0x20($sp)
.LJP_80249904:
/* 1456C4 80249904 24040004 */  addiu     $a0, $zero, 0x4
/* 1456C8 80249908 3C058027 */  lui       $a1, %hi(gPauseWS_17)
/* 1456CC 8024990C 24A5F388 */  addiu     $a1, $a1, %lo(gPauseWS_17)
/* 1456D0 80249910 24020140 */  addiu     $v0, $zero, 0x140
/* 1456D4 80249914 AFA20044 */  sw        $v0, 0x44($sp)
/* 1456D8 80249918 240200F0 */  addiu     $v0, $zero, 0xF0
/* 1456DC 8024991C AFA00024 */  sw        $zero, 0x24($sp)
/* 1456E0 80249920 AFA00028 */  sw        $zero, 0x28($sp)
/* 1456E4 80249924 AFA0002C */  sw        $zero, 0x2C($sp)
/* 1456E8 80249928 AFA00030 */  sw        $zero, 0x30($sp)
/* 1456EC 8024992C AFA00034 */  sw        $zero, 0x34($sp)
/* 1456F0 80249930 AFA00038 */  sw        $zero, 0x38($sp)
/* 1456F4 80249934 AFA0003C */  sw        $zero, 0x3C($sp)
/* 1456F8 80249938 AFA00040 */  sw        $zero, 0x40($sp)
/* 1456FC 8024993C AFA20048 */  sw        $v0, 0x48($sp)
/* 145700 80249940 0C03D51C */  jal       draw_box
/* 145704 80249944 AFA0004C */   sw       $zero, 0x4C($sp)
/* 145708 80249948 0C09396C */  jal       pause_get_menu_msg
/* 14570C 8024994C 2404004F */   addiu    $a0, $zero, 0x4F
/* 145710 80249950 3C108027 */  lui       $s0, %hi(gPauseItemsCurrentTab)
/* 145714 80249954 2610FCA4 */  addiu     $s0, $s0, %lo(gPauseItemsCurrentTab)
/* 145718 80249958 24080001 */  addiu     $t0, $zero, 0x1
/* 14571C 8024995C 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 145720 80249960 8E030000 */  lw        $v1, 0x0($s0)
/* 145724 80249964 14680002 */  bne       $v1, $t0, .LJP_80249970
/* 145728 80249968 25650012 */   addiu    $a1, $t3, 0x12
/* 14572C 8024996C 2565001B */  addiu     $a1, $t3, 0x1B
.LJP_80249970:
/* 145730 80249970 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145734 80249974 240700FF */  addiu     $a3, $zero, 0xFF
/* 145738 80249978 14600002 */  bnez      $v1, .LJP_80249984
/* 14573C 8024997C 25460031 */   addiu    $a2, $t2, 0x31
/* 145740 80249980 240700BF */  addiu     $a3, $zero, 0xBF
.LJP_80249984:
/* 145744 80249984 0040202D */  daddu     $a0, $v0, $zero
/* 145748 80249988 AFA00010 */  sw        $zero, 0x10($sp)
/* 14574C 8024998C 0C04ADC4 */  jal       draw_msg
/* 145750 80249990 AFA80014 */   sw       $t0, 0x14($sp)
/* 145754 80249994 3C038027 */  lui       $v1, %hi(gPauseMenuCurrentTab)
/* 145758 80249998 8063F7A4 */  lb        $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 14575C 8024999C 24020003 */  addiu     $v0, $zero, 0x3
/* 145760 802499A0 1462004E */  bne       $v1, $v0, .LJP_80249ADC
/* 145764 802499A4 00000000 */   nop
/* 145768 802499A8 3C028027 */  lui       $v0, %hi(gPauseItemsLevel)
/* 14576C 802499AC 8C42FCA0 */  lw        $v0, %lo(gPauseItemsLevel)($v0)
/* 145770 802499B0 14400008 */  bnez      $v0, .LJP_802499D4
/* 145774 802499B4 24040021 */   addiu    $a0, $zero, 0x21
/* 145778 802499B8 8E060000 */  lw        $a2, 0x0($s0)
/* 14577C 802499BC 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 145780 802499C0 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145784 802499C4 2565000C */  addiu     $a1, $t3, 0xC
/* 145788 802499C8 00063140 */  sll       $a2, $a2, 5
/* 14578C 802499CC 080926B5 */  j         .LJP_80249AD4
/* 145790 802499D0 24C6001A */   addiu    $a2, $a2, 0x1A
.LJP_802499D4:
/* 145794 802499D4 3C118027 */  lui       $s1, %hi(gPauseItemsCurrentPage)
/* 145798 802499D8 2631FB88 */  addiu     $s1, $s1, %lo(gPauseItemsCurrentPage)
/* 14579C 802499DC 8E240000 */  lw        $a0, 0x0($s1)
/* 1457A0 802499E0 3C128027 */  lui       $s2, %hi(gPauseItemsPages)
/* 1457A4 802499E4 2652FB90 */  addiu     $s2, $s2, %lo(gPauseItemsPages)
/* 1457A8 802499E8 00041040 */  sll       $v0, $a0, 1
/* 1457AC 802499EC 00441021 */  addu      $v0, $v0, $a0
/* 1457B0 802499F0 00021080 */  sll       $v0, $v0, 2
/* 1457B4 802499F4 00521021 */  addu      $v0, $v0, $s2
/* 1457B8 802499F8 90430001 */  lbu       $v1, 0x1($v0)
/* 1457BC 802499FC 90420002 */  lbu       $v0, 0x2($v0)
/* 1457C0 80249A00 00620018 */  mult      $v1, $v0
/* 1457C4 80249A04 3C108027 */  lui       $s0, %hi(gPauseItemsSelectedIndex)
/* 1457C8 80249A08 2610FC80 */  addiu     $s0, $s0, %lo(gPauseItemsSelectedIndex)
/* 1457CC 80249A0C 8E050000 */  lw        $a1, 0x0($s0)
/* 1457D0 80249A10 00005012 */  mflo      $t2
/* 1457D4 80249A14 0C09237C */  jal       pause_items_get_pos_x
/* 1457D8 80249A18 00AA2823 */   subu     $a1, $a1, $t2
/* 1457DC 80249A1C 8E240000 */  lw        $a0, 0x0($s1)
/* 1457E0 80249A20 00041840 */  sll       $v1, $a0, 1
/* 1457E4 80249A24 00641821 */  addu      $v1, $v1, $a0
/* 1457E8 80249A28 00031880 */  sll       $v1, $v1, 2
/* 1457EC 80249A2C 00721821 */  addu      $v1, $v1, $s2
/* 1457F0 80249A30 90650001 */  lbu       $a1, 0x1($v1)
/* 1457F4 80249A34 90630002 */  lbu       $v1, 0x2($v1)
/* 1457F8 80249A38 00A30018 */  mult      $a1, $v1
/* 1457FC 80249A3C 8E050000 */  lw        $a1, 0x0($s0)
/* 145800 80249A40 0040802D */  daddu     $s0, $v0, $zero
/* 145804 80249A44 00005012 */  mflo      $t2
/* 145808 80249A48 0C092392 */  jal       pause_items_get_pos_y
/* 14580C 80249A4C 00AA2823 */   subu     $a1, $a1, $t2
/* 145810 80249A50 0200202D */  daddu     $a0, $s0, $zero
/* 145814 80249A54 0C0923E6 */  jal       pause_items_scroll_offset_x
/* 145818 80249A58 0040802D */   daddu    $s0, $v0, $zero
/* 14581C 80249A5C 0200202D */  daddu     $a0, $s0, $zero
/* 145820 80249A60 0C0923E2 */  jal       pause_items_scroll_offset_y
/* 145824 80249A64 0040802D */   daddu    $s0, $v0, $zero
/* 145828 80249A68 0040302D */  daddu     $a2, $v0, $zero
/* 14582C 80249A6C 04C10003 */  bgez      $a2, .LJP_80249A7C
/* 145830 80249A70 28C20061 */   slti     $v0, $a2, 0x61
/* 145834 80249A74 080926A1 */  j         .LJP_80249A84
/* 145838 80249A78 0000302D */   daddu    $a2, $zero, $zero
.LJP_80249A7C:
/* 14583C 80249A7C 50400001 */  beql      $v0, $zero, .LJP_80249A84
/* 145840 80249A80 24060060 */   addiu    $a2, $zero, 0x60
.LJP_80249A84:
/* 145844 80249A84 3C038027 */  lui       $v1, %hi(gPauseItemsCurrentScrollPos)
/* 145848 80249A88 8C63FC94 */  lw        $v1, %lo(gPauseItemsCurrentScrollPos)($v1)
/* 14584C 80249A8C 3C028027 */  lui       $v0, %hi(gPauseItemsTargetScrollPos)
/* 145850 80249A90 8C42FC98 */  lw        $v0, %lo(gPauseItemsTargetScrollPos)($v0)
/* 145854 80249A94 1062000A */  beq       $v1, $v0, .LJP_80249AC0
/* 145858 80249A98 24040021 */   addiu    $a0, $zero, 0x21
/* 14585C 80249A9C 2605004D */  addiu     $a1, $s0, 0x4D
/* 145860 80249AA0 24C6001D */  addiu     $a2, $a2, 0x1D
/* 145864 80249AA4 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 145868 80249AA8 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 14586C 80249AAC 01652821 */  addu      $a1, $t3, $a1
/* 145870 80249AB0 0C0908DF */  jal       pause_set_cursor_pos_immediate
/* 145874 80249AB4 01463021 */   addu     $a2, $t2, $a2
/* 145878 80249AB8 080926B7 */  j         .LJP_80249ADC
/* 14587C 80249ABC 00000000 */   nop
.LJP_80249AC0:
/* 145880 80249AC0 2605004D */  addiu     $a1, $s0, 0x4D
/* 145884 80249AC4 24C6001D */  addiu     $a2, $a2, 0x1D
/* 145888 80249AC8 8FAB00AC */  lw        $t3, 0xAC($sp)
/* 14588C 80249ACC 8FAA00B0 */  lw        $t2, 0xB0($sp)
/* 145890 80249AD0 01652821 */  addu      $a1, $t3, $a1
.LJP_80249AD4:
/* 145894 80249AD4 0C090935 */  jal       pause_set_cursor_pos
/* 145898 80249AD8 01463021 */   addu     $a2, $t2, $a2
.LJP_80249ADC:
/* 14589C 80249ADC 8FBF00A4 */  lw        $ra, 0xA4($sp)
/* 1458A0 80249AE0 8FBE00A0 */  lw        $fp, 0xA0($sp)
/* 1458A4 80249AE4 8FB7009C */  lw        $s7, 0x9C($sp)
/* 1458A8 80249AE8 8FB60098 */  lw        $s6, 0x98($sp)
/* 1458AC 80249AEC 8FB50094 */  lw        $s5, 0x94($sp)
/* 1458B0 80249AF0 8FB40090 */  lw        $s4, 0x90($sp)
/* 1458B4 80249AF4 8FB3008C */  lw        $s3, 0x8C($sp)
/* 1458B8 80249AF8 8FB20088 */  lw        $s2, 0x88($sp)
/* 1458BC 80249AFC 8FB10084 */  lw        $s1, 0x84($sp)
/* 1458C0 80249B00 8FB00080 */  lw        $s0, 0x80($sp)
/* 1458C4 80249B04 03E00008 */  jr        $ra
/* 1458C8 80249B08 27BD00A8 */   addiu    $sp, $sp, 0xA8
.size pause_items_draw_contents, . - pause_items_draw_contents
