#include "common.h"
#include "theater/walls.png.h"
#include "theater/curtains.png.h"
#include "theater/floor.png.h"
#include "ui/no_controller.png.h"
#include "ld_addrs.h"
#include "nu/nusys.h"
#include "game_modes.h"
#include "include_asset.h"

INCLUDE_IMG("theater/walls.png", theater_walls_png);
#include "theater/D_800746E0.gfx.inc.c"
INCLUDE_IMG("theater/curtains.png", theater_curtains_png);
#include "theater/D_80075730.gfx.inc.c"
INCLUDE_IMG("theater/floor.png", theater_floor_png);
INCLUDE_PAL("theater/floor.pal", theater_floor_pal);
#include "theater/D_800758A0.gfx.inc.c"
#include "theater/left_wall.vtx.inc.c"
#include "theater/right_wall.vtx.inc.c"
#include "theater/floor.vtx.inc.c"
#include "theater/left_inset_shadow.vtx.inc.c"
#include "theater/right_inset_shadow.vtx.inc.c"
#include "theater/curtain.vtx.inc.c"
#include "theater/wall_shadows.vtx.inc.c"
#include "theater/wall_shadows.gfx.inc.c"
#include "theater/curtain.gfx.inc.c"
#include "theater/inset_shadows.gfx.inc.c"
#include "theater/floor.gfx.inc.c"
#include "theater/right_wall.gfx.inc.c"
#include "theater/left_wall.gfx.inc.c"
#include "theater/theater.gfx.inc.c"

Vp TheaterViewport = {
    {
        {(SCREEN_WIDTH/2)*4, (SCREEN_HEIGHT/2)*4, 0x200 - 1, 0},
        {(SCREEN_WIDTH/2)*4, (SCREEN_HEIGHT/2)*4, 0x200 - 1, 0},
    }
};

Gfx TheaterInitGfx[] = {
    gsSPViewport(&TheaterViewport),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetScissor(G_SC_NON_INTERLACE, 0, 0, 320, 240),
    gsDPSetColorDither(G_CD_MAGICSQ),
    gsDPSetAlphaDither(G_AD_PATTERN),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0x0040F9FA),
    gsSPSetGeometryMode(G_SHADE | G_SHADING_SMOOTH),
    gsSPPerspNormalize(0x0014),
    gsSPEndDisplayList(),
};

INCLUDE_IMG("ui/no_controller.png", ui_no_controller_png);
#include "ui/no_controller_setup_tex.gfx.inc.c"
#include "ui/no_controller.gfx.inc.c"

BSS f32 gCurtainScale;
BSS f32 gCurtainScaleGoal;
BSS f32 gCurtainFade;
BSS f32 gCurtainFadeGoal;
BSS UNK_FUN_PTR(gCurtainDrawCallback);
BSS Mtx D_8009BAA8[2];

void initialize_curtains(void) {
    gCurtainDrawCallback = NULL;
    gCurtainScale = 2.0f;
    gCurtainScaleGoal = 2.0f;
    gCurtainFade = 0.0f;
    gCurtainFadeGoal = 0.0f;
}

void update_curtains(void) {
}

void render_curtains(void) {
    if (gCurtainScaleGoal != gCurtainScale) {
        gCurtainScale += (gCurtainScaleGoal - gCurtainScale) * 0.1;
    }

    if (gCurtainFadeGoal != gCurtainFade) {
        gCurtainFade += (gCurtainFadeGoal - gCurtainFade) * 0.03;
    }

    if (gCurtainScale < 1.9) {
        Matrix4f m;
        f32 scale;
        s8 rgb;

        gDPPipeSync(gMainGfxPos++);
        gDPSetColorImage(gMainGfxPos++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, osVirtualToPhysical(nuGfxCfb_ptr));
        gSPDisplayList(gMainGfxPos++, &TheaterInitGfx);

        guFrustumF(m, -80.0f, 80.0f, -60.0f, 60.0f, 160.0f, 640.0f, 1.0f);
        guMtxF2L(m, &D_8009BAA8[0]);

        gSPMatrix(gMainGfxPos++, &D_8009BAA8[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

        scale = gCurtainScale - 0.01;
        if (scale < 1.0f) {
            scale = 1.0f;
        }

        guPositionF(m, 0.0f, 0.0f, 0.0f, scale * 0.1, 0.0f, 0.0f, -320.0f);

        guMtxF2L(m, &D_8009BAA8[1]);

        gSPMatrix(gMainGfxPos++, &D_8009BAA8[1], G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        rgb = 255.0f - (gCurtainFade * 255.0f);
        gDPSetPrimColor(gMainGfxPos++, 0, 0, rgb, rgb, rgb, 255);
        gSPDisplayList(gMainGfxPos++, &TheaterGfx);
        gSPPopMatrix(gMainGfxPos++, G_MTX_MODELVIEW);
        gDPPipeSync(gMainGfxPos++);
    }

    if (gCurtainDrawCallback != NULL) {
        gCurtainDrawCallback();
    }

    if (!(gGameStatusPtr->contBitPattern & 1)) {
        if ((get_game_mode() == GAME_MODE_INTRO)
                || (get_game_mode() == GAME_MODE_TITLE_SCREEN)
                || (gGameStatusPtr->demoState != DEMO_STATE_NONE)) {
            s32 alpha = ((gGameStatusPtr->frameCounter) % 0x18) << 5;

            if (alpha > 255) {
                alpha = 255;
            }

            gSPDisplayList(gMainGfxPos++, &TheaterInitGfx);
            gSPDisplayList(gMainGfxPos++, &NoControllerSetupTexGfx);
            gDPSetPrimColor(gMainGfxPos++, 0, 0, 0xFF, 0x20, 0x10, alpha);
            gSPDisplayList(gMainGfxPos++, &NoControllerGfx);
        }
    }
}

void set_curtain_scale_goal(f32 scale) {
    gCurtainScaleGoal = scale;
}

void set_curtain_scale(f32 scale) {
    gCurtainScaleGoal = scale;
    gCurtainScale = scale;
}

void set_curtain_draw_callback(UNK_FUN_PTR(callback)) {
    gCurtainDrawCallback = callback;
}

void set_curtain_fade_goal(f32 fade) {
    gCurtainFadeGoal = fade;
}

void set_curtain_fade(f32 fade) {
    gCurtainFadeGoal = fade;
    gCurtainFade = fade;
}
