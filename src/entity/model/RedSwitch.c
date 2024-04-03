#include "common.h"
#include "include_asset.h"

#include "entity/model/RedSwitch_1.vtx.inc.c"
#include "entity/model/RedSwitch_2.vtx.inc.c"
#include "entity/model/RedSwitch_3.vtx.inc.c"

INCLUDE_IMG("entity/model/RedSwitch_tex.png", D_0A0005D0_E63090);
INCLUDE_PAL("entity/model/RedSwitch_tex.pal", D_0A0006D0_E63190);
#include "entity/model/gfx/RedSwitch/loadTex.gfx.inc.c"

INCLUDE_IMG("entity/model/RedSwitch_exclamationMark.png", D_0A000978_E63438);
#include "entity/model/gfx/RedSwitch/loadTex_exclMark.gfx.inc.c"

Mtx Entity_RedSwitch_mtxExclMark = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 6.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

Mtx Entity_RedSwitch_mtxRedBubble = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, -0.026600,
    0.000000, 1.000000, 0.000000,  5.000000,
    0.000000, 0.000000, 1.000000,  0.609116,
    0.000000, 0.000000, 0.000000,  1.000000
);

#include "entity/model/gfx/RedSwitch/renderRedBubble.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderRotatedRedBubble.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderExclMark.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderRotatedExclMark.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderBase.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderBaseMain.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/renderMain.gfx.inc.c"
#include "entity/model/gfx/RedSwitch/render.gfx.inc.c"
