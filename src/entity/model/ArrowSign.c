#include "common.h"
#include "include_asset.h"

#include "entity/model/ArrowSign.vtx.inc.c"
#include "entity/model/ArrowPole.vtx.inc.c"
INCLUDE_IMG("entity/model/ArrowSign.png", D_0A000080_E59F80);
INCLUDE_PAL("entity/model/ArrowSign.pal", D_0A000880_E5A780);
#include "entity/model/gfx/ArrowSign/loadTex.gfx.inc.c"

Mtx Entity_ArrowSign_mtxSign = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, -0.180848,
    0.000000, 1.000000, 0.000000, 20.000000,
    0.000000, 0.000000, 1.000000,  1.000000,
    0.000000, 0.000000, 0.000000,  1.000000
);

#include "entity/model/gfx/ArrowSign/renderPole.gfx.inc.c"
#include "entity/model/gfx/ArrowSign/renderPole_.gfx.inc.c"
#include "entity/model/gfx/ArrowSign/renderRotatedSign.gfx.inc.c"
#include "entity/model/gfx/ArrowSign/renderSign.gfx.inc.c"
#include "entity/model/gfx/ArrowSign/renderPole__.gfx.inc.c"
#include "entity/model/gfx/ArrowSign/render.gfx.inc.c"
