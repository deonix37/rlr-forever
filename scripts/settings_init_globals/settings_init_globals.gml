#macro VOLUME_MIN 0
#macro VOLUME_MAX 1
#macro VOLUME_INCREMENT 0.1
#macro VOLUME_DECIMAL_PRECISION 1

enum SETTING_TYPES {input, list, volume_range}

global.setting_options = ds_map_create();
global.setting_options[? "Color"] = ds_list_create();
global.setting_options[? "BGM mode"] = ds_list_create();

ds_list_add(global.setting_options[? "Color"], "Red", "Brown", "Orange", "Yellow", "Green",
            "Blue", "Indigo", "Pink", "Peach", "Dark-Blue", "Dark-Puple", "Dark-Green");
ds_list_add(global.setting_options[? "BGM mode"], "Classic", "New");

global.player_colors = ds_map_create();
global.player_colors[? "Red"] = make_color_rgb(247, 0, 20);
global.player_colors[? "Brown"] = make_color_rgb(106, 36, 6);
global.player_colors[? "Orange"] = make_color_rgb(248, 107, 31);
global.player_colors[? "Yellow"] = make_color_rgb(251, 252, 65);
global.player_colors[? "Green"] = make_color_rgb(117, 253, 102);
global.player_colors[? "Blue"] = make_color_rgb(48, 70, 249);
global.player_colors[? "Indigo"] = make_color_rgb(31, 144, 168);
global.player_colors[? "Pink"] = make_color_rgb(249, 143, 251);
global.player_colors[? "Peach"] = make_color_rgb(250, 216, 173);
global.player_colors[? "Dark-Blue"] = make_color_rgb(18, 71, 166);
global.player_colors[? "Dark-Puple"] = make_color_rgb(107, 33, 166);
global.player_colors[? "Dark-Green"] = make_color_rgb(41, 108, 20);

global.setting_types = ds_map_create();
global.setting_names = ["Nickname", "Color", "BGM mode", "BGM volume", "SFX volume"];
global.setting_types[? "Nickname"] = SETTING_TYPES.input;
global.setting_types[? "Color"] = SETTING_TYPES.list;
global.setting_types[? "BGM mode"] = SETTING_TYPES.list;
global.setting_types[? "BGM volume"] = SETTING_TYPES.volume_range;
global.setting_types[? "SFX volume"] = SETTING_TYPES.volume_range;

global.nickname_characters = "abcdefghijklmnopqrstuvwxyz0123456789_";
global.nickname_max_length = 12;
