var has_got_this_player = ds_list_find_index(reached_players, other.id) != -1;

if (is_start_zone || has_got_this_player) {
    exit;
}

if (is_finish_zone) {
    save_zone_finish_handler();
}

save_zone_chaser_handler();

with (other) {
    player_level_handler();
}

ds_list_add(reached_players, other.id);
ds_map_secure_save(global.save_data, SAVE_FILENAME);
