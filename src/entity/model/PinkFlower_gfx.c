#include "common.h"
#include "include_asset.h"

#include "entity/model/PinkFlower_1.vtx.inc.c"
#include "entity/model/PinkFlower_2.vtx.inc.c"
#include "entity/model/PinkFlower_3.vtx.inc.c"
#include "entity/model/PinkFlower_4.vtx.inc.c"
#include "entity/model/PinkFlower_5.vtx.inc.c"

INCLUDE_IMG("entity/model/PinkFlower_light.png", D_0A0005B0_E9BAB0);
#include "entity/model/gfx/PinkFlower/loadTexLight.gfx.inc.c"

INCLUDE_IMG("entity/model/PinkFlower_tex.png", D_0A000820_E9BD20);
#include "entity/model/gfx/PinkFlower/loadTex.gfx.inc.c"

Mtx D_0A001098_E9C598 = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, -10.000000,
    0.000000, 1.000000, 0.000000,  25.000000,
    0.000000, 0.000000, 1.000000,  13.000000,
    0.000000, 0.000000, 0.000000,   1.000000
);

#include "entity/model/gfx/PinkFlower/renderNode3.gfx.inc.c"
#include "entity/model/gfx/PinkFlower/renderNode2.gfx.inc.c"
#include "entity/model/gfx/PinkFlower/renderNode1.gfx.inc.c"
#include "entity/model/gfx/PinkFlower/renderNode5.gfx.inc.c"
#include "entity/model/gfx/PinkFlower/render.gfx.inc.c"
