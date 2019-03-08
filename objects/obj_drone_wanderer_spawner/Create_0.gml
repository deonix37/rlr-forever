var drone_count = 128;

repeat (drone_count) {
    var pos_x = random_range(0, room_width);
    var pos_y = random_range(0, room_height);
    
    instance_create_layer(pos_x, pos_y, global.drones_layer, obj_drone_wanderer_small);
}

instance_destroy();
