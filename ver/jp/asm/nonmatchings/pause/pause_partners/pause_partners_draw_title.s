.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pause_partners_draw_title
/* 1470AC 8024B2EC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 1470B0 8024B2F0 AFB00018 */  sw        $s0, 0x18($sp)
/* 1470B4 8024B2F4 3C108027 */  lui       $s0, %hi(gPausePartnersCurrentPartnerIdx)
/* 1470B8 8024B2F8 2610FD60 */  addiu     $s0, $s0, %lo(gPausePartnersCurrentPartnerIdx)
/* 1470BC 8024B2FC AFBF0030 */  sw        $ra, 0x30($sp)
/* 1470C0 8024B300 AFB5002C */  sw        $s5, 0x2C($sp)
/* 1470C4 8024B304 AFB40028 */  sw        $s4, 0x28($sp)
/* 1470C8 8024B308 AFB30024 */  sw        $s3, 0x24($sp)
/* 1470CC 8024B30C AFB20020 */  sw        $s2, 0x20($sp)
/* 1470D0 8024B310 AFB1001C */  sw        $s1, 0x1C($sp)
/* 1470D4 8024B314 8E020000 */  lw        $v0, 0x0($s0)
/* 1470D8 8024B318 00A0902D */  daddu     $s2, $a1, $zero
/* 1470DC 8024B31C 00021080 */  sll       $v0, $v0, 2
/* 1470E0 8024B320 3C018027 */  lui       $at, %hi(gPausePartnersPartnerIdx)
/* 1470E4 8024B324 00220821 */  addu      $at, $at, $v0
/* 1470E8 8024B328 8C22FD40 */  lw        $v0, %lo(gPausePartnersPartnerIdx)($at)
/* 1470EC 8024B32C 00C0A02D */  daddu     $s4, $a2, $zero
/* 1470F0 8024B330 00021080 */  sll       $v0, $v0, 2
/* 1470F4 8024B334 3C018025 */  lui       $at, %hi(gPausePartnersPartnerIDs)
/* 1470F8 8024B338 00220821 */  addu      $at, $at, $v0
/* 1470FC 8024B33C 8C22EDD0 */  lw        $v0, %lo(gPausePartnersPartnerIDs)($at)
/* 147100 8024B340 00021100 */  sll       $v0, $v0, 4
/* 147104 8024B344 3C118009 */  lui       $s1, %hi(gPartnerPopupProperties)
/* 147108 8024B348 02228821 */  addu      $s1, $s1, $v0
/* 14710C 8024B34C 8E31EEF0 */  lw        $s1, %lo(gPartnerPopupProperties)($s1)
/* 147110 8024B350 0C039D41 */  jal       get_player_data
/* 147114 8024B354 00E0A82D */   daddu    $s5, $a3, $zero
/* 147118 8024B358 8E030000 */  lw        $v1, 0x0($s0)
/* 14711C 8024B35C 00031880 */  sll       $v1, $v1, 2
/* 147120 8024B360 3C018027 */  lui       $at, %hi(gPausePartnersPartnerIdx)
/* 147124 8024B364 00230821 */  addu      $at, $at, $v1
/* 147128 8024B368 8C23FD40 */  lw        $v1, %lo(gPausePartnersPartnerIdx)($at)
/* 14712C 8024B36C 0000282D */  daddu     $a1, $zero, $zero
/* 147130 8024B370 00031880 */  sll       $v1, $v1, 2
/* 147134 8024B374 3C018025 */  lui       $at, %hi(gPausePartnersPartnerIDs)
/* 147138 8024B378 00230821 */  addu      $at, $at, $v1
/* 14713C 8024B37C 8C23EDD0 */  lw        $v1, %lo(gPausePartnersPartnerIDs)($at)
/* 147140 8024B380 000318C0 */  sll       $v1, $v1, 3
/* 147144 8024B384 00431021 */  addu      $v0, $v0, $v1
/* 147148 8024B388 80500015 */  lb        $s0, 0x15($v0)
/* 14714C 8024B38C 0C04ADB5 */  jal       get_msg_width
/* 147150 8024B390 0220202D */   daddu    $a0, $s1, $zero
/* 147154 8024B394 0040182D */  daddu     $v1, $v0, $zero
/* 147158 8024B398 24130001 */  addiu     $s3, $zero, 0x1
/* 14715C 8024B39C 12130004 */  beq       $s0, $s3, .LJP_8024B3B0
/* 147160 8024B3A0 24020010 */   addiu    $v0, $zero, 0x10
/* 147164 8024B3A4 3A020002 */  xori      $v0, $s0, 0x2
/* 147168 8024B3A8 0053102B */  sltu      $v0, $v0, $s3
/* 14716C 8024B3AC 00021140 */  sll       $v0, $v0, 5
.LJP_8024B3B0:
/* 147170 8024B3B0 54400001 */  bnel      $v0, $zero, .LJP_8024B3B8
/* 147174 8024B3B4 24630008 */   addiu    $v1, $v1, 0x8
.LJP_8024B3B8:
/* 147178 8024B3B8 0220202D */  daddu     $a0, $s1, $zero
/* 14717C 8024B3BC 02A22823 */  subu      $a1, $s5, $v0
/* 147180 8024B3C0 00A32823 */  subu      $a1, $a1, $v1
/* 147184 8024B3C4 00052843 */  sra       $a1, $a1, 1
/* 147188 8024B3C8 02452821 */  addu      $a1, $s2, $a1
/* 14718C 8024B3CC 26860001 */  addiu     $a2, $s4, 0x1
/* 147190 8024B3D0 240700FF */  addiu     $a3, $zero, 0xFF
/* 147194 8024B3D4 AFA00010 */  sw        $zero, 0x10($sp)
/* 147198 8024B3D8 0C04ADC4 */  jal       draw_msg
/* 14719C 8024B3DC AFA00014 */   sw       $zero, 0x14($sp)
/* 1471A0 8024B3E0 16130007 */  bne       $s0, $s3, .LJP_8024B400
/* 1471A4 8024B3E4 24020002 */   addiu    $v0, $zero, 0x2
/* 1471A8 8024B3E8 2645004C */  addiu     $a1, $s2, 0x4C
/* 1471AC 8024B3EC 3C108027 */  lui       $s0, %hi(gPausePartnersIconIDs)
/* 1471B0 8024B3F0 2610FD00 */  addiu     $s0, $s0, %lo(gPausePartnersIconIDs)
/* 1471B4 8024B3F4 8E040008 */  lw        $a0, 0x8($s0)
/* 1471B8 8024B3F8 08092D0E */  j         .LJP_8024B438
/* 1471BC 8024B3FC 2686000A */   addiu    $a2, $s4, 0xA
.LJP_8024B400:
/* 1471C0 8024B400 16020011 */  bne       $s0, $v0, .LJP_8024B448
/* 1471C4 8024B404 26450058 */   addiu    $a1, $s2, 0x58
/* 1471C8 8024B408 3C108027 */  lui       $s0, %hi(gPausePartnersIconIDs)
/* 1471CC 8024B40C 2610FD00 */  addiu     $s0, $s0, %lo(gPausePartnersIconIDs)
/* 1471D0 8024B410 2691000A */  addiu     $s1, $s4, 0xA
/* 1471D4 8024B414 8E04000C */  lw        $a0, 0xC($s0)
/* 1471D8 8024B418 0C05268D */  jal       hud_element_set_render_pos
/* 1471DC 8024B41C 0220302D */   daddu    $a2, $s1, $zero
/* 1471E0 8024B420 8E04000C */  lw        $a0, 0xC($s0)
/* 1471E4 8024B424 0C052624 */  jal       hud_element_draw_without_clipping
/* 1471E8 8024B428 00000000 */   nop
/* 1471EC 8024B42C 26450048 */  addiu     $a1, $s2, 0x48
/* 1471F0 8024B430 8E040008 */  lw        $a0, 0x8($s0)
/* 1471F4 8024B434 0220302D */  daddu     $a2, $s1, $zero
.LJP_8024B438:
/* 1471F8 8024B438 0C05268D */  jal       hud_element_set_render_pos
/* 1471FC 8024B43C 00000000 */   nop
/* 147200 8024B440 0C052624 */  jal       hud_element_draw_without_clipping
/* 147204 8024B444 8E040008 */   lw       $a0, 0x8($s0)
.LJP_8024B448:
/* 147208 8024B448 8FBF0030 */  lw        $ra, 0x30($sp)
/* 14720C 8024B44C 8FB5002C */  lw        $s5, 0x2C($sp)
/* 147210 8024B450 8FB40028 */  lw        $s4, 0x28($sp)
/* 147214 8024B454 8FB30024 */  lw        $s3, 0x24($sp)
/* 147218 8024B458 8FB20020 */  lw        $s2, 0x20($sp)
/* 14721C 8024B45C 8FB1001C */  lw        $s1, 0x1C($sp)
/* 147220 8024B460 8FB00018 */  lw        $s0, 0x18($sp)
/* 147224 8024B464 03E00008 */  jr        $ra
/* 147228 8024B468 27BD0038 */   addiu    $sp, $sp, 0x38
.size pause_partners_draw_title, . - pause_partners_draw_title
