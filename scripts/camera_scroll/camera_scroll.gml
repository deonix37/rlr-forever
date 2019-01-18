var camera_x = camera_get_view_x(MAIN_CAMERA);
var camera_y = camera_get_view_y(MAIN_CAMERA);
var camera_width = camera_get_view_width(MAIN_CAMERA);
var camera_height = camera_get_view_height(MAIN_CAMERA);

var is_at_border_left = mouse_x < camera_x + camera_move_border;
var is_at_border_right = mouse_x > camera_x + camera_width - camera_move_border;
var is_at_border_up = mouse_y < camera_y + camera_move_border;
var is_at_border_down = mouse_y > camera_y + camera_height - camera_move_border;

var can_move_left = camera_x > camera_move_speed;
var can_move_right = camera_x + camera_width < room_width - camera_move_speed;
var can_move_up = camera_y > camera_move_speed;
var can_move_down = camera_y + camera_height < room_height - camera_move_speed;

var is_direction_left = keyboard_check(ord("A")) || (is_at_border_left && window_get_fullscreen());
var is_direction_right = keyboard_check(ord("D")) || (is_at_border_right && window_get_fullscreen());
var is_direction_up = keyboard_check(ord("W")) || (is_at_border_up && window_get_fullscreen());
var is_direction_down = keyboard_check(ord("S")) || (is_at_border_down && window_get_fullscreen());

var is_moving_left = is_direction_left && can_move_left;
var is_moving_right = is_direction_right && can_move_right;
var is_moving_up = is_direction_up && can_move_up;
var is_moving_down = is_direction_down && can_move_down;

var direction_factor_x = is_moving_right - is_moving_left;
var direction_factor_y = is_moving_down - is_moving_up;
var is_camera_moving = direction_factor_x != 0 || direction_factor_y != 0;

if (is_camera_moving) {
    var camera_x_new = camera_x + direction_factor_x * camera_move_speed;
    var camera_y_new = camera_y + direction_factor_y * camera_move_speed;
    
    camera_set_view_pos(MAIN_CAMERA, camera_x_new, camera_y_new);
}
