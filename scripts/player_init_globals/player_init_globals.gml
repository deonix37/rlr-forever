enum RUNLING_TYPES {zergling, baneling, hydralisk, ultralisk, roach}
enum ABILITY_TYPES {oneshot, toggleable, continuous}

global.player_spawn_x = 416;
global.player_spawn_y = 416;

global.runling_prototypes = ds_map_create();
global.runling_prototypes[? RUNLING_TYPES.zergling] = create_runling_prototype(
    [spr_zergling_left, spr_zergling_right],
    create_ability(ability_speed_boost, ABILITY_TYPES.toggleable, 0, 0),
    create_ability(ability_reflection_shield, ABILITY_TYPES.continuous, 20, 300),
);
global.runling_prototypes[? RUNLING_TYPES.baneling] = create_runling_prototype(
    [spr_baneling_left, spr_baneling_right],
    create_ability(ability_blink, ABILITY_TYPES.oneshot, 10, 0),
    create_ability(ability_bullet_save, ABILITY_TYPES.oneshot, 20, 0),
);
global.runling_prototypes[? RUNLING_TYPES.hydralisk] = create_runling_prototype(
    [spr_hydralisk_left, spr_hydralisk_right],
    create_ability(ability_tunnel, ABILITY_TYPES.continuous, 10, 300),
    create_ability(ability_snap_freeze, ABILITY_TYPES.oneshot, 20, 0),
);
global.runling_prototypes[? RUNLING_TYPES.ultralisk] = create_runling_prototype(
    [spr_ultralisk_left, spr_ultralisk_right],
    create_ability(ability_time_lord, ABILITY_TYPES.toggleable, 0, 0),
    create_ability(ability_ultra_freeze, ABILITY_TYPES.oneshot, 20, 0),
);
global.runling_prototypes[? RUNLING_TYPES.roach] = create_runling_prototype(
    [spr_roach_left, spr_roach_right],
    create_ability(ability_swiftness, ABILITY_TYPES.oneshot, 20, 0),
    create_ability(ability_freeze_shot, ABILITY_TYPES.oneshot, 20, 0),
);
