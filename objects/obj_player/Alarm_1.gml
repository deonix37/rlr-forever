energy = clamp(energy + regen, 0, runling[? "Max energy"]);

alarm[alarm_regen] = game_get_speed(gamespeed_fps);

if (energy == 0) {
    for (var i = 0; i < ds_list_size(activated_toggleable_abilities); i++) {
        script_execute(activated_toggleable_abilities[| i], false);
    }
    
    ds_list_clear(activated_toggleable_abilities);
    
    regen = runling[? "Regen"];
}
