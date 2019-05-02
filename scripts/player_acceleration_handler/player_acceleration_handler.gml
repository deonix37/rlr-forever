var step;

if (is_moving_mouse && abs(angle_difference(direction_prev, direction)) > 45) {
    acceleration = 0;
}

if (is_moving_keyboard || is_moving_mouse) {
    step = acceleration_step;
} else {
    step = acceleration_step * -2;
}

acceleration = clamp(acceleration + step, acceleration_min, acceleration_max);
move_speed_accel = move_speed * acceleration;
direction_prev = direction;
