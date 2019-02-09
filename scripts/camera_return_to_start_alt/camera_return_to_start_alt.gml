/*
if (!global.is_round_transition) {
    exit;
}

var camera_x_old = camera_get_view_x(MAIN_CAMERA);
var camera_y_old = camera_get_view_y(MAIN_CAMERA);
var camera_x_new = lerp(camera_x_old, camera_return_dest_x, 1 / camera_return_frames);
var camera_y_new = lerp(camera_y_old, camera_return_dest_y, 1 / camera_return_frames);
var distance = point_distance(camera_x_new, camera_y_new, camera_return_dest_x, camera_return_dest_y);

camera_return_frames--;

camera_set_view_pos(MAIN_CAMERA, camera_x_new, camera_y_new);
    
if (distance == 0) {
    global.is_round_transition = false;
    
    room_restart();
}
