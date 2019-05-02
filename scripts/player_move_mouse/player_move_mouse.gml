if (is_dead) {
    exit;
}

if (mouse_check_button(mb_left)) {
    is_moving_mouse = true;
    mouse_dest_x = mouse_x;
    mouse_dest_y = mouse_y;
}

if (!is_moving_mouse) {
    exit;
}

move_towards_point(mouse_dest_x, mouse_dest_y, move_speed_accel);

var pos_x_new = x + hspeed;
var pos_y_new = y + vspeed;

var is_reached = point_distance(x, y, mouse_dest_x, mouse_dest_y) <= speed;
var is_colliding_x = check_tile_collision(pos_x_new, y, "CollisionPlayer");
var is_colliding_y = check_tile_collision(x, pos_y_new, "CollisionPlayer");

if (is_colliding_x) {
    x -= hspeed;
}

if (is_colliding_y) {
    y -= vspeed;
}

if (is_reached) {
    player_stop_mouse_movement();
}

if (mouse_x > x) {
    sprite_index = sprites[1];
} else {
    sprite_index = sprites[0];
}
