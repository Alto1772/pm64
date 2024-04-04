#include "common.h"
#include "include_asset.h"

#include "entity/model/StarBoxLauncher_1.vtx.inc.c"
#include "entity/model/StarBoxLauncher_2.vtx.inc.c"
#include "entity/model/StarBoxLauncher_3.vtx.inc.c"
#include "entity/model/StarBoxLauncher_4.vtx.inc.c"

INCLUDE_IMG("entity/model/StarBoxLauncher_link.png", D_0A000290_E55CD0);
#include "entity/model/gfx/StarBoxLauncher/loadTexLink.gfx.inc.c"

INCLUDE_IMG("entity/model/StarBoxLauncher_face.png", D_0A000508_E55F48);
INCLUDE_PAL("entity/model/StarBoxLauncher_face.pal", D_0A000D08_E56748);
#include "entity/model/gfx/StarBoxLauncher/loadTexFace.gfx.inc.c"

INCLUDE_IMG("entity/model/StarBoxLauncher_box.png", D_0A000DD0_E56810);
INCLUDE_PAL("entity/model/StarBoxLauncher_box.pal", D_0A000ED0_E56910);
#include "entity/model/gfx/StarBoxLauncher/loadTexBox.gfx.inc.c"

#include "entity/model/StarBoxLauncher.fragmtx.inc.c"

#include "entity/model/gfx/StarBoxLauncher/renderChain.gfx.inc.c"
#include "entity/model/gfx/StarBoxLauncher/renderFace.gfx.inc.c"
#include "entity/model/gfx/StarBoxLauncher/renderBoxCover.gfx.inc.c"
#include "entity/model/gfx/StarBoxLauncher/renderTop.gfx.inc.c"
#include "entity/model/gfx/StarBoxLauncher/renderBox.gfx.inc.c"
#include "entity/model/gfx/StarBoxLauncher/renderBottom.gfx.inc.c"
