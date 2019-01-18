if (check_tile_collision(x, y, "Finish")) {
    if (global.current_round++ == ROUND_COUNT) {
        room_goto(rm_end);
    } else {
        room_restart();
    }
}
