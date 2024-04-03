#include "common.h"
#include "include_asset.h"

#include "entity/model/HitRedBlock_1.vtx.inc.c"
#include "entity/model/HitRedBlock_2.vtx.inc.c"

extern unsigned char D_0A000C60_E493E0[];
extern unsigned char D_0A000460_E48BE0[];

#include "entity/model/gfx/HitRedBlock/renderBlock2.gfx.inc.c"
#include "entity/model/gfx/HitRedBlock/renderBlock1.gfx.inc.c"

INCLUDE_IMG("entity/model/HitRedBlock_face1.png", D_0A000460_E48BE0);
INCLUDE_IMG("entity/model/HitRedBlock_face2.png", D_0A000C60_E493E0);
