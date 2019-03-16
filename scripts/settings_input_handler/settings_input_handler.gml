var current_option = option_navigation.current_button;
var setting_type = global.settings_types[? current_option.setting_name];

if (setting_type != OPTION_TYPES.input) {
    exit;
}

if (keyboard_lastkey == vk_backspace) {
    current_option.text = string_delete(current_option.text, string_length(current_option.text), 1);
}

if (string_length(current_option.text) >= global.nickname_max_length) {
    exit;
}

if (string_pos(string_lower(keyboard_lastchar), global.nickname_characters) == 0) {
    exit;
}

current_option.text += keyboard_lastchar;

keyboard_lastchar = "";

global.save_data[? current_option.setting_name] = current_option.text;

ds_map_secure_save(global.save_data, SAVE_FILENAME);
