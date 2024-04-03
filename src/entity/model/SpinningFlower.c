#include "common.h"
#include "include_asset.h"

#include "entity/model/SpinningFlower_1.vtx.inc.c"
#include "entity/model/SpinningFlower_2.vtx.inc.c"
#include "entity/model/SpinningFlower_3.vtx.inc.c"
#include "entity/model/SpinningFlower_4.vtx.inc.c"

INCLUDE_IMG("entity/model/SpinningFlower_img1.png", D_0A000180_E9CA80);
#include "entity/model/gfx/SpinningFlower/loadTex1.gfx.inc.c"

INCLUDE_IMG("entity/model/SpinningFlower_petal.png", D_0A0002F8_E9CBF8);
#include "entity/model/gfx/SpinningFlower/loadTexPetal.gfx.inc.c"

Mtx D_0A000B70_E9D470 = RDP_MATRIX(
    1.000000, 0.000000, 0.000000,  0.000000,
    0.000000, 1.000000, 0.000000, 20.000000,
    0.000000, 0.000000, 1.000000,  0.000000,
    0.000000, 0.000000, 0.000000,  1.000000
);

#include "entity/model/gfx/SpinningFlower/render_unk1.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk2.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk3.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk4.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk5.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk6.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render_unk7.gfx.inc.c"
#include "entity/model/gfx/SpinningFlower/render.gfx.inc.c"
