runling = global.runling_temporary;
prototype = global.runling_prototypes[? runling[? "Type"]];
sprites = prototype[? "Sprites"]
energy = runling[? "Max energy"];

speed_modifiers = ds_map_create();

activated_toggleable_abilities = ds_list_create();
activated_continuous_ability = undefined;

is_invulnerable = false;
is_moving = false;
is_dead = false;

alarm_death = 0;
alarm_regen = 1;
alarm_ability_end = 2;

mouse_dest_x = 0;
mouse_dest_y = 0;

base_speed = 5;
move_speed = 5;

death_timer = 120;

outline_color = c_black;

image_speed = 1;
image_blend = global.player_colors[? global.save_data[? "Color"]];
sprite_index = sprites[1];
    
event_perform(ev_alarm, alarm_regen);
