enum BGM_MODES {classic, new}
enum ARROW_TYPES {left, right}
enum OPTION_TYPES {input, list, volume_range}

global.options = ds_map_create();
global.options[? "Color"] = ds_list_create();
global.options[? "BGM mode"] = ds_list_create();
ds_list_add(global.options[? "Color"], "Red", "Brown", "Orange", "Yellow", "Green",
            "Blue", "Indigo", "Pink", "Peach", "Dark-Blue", "Dark-Puple", "Dark-Green");
ds_list_add(global.options[? "BGM mode"], "Classic", "New");

global.player_colors = ds_map_create();
global.player_colors[? "Red"] = make_color_rgb(255, 0, 77);
global.player_colors[? "Brown"] = make_color_rgb(171, 82, 54);
global.player_colors[? "Orange"] = make_color_rgb(255, 163, 0);
global.player_colors[? "Yellow"] = make_color_rgb(255, 236, 39);
global.player_colors[? "Green"] = make_color_rgb(0, 228, 54);
global.player_colors[? "Blue"] = make_color_rgb(41, 173, 255);
global.player_colors[? "Indigo"] = make_color_rgb(131, 118, 156);
global.player_colors[? "Pink"] = make_color_rgb(255, 119, 168);
global.player_colors[? "Peach"] = make_color_rgb(255, 204, 170);
global.player_colors[? "Dark-Blue"] = make_color_rgb(29, 43, 83);
global.player_colors[? "Dark-Puple"] = make_color_rgb(126, 37, 83);
global.player_colors[? "Dark-Green"] = make_color_rgb(0, 135, 81);

global.bgm_modes = ds_map_create();
global.bgm_modes[? "Classic"] = BGM_MODES.classic;
global.bgm_modes[? "New"] = BGM_MODES.new;

global.settings_types = ds_map_create();
global.settings_labels = ["Nickname", "Color", "BGM mode", "BGM volume", "SFX volume"];
global.settings_types[? "Nickname"] = OPTION_TYPES.input;
global.settings_types[? "Color"] = OPTION_TYPES.list;
global.settings_types[? "BGM mode"] = OPTION_TYPES.list;
global.settings_types[? "BGM volume"] = OPTION_TYPES.volume_range;
global.settings_types[? "SFX volume"] = OPTION_TYPES.volume_range;