enum RUNLING_TYPES {zergling, baneling, hydralisk, ultralisk, roach}

global.player_spawn_x = 416;
global.player_spawn_y = 416;

global.runling_prototypes = ds_map_create();
global.runling_prototypes[? RUNLING_TYPES.zergling] = runling_prototype(
    [spr_zergling_left, spr_zergling_right],
    create_ability(speed_boost, 0),
    create_ability(reflection_shield, 20),
);


