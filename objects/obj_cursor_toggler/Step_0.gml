if (window_get_fullscreen()) {
    if (window_mouse_get_x() != mouse_x_prev || window_mouse_get_y() != mouse_y_prev) {
        mouse_x_prev = window_mouse_get_x();
        mouse_y_prev = window_mouse_get_y();
        
        window_set_cursor(cr_default);
    } else if (window_get_cursor() != cr_none) {
        window_set_cursor(cr_none);
    }
} else if (window_get_cursor() != cr_default) {
    window_set_cursor(cr_default);
}
