var setting_type = global.settings_types[? setting];
var is_right_arrow = id.object_index == obj_arrow_right;

switch (setting_type) {
    case OPTION_TYPES.volume_range:
        var rounding = power(VOLUME_DECIMAL_PRECISION, 10);
        var volume_old = global.save_data[? setting];
        var volume_new = volume_old + volume_range_increment;
        var volume_new_clamped = clamp(volume_new, VOLUME_MIN, VOLUME_MAX);
        var volume_new_rounded = round(volume_new_clamped * rounding) / rounding;
        
        global.save_data[? setting] = volume_new_rounded;
        
        break;
    case OPTION_TYPES.list:
        var option_list = global.options[? setting];
        var option_current = global.save_data[? setting];
        var index_old = ds_list_find_index(option_list, option_current);
        var index_new = index_old + list_increment;
        var index_new_clamped = clamp(index_new, 0, ds_list_size(option_list) - 1);
        var next_option = option_list[| index_new];
        
        global.save_data[? setting] = next_option;
        
        break;
}

ds_map_secure_save(global.save_data, SAVE_FILENAME);
