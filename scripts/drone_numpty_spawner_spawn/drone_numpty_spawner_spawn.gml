var drone_object = argument0;
var drone_count = argument1;

repeat (drone_count) {
    var pos_x = random_range(x + spawn_offset_x, x + spawner_size_x - spawn_offset_x);
    var pos_y = random_range(y + spawn_offset_y, y + spawner_size_y - spawn_offset_y);
    
    with (instance_create_layer(pos_x, pos_y, global.drones_layer, drone_object)) {
        motion_set(random(360), other.drone_move_speed);
    }
}
