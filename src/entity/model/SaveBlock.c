#include "common.h"
#include "include_asset.h"
#include "include_asset.h"

#include "entity/model/SaveBlock_1.vtx.inc.c"
#include "entity/model/SaveBlock_2.vtx.inc.c"
#include "entity/model/SaveBlock_3.vtx.inc.c"

INCLUDE_IMG("entity/model/SaveBlock_star.png", D_0A000900_E4BBE0);
#include "entity/model/gfx/SaveBlock/loadTexStar.gfx.inc.c"

#if !VERSION_PAL
INCLUDE_IMG("entity/model/SaveBlock_face.png", D_0A001170_E4C450);
#include "entity/model/gfx/SaveBlock/loadTexFace.gfx.inc.c"
#endif

INCLUDE_IMG("entity/model/SaveBlock_letterS.png", D_0A0021E8_E4D4C8);
#if VERSION_PAL
INCLUDE_IMG("entity/model/SaveBlock_letterG.png", D_PAL_0A002170_EBA460);
#endif

#include "entity/model/gfx/SaveBlock/loadTexLetterS.gfx.inc.c"
#if VERSION_PAL
#include "entity/model/gfx/SaveBlock/loadTexLetterG.gfx.inc.c"
#endif

#include "entity/model/SaveBlock.mtx.inc.c"

#include "entity/model/gfx/SaveBlock/renderLetterS.gfx.inc.c"
#if VERSION_PAL
#include "entity/model/gfx/SaveBlock/renderLetterG.gfx.inc.c"
#endif
#include "entity/model/gfx/SaveBlock/renderFaces.gfx.inc.c"
#include "entity/model/gfx/SaveBlock/renderStar.gfx.inc.c"
#include "entity/model/gfx/SaveBlock/renderContent.gfx.inc.c"
#include "entity/model/gfx/SaveBlock/renderBlock.gfx.inc.c"
#if VERSION_PAL
#include "entity/model/gfx/SaveBlock/renderBlock_es.gfx.inc.c"
#endif
#include "entity/model/gfx/SaveBlock/renderNone.gfx.inc.c"
