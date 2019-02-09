player_level_handler();
instance_destroy(other);
ds_map_secure_save(global.save_data, SAVE_FILENAME);
