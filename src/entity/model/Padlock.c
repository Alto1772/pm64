#include "common.h"
#include "include_asset.h"

#include "entity/model/Padlock_1.vtx.inc.c"
#include "entity/model/Padlock_2.vtx.inc.c"
#include "entity/model/Padlock_3.vtx.inc.c"
#include "entity/model/Padlock_4.vtx.inc.c"

INCLUDE_IMG("entity/model/Padlock_face.png", D_0A000700_E5B250);
INCLUDE_PAL("entity/model/Padlock_face.pal", D_0A000B00_E5B650);
#include "entity/model/gfx/Padlock/loadTexFace.gfx.inc.c"

INCLUDE_IMG("entity/model/Padlock_keyhole.png", D_0A000DA8_E5B8F8);
INCLUDE_PAL("entity/model/Padlock_keyhole.pal", D_0A0015A8_E5C0F8);
#include "entity/model/gfx/Padlock/loadTexKeyhole.gfx.inc.c"

INCLUDE_IMG("entity/model/Padlock_body.png", D_0A001850_E5C3A0);
INCLUDE_PAL("entity/model/Padlock_body.pal", D_0A001C50_E5C7A0);
#include "entity/model/gfx/Padlock/loadTexBody.gfx.inc.c"

Mtx Entity_Padlock_mtxShackle = RDP_MATRIX(
    1.000000, 0.000000, 0.000000,  0.000000,
    0.000000, 1.000000, 0.000000, 22.500000,
    0.000000, 0.000000, 1.000000,  0.000000,
    0.000000, 0.000000, 0.000000,  1.000000
);

#include "entity/model/gfx/Padlock/renderShackleMain.gfx.inc.c"
#include "entity/model/gfx/Padlock/renderShackle.gfx.inc.c"
#include "entity/model/gfx/Padlock/renderKeyhole.gfx.inc.c"
#include "entity/model/gfx/Padlock/renderFace.gfx.inc.c"
#include "entity/model/gfx/Padlock/renderBody.gfx.inc.c"
#include "entity/model/gfx/Padlock/render.gfx.inc.c"
