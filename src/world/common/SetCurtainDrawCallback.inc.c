#include "common.h"

ApiStatus N(SetCurtainDrawCallback)(Evt* script, s32 isInitialCall) {
    set_curtain_draw_callback((void*)evt_get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}
