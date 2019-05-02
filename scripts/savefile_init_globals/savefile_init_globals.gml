#macro GAME_VERSION "0.8.2"
#macro GAME_VERSION_MAJOR "0"
#macro SAVE_FILENAME "save-v" + GAME_VERSION_MAJOR + ".dat"

global.save_data = ds_map_secure_load(SAVE_FILENAME);
global.is_new_save = !ds_exists(global.save_data, ds_type_map);

if (global.is_new_save) {
    global.save_data = ds_map_create();
    
    init_new_savefile(global.save_data);
    ds_map_secure_save(global.save_data, SAVE_FILENAME);
}
