var is_direction_up = keyboard_check(vk_up);
var is_direction_down = keyboard_check(vk_down);
var is_direction_left = keyboard_check(vk_left);
var is_direction_right = keyboard_check(vk_right);

var direction_factor_x = is_direction_right - is_direction_left;
var direction_factor_y = is_direction_down - is_direction_up;
var is_moving = direction_factor_x != 0 || direction_factor_y != 0;

if (is_moving) {
    var player_x_new = x + direction_factor_x * move_speed;
    var player_y_new = y + direction_factor_y * move_speed;
    var is_colliding_x = check_tile_collision(player_x_new, y, "Collision");
    var is_colliding_y = check_tile_collision(x, player_y_new, "Collision");
    
    if (!is_colliding_x) {
        x = player_x_new;
	    
        if (direction_factor_x == 1) {
            sprite_index = spr_zergling_right;
        } else if (direction_factor_x == -1) {
            sprite_index = spr_zergling_left;
        }
    }
    
    if (!is_colliding_y) {
        y = player_y_new;
    }
    
    speed = 0;
}
