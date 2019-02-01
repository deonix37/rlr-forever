ds_map_secure_save(global.save_data, SAVE_FILENAME);
camera_set_view_size(MAIN_CAMERA, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
camera_set_view_border(MAIN_CAMERA, global.save_data[? "Camera width"] / 2, global.save_data[? "Camera height"] / 2);
surface_resize(application_surface, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
instance_create_layer(global.player_spawn_x, global.player_spawn_y, "Instances", obj_player);
