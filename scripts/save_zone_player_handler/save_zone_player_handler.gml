if (is_start || ds_list_find_index(reached_players, other.id) != -1) {
    exit;
}

if (is_finish) {
    save_zone_finish_handler();
}

save_zone_chaser_handler();

with (other) {
    player_level_handler();
}

ds_list_add(reached_players, other.id);
ds_map_secure_save(global.save_data, SAVE_FILENAME);
