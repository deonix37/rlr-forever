var dest_x = x + find_limited_offset(x, mouse_x, 256);
var dest_y = y + find_limited_offset(y, mouse_y, 256);

while (floor(point_distance(x, y, dest_x, dest_y)) > 0) {
    var pos_x_new = lerp(x, dest_x, 0.1);
    var pos_y_new = lerp(y, dest_y, 0.1);
    
    if (!check_tile_collision(pos_x_new, pos_y_new, "CollisionPlayer")) {
        x = pos_x_new;
        y = pos_y_new;
    } else {
        break;
    }
}
