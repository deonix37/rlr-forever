var drone_count = 8;
var spr_size = 16;
var offset = sprite_get_width(spr_drone_small) / 2;

for (var i = 0; i < drone_count; i++) {
    var pos_x = random_range(x + offset, x + spr_size * image_xscale - offset);
    var pos_y = random_range(y + offset, y + spr_size * image_yscale - offset);
    
    instance_create_layer(pos_x, pos_y, "Drones", obj_drone_small);
}
