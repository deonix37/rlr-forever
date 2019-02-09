ds_map_secure_save(global.save_data, SAVE_FILENAME);
camera_set_view_size(MAIN_CAMERA, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
surface_resize(application_surface, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
player_init(global.runling_temporary);
