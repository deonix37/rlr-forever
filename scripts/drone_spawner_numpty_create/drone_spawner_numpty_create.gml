var drones_per_line = 8;
var spanwer_spr_size = 16;
var spawner_size_x = EMPTY_SPRITE_SIZE * image_xscale;
var spawner_size_y = EMPTY_SPRITE_SIZE * image_yscale;
var spawn_offset_x = sprite_get_width(spr_drone_big);
var spawn_offset_y = sprite_get_height(spr_drone_big);

repeat (drones_per_line) {
    var pos_x = random_range(x + spawn_offset_x, x + spawner_size_x - spawn_offset_x);
    var pos_y = random_range(y + spawn_offset_y, y + spawner_size_y - spawn_offset_y);
    
    instance_create_layer(pos_x, pos_y, global.drones_layer, obj_drone_numpty_small);
}
