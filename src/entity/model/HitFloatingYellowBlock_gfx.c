#include "common.h"
#include "include_asset.h"

#include "entity/model/HitFloatingYellowBlock_1.vtx.inc.c"
#include "entity/model/HitFloatingYellowBlock_2.vtx.inc.c"

extern unsigned char D_0A000C40_E47CF0[];
extern unsigned char D_0A000440_E474F0[];

#include "entity/model/gfx/HitFloatingYellowBlock/renderBlock2.gfx.inc.c"
#include "entity/model/gfx/HitFloatingYellowBlock/renderBlock1.gfx.inc.c"

INCLUDE_IMG("entity/model/HitFloatingYellowBlock_face1.png", D_0A000440_E474F0);
INCLUDE_IMG("entity/model/HitFloatingYellowBlock_face2.png", D_0A000C40_E47CF0);
