// TODO: remake
if (mouse_check_button_pressed(mb_left)) {
    is_moving = true;
    mouse_dest_x = mouse_x;
    mouse_dest_y = mouse_y;
    
    move_towards_point(mouse_dest_x, mouse_dest_y, move_speed);
}

var is_reached = point_distance(x, y, mouse_dest_x, mouse_dest_y) <= speed;

if (is_moving && is_reached) {
    speed = 0;
    is_moving = false;
}
