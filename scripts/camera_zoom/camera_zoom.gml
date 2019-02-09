var is_zoom_in = mouse_wheel_up() || keyboard_check(global.key_zoom_in);
var is_zoom_out = mouse_wheel_down() || keyboard_check(global.key_zoom_out);

if (is_zoom_in) {
    var zoom_factor = -1;
} else if (is_zoom_out) {
    var zoom_factor = 1;
}

if (!is_zoom_in && !is_zoom_out) {
    exit;
}

var camera_width_new = camera_get_view_width(MAIN_CAMERA) + camera_zoom_px_x * zoom_factor;
var camera_height_new = camera_get_view_height(MAIN_CAMERA) + camera_zoom_px_y * zoom_factor;

camera_width_new = clamp(camera_width_new, min_camera_width, max_camera_width);
camera_height_new = clamp(camera_height_new, min_camera_height, max_camera_height);

global.save_data[? "Camera width"] = camera_width_new;
global.save_data[? "Camera height"] = camera_height_new;

camera_set_view_size(MAIN_CAMERA, camera_width_new, camera_height_new);
surface_resize(application_surface, camera_width_new, camera_height_new);
