draw_set_font(fnt_menu);

for (var i = 0; i < array_length_1d(global.settings_labels); i++) {
    var setting_label = global.settings_labels[i];
    var setting_value = global.save_data[? setting_label];
    var setting_type = global.settings_types[? setting_label];
    
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(label_x, label_y[i], setting_label);
    
    if (setting_label == "Color") {
        draw_set_color(global.player_colors[? setting_value]);
    }
    
    if (setting_type == OPTION_TYPES.volume_range) {
        setting_value = string_format(setting_value, 0, 1);
    }
    
    draw_set_halign(fa_center);
    draw_text(option_x, label_y[i], setting_value);
}
