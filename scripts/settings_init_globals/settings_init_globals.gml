#macro VOLUME_MIN 0
#macro VOLUME_MAX 1
#macro VOLUME_DECIMAL_PRECISION 1

enum BGM_MODES {classic, new}
enum OPTION_TYPES {input, list, volume_range}

global.options = ds_map_create();
global.options[? "Color"] = ds_list_create();
global.options[? "BGM mode"] = ds_list_create();

ds_list_add(global.options[? "Color"], "Red", "Brown", "Orange", "Yellow",
            "Green", "Blue", "Indigo", "Pink", "Peach", "Dark-Blue",
            "Dark-Puple", "Dark-Green");
ds_list_add(global.options[? "BGM mode"], "Classic", "New");

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
