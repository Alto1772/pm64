#include "common.h"

#define NAMESPACE b_area_sam

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218000_623BA0);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218890_624430);

// sltiu vs slti
#ifdef NON_MATCHING
ApiStatus func_802189E4_624584(ScriptInstance* script, s32 isInitialCall) {
    Actor *temp_v0;
    u8 phi_v1_2;

    temp_v0 = get_actor(get_actor(script->owner1.actorID)->targetActorID);
    if (!(temp_v0->flags & 0x800)) {
        script->varTable[1] += temp_v0->size.y / 2;
        script->varTable[1] += temp_v0->size.y / 4;
    } else {
        script->varTable[1] -= temp_v0->size.y / 2;
        script->varTable[1] -= temp_v0->size.y / 4;
    }
    // may be simplified
    phi_v1_2 = temp_v0->size.y < temp_v0->size.x ? temp_v0->size.x : temp_v0->size.y;
    script->varTable[3] = phi_v1_2 + 0x7E;
    return ApiStatus_DONE2;
}
#else
INCLUDE_ASM(ApiStatus, "battle/area_sam/623BA0", func_802189E4_624584, ScriptInstance *script, s32 isInitialCall);
#endif

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218A90_624630);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218AF4_624694);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218B2C_6246CC);

#include "common/UnkBattleFunc1.inc.c"

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218C40_6247E0);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218D64_624904);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80218E88_624A28);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80219304_624EA4);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80219358_624EF8);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_802193A4_624F44);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_802193F0_624F90);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_8021943C_624FDC);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80219480_625020);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_802194B8_625058);

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_80219524_6250C4);

#define NAMESPACE dup_b_area_sam
#include "common/UnkBattleFunc1.inc.c"
#define NAMESPACE b_area_sam

INCLUDE_ASM(s32, "battle/area_sam/623BA0", func_802196BC_62525C);
