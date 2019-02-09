camera_ratio_x = 16;
camera_ratio_y = 9;

camera_zoom_multiplier = 4;
camera_zoom_px_x = camera_ratio_x * camera_zoom_multiplier;
camera_zoom_px_y = camera_ratio_y * camera_zoom_multiplier;

camera_move_border = 10;
camera_move_speed = 10;

camera_return_speed = 0.1;
camera_return_dest_x = 256;
camera_return_dest_y = 256;

min_camera_width = 640;
min_camera_height = 360;
max_camera_width = 1536;
max_camera_height = 864;

camera_set_view_border(MAIN_CAMERA, max_camera_width / 2, max_camera_height / 2);
