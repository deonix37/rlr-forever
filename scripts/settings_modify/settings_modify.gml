var setting_type = global.settings_types[? setting];

switch (setting_type) {
    case OPTION_TYPES.volume_range:
        var increment = type == ARROW_TYPES.right ? 0.1 : -0.1;
        var volume_old = global.save_data[? setting];
        var volume_new = clamp(volume_old + increment, 0, 1);
        var volume_new_formatted = round(volume_new * 10) / 10;
        
        global.save_data[? setting] = volume_new_formatted;
        
        break;
    case OPTION_TYPES.list:
        var increment = type == ARROW_TYPES.right ? 1 : -1;
        var option_list = global.options[? setting];
        var option_current = global.save_data[? setting];
        var index_old = ds_list_find_index(option_list, option_current);
        var index_new = clamp(index_old + increment, 0, ds_list_size(option_list) - 1);
        var next_option = option_list[| index_new];
        
        global.save_data[? setting] = next_option;
        
        break;
}

ds_map_secure_save(global.save_data, SAVE_FILENAME);
