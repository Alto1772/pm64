.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pause_stats_draw_contents
/* 140DC0 80245000 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 140DC4 80245004 AFBE0080 */  sw        $fp, 0x80($sp)
/* 140DC8 80245008 00C0F02D */  daddu     $fp, $a2, $zero
/* 140DCC 8024500C AFA5008C */  sw        $a1, 0x8C($sp)
/* 140DD0 80245010 24A80097 */  addiu     $t0, $a1, 0x97
/* 140DD4 80245014 0100282D */  daddu     $a1, $t0, $zero
/* 140DD8 80245018 AFB10064 */  sw        $s1, 0x64($sp)
/* 140DDC 8024501C 3C118027 */  lui       $s1, %hi(gPauseStatsIconIDs)
/* 140DE0 80245020 2631F810 */  addiu     $s1, $s1, %lo(gPauseStatsIconIDs)
/* 140DE4 80245024 AFBF0084 */  sw        $ra, 0x84($sp)
/* 140DE8 80245028 AFB7007C */  sw        $s7, 0x7C($sp)
/* 140DEC 8024502C AFB60078 */  sw        $s6, 0x78($sp)
/* 140DF0 80245030 AFB50074 */  sw        $s5, 0x74($sp)
/* 140DF4 80245034 AFB40070 */  sw        $s4, 0x70($sp)
/* 140DF8 80245038 AFB3006C */  sw        $s3, 0x6C($sp)
/* 140DFC 8024503C AFB20068 */  sw        $s2, 0x68($sp)
/* 140E00 80245040 AFB00060 */  sw        $s0, 0x60($sp)
/* 140E04 80245044 AFA40088 */  sw        $a0, 0x88($sp)
/* 140E08 80245048 AFA80050 */  sw        $t0, 0x50($sp)
/* 140E0C 8024504C 8E24000C */  lw        $a0, 0xC($s1)
/* 140E10 80245050 0C05268D */  jal       hud_element_set_render_pos
/* 140E14 80245054 27C6006D */   addiu    $a2, $fp, 0x6D
/* 140E18 80245058 8E24000C */  lw        $a0, 0xC($s1)
/* 140E1C 8024505C 0C052624 */  jal       hud_element_draw_without_clipping
/* 140E20 80245060 27D00065 */   addiu    $s0, $fp, 0x65
/* 140E24 80245064 0C09396C */  jal       pause_get_menu_msg
/* 140E28 80245068 24040032 */   addiu    $a0, $zero, 0x32
/* 140E2C 8024506C 0040202D */  daddu     $a0, $v0, $zero
/* 140E30 80245070 0200302D */  daddu     $a2, $s0, $zero
/* 140E34 80245074 8FA8008C */  lw        $t0, 0x8C($sp)
/* 140E38 80245078 240700FF */  addiu     $a3, $zero, 0xFF
/* 140E3C 8024507C 250800A3 */  addiu     $t0, $t0, 0xA3
/* 140E40 80245080 0100282D */  daddu     $a1, $t0, $zero
/* 140E44 80245084 AFA80054 */  sw        $t0, 0x54($sp)
/* 140E48 80245088 2408000A */  addiu     $t0, $zero, 0xA
/* 140E4C 8024508C AFA80010 */  sw        $t0, 0x10($sp)
/* 140E50 80245090 24080001 */  addiu     $t0, $zero, 0x1
/* 140E54 80245094 0C04ADC4 */  jal       draw_msg
/* 140E58 80245098 AFA80014 */   sw       $t0, 0x14($sp)
/* 140E5C 8024509C 0200302D */  daddu     $a2, $s0, $zero
/* 140E60 802450A0 24070001 */  addiu     $a3, $zero, 0x1
/* 140E64 802450A4 8FA8008C */  lw        $t0, 0x8C($sp)
/* 140E68 802450A8 3C048011 */  lui       $a0, %hi(D_8010F45C)
/* 140E6C 802450AC 8484F45C */  lh        $a0, %lo(D_8010F45C)($a0)
/* 140E70 802450B0 250800EF */  addiu     $t0, $t0, 0xEF
/* 140E74 802450B4 0100282D */  daddu     $a1, $t0, $zero
/* 140E78 802450B8 AFA80058 */  sw        $t0, 0x58($sp)
/* 140E7C 802450BC 2408000A */  addiu     $t0, $zero, 0xA
/* 140E80 802450C0 AFA80010 */  sw        $t0, 0x10($sp)
/* 140E84 802450C4 240800FF */  addiu     $t0, $zero, 0xFF
/* 140E88 802450C8 AFA80014 */  sw        $t0, 0x14($sp)
/* 140E8C 802450CC 24080002 */  addiu     $t0, $zero, 0x2
/* 140E90 802450D0 0C04B22C */  jal       draw_number
/* 140E94 802450D4 AFA80018 */   sw       $t0, 0x18($sp)
/* 140E98 802450D8 27C6006C */  addiu     $a2, $fp, 0x6C
/* 140E9C 802450DC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 140EA0 802450E0 8E24002C */  lw        $a0, 0x2C($s1)
/* 140EA4 802450E4 251200E9 */  addiu     $s2, $t0, 0xE9
/* 140EA8 802450E8 0C05268D */  jal       hud_element_set_render_pos
/* 140EAC 802450EC 0240282D */   daddu    $a1, $s2, $zero
/* 140EB0 802450F0 8E24002C */  lw        $a0, 0x2C($s1)
/* 140EB4 802450F4 0C052624 */  jal       hud_element_draw_without_clipping
/* 140EB8 802450F8 27D00056 */   addiu    $s0, $fp, 0x56
/* 140EBC 802450FC 8FA50050 */  lw        $a1, 0x50($sp)
/* 140EC0 80245100 8E240010 */  lw        $a0, 0x10($s1)
/* 140EC4 80245104 0C05268D */  jal       hud_element_set_render_pos
/* 140EC8 80245108 27C6005E */   addiu    $a2, $fp, 0x5E
/* 140ECC 8024510C 8E240010 */  lw        $a0, 0x10($s1)
/* 140ED0 80245110 0C052624 */  jal       hud_element_draw_without_clipping
/* 140ED4 80245114 27D3007B */   addiu    $s3, $fp, 0x7B
/* 140ED8 80245118 0C09396C */  jal       pause_get_menu_msg
/* 140EDC 8024511C 24040033 */   addiu    $a0, $zero, 0x33
/* 140EE0 80245120 0040202D */  daddu     $a0, $v0, $zero
/* 140EE4 80245124 0200302D */  daddu     $a2, $s0, $zero
/* 140EE8 80245128 240700FF */  addiu     $a3, $zero, 0xFF
/* 140EEC 8024512C 8FA50054 */  lw        $a1, 0x54($sp)
/* 140EF0 80245130 2408000A */  addiu     $t0, $zero, 0xA
/* 140EF4 80245134 AFA80010 */  sw        $t0, 0x10($sp)
/* 140EF8 80245138 24080001 */  addiu     $t0, $zero, 0x1
/* 140EFC 8024513C 0C04ADC4 */  jal       draw_msg
/* 140F00 80245140 AFA80014 */   sw       $t0, 0x14($sp)
/* 140F04 80245144 0200302D */  daddu     $a2, $s0, $zero
/* 140F08 80245148 24070001 */  addiu     $a3, $zero, 0x1
/* 140F0C 8024514C 8FA50058 */  lw        $a1, 0x58($sp)
/* 140F10 80245150 3C048011 */  lui       $a0, %hi(D_8010F460)
/* 140F14 80245154 8084F460 */  lb        $a0, %lo(D_8010F460)($a0)
/* 140F18 80245158 2408000A */  addiu     $t0, $zero, 0xA
/* 140F1C 8024515C AFA80010 */  sw        $t0, 0x10($sp)
/* 140F20 80245160 240800FF */  addiu     $t0, $zero, 0xFF
/* 140F24 80245164 AFA80014 */  sw        $t0, 0x14($sp)
/* 140F28 80245168 24080002 */  addiu     $t0, $zero, 0x2
/* 140F2C 8024516C 0C04B22C */  jal       draw_number
/* 140F30 80245170 AFA80018 */   sw       $t0, 0x18($sp)
/* 140F34 80245174 0240282D */  daddu     $a1, $s2, $zero
/* 140F38 80245178 8E24002C */  lw        $a0, 0x2C($s1)
/* 140F3C 8024517C 0C05268D */  jal       hud_element_set_render_pos
/* 140F40 80245180 27C6005D */   addiu    $a2, $fp, 0x5D
/* 140F44 80245184 8E24002C */  lw        $a0, 0x2C($s1)
/* 140F48 80245188 0C052624 */  jal       hud_element_draw_without_clipping
/* 140F4C 8024518C 27D00074 */   addiu    $s0, $fp, 0x74
/* 140F50 80245190 8FA50050 */  lw        $a1, 0x50($sp)
/* 140F54 80245194 8E240014 */  lw        $a0, 0x14($s1)
/* 140F58 80245198 0C05268D */  jal       hud_element_set_render_pos
/* 140F5C 8024519C 0260302D */   daddu    $a2, $s3, $zero
/* 140F60 802451A0 8E240014 */  lw        $a0, 0x14($s1)
/* 140F64 802451A4 0C052624 */  jal       hud_element_draw_without_clipping
/* 140F68 802451A8 00000000 */   nop
/* 140F6C 802451AC 0C09396C */  jal       pause_get_menu_msg
/* 140F70 802451B0 24040034 */   addiu    $a0, $zero, 0x34
/* 140F74 802451B4 0040202D */  daddu     $a0, $v0, $zero
/* 140F78 802451B8 0200302D */  daddu     $a2, $s0, $zero
/* 140F7C 802451BC 240700FF */  addiu     $a3, $zero, 0xFF
/* 140F80 802451C0 8FA50054 */  lw        $a1, 0x54($sp)
/* 140F84 802451C4 2408000A */  addiu     $t0, $zero, 0xA
/* 140F88 802451C8 AFA80010 */  sw        $t0, 0x10($sp)
/* 140F8C 802451CC 24080001 */  addiu     $t0, $zero, 0x1
/* 140F90 802451D0 0C04ADC4 */  jal       draw_msg
/* 140F94 802451D4 AFA80014 */   sw       $t0, 0x14($sp)
/* 140F98 802451D8 0200302D */  daddu     $a2, $s0, $zero
/* 140F9C 802451DC 24070001 */  addiu     $a3, $zero, 0x1
/* 140FA0 802451E0 8FA50058 */  lw        $a1, 0x58($sp)
/* 140FA4 802451E4 3C048011 */  lui       $a0, %hi(D_8010F45F)
/* 140FA8 802451E8 9084F45F */  lbu       $a0, %lo(D_8010F45F)($a0)
/* 140FAC 802451EC 2408000A */  addiu     $t0, $zero, 0xA
/* 140FB0 802451F0 AFA80010 */  sw        $t0, 0x10($sp)
/* 140FB4 802451F4 240800FF */  addiu     $t0, $zero, 0xFF
/* 140FB8 802451F8 AFA80014 */  sw        $t0, 0x14($sp)
/* 140FBC 802451FC 24080002 */  addiu     $t0, $zero, 0x2
/* 140FC0 80245200 0C04B22C */  jal       draw_number
/* 140FC4 80245204 AFA80018 */   sw       $t0, 0x18($sp)
/* 140FC8 80245208 0240282D */  daddu     $a1, $s2, $zero
/* 140FCC 8024520C 8E24002C */  lw        $a0, 0x2C($s1)
/* 140FD0 80245210 0C05268D */  jal       hud_element_set_render_pos
/* 140FD4 80245214 0260302D */   daddu    $a2, $s3, $zero
/* 140FD8 80245218 8E24002C */  lw        $a0, 0x2C($s1)
/* 140FDC 8024521C 0C052624 */  jal       hud_element_draw_without_clipping
/* 140FE0 80245220 27D00033 */   addiu    $s0, $fp, 0x33
/* 140FE4 80245224 0000202D */  daddu     $a0, $zero, $zero
/* 140FE8 80245228 8FA8008C */  lw        $t0, 0x8C($sp)
/* 140FEC 8024522C 27C60023 */  addiu     $a2, $fp, 0x23
/* 140FF0 80245230 25160015 */  addiu     $s6, $t0, 0x15
/* 140FF4 80245234 0C093971 */  jal       pause_draw_menu_label
/* 140FF8 80245238 02C0282D */   daddu    $a1, $s6, $zero
/* 140FFC 8024523C 27C60039 */  addiu     $a2, $fp, 0x39
/* 141000 80245240 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141004 80245244 8E24001C */  lw        $a0, 0x1C($s1)
/* 141008 80245248 25150034 */  addiu     $s5, $t0, 0x34
/* 14100C 8024524C 0C05268D */  jal       hud_element_set_render_pos
/* 141010 80245250 02A0282D */   daddu    $a1, $s5, $zero
/* 141014 80245254 8E24001C */  lw        $a0, 0x1C($s1)
/* 141018 80245258 0C052624 */  jal       hud_element_draw_without_clipping
/* 14101C 8024525C 24120003 */   addiu    $s2, $zero, 0x3
/* 141020 80245260 0C09396C */  jal       pause_get_menu_msg
/* 141024 80245264 24040036 */   addiu    $a0, $zero, 0x36
/* 141028 80245268 0040202D */  daddu     $a0, $v0, $zero
/* 14102C 8024526C 0200302D */  daddu     $a2, $s0, $zero
/* 141030 80245270 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141034 80245274 240700FF */  addiu     $a3, $zero, 0xFF
/* 141038 80245278 AFA00010 */  sw        $zero, 0x10($sp)
/* 14103C 8024527C 25140019 */  addiu     $s4, $t0, 0x19
/* 141040 80245280 0280282D */  daddu     $a1, $s4, $zero
/* 141044 80245284 24080001 */  addiu     $t0, $zero, 0x1
/* 141048 80245288 0C04ADC4 */  jal       draw_msg
/* 14104C 8024528C AFA80014 */   sw       $t0, 0x14($sp)
/* 141050 80245290 0200302D */  daddu     $a2, $s0, $zero
/* 141054 80245294 24070001 */  addiu     $a3, $zero, 0x1
/* 141058 80245298 8FA8008C */  lw        $t0, 0x8C($sp)
/* 14105C 8024529C 3C048011 */  lui       $a0, %hi(D_8010F452)
/* 141060 802452A0 8084F452 */  lb        $a0, %lo(D_8010F452)($a0)
/* 141064 802452A4 AFA00010 */  sw        $zero, 0x10($sp)
/* 141068 802452A8 AFB20018 */  sw        $s2, 0x18($sp)
/* 14106C 802452AC 2513004E */  addiu     $s3, $t0, 0x4E
/* 141070 802452B0 0260282D */  daddu     $a1, $s3, $zero
/* 141074 802452B4 240800FF */  addiu     $t0, $zero, 0xFF
/* 141078 802452B8 0C04B22C */  jal       draw_number
/* 14107C 802452BC AFA80014 */   sw       $t0, 0x14($sp)
/* 141080 802452C0 0C09396C */  jal       pause_get_menu_msg
/* 141084 802452C4 24040039 */   addiu    $a0, $zero, 0x39
/* 141088 802452C8 0040202D */  daddu     $a0, $v0, $zero
/* 14108C 802452CC 0260282D */  daddu     $a1, $s3, $zero
/* 141090 802452D0 0200302D */  daddu     $a2, $s0, $zero
/* 141094 802452D4 240700FF */  addiu     $a3, $zero, 0xFF
/* 141098 802452D8 24080001 */  addiu     $t0, $zero, 0x1
/* 14109C 802452DC AFA00010 */  sw        $zero, 0x10($sp)
/* 1410A0 802452E0 0C04ADC4 */  jal       draw_msg
/* 1410A4 802452E4 AFA80014 */   sw       $t0, 0x14($sp)
/* 1410A8 802452E8 0200302D */  daddu     $a2, $s0, $zero
/* 1410AC 802452EC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 1410B0 802452F0 3C048011 */  lui       $a0, %hi(D_8010F453)
/* 1410B4 802452F4 8084F453 */  lb        $a0, %lo(D_8010F453)($a0)
/* 1410B8 802452F8 24070001 */  addiu     $a3, $zero, 0x1
/* 1410BC 802452FC AFA00010 */  sw        $zero, 0x10($sp)
/* 1410C0 80245300 AFB20018 */  sw        $s2, 0x18($sp)
/* 1410C4 80245304 25170069 */  addiu     $s7, $t0, 0x69
/* 1410C8 80245308 02E0282D */  daddu     $a1, $s7, $zero
/* 1410CC 8024530C 240800FF */  addiu     $t0, $zero, 0xFF
/* 1410D0 80245310 0C04B22C */  jal       draw_number
/* 1410D4 80245314 AFA80014 */   sw       $t0, 0x14($sp)
/* 1410D8 80245318 24040001 */  addiu     $a0, $zero, 0x1
/* 1410DC 8024531C 02C0282D */  daddu     $a1, $s6, $zero
/* 1410E0 80245320 0C093971 */  jal       pause_draw_menu_label
/* 1410E4 80245324 27C60045 */   addiu    $a2, $fp, 0x45
/* 1410E8 80245328 02A0282D */  daddu     $a1, $s5, $zero
/* 1410EC 8024532C 8E240020 */  lw        $a0, 0x20($s1)
/* 1410F0 80245330 0C05268D */  jal       hud_element_set_render_pos
/* 1410F4 80245334 27C6005C */   addiu    $a2, $fp, 0x5C
/* 1410F8 80245338 8E240020 */  lw        $a0, 0x20($s1)
/* 1410FC 8024533C 0C052624 */  jal       hud_element_draw_without_clipping
/* 141100 80245340 27D00055 */   addiu    $s0, $fp, 0x55
/* 141104 80245344 0C09396C */  jal       pause_get_menu_msg
/* 141108 80245348 24040037 */   addiu    $a0, $zero, 0x37
/* 14110C 8024534C 0040202D */  daddu     $a0, $v0, $zero
/* 141110 80245350 0280282D */  daddu     $a1, $s4, $zero
/* 141114 80245354 0200302D */  daddu     $a2, $s0, $zero
/* 141118 80245358 240700FF */  addiu     $a3, $zero, 0xFF
/* 14111C 8024535C 24080001 */  addiu     $t0, $zero, 0x1
/* 141120 80245360 AFA00010 */  sw        $zero, 0x10($sp)
/* 141124 80245364 0C04ADC4 */  jal       draw_msg
/* 141128 80245368 AFA80014 */   sw       $t0, 0x14($sp)
/* 14112C 8024536C 0260282D */  daddu     $a1, $s3, $zero
/* 141130 80245370 0200302D */  daddu     $a2, $s0, $zero
/* 141134 80245374 24070001 */  addiu     $a3, $zero, 0x1
/* 141138 80245378 3C048011 */  lui       $a0, %hi(D_8010F455)
/* 14113C 8024537C 8084F455 */  lb        $a0, %lo(D_8010F455)($a0)
/* 141140 80245380 240800FF */  addiu     $t0, $zero, 0xFF
/* 141144 80245384 AFA00010 */  sw        $zero, 0x10($sp)
/* 141148 80245388 AFA80014 */  sw        $t0, 0x14($sp)
/* 14114C 8024538C 0C04B22C */  jal       draw_number
/* 141150 80245390 AFB20018 */   sw       $s2, 0x18($sp)
/* 141154 80245394 0C09396C */  jal       pause_get_menu_msg
/* 141158 80245398 24040039 */   addiu    $a0, $zero, 0x39
/* 14115C 8024539C 0040202D */  daddu     $a0, $v0, $zero
/* 141160 802453A0 0260282D */  daddu     $a1, $s3, $zero
/* 141164 802453A4 0200302D */  daddu     $a2, $s0, $zero
/* 141168 802453A8 240700FF */  addiu     $a3, $zero, 0xFF
/* 14116C 802453AC 24080001 */  addiu     $t0, $zero, 0x1
/* 141170 802453B0 AFA00010 */  sw        $zero, 0x10($sp)
/* 141174 802453B4 0C04ADC4 */  jal       draw_msg
/* 141178 802453B8 AFA80014 */   sw       $t0, 0x14($sp)
/* 14117C 802453BC 02E0282D */  daddu     $a1, $s7, $zero
/* 141180 802453C0 0200302D */  daddu     $a2, $s0, $zero
/* 141184 802453C4 24070001 */  addiu     $a3, $zero, 0x1
/* 141188 802453C8 3C048011 */  lui       $a0, %hi(D_8010F456)
/* 14118C 802453CC 8084F456 */  lb        $a0, %lo(D_8010F456)($a0)
/* 141190 802453D0 240800FF */  addiu     $t0, $zero, 0xFF
/* 141194 802453D4 AFA00010 */  sw        $zero, 0x10($sp)
/* 141198 802453D8 AFA80014 */  sw        $t0, 0x14($sp)
/* 14119C 802453DC 0C04B22C */  jal       draw_number
/* 1411A0 802453E0 AFB20018 */   sw       $s2, 0x18($sp)
/* 1411A4 802453E4 24040002 */  addiu     $a0, $zero, 0x2
/* 1411A8 802453E8 02C0282D */  daddu     $a1, $s6, $zero
/* 1411AC 802453EC 0C093971 */  jal       pause_draw_menu_label
/* 1411B0 802453F0 27C60067 */   addiu    $a2, $fp, 0x67
/* 1411B4 802453F4 02A0282D */  daddu     $a1, $s5, $zero
/* 1411B8 802453F8 8E240024 */  lw        $a0, 0x24($s1)
/* 1411BC 802453FC 0C05268D */  jal       hud_element_set_render_pos
/* 1411C0 80245400 27C6007E */   addiu    $a2, $fp, 0x7E
/* 1411C4 80245404 8E240024 */  lw        $a0, 0x24($s1)
/* 1411C8 80245408 0C052624 */  jal       hud_element_draw_without_clipping
/* 1411CC 8024540C 27D00077 */   addiu    $s0, $fp, 0x77
/* 1411D0 80245410 0C09396C */  jal       pause_get_menu_msg
/* 1411D4 80245414 24040038 */   addiu    $a0, $zero, 0x38
/* 1411D8 80245418 0040202D */  daddu     $a0, $v0, $zero
/* 1411DC 8024541C 0280282D */  daddu     $a1, $s4, $zero
/* 1411E0 80245420 0200302D */  daddu     $a2, $s0, $zero
/* 1411E4 80245424 240700FF */  addiu     $a3, $zero, 0xFF
/* 1411E8 80245428 24080001 */  addiu     $t0, $zero, 0x1
/* 1411EC 8024542C AFA00010 */  sw        $zero, 0x10($sp)
/* 1411F0 80245430 0C04ADC4 */  jal       draw_msg
/* 1411F4 80245434 AFA80014 */   sw       $t0, 0x14($sp)
/* 1411F8 80245438 0260282D */  daddu     $a1, $s3, $zero
/* 1411FC 8024543C 0200302D */  daddu     $a2, $s0, $zero
/* 141200 80245440 24070001 */  addiu     $a3, $zero, 0x1
/* 141204 80245444 3C048011 */  lui       $a0, %hi(gPlayerData + 0x8)
/* 141208 80245448 8084F458 */  lb        $a0, %lo(gPlayerData + 0x8)($a0)
/* 14120C 8024544C 240800FF */  addiu     $t0, $zero, 0xFF
/* 141210 80245450 AFA00010 */  sw        $zero, 0x10($sp)
/* 141214 80245454 AFA80014 */  sw        $t0, 0x14($sp)
/* 141218 80245458 0C04B22C */  jal       draw_number
/* 14121C 8024545C AFB20018 */   sw       $s2, 0x18($sp)
/* 141220 80245460 8FA50050 */  lw        $a1, 0x50($sp)
/* 141224 80245464 8E240018 */  lw        $a0, 0x18($s1)
/* 141228 80245468 0C05268D */  jal       hud_element_set_render_pos
/* 14122C 8024546C 27C6008C */   addiu    $a2, $fp, 0x8C
/* 141230 80245470 8E240018 */  lw        $a0, 0x18($s1)
/* 141234 80245474 0C052624 */  jal       hud_element_draw_without_clipping
/* 141238 80245478 27D40085 */   addiu    $s4, $fp, 0x85
/* 14123C 8024547C 0C09396C */  jal       pause_get_menu_msg
/* 141240 80245480 24040035 */   addiu    $a0, $zero, 0x35
/* 141244 80245484 0040202D */  daddu     $a0, $v0, $zero
/* 141248 80245488 0280302D */  daddu     $a2, $s4, $zero
/* 14124C 8024548C 240700FF */  addiu     $a3, $zero, 0xFF
/* 141250 80245490 8FA50054 */  lw        $a1, 0x54($sp)
/* 141254 80245494 2408000A */  addiu     $t0, $zero, 0xA
/* 141258 80245498 AFA80010 */  sw        $t0, 0x10($sp)
/* 14125C 8024549C 24080001 */  addiu     $t0, $zero, 0x1
/* 141260 802454A0 0C04ADC4 */  jal       draw_msg
/* 141264 802454A4 AFA80014 */   sw       $t0, 0x14($sp)
/* 141268 802454A8 3C020149 */  lui       $v0, (0x14996FF >> 16)
/* 14126C 802454AC 3C138011 */  lui       $s3, %hi(D_8010F70C)
/* 141270 802454B0 8E73F70C */  lw        $s3, %lo(D_8010F70C)($s3)
/* 141274 802454B4 344296FF */  ori       $v0, $v0, (0x14996FF & 0xFFFF)
/* 141278 802454B8 0053102A */  slt       $v0, $v0, $s3
/* 14127C 802454BC 10400003 */  beqz      $v0, .LJP_802454CC
/* 141280 802454C0 3C021F11 */   lui      $v0, (0x1F11A4A5 >> 16)
/* 141284 802454C4 3C130149 */  lui       $s3, (0x14996FF >> 16)
/* 141288 802454C8 367396FF */  ori       $s3, $s3, (0x14996FF & 0xFFFF)
.LJP_802454CC:
/* 14128C 802454CC 3442A4A5 */  ori       $v0, $v0, (0x1F11A4A5 & 0xFFFF)
/* 141290 802454D0 02620018 */  mult      $s3, $v0
/* 141294 802454D4 3C026666 */  lui       $v0, (0x66666667 >> 16)
/* 141298 802454D8 34426667 */  ori       $v0, $v0, (0x66666667 & 0xFFFF)
/* 14129C 802454DC 0280302D */  daddu     $a2, $s4, $zero
/* 1412A0 802454E0 001397C3 */  sra       $s2, $s3, 31
/* 1412A4 802454E4 24070001 */  addiu     $a3, $zero, 0x1
/* 1412A8 802454E8 8FA50058 */  lw        $a1, 0x58($sp)
/* 1412AC 802454EC 00004010 */  mfhi      $t0
/* 1412B0 802454F0 00088483 */  sra       $s0, $t0, 18
/* 1412B4 802454F4 02128023 */  subu      $s0, $s0, $s2
/* 1412B8 802454F8 2408000A */  addiu     $t0, $zero, 0xA
/* 1412BC 802454FC AFA80010 */  sw        $t0, 0x10($sp)
/* 1412C0 80245500 240800FF */  addiu     $t0, $zero, 0xFF
/* 1412C4 80245504 02020018 */  mult      $s0, $v0
/* 1412C8 80245508 AFA80014 */  sw        $t0, 0x14($sp)
/* 1412CC 8024550C 24080002 */  addiu     $t0, $zero, 0x2
/* 1412D0 80245510 00101FC3 */  sra       $v1, $s0, 31
/* 1412D4 80245514 AFA80018 */  sw        $t0, 0x18($sp)
/* 1412D8 80245518 00004010 */  mfhi      $t0
/* 1412DC 8024551C 00081083 */  sra       $v0, $t0, 2
/* 1412E0 80245520 00431023 */  subu      $v0, $v0, $v1
/* 1412E4 80245524 00022080 */  sll       $a0, $v0, 2
/* 1412E8 80245528 00822021 */  addu      $a0, $a0, $v0
/* 1412EC 8024552C 00E42004 */  sllv      $a0, $a0, $a3
/* 1412F0 80245530 0C04B22C */  jal       draw_number
/* 1412F4 80245534 02042023 */   subu     $a0, $s0, $a0
/* 1412F8 80245538 3C029B58 */  lui       $v0, (0x9B583739 >> 16)
/* 1412FC 8024553C 34423739 */  ori       $v0, $v0, (0x9B583739 & 0xFFFF)
/* 141300 80245540 0280302D */  daddu     $a2, $s4, $zero
/* 141304 80245544 24070001 */  addiu     $a3, $zero, 0x1
/* 141308 80245548 00102080 */  sll       $a0, $s0, 2
/* 14130C 8024554C 00902021 */  addu      $a0, $a0, $s0
/* 141310 80245550 00E42004 */  sllv      $a0, $a0, $a3
/* 141314 80245554 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141318 80245558 02620018 */  mult      $s3, $v0
/* 14131C 8024555C 250500F8 */  addiu     $a1, $t0, 0xF8
/* 141320 80245560 2408000A */  addiu     $t0, $zero, 0xA
/* 141324 80245564 AFA80010 */  sw        $t0, 0x10($sp)
/* 141328 80245568 240800FF */  addiu     $t0, $zero, 0xFF
/* 14132C 8024556C AFA80014 */  sw        $t0, 0x14($sp)
/* 141330 80245570 24080002 */  addiu     $t0, $zero, 0x2
/* 141334 80245574 AFA80018 */  sw        $t0, 0x18($sp)
/* 141338 80245578 00004010 */  mfhi      $t0
/* 14133C 8024557C 01138821 */  addu      $s1, $t0, $s3
/* 141340 80245580 00118C43 */  sra       $s1, $s1, 17
/* 141344 80245584 02328823 */  subu      $s1, $s1, $s2
/* 141348 80245588 0C04B22C */  jal       draw_number
/* 14134C 8024558C 02242023 */   subu     $a0, $s1, $a0
/* 141350 80245590 0C09396C */  jal       pause_get_menu_msg
/* 141354 80245594 2404003A */   addiu    $a0, $zero, 0x3A
/* 141358 80245598 0040202D */  daddu     $a0, $v0, $zero
/* 14135C 8024559C 27C60084 */  addiu     $a2, $fp, 0x84
/* 141360 802455A0 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141364 802455A4 240700FF */  addiu     $a3, $zero, 0xFF
/* 141368 802455A8 25100101 */  addiu     $s0, $t0, 0x101
/* 14136C 802455AC 0200282D */  daddu     $a1, $s0, $zero
/* 141370 802455B0 2408000A */  addiu     $t0, $zero, 0xA
/* 141374 802455B4 AFA80010 */  sw        $t0, 0x10($sp)
/* 141378 802455B8 24080001 */  addiu     $t0, $zero, 0x1
/* 14137C 802455BC 0C04ADC4 */  jal       draw_msg
/* 141380 802455C0 AFA80014 */   sw       $t0, 0x14($sp)
/* 141384 802455C4 0C09396C */  jal       pause_get_menu_msg
/* 141388 802455C8 2404003A */   addiu    $a0, $zero, 0x3A
/* 14138C 802455CC 0040202D */  daddu     $a0, $v0, $zero
/* 141390 802455D0 0200282D */  daddu     $a1, $s0, $zero
/* 141394 802455D4 27C6007F */  addiu     $a2, $fp, 0x7F
/* 141398 802455D8 240700FF */  addiu     $a3, $zero, 0xFF
/* 14139C 802455DC 2408000A */  addiu     $t0, $zero, 0xA
/* 1413A0 802455E0 AFA80010 */  sw        $t0, 0x10($sp)
/* 1413A4 802455E4 24080001 */  addiu     $t0, $zero, 0x1
/* 1413A8 802455E8 0C04ADC4 */  jal       draw_msg
/* 1413AC 802455EC AFA80014 */   sw       $t0, 0x14($sp)
/* 1413B0 802455F0 3C027482 */  lui       $v0, (0x7482296B >> 16)
/* 1413B4 802455F4 3442296B */  ori       $v0, $v0, (0x7482296B & 0xFFFF)
/* 1413B8 802455F8 0280302D */  daddu     $a2, $s4, $zero
/* 1413BC 802455FC 24070001 */  addiu     $a3, $zero, 0x1
/* 1413C0 80245600 00F12004 */  sllv      $a0, $s1, $a3
/* 1413C4 80245604 00912021 */  addu      $a0, $a0, $s1
/* 1413C8 80245608 00E42004 */  sllv      $a0, $a0, $a3
/* 1413CC 8024560C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 1413D0 80245610 02620018 */  mult      $s3, $v0
/* 1413D4 80245614 25050108 */  addiu     $a1, $t0, 0x108
/* 1413D8 80245618 2408000A */  addiu     $t0, $zero, 0xA
/* 1413DC 8024561C AFA80010 */  sw        $t0, 0x10($sp)
/* 1413E0 80245620 240800FF */  addiu     $t0, $zero, 0xFF
/* 1413E4 80245624 AFA80014 */  sw        $t0, 0x14($sp)
/* 1413E8 80245628 24080002 */  addiu     $t0, $zero, 0x2
/* 1413EC 8024562C AFA80018 */  sw        $t0, 0x18($sp)
/* 1413F0 80245630 00004010 */  mfhi      $t0
/* 1413F4 80245634 00088383 */  sra       $s0, $t0, 14
/* 1413F8 80245638 02128023 */  subu      $s0, $s0, $s2
/* 1413FC 8024563C 0C04B22C */  jal       draw_number
/* 141400 80245640 02042023 */   subu     $a0, $s0, $a0
/* 141404 80245644 3C0291A2 */  lui       $v0, (0x91A2B3C5 >> 16)
/* 141408 80245648 3442B3C5 */  ori       $v0, $v0, (0x91A2B3C5 & 0xFFFF)
/* 14140C 8024564C 0280302D */  daddu     $a2, $s4, $zero
/* 141410 80245650 24070001 */  addiu     $a3, $zero, 0x1
/* 141414 80245654 00102080 */  sll       $a0, $s0, 2
/* 141418 80245658 00902021 */  addu      $a0, $a0, $s0
/* 14141C 8024565C 00E42004 */  sllv      $a0, $a0, $a3
/* 141420 80245660 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141424 80245664 02620018 */  mult      $s3, $v0
/* 141428 80245668 25050111 */  addiu     $a1, $t0, 0x111
/* 14142C 8024566C 2408000A */  addiu     $t0, $zero, 0xA
/* 141430 80245670 AFA80010 */  sw        $t0, 0x10($sp)
/* 141434 80245674 240800FF */  addiu     $t0, $zero, 0xFF
/* 141438 80245678 AFA80014 */  sw        $t0, 0x14($sp)
/* 14143C 8024567C 24080002 */  addiu     $t0, $zero, 0x2
/* 141440 80245680 AFA80018 */  sw        $t0, 0x18($sp)
/* 141444 80245684 00004010 */  mfhi      $t0
/* 141448 80245688 01131021 */  addu      $v0, $t0, $s3
/* 14144C 8024568C 000212C3 */  sra       $v0, $v0, 11
/* 141450 80245690 00521023 */  subu      $v0, $v0, $s2
/* 141454 80245694 0C04B22C */  jal       draw_number
/* 141458 80245698 00442023 */   subu     $a0, $v0, $a0
/* 14145C 8024569C 3C028011 */  lui       $v0, %hi(gPlayerData)
/* 141460 802456A0 9042F450 */  lbu       $v0, %lo(gPlayerData)($v0)
/* 141464 802456A4 3C038011 */  lui       $v1, %hi(D_8010F451)
/* 141468 802456A8 9063F451 */  lbu       $v1, %lo(D_8010F451)($v1)
/* 14146C 802456AC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141470 802456B0 27C7000C */  addiu     $a3, $fp, 0xC
/* 141474 802456B4 AFA00010 */  sw        $zero, 0x10($sp)
/* 141478 802456B8 00021600 */  sll       $v0, $v0, 24
/* 14147C 802456BC 00029603 */  sra       $s2, $v0, 24
/* 141480 802456C0 00031E00 */  sll       $v1, $v1, 24
/* 141484 802456C4 00039E03 */  sra       $s3, $v1, 24
/* 141488 802456C8 3C028011 */  lui       $v0, %hi(D_8010F459)
/* 14148C 802456CC 9042F459 */  lbu       $v0, %lo(D_8010F459)($v0)
/* 141490 802456D0 00021600 */  sll       $v0, $v0, 24
/* 141494 802456D4 0002A603 */  sra       $s4, $v0, 24
/* 141498 802456D8 0280102D */  daddu     $v0, $s4, $zero
/* 14149C 802456DC 2842000A */  slti      $v0, $v0, 0xA
/* 1414A0 802456E0 14400003 */  bnez      $v0, .LJP_802456F0
/* 1414A4 802456E4 25060007 */   addiu    $a2, $t0, 0x7
/* 1414A8 802456E8 080915BD */  j         .LJP_802456F4
/* 1414AC 802456EC 2402006E */   addiu    $v0, $zero, 0x6E
.LJP_802456F0:
/* 1414B0 802456F0 24020066 */  addiu     $v0, $zero, 0x66
.LJP_802456F4:
/* 1414B4 802456F4 AFA20014 */  sw        $v0, 0x14($sp)
/* 1414B8 802456F8 24040004 */  addiu     $a0, $zero, 0x4
/* 1414BC 802456FC 3C058027 */  lui       $a1, %hi(gPauseWS_10)
/* 1414C0 80245700 24A5F200 */  addiu     $a1, $a1, %lo(gPauseWS_10)
/* 1414C4 80245704 24020011 */  addiu     $v0, $zero, 0x11
/* 1414C8 80245708 241100FF */  addiu     $s1, $zero, 0xFF
/* 1414CC 8024570C AFA20018 */  sw        $v0, 0x18($sp)
/* 1414D0 80245710 24020140 */  addiu     $v0, $zero, 0x140
/* 1414D4 80245714 AFA20044 */  sw        $v0, 0x44($sp)
/* 1414D8 80245718 240200F0 */  addiu     $v0, $zero, 0xF0
/* 1414DC 8024571C AFB1001C */  sw        $s1, 0x1C($sp)
/* 1414E0 80245720 AFA00020 */  sw        $zero, 0x20($sp)
/* 1414E4 80245724 AFA00024 */  sw        $zero, 0x24($sp)
/* 1414E8 80245728 AFA00028 */  sw        $zero, 0x28($sp)
/* 1414EC 8024572C AFA0002C */  sw        $zero, 0x2C($sp)
/* 1414F0 80245730 AFA00030 */  sw        $zero, 0x30($sp)
/* 1414F4 80245734 AFA00034 */  sw        $zero, 0x34($sp)
/* 1414F8 80245738 AFA00038 */  sw        $zero, 0x38($sp)
/* 1414FC 8024573C AFA0003C */  sw        $zero, 0x3C($sp)
/* 141500 80245740 AFA00040 */  sw        $zero, 0x40($sp)
/* 141504 80245744 AFA20048 */  sw        $v0, 0x48($sp)
/* 141508 80245748 0C03D51C */  jal       draw_box
/* 14150C 8024574C AFA0004C */   sw       $zero, 0x4C($sp)
/* 141510 80245750 3C168027 */  lui       $s6, %hi(gPauseStatsIconIDs)
/* 141514 80245754 26D6F810 */  addiu     $s6, $s6, %lo(gPauseStatsIconIDs)
/* 141518 80245758 27C60015 */  addiu     $a2, $fp, 0x15
/* 14151C 8024575C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141520 80245760 8EC40000 */  lw        $a0, 0x0($s6)
/* 141524 80245764 0C05268D */  jal       hud_element_set_render_pos
/* 141528 80245768 25050035 */   addiu    $a1, $t0, 0x35
/* 14152C 8024576C 8EC40000 */  lw        $a0, 0x0($s6)
/* 141530 80245770 0C052624 */  jal       hud_element_draw_without_clipping
/* 141534 80245774 27D0000E */   addiu    $s0, $fp, 0xE
/* 141538 80245778 0C09396C */  jal       pause_get_menu_msg
/* 14153C 8024577C 24040043 */   addiu    $a0, $zero, 0x43
/* 141540 80245780 0040202D */  daddu     $a0, $v0, $zero
/* 141544 80245784 0200302D */  daddu     $a2, $s0, $zero
/* 141548 80245788 0220382D */  daddu     $a3, $s1, $zero
/* 14154C 8024578C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141550 80245790 24170001 */  addiu     $s7, $zero, 0x1
/* 141554 80245794 AFA00010 */  sw        $zero, 0x10($sp)
/* 141558 80245798 AFB70014 */  sw        $s7, 0x14($sp)
/* 14155C 8024579C 0C04ADC4 */  jal       draw_msg
/* 141560 802457A0 25050010 */   addiu    $a1, $t0, 0x10
/* 141564 802457A4 0C09396C */  jal       pause_get_menu_msg
/* 141568 802457A8 24040044 */   addiu    $a0, $zero, 0x44
/* 14156C 802457AC 0040202D */  daddu     $a0, $v0, $zero
/* 141570 802457B0 0200302D */  daddu     $a2, $s0, $zero
/* 141574 802457B4 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141578 802457B8 0220382D */  daddu     $a3, $s1, $zero
/* 14157C 802457BC AFA00010 */  sw        $zero, 0x10($sp)
/* 141580 802457C0 AFB70014 */  sw        $s7, 0x14($sp)
/* 141584 802457C4 0C04ADC4 */  jal       draw_msg
/* 141588 802457C8 2505003E */   addiu    $a1, $t0, 0x3E
/* 14158C 802457CC 00142400 */  sll       $a0, $s4, 16
/* 141590 802457D0 00042403 */  sra       $a0, $a0, 16
/* 141594 802457D4 0200302D */  daddu     $a2, $s0, $zero
/* 141598 802457D8 02E0382D */  daddu     $a3, $s7, $zero
/* 14159C 802457DC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 1415A0 802457E0 24020002 */  addiu     $v0, $zero, 0x2
/* 1415A4 802457E4 AFA00010 */  sw        $zero, 0x10($sp)
/* 1415A8 802457E8 AFB10014 */  sw        $s1, 0x14($sp)
/* 1415AC 802457EC AFA20018 */  sw        $v0, 0x18($sp)
/* 1415B0 802457F0 0C04B22C */  jal       draw_number
/* 1415B4 802457F4 2505005C */   addiu    $a1, $t0, 0x5C
/* 1415B8 802457F8 02571021 */  addu      $v0, $s2, $s7
/* 1415BC 802457FC 0040902D */  daddu     $s2, $v0, $zero
/* 1415C0 80245800 00021400 */  sll       $v0, $v0, 16
/* 1415C4 80245804 04420001 */  bltzl     $v0, .LJP_8024580C
/* 1415C8 80245808 0000902D */   daddu    $s2, $zero, $zero
.LJP_8024580C:
/* 1415CC 8024580C 00121400 */  sll       $v0, $s2, 16
/* 1415D0 80245810 00021403 */  sra       $v0, $v0, 16
/* 1415D4 80245814 28420004 */  slti      $v0, $v0, 0x4
/* 1415D8 80245818 50400001 */  beql      $v0, $zero, .LJP_80245820
/* 1415DC 8024581C 24120003 */   addiu    $s2, $zero, 0x3
.LJP_80245820:
/* 1415E0 80245820 26620001 */  addiu     $v0, $s3, 0x1
/* 1415E4 80245824 0040982D */  daddu     $s3, $v0, $zero
/* 1415E8 80245828 00021400 */  sll       $v0, $v0, 16
/* 1415EC 8024582C 04420001 */  bltzl     $v0, .LJP_80245834
/* 1415F0 80245830 0000982D */   daddu    $s3, $zero, $zero
.LJP_80245834:
/* 1415F4 80245834 00131400 */  sll       $v0, $s3, 16
/* 1415F8 80245838 00021403 */  sra       $v0, $v0, 16
/* 1415FC 8024583C 28420004 */  slti      $v0, $v0, 0x4
/* 141600 80245840 50400001 */  beql      $v0, $zero, .LJP_80245848
/* 141604 80245844 24130003 */   addiu    $s3, $zero, 0x3
.LJP_80245848:
/* 141608 80245848 24040003 */  addiu     $a0, $zero, 0x3
/* 14160C 8024584C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141610 80245850 27C6000A */  addiu     $a2, $fp, 0xA
/* 141614 80245854 2510007F */  addiu     $s0, $t0, 0x7F
/* 141618 80245858 0C093971 */  jal       pause_draw_menu_label
/* 14161C 8024585C 0200282D */   daddu    $a1, $s0, $zero
/* 141620 80245860 24040004 */  addiu     $a0, $zero, 0x4
/* 141624 80245864 0200282D */  daddu     $a1, $s0, $zero
/* 141628 80245868 0C093971 */  jal       pause_draw_menu_label
/* 14162C 8024586C 27C60023 */   addiu    $a2, $fp, 0x23
/* 141630 80245870 00128400 */  sll       $s0, $s2, 16
/* 141634 80245874 00108383 */  sra       $s0, $s0, 14
/* 141638 80245878 8EC40004 */  lw        $a0, 0x4($s6)
/* 14163C 8024587C 3C058025 */  lui       $a1, %hi(gStatsBootsElements)
/* 141640 80245880 00B02821 */  addu      $a1, $a1, $s0
/* 141644 80245884 8CA5EA80 */  lw        $a1, %lo(gStatsBootsElements)($a1)
/* 141648 80245888 0C05262B */  jal       hud_element_set_script
/* 14164C 8024588C 24140001 */   addiu    $s4, $zero, 0x1
/* 141650 80245890 27C6001D */  addiu     $a2, $fp, 0x1D
/* 141654 80245894 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141658 80245898 8EC40004 */  lw        $a0, 0x4($s6)
/* 14165C 8024589C 25110097 */  addiu     $s1, $t0, 0x97
/* 141660 802458A0 0C05268D */  jal       hud_element_set_render_pos
/* 141664 802458A4 0220282D */   daddu    $a1, $s1, $zero
/* 141668 802458A8 8EC40004 */  lw        $a0, 0x4($s6)
/* 14166C 802458AC 0C052624 */  jal       hud_element_draw_without_clipping
/* 141670 802458B0 00000000 */   nop
/* 141674 802458B4 3C048025 */  lui       $a0, %hi(gPauseStatsBootsMessages)
/* 141678 802458B8 00902021 */  addu      $a0, $a0, $s0
/* 14167C 802458BC 8C84EAA0 */  lw        $a0, %lo(gPauseStatsBootsMessages)($a0)
/* 141680 802458C0 0C09396C */  jal       pause_get_menu_msg
/* 141684 802458C4 00138400 */   sll      $s0, $s3, 16
/* 141688 802458C8 0040202D */  daddu     $a0, $v0, $zero
/* 14168C 802458CC 27C60017 */  addiu     $a2, $fp, 0x17
/* 141690 802458D0 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141694 802458D4 240700FF */  addiu     $a3, $zero, 0xFF
/* 141698 802458D8 AFA00010 */  sw        $zero, 0x10($sp)
/* 14169C 802458DC AFB70014 */  sw        $s7, 0x14($sp)
/* 1416A0 802458E0 251200A4 */  addiu     $s2, $t0, 0xA4
/* 1416A4 802458E4 0C04ADC4 */  jal       draw_msg
/* 1416A8 802458E8 0240282D */   daddu    $a1, $s2, $zero
/* 1416AC 802458EC 00108383 */  sra       $s0, $s0, 14
/* 1416B0 802458F0 8EC40008 */  lw        $a0, 0x8($s6)
/* 1416B4 802458F4 3C058025 */  lui       $a1, %hi(gStatsHammerElements)
/* 1416B8 802458F8 00B02821 */  addu      $a1, $a1, $s0
/* 1416BC 802458FC 8CA5EA90 */  lw        $a1, %lo(gStatsHammerElements)($a1)
/* 1416C0 80245900 0C05262B */  jal       hud_element_set_script
/* 1416C4 80245904 0000982D */   daddu    $s3, $zero, $zero
/* 1416C8 80245908 0220282D */  daddu     $a1, $s1, $zero
/* 1416CC 8024590C 8EC40008 */  lw        $a0, 0x8($s6)
/* 1416D0 80245910 0C05268D */  jal       hud_element_set_render_pos
/* 1416D4 80245914 27C60036 */   addiu    $a2, $fp, 0x36
/* 1416D8 80245918 8EC40008 */  lw        $a0, 0x8($s6)
/* 1416DC 8024591C 0C052624 */  jal       hud_element_draw_without_clipping
/* 1416E0 80245920 0260A82D */   daddu    $s5, $s3, $zero
/* 1416E4 80245924 3C048025 */  lui       $a0, %hi(gPauseStatsHammerMessages)
/* 1416E8 80245928 00902021 */  addu      $a0, $a0, $s0
/* 1416EC 8024592C 0C09396C */  jal       pause_get_menu_msg
/* 1416F0 80245930 8C84EAB0 */   lw       $a0, %lo(gPauseStatsHammerMessages)($a0)
/* 1416F4 80245934 0040202D */  daddu     $a0, $v0, $zero
/* 1416F8 80245938 0240282D */  daddu     $a1, $s2, $zero
/* 1416FC 8024593C 27C60030 */  addiu     $a2, $fp, 0x30
/* 141700 80245940 240700FF */  addiu     $a3, $zero, 0xFF
/* 141704 80245944 AFA00010 */  sw        $zero, 0x10($sp)
/* 141708 80245948 0C04ADC4 */  jal       draw_msg
/* 14170C 8024594C AFB70014 */   sw       $s7, 0x14($sp)
/* 141710 80245950 24040006 */  addiu     $a0, $zero, 0x6
/* 141714 80245954 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141718 80245958 27C60045 */  addiu     $a2, $fp, 0x45
/* 14171C 8024595C 25100080 */  addiu     $s0, $t0, 0x80
/* 141720 80245960 0C093971 */  jal       pause_draw_menu_label
/* 141724 80245964 0200282D */   daddu    $a1, $s0, $zero
/* 141728 80245968 24040005 */  addiu     $a0, $zero, 0x5
/* 14172C 8024596C 0200282D */  daddu     $a1, $s0, $zero
/* 141730 80245970 0C093971 */  jal       pause_draw_menu_label
/* 141734 80245974 27C6003C */   addiu    $a2, $fp, 0x3C
/* 141738 80245978 3C178011 */  lui       $s7, %hi(gPlayerData)
/* 14173C 8024597C 26F7F450 */  addiu     $s7, $s7, %lo(gPlayerData)
/* 141740 80245980 0260902D */  daddu     $s2, $s3, $zero
/* 141744 80245984 86E30290 */  lh        $v1, 0x290($s7)
/* 141748 80245988 8ED10028 */  lw        $s1, 0x28($s6)
/* 14174C 8024598C 04610002 */  bgez      $v1, .LJP_80245998
/* 141750 80245990 0060102D */   daddu    $v0, $v1, $zero
/* 141754 80245994 246200FF */  addiu     $v0, $v1, 0xFF
.LJP_80245998:
/* 141758 80245998 00021203 */  sra       $v0, $v0, 8
/* 14175C 8024599C 0040202D */  daddu     $a0, $v0, $zero
/* 141760 802459A0 00041200 */  sll       $v0, $a0, 8
/* 141764 802459A4 00621023 */  subu      $v0, $v1, $v0
/* 141768 802459A8 00021400 */  sll       $v0, $v0, 16
/* 14176C 802459AC 0002B403 */  sra       $s6, $v0, 16
/* 141770 802459B0 06C10002 */  bgez      $s6, .LJP_802459BC
/* 141774 802459B4 02C0102D */   daddu    $v0, $s6, $zero
/* 141778 802459B8 26C2001F */  addiu     $v0, $s6, 0x1F
.LJP_802459BC:
/* 14177C 802459BC 0002B143 */  sra       $s6, $v0, 5
/* 141780 802459C0 000410C0 */  sll       $v0, $a0, 3
/* 141784 802459C4 02C2B021 */  addu      $s6, $s6, $v0
/* 141788 802459C8 02B6102A */  slt       $v0, $s5, $s6
/* 14178C 802459CC 104000E7 */  beqz      $v0, .LJP_80245D6C
/* 141790 802459D0 00000000 */   nop
.LJP_802459D4:
/* 141794 802459D4 26730001 */  addiu     $s3, $s3, 0x1
/* 141798 802459D8 00158080 */  sll       $s0, $s5, 2
/* 14179C 802459DC 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 1417A0 802459E0 00B02821 */  addu      $a1, $a1, $s0
/* 1417A4 802459E4 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 1417A8 802459E8 0C05262B */  jal       hud_element_set_script
/* 1417AC 802459EC 0220202D */   daddu    $a0, $s1, $zero
/* 1417B0 802459F0 0220202D */  daddu     $a0, $s1, $zero
/* 1417B4 802459F4 27C6004B */  addiu     $a2, $fp, 0x4B
/* 1417B8 802459F8 02158021 */  addu      $s0, $s0, $s5
/* 1417BC 802459FC 00108080 */  sll       $s0, $s0, 2
/* 1417C0 80245A00 2610008A */  addiu     $s0, $s0, 0x8A
/* 1417C4 80245A04 8FA8008C */  lw        $t0, 0x8C($sp)
/* 1417C8 80245A08 3C058025 */  lui       $a1, %hi(D_8024F46C)
/* 1417CC 80245A0C 8CA5EB8C */  lw        $a1, %lo(D_8024F46C)($a1)
/* 1417D0 80245A10 01108021 */  addu      $s0, $t0, $s0
/* 1417D4 80245A14 0C05268D */  jal       hud_element_set_render_pos
/* 1417D8 80245A18 02052821 */   addu     $a1, $s0, $a1
/* 1417DC 80245A1C 12800005 */  beqz      $s4, .LJP_80245A34
/* 1417E0 80245A20 00000000 */   nop
/* 1417E4 80245A24 0C052624 */  jal       hud_element_draw_without_clipping
/* 1417E8 80245A28 0220202D */   daddu    $a0, $s1, $zero
/* 1417EC 80245A2C 0809168F */  j         .LJP_80245A3C
/* 1417F0 80245A30 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245A34:
/* 1417F4 80245A34 0C05261D */  jal       hud_element_draw_next
/* 1417F8 80245A38 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245A3C:
/* 1417FC 80245A3C 0276102A */  slt       $v0, $s3, $s6
/* 141800 80245A40 104000CA */  beqz      $v0, .LJP_80245D6C
/* 141804 80245A44 26520001 */   addiu    $s2, $s2, 0x1
/* 141808 80245A48 26730001 */  addiu     $s3, $s3, 0x1
/* 14180C 80245A4C 00158080 */  sll       $s0, $s5, 2
/* 141810 80245A50 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 141814 80245A54 00B02821 */  addu      $a1, $a1, $s0
/* 141818 80245A58 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 14181C 80245A5C 0C05262B */  jal       hud_element_set_script
/* 141820 80245A60 0220202D */   daddu    $a0, $s1, $zero
/* 141824 80245A64 0220202D */  daddu     $a0, $s1, $zero
/* 141828 80245A68 27C6004B */  addiu     $a2, $fp, 0x4B
/* 14182C 80245A6C 02158021 */  addu      $s0, $s0, $s5
/* 141830 80245A70 00108080 */  sll       $s0, $s0, 2
/* 141834 80245A74 2610008A */  addiu     $s0, $s0, 0x8A
/* 141838 80245A78 8FA8008C */  lw        $t0, 0x8C($sp)
/* 14183C 80245A7C 3C058025 */  lui       $a1, %hi(D_JP_8024EB90)
/* 141840 80245A80 8CA5EB90 */  lw        $a1, %lo(D_JP_8024EB90)($a1)
/* 141844 80245A84 01108021 */  addu      $s0, $t0, $s0
/* 141848 80245A88 0C05268D */  jal       hud_element_set_render_pos
/* 14184C 80245A8C 02052821 */   addu     $a1, $s0, $a1
/* 141850 80245A90 12800005 */  beqz      $s4, .LJP_80245AA8
/* 141854 80245A94 00000000 */   nop
/* 141858 80245A98 0C052624 */  jal       hud_element_draw_without_clipping
/* 14185C 80245A9C 0220202D */   daddu    $a0, $s1, $zero
/* 141860 80245AA0 080916AC */  j         .LJP_80245AB0
/* 141864 80245AA4 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245AA8:
/* 141868 80245AA8 0C05261D */  jal       hud_element_draw_next
/* 14186C 80245AAC 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245AB0:
/* 141870 80245AB0 0276102A */  slt       $v0, $s3, $s6
/* 141874 80245AB4 104000AD */  beqz      $v0, .LJP_80245D6C
/* 141878 80245AB8 26520001 */   addiu    $s2, $s2, 0x1
/* 14187C 80245ABC 26730001 */  addiu     $s3, $s3, 0x1
/* 141880 80245AC0 00158080 */  sll       $s0, $s5, 2
/* 141884 80245AC4 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 141888 80245AC8 00B02821 */  addu      $a1, $a1, $s0
/* 14188C 80245ACC 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 141890 80245AD0 0C05262B */  jal       hud_element_set_script
/* 141894 80245AD4 0220202D */   daddu    $a0, $s1, $zero
/* 141898 80245AD8 0220202D */  daddu     $a0, $s1, $zero
/* 14189C 80245ADC 27C6004B */  addiu     $a2, $fp, 0x4B
/* 1418A0 80245AE0 02158021 */  addu      $s0, $s0, $s5
/* 1418A4 80245AE4 00108080 */  sll       $s0, $s0, 2
/* 1418A8 80245AE8 2610008A */  addiu     $s0, $s0, 0x8A
/* 1418AC 80245AEC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 1418B0 80245AF0 3C058025 */  lui       $a1, %hi(D_JP_8024EB94)
/* 1418B4 80245AF4 8CA5EB94 */  lw        $a1, %lo(D_JP_8024EB94)($a1)
/* 1418B8 80245AF8 01108021 */  addu      $s0, $t0, $s0
/* 1418BC 80245AFC 0C05268D */  jal       hud_element_set_render_pos
/* 1418C0 80245B00 02052821 */   addu     $a1, $s0, $a1
/* 1418C4 80245B04 12800005 */  beqz      $s4, .LJP_80245B1C
/* 1418C8 80245B08 00000000 */   nop
/* 1418CC 80245B0C 0C052624 */  jal       hud_element_draw_without_clipping
/* 1418D0 80245B10 0220202D */   daddu    $a0, $s1, $zero
/* 1418D4 80245B14 080916C9 */  j         .LJP_80245B24
/* 1418D8 80245B18 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245B1C:
/* 1418DC 80245B1C 0C05261D */  jal       hud_element_draw_next
/* 1418E0 80245B20 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245B24:
/* 1418E4 80245B24 0276102A */  slt       $v0, $s3, $s6
/* 1418E8 80245B28 10400090 */  beqz      $v0, .LJP_80245D6C
/* 1418EC 80245B2C 26520001 */   addiu    $s2, $s2, 0x1
/* 1418F0 80245B30 26730001 */  addiu     $s3, $s3, 0x1
/* 1418F4 80245B34 00158080 */  sll       $s0, $s5, 2
/* 1418F8 80245B38 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 1418FC 80245B3C 00B02821 */  addu      $a1, $a1, $s0
/* 141900 80245B40 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 141904 80245B44 0C05262B */  jal       hud_element_set_script
/* 141908 80245B48 0220202D */   daddu    $a0, $s1, $zero
/* 14190C 80245B4C 0220202D */  daddu     $a0, $s1, $zero
/* 141910 80245B50 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141914 80245B54 02158021 */  addu      $s0, $s0, $s5
/* 141918 80245B58 00108080 */  sll       $s0, $s0, 2
/* 14191C 80245B5C 2610008A */  addiu     $s0, $s0, 0x8A
/* 141920 80245B60 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141924 80245B64 3C058025 */  lui       $a1, %hi(D_JP_8024EB98)
/* 141928 80245B68 8CA5EB98 */  lw        $a1, %lo(D_JP_8024EB98)($a1)
/* 14192C 80245B6C 01108021 */  addu      $s0, $t0, $s0
/* 141930 80245B70 0C05268D */  jal       hud_element_set_render_pos
/* 141934 80245B74 02052821 */   addu     $a1, $s0, $a1
/* 141938 80245B78 12800005 */  beqz      $s4, .LJP_80245B90
/* 14193C 80245B7C 00000000 */   nop
/* 141940 80245B80 0C052624 */  jal       hud_element_draw_without_clipping
/* 141944 80245B84 0220202D */   daddu    $a0, $s1, $zero
/* 141948 80245B88 080916E6 */  j         .LJP_80245B98
/* 14194C 80245B8C 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245B90:
/* 141950 80245B90 0C05261D */  jal       hud_element_draw_next
/* 141954 80245B94 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245B98:
/* 141958 80245B98 0276102A */  slt       $v0, $s3, $s6
/* 14195C 80245B9C 10400073 */  beqz      $v0, .LJP_80245D6C
/* 141960 80245BA0 26520001 */   addiu    $s2, $s2, 0x1
/* 141964 80245BA4 26730001 */  addiu     $s3, $s3, 0x1
/* 141968 80245BA8 00158080 */  sll       $s0, $s5, 2
/* 14196C 80245BAC 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 141970 80245BB0 00B02821 */  addu      $a1, $a1, $s0
/* 141974 80245BB4 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 141978 80245BB8 0C05262B */  jal       hud_element_set_script
/* 14197C 80245BBC 0220202D */   daddu    $a0, $s1, $zero
/* 141980 80245BC0 0220202D */  daddu     $a0, $s1, $zero
/* 141984 80245BC4 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141988 80245BC8 02158021 */  addu      $s0, $s0, $s5
/* 14198C 80245BCC 00108080 */  sll       $s0, $s0, 2
/* 141990 80245BD0 2610008A */  addiu     $s0, $s0, 0x8A
/* 141994 80245BD4 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141998 80245BD8 3C058025 */  lui       $a1, %hi(D_JP_8024EB9C)
/* 14199C 80245BDC 8CA5EB9C */  lw        $a1, %lo(D_JP_8024EB9C)($a1)
/* 1419A0 80245BE0 01108021 */  addu      $s0, $t0, $s0
/* 1419A4 80245BE4 0C05268D */  jal       hud_element_set_render_pos
/* 1419A8 80245BE8 02052821 */   addu     $a1, $s0, $a1
/* 1419AC 80245BEC 12800005 */  beqz      $s4, .LJP_80245C04
/* 1419B0 80245BF0 00000000 */   nop
/* 1419B4 80245BF4 0C052624 */  jal       hud_element_draw_without_clipping
/* 1419B8 80245BF8 0220202D */   daddu    $a0, $s1, $zero
/* 1419BC 80245BFC 08091703 */  j         .LJP_80245C0C
/* 1419C0 80245C00 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245C04:
/* 1419C4 80245C04 0C05261D */  jal       hud_element_draw_next
/* 1419C8 80245C08 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245C0C:
/* 1419CC 80245C0C 0276102A */  slt       $v0, $s3, $s6
/* 1419D0 80245C10 10400056 */  beqz      $v0, .LJP_80245D6C
/* 1419D4 80245C14 26520001 */   addiu    $s2, $s2, 0x1
/* 1419D8 80245C18 26730001 */  addiu     $s3, $s3, 0x1
/* 1419DC 80245C1C 00158080 */  sll       $s0, $s5, 2
/* 1419E0 80245C20 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 1419E4 80245C24 00B02821 */  addu      $a1, $a1, $s0
/* 1419E8 80245C28 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 1419EC 80245C2C 0C05262B */  jal       hud_element_set_script
/* 1419F0 80245C30 0220202D */   daddu    $a0, $s1, $zero
/* 1419F4 80245C34 0220202D */  daddu     $a0, $s1, $zero
/* 1419F8 80245C38 27C6004B */  addiu     $a2, $fp, 0x4B
/* 1419FC 80245C3C 02158021 */  addu      $s0, $s0, $s5
/* 141A00 80245C40 00108080 */  sll       $s0, $s0, 2
/* 141A04 80245C44 2610008A */  addiu     $s0, $s0, 0x8A
/* 141A08 80245C48 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141A0C 80245C4C 3C058025 */  lui       $a1, %hi(D_JP_8024EBA0)
/* 141A10 80245C50 8CA5EBA0 */  lw        $a1, %lo(D_JP_8024EBA0)($a1)
/* 141A14 80245C54 01108021 */  addu      $s0, $t0, $s0
/* 141A18 80245C58 0C05268D */  jal       hud_element_set_render_pos
/* 141A1C 80245C5C 02052821 */   addu     $a1, $s0, $a1
/* 141A20 80245C60 12800005 */  beqz      $s4, .LJP_80245C78
/* 141A24 80245C64 00000000 */   nop
/* 141A28 80245C68 0C052624 */  jal       hud_element_draw_without_clipping
/* 141A2C 80245C6C 0220202D */   daddu    $a0, $s1, $zero
/* 141A30 80245C70 08091720 */  j         .LJP_80245C80
/* 141A34 80245C74 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245C78:
/* 141A38 80245C78 0C05261D */  jal       hud_element_draw_next
/* 141A3C 80245C7C 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245C80:
/* 141A40 80245C80 0276102A */  slt       $v0, $s3, $s6
/* 141A44 80245C84 10400039 */  beqz      $v0, .LJP_80245D6C
/* 141A48 80245C88 26520001 */   addiu    $s2, $s2, 0x1
/* 141A4C 80245C8C 26730001 */  addiu     $s3, $s3, 0x1
/* 141A50 80245C90 00158080 */  sll       $s0, $s5, 2
/* 141A54 80245C94 3C058025 */  lui       $a1, %hi(gPauseStatsSPIncElements)
/* 141A58 80245C98 00B02821 */  addu      $a1, $a1, $s0
/* 141A5C 80245C9C 8CA5EB54 */  lw        $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 141A60 80245CA0 0C05262B */  jal       hud_element_set_script
/* 141A64 80245CA4 0220202D */   daddu    $a0, $s1, $zero
/* 141A68 80245CA8 0220202D */  daddu     $a0, $s1, $zero
/* 141A6C 80245CAC 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141A70 80245CB0 02158021 */  addu      $s0, $s0, $s5
/* 141A74 80245CB4 00108080 */  sll       $s0, $s0, 2
/* 141A78 80245CB8 2610008A */  addiu     $s0, $s0, 0x8A
/* 141A7C 80245CBC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141A80 80245CC0 3C058025 */  lui       $a1, %hi(D_JP_8024EBA4)
/* 141A84 80245CC4 8CA5EBA4 */  lw        $a1, %lo(D_JP_8024EBA4)($a1)
/* 141A88 80245CC8 01108021 */  addu      $s0, $t0, $s0
/* 141A8C 80245CCC 0C05268D */  jal       hud_element_set_render_pos
/* 141A90 80245CD0 02052821 */   addu     $a1, $s0, $a1
/* 141A94 80245CD4 12800005 */  beqz      $s4, .LJP_80245CEC
/* 141A98 80245CD8 00000000 */   nop
/* 141A9C 80245CDC 0C052624 */  jal       hud_element_draw_without_clipping
/* 141AA0 80245CE0 0220202D */   daddu    $a0, $s1, $zero
/* 141AA4 80245CE4 0809173D */  j         .LJP_80245CF4
/* 141AA8 80245CE8 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245CEC:
/* 141AAC 80245CEC 0C05261D */  jal       hud_element_draw_next
/* 141AB0 80245CF0 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245CF4:
/* 141AB4 80245CF4 0276102A */  slt       $v0, $s3, $s6
/* 141AB8 80245CF8 1040001C */  beqz      $v0, .LJP_80245D6C
/* 141ABC 80245CFC 26520001 */   addiu    $s2, $s2, 0x1
/* 141AC0 80245D00 26730001 */  addiu     $s3, $s3, 0x1
/* 141AC4 80245D04 00158080 */  sll       $s0, $s5, 2
/* 141AC8 80245D08 3C058025 */  lui       $a1, %hi(gPauseStatsStarElements)
/* 141ACC 80245D0C 00B02821 */  addu      $a1, $a1, $s0
/* 141AD0 80245D10 8CA5EB70 */  lw        $a1, %lo(gPauseStatsStarElements)($a1)
/* 141AD4 80245D14 0C05262B */  jal       hud_element_set_script
/* 141AD8 80245D18 0220202D */   daddu    $a0, $s1, $zero
/* 141ADC 80245D1C 0220202D */  daddu     $a0, $s1, $zero
/* 141AE0 80245D20 02158021 */  addu      $s0, $s0, $s5
/* 141AE4 80245D24 00108080 */  sll       $s0, $s0, 2
/* 141AE8 80245D28 26100096 */  addiu     $s0, $s0, 0x96
/* 141AEC 80245D2C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141AF0 80245D30 27C6004D */  addiu     $a2, $fp, 0x4D
/* 141AF4 80245D34 0C05268D */  jal       hud_element_set_render_pos
/* 141AF8 80245D38 01102821 */   addu     $a1, $t0, $s0
/* 141AFC 80245D3C 12800005 */  beqz      $s4, .LJP_80245D54
/* 141B00 80245D40 00000000 */   nop
/* 141B04 80245D44 0C052624 */  jal       hud_element_draw_without_clipping
/* 141B08 80245D48 0220202D */   daddu    $a0, $s1, $zero
/* 141B0C 80245D4C 08091757 */  j         .LJP_80245D5C
/* 141B10 80245D50 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245D54:
/* 141B14 80245D54 0C05261D */  jal       hud_element_draw_next
/* 141B18 80245D58 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245D5C:
/* 141B1C 80245D5C 0000902D */  daddu     $s2, $zero, $zero
/* 141B20 80245D60 0276102A */  slt       $v0, $s3, $s6
/* 141B24 80245D64 1440FF1B */  bnez      $v0, .LJP_802459D4
/* 141B28 80245D68 26B50001 */   addiu    $s5, $s5, 0x1
.LJP_80245D6C:
/* 141B2C 80245D6C 82E4028E */  lb        $a0, 0x28E($s7)
/* 141B30 80245D70 3C178025 */  lui       $s7, %hi(D_8024F46C)
/* 141B34 80245D74 26F7EB8C */  addiu     $s7, $s7, %lo(D_8024F46C)
/* 141B38 80245D78 00151080 */  sll       $v0, $s5, 2
/* 141B3C 80245D7C 00551021 */  addu      $v0, $v0, $s5
/* 141B40 80245D80 00021080 */  sll       $v0, $v0, 2
/* 141B44 80245D84 24550096 */  addiu     $s5, $v0, 0x96
/* 141B48 80245D88 2450008A */  addiu     $s0, $v0, 0x8A
/* 141B4C 80245D8C 0004B0C0 */  sll       $s6, $a0, 3
.LJP_80245D90:
/* 141B50 80245D90 0276102A */  slt       $v0, $s3, $s6
/* 141B54 80245D94 104000D2 */  beqz      $v0, .LJP_802460E0
/* 141B58 80245D98 00000000 */   nop
/* 141B5C 80245D9C 1640001A */  bnez      $s2, .LJP_80245E08
/* 141B60 80245DA0 24020001 */   addiu    $v0, $zero, 0x1
/* 141B64 80245DA4 26730001 */  addiu     $s3, $s3, 0x1
/* 141B68 80245DA8 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141B6C 80245DAC 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141B70 80245DB0 0C05262B */  jal       hud_element_set_script
/* 141B74 80245DB4 0220202D */   daddu    $a0, $s1, $zero
/* 141B78 80245DB8 0220202D */  daddu     $a0, $s1, $zero
/* 141B7C 80245DBC 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141B80 80245DC0 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141B84 80245DC4 3C028025 */  lui       $v0, %hi(D_8024F46C)
/* 141B88 80245DC8 8C42EB8C */  lw        $v0, %lo(D_8024F46C)($v0)
/* 141B8C 80245DCC 01102821 */  addu      $a1, $t0, $s0
/* 141B90 80245DD0 0C05268D */  jal       hud_element_set_render_pos
/* 141B94 80245DD4 00A22821 */   addu     $a1, $a1, $v0
/* 141B98 80245DD8 12800005 */  beqz      $s4, .LJP_80245DF0
/* 141B9C 80245DDC 00000000 */   nop
/* 141BA0 80245DE0 0C052624 */  jal       hud_element_draw_without_clipping
/* 141BA4 80245DE4 0220202D */   daddu    $a0, $s1, $zero
/* 141BA8 80245DE8 0809177E */  j         .LJP_80245DF8
/* 141BAC 80245DEC 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245DF0:
/* 141BB0 80245DF0 0C05261D */  jal       hud_element_draw_next
/* 141BB4 80245DF4 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245DF8:
/* 141BB8 80245DF8 0276102A */  slt       $v0, $s3, $s6
/* 141BBC 80245DFC 104000B8 */  beqz      $v0, .LJP_802460E0
/* 141BC0 80245E00 26520001 */   addiu    $s2, $s2, 0x1
/* 141BC4 80245E04 24020001 */  addiu     $v0, $zero, 0x1
.LJP_80245E08:
/* 141BC8 80245E08 56420019 */  bnel      $s2, $v0, .LJP_80245E70
/* 141BCC 80245E0C 24020002 */   addiu    $v0, $zero, 0x2
/* 141BD0 80245E10 02629821 */  addu      $s3, $s3, $v0
/* 141BD4 80245E14 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141BD8 80245E18 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141BDC 80245E1C 0C05262B */  jal       hud_element_set_script
/* 141BE0 80245E20 0220202D */   daddu    $a0, $s1, $zero
/* 141BE4 80245E24 0220202D */  daddu     $a0, $s1, $zero
/* 141BE8 80245E28 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141BEC 80245E2C 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141BF0 80245E30 8EE20004 */  lw        $v0, 0x4($s7)
/* 141BF4 80245E34 01102821 */  addu      $a1, $t0, $s0
/* 141BF8 80245E38 0C05268D */  jal       hud_element_set_render_pos
/* 141BFC 80245E3C 00A22821 */   addu     $a1, $a1, $v0
/* 141C00 80245E40 12800005 */  beqz      $s4, .LJP_80245E58
/* 141C04 80245E44 00000000 */   nop
/* 141C08 80245E48 0C052624 */  jal       hud_element_draw_without_clipping
/* 141C0C 80245E4C 0220202D */   daddu    $a0, $s1, $zero
/* 141C10 80245E50 08091798 */  j         .LJP_80245E60
/* 141C14 80245E54 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245E58:
/* 141C18 80245E58 0C05261D */  jal       hud_element_draw_next
/* 141C1C 80245E5C 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245E60:
/* 141C20 80245E60 0276102A */  slt       $v0, $s3, $s6
/* 141C24 80245E64 1040009E */  beqz      $v0, .LJP_802460E0
/* 141C28 80245E68 26520001 */   addiu    $s2, $s2, 0x1
/* 141C2C 80245E6C 24020002 */  addiu     $v0, $zero, 0x2
.LJP_80245E70:
/* 141C30 80245E70 16420019 */  bne       $s2, $v0, .LJP_80245ED8
/* 141C34 80245E74 24020003 */   addiu    $v0, $zero, 0x3
/* 141C38 80245E78 26730001 */  addiu     $s3, $s3, 0x1
/* 141C3C 80245E7C 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141C40 80245E80 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141C44 80245E84 0C05262B */  jal       hud_element_set_script
/* 141C48 80245E88 0220202D */   daddu    $a0, $s1, $zero
/* 141C4C 80245E8C 0220202D */  daddu     $a0, $s1, $zero
/* 141C50 80245E90 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141C54 80245E94 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141C58 80245E98 8EE20008 */  lw        $v0, 0x8($s7)
/* 141C5C 80245E9C 01102821 */  addu      $a1, $t0, $s0
/* 141C60 80245EA0 0C05268D */  jal       hud_element_set_render_pos
/* 141C64 80245EA4 00A22821 */   addu     $a1, $a1, $v0
/* 141C68 80245EA8 12800005 */  beqz      $s4, .LJP_80245EC0
/* 141C6C 80245EAC 00000000 */   nop
/* 141C70 80245EB0 0C052624 */  jal       hud_element_draw_without_clipping
/* 141C74 80245EB4 0220202D */   daddu    $a0, $s1, $zero
/* 141C78 80245EB8 080917B2 */  j         .LJP_80245EC8
/* 141C7C 80245EBC 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245EC0:
/* 141C80 80245EC0 0C05261D */  jal       hud_element_draw_next
/* 141C84 80245EC4 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245EC8:
/* 141C88 80245EC8 0276102A */  slt       $v0, $s3, $s6
/* 141C8C 80245ECC 10400084 */  beqz      $v0, .LJP_802460E0
/* 141C90 80245ED0 26520001 */   addiu    $s2, $s2, 0x1
/* 141C94 80245ED4 24020003 */  addiu     $v0, $zero, 0x3
.LJP_80245ED8:
/* 141C98 80245ED8 16420019 */  bne       $s2, $v0, .LJP_80245F40
/* 141C9C 80245EDC 24020004 */   addiu    $v0, $zero, 0x4
/* 141CA0 80245EE0 26730001 */  addiu     $s3, $s3, 0x1
/* 141CA4 80245EE4 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141CA8 80245EE8 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141CAC 80245EEC 0C05262B */  jal       hud_element_set_script
/* 141CB0 80245EF0 0220202D */   daddu    $a0, $s1, $zero
/* 141CB4 80245EF4 0220202D */  daddu     $a0, $s1, $zero
/* 141CB8 80245EF8 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141CBC 80245EFC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141CC0 80245F00 8EE2000C */  lw        $v0, 0xC($s7)
/* 141CC4 80245F04 01102821 */  addu      $a1, $t0, $s0
/* 141CC8 80245F08 0C05268D */  jal       hud_element_set_render_pos
/* 141CCC 80245F0C 00A22821 */   addu     $a1, $a1, $v0
/* 141CD0 80245F10 12800005 */  beqz      $s4, .LJP_80245F28
/* 141CD4 80245F14 00000000 */   nop
/* 141CD8 80245F18 0C052624 */  jal       hud_element_draw_without_clipping
/* 141CDC 80245F1C 0220202D */   daddu    $a0, $s1, $zero
/* 141CE0 80245F20 080917CC */  j         .LJP_80245F30
/* 141CE4 80245F24 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245F28:
/* 141CE8 80245F28 0C05261D */  jal       hud_element_draw_next
/* 141CEC 80245F2C 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245F30:
/* 141CF0 80245F30 0276102A */  slt       $v0, $s3, $s6
/* 141CF4 80245F34 1040006A */  beqz      $v0, .LJP_802460E0
/* 141CF8 80245F38 26520001 */   addiu    $s2, $s2, 0x1
/* 141CFC 80245F3C 24020004 */  addiu     $v0, $zero, 0x4
.LJP_80245F40:
/* 141D00 80245F40 16420019 */  bne       $s2, $v0, .LJP_80245FA8
/* 141D04 80245F44 24020005 */   addiu    $v0, $zero, 0x5
/* 141D08 80245F48 26730001 */  addiu     $s3, $s3, 0x1
/* 141D0C 80245F4C 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141D10 80245F50 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141D14 80245F54 0C05262B */  jal       hud_element_set_script
/* 141D18 80245F58 0220202D */   daddu    $a0, $s1, $zero
/* 141D1C 80245F5C 0220202D */  daddu     $a0, $s1, $zero
/* 141D20 80245F60 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141D24 80245F64 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141D28 80245F68 8EE20010 */  lw        $v0, 0x10($s7)
/* 141D2C 80245F6C 01102821 */  addu      $a1, $t0, $s0
/* 141D30 80245F70 0C05268D */  jal       hud_element_set_render_pos
/* 141D34 80245F74 00A22821 */   addu     $a1, $a1, $v0
/* 141D38 80245F78 12800005 */  beqz      $s4, .LJP_80245F90
/* 141D3C 80245F7C 00000000 */   nop
/* 141D40 80245F80 0C052624 */  jal       hud_element_draw_without_clipping
/* 141D44 80245F84 0220202D */   daddu    $a0, $s1, $zero
/* 141D48 80245F88 080917E6 */  j         .LJP_80245F98
/* 141D4C 80245F8C 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245F90:
/* 141D50 80245F90 0C05261D */  jal       hud_element_draw_next
/* 141D54 80245F94 0220202D */   daddu    $a0, $s1, $zero
.LJP_80245F98:
/* 141D58 80245F98 0276102A */  slt       $v0, $s3, $s6
/* 141D5C 80245F9C 10400050 */  beqz      $v0, .LJP_802460E0
/* 141D60 80245FA0 26520001 */   addiu    $s2, $s2, 0x1
/* 141D64 80245FA4 24020005 */  addiu     $v0, $zero, 0x5
.LJP_80245FA8:
/* 141D68 80245FA8 16420019 */  bne       $s2, $v0, .LJP_80246010
/* 141D6C 80245FAC 24020006 */   addiu    $v0, $zero, 0x6
/* 141D70 80245FB0 26730001 */  addiu     $s3, $s3, 0x1
/* 141D74 80245FB4 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141D78 80245FB8 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141D7C 80245FBC 0C05262B */  jal       hud_element_set_script
/* 141D80 80245FC0 0220202D */   daddu    $a0, $s1, $zero
/* 141D84 80245FC4 0220202D */  daddu     $a0, $s1, $zero
/* 141D88 80245FC8 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141D8C 80245FCC 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141D90 80245FD0 8EE20014 */  lw        $v0, 0x14($s7)
/* 141D94 80245FD4 01102821 */  addu      $a1, $t0, $s0
/* 141D98 80245FD8 0C05268D */  jal       hud_element_set_render_pos
/* 141D9C 80245FDC 00A22821 */   addu     $a1, $a1, $v0
/* 141DA0 80245FE0 12800005 */  beqz      $s4, .LJP_80245FF8
/* 141DA4 80245FE4 00000000 */   nop
/* 141DA8 80245FE8 0C052624 */  jal       hud_element_draw_without_clipping
/* 141DAC 80245FEC 0220202D */   daddu    $a0, $s1, $zero
/* 141DB0 80245FF0 08091800 */  j         .LJP_80246000
/* 141DB4 80245FF4 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80245FF8:
/* 141DB8 80245FF8 0C05261D */  jal       hud_element_draw_next
/* 141DBC 80245FFC 0220202D */   daddu    $a0, $s1, $zero
.LJP_80246000:
/* 141DC0 80246000 0276102A */  slt       $v0, $s3, $s6
/* 141DC4 80246004 10400036 */  beqz      $v0, .LJP_802460E0
/* 141DC8 80246008 26520001 */   addiu    $s2, $s2, 0x1
/* 141DCC 8024600C 24020006 */  addiu     $v0, $zero, 0x6
.LJP_80246010:
/* 141DD0 80246010 16420019 */  bne       $s2, $v0, .LJP_80246078
/* 141DD4 80246014 24020007 */   addiu    $v0, $zero, 0x7
/* 141DD8 80246018 26730001 */  addiu     $s3, $s3, 0x1
/* 141DDC 8024601C 3C058011 */  lui       $a1, %hi(HES_StatusSPEmptyIncrement)
/* 141DE0 80246020 24A58540 */  addiu     $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 141DE4 80246024 0C05262B */  jal       hud_element_set_script
/* 141DE8 80246028 0220202D */   daddu    $a0, $s1, $zero
/* 141DEC 8024602C 0220202D */  daddu     $a0, $s1, $zero
/* 141DF0 80246030 27C6004B */  addiu     $a2, $fp, 0x4B
/* 141DF4 80246034 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141DF8 80246038 8EE20018 */  lw        $v0, 0x18($s7)
/* 141DFC 8024603C 01102821 */  addu      $a1, $t0, $s0
/* 141E00 80246040 0C05268D */  jal       hud_element_set_render_pos
/* 141E04 80246044 00A22821 */   addu     $a1, $a1, $v0
/* 141E08 80246048 12800005 */  beqz      $s4, .LJP_80246060
/* 141E0C 8024604C 00000000 */   nop
/* 141E10 80246050 0C052624 */  jal       hud_element_draw_without_clipping
/* 141E14 80246054 0220202D */   daddu    $a0, $s1, $zero
/* 141E18 80246058 0809181A */  j         .LJP_80246068
/* 141E1C 8024605C 0000A02D */   daddu    $s4, $zero, $zero
.LJP_80246060:
/* 141E20 80246060 0C05261D */  jal       hud_element_draw_next
/* 141E24 80246064 0220202D */   daddu    $a0, $s1, $zero
.LJP_80246068:
/* 141E28 80246068 0276102A */  slt       $v0, $s3, $s6
/* 141E2C 8024606C 1040001C */  beqz      $v0, .LJP_802460E0
/* 141E30 80246070 26520001 */   addiu    $s2, $s2, 0x1
/* 141E34 80246074 24020007 */  addiu     $v0, $zero, 0x7
.LJP_80246078:
/* 141E38 80246078 56420016 */  bnel      $s2, $v0, .LJP_802460D4
/* 141E3C 8024607C 0000902D */   daddu    $s2, $zero, $zero
/* 141E40 80246080 26730001 */  addiu     $s3, $s3, 0x1
/* 141E44 80246084 3C058011 */  lui       $a1, %hi(HES_StatusStarEmpty)
/* 141E48 80246088 24A58680 */  addiu     $a1, $a1, %lo(HES_StatusStarEmpty)
/* 141E4C 8024608C 0C05262B */  jal       hud_element_set_script
/* 141E50 80246090 0220202D */   daddu    $a0, $s1, $zero
/* 141E54 80246094 0220202D */  daddu     $a0, $s1, $zero
/* 141E58 80246098 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141E5C 8024609C 27C6004D */  addiu     $a2, $fp, 0x4D
/* 141E60 802460A0 0C05268D */  jal       hud_element_set_render_pos
/* 141E64 802460A4 01152821 */   addu     $a1, $t0, $s5
/* 141E68 802460A8 12800005 */  beqz      $s4, .LJP_802460C0
/* 141E6C 802460AC 00000000 */   nop
/* 141E70 802460B0 0C052624 */  jal       hud_element_draw_without_clipping
/* 141E74 802460B4 0220202D */   daddu    $a0, $s1, $zero
/* 141E78 802460B8 08091832 */  j         .LJP_802460C8
/* 141E7C 802460BC 0000A02D */   daddu    $s4, $zero, $zero
.LJP_802460C0:
/* 141E80 802460C0 0C05261D */  jal       hud_element_draw_next
/* 141E84 802460C4 0220202D */   daddu    $a0, $s1, $zero
.LJP_802460C8:
/* 141E88 802460C8 0276102A */  slt       $v0, $s3, $s6
/* 141E8C 802460CC 10400004 */  beqz      $v0, .LJP_802460E0
/* 141E90 802460D0 0000902D */   daddu    $s2, $zero, $zero
.LJP_802460D4:
/* 141E94 802460D4 26B50014 */  addiu     $s5, $s5, 0x14
/* 141E98 802460D8 08091764 */  j         .LJP_80245D90
/* 141E9C 802460DC 26100014 */   addiu    $s0, $s0, 0x14
.LJP_802460E0:
/* 141EA0 802460E0 3C038027 */  lui       $v1, %hi(gPauseMenuCurrentTab)
/* 141EA4 802460E4 8063F7A4 */  lb        $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 141EA8 802460E8 24020001 */  addiu     $v0, $zero, 0x1
/* 141EAC 802460EC 1462000F */  bne       $v1, $v0, .LJP_8024612C
/* 141EB0 802460F0 2404001F */   addiu    $a0, $zero, 0x1F
/* 141EB4 802460F4 8FA80088 */  lw        $t0, 0x88($sp)
/* 141EB8 802460F8 3C058025 */  lui       $a1, %hi(gStatsMenuEntries)
/* 141EBC 802460FC 24A5EAD0 */  addiu     $a1, $a1, %lo(gStatsMenuEntries)
/* 141EC0 80246100 91030003 */  lbu       $v1, 0x3($t0)
/* 141EC4 80246104 8FA8008C */  lw        $t0, 0x8C($sp)
/* 141EC8 80246108 00431004 */  sllv      $v0, $v1, $v0
/* 141ECC 8024610C 00431021 */  addu      $v0, $v0, $v1
/* 141ED0 80246110 00021080 */  sll       $v0, $v0, 2
/* 141ED4 80246114 00451021 */  addu      $v0, $v0, $a1
/* 141ED8 80246118 8C450000 */  lw        $a1, 0x0($v0)
/* 141EDC 8024611C 8C460004 */  lw        $a2, 0x4($v0)
/* 141EE0 80246120 01052821 */  addu      $a1, $t0, $a1
/* 141EE4 80246124 0C090935 */  jal       pause_set_cursor_pos
/* 141EE8 80246128 03C63021 */   addu     $a2, $fp, $a2
.LJP_8024612C:
/* 141EEC 8024612C 8FBF0084 */  lw        $ra, 0x84($sp)
/* 141EF0 80246130 8FBE0080 */  lw        $fp, 0x80($sp)
/* 141EF4 80246134 8FB7007C */  lw        $s7, 0x7C($sp)
/* 141EF8 80246138 8FB60078 */  lw        $s6, 0x78($sp)
/* 141EFC 8024613C 8FB50074 */  lw        $s5, 0x74($sp)
/* 141F00 80246140 8FB40070 */  lw        $s4, 0x70($sp)
/* 141F04 80246144 8FB3006C */  lw        $s3, 0x6C($sp)
/* 141F08 80246148 8FB20068 */  lw        $s2, 0x68($sp)
/* 141F0C 8024614C 8FB10064 */  lw        $s1, 0x64($sp)
/* 141F10 80246150 8FB00060 */  lw        $s0, 0x60($sp)
/* 141F14 80246154 03E00008 */  jr        $ra
/* 141F18 80246158 27BD0088 */   addiu    $sp, $sp, 0x88
.size pause_stats_draw_contents, . - pause_stats_draw_contents
