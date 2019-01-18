var zoom_direction = argument0;
var zoom_factor = zoom_direction == "in" ? -1 : 1;

var camera_width_new = camera_get_view_width(MAIN_CAMERA) + camera_zoom_x * zoom_factor;
var camera_height_new = camera_get_view_height(MAIN_CAMERA) + camera_zoom_y * zoom_factor;

camera_width_new = clamp(camera_width_new, min_camera_width, max_camera_width);
camera_height_new = clamp(camera_height_new, min_camera_height, max_camera_height);

camera_set_view_size(MAIN_CAMERA, camera_width_new, camera_height_new);
surface_resize(application_surface, camera_width_new, camera_height_new);
