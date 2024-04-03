#include "common.h"
#include "include_asset.h"

#include "entity/model/PushBlock.vtx.inc.c"

INCLUDE_IMG("entity/model/PushBlock_face.png", D_0A000120_E3DB80);
INCLUDE_PAL("entity/model/PushBlock_face.pal", D_0A0001A0_E3DC00);
#include "entity/model/gfx/PushBlock/loadTex.gfx.inc.c"

Mtx Entity_PushBlock_mtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/PushBlock/renderFaces.gfx.inc.c"
#include "entity/model/gfx/PushBlock/renderBlock.gfx.inc.c"
#include "entity/model/gfx/PushBlock/render.gfx.inc.c"
