if (collision_rectangle(rect[0], rect[1], rect[2], rect[3], obj_player, false, true)) {
    if (global.current_round++ < ROUND_COUNT) {
        global.is_round_transition = true;
        
        instance_deactivate_object(obj_player);
    } else {
        room_goto(rm_end);
    }
}
