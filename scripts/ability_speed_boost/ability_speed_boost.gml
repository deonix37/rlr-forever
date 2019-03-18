var is_enable = argument0;

if (is_enable) {
    if (alarm[alarm_speed_boost_zergling_end] < 0) {
        move_speed += base_speed;
    }
    
    alarm[alarm_speed_boost_zergling_end] = 1;
} else {
    move_speed -= base_speed;
}
