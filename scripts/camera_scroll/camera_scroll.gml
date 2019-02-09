if (global.is_round_transition) {
    exit;
}

var camera_x = camera_get_view_x(MAIN_CAMERA);
var camera_y = camera_get_view_y(MAIN_CAMERA);
var camera_width = camera_get_view_width(MAIN_CAMERA);
var camera_height = camera_get_view_height(MAIN_CAMERA);

var is_at_border_left = mouse_x < camera_x + camera_move_border;
var is_at_border_right = mouse_x > camera_x + camera_width - camera_move_border;
var is_at_border_up = mouse_y < camera_y + camera_move_border;
var is_at_border_down = mouse_y > camera_y + camera_height - camera_move_border;

var can_scroll_left = camera_x > camera_move_speed;
var can_scroll_right = camera_x + camera_width < room_width - camera_move_speed;
var can_scroll_up = camera_y > camera_move_speed;
var can_scroll_down = camera_y + camera_height < room_height - camera_move_speed;

var is_direction_left = keyboard_check(global.key_camera_left)
                        || (is_at_border_left && window_get_fullscreen());
var is_direction_right = keyboard_check(global.key_camera_right)
                        || (is_at_border_right && window_get_fullscreen());
var is_direction_up = keyboard_check(global.key_camera_up)
                        || (is_at_border_up && window_get_fullscreen());
var is_direction_down = keyboard_check(global.key_camera_down)
                        || (is_at_border_down && window_get_fullscreen());

var is_scrolling_left = is_direction_left && can_scroll_left;
var is_scrolling_right = is_direction_right && can_scroll_right;
var is_scrolling_up = is_direction_up && can_scroll_up;
var is_scrolling_down = is_direction_down && can_scroll_down;

var direction_factor_x = is_scrolling_right - is_scrolling_left;
var direction_factor_y = is_scrolling_down - is_scrolling_up;
var is_camera_scrolling = direction_factor_x != 0 || direction_factor_y != 0;

if (is_camera_scrolling) {
    var camera_x_new = camera_x + direction_factor_x * camera_move_speed;
    var camera_y_new = camera_y + direction_factor_y * camera_move_speed;
    
    camera_set_view_pos(MAIN_CAMERA, camera_x_new, camera_y_new);
}
