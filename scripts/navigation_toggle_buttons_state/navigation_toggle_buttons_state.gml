with (obj_gui_text) {
    if (color == obj_button_navigation.color_active) {
        color = obj_button_navigation.color_inactive;
    }
}

if (color == obj_button_navigation.color_inactive) {
    color = obj_button_navigation.color_active;
}
