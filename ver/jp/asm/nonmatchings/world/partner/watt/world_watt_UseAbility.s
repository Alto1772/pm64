.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel world_watt_UseAbility
/* 3256D4 802BD754 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 3256D8 802BD758 AFB3001C */  sw        $s3, 0x1C($sp)
/* 3256DC 802BD75C 0080982D */  daddu     $s3, $a0, $zero
/* 3256E0 802BD760 AFB20018 */  sw        $s2, 0x18($sp)
/* 3256E4 802BD764 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 3256E8 802BD768 2652F188 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 3256EC 802BD76C AFB40020 */  sw        $s4, 0x20($sp)
/* 3256F0 802BD770 3C148011 */  lui       $s4, %hi(gPartnerStatus)
/* 3256F4 802BD774 2694ED70 */  addiu     $s4, $s4, %lo(gPartnerStatus)
/* 3256F8 802BD778 AFBF002C */  sw        $ra, 0x2C($sp)
/* 3256FC 802BD77C AFB60028 */  sw        $s6, 0x28($sp)
/* 325700 802BD780 AFB50024 */  sw        $s5, 0x24($sp)
/* 325704 802BD784 AFB10014 */  sw        $s1, 0x14($sp)
/* 325708 802BD788 AFB00010 */  sw        $s0, 0x10($sp)
/* 32570C 802BD78C 10A0003B */  beqz      $a1, .L802BD87C
/* 325710 802BD790 8E71014C */   lw       $s1, 0x14C($s3)
/* 325714 802BD794 0C0AF5C4 */  jal       world_watt_try_cancel_tweester
/* 325718 802BD798 0220202D */   daddu    $a0, $s1, $zero
/* 32571C 802BD79C 8E430004 */  lw        $v1, 0x4($s2)
/* 325720 802BD7A0 3C020010 */  lui       $v0, (0x100000 >> 16)
/* 325724 802BD7A4 00621024 */  and       $v0, $v1, $v0
/* 325728 802BD7A8 1440014D */  bnez      $v0, .L802BDCE0
/* 32572C 802BD7AC 24020002 */   addiu    $v0, $zero, 0x2
/* 325730 802BD7B0 82820001 */  lb        $v0, 0x1($s4)
/* 325734 802BD7B4 14400026 */  bnez      $v0, .L802BD850
/* 325738 802BD7B8 34620003 */   ori      $v0, $v1, 0x3
/* 32573C 802BD7BC 82820000 */  lb        $v0, 0x0($s4)
/* 325740 802BD7C0 14400009 */  bnez      $v0, .L802BD7E8
/* 325744 802BD7C4 00000000 */   nop
/* 325748 802BD7C8 0C03A933 */  jal       func_800EA52C
/* 32574C 802BD7CC 24040006 */   addiu    $a0, $zero, 0x6
/* 325750 802BD7D0 10400143 */  beqz      $v0, .L802BDCE0
/* 325754 802BD7D4 24020002 */   addiu    $v0, $zero, 0x2
/* 325758 802BD7D8 0C010F82 */  jal       is_starting_conversation
/* 32575C 802BD7DC 00000000 */   nop
/* 325760 802BD7E0 1440013F */  bnez      $v0, .L802BDCE0
/* 325764 802BD7E4 24020002 */   addiu    $v0, $zero, 0x2
.L802BD7E8:
/* 325768 802BD7E8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 32576C 802BD7EC 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 325770 802BD7F0 8042007D */  lb        $v0, 0x7D($v0)
/* 325774 802BD7F4 10400009 */  beqz      $v0, .L802BD81C
/* 325778 802BD7F8 00000000 */   nop
/* 32577C 802BD7FC 8E420004 */  lw        $v0, 0x4($s2)
/* 325780 802BD800 30420003 */  andi      $v0, $v0, 0x3
/* 325784 802BD804 1040000D */  beqz      $v0, .L802BD83C
/* 325788 802BD808 24020014 */   addiu    $v0, $zero, 0x14
/* 32578C 802BD80C 3C01802C */  lui       $at, %hi(world_watt_AbilityState)
/* 325790 802BD810 AC22E2F4 */  sw        $v0, %lo(world_watt_AbilityState)($at)
/* 325794 802BD814 080AF61F */  j         .L802BD87C
/* 325798 802BD818 00000000 */   nop
.L802BD81C:
/* 32579C 802BD81C 8E420004 */  lw        $v0, 0x4($s2)
/* 3257A0 802BD820 30420001 */  andi      $v0, $v0, 0x1
/* 3257A4 802BD824 10400005 */  beqz      $v0, .L802BD83C
/* 3257A8 802BD828 24020002 */   addiu    $v0, $zero, 0x2
/* 3257AC 802BD82C 3C01802C */  lui       $at, %hi(world_watt_AbilityState)
/* 3257B0 802BD830 AC22E2F4 */  sw        $v0, %lo(world_watt_AbilityState)($at)
/* 3257B4 802BD834 080AF61F */  j         .L802BD87C
/* 3257B8 802BD838 00000000 */   nop
.L802BD83C:
/* 3257BC 802BD83C 24020028 */  addiu     $v0, $zero, 0x28
/* 3257C0 802BD840 3C01802C */  lui       $at, %hi(world_watt_AbilityState)
/* 3257C4 802BD844 AC22E2F4 */  sw        $v0, %lo(world_watt_AbilityState)($at)
/* 3257C8 802BD848 080AF61F */  j         .L802BD87C
/* 3257CC 802BD84C 00000000 */   nop
.L802BD850:
/* 3257D0 802BD850 A2800001 */  sb        $zero, 0x1($s4)
/* 3257D4 802BD854 0C0AF804 */  jal       world_watt_update_player_carry_anim
/* 3257D8 802BD858 AE420004 */   sw       $v0, 0x4($s2)
/* 3257DC 802BD85C 3C020006 */  lui       $v0, (0x60001 >> 16)
/* 3257E0 802BD860 34420001 */  ori       $v0, $v0, (0x60001 & 0xFFFF)
/* 3257E4 802BD864 AE220028 */  sw        $v0, 0x28($s1)
/* 3257E8 802BD868 24020001 */  addiu     $v0, $zero, 0x1
/* 3257EC 802BD86C 3C01802C */  lui       $at, %hi(world_watt_AbilityState)
/* 3257F0 802BD870 AC22E2F4 */  sw        $v0, %lo(world_watt_AbilityState)($at)
/* 3257F4 802BD874 24020002 */  addiu     $v0, $zero, 0x2
/* 3257F8 802BD878 AE620074 */  sw        $v0, 0x74($s3)
.L802BD87C:
/* 3257FC 802BD87C 3C10802C */  lui       $s0, %hi(world_watt_AbilityState)
/* 325800 802BD880 2610E2F4 */  addiu     $s0, $s0, %lo(world_watt_AbilityState)
/* 325804 802BD884 8E030000 */  lw        $v1, 0x0($s0)
/* 325808 802BD888 24020028 */  addiu     $v0, $zero, 0x28
/* 32580C 802BD88C 10620005 */  beq       $v1, $v0, .L802BD8A4
/* 325810 802BD890 24020029 */   addiu    $v0, $zero, 0x29
/* 325814 802BD894 1062000E */  beq       $v1, $v0, .L802BD8D0
/* 325818 802BD898 00000000 */   nop
/* 32581C 802BD89C 080AF64D */  j         .L802BD934
/* 325820 802BD8A0 00000000 */   nop
.L802BD8A4:
/* 325824 802BD8A4 82420015 */  lb        $v0, 0x15($s2)
/* 325828 802BD8A8 10400003 */  beqz      $v0, .L802BD8B8
/* 32582C 802BD8AC 24020003 */   addiu    $v0, $zero, 0x3
/* 325830 802BD8B0 080AF738 */  j         .L802BDCE0
/* 325834 802BD8B4 24020002 */   addiu    $v0, $zero, 0x2
.L802BD8B8:
/* 325838 802BD8B8 AE620074 */  sw        $v0, 0x74($s3)
/* 32583C 802BD8BC 82430015 */  lb        $v1, 0x15($s2)
/* 325840 802BD8C0 24020029 */  addiu     $v0, $zero, 0x29
/* 325844 802BD8C4 AE020000 */  sw        $v0, 0x0($s0)
/* 325848 802BD8C8 080AF64D */  j         .L802BD934
/* 32584C 802BD8CC AE630078 */   sw       $v1, 0x78($s3)
.L802BD8D0:
/* 325850 802BD8D0 8E620074 */  lw        $v0, 0x74($s3)
/* 325854 802BD8D4 14400016 */  bnez      $v0, .L802BD930
/* 325858 802BD8D8 2442FFFF */   addiu    $v0, $v0, -0x1
/* 32585C 802BD8DC 82430015 */  lb        $v1, 0x15($s2)
/* 325860 802BD8E0 8E620078 */  lw        $v0, 0x78($s3)
/* 325864 802BD8E4 0043102A */  slt       $v0, $v0, $v1
/* 325868 802BD8E8 144000FD */  bnez      $v0, .L802BDCE0
/* 32586C 802BD8EC 24020002 */   addiu    $v0, $zero, 0x2
/* 325870 802BD8F0 8E420004 */  lw        $v0, 0x4($s2)
/* 325874 802BD8F4 3C030010 */  lui       $v1, (0x100000 >> 16)
/* 325878 802BD8F8 00431024 */  and       $v0, $v0, $v1
/* 32587C 802BD8FC 144000F8 */  bnez      $v0, .L802BDCE0
/* 325880 802BD900 24020002 */   addiu    $v0, $zero, 0x2
/* 325884 802BD904 0C03A933 */  jal       func_800EA52C
/* 325888 802BD908 24040006 */   addiu    $a0, $zero, 0x6
/* 32588C 802BD90C 104000F4 */  beqz      $v0, .L802BDCE0
/* 325890 802BD910 24020002 */   addiu    $v0, $zero, 0x2
/* 325894 802BD914 0C010F82 */  jal       is_starting_conversation
/* 325898 802BD918 00000000 */   nop
/* 32589C 802BD91C 144000F0 */  bnez      $v0, .L802BDCE0
/* 3258A0 802BD920 24020002 */   addiu    $v0, $zero, 0x2
/* 3258A4 802BD924 24020014 */  addiu     $v0, $zero, 0x14
/* 3258A8 802BD928 080AF64D */  j         .L802BD934
/* 3258AC 802BD92C AE020000 */   sw       $v0, 0x0($s0)
.L802BD930:
/* 3258B0 802BD930 AE620074 */  sw        $v0, 0x74($s3)
.L802BD934:
/* 3258B4 802BD934 3C15802C */  lui       $s5, %hi(world_watt_AbilityState)
/* 3258B8 802BD938 26B5E2F4 */  addiu     $s5, $s5, %lo(world_watt_AbilityState)
/* 3258BC 802BD93C 8EA30000 */  lw        $v1, 0x0($s5)
/* 3258C0 802BD940 24160002 */  addiu     $s6, $zero, 0x2
/* 3258C4 802BD944 107600B6 */  beq       $v1, $s6, .L802BDC20
/* 3258C8 802BD948 28620003 */   slti     $v0, $v1, 0x3
/* 3258CC 802BD94C 10400005 */  beqz      $v0, .L802BD964
/* 3258D0 802BD950 24020001 */   addiu    $v0, $zero, 0x1
/* 3258D4 802BD954 1062009B */  beq       $v1, $v0, .L802BDBC4
/* 3258D8 802BD958 00000000 */   nop
/* 3258DC 802BD95C 080AF727 */  j         .L802BDC9C
/* 3258E0 802BD960 00000000 */   nop
.L802BD964:
/* 3258E4 802BD964 24020014 */  addiu     $v0, $zero, 0x14
/* 3258E8 802BD968 10620005 */  beq       $v1, $v0, .L802BD980
/* 3258EC 802BD96C 24020015 */   addiu    $v0, $zero, 0x15
/* 3258F0 802BD970 10620062 */  beq       $v1, $v0, .L802BDAFC
/* 3258F4 802BD974 00000000 */   nop
/* 3258F8 802BD978 080AF727 */  j         .L802BDC9C
/* 3258FC 802BD97C 00000000 */   nop
.L802BD980:
/* 325900 802BD980 3C058007 */  lui       $a1, %hi(gGameStatusPtr)
/* 325904 802BD984 8CA5417C */  lw        $a1, %lo(gGameStatusPtr)($a1)
/* 325908 802BD988 80A2007D */  lb        $v0, 0x7D($a1)
/* 32590C 802BD98C 1040002F */  beqz      $v0, .L802BDA4C
/* 325910 802BD990 24100001 */   addiu    $s0, $zero, 0x1
/* 325914 802BD994 8E420004 */  lw        $v0, 0x4($s2)
/* 325918 802BD998 3C0140A0 */  lui       $at, (0x40A00000 >> 16)
/* 32591C 802BD99C 44811000 */  mtc1      $at, $f2
/* 325920 802BD9A0 34420001 */  ori       $v0, $v0, 0x1
/* 325924 802BD9A4 AE420004 */  sw        $v0, 0x4($s2)
/* 325928 802BD9A8 8E220000 */  lw        $v0, 0x0($s1)
/* 32592C 802BD9AC 2403F5FF */  addiu     $v1, $zero, -0xA01
/* 325930 802BD9B0 3C01802C */  lui       $at, %hi(world_watt_IsPlayerHolding)
/* 325934 802BD9B4 AC30E2FC */  sw        $s0, %lo(world_watt_IsPlayerHolding)($at)
/* 325938 802BD9B8 34420108 */  ori       $v0, $v0, 0x108
/* 32593C 802BD9BC 00431024 */  and       $v0, $v0, $v1
/* 325940 802BD9C0 AE220000 */  sw        $v0, 0x0($s1)
/* 325944 802BD9C4 A0A0007D */  sb        $zero, 0x7D($a1)
/* 325948 802BD9C8 A2900000 */  sb        $s0, 0x0($s4)
/* 32594C 802BD9CC C6400028 */  lwc1      $f0, 0x28($s2)
/* 325950 802BD9D0 24020006 */  addiu     $v0, $zero, 0x6
/* 325954 802BD9D4 A2820003 */  sb        $v0, 0x3($s4)
/* 325958 802BD9D8 E6200060 */  swc1      $f0, 0x60($s1)
/* 32595C 802BD9DC C640002C */  lwc1      $f0, 0x2C($s2)
/* 325960 802BD9E0 26240060 */  addiu     $a0, $s1, 0x60
/* 325964 802BD9E4 46020000 */  add.s     $f0, $f0, $f2
/* 325968 802BD9E8 3C064170 */  lui       $a2, (0x41700000 >> 16)
/* 32596C 802BD9EC 3C020006 */  lui       $v0, (0x60002 >> 16)
/* 325970 802BD9F0 E6200064 */  swc1      $f0, 0x64($s1)
/* 325974 802BD9F4 C6400030 */  lwc1      $f0, 0x30($s2)
/* 325978 802BD9F8 34420002 */  ori       $v0, $v0, (0x60002 & 0xFFFF)
/* 32597C 802BD9FC AE220028 */  sw        $v0, 0x28($s1)
/* 325980 802BDA00 E6200068 */  swc1      $f0, 0x68($s1)
/* 325984 802BDA04 8E470080 */  lw        $a3, 0x80($s2)
/* 325988 802BDA08 0C00A7D7 */  jal       add_vec2D_polar
/* 32598C 802BDA0C 26250068 */   addiu    $a1, $s1, 0x68
/* 325990 802BDA10 3C020006 */  lui       $v0, (0x60000 >> 16)
/* 325994 802BDA14 C6400080 */  lwc1      $f0, 0x80($s2)
/* 325998 802BDA18 00501025 */  or        $v0, $v0, $s0
/* 32599C 802BDA1C AE220028 */  sw        $v0, 0x28($s1)
/* 3259A0 802BDA20 E620000C */  swc1      $f0, 0xC($s1)
/* 3259A4 802BDA24 8E420004 */  lw        $v0, 0x4($s2)
/* 3259A8 802BDA28 34420002 */  ori       $v0, $v0, 0x2
/* 3259AC 802BDA2C 0C0AF804 */  jal       world_watt_update_player_carry_anim
/* 3259B0 802BDA30 AE420004 */   sw       $v0, 0x4($s2)
/* 3259B4 802BDA34 0220202D */  daddu     $a0, $s1, $zero
/* 3259B8 802BDA38 0C00EC24 */  jal       npc_set_palswap_mode_A
/* 3259BC 802BDA3C 0200282D */   daddu    $a1, $s0, $zero
/* 3259C0 802BDA40 AE760074 */  sw        $s6, 0x74($s3)
/* 3259C4 802BDA44 080AF727 */  j         .L802BDC9C
/* 3259C8 802BDA48 AEB00000 */   sw       $s0, 0x0($s5)
.L802BDA4C:
/* 3259CC 802BDA4C 8E420004 */  lw        $v0, 0x4($s2)
/* 3259D0 802BDA50 24040001 */  addiu     $a0, $zero, 0x1
/* 3259D4 802BDA54 00441025 */  or        $v0, $v0, $a0
/* 3259D8 802BDA58 AE420004 */  sw        $v0, 0x4($s2)
/* 3259DC 802BDA5C 8E220000 */  lw        $v0, 0x0($s1)
/* 3259E0 802BDA60 2403F5FF */  addiu     $v1, $zero, -0xA01
/* 3259E4 802BDA64 3C01802C */  lui       $at, %hi(world_watt_IsPlayerHolding)
/* 3259E8 802BDA68 AC24E2FC */  sw        $a0, %lo(world_watt_IsPlayerHolding)($at)
/* 3259EC 802BDA6C 00431024 */  and       $v0, $v0, $v1
/* 3259F0 802BDA70 AE220000 */  sw        $v0, 0x0($s1)
/* 3259F4 802BDA74 24020006 */  addiu     $v0, $zero, 0x6
/* 3259F8 802BDA78 A0A0007D */  sb        $zero, 0x7D($a1)
/* 3259FC 802BDA7C A2840000 */  sb        $a0, 0x0($s4)
/* 325A00 802BDA80 0C03BD1D */  jal       partner_force_player_flip_done
/* 325A04 802BDA84 A2820003 */   sb       $v0, 0x3($s4)
/* 325A08 802BDA88 C6400028 */  lwc1      $f0, 0x28($s2)
/* 325A0C 802BDA8C 3C0140A0 */  lui       $at, (0x40A00000 >> 16)
/* 325A10 802BDA90 44811000 */  mtc1      $at, $f2
/* 325A14 802BDA94 E6200060 */  swc1      $f0, 0x60($s1)
/* 325A18 802BDA98 C640002C */  lwc1      $f0, 0x2C($s2)
/* 325A1C 802BDA9C 3C020006 */  lui       $v0, (0x60002 >> 16)
/* 325A20 802BDAA0 46020000 */  add.s     $f0, $f0, $f2
/* 325A24 802BDAA4 3C064170 */  lui       $a2, (0x41700000 >> 16)
/* 325A28 802BDAA8 34420002 */  ori       $v0, $v0, (0x60002 & 0xFFFF)
/* 325A2C 802BDAAC E6200064 */  swc1      $f0, 0x64($s1)
/* 325A30 802BDAB0 C6400030 */  lwc1      $f0, 0x30($s2)
/* 325A34 802BDAB4 26240060 */  addiu     $a0, $s1, 0x60
/* 325A38 802BDAB8 AE220028 */  sw        $v0, 0x28($s1)
/* 325A3C 802BDABC E6200068 */  swc1      $f0, 0x68($s1)
/* 325A40 802BDAC0 8E470080 */  lw        $a3, 0x80($s2)
/* 325A44 802BDAC4 0C00A7D7 */  jal       add_vec2D_polar
/* 325A48 802BDAC8 26250068 */   addiu    $a1, $s1, 0x68
/* 325A4C 802BDACC 24020008 */  addiu     $v0, $zero, 0x8
/* 325A50 802BDAD0 A622008E */  sh        $v0, 0x8E($s1)
/* 325A54 802BDAD4 8E460028 */  lw        $a2, 0x28($s2)
/* 325A58 802BDAD8 8E470030 */  lw        $a3, 0x30($s2)
/* 325A5C 802BDADC C62C0038 */  lwc1      $f12, 0x38($s1)
/* 325A60 802BDAE0 0C00A710 */  jal       atan2
/* 325A64 802BDAE4 C62E0040 */   lwc1     $f14, 0x40($s1)
/* 325A68 802BDAE8 8EA20000 */  lw        $v0, 0x0($s5)
/* 325A6C 802BDAEC E620000C */  swc1      $f0, 0xC($s1)
/* 325A70 802BDAF0 24420001 */  addiu     $v0, $v0, 0x1
/* 325A74 802BDAF4 080AF727 */  j         .L802BDC9C
/* 325A78 802BDAF8 AEA20000 */   sw       $v0, 0x0($s5)
.L802BDAFC:
/* 325A7C 802BDAFC C6200060 */  lwc1      $f0, 0x60($s1)
/* 325A80 802BDB00 C62A0038 */  lwc1      $f10, 0x38($s1)
/* 325A84 802BDB04 8622008E */  lh        $v0, 0x8E($s1)
/* 325A88 802BDB08 C6240064 */  lwc1      $f4, 0x64($s1)
/* 325A8C 802BDB0C C628003C */  lwc1      $f8, 0x3C($s1)
/* 325A90 802BDB10 C6260040 */  lwc1      $f6, 0x40($s1)
/* 325A94 802BDB14 44821000 */  mtc1      $v0, $f2
/* 325A98 802BDB18 00000000 */  nop
/* 325A9C 802BDB1C 468010A0 */  cvt.s.w   $f2, $f2
/* 325AA0 802BDB20 0040202D */  daddu     $a0, $v0, $zero
/* 325AA4 802BDB24 460A0001 */  sub.s     $f0, $f0, $f10
/* 325AA8 802BDB28 0080182D */  daddu     $v1, $a0, $zero
/* 325AAC 802BDB2C 9622008E */  lhu       $v0, 0x8E($s1)
/* 325AB0 802BDB30 46082101 */  sub.s     $f4, $f4, $f8
/* 325AB4 802BDB34 2442FFFF */  addiu     $v0, $v0, -0x1
/* 325AB8 802BDB38 A622008E */  sh        $v0, 0x8E($s1)
/* 325ABC 802BDB3C 46020003 */  div.s     $f0, $f0, $f2
/* 325AC0 802BDB40 46005280 */  add.s     $f10, $f10, $f0
/* 325AC4 802BDB44 C6220068 */  lwc1      $f2, 0x68($s1)
/* 325AC8 802BDB48 00021400 */  sll       $v0, $v0, 16
/* 325ACC 802BDB4C 46061081 */  sub.s     $f2, $f2, $f6
/* 325AD0 802BDB50 44840000 */  mtc1      $a0, $f0
/* 325AD4 802BDB54 00000000 */  nop
/* 325AD8 802BDB58 46800020 */  cvt.s.w   $f0, $f0
/* 325ADC 802BDB5C 46002103 */  div.s     $f4, $f4, $f0
/* 325AE0 802BDB60 46044200 */  add.s     $f8, $f8, $f4
/* 325AE4 802BDB64 44830000 */  mtc1      $v1, $f0
/* 325AE8 802BDB68 00000000 */  nop
/* 325AEC 802BDB6C 46800020 */  cvt.s.w   $f0, $f0
/* 325AF0 802BDB70 46001083 */  div.s     $f2, $f2, $f0
/* 325AF4 802BDB74 46023180 */  add.s     $f6, $f6, $f2
/* 325AF8 802BDB78 E62A0038 */  swc1      $f10, 0x38($s1)
/* 325AFC 802BDB7C E628003C */  swc1      $f8, 0x3C($s1)
/* 325B00 802BDB80 14400046 */  bnez      $v0, .L802BDC9C
/* 325B04 802BDB84 E6260040 */   swc1     $f6, 0x40($s1)
/* 325B08 802BDB88 3C020006 */  lui       $v0, (0x60001 >> 16)
/* 325B0C 802BDB8C C6400080 */  lwc1      $f0, 0x80($s2)
/* 325B10 802BDB90 34420001 */  ori       $v0, $v0, (0x60001 & 0xFFFF)
/* 325B14 802BDB94 AE220028 */  sw        $v0, 0x28($s1)
/* 325B18 802BDB98 E620000C */  swc1      $f0, 0xC($s1)
/* 325B1C 802BDB9C 8E420004 */  lw        $v0, 0x4($s2)
/* 325B20 802BDBA0 24030006 */  addiu     $v1, $zero, 0x6
/* 325B24 802BDBA4 A2830003 */  sb        $v1, 0x3($s4)
/* 325B28 802BDBA8 34420002 */  ori       $v0, $v0, 0x2
/* 325B2C 802BDBAC 0C0AF804 */  jal       world_watt_update_player_carry_anim
/* 325B30 802BDBB0 AE420004 */   sw       $v0, 0x4($s2)
/* 325B34 802BDBB4 24020001 */  addiu     $v0, $zero, 0x1
/* 325B38 802BDBB8 AE760074 */  sw        $s6, 0x74($s3)
/* 325B3C 802BDBBC 080AF727 */  j         .L802BDC9C
/* 325B40 802BDBC0 AEA20000 */   sw       $v0, 0x0($s5)
.L802BDBC4:
/* 325B44 802BDBC4 0C0AF81B */  jal       world_watt_sync_held_position
/* 325B48 802BDBC8 00000000 */   nop
/* 325B4C 802BDBCC 8E620074 */  lw        $v0, 0x74($s3)
/* 325B50 802BDBD0 10400003 */  beqz      $v0, .L802BDBE0
/* 325B54 802BDBD4 2442FFFF */   addiu    $v0, $v0, -0x1
/* 325B58 802BDBD8 080AF727 */  j         .L802BDC9C
/* 325B5C 802BDBDC AE620074 */   sw       $v0, 0x74($s3)
.L802BDBE0:
/* 325B60 802BDBE0 824300B4 */  lb        $v1, 0xB4($s2)
/* 325B64 802BDBE4 2402001D */  addiu     $v0, $zero, 0x1D
/* 325B68 802BDBE8 1062002C */  beq       $v1, $v0, .L802BDC9C
/* 325B6C 802BDBEC 2C620003 */   sltiu    $v0, $v1, 0x3
/* 325B70 802BDBF0 14400003 */  bnez      $v0, .L802BDC00
/* 325B74 802BDBF4 2402000A */   addiu    $v0, $zero, 0xA
/* 325B78 802BDBF8 14620005 */  bne       $v1, $v0, .L802BDC10
/* 325B7C 802BDBFC 00000000 */   nop
.L802BDC00:
/* 325B80 802BDC00 8E82000C */  lw        $v0, 0xC($s4)
/* 325B84 802BDC04 30424000 */  andi      $v0, $v0, 0x4000
/* 325B88 802BDC08 14400006 */  bnez      $v0, .L802BDC24
/* 325B8C 802BDC0C 3C050006 */   lui      $a1, (0x60001 >> 16)
.L802BDC10:
/* 325B90 802BDC10 8E420000 */  lw        $v0, 0x0($s2)
/* 325B94 802BDC14 30420800 */  andi      $v0, $v0, 0x800
/* 325B98 802BDC18 10400020 */  beqz      $v0, .L802BDC9C
/* 325B9C 802BDC1C 00000000 */   nop
.L802BDC20:
/* 325BA0 802BDC20 3C050006 */  lui       $a1, (0x60001 >> 16)
.L802BDC24:
/* 325BA4 802BDC24 34A50001 */  ori       $a1, $a1, (0x60001 & 0xFFFF)
/* 325BA8 802BDC28 0220202D */  daddu     $a0, $s1, $zero
/* 325BAC 802BDC2C 8E420004 */  lw        $v0, 0x4($s2)
/* 325BB0 802BDC30 2403FFFC */  addiu     $v1, $zero, -0x4
/* 325BB4 802BDC34 00431024 */  and       $v0, $v0, $v1
/* 325BB8 802BDC38 AE420004 */  sw        $v0, 0x4($s2)
/* 325BBC 802BDC3C 0C03BCFC */  jal       partner_clear_player_tracking
/* 325BC0 802BDC40 AE250028 */   sw       $a1, 0x28($s1)
/* 325BC4 802BDC44 0220202D */  daddu     $a0, $s1, $zero
/* 325BC8 802BDC48 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 325BCC 802BDC4C 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 325BD0 802BDC50 3C01802C */  lui       $at, %hi(world_watt_IsPlayerHolding)
/* 325BD4 802BDC54 AC20E2FC */  sw        $zero, %lo(world_watt_IsPlayerHolding)($at)
/* 325BD8 802BDC58 A2800003 */  sb        $zero, 0x3($s4)
/* 325BDC 802BDC5C A2800000 */  sb        $zero, 0x0($s4)
/* 325BE0 802BDC60 A040007D */  sb        $zero, 0x7D($v0)
/* 325BE4 802BDC64 24020014 */  addiu     $v0, $zero, 0x14
/* 325BE8 802BDC68 3C01802C */  lui       $at, %hi(world_watt_AbilityState)
/* 325BEC 802BDC6C AC22E2F4 */  sw        $v0, %lo(world_watt_AbilityState)($at)
/* 325BF0 802BDC70 0C00EC24 */  jal       npc_set_palswap_mode_A
/* 325BF4 802BDC74 0000282D */   daddu    $a1, $zero, $zero
/* 325BF8 802BDC78 8E420000 */  lw        $v0, 0x0($s2)
/* 325BFC 802BDC7C 30420800 */  andi      $v0, $v0, 0x800
/* 325C00 802BDC80 14400002 */  bnez      $v0, .L802BDC8C
/* 325C04 802BDC84 24040017 */   addiu    $a0, $zero, 0x17
/* 325C08 802BDC88 0000202D */  daddu     $a0, $zero, $zero
.L802BDC8C:
/* 325C0C 802BDC8C 0C039761 */  jal       set_action_state
/* 325C10 802BDC90 00000000 */   nop
/* 325C14 802BDC94 080AF738 */  j         .L802BDCE0
/* 325C18 802BDC98 24020001 */   addiu    $v0, $zero, 0x1
.L802BDC9C:
/* 325C1C 802BDC9C 3C03802C */  lui       $v1, %hi(world_watt_StaticEffect)
/* 325C20 802BDCA0 8C63E300 */  lw        $v1, %lo(world_watt_StaticEffect)($v1)
/* 325C24 802BDCA4 1060000E */  beqz      $v1, .L802BDCE0
/* 325C28 802BDCA8 0000102D */   daddu    $v0, $zero, $zero
/* 325C2C 802BDCAC 8C62000C */  lw        $v0, 0xC($v1)
/* 325C30 802BDCB0 C6200038 */  lwc1      $f0, 0x38($s1)
/* 325C34 802BDCB4 3C014150 */  lui       $at, (0x41500000 >> 16)
/* 325C38 802BDCB8 44811000 */  mtc1      $at, $f2
/* 325C3C 802BDCBC E4400004 */  swc1      $f0, 0x4($v0)
/* 325C40 802BDCC0 C620003C */  lwc1      $f0, 0x3C($s1)
/* 325C44 802BDCC4 46020000 */  add.s     $f0, $f0, $f2
/* 325C48 802BDCC8 8C62000C */  lw        $v0, 0xC($v1)
/* 325C4C 802BDCCC E4400008 */  swc1      $f0, 0x8($v0)
/* 325C50 802BDCD0 8C62000C */  lw        $v0, 0xC($v1)
/* 325C54 802BDCD4 C6200040 */  lwc1      $f0, 0x40($s1)
/* 325C58 802BDCD8 E440000C */  swc1      $f0, 0xC($v0)
/* 325C5C 802BDCDC 0000102D */  daddu     $v0, $zero, $zero
.L802BDCE0:
/* 325C60 802BDCE0 8FBF002C */  lw        $ra, 0x2C($sp)
/* 325C64 802BDCE4 8FB60028 */  lw        $s6, 0x28($sp)
/* 325C68 802BDCE8 8FB50024 */  lw        $s5, 0x24($sp)
/* 325C6C 802BDCEC 8FB40020 */  lw        $s4, 0x20($sp)
/* 325C70 802BDCF0 8FB3001C */  lw        $s3, 0x1C($sp)
/* 325C74 802BDCF4 8FB20018 */  lw        $s2, 0x18($sp)
/* 325C78 802BDCF8 8FB10014 */  lw        $s1, 0x14($sp)
/* 325C7C 802BDCFC 8FB00010 */  lw        $s0, 0x10($sp)
/* 325C80 802BDD00 03E00008 */  jr        $ra
/* 325C84 802BDD04 27BD0030 */   addiu    $sp, $sp, 0x30
.size world_watt_UseAbility, . - world_watt_UseAbility
