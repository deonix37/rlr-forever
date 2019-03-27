var current_option = option_navigation.current_button;

if (!variable_instance_exists(current_option, "setting_name")
    || is_undefined(current_option.setting_name)) {
    exit;
}

var setting_type = global.setting_types[? current_option.setting_name];

if (setting_type != SETTING_TYPES.input) {
    exit;
}

if (keyboard_lastkey == vk_backspace) {
    current_option.text = string_delete(current_option.text, string_length(current_option.text), 1);
}

var is_in_length_limit = string_length(current_option.text) < global.nickname_max_length;
var is_allowed_char = string_pos(string_lower(keyboard_lastchar), global.nickname_characters) > 0;

if (is_in_length_limit && is_allowed_char) {
    current_option.text += keyboard_lastchar;

    keyboard_lastchar = "";
}

global.save_data[? current_option.setting_name] = current_option.text;
