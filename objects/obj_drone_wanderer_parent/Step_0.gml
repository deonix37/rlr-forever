var current_distance = distance_to_point(dest_x, dest_y);

if (round(current_distance) == 0) {
    dest_x = random_range(0, room_width);
    dest_y = random_range(0, room_height);
    vel_increment = random_range(0.01, 0.02);
    total_distance = distance_to_point(dest_x, dest_y);
}

if (current_distance > total_distance / 2) {
    vel += vel_increment;
} else {
    vel -= vel_increment;
}

move_towards_point(dest_x, dest_y, vel);

event_inherited();
