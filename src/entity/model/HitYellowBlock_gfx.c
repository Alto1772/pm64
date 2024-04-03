#include "common.h"
#include "include_asset.h"

#include "entity/model/HitYellowBlock_1.vtx.inc.c"
#include "entity/model/HitYellowBlock_2.vtx.inc.c"

extern unsigned char D_0A000420_E45E10[];
extern unsigned char D_0A000C20_E46610[];

#include "entity/model/gfx/HitYellowBlock/renderBlock2.gfx.inc.c"
#include "entity/model/gfx/HitYellowBlock/renderBlock1.gfx.inc.c"

INCLUDE_IMG("entity/model/HitYellowBlock_face1.png", D_0A000420_E45E10);
INCLUDE_IMG("entity/model/HitYellowBlock_face2.png", D_0A000C20_E46610);
