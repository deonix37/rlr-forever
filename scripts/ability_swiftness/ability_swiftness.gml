for (var i = 0; i < instance_number(obj_player); i++) {
    var player = instance_find(obj_player, i);
    
    if (collision_circle(x, y, 256, player, false, false)) {
        with (player) {
            if (alarm[alarm_speed_boost_end] <= 0) {
                speed_boost = base_speed / 2;
                move_speed += speed_boost;
            
                alarm[alarm_speed_boost_end] = 600;
            }
        }
    }
}
