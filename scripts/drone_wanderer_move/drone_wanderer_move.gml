var current_distance = distance_to_point(dest_x, dest_y);

if (current_distance > total_distance / 2) {
    vel += vel_increment;
} else {
    vel -= vel_increment;
}

move_towards_point(dest_x, dest_y, vel);

if (round(current_distance) == 0) {
    drone_wanderer_randomize();
}
