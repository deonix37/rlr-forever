var drones = [obj_drone_small, obj_drone_big];

var drones_per_line = 8;
var spanwer_spr_size = 16;
var spawner_size_x = spanwer_spr_size * image_xscale;
var spawner_size_y = spanwer_spr_size * image_yscale;
var spawn_offset = sprite_get_width(spr_drone_small);

repeat (drones_per_line) {
    var pos_x = random_range(x + spawn_offset, x + spawner_size_x - spawn_offset);
    var pos_y = random_range(y + spawn_offset, y + spawner_size_y - spawn_offset);
    
    instance_create_layer(pos_x, pos_y, "Drones", drones[irandom(1)]);
    show_debug_message(irandom(1))
}
