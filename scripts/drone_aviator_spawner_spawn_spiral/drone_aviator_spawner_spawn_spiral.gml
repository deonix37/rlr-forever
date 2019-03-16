var angle_increment = 360 / spiral_count;

if (spawn_timer == 0) {
    drone_move_angle -= (360 / drones_per_circle) % 360;
    
    for (var angle = 0; angle < 360; angle += angle_increment) {
        with (instance_create_layer(x, y, global.drones_layer, drone_object)) {
            motion_set(other.drone_move_angle + angle, other.drone_move_speed);
        }
    }
}

spawn_timer = (spawn_timer + 1) % spawn_frequency;
