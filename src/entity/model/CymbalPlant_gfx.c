#include "common.h"
#include "include_asset.h"

INCLUDE_IMG("entity/model/CymbalPlant.png", D_0A000000_E992F0);
INCLUDE_PAL("entity/model/CymbalPlant.pal", D_0A000800_E99AF0);
#include "entity/model/gfx/CymbalPlant/loadTex.gfx.inc.c"

#include "entity/model/CymbalPlant_1.vtx.inc.c"
#include "entity/model/CymbalPlant_2.vtx.inc.c"
#include "entity/model/CymbalPlant_3.vtx.inc.c"
#include "entity/model/CymbalPlant_4.vtx.inc.c"
#include "entity/model/CymbalPlant_5.vtx.inc.c"
#include "entity/model/CymbalPlant_6.vtx.inc.c"
#include "entity/model/CymbalPlant_7.vtx.inc.c"
#include "entity/model/CymbalPlant_8.vtx.inc.c"

Mtx Entity_CymbalPlant_RightMtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000,  2.668290,
    0.000000, 1.000000, 0.000000, 26.668290,
    0.000000, 0.000000, 1.000000,  0.000000,
    0.000000, 0.000000, 0.000000,  1.000000
);

Mtx Entity_CymbalPlant_LeftMtx = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, -2.331711,
    0.000000, 1.000000, 0.000000, 26.668290,
    0.000000, 0.000000, 1.000000,  0.000000,
    0.000000, 0.000000, 0.000000,  1.000000
);

#include "entity/model/gfx/CymbalPlant/renderNode3.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode4.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode5.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk1.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode7.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode9.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode8.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk2.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk3.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode10.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/renderNode1.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk4.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk5.gfx.inc.c"
#include "entity/model/gfx/CymbalPlant/render_unk6.gfx.inc.c"
