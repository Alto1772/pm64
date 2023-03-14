#include "sam_05.h"
#include "effects.h"

EvtScript N(EVS_ExitWalk_sam_04_1) = EVT_EXIT_WALK(60, sam_05_ENTRY_0, "sam_04", sam_04_ENTRY_1);
EvtScript N(EVS_ExitWalk_sam_06_0) = EVT_EXIT_WALK(60, sam_05_ENTRY_1, "sam_06", sam_06_ENTRY_0);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_sam_04_1)), TRIGGER_FLOOR_ABOVE, COLLIDER_deiliw, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_sam_06_0)), TRIGGER_FLOOR_ABOVE, COLLIDER_deilie, 1, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_SHIVER_SNOWFIELD)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_DEFAULT()
    EVT_IF_LT(GB_StoryProgress, STORY_CH7_DEFEATED_MONSTAR)
        EVT_CALL(MakeNpcs, FALSE, EVT_PTR(N(BeforeNPCs)))
    EVT_ELSE
        EVT_CALL(MakeNpcs, FALSE, EVT_PTR(N(AfterNPCs)))
    EVT_END_IF
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_EXEC_WAIT(N(EVS_SetupMusic))
    EVT_PLAY_EFFECT(EFFECT_SNOWFALL, 0, 120)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_ground, SURFACE_TYPE_SNOW)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_o55, SURFACE_TYPE_SNOW)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_o59, SURFACE_TYPE_SNOW)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_o60, SURFACE_TYPE_SNOW)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_deilie, SURFACE_TYPE_SNOW)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_SURFACE, COLLIDER_deiliw, SURFACE_TYPE_SNOW)
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};