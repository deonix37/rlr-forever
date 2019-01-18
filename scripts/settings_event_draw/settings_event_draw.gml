draw_set_font(fnt_menu);

for (var i = 0; i < array_length_1d(global.settings_names); i++) {
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(label_x, label_y[i], global.settings_names[i]);
    
    if (global.settings_names[i] == "Color") {
        draw_set_color(global.player_colors[? global.save_data[? "Color"]]);
    }
    
    draw_set_halign(fa_center);
    draw_text(option_x, label_y[i], global.save_data[? global.settings_names[i]]);
}
