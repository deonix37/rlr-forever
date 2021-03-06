var player_id = other.id;

if (is_start_zone || ds_list_find_index(reached_players, player_id) != -1) {
    exit;
}

if (is_finish_zone) {
    save_zone_finish_handler();
}

save_zone_chaser_handler();

with (other) {
    player_level_handler();
}

var visited_lane_count = array_length_1d(other.visited_lane_layers);
var next_lane_layer = "Lane" + string(visited_lane_count + 1);

other.visited_lane_layers[visited_lane_count] = next_lane_layer;

ds_list_add(reached_players, other.id);
ds_map_secure_save(global.save_data, SAVE_FILENAME);
