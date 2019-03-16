if (spawn_timer == 0) {
    with (instance_create_layer(x, y, global.drones_layer, drone_object)) {
        move_script = other.drone_move_script;
        
        motion_set(random(360), other.drone_move_speed);
    }
}

spawn_timer = (spawn_timer + 1) % spawn_frequency;
