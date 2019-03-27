runling = global.runling_temporary;
prototype = global.runling_prototypes[? runling[? "Type"]];
color = global.player_colors[? global.save_data[? "Color"]];
sprites = prototype[? "Sprites"]
energy = runling[? "Max energy"];
regen = runling[? "Regen"];

activated_toggleable_abilities = ds_list_create();
activated_continuous_ability = undefined;

is_invulnerable = false;
is_moving_mouse = false;
is_moving_keyboard = false;
is_dead = false;

alarm_death = 0;
alarm_regen = 1;
alarm_ability_end = 2;
alarm_speed_boost_roach_end = 3;
alarm_speed_boost_zergling_end = 4;

mouse_dest_x = 0;
mouse_dest_y = 0;

base_speed = 5;
move_speed = 5;
move_speed_accel = 0;
speed_boost_roach = 0;
speed_boost_zergling = 0;

acceleration = 0;
acceleration_step = 0.05;
acceleration_min = 0;
acceleration_max = 1;

direction_prev = direction;

death_timer = 120;

outline_color = c_black;

visited_lane_layers = ["Lane1"];

image_speed = 1;
image_blend = color;
sprite_index = sprites[1];
    
event_perform(ev_alarm, alarm_regen);
