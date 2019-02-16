#macro SAVE_FILENAME "save.win"

global.save_data = ds_map_secure_load(SAVE_FILENAME);

if (!ds_exists(global.save_data, ds_type_map)) {
    create_new_savefile();
}
