#include "common.h"
#include "include_asset.h"

#include "entity/model/ShatteringHammer3Block.vtx.inc.c"

INCLUDE_IMG("entity/model/ShatteringHammer3Block_texture.png", D_0A001050_E398E0);
INCLUDE_PAL("entity/model/ShatteringHammer3Block_texture.pal", D_0A001150_E399E0);
#include "entity/model/gfx/ShatteringHammer3Block/loadTex.gfx.inc.c"

Mtx Entity_ShatteringHammer3Block_FragmentsMatrices[] = {
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100029, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABAAAB, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000029, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000AAAB, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00029, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555AAAB, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100029, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABAAAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000029, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000AAAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00029, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555AAAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100029, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABAAAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000029, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000AAAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00029, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555AAAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100019, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB0000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000019, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00000000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00019, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55550000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100019, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB0000, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00019, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55550000, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100019, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB0000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000019, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00019, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55550000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100008, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB5556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000008, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00005556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00008, 0x00100001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55555556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100008, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB5556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000008, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00005556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00008, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55555556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00100008, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB5556, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000008, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00005556, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF00008, 0xFFF00001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55555556, 0x55550000 }
        }
    },
};

#include "entity/model/gfx/ShatteringHammer3Block/D_0A001898_E3A128.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001918_E3A1A8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001978_E3A208.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001990_E3A220.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001A30_E3A2C0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001A88_E3A318.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001AA0_E3A330.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001B28_E3A3B8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001B88_E3A418.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001BA0_E3A430.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001C20_E3A4B0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001C70_E3A500.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001C88_E3A518.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001D10_E3A5A0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001D50_E3A5E0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001D68_E3A5F8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001DE8_E3A678.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001E38_E3A6C8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001E50_E3A6E0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001EC0_E3A750.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001F10_E3A7A0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001F28_E3A7B8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001FA0_E3A830.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A001FE8_E3A878.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002000_E3A890.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002060_E3A8F0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0020B0_E3A940.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0020C8_E3A958.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002160_E3A9F0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0021A8_E3AA38.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0021C0_E3AA50.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002270_E3AB00.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0022B0_E3AB40.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0022C8_E3AB58.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002360_E3ABF0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0023A8_E3AC38.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0023C0_E3AC50.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002440_E3ACD0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002480_E3AD10.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002498_E3AD28.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002518_E3ADA8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002558_E3ADE8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002570_E3AE00.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0025E0_E3AE70.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002628_E3AEB8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002640_E3AED0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0026B8_E3AF48.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0026F8_E3AF88.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002710_E3AFA0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002770_E3B000.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0027B8_E3B048.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0027D0_E3B060.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002850_E3B0E0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0028A8_E3B138.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0028C0_E3B150.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002958_E3B1E8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0029A8_E3B238.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A0029C0_E3B250.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002A40_E3B2D0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002A98_E3B328.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002AB0_E3B340.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002B20_E3B3B0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002B70_E3B400.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002B88_E3B418.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002C00_E3B490.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002C40_E3B4D0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002C58_E3B4E8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002CC0_E3B550.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002D10_E3B5A0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002D28_E3B5B8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002D88_E3B618.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002DD8_E3B668.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002DF0_E3B680.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002E58_E3B6E8.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002EA0_E3B730.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002EB8_E3B748.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002F10_E3B7A0.gfx.inc.c"
#include "entity/model/gfx/ShatteringHammer3Block/D_0A002F60_E3B7F0.gfx.inc.c"

Gfx* Entity_ShatteringHammer3Block_FragmentsRender[] = {
    D_0A002F60_E3B7F0,
    D_0A002EA0_E3B730,
    D_0A002DD8_E3B668,
    D_0A002D10_E3B5A0,
    D_0A002C40_E3B4D0,
    D_0A002B70_E3B400,
    D_0A002A98_E3B328,
    D_0A0029A8_E3B238,
    D_0A0028A8_E3B138,
    D_0A0027B8_E3B048,
    D_0A0026F8_E3AF88,
    D_0A002628_E3AEB8,
    D_0A002558_E3ADE8,
    D_0A002480_E3AD10,
    D_0A0023A8_E3AC38,
    D_0A0022B0_E3AB40,
    D_0A0021A8_E3AA38,
    D_0A0020B0_E3A940,
    D_0A001FE8_E3A878,
    D_0A001F10_E3A7A0,
    D_0A001E38_E3A6C8,
    D_0A001D50_E3A5E0,
    D_0A001C70_E3A500,
    D_0A001B88_E3A418,
    D_0A001A88_E3A318,
    D_0A001978_E3A208,
};
