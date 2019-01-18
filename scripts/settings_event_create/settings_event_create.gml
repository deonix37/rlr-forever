label_x = 32;
label_y = [64, 128, 192, 256, 320];

arrow_left_x = 300;
arrow_right_x = 600;

option_x = arrow_left_x + (arrow_right_x - arrow_left_x) / 2 + sprite_get_width(spr_arrow_left) / 2;

for (var i = 0; i < array_length_1d(global.settings_names); i++) {
    var setting_type = global.settings_types[? global.settings_names[i]];
    
    if (setting_type == OPTION_TYPES.input) continue;
    
    var arrow_left = instance_create_layer(arrow_left_x, label_y[i], "Instances", obj_arrow);
    var arrow_right = instance_create_layer(arrow_right_x, label_y[i], "Instances", obj_arrow);
        
    settings_setup_arrow(arrow_left, ARROW_TYPES.left, global.settings_names[i], spr_arrow_left);
    settings_setup_arrow(arrow_right, ARROW_TYPES.right, global.settings_names[i], spr_arrow_right);
}
