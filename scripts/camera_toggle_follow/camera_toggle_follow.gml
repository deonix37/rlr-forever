if (keyboard_check_pressed(ord("F"))) {
    global.save_data[? "Camera following"] = !global.save_data[? "Camera following"];
    
    if (camera_get_view_target(MAIN_CAMERA) == obj_player) {
        camera_set_view_target(MAIN_CAMERA, noone);
    } else {
        camera_set_view_target(MAIN_CAMERA, obj_player);
    }
}
