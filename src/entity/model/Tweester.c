#include "common.h"
#include "include_asset.h"

#include "entity/model/Tweester_1.vtx.inc.c"
#include "entity/model/Tweester_2.vtx.inc.c"
#include "entity/model/Tweester_3.vtx.inc.c"
#include "entity/model/Tweester_4.vtx.inc.c"

INCLUDE_IMG("entity/model/Tweester_img1.png", D_0A000BF0_E57A50);
INCLUDE_IMG("entity/model/Tweester_img2.png", D_0A000FF0_E57E50);
#include "entity/model/gfx/Tweester/loadTex.gfx.inc.c"

INCLUDE_IMG("entity/model/Tweester_img3.png", D_0A0014A0_E58300);
INCLUDE_PAL("entity/model/Tweester_img3.pal", D_0A0018A0_E58700);
#include "entity/model/gfx/Tweester/loadTexFace.gfx.inc.c"

Mtx Entity_Tweester_mtxInnerWhirl = RDP_MATRIX(
    0.999848, 0.017457, 0.000000, 0.000000,
    -0.01746, 0.999848, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

Mtx Entity_Tweester_mtxOuterWhirl = RDP_MATRIX(
    1.199997, 0.000000, 0.000000, 0.000000,
    0.000000, 0.899994, 0.000000, 0.000000,
    0.000000, 0.000000, 1.199997, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000
);

#include "entity/model/gfx/Tweester/render1.gfx.inc.c"
#include "entity/model/gfx/Tweester/render2.gfx.inc.c"
#include "entity/model/gfx/Tweester/render3.gfx.inc.c"
#include "entity/model/gfx/Tweester/renderOuterWhirl.gfx.inc.c"
#include "entity/model/gfx/Tweester/render4.gfx.inc.c"
#include "entity/model/gfx/Tweester/renderInnerWhirl.gfx.inc.c"
#include "entity/model/gfx/Tweester/renderMain.gfx.inc.c"
