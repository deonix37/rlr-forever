dest_x = random_range(x - move_range, x + move_range);
dest_y = random_range(y - move_range, y + move_range);

move_towards_point(dest_x, dest_y, base_speed);

alarm[alarm_move] = move_frequency;
