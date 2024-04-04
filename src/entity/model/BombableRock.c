#include "common.h"
#include "include_asset.h"

#include "entity/model/BombableRock_1.vtx.inc.c"
#include "entity/model/BombableRock_2.vtx.inc.c"
#include "entity/model/BombableRock_3.vtx.inc.c"
#include "entity/model/BombableRock_4.vtx.inc.c"
#include "entity/model/BombableRock_5.vtx.inc.c"

INCLUDE_IMG("entity/model/BombableRock.png", D_0A000840_E9DE90);
INCLUDE_PAL("entity/model/BombableRock.pal", D_0A001040_E9E690);
#include "entity/model/gfx/BombableRock/loadTex.gfx.inc.c"

#include "entity/model/BombableRock.fragmtx.inc.c"

#include "entity/model/gfx/BombableRock/render_unk1.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk2.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk3.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk4.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk5.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk6.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk7.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk8.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unk9.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unkA.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unkB.gfx.inc.c"
#include "entity/model/gfx/BombableRock/render_unkC.gfx.inc.c"

Gfx* Entity_BombableRock_FragmentsRender[] = {
    D_0A001610_E9EC60,
    D_0A001508_E9EB58,
    D_0A001458_E9EAA8,
    D_0A0013A8_E9E9F8,
    D_0A0012F8_E9E948,
};
