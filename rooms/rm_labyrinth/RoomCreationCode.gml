ds_map_secure_save(global.save_data, SAVE_FILENAME);
camera_set_view_target(MAIN_CAMERA, global.save_data[? "Camera following"] ? obj_player : noone);
camera_set_view_size(MAIN_CAMERA, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
surface_resize(application_surface, global.save_data[? "Camera width"], global.save_data[? "Camera height"]);
instance_create_layer(global.player_spawn_x, global.player_spawn_y, global.player_layer, obj_player);

if (!variable_global_exists("path_grid")) {
    create_path_grid();
}
