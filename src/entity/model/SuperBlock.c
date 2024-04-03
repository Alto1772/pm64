#include "common.h"
#include "include_asset.h"

#include "entity/model/SuperBlock.vtx.inc.c"

INCLUDE_IMG("entity/model/SuperBlock_tex.png", D_0A000480_E44C80);
INCLUDE_PAL("entity/model/SuperBlock_tex.pal", D_0A000580_E44D80);
#include "entity/model/gfx/SuperBlock/loadTex.gfx.inc.c"

Mtx Entity_SuperBlock_mtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/SuperBlock/renderTop.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderRFEdge.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderLFEdge.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderRBEdge.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderLBEdge.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderBottom.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/renderBlock.gfx.inc.c"
#include "entity/model/gfx/SuperBlock/render.gfx.inc.c"
