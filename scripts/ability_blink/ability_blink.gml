player_stop_mouse_movement();

var dest_x = x + find_limited_offset(x, mouse_x, 256);
var dest_y = y + find_limited_offset(y, mouse_y, 256);

for (var i = 0; i < array_length_1d(visited_lane_layers); i++) {
    var visited_lane_layer = visited_lane_layers[i];
    var is_onto_visited = check_tile_collision(dest_x, dest_y, visited_lane_layer);
    
    if (is_onto_visited) {
        if (!check_tile_collision(dest_x, dest_y, "CollisionPlayer")) {
            x = dest_x;
            y = dest_y;
            
            exit;
        }
        
        break;
    }
}

while (distance_to_point(dest_x, dest_y) > 10) {
    var pos_x_new = x + sin(point_direction(x, y, mouse_x, mouse_y));
    var pos_y_new = y + cos(point_direction(x, y, mouse_x, mouse_y));
    
    if (check_tile_collision(pos_x_new, pos_y_new, "CollisionPlayer")) {
        exit;
    }
    
    x = pos_x_new;
    y = pos_y_new;
}
