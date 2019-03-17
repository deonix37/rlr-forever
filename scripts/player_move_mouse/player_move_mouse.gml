if (is_dead) {
    exit;
}

if (is_autoclicking || mouse_check_button_pressed(mb_left)) {
    is_moving = true;
    mouse_dest_x = mouse_x;
    mouse_dest_y = mouse_y;
    
    move_towards_point(mouse_dest_x, mouse_dest_y, move_speed);
}

if (is_moving) {
    var pos_x_new = x + hspeed;
    var pos_y_new = y + vspeed;
    
    var is_reached = point_distance(x, y, mouse_dest_x, mouse_dest_y) <= speed;
    var is_colliding = check_tile_collision(pos_x_new, pos_y_new, "CollisionPlayer");
    
    if (is_reached || is_colliding) {
        speed = 0;
        is_moving = false;
    }
    
    if (mouse_x > x) {
        sprite_index = sprites[1];
    } else {
        sprite_index = sprites[0];
    }
}
