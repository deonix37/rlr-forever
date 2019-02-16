if (global.current_round++ < ROUND_COUNT) {
    global.is_round_transition = true;
        
    instance_deactivate_object(obj_player);
} else {
    room_goto(rm_end);
}
