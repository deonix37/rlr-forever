if (spawn_timer == 0) {
    drone_move_angle = 0;
    
    for (var i = 0; i < drones_per_circle; i++) {
        var drone = instance_create_layer(x, y, global.drones_layer,
                                          obj_drone_aviator_big);
        
        with (drone) {
            motion_set(other.drone_move_angle, other.drone_move_speed);
        }
        
        drone_move_angle += 360 / drones_per_circle;
    }
}

spawn_timer = (spawn_timer + 1) % spawn_frequency;
