if (spawn_timer == 0) {
    var drone = instance_create_layer(x, y, global.drones_layer,
                                      obj_drone_aviator_small);
    
    with (drone) {
        motion_set(random(360), other.drone_move_speed);
    }
}

spawn_timer = (spawn_timer + 1) % spawn_frequency;
