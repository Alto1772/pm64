#include "common.h"
#include "script_api/battle.h"
#include "entity.h"
#include "ld_addrs.h"
#include "sprite/player.h"
#include "include_asset.h"

#define NAMESPACE battle_item_coconut

#include "battle/common/move/ItemRefund.inc.c"
#include "battle/common/move/UseItem.inc.c"

static s32 _pad = 0;

#include "battle/move/item/coconut.png.h"
INCLUDE_IMG("battle/move/item/coconut.png", battle_item_coconut_png);
INCLUDE_PAL("battle/move/item/coconut.pal", battle_item_coconut_pal);
#include "battle/move/item/vtx_coconut.vtx.inc.c"
#include "battle/move/item/gfx_coconut.gfx.inc.c"

EntityModelScript N(modelCommandList) = STANDARD_ENTITY_MODEL_SCRIPT(N(displayList), RENDER_MODE_ALPHATEST);

EvtScript N(EVS_UseItem) = {
    SetConst(LVarA, ITEM_COCONUT)
    ExecWait(N(UseItemWithEffect))
    Call(UseBattleCamPreset, BTL_CAM_PRESET_03)
    Call(MoveBattleCamOver, 15)
    Call(SetAnimation, ACTOR_PLAYER, 0, ANIM_Mario1_Throw)
    Call(PlaySound, SOUND_THROW)
    Wait(3)
    Call(CreateVirtualEntity, LVarA, Ref(N(modelCommandList)))
    SetF(LVar0, Float(1.0))
    Call(MultiplyByActorScale, LVar0)
    Call(SetVirtualEntityScale, LVarA, LVar0, LVar0, LVar0)
    Call(GetActorPos, ACTOR_PLAYER, LVar0, LVar1, LVar2)
    Set(LVar3, 20)
    Set(LVar4, 42)
    Set(LVar5, 5)
    Call(MultiplyVec3ByActorScale, LVar3, LVar4, LVar5)
    Add(LVar0, LVar3)
    Add(LVar1, LVar4)
    Add(LVar2, LVar5)
    Call(SetVirtualEntityPosition, LVarA, LVar0, LVar1, LVar2)
    Call(InitTargetIterator)
    Call(SetGoalToTarget, ACTOR_SELF)
    Call(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
    Thread
        Set(LVar0, 0)
        Loop(18)
            Add(LVar0, -60)
            Call(SetVirtualEntityRotation, LVarA, 0, 0, LVar0)
            Wait(1)
        EndLoop
    EndThread
    Call(SetVirtualEntityJumpGravity, LVarA, Float(0.8))
    Add(LVar2, 5)
    Call(VirtualEntityJumpTo, LVarA, LVar0, LVar1, LVar2, 18)
    Call(GetItemPower, ITEM_COCONUT, LVar3, LVar4)
    Call(ApplyShrinkFromOwner, LVar3)
    Call(ItemDamageEnemy, LVar9, DAMAGE_TYPE_IGNORE_DEFENSE | DAMAGE_TYPE_NO_CONTACT, 0, LVar3, BS_FLAGS1_TRIGGER_EVENTS)
    Add(LVar0, 60)
    Add(LVar1, 0)
    Call(VirtualEntityJumpTo, LVarA, LVar0, LVar1, LVar2, 16)
    Call(DeleteVirtualEntity, LVarA)
    ExecWait(N(PlayerGoHome))
    Return
    End
};
