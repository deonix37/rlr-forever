draw_set_font(fnt_general);

for (var i = 0; i < array_length_1d(global.settings_names); i++) {
    var setting_name = global.settings_names[i];
    var setting_value = global.save_data[? setting_name];
    var setting_type = global.settings_types[? setting_name];
    
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(setting_x, setting_y[i], setting_name);
}
