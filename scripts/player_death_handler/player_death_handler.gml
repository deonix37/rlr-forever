with (other) {
    if (is_dead) {
        exit;
    }
    
    is_dead = true;
    sprite_index = spr_zergling_dead_right;
    alarm[alarm_death] = room_speed * 2;
}
