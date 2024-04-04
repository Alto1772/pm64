#include "common.h"
#include "include_asset.h"

#include "entity/model/Chest_1.vtx.inc.c"
#include "entity/model/Chest_2.vtx.inc.c"
#include "entity/model/Chest_3.vtx.inc.c"
#include "entity/model/Chest_4.vtx.inc.c"

INCLUDE_IMG("entity/model/Chest_tex1.png", D_0A000410_E64CE0);
#include "entity/model/gfx/Chest/loadTex1.gfx.inc.c"

INCLUDE_IMG("entity/model/Chest_tex2.png", D_0A000898_E65168);
INCLUDE_PAL("entity/model/Chest_tex2.pal", D_0A000998_E65268);
#include "entity/model/gfx/Chest/loadTex2.gfx.inc.c"

INCLUDE_IMG("entity/model/Chest_lock.png", D_0A000A70_E65340);
INCLUDE_PAL("entity/model/Chest_lock.pal", D_0A000B70_E65440);
#include "entity/model/gfx/Chest/loadTexLock.gfx.inc.c"

#include "entity/model/ChestLid.mtx.inc.c"

#include "entity/model/gfx/Chest/renderLidLock.gfx.inc.c"
#include "entity/model/gfx/Chest/renderLidWooden.gfx.inc.c"
#include "entity/model/gfx/Chest/renderLid.gfx.inc.c"
#include "entity/model/gfx/Chest/renderBoxLock.gfx.inc.c"
#include "entity/model/gfx/Chest/renderBoxWooden.gfx.inc.c"
#include "entity/model/gfx/Chest/renderBox.gfx.inc.c"
