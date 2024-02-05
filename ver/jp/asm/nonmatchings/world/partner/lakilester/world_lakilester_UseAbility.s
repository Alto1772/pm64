.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel world_lakilester_UseAbility
/* 32A614 802BE724 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 32A618 802BE728 AFB40040 */  sw        $s4, 0x40($sp)
/* 32A61C 802BE72C 0080A02D */  daddu     $s4, $a0, $zero
/* 32A620 802BE730 3C03FFBF */  lui       $v1, (0xFFBFFFFF >> 16)
/* 32A624 802BE734 3463FFFF */  ori       $v1, $v1, (0xFFBFFFFF & 0xFFFF)
/* 32A628 802BE738 AFB20038 */  sw        $s2, 0x38($sp)
/* 32A62C 802BE73C 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 32A630 802BE740 2652F188 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 32A634 802BE744 AFB50044 */  sw        $s5, 0x44($sp)
/* 32A638 802BE748 3C158011 */  lui       $s5, %hi(gPartnerStatus)
/* 32A63C 802BE74C 26B5ED70 */  addiu     $s5, $s5, %lo(gPartnerStatus)
/* 32A640 802BE750 AFBF0048 */  sw        $ra, 0x48($sp)
/* 32A644 802BE754 AFB3003C */  sw        $s3, 0x3C($sp)
/* 32A648 802BE758 AFB10034 */  sw        $s1, 0x34($sp)
/* 32A64C 802BE75C AFB00030 */  sw        $s0, 0x30($sp)
/* 32A650 802BE760 F7B60058 */  sdc1      $f22, 0x58($sp)
/* 32A654 802BE764 F7B40050 */  sdc1      $f20, 0x50($sp)
/* 32A658 802BE768 8E420004 */  lw        $v0, 0x4($s2)
/* 32A65C 802BE76C 8E91014C */  lw        $s1, 0x14C($s4)
/* 32A660 802BE770 00431024 */  and       $v0, $v0, $v1
/* 32A664 802BE774 10A00087 */  beqz      $a1, .L802BE994
/* 32A668 802BE778 AE420004 */   sw       $v0, 0x4($s2)
/* 32A66C 802BE77C 0C0AF59E */  jal       world_lakilester_try_cancel_tweester
/* 32A670 802BE780 0220202D */   daddu    $a0, $s1, $zero
/* 32A674 802BE784 8E420004 */  lw        $v0, 0x4($s2)
/* 32A678 802BE788 3C030010 */  lui       $v1, (0x100000 >> 16)
/* 32A67C 802BE78C 00431024 */  and       $v0, $v0, $v1
/* 32A680 802BE790 14400332 */  bnez      $v0, .L802BF45C
/* 32A684 802BE794 24020002 */   addiu    $v0, $zero, 0x2
/* 32A688 802BE798 2403FFBF */  addiu     $v1, $zero, -0x41
/* 32A68C 802BE79C 8E220000 */  lw        $v0, 0x0($s1)
/* 32A690 802BE7A0 C6200038 */  lwc1      $f0, 0x38($s1)
/* 32A694 802BE7A4 C622003C */  lwc1      $f2, 0x3C($s1)
/* 32A698 802BE7A8 C6240040 */  lwc1      $f4, 0x40($s1)
/* 32A69C 802BE7AC 3C048007 */  lui       $a0, %hi(gGameStatusPtr)
/* 32A6A0 802BE7B0 8C84417C */  lw        $a0, %lo(gGameStatusPtr)($a0)
/* 32A6A4 802BE7B4 00431024 */  and       $v0, $v0, $v1
/* 32A6A8 802BE7B8 AE220000 */  sw        $v0, 0x0($s1)
/* 32A6AC 802BE7BC E6200060 */  swc1      $f0, 0x60($s1)
/* 32A6B0 802BE7C0 E6220064 */  swc1      $f2, 0x64($s1)
/* 32A6B4 802BE7C4 E6240068 */  swc1      $f4, 0x68($s1)
/* 32A6B8 802BE7C8 8082007D */  lb        $v0, 0x7D($a0)
/* 32A6BC 802BE7CC 14400005 */  bnez      $v0, .L802BE7E4
/* 32A6C0 802BE7D0 3C030020 */   lui      $v1, (0x200000 >> 16)
/* 32A6C4 802BE7D4 8E420004 */  lw        $v0, 0x4($s2)
/* 32A6C8 802BE7D8 00431024 */  and       $v0, $v0, $v1
/* 32A6CC 802BE7DC 1040000A */  beqz      $v0, .L802BE808
/* 32A6D0 802BE7E0 24020028 */   addiu    $v0, $zero, 0x28
.L802BE7E4:
/* 32A6D4 802BE7E4 8E430004 */  lw        $v1, 0x4($s2)
/* 32A6D8 802BE7E8 3C020020 */  lui       $v0, (0x200000 >> 16)
/* 32A6DC 802BE7EC 00621024 */  and       $v0, $v1, $v0
/* 32A6E0 802BE7F0 10400004 */  beqz      $v0, .L802BE804
/* 32A6E4 802BE7F4 3C02FFDF */   lui      $v0, (0xFFDFFFFF >> 16)
/* 32A6E8 802BE7F8 3442FFFF */  ori       $v0, $v0, (0xFFDFFFFF & 0xFFFF)
/* 32A6EC 802BE7FC 00621024 */  and       $v0, $v1, $v0
/* 32A6F0 802BE800 AE420004 */  sw        $v0, 0x4($s2)
.L802BE804:
/* 32A6F4 802BE804 24020064 */  addiu     $v0, $zero, 0x64
.L802BE808:
/* 32A6F8 802BE808 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32A6FC 802BE80C AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32A700 802BE810 82A20001 */  lb        $v0, 0x1($s5)
/* 32A704 802BE814 14400015 */  bnez      $v0, .L802BE86C
/* 32A708 802BE818 24040021 */   addiu    $a0, $zero, 0x21
/* 32A70C 802BE81C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 32A710 802BE820 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 32A714 802BE824 8042007D */  lb        $v0, 0x7D($v0)
/* 32A718 802BE828 1440005A */  bnez      $v0, .L802BE994
/* 32A71C 802BE82C 24020021 */   addiu    $v0, $zero, 0x21
/* 32A720 802BE830 824300B4 */  lb        $v1, 0xB4($s2)
/* 32A724 802BE834 10620009 */  beq       $v1, $v0, .L802BE85C
/* 32A728 802BE838 00000000 */   nop
/* 32A72C 802BE83C 10600007 */  beqz      $v1, .L802BE85C
/* 32A730 802BE840 24020001 */   addiu    $v0, $zero, 0x1
/* 32A734 802BE844 10620005 */  beq       $v1, $v0, .L802BE85C
/* 32A738 802BE848 24020002 */   addiu    $v0, $zero, 0x2
/* 32A73C 802BE84C 10620003 */  beq       $v1, $v0, .L802BE85C
/* 32A740 802BE850 24020008 */   addiu    $v0, $zero, 0x8
/* 32A744 802BE854 14620301 */  bne       $v1, $v0, .L802BF45C
/* 32A748 802BE858 24020002 */   addiu    $v0, $zero, 0x2
.L802BE85C:
/* 32A74C 802BE85C 8E420000 */  lw        $v0, 0x0($s2)
/* 32A750 802BE860 34420100 */  ori       $v0, $v0, 0x100
/* 32A754 802BE864 080AFA65 */  j         .L802BE994
/* 32A758 802BE868 AE420000 */   sw       $v0, 0x0($s2)
.L802BE86C:
/* 32A75C 802BE86C A2A00001 */  sb        $zero, 0x1($s5)
/* 32A760 802BE870 8E420000 */  lw        $v0, 0x0($s2)
/* 32A764 802BE874 2403FEFF */  addiu     $v1, $zero, -0x101
/* 32A768 802BE878 00431024 */  and       $v0, $v0, $v1
/* 32A76C 802BE87C AE420000 */  sw        $v0, 0x0($s2)
/* 32A770 802BE880 8E220000 */  lw        $v0, 0x0($s1)
/* 32A774 802BE884 2410FFB7 */  addiu     $s0, $zero, -0x49
/* 32A778 802BE888 00501024 */  and       $v0, $v0, $s0
/* 32A77C 802BE88C 34420100 */  ori       $v0, $v0, 0x100
/* 32A780 802BE890 0C039761 */  jal       set_action_state
/* 32A784 802BE894 AE220000 */   sw       $v0, 0x0($s1)
/* 32A788 802BE898 3C040008 */  lui       $a0, (0x8000E >> 16)
/* 32A78C 802BE89C 0C037FD6 */  jal       suggest_player_anim_always_forward
/* 32A790 802BE8A0 3484000E */   ori      $a0, $a0, (0x8000E & 0xFFFF)
/* 32A794 802BE8A4 3C050008 */  lui       $a1, (0x80005 >> 16)
/* 32A798 802BE8A8 34A50005 */  ori       $a1, $a1, (0x80005 & 0xFFFF)
/* 32A79C 802BE8AC 3C030040 */  lui       $v1, (0x400100 >> 16)
/* 32A7A0 802BE8B0 34630100 */  ori       $v1, $v1, (0x400100 & 0xFFFF)
/* 32A7A4 802BE8B4 8E220000 */  lw        $v0, 0x0($s1)
/* 32A7A8 802BE8B8 3C014040 */  lui       $at, (0x40400000 >> 16)
/* 32A7AC 802BE8BC 44812000 */  mtc1      $at, $f4
/* 32A7B0 802BE8C0 00501024 */  and       $v0, $v0, $s0
/* 32A7B4 802BE8C4 00431025 */  or        $v0, $v0, $v1
/* 32A7B8 802BE8C8 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 32A7BC 802BE8CC 8C63417C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 32A7C0 802BE8D0 24130001 */  addiu     $s3, $zero, 0x1
/* 32A7C4 802BE8D4 AE250028 */  sw        $a1, 0x28($s1)
/* 32A7C8 802BE8D8 3C01802C */  lui       $at, %hi(world_lakilester_MountState)
/* 32A7CC 802BE8DC AC33FE9C */  sw        $s3, %lo(world_lakilester_MountState)($at)
/* 32A7D0 802BE8E0 AE220000 */  sw        $v0, 0x0($s1)
/* 32A7D4 802BE8E4 24020008 */  addiu     $v0, $zero, 0x8
/* 32A7D8 802BE8E8 A2A20003 */  sb        $v0, 0x3($s5)
/* 32A7DC 802BE8EC A2B30000 */  sb        $s3, 0x0($s5)
/* 32A7E0 802BE8F0 A060007D */  sb        $zero, 0x7D($v1)
/* 32A7E4 802BE8F4 C6400028 */  lwc1      $f0, 0x28($s2)
/* 32A7E8 802BE8F8 C6220064 */  lwc1      $f2, 0x64($s1)
/* 32A7EC 802BE8FC 3C040008 */  lui       $a0, (0x8000E >> 16)
/* 32A7F0 802BE900 E6200038 */  swc1      $f0, 0x38($s1)
/* 32A7F4 802BE904 E622003C */  swc1      $f2, 0x3C($s1)
/* 32A7F8 802BE908 46001006 */  mov.s     $f0, $f2
/* 32A7FC 802BE90C 3C014120 */  lui       $at, (0x41200000 >> 16)
/* 32A800 802BE910 44811000 */  mtc1      $at, $f2
/* 32A804 802BE914 C6460030 */  lwc1      $f6, 0x30($s2)
/* 32A808 802BE918 46020000 */  add.s     $f0, $f0, $f2
/* 32A80C 802BE91C AE250028 */  sw        $a1, 0x28($s1)
/* 32A810 802BE920 E6260040 */  swc1      $f6, 0x40($s1)
/* 32A814 802BE924 E640002C */  swc1      $f0, 0x2C($s2)
/* 32A818 802BE928 E6240018 */  swc1      $f4, 0x18($s1)
/* 32A81C 802BE92C AE200014 */  sw        $zero, 0x14($s1)
/* 32A820 802BE930 C6400080 */  lwc1      $f0, 0x80($s2)
/* 32A824 802BE934 3484000E */  ori       $a0, $a0, (0x8000E & 0xFFFF)
/* 32A828 802BE938 0C037FD6 */  jal       suggest_player_anim_always_forward
/* 32A82C 802BE93C E620000C */   swc1     $f0, 0xC($s1)
/* 32A830 802BE940 0C039761 */  jal       set_action_state
/* 32A834 802BE944 24040021 */   addiu    $a0, $zero, 0x21
/* 32A838 802BE948 0C03803D */  jal       disable_player_static_collisions
/* 32A83C 802BE94C 00000000 */   nop
/* 32A840 802BE950 3C10802C */  lui       $s0, %hi(world_lakilester_LockingPlayerInput)
/* 32A844 802BE954 2610FE94 */  addiu     $s0, $s0, %lo(world_lakilester_LockingPlayerInput)
/* 32A848 802BE958 8E020000 */  lw        $v0, 0x0($s0)
/* 32A84C 802BE95C 3C01802C */  lui       $at, %hi(world_lakilester_PlayerCollisionDisabled)
/* 32A850 802BE960 AC33FE98 */  sw        $s3, %lo(world_lakilester_PlayerCollisionDisabled)($at)
/* 32A854 802BE964 14400004 */  bnez      $v0, .L802BE978
/* 32A858 802BE968 00000000 */   nop
/* 32A85C 802BE96C 0C038056 */  jal       disable_player_input
/* 32A860 802BE970 00000000 */   nop
/* 32A864 802BE974 AE130000 */  sw        $s3, 0x0($s0)
.L802BE978:
/* 32A868 802BE978 8E220000 */  lw        $v0, 0x0($s1)
/* 32A86C 802BE97C 3C01802C */  lui       $at, %hi(world_lakilester_PlayerBounceOffset)
/* 32A870 802BE980 AC20FEA8 */  sw        $zero, %lo(world_lakilester_PlayerBounceOffset)($at)
/* 32A874 802BE984 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32A878 802BE988 AC33FEA4 */  sw        $s3, %lo(world_lakilester_AbilityState)($at)
/* 32A87C 802BE98C 34420040 */  ori       $v0, $v0, 0x40
/* 32A880 802BE990 AE220000 */  sw        $v0, 0x0($s1)
.L802BE994:
/* 32A884 802BE994 3C10802C */  lui       $s0, %hi(world_lakilester_AbilityState)
/* 32A888 802BE998 2610FEA4 */  addiu     $s0, $s0, %lo(world_lakilester_AbilityState)
/* 32A88C 802BE99C 8E030000 */  lw        $v1, 0x0($s0)
/* 32A890 802BE9A0 24020028 */  addiu     $v0, $zero, 0x28
/* 32A894 802BE9A4 10620005 */  beq       $v1, $v0, .L802BE9BC
/* 32A898 802BE9A8 24020029 */   addiu    $v0, $zero, 0x29
/* 32A89C 802BE9AC 10620011 */  beq       $v1, $v0, .L802BE9F4
/* 32A8A0 802BE9B0 24020064 */   addiu    $v0, $zero, 0x64
/* 32A8A4 802BE9B4 080AFAA4 */  j         .L802BEA90
/* 32A8A8 802BE9B8 00000000 */   nop
.L802BE9BC:
/* 32A8AC 802BE9BC 82420015 */  lb        $v0, 0x15($s2)
/* 32A8B0 802BE9C0 1440027D */  bnez      $v0, .L802BF3B8
/* 32A8B4 802BE9C4 24020002 */   addiu    $v0, $zero, 0x2
/* 32A8B8 802BE9C8 24020003 */  addiu     $v0, $zero, 0x3
/* 32A8BC 802BE9CC 0C038056 */  jal       disable_player_input
/* 32A8C0 802BE9D0 AE820074 */   sw       $v0, 0x74($s4)
/* 32A8C4 802BE9D4 AE820078 */  sw        $v0, 0x78($s4)
/* 32A8C8 802BE9D8 8E020000 */  lw        $v0, 0x0($s0)
/* 32A8CC 802BE9DC 24030001 */  addiu     $v1, $zero, 0x1
/* 32A8D0 802BE9E0 3C01802C */  lui       $at, %hi(world_lakilester_LockingPlayerInput)
/* 32A8D4 802BE9E4 AC23FE94 */  sw        $v1, %lo(world_lakilester_LockingPlayerInput)($at)
/* 32A8D8 802BE9E8 00431021 */  addu      $v0, $v0, $v1
/* 32A8DC 802BE9EC 080AFAA0 */  j         .L802BEA80
/* 32A8E0 802BE9F0 AE020000 */   sw       $v0, 0x0($s0)
.L802BE9F4:
/* 32A8E4 802BE9F4 8E420004 */  lw        $v0, 0x4($s2)
/* 32A8E8 802BE9F8 3C030010 */  lui       $v1, (0x100000 >> 16)
/* 32A8EC 802BE9FC 00431024 */  and       $v0, $v0, $v1
/* 32A8F0 802BEA00 1040000C */  beqz      $v0, .L802BEA34
/* 32A8F4 802BEA04 00000000 */   nop
/* 32A8F8 802BEA08 82430015 */  lb        $v1, 0x15($s2)
/* 32A8FC 802BEA0C 8E820078 */  lw        $v0, 0x78($s4)
/* 32A900 802BEA10 0043102A */  slt       $v0, $v0, $v1
/* 32A904 802BEA14 10400268 */  beqz      $v0, .L802BF3B8
/* 32A908 802BEA18 24020002 */   addiu    $v0, $zero, 0x2
/* 32A90C 802BEA1C 0C038061 */  jal       enable_player_input
/* 32A910 802BEA20 00000000 */   nop
/* 32A914 802BEA24 3C01802C */  lui       $at, %hi(world_lakilester_LockingPlayerInput)
/* 32A918 802BEA28 AC20FE94 */  sw        $zero, %lo(world_lakilester_LockingPlayerInput)($at)
/* 32A91C 802BEA2C 080AFCEE */  j         .L802BF3B8
/* 32A920 802BEA30 24020002 */   addiu    $v0, $zero, 0x2
.L802BEA34:
/* 32A924 802BEA34 8E820074 */  lw        $v0, 0x74($s4)
/* 32A928 802BEA38 14400010 */  bnez      $v0, .L802BEA7C
/* 32A92C 802BEA3C 2442FFFF */   addiu    $v0, $v0, -0x1
/* 32A930 802BEA40 82430015 */  lb        $v1, 0x15($s2)
/* 32A934 802BEA44 8E820078 */  lw        $v0, 0x78($s4)
/* 32A938 802BEA48 0043102A */  slt       $v0, $v0, $v1
/* 32A93C 802BEA4C 10400009 */  beqz      $v0, .L802BEA74
/* 32A940 802BEA50 24020064 */   addiu    $v0, $zero, 0x64
/* 32A944 802BEA54 0C038061 */  jal       enable_player_input
/* 32A948 802BEA58 00000000 */   nop
/* 32A94C 802BEA5C 24020002 */  addiu     $v0, $zero, 0x2
/* 32A950 802BEA60 8E430000 */  lw        $v1, 0x0($s2)
/* 32A954 802BEA64 3C01802C */  lui       $at, %hi(world_lakilester_LockingPlayerInput)
/* 32A958 802BEA68 AC20FE94 */  sw        $zero, %lo(world_lakilester_LockingPlayerInput)($at)
/* 32A95C 802BEA6C 080AFCF0 */  j         .L802BF3C0
/* 32A960 802BEA70 2404FEFF */   addiu    $a0, $zero, -0x101
.L802BEA74:
/* 32A964 802BEA74 080AFAA0 */  j         .L802BEA80
/* 32A968 802BEA78 AE020000 */   sw       $v0, 0x0($s0)
.L802BEA7C:
/* 32A96C 802BEA7C AE820074 */  sw        $v0, 0x74($s4)
.L802BEA80:
/* 32A970 802BEA80 3C10802C */  lui       $s0, %hi(world_lakilester_AbilityState)
/* 32A974 802BEA84 2610FEA4 */  addiu     $s0, $s0, %lo(world_lakilester_AbilityState)
/* 32A978 802BEA88 8E030000 */  lw        $v1, 0x0($s0)
/* 32A97C 802BEA8C 24020064 */  addiu     $v0, $zero, 0x64
.L802BEA90:
/* 32A980 802BEA90 1062001E */  beq       $v1, $v0, .L802BEB0C
/* 32A984 802BEA94 28620065 */   slti     $v0, $v1, 0x65
/* 32A988 802BEA98 10400010 */  beqz      $v0, .L802BEADC
/* 32A98C 802BEA9C 24020003 */   addiu    $v0, $zero, 0x3
/* 32A990 802BEAA0 10620161 */  beq       $v1, $v0, .L802BF028
/* 32A994 802BEAA4 28620004 */   slti     $v0, $v1, 0x4
/* 32A998 802BEAA8 10400005 */  beqz      $v0, .L802BEAC0
/* 32A99C 802BEAAC 24020001 */   addiu    $v0, $zero, 0x1
/* 32A9A0 802BEAB0 10620125 */  beq       $v1, $v0, .L802BEF48
/* 32A9A4 802BEAB4 00000000 */   nop
/* 32A9A8 802BEAB8 080AFCBD */  j         .L802BF2F4
/* 32A9AC 802BEABC 00000000 */   nop
.L802BEAC0:
/* 32A9B0 802BEAC0 24020004 */  addiu     $v0, $zero, 0x4
/* 32A9B4 802BEAC4 106201B2 */  beq       $v1, $v0, .L802BF190
/* 32A9B8 802BEAC8 24020005 */   addiu    $v0, $zero, 0x5
/* 32A9BC 802BEACC 106201B7 */  beq       $v1, $v0, .L802BF1AC
/* 32A9C0 802BEAD0 0240202D */   daddu    $a0, $s2, $zero
/* 32A9C4 802BEAD4 080AFCBD */  j         .L802BF2F4
/* 32A9C8 802BEAD8 00000000 */   nop
.L802BEADC:
/* 32A9CC 802BEADC 24020066 */  addiu     $v0, $zero, 0x66
/* 32A9D0 802BEAE0 1062006F */  beq       $v1, $v0, .L802BECA0
/* 32A9D4 802BEAE4 0062102A */   slt      $v0, $v1, $v0
/* 32A9D8 802BEAE8 14400067 */  bnez      $v0, .L802BEC88
/* 32A9DC 802BEAEC 24042081 */   addiu    $a0, $zero, 0x2081
/* 32A9E0 802BEAF0 24020067 */  addiu     $v0, $zero, 0x67
/* 32A9E4 802BEAF4 1062006F */  beq       $v1, $v0, .L802BECB4
/* 32A9E8 802BEAF8 24020068 */   addiu    $v0, $zero, 0x68
/* 32A9EC 802BEAFC 106200F8 */  beq       $v1, $v0, .L802BEEE0
/* 32A9F0 802BEB00 00000000 */   nop
/* 32A9F4 802BEB04 080AFCBD */  j         .L802BF2F4
/* 32A9F8 802BEB08 00000000 */   nop
.L802BEB0C:
/* 32A9FC 802BEB0C 0C03803D */  jal       disable_player_static_collisions
/* 32AA00 802BEB10 24100001 */   addiu    $s0, $zero, 0x1
/* 32AA04 802BEB14 3C13802C */  lui       $s3, %hi(world_lakilester_LockingPlayerInput)
/* 32AA08 802BEB18 2673FE94 */  addiu     $s3, $s3, %lo(world_lakilester_LockingPlayerInput)
/* 32AA0C 802BEB1C 8E620000 */  lw        $v0, 0x0($s3)
/* 32AA10 802BEB20 3C01802C */  lui       $at, %hi(world_lakilester_PlayerCollisionDisabled)
/* 32AA14 802BEB24 AC30FE98 */  sw        $s0, %lo(world_lakilester_PlayerCollisionDisabled)($at)
/* 32AA18 802BEB28 14400005 */  bnez      $v0, .L802BEB40
/* 32AA1C 802BEB2C 3C050040 */   lui      $a1, (0x400100 >> 16)
/* 32AA20 802BEB30 0C038056 */  jal       disable_player_input
/* 32AA24 802BEB34 00000000 */   nop
/* 32AA28 802BEB38 AE700000 */  sw        $s0, 0x0($s3)
/* 32AA2C 802BEB3C 3C050040 */  lui       $a1, (0x400100 >> 16)
.L802BEB40:
/* 32AA30 802BEB40 34A50100 */  ori       $a1, $a1, (0x400100 & 0xFFFF)
/* 32AA34 802BEB44 24040021 */  addiu     $a0, $zero, 0x21
/* 32AA38 802BEB48 2403FFF7 */  addiu     $v1, $zero, -0x9
/* 32AA3C 802BEB4C 4480A000 */  mtc1      $zero, $f20
/* 32AA40 802BEB50 8E220000 */  lw        $v0, 0x0($s1)
/* 32AA44 802BEB54 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* 32AA48 802BEB58 4481B000 */  mtc1      $at, $f22
/* 32AA4C 802BEB5C 00431024 */  and       $v0, $v0, $v1
/* 32AA50 802BEB60 00451025 */  or        $v0, $v0, $a1
/* 32AA54 802BEB64 0C039761 */  jal       set_action_state
/* 32AA58 802BEB68 AE220000 */   sw       $v0, 0x0($s1)
/* 32AA5C 802BEB6C 3C01802C */  lui       $at, %hi(world_lakilester_MountState)
/* 32AA60 802BEB70 AC30FE9C */  sw        $s0, %lo(world_lakilester_MountState)($at)
/* 32AA64 802BEB74 0C03BD1D */  jal       partner_force_player_flip_done
/* 32AA68 802BEB78 0000802D */   daddu    $s0, $zero, $zero
/* 32AA6C 802BEB7C C6400028 */  lwc1      $f0, 0x28($s2)
/* 32AA70 802BEB80 E6200060 */  swc1      $f0, 0x60($s1)
/* 32AA74 802BEB84 C640002C */  lwc1      $f0, 0x2C($s2)
/* 32AA78 802BEB88 E6200064 */  swc1      $f0, 0x64($s1)
/* 32AA7C 802BEB8C C6400030 */  lwc1      $f0, 0x30($s2)
/* 32AA80 802BEB90 E6200068 */  swc1      $f0, 0x68($s1)
.L802BEB94:
/* 32AA84 802BEB94 3C040001 */  lui       $a0, (0x10000 >> 16)
/* 32AA88 802BEB98 27A50020 */  addiu     $a1, $sp, 0x20
/* 32AA8C 802BEB9C C6200060 */  lwc1      $f0, 0x60($s1)
/* 32AA90 802BEBA0 C6220064 */  lwc1      $f2, 0x64($s1)
/* 32AA94 802BEBA4 C6240068 */  lwc1      $f4, 0x68($s1)
/* 32AA98 802BEBA8 C6260018 */  lwc1      $f6, 0x18($s1)
/* 32AA9C 802BEBAC 27A60024 */  addiu     $a2, $sp, 0x24
/* 32AAA0 802BEBB0 E7A00020 */  swc1      $f0, 0x20($sp)
/* 32AAA4 802BEBB4 E7A20024 */  swc1      $f2, 0x24($sp)
/* 32AAA8 802BEBB8 E7A40028 */  swc1      $f4, 0x28($sp)
/* 32AAAC 802BEBBC E7A60010 */  swc1      $f6, 0x10($sp)
/* 32AAB0 802BEBC0 E7B40014 */  swc1      $f20, 0x14($sp)
/* 32AAB4 802BEBC4 862200A8 */  lh        $v0, 0xA8($s1)
/* 32AAB8 802BEBC8 27A70028 */  addiu     $a3, $sp, 0x28
/* 32AABC 802BEBCC 44820000 */  mtc1      $v0, $f0
/* 32AAC0 802BEBD0 00000000 */  nop
/* 32AAC4 802BEBD4 46800020 */  cvt.s.w   $f0, $f0
/* 32AAC8 802BEBD8 E7A00018 */  swc1      $f0, 0x18($sp)
/* 32AACC 802BEBDC 862200A6 */  lh        $v0, 0xA6($s1)
/* 32AAD0 802BEBE0 26100001 */  addiu     $s0, $s0, 0x1
/* 32AAD4 802BEBE4 44820000 */  mtc1      $v0, $f0
/* 32AAD8 802BEBE8 00000000 */  nop
/* 32AADC 802BEBEC 46800020 */  cvt.s.w   $f0, $f0
/* 32AAE0 802BEBF0 0C037709 */  jal       npc_test_move_simple_with_slipping
/* 32AAE4 802BEBF4 E7A0001C */   swc1     $f0, 0x1C($sp)
/* 32AAE8 802BEBF8 2A020004 */  slti      $v0, $s0, 0x4
/* 32AAEC 802BEBFC C7A00020 */  lwc1      $f0, 0x20($sp)
/* 32AAF0 802BEC00 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 32AAF4 802BEC04 C7A40028 */  lwc1      $f4, 0x28($sp)
/* 32AAF8 802BEC08 4616A500 */  add.s     $f20, $f20, $f22
/* 32AAFC 802BEC0C E6200060 */  swc1      $f0, 0x60($s1)
/* 32AB00 802BEC10 E6220064 */  swc1      $f2, 0x64($s1)
/* 32AB04 802BEC14 1440FFDF */  bnez      $v0, .L802BEB94
/* 32AB08 802BEC18 E6240068 */   swc1     $f4, 0x68($s1)
/* 32AB0C 802BEC1C C62C0038 */  lwc1      $f12, 0x38($s1)
/* 32AB10 802BEC20 C62E0040 */  lwc1      $f14, 0x40($s1)
/* 32AB14 802BEC24 44060000 */  mfc1      $a2, $f0
/* 32AB18 802BEC28 44072000 */  mfc1      $a3, $f4
/* 32AB1C 802BEC2C 0C00A710 */  jal       atan2
/* 32AB20 802BEC30 00000000 */   nop
/* 32AB24 802BEC34 3C030008 */  lui       $v1, (0x80005 >> 16)
/* 32AB28 802BEC38 34630005 */  ori       $v1, $v1, (0x80005 & 0xFFFF)
/* 32AB2C 802BEC3C 3C040001 */  lui       $a0, (0x10006 >> 16)
/* 32AB30 802BEC40 34840006 */  ori       $a0, $a0, (0x10006 & 0xFFFF)
/* 32AB34 802BEC44 E620000C */  swc1      $f0, 0xC($s1)
/* 32AB38 802BEC48 3C014100 */  lui       $at, (0x41000000 >> 16)
/* 32AB3C 802BEC4C 44810000 */  mtc1      $at, $f0
/* 32AB40 802BEC50 3C013FB3 */  lui       $at, (0x3FB33333 >> 16)
/* 32AB44 802BEC54 34213333 */  ori       $at, $at, (0x3FB33333 & 0xFFFF)
/* 32AB48 802BEC58 44811000 */  mtc1      $at, $f2
/* 32AB4C 802BEC5C 2402000C */  addiu     $v0, $zero, 0xC
/* 32AB50 802BEC60 A622008E */  sh        $v0, 0x8E($s1)
/* 32AB54 802BEC64 AE230028 */  sw        $v1, 0x28($s1)
/* 32AB58 802BEC68 E620001C */  swc1      $f0, 0x1C($s1)
/* 32AB5C 802BEC6C 0C037FB7 */  jal       suggest_player_anim_allow_backward
/* 32AB60 802BEC70 E6220014 */   swc1     $f2, 0x14($s1)
/* 32AB64 802BEC74 24020065 */  addiu     $v0, $zero, 0x65
/* 32AB68 802BEC78 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32AB6C 802BEC7C AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32AB70 802BEC80 080AFCBD */  j         .L802BF2F4
/* 32AB74 802BEC84 00000000 */   nop
.L802BEC88:
/* 32AB78 802BEC88 0000282D */  daddu     $a1, $zero, $zero
/* 32AB7C 802BEC8C 0C053B6E */  jal       sfx_play_sound_at_npc
/* 32AB80 802BEC90 2406FFFC */   addiu    $a2, $zero, -0x4
/* 32AB84 802BEC94 3C040001 */  lui       $a0, (0x10007 >> 16)
/* 32AB88 802BEC98 0C037FB7 */  jal       suggest_player_anim_allow_backward
/* 32AB8C 802BEC9C 34840007 */   ori      $a0, $a0, (0x10007 & 0xFFFF)
.L802BECA0:
/* 32AB90 802BECA0 3C03802C */  lui       $v1, %hi(world_lakilester_AbilityState)
/* 32AB94 802BECA4 2463FEA4 */  addiu     $v1, $v1, %lo(world_lakilester_AbilityState)
/* 32AB98 802BECA8 8C620000 */  lw        $v0, 0x0($v1)
/* 32AB9C 802BECAC 24420001 */  addiu     $v0, $v0, 0x1
/* 32ABA0 802BECB0 AC620000 */  sw        $v0, 0x0($v1)
.L802BECB4:
/* 32ABA4 802BECB4 C6200060 */  lwc1      $f0, 0x60($s1)
/* 32ABA8 802BECB8 C62A0038 */  lwc1      $f10, 0x38($s1)
/* 32ABAC 802BECBC 8622008E */  lh        $v0, 0x8E($s1)
/* 32ABB0 802BECC0 460A0001 */  sub.s     $f0, $f0, $f10
/* 32ABB4 802BECC4 C6280040 */  lwc1      $f8, 0x40($s1)
/* 32ABB8 802BECC8 44821000 */  mtc1      $v0, $f2
/* 32ABBC 802BECCC 00000000 */  nop
/* 32ABC0 802BECD0 468010A0 */  cvt.s.w   $f2, $f2
/* 32ABC4 802BECD4 46020003 */  div.s     $f0, $f0, $f2
/* 32ABC8 802BECD8 46005280 */  add.s     $f10, $f10, $f0
/* 32ABCC 802BECDC C6200068 */  lwc1      $f0, 0x68($s1)
/* 32ABD0 802BECE0 C626003C */  lwc1      $f6, 0x3C($s1)
/* 32ABD4 802BECE4 46080001 */  sub.s     $f0, $f0, $f8
/* 32ABD8 802BECE8 C6220064 */  lwc1      $f2, 0x64($s1)
/* 32ABDC 802BECEC 46061081 */  sub.s     $f2, $f2, $f6
/* 32ABE0 802BECF0 44822000 */  mtc1      $v0, $f4
/* 32ABE4 802BECF4 00000000 */  nop
/* 32ABE8 802BECF8 46802120 */  cvt.s.w   $f4, $f4
/* 32ABEC 802BECFC 46040003 */  div.s     $f0, $f0, $f4
/* 32ABF0 802BED00 46004200 */  add.s     $f8, $f8, $f0
/* 32ABF4 802BED04 46002006 */  mov.s     $f0, $f4
/* 32ABF8 802BED08 46001083 */  div.s     $f2, $f2, $f0
/* 32ABFC 802BED0C 46023180 */  add.s     $f6, $f6, $f2
/* 32AC00 802BED10 C622001C */  lwc1      $f2, 0x1C($s1)
/* 32AC04 802BED14 E62A0038 */  swc1      $f10, 0x38($s1)
/* 32AC08 802BED18 E6280040 */  swc1      $f8, 0x40($s1)
/* 32AC0C 802BED1C E626003C */  swc1      $f6, 0x3C($s1)
/* 32AC10 802BED20 864200B0 */  lh        $v0, 0xB0($s2)
/* 32AC14 802BED24 C640002C */  lwc1      $f0, 0x2C($s2)
/* 32AC18 802BED28 44828000 */  mtc1      $v0, $f16
/* 32AC1C 802BED2C 00000000 */  nop
/* 32AC20 802BED30 46808420 */  cvt.s.w   $f16, $f16
/* 32AC24 802BED34 00021040 */  sll       $v0, $v0, 1
/* 32AC28 802BED38 44058000 */  mfc1      $a1, $f16
/* 32AC2C 802BED3C 44828000 */  mtc1      $v0, $f16
/* 32AC30 802BED40 00000000 */  nop
/* 32AC34 802BED44 46808420 */  cvt.s.w   $f16, $f16
/* 32AC38 802BED48 46020000 */  add.s     $f0, $f0, $f2
/* 32AC3C 802BED4C 44068000 */  mfc1      $a2, $f16
/* 32AC40 802BED50 0220202D */  daddu     $a0, $s1, $zero
/* 32AC44 802BED54 0C0AF96B */  jal       world_lakilester_test_mounting_height_adjustment
/* 32AC48 802BED58 E640002C */   swc1     $f0, 0x2C($s2)
/* 32AC4C 802BED5C C640002C */  lwc1      $f0, 0x2C($s2)
/* 32AC50 802BED60 3C01802C */  lui       $at, %hi(world_lakilester_MountingDeltaY)
/* 32AC54 802BED64 C422FEB4 */  lwc1      $f2, %lo(world_lakilester_MountingDeltaY)($at)
/* 32AC58 802BED68 468010A0 */  cvt.s.w   $f2, $f2
/* 32AC5C 802BED6C 46020000 */  add.s     $f0, $f0, $f2
/* 32AC60 802BED70 26300038 */  addiu     $s0, $s1, 0x38
/* 32AC64 802BED74 E640002C */  swc1      $f0, 0x2C($s2)
/* 32AC68 802BED78 C624003C */  lwc1      $f4, 0x3C($s1)
/* 32AC6C 802BED7C C6200014 */  lwc1      $f0, 0x14($s1)
/* 32AC70 802BED80 46022100 */  add.s     $f4, $f4, $f2
/* 32AC74 802BED84 C622001C */  lwc1      $f2, 0x1C($s1)
/* 32AC78 802BED88 4480A000 */  mtc1      $zero, $f20
/* 32AC7C 802BED8C 46001081 */  sub.s     $f2, $f2, $f0
/* 32AC80 802BED90 26330040 */  addiu     $s3, $s1, 0x40
/* 32AC84 802BED94 E624003C */  swc1      $f4, 0x3C($s1)
/* 32AC88 802BED98 4614103E */  c.le.s    $f2, $f20
/* 32AC8C 802BED9C 00000000 */  nop
/* 32AC90 802BEDA0 45000004 */  bc1f      .L802BEDB4
/* 32AC94 802BEDA4 E622001C */   swc1     $f2, 0x1C($s1)
/* 32AC98 802BEDA8 3C040001 */  lui       $a0, (0x10008 >> 16)
/* 32AC9C 802BEDAC 0C037FB7 */  jal       suggest_player_anim_allow_backward
/* 32ACA0 802BEDB0 34840008 */   ori      $a0, $a0, (0x10008 & 0xFFFF)
.L802BEDB4:
/* 32ACA4 802BEDB4 9622008E */  lhu       $v0, 0x8E($s1)
/* 32ACA8 802BEDB8 2442FFFF */  addiu     $v0, $v0, -0x1
/* 32ACAC 802BEDBC A622008E */  sh        $v0, 0x8E($s1)
/* 32ACB0 802BEDC0 00021400 */  sll       $v0, $v0, 16
/* 32ACB4 802BEDC4 00021C03 */  sra       $v1, $v0, 16
/* 32ACB8 802BEDC8 18600015 */  blez      $v1, .L802BEE20
/* 32ACBC 802BEDCC 24020001 */   addiu    $v0, $zero, 0x1
/* 32ACC0 802BEDD0 14620148 */  bne       $v1, $v0, .L802BF2F4
/* 32ACC4 802BEDD4 00000000 */   nop
/* 32ACC8 802BEDD8 0200202D */  daddu     $a0, $s0, $zero
/* 32ACCC 802BEDDC 3C028007 */  lui       $v0, %hi(gCurrentCameraID)
/* 32ACD0 802BEDE0 8C4273E0 */  lw        $v0, %lo(gCurrentCameraID)($v0)
/* 32ACD4 802BEDE4 3C06C000 */  lui       $a2, (0xC0000000 >> 16)
/* 32ACD8 802BEDE8 00021880 */  sll       $v1, $v0, 2
/* 32ACDC 802BEDEC 00621821 */  addu      $v1, $v1, $v0
/* 32ACE0 802BEDF0 00031880 */  sll       $v1, $v1, 2
/* 32ACE4 802BEDF4 00621823 */  subu      $v1, $v1, $v0
/* 32ACE8 802BEDF8 000310C0 */  sll       $v0, $v1, 3
/* 32ACEC 802BEDFC 00621821 */  addu      $v1, $v1, $v0
/* 32ACF0 802BEE00 000318C0 */  sll       $v1, $v1, 3
/* 32ACF4 802BEE04 3C07800B */  lui       $a3, %hi(gCameras + 0x6C)
/* 32ACF8 802BEE08 00E33821 */  addu      $a3, $a3, $v1
/* 32ACFC 802BEE0C 8CE71DCC */  lw        $a3, %lo(gCameras + 0x6C)($a3)
/* 32AD00 802BEE10 0C00A7D7 */  jal       add_vec2D_polar
/* 32AD04 802BEE14 0260282D */   daddu    $a1, $s3, $zero
/* 32AD08 802BEE18 080AFCBD */  j         .L802BF2F4
/* 32AD0C 802BEE1C 00000000 */   nop
.L802BEE20:
/* 32AD10 802BEE20 C622003C */  lwc1      $f2, 0x3C($s1)
/* 32AD14 802BEE24 3C014120 */  lui       $at, (0x41200000 >> 16)
/* 32AD18 802BEE28 44810000 */  mtc1      $at, $f0
/* 32AD1C 802BEE2C 00000000 */  nop
/* 32AD20 802BEE30 46001080 */  add.s     $f2, $f2, $f0
/* 32AD24 802BEE34 C640005C */  lwc1      $f0, 0x5C($s2)
/* 32AD28 802BEE38 24040021 */  addiu     $a0, $zero, 0x21
/* 32AD2C 802BEE3C E642002C */  swc1      $f2, 0x2C($s2)
/* 32AD30 802BEE40 E6200018 */  swc1      $f0, 0x18($s1)
/* 32AD34 802BEE44 E6340014 */  swc1      $f20, 0x14($s1)
/* 32AD38 802BEE48 C6400080 */  lwc1      $f0, 0x80($s2)
/* 32AD3C 802BEE4C 24020003 */  addiu     $v0, $zero, 0x3
/* 32AD40 802BEE50 A622008E */  sh        $v0, 0x8E($s1)
/* 32AD44 802BEE54 0C039761 */  jal       set_action_state
/* 32AD48 802BEE58 E620000C */   swc1     $f0, 0xC($s1)
/* 32AD4C 802BEE5C 3C040008 */  lui       $a0, (0x8000E >> 16)
/* 32AD50 802BEE60 0C037FD6 */  jal       suggest_player_anim_always_forward
/* 32AD54 802BEE64 3484000E */   ori      $a0, $a0, (0x8000E & 0xFFFF)
/* 32AD58 802BEE68 0C038031 */  jal       disable_player_shadow
/* 32AD5C 802BEE6C 00000000 */   nop
/* 32AD60 802BEE70 24020008 */  addiu     $v0, $zero, 0x8
/* 32AD64 802BEE74 A2A20003 */  sb        $v0, 0x3($s5)
/* 32AD68 802BEE78 24020001 */  addiu     $v0, $zero, 0x1
/* 32AD6C 802BEE7C 3C014000 */  lui       $at, (0x40000000 >> 16)
/* 32AD70 802BEE80 44816000 */  mtc1      $at, $f12
/* 32AD74 802BEE84 2403FEFF */  addiu     $v1, $zero, -0x101
/* 32AD78 802BEE88 A2A20000 */  sb        $v0, 0x0($s5)
/* 32AD7C 802BEE8C 8E420000 */  lw        $v0, 0x0($s2)
/* 32AD80 802BEE90 3C048007 */  lui       $a0, %hi(gGameStatusPtr)
/* 32AD84 802BEE94 8C84417C */  lw        $a0, %lo(gGameStatusPtr)($a0)
/* 32AD88 802BEE98 00431024 */  and       $v0, $v0, $v1
/* 32AD8C 802BEE9C AE420000 */  sw        $v0, 0x0($s2)
/* 32AD90 802BEEA0 24020002 */  addiu     $v0, $zero, 0x2
/* 32AD94 802BEEA4 A080007D */  sb        $zero, 0x7D($a0)
/* 32AD98 802BEEA8 3C01802C */  lui       $at, %hi(world_lakilester_PlayerBounceOffset)
/* 32AD9C 802BEEAC AC20FEA8 */  sw        $zero, %lo(world_lakilester_PlayerBounceOffset)($at)
/* 32ADA0 802BEEB0 3C01802C */  lui       $at, %hi(world_lakilester_MountState)
/* 32ADA4 802BEEB4 AC22FE9C */  sw        $v0, %lo(world_lakilester_MountState)($at)
/* 32ADA8 802BEEB8 0C0AFEB7 */  jal       world_lakilester_offset_player_from_camera
/* 32ADAC 802BEEBC 00000000 */   nop
/* 32ADB0 802BEEC0 24020068 */  addiu     $v0, $zero, 0x68
/* 32ADB4 802BEEC4 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32ADB8 802BEEC8 AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32ADBC 802BEECC 8E420004 */  lw        $v0, 0x4($s2)
/* 32ADC0 802BEED0 3C030040 */  lui       $v1, (0x400000 >> 16)
/* 32ADC4 802BEED4 00431025 */  or        $v0, $v0, $v1
/* 32ADC8 802BEED8 080AFCBD */  j         .L802BF2F4
/* 32ADCC 802BEEDC AE420004 */   sw       $v0, 0x4($s2)
.L802BEEE0:
/* 32ADD0 802BEEE0 9622008E */  lhu       $v0, 0x8E($s1)
/* 32ADD4 802BEEE4 2442FFFF */  addiu     $v0, $v0, -0x1
/* 32ADD8 802BEEE8 A622008E */  sh        $v0, 0x8E($s1)
/* 32ADDC 802BEEEC 00021400 */  sll       $v0, $v0, 16
/* 32ADE0 802BEEF0 10400011 */  beqz      $v0, .L802BEF38
/* 32ADE4 802BEEF4 24030001 */   addiu    $v1, $zero, 0x1
/* 32ADE8 802BEEF8 8E420000 */  lw        $v0, 0x0($s2)
/* 32ADEC 802BEEFC 30420800 */  andi      $v0, $v0, 0x800
/* 32ADF0 802BEF00 10400003 */  beqz      $v0, .L802BEF10
/* 32ADF4 802BEF04 2402000A */   addiu    $v0, $zero, 0xA
/* 32ADF8 802BEF08 080AFCBD */  j         .L802BF2F4
/* 32ADFC 802BEF0C AE020000 */   sw       $v0, 0x0($s0)
.L802BEF10:
/* 32AE00 802BEF10 8EA2000C */  lw        $v0, 0xC($s5)
/* 32AE04 802BEF14 30424004 */  andi      $v0, $v0, 0x4004
/* 32AE08 802BEF18 104000F6 */  beqz      $v0, .L802BF2F4
/* 32AE0C 802BEF1C 00000000 */   nop
/* 32AE10 802BEF20 0C0AF5F7 */  jal       world_lakilester_can_dismount
/* 32AE14 802BEF24 00000000 */   nop
/* 32AE18 802BEF28 104000F2 */  beqz      $v0, .L802BF2F4
/* 32AE1C 802BEF2C 24020003 */   addiu    $v0, $zero, 0x3
/* 32AE20 802BEF30 080AFCBD */  j         .L802BF2F4
/* 32AE24 802BEF34 AE020000 */   sw       $v0, 0x0($s0)
.L802BEF38:
/* 32AE28 802BEF38 8E220000 */  lw        $v0, 0x0($s1)
/* 32AE2C 802BEF3C AE030000 */  sw        $v1, 0x0($s0)
/* 32AE30 802BEF40 34420040 */  ori       $v0, $v0, 0x40
/* 32AE34 802BEF44 AE220000 */  sw        $v0, 0x0($s1)
.L802BEF48:
/* 32AE38 802BEF48 0C0AF739 */  jal       world_lakilester_update_riding_physics
/* 32AE3C 802BEF4C 0220202D */   daddu    $a0, $s1, $zero
/* 32AE40 802BEF50 3C030040 */  lui       $v1, (0x400000 >> 16)
/* 32AE44 802BEF54 3C04802C */  lui       $a0, %hi(world_lakilester_PlayerBounceOffset)
/* 32AE48 802BEF58 2484FEA8 */  addiu     $a0, $a0, %lo(world_lakilester_PlayerBounceOffset)
/* 32AE4C 802BEF5C 8E420004 */  lw        $v0, 0x4($s2)
/* 32AE50 802BEF60 3C014000 */  lui       $at, (0x40000000 >> 16)
/* 32AE54 802BEF64 44811000 */  mtc1      $at, $f2
/* 32AE58 802BEF68 00431025 */  or        $v0, $v0, $v1
/* 32AE5C 802BEF6C AE420004 */  sw        $v0, 0x4($s2)
/* 32AE60 802BEF70 8C830000 */  lw        $v1, 0x0($a0)
/* 32AE64 802BEF74 C6200064 */  lwc1      $f0, 0x64($s1)
/* 32AE68 802BEF78 24620001 */  addiu     $v0, $v1, 0x1
/* 32AE6C 802BEF7C 46020000 */  add.s     $f0, $f0, $f2
/* 32AE70 802BEF80 AC820000 */  sw        $v0, 0x0($a0)
/* 32AE74 802BEF84 2842000A */  slti      $v0, $v0, 0xA
/* 32AE78 802BEF88 14400003 */  bnez      $v0, .L802BEF98
/* 32AE7C 802BEF8C E620003C */   swc1     $f0, 0x3C($s1)
/* 32AE80 802BEF90 2462FFEF */  addiu     $v0, $v1, -0x11
/* 32AE84 802BEF94 AC820000 */  sw        $v0, 0x0($a0)
.L802BEF98:
/* 32AE88 802BEF98 82A20014 */  lb        $v0, 0x14($s5)
/* 32AE8C 802BEF9C 14400003 */  bnez      $v0, .L802BEFAC
/* 32AE90 802BEFA0 00000000 */   nop
/* 32AE94 802BEFA4 C620000C */  lwc1      $f0, 0xC($s1)
/* 32AE98 802BEFA8 E6400080 */  swc1      $f0, 0x80($s2)
.L802BEFAC:
/* 32AE9C 802BEFAC 8E420000 */  lw        $v0, 0x0($s2)
/* 32AEA0 802BEFB0 30420800 */  andi      $v0, $v0, 0x800
/* 32AEA4 802BEFB4 144000B8 */  bnez      $v0, .L802BF298
/* 32AEA8 802BEFB8 2402000A */   addiu    $v0, $zero, 0xA
/* 32AEAC 802BEFBC 8EA2000C */  lw        $v0, 0xC($s5)
/* 32AEB0 802BEFC0 30424004 */  andi      $v0, $v0, 0x4004
/* 32AEB4 802BEFC4 104000CB */  beqz      $v0, .L802BF2F4
/* 32AEB8 802BEFC8 00000000 */   nop
/* 32AEBC 802BEFCC 0C0AF5F7 */  jal       world_lakilester_can_dismount
/* 32AEC0 802BEFD0 00000000 */   nop
/* 32AEC4 802BEFD4 10400005 */  beqz      $v0, .L802BEFEC
/* 32AEC8 802BEFD8 24020003 */   addiu    $v0, $zero, 0x3
/* 32AECC 802BEFDC 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32AED0 802BEFE0 AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32AED4 802BEFE4 080AFCBD */  j         .L802BF2F4
/* 32AED8 802BEFE8 00000000 */   nop
.L802BEFEC:
/* 32AEDC 802BEFEC 8E420004 */  lw        $v0, 0x4($s2)
/* 32AEE0 802BEFF0 3C034000 */  lui       $v1, (0x40000000 >> 16)
/* 32AEE4 802BEFF4 00431024 */  and       $v0, $v0, $v1
/* 32AEE8 802BEFF8 14400006 */  bnez      $v0, .L802BF014
/* 32AEEC 802BEFFC 3C03BFFF */   lui      $v1, (0xBFFFFFFF >> 16)
/* 32AEF0 802BF000 2404021D */  addiu     $a0, $zero, 0x21D
/* 32AEF4 802BF004 0000282D */  daddu     $a1, $zero, $zero
/* 32AEF8 802BF008 0C053B6E */  jal       sfx_play_sound_at_npc
/* 32AEFC 802BF00C 2406FFFC */   addiu    $a2, $zero, -0x4
/* 32AF00 802BF010 3C03BFFF */  lui       $v1, (0xBFFFFFFF >> 16)
.L802BF014:
/* 32AF04 802BF014 8E420004 */  lw        $v0, 0x4($s2)
/* 32AF08 802BF018 3463FFFF */  ori       $v1, $v1, (0xBFFFFFFF & 0xFFFF)
/* 32AF0C 802BF01C 00431024 */  and       $v0, $v0, $v1
/* 32AF10 802BF020 080AFCBD */  j         .L802BF2F4
/* 32AF14 802BF024 AE420004 */   sw       $v0, 0x4($s2)
.L802BF028:
/* 32AF18 802BF028 8E220000 */  lw        $v0, 0x0($s1)
/* 32AF1C 802BF02C 2403FFBF */  addiu     $v1, $zero, -0x41
/* 32AF20 802BF030 00431024 */  and       $v0, $v0, $v1
/* 32AF24 802BF034 AE220000 */  sw        $v0, 0x0($s1)
/* 32AF28 802BF038 8E420000 */  lw        $v0, 0x0($s2)
/* 32AF2C 802BF03C 34420100 */  ori       $v0, $v0, 0x100
/* 32AF30 802BF040 0C0AF5F7 */  jal       world_lakilester_can_dismount
/* 32AF34 802BF044 AE420000 */   sw       $v0, 0x0($s2)
/* 32AF38 802BF048 3C02800B */  lui       $v0, %hi(gCameras)
/* 32AF3C 802BF04C 24421D60 */  addiu     $v0, $v0, %lo(gCameras)
/* 32AF40 802BF050 C64200A8 */  lwc1      $f2, 0xA8($s2)
/* 32AF44 802BF054 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* 32AF48 802BF058 44813000 */  mtc1      $at, $f6
/* 32AF4C 802BF05C C444006C */  lwc1      $f4, 0x6C($v0)
/* 32AF50 802BF060 4602303E */  c.le.s    $f6, $f2
/* 32AF54 802BF064 00000000 */  nop
/* 32AF58 802BF068 4500000E */  bc1f      .L802BF0A4
/* 32AF5C 802BF06C 00000000 */   nop
/* 32AF60 802BF070 3C014387 */  lui       $at, (0x43870000 >> 16)
/* 32AF64 802BF074 44810000 */  mtc1      $at, $f0
/* 32AF68 802BF078 00000000 */  nop
/* 32AF6C 802BF07C 4600103C */  c.lt.s    $f2, $f0
/* 32AF70 802BF080 00000000 */  nop
/* 32AF74 802BF084 45000007 */  bc1f      .L802BF0A4
/* 32AF78 802BF088 00000000 */   nop
/* 32AF7C 802BF08C 3C014334 */  lui       $at, (0x43340000 >> 16)
/* 32AF80 802BF090 44810000 */  mtc1      $at, $f0
/* 32AF84 802BF094 00000000 */  nop
/* 32AF88 802BF098 46002000 */  add.s     $f0, $f4, $f0
/* 32AF8C 802BF09C 080AFC30 */  j         .L802BF0C0
/* 32AF90 802BF0A0 46060501 */   sub.s    $f20, $f0, $f6
.L802BF0A4:
/* 32AF94 802BF0A4 44800000 */  mtc1      $zero, $f0
/* 32AF98 802BF0A8 00000000 */  nop
/* 32AF9C 802BF0AC 46002000 */  add.s     $f0, $f4, $f0
/* 32AFA0 802BF0B0 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* 32AFA4 802BF0B4 44811000 */  mtc1      $at, $f2
/* 32AFA8 802BF0B8 00000000 */  nop
/* 32AFAC 802BF0BC 46020501 */  sub.s     $f20, $f0, $f2
.L802BF0C0:
/* 32AFB0 802BF0C0 E634000C */  swc1      $f20, 0xC($s1)
/* 32AFB4 802BF0C4 C64C0028 */  lwc1      $f12, 0x28($s2)
/* 32AFB8 802BF0C8 C64E0030 */  lwc1      $f14, 0x30($s2)
/* 32AFBC 802BF0CC 8E260060 */  lw        $a2, 0x60($s1)
/* 32AFC0 802BF0D0 0C00A7A5 */  jal       dist2D
/* 32AFC4 802BF0D4 8E270068 */   lw       $a3, 0x68($s1)
/* 32AFC8 802BF0D8 C64C0028 */  lwc1      $f12, 0x28($s2)
/* 32AFCC 802BF0DC C64E0030 */  lwc1      $f14, 0x30($s2)
/* 32AFD0 802BF0E0 8E260060 */  lw        $a2, 0x60($s1)
/* 32AFD4 802BF0E4 8E270068 */  lw        $a3, 0x68($s1)
/* 32AFD8 802BF0E8 0C00A710 */  jal       atan2
/* 32AFDC 802BF0EC E7A0002C */   swc1     $f0, 0x2C($sp)
/* 32AFE0 802BF0F0 C6240064 */  lwc1      $f4, 0x64($s1)
/* 32AFE4 802BF0F4 C622003C */  lwc1      $f2, 0x3C($s1)
/* 32AFE8 802BF0F8 E620000C */  swc1      $f0, 0xC($s1)
/* 32AFEC 802BF0FC 3C013F99 */  lui       $at, (0x3F99999A >> 16)
/* 32AFF0 802BF100 3421999A */  ori       $at, $at, (0x3F99999A & 0xFFFF)
/* 32AFF4 802BF104 44810000 */  mtc1      $at, $f0
/* 32AFF8 802BF108 2402000E */  addiu     $v0, $zero, 0xE
/* 32AFFC 802BF10C A622008E */  sh        $v0, 0x8E($s1)
/* 32B000 802BF110 4604103C */  c.lt.s    $f2, $f4
/* 32B004 802BF114 00000000 */  nop
/* 32B008 802BF118 45000009 */  bc1f      .L802BF140
/* 32B00C 802BF11C E6200014 */   swc1     $f0, 0x14($s1)
/* 32B010 802BF120 46022001 */  sub.s     $f0, $f4, $f2
/* 32B014 802BF124 3C014160 */  lui       $at, (0x41600000 >> 16)
/* 32B018 802BF128 44811000 */  mtc1      $at, $f2
/* 32B01C 802BF12C 3C0140C0 */  lui       $at, (0x40C00000 >> 16)
/* 32B020 802BF130 44812000 */  mtc1      $at, $f4
/* 32B024 802BF134 46020003 */  div.s     $f0, $f0, $f2
/* 32B028 802BF138 080AFC53 */  j         .L802BF14C
/* 32B02C 802BF13C 46040000 */   add.s    $f0, $f0, $f4
.L802BF140:
/* 32B030 802BF140 3C0140C0 */  lui       $at, (0x40C00000 >> 16)
/* 32B034 802BF144 44810000 */  mtc1      $at, $f0
/* 32B038 802BF148 00000000 */  nop
.L802BF14C:
/* 32B03C 802BF14C E620001C */  swc1      $f0, 0x1C($s1)
/* 32B040 802BF150 3C040001 */  lui       $a0, (0x10006 >> 16)
/* 32B044 802BF154 34840006 */  ori       $a0, $a0, (0x10006 & 0xFFFF)
/* 32B048 802BF158 8622008E */  lh        $v0, 0x8E($s1)
/* 32B04C 802BF15C C7A0002C */  lwc1      $f0, 0x2C($sp)
/* 32B050 802BF160 44821000 */  mtc1      $v0, $f2
/* 32B054 802BF164 00000000 */  nop
/* 32B058 802BF168 468010A0 */  cvt.s.w   $f2, $f2
/* 32B05C 802BF16C 46020003 */  div.s     $f0, $f0, $f2
/* 32B060 802BF170 0C037FB7 */  jal       suggest_player_anim_allow_backward
/* 32B064 802BF174 E6200018 */   swc1     $f0, 0x18($s1)
/* 32B068 802BF178 3C03802C */  lui       $v1, %hi(world_lakilester_AbilityState)
/* 32B06C 802BF17C 2463FEA4 */  addiu     $v1, $v1, %lo(world_lakilester_AbilityState)
/* 32B070 802BF180 8C620000 */  lw        $v0, 0x0($v1)
/* 32B074 802BF184 24420001 */  addiu     $v0, $v0, 0x1
/* 32B078 802BF188 080AFCBD */  j         .L802BF2F4
/* 32B07C 802BF18C AC620000 */   sw       $v0, 0x0($v1)
.L802BF190:
/* 32B080 802BF190 3C040001 */  lui       $a0, (0x10007 >> 16)
/* 32B084 802BF194 0C037FB7 */  jal       suggest_player_anim_allow_backward
/* 32B088 802BF198 34840007 */   ori      $a0, $a0, (0x10007 & 0xFFFF)
/* 32B08C 802BF19C 8E020000 */  lw        $v0, 0x0($s0)
/* 32B090 802BF1A0 24420001 */  addiu     $v0, $v0, 0x1
/* 32B094 802BF1A4 AE020000 */  sw        $v0, 0x0($s0)
/* 32B098 802BF1A8 0240202D */  daddu     $a0, $s2, $zero
.L802BF1AC:
/* 32B09C 802BF1AC 3C08800B */  lui       $t0, %hi(gCameras)
/* 32B0A0 802BF1B0 25081D60 */  addiu     $t0, $t0, %lo(gCameras)
/* 32B0A4 802BF1B4 27A50020 */  addiu     $a1, $sp, 0x20
/* 32B0A8 802BF1B8 27B40024 */  addiu     $s4, $sp, 0x24
/* 32B0AC 802BF1BC 0280302D */  daddu     $a2, $s4, $zero
/* 32B0B0 802BF1C0 27A70028 */  addiu     $a3, $sp, 0x28
/* 32B0B4 802BF1C4 26500028 */  addiu     $s0, $s2, 0x28
/* 32B0B8 802BF1C8 95020002 */  lhu       $v0, 0x2($t0)
/* 32B0BC 802BF1CC 26530030 */  addiu     $s3, $s2, 0x30
/* 32B0C0 802BF1D0 34420001 */  ori       $v0, $v0, 0x1
/* 32B0C4 802BF1D4 A5020002 */  sh        $v0, 0x2($t0)
/* 32B0C8 802BF1D8 C640002C */  lwc1      $f0, 0x2C($s2)
/* 32B0CC 802BF1DC C622001C */  lwc1      $f2, 0x1C($s1)
/* 32B0D0 802BF1E0 864200B0 */  lh        $v0, 0xB0($s2)
/* 32B0D4 802BF1E4 C6480028 */  lwc1      $f8, 0x28($s2)
/* 32B0D8 802BF1E8 46020000 */  add.s     $f0, $f0, $f2
/* 32B0DC 802BF1EC 3C013F00 */  lui       $at, (0x3F000000 >> 16)
/* 32B0E0 802BF1F0 44811000 */  mtc1      $at, $f2
/* 32B0E4 802BF1F4 44826000 */  mtc1      $v0, $f12
/* 32B0E8 802BF1F8 00000000 */  nop
/* 32B0EC 802BF1FC 46806320 */  cvt.s.w   $f12, $f12
/* 32B0F0 802BF200 46026302 */  mul.s     $f12, $f12, $f2
/* 32B0F4 802BF204 00000000 */  nop
/* 32B0F8 802BF208 C64A0030 */  lwc1      $f10, 0x30($s2)
/* 32B0FC 802BF20C 0040182D */  daddu     $v1, $v0, $zero
/* 32B100 802BF210 E640002C */  swc1      $f0, 0x2C($s2)
/* 32B104 802BF214 44830000 */  mtc1      $v1, $f0
/* 32B108 802BF218 00000000 */  nop
/* 32B10C 802BF21C 46800020 */  cvt.s.w   $f0, $f0
/* 32B110 802BF220 46020002 */  mul.s     $f0, $f0, $f2
/* 32B114 802BF224 00000000 */  nop
/* 32B118 802BF228 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 32B11C 802BF22C 8C6373E0 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 32B120 802BF230 C644002C */  lwc1      $f4, 0x2C($s2)
/* 32B124 802BF234 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* 32B128 802BF238 44811000 */  mtc1      $at, $f2
/* 32B12C 802BF23C 00031080 */  sll       $v0, $v1, 2
/* 32B130 802BF240 00431021 */  addu      $v0, $v0, $v1
/* 32B134 802BF244 00021080 */  sll       $v0, $v0, 2
/* 32B138 802BF248 00431023 */  subu      $v0, $v0, $v1
/* 32B13C 802BF24C 000218C0 */  sll       $v1, $v0, 3
/* 32B140 802BF250 00431021 */  addu      $v0, $v0, $v1
/* 32B144 802BF254 000210C0 */  sll       $v0, $v0, 3
/* 32B148 802BF258 00481021 */  addu      $v0, $v0, $t0
/* 32B14C 802BF25C C446006C */  lwc1      $f6, 0x6C($v0)
/* 32B150 802BF260 46002100 */  add.s     $f4, $f4, $f0
/* 32B154 802BF264 C64000A8 */  lwc1      $f0, 0xA8($s2)
/* 32B158 802BF268 27A2002C */  addiu     $v0, $sp, 0x2C
/* 32B15C 802BF26C E7A80020 */  swc1      $f8, 0x20($sp)
/* 32B160 802BF270 46020001 */  sub.s     $f0, $f0, $f2
/* 32B164 802BF274 E7AA0028 */  swc1      $f10, 0x28($sp)
/* 32B168 802BF278 E7AC002C */  swc1      $f12, 0x2C($sp)
/* 32B16C 802BF27C 46060500 */  add.s     $f20, $f0, $f6
/* 32B170 802BF280 E7A40024 */  swc1      $f4, 0x24($sp)
/* 32B174 802BF284 AFA20010 */  sw        $v0, 0x10($sp)
/* 32B178 802BF288 0C0379F1 */  jal       player_raycast_up_corners
/* 32B17C 802BF28C E7B40014 */   swc1     $f20, 0x14($sp)
/* 32B180 802BF290 04400005 */  bltz      $v0, .L802BF2A8
/* 32B184 802BF294 2402000A */   addiu    $v0, $zero, 0xA
.L802BF298:
/* 32B188 802BF298 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32B18C 802BF29C AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32B190 802BF2A0 080AFCBD */  j         .L802BF2F4
/* 32B194 802BF2A4 00000000 */   nop
.L802BF2A8:
/* 32B198 802BF2A8 0200202D */  daddu     $a0, $s0, $zero
/* 32B19C 802BF2AC C620001C */  lwc1      $f0, 0x1C($s1)
/* 32B1A0 802BF2B0 C6220014 */  lwc1      $f2, 0x14($s1)
/* 32B1A4 802BF2B4 8E260018 */  lw        $a2, 0x18($s1)
/* 32B1A8 802BF2B8 46020001 */  sub.s     $f0, $f0, $f2
/* 32B1AC 802BF2BC 8E27000C */  lw        $a3, 0xC($s1)
/* 32B1B0 802BF2C0 0260282D */  daddu     $a1, $s3, $zero
/* 32B1B4 802BF2C4 0C00A7D7 */  jal       add_vec2D_polar
/* 32B1B8 802BF2C8 E620001C */   swc1     $f0, 0x1C($s1)
/* 32B1BC 802BF2CC 0C0392AB */  jal       func_800E4AD8
/* 32B1C0 802BF2D0 0000202D */   daddu    $a0, $zero, $zero
/* 32B1C4 802BF2D4 0C0AF9A8 */  jal       world_lakilester_test_dismount_height
/* 32B1C8 802BF2D8 0280202D */   daddu    $a0, $s4, $zero
/* 32B1CC 802BF2DC 04400005 */  bltz      $v0, .L802BF2F4
/* 32B1D0 802BF2E0 2402000A */   addiu    $v0, $zero, 0xA
/* 32B1D4 802BF2E4 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 32B1D8 802BF2E8 3C01802C */  lui       $at, %hi(world_lakilester_AbilityState)
/* 32B1DC 802BF2EC AC22FEA4 */  sw        $v0, %lo(world_lakilester_AbilityState)($at)
/* 32B1E0 802BF2F0 E640002C */  swc1      $f0, 0x2C($s2)
.L802BF2F4:
/* 32B1E4 802BF2F4 C6400028 */  lwc1      $f0, 0x28($s2)
/* 32B1E8 802BF2F8 3C02800B */  lui       $v0, %hi(gCameras)
/* 32B1EC 802BF2FC 24421D60 */  addiu     $v0, $v0, %lo(gCameras)
/* 32B1F0 802BF300 E4400060 */  swc1      $f0, 0x60($v0)
/* 32B1F4 802BF304 C6400030 */  lwc1      $f0, 0x30($s2)
/* 32B1F8 802BF308 C6220064 */  lwc1      $f2, 0x64($s1)
/* 32B1FC 802BF30C 3C10802C */  lui       $s0, %hi(world_lakilester_AbilityState)
/* 32B200 802BF310 2610FEA4 */  addiu     $s0, $s0, %lo(world_lakilester_AbilityState)
/* 32B204 802BF314 E4400068 */  swc1      $f0, 0x68($v0)
/* 32B208 802BF318 E4420064 */  swc1      $f2, 0x64($v0)
/* 32B20C 802BF31C 8E030000 */  lw        $v1, 0x0($s0)
/* 32B210 802BF320 2402000A */  addiu     $v0, $zero, 0xA
/* 32B214 802BF324 14620030 */  bne       $v1, $v0, .L802BF3E8
/* 32B218 802BF328 2402000B */   addiu    $v0, $zero, 0xB
/* 32B21C 802BF32C 3C02FFBF */  lui       $v0, (0xFFBFFFB7 >> 16)
/* 32B220 802BF330 3442FFB7 */  ori       $v0, $v0, (0xFFBFFFB7 & 0xFFFF)
/* 32B224 802BF334 8E230000 */  lw        $v1, 0x0($s1)
/* 32B228 802BF338 3C05802C */  lui       $a1, %hi(world_lakilester_PlayerCollisionDisabled)
/* 32B22C 802BF33C 24A5FE98 */  addiu     $a1, $a1, %lo(world_lakilester_PlayerCollisionDisabled)
/* 32B230 802BF340 3C01802C */  lui       $at, %hi(world_lakilester_MountState)
/* 32B234 802BF344 AC20FE9C */  sw        $zero, %lo(world_lakilester_MountState)($at)
/* 32B238 802BF348 8CA40000 */  lw        $a0, 0x0($a1)
/* 32B23C 802BF34C 00621824 */  and       $v1, $v1, $v0
/* 32B240 802BF350 10800003 */  beqz      $a0, .L802BF360
/* 32B244 802BF354 AE230000 */   sw       $v1, 0x0($s1)
/* 32B248 802BF358 0C038048 */  jal       enable_player_static_collisions
/* 32B24C 802BF35C ACA00000 */   sw       $zero, 0x0($a1)
.L802BF360:
/* 32B250 802BF360 0C038024 */  jal       enable_player_shadow
/* 32B254 802BF364 00000000 */   nop
/* 32B258 802BF368 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 32B25C 802BF36C 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 32B260 802BF370 A040007D */  sb        $zero, 0x7D($v0)
/* 32B264 802BF374 8E420000 */  lw        $v0, 0x0($s2)
/* 32B268 802BF378 30420800 */  andi      $v0, $v0, 0x800
/* 32B26C 802BF37C 10400013 */  beqz      $v0, .L802BF3CC
/* 32B270 802BF380 00000000 */   nop
/* 32B274 802BF384 3C03802C */  lui       $v1, %hi(world_lakilester_LockingPlayerInput)
/* 32B278 802BF388 2463FE94 */  addiu     $v1, $v1, %lo(world_lakilester_LockingPlayerInput)
/* 32B27C 802BF38C 8C620000 */  lw        $v0, 0x0($v1)
/* 32B280 802BF390 A2A00003 */  sb        $zero, 0x3($s5)
/* 32B284 802BF394 10400003 */  beqz      $v0, .L802BF3A4
/* 32B288 802BF398 A2A00000 */   sb       $zero, 0x0($s5)
/* 32B28C 802BF39C 0C038061 */  jal       enable_player_input
/* 32B290 802BF3A0 AC600000 */   sw       $zero, 0x0($v1)
.L802BF3A4:
/* 32B294 802BF3A4 0C03BCFC */  jal       partner_clear_player_tracking
/* 32B298 802BF3A8 0220202D */   daddu    $a0, $s1, $zero
/* 32B29C 802BF3AC 0C039761 */  jal       set_action_state
/* 32B2A0 802BF3B0 24040015 */   addiu    $a0, $zero, 0x15
/* 32B2A4 802BF3B4 24020001 */  addiu     $v0, $zero, 0x1
.L802BF3B8:
/* 32B2A8 802BF3B8 8E430000 */  lw        $v1, 0x0($s2)
/* 32B2AC 802BF3BC 2404FEFF */  addiu     $a0, $zero, -0x101
.L802BF3C0:
/* 32B2B0 802BF3C0 00641824 */  and       $v1, $v1, $a0
/* 32B2B4 802BF3C4 080AFD17 */  j         .L802BF45C
/* 32B2B8 802BF3C8 AE430000 */   sw       $v1, 0x0($s2)
.L802BF3CC:
/* 32B2BC 802BF3CC 0C039761 */  jal       set_action_state
/* 32B2C0 802BF3D0 24040008 */   addiu    $a0, $zero, 0x8
/* 32B2C4 802BF3D4 0C038C13 */  jal       gravity_use_fall_parms
/* 32B2C8 802BF3D8 00000000 */   nop
/* 32B2CC 802BF3DC 2402000B */  addiu     $v0, $zero, 0xB
/* 32B2D0 802BF3E0 080AFD16 */  j         .L802BF458
/* 32B2D4 802BF3E4 AE020000 */   sw       $v0, 0x0($s0)
.L802BF3E8:
/* 32B2D8 802BF3E8 1462001C */  bne       $v1, $v0, .L802BF45C
/* 32B2DC 802BF3EC 0000102D */   daddu    $v0, $zero, $zero
/* 32B2E0 802BF3F0 3C03FFBF */  lui       $v1, (0xFFBFFFB7 >> 16)
/* 32B2E4 802BF3F4 3463FFB7 */  ori       $v1, $v1, (0xFFBFFFB7 & 0xFFFF)
/* 32B2E8 802BF3F8 2404FEFF */  addiu     $a0, $zero, -0x101
/* 32B2EC 802BF3FC 8E220000 */  lw        $v0, 0x0($s1)
/* 32B2F0 802BF400 3C05802C */  lui       $a1, %hi(world_lakilester_LockingPlayerInput)
/* 32B2F4 802BF404 24A5FE94 */  addiu     $a1, $a1, %lo(world_lakilester_LockingPlayerInput)
/* 32B2F8 802BF408 00431024 */  and       $v0, $v0, $v1
/* 32B2FC 802BF40C AE220000 */  sw        $v0, 0x0($s1)
/* 32B300 802BF410 A2A00003 */  sb        $zero, 0x3($s5)
/* 32B304 802BF414 A2A00000 */  sb        $zero, 0x0($s5)
/* 32B308 802BF418 8E420000 */  lw        $v0, 0x0($s2)
/* 32B30C 802BF41C 8CA30000 */  lw        $v1, 0x0($a1)
/* 32B310 802BF420 00441024 */  and       $v0, $v0, $a0
/* 32B314 802BF424 10600003 */  beqz      $v1, .L802BF434
/* 32B318 802BF428 AE420000 */   sw       $v0, 0x0($s2)
/* 32B31C 802BF42C 0C038061 */  jal       enable_player_input
/* 32B320 802BF430 ACA00000 */   sw       $zero, 0x0($a1)
.L802BF434:
/* 32B324 802BF434 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 32B328 802BF438 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 32B32C 802BF43C 0220202D */  daddu     $a0, $s1, $zero
/* 32B330 802BF440 0C03BCFC */  jal       partner_clear_player_tracking
/* 32B334 802BF444 A040007D */   sb       $zero, 0x7D($v0)
/* 32B338 802BF448 0C03BCDA */  jal       func_800EF3D4
/* 32B33C 802BF44C 24040002 */   addiu    $a0, $zero, 0x2
/* 32B340 802BF450 080AFD17 */  j         .L802BF45C
/* 32B344 802BF454 24020001 */   addiu    $v0, $zero, 0x1
.L802BF458:
/* 32B348 802BF458 0000102D */  daddu     $v0, $zero, $zero
.L802BF45C:
/* 32B34C 802BF45C 8FBF0048 */  lw        $ra, 0x48($sp)
/* 32B350 802BF460 8FB50044 */  lw        $s5, 0x44($sp)
/* 32B354 802BF464 8FB40040 */  lw        $s4, 0x40($sp)
/* 32B358 802BF468 8FB3003C */  lw        $s3, 0x3C($sp)
/* 32B35C 802BF46C 8FB20038 */  lw        $s2, 0x38($sp)
/* 32B360 802BF470 8FB10034 */  lw        $s1, 0x34($sp)
/* 32B364 802BF474 8FB00030 */  lw        $s0, 0x30($sp)
/* 32B368 802BF478 D7B60058 */  ldc1      $f22, 0x58($sp)
/* 32B36C 802BF47C D7B40050 */  ldc1      $f20, 0x50($sp)
/* 32B370 802BF480 03E00008 */  jr        $ra
/* 32B374 802BF484 27BD0060 */   addiu    $sp, $sp, 0x60
.size world_lakilester_UseAbility, . - world_lakilester_UseAbility
