#include "common.h"
#include "include_asset.h"

#include "entity/model/PadlockRedFrame_1.vtx.inc.c"
#include "entity/model/PadlockRedFrame_2.vtx.inc.c"
#include "entity/model/PadlockRedFrame_3.vtx.inc.c"
#include "entity/model/PadlockRedFrame_4.vtx.inc.c"

INCLUDE_IMG("entity/model/PadlockRedFrame_keyhole.png", D_0A000540_E5D2C0);
INCLUDE_PAL("entity/model/PadlockRedFrame_keyhole.pal", D_0A000D40_E5DAC0);
#include "entity/model/gfx/PadlockRedFrame/loadTexKeyhole.gfx.inc.c"

INCLUDE_IMG("entity/model/PadlockRedFrame_face.png", D_0A000FE8_E5DD68);
INCLUDE_PAL("entity/model/PadlockRedFrame_face.pal", D_0A0013E8_E5E168);
#include "entity/model/gfx/PadlockRedFrame/loadTexFace.gfx.inc.c"

Mtx Entity_PadlockRedFrame_mtxShackle = RDP_MATRIX(
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/PadlockRedFrame/renderShackleMain.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/renderShackle.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/renderKeyhole.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/renderFace.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/renderBody.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/renderMain.gfx.inc.c"
#include "entity/model/gfx/PadlockRedFrame/render.gfx.inc.c"
