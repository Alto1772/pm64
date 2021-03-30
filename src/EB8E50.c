#include "common.h"

const char ascii_EC2000[] = "mac_01";
const char ascii_EC2008[] = "flo_14";
const char ascii_EC2010[] = "flo_23";
const char ascii_EC2018[] = "flo_25";
const char ascii_EC2020[] = "flo_16";
const char ascii_EC2028[] = "flo_09";
const char ascii_EC2030[] = "flo_08";
static const f64 rodata_alignment = 0.0;

// copied from src/world/world.c before the end of file
// checksum failed with custom cc1 without this
static const f32 code_EB8E50_rodata_align = 0.0f;

INCLUDE_ASM(s32, "EB8E50", func_80240000_EB8E50);
