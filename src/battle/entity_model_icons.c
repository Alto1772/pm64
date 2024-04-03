#include "common.h"
#include "entity.h"
#include "include_asset.h"

extern IMG_BIN ui_battle_menu_spirits_png[];
extern PAL_BIN ui_battle_menu_spirits_pal[];
extern IMG_BIN ui_battle_solid_star_png[];
extern PAL_BIN ui_battle_solid_star_pal[];

INCLUDE_IMG("ui/battle/cursor_hand.png", ui_battle_cursor_hand_png);
INCLUDE_PAL("ui/battle/cursor_hand.pal", ui_battle_cursor_hand_pal);
#include "ui/battle/cursor_model.vtx.inc.c"
#include "ui/battle/cursor_model.gfx.inc.c"

EntityModelScript EMS_CursorIcon = STANDARD_ENTITY_MODEL_SCRIPT(BtlCursorModelGfx, RENDER_MODE_ALPHATEST);

#include "ui/battle/bonk_model.vtx.inc.c"
#include "ui/battle/bonk_model.gfx.inc.c"

EntityModelScript EMS_BonkIcon = STANDARD_ENTITY_MODEL_SCRIPT(BtlBonkModelGfx, RENDER_MODE_CLOUD_NO_ZCMP);

#include "ui/battle/star_model.vtx.inc.c"
#include "ui/battle/star_model.gfx.inc.c"

EntityModelScript EMS_StarIcon = STANDARD_ENTITY_MODEL_SCRIPT(BtlStarModelGfx, RENDER_MODE_ALPHATEST);
