var setting_name = setting_option.setting_name;
var setting_type = global.setting_types[? setting_name];
var setting_value = global.save_data[? setting_name];

switch (setting_type) {
    case SETTING_TYPES.volume_range:
        var rounding = power(10, VOLUME_DECIMAL_PRECISION);
        setting_value += volume_range_increment;
        setting_value = clamp(setting_value, VOLUME_MIN, VOLUME_MAX);
        setting_value = round(setting_value * rounding) / rounding;
        
        break;
    case SETTING_TYPES.list:
        var option_list = global.setting_options[? setting_name];
        var option_count = ds_list_size(option_list);
        var index = ds_list_find_index(option_list, setting_value);
        index += list_increment;
        index = (index % option_count + option_count) % option_count;
        setting_value = option_list[| index];
        
        break;
}

var setting_color = setting_name == "Color"
    ? global.player_colors[? setting_value]
    : setting_option.color;

setting_option.text = setting_value;
setting_option.color = setting_color;

global.save_data[? setting_name] = setting_value;
