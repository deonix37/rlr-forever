buttons = ds_list_create();
buttons_arrows = ds_map_create();
button_index = 0;

current_button = undefined;

color_active = make_color_rgb(251, 252, 65);
color_inactive = c_white;

alarm_highlight_first_button = 0;

alarm[alarm_highlight_first_button] = 1;
