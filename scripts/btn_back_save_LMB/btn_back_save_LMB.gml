if (string_length(global.save_data[? "Nickname"]) == 0) {
    global.save_data[? "Nickname"] = generate_nickname();
}

ds_map_secure_save(global.save_data, SAVE_FILENAME);
room_goto(rm_menu);
