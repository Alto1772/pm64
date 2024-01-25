
#include "common.h"
#include "battle/battle.h"
#include "ld_addrs.h"

#if VERSION_JP // TODO remove once this segment is split
extern Addr battle_partner_goombario_ROM_START;
extern Addr battle_partner_goombario_ROM_END;
extern Addr battle_partner_goombario_VRAM;
extern Addr battle_partner_kooper_ROM_START;
extern Addr battle_partner_kooper_ROM_END;
extern Addr battle_partner_kooper_VRAM;
extern Addr battle_partner_bombette_ROM_START;
extern Addr battle_partner_bombette_ROM_END;
extern Addr battle_partner_bombette_VRAM;
extern Addr battle_partner_parakarry_ROM_START;
extern Addr battle_partner_parakarry_ROM_END;
extern Addr battle_partner_parakarry_VRAM;
extern Addr battle_partner_goompa_ROM_START;
extern Addr battle_partner_goompa_ROM_END;
extern Addr battle_partner_goompa_VRAM;
extern Addr battle_partner_watt_ROM_START;
extern Addr battle_partner_watt_ROM_END;
extern Addr battle_partner_watt_VRAM;
extern Addr battle_partner_sushie_ROM_START;
extern Addr battle_partner_sushie_ROM_END;
extern Addr battle_partner_sushie_VRAM;
extern Addr battle_partner_lakilester_ROM_START;
extern Addr battle_partner_lakilester_ROM_END;
extern Addr battle_partner_lakilester_VRAM;
extern Addr battle_partner_bow_ROM_START;
extern Addr battle_partner_bow_ROM_END;
extern Addr battle_partner_bow_VRAM;
extern Addr battle_partner_twink_ROM_START;
extern Addr battle_partner_twink_ROM_END;
extern Addr battle_partner_twink_VRAM;
#endif

extern ActorBlueprint battle_partner_goombario;
extern ActorBlueprint battle_partner_kooper;
extern ActorBlueprint battle_partner_bombette;
extern ActorBlueprint battle_partner_parakarry;
extern ActorBlueprint battle_partner_goompa;
extern ActorBlueprint battle_partner_watt;
extern ActorBlueprint battle_partner_sushie;
extern ActorBlueprint battle_partner_lakilester;
extern ActorBlueprint battle_partner_bow;
extern ActorBlueprint battle_partner_twink;

#define BATTLE_PARTNER_ENTRY(name, Y) \
    { \
        (u32)battle_partner_##name##_ROM_START, \
        (u32)battle_partner_##name##_ROM_END, \
        battle_partner_##name##_VRAM, \
        &battle_partner_##name, \
        Y \
    }

PartnerDMAData bPartnerDmaTable[] = {
    {},
    BATTLE_PARTNER_ENTRY(goombario, 0),
    BATTLE_PARTNER_ENTRY(kooper, 0),
    BATTLE_PARTNER_ENTRY(bombette, 0),
    BATTLE_PARTNER_ENTRY(parakarry, 30),
    BATTLE_PARTNER_ENTRY(goompa, 0),
    BATTLE_PARTNER_ENTRY(watt, 20),
    BATTLE_PARTNER_ENTRY(sushie, 0),
    BATTLE_PARTNER_ENTRY(lakilester, 10),
    BATTLE_PARTNER_ENTRY(bow, 20),
    {},
    BATTLE_PARTNER_ENTRY(twink, 30),
};
