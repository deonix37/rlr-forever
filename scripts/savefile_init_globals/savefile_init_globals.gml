#macro GAME_VERSION "0.7.1"
#macro SAVE_FILENAME "save-" + GAME_VERSION + ".win"

global.is_new_save = false;
global.save_data = ds_map_secure_load(SAVE_FILENAME);

if (!ds_exists(global.save_data, ds_type_map)) {
    global.is_new_save = true;
    global.save_data = ds_map_create();
    
    init_new_savefile(global.save_data);
    ds_map_secure_save(global.save_data, SAVE_FILENAME);
}
