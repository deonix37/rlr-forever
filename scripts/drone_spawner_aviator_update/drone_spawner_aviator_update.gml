if (spawn_timer == 0) {
    instance_create_layer(x, y, global.drones_layer, obj_drone_aviator_small);
}

spawn_timer = (spawn_timer + 1) % spawn_frequency;
