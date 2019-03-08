if (true) {
    var camera_height = camera_get_view_height(MAIN_CAMERA);
    var minimap_scale = view_ratio * camera_height / minimap_spr_size;
    var minimap_x = 0;
    var minimap_y = camera_height - minimap_scale * minimap_spr_size;
    var window_ratio_x = display_get_width() / window_get_width();
    var window_ratio_y = display_get_height() / window_get_height();
    
    with (obj_player) {
        x = (window_mouse_get_x() * window_ratio_x - minimap_x)
            / minimap_scale / other.minimap_spr_ratio;
        y = (window_mouse_get_y() * window_ratio_y - minimap_y)
            / minimap_scale / other.minimap_spr_ratio;
    }
}
