#include "common.h"
#include "include_asset.h"

#include "entity/model/ShatteringBrickBlock.vtx.inc.c"

INCLUDE_IMG("entity/model/ShatteringBrickBlock_texture.png", D_0A001AA0_E3FD00);
#include "entity/model/gfx/ShatteringBrickBlock/loadTex.gfx.inc.c"

Mtx Entity_ShatteringBrickBlock_FragmentsMatrices[] = {
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080014, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555D556, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000014, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000D556, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80014, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABD556, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080014, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555D556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000014, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000D556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80014, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABD556, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080014, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x5555D556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000014, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x0000D556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80014, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAABD556, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x0008000C, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55558000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x0000000C, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00008000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF8000C, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB8000, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x0008000C, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55558000, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF8000C, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB8000, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x0008000C, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55558000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x0000000C, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00008000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF8000C, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB8000, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080004, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55552AAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000004, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00002AAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80004, 0x00080001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB2AAB, 0x55550000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080004, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55552AAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000004, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00002AAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80004, 0x00000001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB2AAB, 0x00000000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00080004, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x55552AAB, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0x00000004, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0x00002AAB, 0xAAAB0000 }
        }
    },
    {
        .m = {
            { 0x00010000, 0x00000000,
              0x00000001, 0x00000000 },
            { 0x00000000, 0x00010000,
              0xFFF80004, 0xFFF80001 },
            { 0x00000000, 0x00000000,
              0x00000000, 0x00000000 },
            { 0x00000000, 0x00000000,
              0xAAAB2AAB, 0xAAAB0000 }
        }
    },
};

#include "entity/model/gfx/ShatteringBrickBlock/D_0A002998_E40BF8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002A20_E40C80.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002A68_E40CC8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002A80_E40CE0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002B18_E40D78.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002B58_E40DB8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002B70_E40DD0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002C00_E40E60.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002C48_E40EA8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002C60_E40EC0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002CF0_E40F50.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002D30_E40F90.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002D48_E40FA8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002DE8_E41048.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002DF8_E41058.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002E88_E410E8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002EC8_E41128.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002EE0_E41140.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002F48_E411A8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002F90_E411F0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A002FA8_E41208.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003010_E41270.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003050_E412B0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003068_E412C8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0030D0_E41330.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003118_E41378.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003130_E41390.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0031B0_E41410.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0031F8_E41458.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003210_E41470.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0032A8_E41508.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0032E8_E41548.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003300_E41560.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003388_E415E8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0033D0_E41630.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0033E8_E41648.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003478_E416D8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0034B8_E41718.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0034D0_E41730.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003560_E417C0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0035A0_E41800.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0035B8_E41818.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003618_E41878.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003660_E418C0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003678_E418D8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0036E0_E41940.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003720_E41980.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003738_E41998.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003798_E419F8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0037E0_E41A40.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0037F8_E41A58.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003878_E41AD8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0038C0_E41B20.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0038D8_E41B38.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003970_E41BD0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0039B0_E41C10.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A0039C8_E41C28.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003A50_E41CB0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003A98_E41CF8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003AB0_E41D10.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003B40_E41DA0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003B80_E41DE0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003B98_E41DF8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003C38_E41E98.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003C48_E41EA8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003CD8_E41F38.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003D18_E41F78.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003D30_E41F90.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003D90_E41FF0.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003DD8_E42038.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003DF0_E42050.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003E58_E420B8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003E98_E420F8.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003EB0_E42110.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003F10_E42170.gfx.inc.c"
#include "entity/model/gfx/ShatteringBrickBlock/D_0A003F58_E421B8.gfx.inc.c"

Gfx* Entity_ShatteringBrickBlock_FragmentsRender[] = {
    D_0A003F58_E421B8,
    D_0A003E98_E420F8,
    D_0A003DD8_E42038,
    D_0A003D18_E41F78,
    D_0A003C38_E41E98,
    D_0A003B80_E41DE0,
    D_0A003A98_E41CF8,
    D_0A0039B0_E41C10,
    D_0A0038C0_E41B20,
    D_0A0037E0_E41A40,
    D_0A003720_E41980,
    D_0A003660_E418C0,
    D_0A0035A0_E41800,
    D_0A0034B8_E41718,
    D_0A0033D0_E41630,
    D_0A0032E8_E41548,
    D_0A0031F8_E41458,
    D_0A003118_E41378,
    D_0A003050_E412B0,
    D_0A002F90_E411F0,
    D_0A002EC8_E41128,
    D_0A002DE8_E41048,
    D_0A002D30_E40F90,
    D_0A002C48_E40EA8,
    D_0A002B58_E40DB8,
    D_0A002A68_E40CC8,
};
