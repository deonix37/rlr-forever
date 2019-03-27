draw_set_font(fnt_general);
draw_set_color(c_white);
draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(global.setting_names); i++) {
    var setting_name = global.setting_names[i];
    var setting_value = global.save_data[? setting_name];
    
    draw_text(setting_x, setting_y[i], setting_name);
}
