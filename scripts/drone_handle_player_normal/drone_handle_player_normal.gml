with (other) {
    if (place_meeting(x, y, obj_save_zone)) {
        exit;
    }
    
    player_death_handler();
}
