#include "common.h"
#include "include_asset.h"

#include "entity/model/PowBlock.vtx.inc.c"

INCLUDE_IMG("entity/model/PowBlock_face.png", D_0A000100_E43C20);
INCLUDE_PAL("entity/model/PowBlock_face.pal", D_0A000900_E44420);
#include "entity/model/gfx/PowBlock/loadTex.gfx.inc.c"

Mtx Entity_PowBlock_mtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/PowBlock/renderTopBottom.gfx.inc.c"
#include "entity/model/gfx/PowBlock/renderSides.gfx.inc.c"
#include "entity/model/gfx/PowBlock/renderFaces.gfx.inc.c"
#include "entity/model/gfx/PowBlock/renderBlock.gfx.inc.c"
#include "entity/model/gfx/PowBlock/render.gfx.inc.c"
