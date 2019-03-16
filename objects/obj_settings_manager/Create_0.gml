setting_x = 32;
setting_y = [64, 128, 192, 256, 320];

arrow_left_x = 300;
arrow_right_x = 600;

option_x = arrow_left_x + (arrow_right_x - arrow_left_x) / 2 + sprite_get_width(spr_arrow_left) / 2;

option_navigation = instance_create_depth(0, 0, 0, obj_button_navigation);

for (var i = 0; i < array_length_1d(global.settings_names); i++) {
    var setting_name = global.settings_names[i];
    var setting_type = global.settings_types[? setting_name];
    var setting_value = global.save_data[? setting_name];
    
    var setting_color = setting_name == "Color" ? global.player_colors[? setting_value] : c_white;
    var setting_option = create_obj_gui_text(option_x, setting_y[i], setting_value,
                                             fnt_general, setting_color);
    setting_option.setting_name = setting_name;
    
    ds_list_add(option_navigation.buttons, setting_option);
    
    if (setting_type == OPTION_TYPES.input) {
        continue;
    }
    
    var arrow_left = instance_create_layer(arrow_left_x, setting_y[i], "Instances", obj_arrow_left);
    var arrow_right = instance_create_layer(arrow_right_x, setting_y[i], "Instances", obj_arrow_right);
    
    option_navigation.buttons_arrows[? setting_option] = [arrow_left, arrow_right];
    
    arrow_left.setting_option = setting_option;
    arrow_right.setting_option = setting_option;
}

var btn_back = inst_68052AC2;

ds_list_add(option_navigation.buttons, btn_back);
