.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pause_items_load_items
/* 1458CC 80249B0C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1458D0 80249B10 AFB00010 */  sw        $s0, 0x10($sp)
/* 1458D4 80249B14 3C038011 */  lui       $v1, %hi(gPlayerData)
/* 1458D8 80249B18 2463F450 */  addiu     $v1, $v1, %lo(gPlayerData)
/* 1458DC 80249B1C 24020001 */  addiu     $v0, $zero, 0x1
/* 1458E0 80249B20 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1458E4 80249B24 3C018027 */  lui       $at, %hi(D_802705D0)
/* 1458E8 80249B28 AC20FC90 */  sw        $zero, %lo(D_802705D0)($at)
/* 1458EC 80249B2C 14820011 */  bne       $a0, $v0, .LJP_80249B74
/* 1458F0 80249B30 0000802D */   daddu    $s0, $zero, $zero
/* 1458F4 80249B34 0200282D */  daddu     $a1, $s0, $zero
/* 1458F8 80249B38 0060302D */  daddu     $a2, $v1, $zero
/* 1458FC 80249B3C 3C048027 */  lui       $a0, %hi(gPauseItemsItemIDs)
/* 145900 80249B40 2484FAC0 */  addiu     $a0, $a0, %lo(gPauseItemsItemIDs)
.LJP_80249B44:
/* 145904 80249B44 84C201B4 */  lh        $v0, 0x1B4($a2)
/* 145908 80249B48 94C301B4 */  lhu       $v1, 0x1B4($a2)
/* 14590C 80249B4C 10400004 */  beqz      $v0, .LJP_80249B60
/* 145910 80249B50 24A50001 */   addiu    $a1, $a1, 0x1
/* 145914 80249B54 A4830000 */  sh        $v1, 0x0($a0)
/* 145918 80249B58 24840002 */  addiu     $a0, $a0, 0x2
/* 14591C 80249B5C 26100001 */  addiu     $s0, $s0, 0x1
.LJP_80249B60:
/* 145920 80249B60 28A2000A */  slti      $v0, $a1, 0xA
/* 145924 80249B64 1440FFF7 */  bnez      $v0, .LJP_80249B44
/* 145928 80249B68 24C60002 */   addiu    $a2, $a2, 0x2
/* 14592C 80249B6C 080926EB */  j         .LJP_80249BAC
/* 145930 80249B70 00000000 */   nop
.LJP_80249B74:
/* 145934 80249B74 0000282D */  daddu     $a1, $zero, $zero
/* 145938 80249B78 0060302D */  daddu     $a2, $v1, $zero
/* 14593C 80249B7C 3C048027 */  lui       $a0, %hi(gPauseItemsItemIDs)
/* 145940 80249B80 2484FAC0 */  addiu     $a0, $a0, %lo(gPauseItemsItemIDs)
.LJP_80249B84:
/* 145944 80249B84 84C20074 */  lh        $v0, 0x74($a2)
/* 145948 80249B88 94C30074 */  lhu       $v1, 0x74($a2)
/* 14594C 80249B8C 10400004 */  beqz      $v0, .LJP_80249BA0
/* 145950 80249B90 24A50001 */   addiu    $a1, $a1, 0x1
/* 145954 80249B94 A4830000 */  sh        $v1, 0x0($a0)
/* 145958 80249B98 24840002 */  addiu     $a0, $a0, 0x2
/* 14595C 80249B9C 26100001 */  addiu     $s0, $s0, 0x1
.LJP_80249BA0:
/* 145960 80249BA0 28A20020 */  slti      $v0, $a1, 0x20
/* 145964 80249BA4 1440FFF7 */  bnez      $v0, .LJP_80249B84
/* 145968 80249BA8 24C60002 */   addiu    $a2, $a2, 0x2
.LJP_80249BAC:
/* 14596C 80249BAC 16000005 */  bnez      $s0, .LJP_80249BC4
/* 145970 80249BB0 24027FFE */   addiu    $v0, $zero, 0x7FFE
/* 145974 80249BB4 3C018027 */  lui       $at, %hi(gPauseItemsItemIDs)
/* 145978 80249BB8 A422FAC0 */  sh        $v0, %lo(gPauseItemsItemIDs)($at)
/* 14597C 80249BBC 080926F7 */  j         .LJP_80249BDC
/* 145980 80249BC0 24100001 */   addiu    $s0, $zero, 0x1
.LJP_80249BC4:
/* 145984 80249BC4 3C048027 */  lui       $a0, %hi(gPauseItemsItemIDs)
/* 145988 80249BC8 2484FAC0 */  addiu     $a0, $a0, %lo(gPauseItemsItemIDs)
/* 14598C 80249BCC 3C068025 */  lui       $a2, %hi(pause_items_comparator)
/* 145990 80249BD0 24C68DD0 */  addiu     $a2, $a2, %lo(pause_items_comparator)
/* 145994 80249BD4 0C091082 */  jal       pause_sort_item_list
/* 145998 80249BD8 0200282D */   daddu    $a1, $s0, $zero
.LJP_80249BDC:
/* 14599C 80249BDC 32020001 */  andi      $v0, $s0, 0x1
/* 1459A0 80249BE0 10400012 */  beqz      $v0, .LJP_80249C2C
/* 1459A4 80249BE4 001017C2 */   srl      $v0, $s0, 31
/* 1459A8 80249BE8 02021021 */  addu      $v0, $s0, $v0
/* 1459AC 80249BEC 00022043 */  sra       $a0, $v0, 1
/* 1459B0 80249BF0 00041040 */  sll       $v0, $a0, 1
/* 1459B4 80249BF4 02022023 */  subu      $a0, $s0, $v0
/* 1459B8 80249BF8 1880000C */  blez      $a0, .LJP_80249C2C
/* 1459BC 80249BFC 0000282D */   daddu    $a1, $zero, $zero
/* 1459C0 80249C00 24067FFF */  addiu     $a2, $zero, 0x7FFF
/* 1459C4 80249C04 3C038027 */  lui       $v1, %hi(gPauseItemsItemIDs)
/* 1459C8 80249C08 2463FAC0 */  addiu     $v1, $v1, %lo(gPauseItemsItemIDs)
/* 1459CC 80249C0C 00101040 */  sll       $v0, $s0, 1
/* 1459D0 80249C10 00431821 */  addu      $v1, $v0, $v1
.LJP_80249C14:
/* 1459D4 80249C14 A4660000 */  sh        $a2, 0x0($v1)
/* 1459D8 80249C18 24630002 */  addiu     $v1, $v1, 0x2
/* 1459DC 80249C1C 24A50001 */  addiu     $a1, $a1, 0x1
/* 1459E0 80249C20 00A4102A */  slt       $v0, $a1, $a0
/* 1459E4 80249C24 1440FFFB */  bnez      $v0, .LJP_80249C14
/* 1459E8 80249C28 26100001 */   addiu    $s0, $s0, 0x1
.LJP_80249C2C:
/* 1459EC 80249C2C 3C018027 */  lui       $at, %hi(gPauseItemsNumItems)
/* 1459F0 80249C30 A430FC8C */  sh        $s0, %lo(gPauseItemsNumItems)($at)
/* 1459F4 80249C34 0200282D */  daddu     $a1, $s0, $zero
/* 1459F8 80249C38 28A20064 */  slti      $v0, $a1, 0x64
/* 1459FC 80249C3C 1040000A */  beqz      $v0, .LJP_80249C68
/* 145A00 80249C40 24047FFF */   addiu    $a0, $zero, 0x7FFF
/* 145A04 80249C44 3C038027 */  lui       $v1, %hi(gPauseItemsItemIDs)
/* 145A08 80249C48 2463FAC0 */  addiu     $v1, $v1, %lo(gPauseItemsItemIDs)
/* 145A0C 80249C4C 00051040 */  sll       $v0, $a1, 1
/* 145A10 80249C50 00431821 */  addu      $v1, $v0, $v1
.LJP_80249C54:
/* 145A14 80249C54 A4640000 */  sh        $a0, 0x0($v1)
/* 145A18 80249C58 24A50001 */  addiu     $a1, $a1, 0x1
/* 145A1C 80249C5C 28A20064 */  slti      $v0, $a1, 0x64
/* 145A20 80249C60 1440FFFC */  bnez      $v0, .LJP_80249C54
/* 145A24 80249C64 24630002 */   addiu    $v1, $v1, 0x2
.LJP_80249C68:
/* 145A28 80249C68 3C068027 */  lui       $a2, %hi(gPauseItemsPages)
/* 145A2C 80249C6C 24C6FB90 */  addiu     $a2, $a2, %lo(gPauseItemsPages)
/* 145A30 80249C70 3C046666 */  lui       $a0, (0x66666667 >> 16)
/* 145A34 80249C74 34846667 */  ori       $a0, $a0, (0x66666667 & 0xFFFF)
/* 145A38 80249C78 3C0A8027 */  lui       $t2, %hi(gPauseItemsNumItems)
/* 145A3C 80249C7C 254AFC8C */  addiu     $t2, $t2, %lo(gPauseItemsNumItems)
/* 145A40 80249C80 95430000 */  lhu       $v1, 0x0($t2)
/* 145A44 80249C84 3C018027 */  lui       $at, %hi(gPauseItemsSelectedIndex)
/* 145A48 80249C88 AC20FC80 */  sw        $zero, %lo(gPauseItemsSelectedIndex)($at)
/* 145A4C 80249C8C 3C018027 */  lui       $at, %hi(gPauseItemsSelectedItem)
/* 145A50 80249C90 AC20FC88 */  sw        $zero, %lo(gPauseItemsSelectedItem)($at)
/* 145A54 80249C94 00031C00 */  sll       $v1, $v1, 16
/* 145A58 80249C98 00031403 */  sra       $v0, $v1, 16
/* 145A5C 80249C9C 00440018 */  mult      $v0, $a0
/* 145A60 80249CA0 3C018027 */  lui       $at, %hi(D_802705C4)
/* 145A64 80249CA4 AC20FC84 */  sw        $zero, %lo(D_802705C4)($at)
/* 145A68 80249CA8 3C018027 */  lui       $at, %hi(gPauseItemsTargetScrollIndex)
/* 145A6C 80249CAC AC20FC9C */  sw        $zero, %lo(gPauseItemsTargetScrollIndex)($at)
/* 145A70 80249CB0 3C018027 */  lui       $at, %hi(gPauseItemsCurrentPage)
/* 145A74 80249CB4 AC20FB88 */  sw        $zero, %lo(gPauseItemsCurrentPage)($at)
/* 145A78 80249CB8 00031FC3 */  sra       $v1, $v1, 31
/* 145A7C 80249CBC 00007810 */  mfhi      $t7
/* 145A80 80249CC0 000F1083 */  sra       $v0, $t7, 2
/* 145A84 80249CC4 00431023 */  subu      $v0, $v0, $v1
/* 145A88 80249CC8 00021400 */  sll       $v0, $v0, 16
/* 145A8C 80249CCC 18400021 */  blez      $v0, .LJP_80249D54
/* 145A90 80249CD0 0000282D */   daddu    $a1, $zero, $zero
/* 145A94 80249CD4 240E0002 */  addiu     $t6, $zero, 0x2
/* 145A98 80249CD8 240D0005 */  addiu     $t5, $zero, 0x5
/* 145A9C 80249CDC 240C0001 */  addiu     $t4, $zero, 0x1
/* 145AA0 80249CE0 240B000A */  addiu     $t3, $zero, 0xA
/* 145AA4 80249CE4 3C096666 */  lui       $t1, (0x66666667 >> 16)
/* 145AA8 80249CE8 35296667 */  ori       $t1, $t1, (0x66666667 & 0xFFFF)
/* 145AAC 80249CEC 24C40008 */  addiu     $a0, $a2, 0x8
/* 145AB0 80249CF0 00A0402D */  daddu     $t0, $a1, $zero
/* 145AB4 80249CF4 00A0382D */  daddu     $a3, $a1, $zero
.LJP_80249CF8:
/* 145AB8 80249CF8 A087FFF9 */  sb        $a3, -0x7($a0)
/* 145ABC 80249CFC A08EFFFA */  sb        $t6, -0x6($a0)
/* 145AC0 80249D00 A08DFFFB */  sb        $t5, -0x5($a0)
/* 145AC4 80249D04 A0CC0000 */  sb        $t4, 0x0($a2)
/* 145AC8 80249D08 AC88FFFC */  sw        $t0, -0x4($a0)
/* 145ACC 80249D0C 2508000A */  addiu     $t0, $t0, 0xA
/* 145AD0 80249D10 24E70005 */  addiu     $a3, $a3, 0x5
/* 145AD4 80249D14 95430000 */  lhu       $v1, 0x0($t2)
/* 145AD8 80249D18 24A50001 */  addiu     $a1, $a1, 0x1
/* 145ADC 80249D1C 00031C00 */  sll       $v1, $v1, 16
/* 145AE0 80249D20 00031403 */  sra       $v0, $v1, 16
/* 145AE4 80249D24 00490018 */  mult      $v0, $t1
/* 145AE8 80249D28 AC8B0000 */  sw        $t3, 0x0($a0)
/* 145AEC 80249D2C 2484000C */  addiu     $a0, $a0, 0xC
/* 145AF0 80249D30 00031FC3 */  sra       $v1, $v1, 31
/* 145AF4 80249D34 00007810 */  mfhi      $t7
/* 145AF8 80249D38 000F1083 */  sra       $v0, $t7, 2
/* 145AFC 80249D3C 00431023 */  subu      $v0, $v0, $v1
/* 145B00 80249D40 00021400 */  sll       $v0, $v0, 16
/* 145B04 80249D44 00021403 */  sra       $v0, $v0, 16
/* 145B08 80249D48 00A2102A */  slt       $v0, $a1, $v0
/* 145B0C 80249D4C 1440FFEA */  bnez      $v0, .LJP_80249CF8
/* 145B10 80249D50 24C6000C */   addiu    $a2, $a2, 0xC
.LJP_80249D54:
/* 145B14 80249D54 3C076666 */  lui       $a3, (0x66666667 >> 16)
/* 145B18 80249D58 3C088027 */  lui       $t0, %hi(gPauseItemsNumItems)
/* 145B1C 80249D5C 2508FC8C */  addiu     $t0, $t0, %lo(gPauseItemsNumItems)
/* 145B20 80249D60 95020000 */  lhu       $v0, 0x0($t0)
/* 145B24 80249D64 34E76667 */  ori       $a3, $a3, (0x66666667 & 0xFFFF)
/* 145B28 80249D68 00021400 */  sll       $v0, $v0, 16
/* 145B2C 80249D6C 00022403 */  sra       $a0, $v0, 16
/* 145B30 80249D70 00870018 */  mult      $a0, $a3
/* 145B34 80249D74 000217C3 */  sra       $v0, $v0, 31
/* 145B38 80249D78 00007810 */  mfhi      $t7
/* 145B3C 80249D7C 000F1883 */  sra       $v1, $t7, 2
/* 145B40 80249D80 00621823 */  subu      $v1, $v1, $v0
/* 145B44 80249D84 00031080 */  sll       $v0, $v1, 2
/* 145B48 80249D88 00431021 */  addu      $v0, $v0, $v1
/* 145B4C 80249D8C 00021040 */  sll       $v0, $v0, 1
/* 145B50 80249D90 00822023 */  subu      $a0, $a0, $v0
/* 145B54 80249D94 00042400 */  sll       $a0, $a0, 16
/* 145B58 80249D98 10800020 */  beqz      $a0, .LJP_80249E1C
/* 145B5C 80249D9C 00051880 */   sll      $v1, $a1, 2
/* 145B60 80249DA0 00651821 */  addu      $v1, $v1, $a1
/* 145B64 80249DA4 24020002 */  addiu     $v0, $zero, 0x2
/* 145B68 80249DA8 A0C20002 */  sb        $v0, 0x2($a2)
/* 145B6C 80249DAC 24020001 */  addiu     $v0, $zero, 0x1
/* 145B70 80249DB0 A0C30001 */  sb        $v1, 0x1($a2)
/* 145B74 80249DB4 A0C20000 */  sb        $v0, 0x0($a2)
/* 145B78 80249DB8 95020000 */  lhu       $v0, 0x0($t0)
/* 145B7C 80249DBC 00021400 */  sll       $v0, $v0, 16
/* 145B80 80249DC0 00022403 */  sra       $a0, $v0, 16
/* 145B84 80249DC4 00870018 */  mult      $a0, $a3
/* 145B88 80249DC8 24A50001 */  addiu     $a1, $a1, 0x1
/* 145B8C 80249DCC 00031840 */  sll       $v1, $v1, 1
/* 145B90 80249DD0 ACC30004 */  sw        $v1, 0x4($a2)
/* 145B94 80249DD4 000217C3 */  sra       $v0, $v0, 31
/* 145B98 80249DD8 00007810 */  mfhi      $t7
/* 145B9C 80249DDC 000F1883 */  sra       $v1, $t7, 2
/* 145BA0 80249DE0 00621823 */  subu      $v1, $v1, $v0
/* 145BA4 80249DE4 00031080 */  sll       $v0, $v1, 2
/* 145BA8 80249DE8 00431021 */  addu      $v0, $v0, $v1
/* 145BAC 80249DEC 00021040 */  sll       $v0, $v0, 1
/* 145BB0 80249DF0 00822023 */  subu      $a0, $a0, $v0
/* 145BB4 80249DF4 00042400 */  sll       $a0, $a0, 16
/* 145BB8 80249DF8 00041403 */  sra       $v0, $a0, 16
/* 145BBC 80249DFC 000427C2 */  srl       $a0, $a0, 31
/* 145BC0 80249E00 ACC20008 */  sw        $v0, 0x8($a2)
/* 145BC4 80249E04 00441021 */  addu      $v0, $v0, $a0
/* 145BC8 80249E08 00021043 */  sra       $v0, $v0, 1
/* 145BCC 80249E0C 08092786 */  j         .LJP_80249E18
/* 145BD0 80249E10 A0C20003 */   sb       $v0, 0x3($a2)
.LJP_80249E14:
/* 145BD4 80249E14 24A50001 */  addiu     $a1, $a1, 0x1
.LJP_80249E18:
/* 145BD8 80249E18 24C6000C */  addiu     $a2, $a2, 0xC
.LJP_80249E1C:
/* 145BDC 80249E1C 28A20014 */  slti      $v0, $a1, 0x14
/* 145BE0 80249E20 5440FFFC */  bnel      $v0, $zero, .LJP_80249E14
/* 145BE4 80249E24 A0C00000 */   sb       $zero, 0x0($a2)
/* 145BE8 80249E28 0000202D */  daddu     $a0, $zero, $zero
/* 145BEC 80249E2C 0C092392 */  jal       pause_items_get_pos_y
/* 145BF0 80249E30 0080282D */   daddu    $a1, $a0, $zero
/* 145BF4 80249E34 8FBF0014 */  lw        $ra, 0x14($sp)
/* 145BF8 80249E38 8FB00010 */  lw        $s0, 0x10($sp)
/* 145BFC 80249E3C 3C018027 */  lui       $at, %hi(gPauseItemsCurrentScrollPos)
/* 145C00 80249E40 AC22FC94 */  sw        $v0, %lo(gPauseItemsCurrentScrollPos)($at)
/* 145C04 80249E44 3C018027 */  lui       $at, %hi(gPauseItemsTargetScrollPos)
/* 145C08 80249E48 AC22FC98 */  sw        $v0, %lo(gPauseItemsTargetScrollPos)($at)
/* 145C0C 80249E4C 03E00008 */  jr        $ra
/* 145C10 80249E50 27BD0018 */   addiu    $sp, $sp, 0x18
.size pause_items_load_items, . - pause_items_load_items
