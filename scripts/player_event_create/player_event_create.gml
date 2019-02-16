/*
move_sprite[0, 0] = spr_zergling_left; // up & Left
move_sprite[0, 1] = spr_zergling_left; // left
move_sprite[0, 2] = spr_zergling_left; // down & left
move_sprite[1, 0] = spr_zergling_left; // up
move_sprite[1, 2] = spr_zergling_left; // down
move_sprite[2, 0] = spr_zergling_right; // up & right
move_sprite[2, 1] = spr_zergling_right; // right
move_sprite[2, 2] = spr_zergling_right; // down & right
*/
runling = global.runling_temporary;
runling_energy = runling[? "Max energy"];

is_ability_1_enabled = false;
is_ability_2_enabled = false;

is_moving = false;
is_dead = false;

alarm_death = 0;
alarm_regen = 1;

mouse_dest_x = 0;
mouse_dest_y = 0;
move_speed = 5;
death_timer = 120;

image_speed = 1;
image_blend = global.player_colors[? global.save_data[? "Color"]];
sprite_index = spr_zergling_right;
    
event_perform(ev_alarm, alarm_regen);
