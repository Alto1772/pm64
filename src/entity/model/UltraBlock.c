#include "common.h"
#include "include_asset.h"

#include "entity/model/UltraBlock.vtx.inc.c"

INCLUDE_IMG("entity/model/UltraBlock_tex.png", D_0A000480_E45590);
INCLUDE_PAL("entity/model/UltraBlock_tex.pal", D_0A000580_E45690);
#include "entity/model/gfx/UltraBlock/loadTex.gfx.inc.c"

Mtx Entity_UltraBlock_mtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/UltraBlock/renderTop.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderRFEdge.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderLFEdge.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderRBEdge.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderLBEdge.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderBottom.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/renderBlock.gfx.inc.c"
#include "entity/model/gfx/UltraBlock/render.gfx.inc.c"
