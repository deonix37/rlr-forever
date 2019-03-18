var this_button = argument0;

with (obj_gui_text) {
    if (color == obj_button_navigation.color_active) {
        color = obj_button_navigation.color_inactive;
    }
}

if (this_button.color == obj_button_navigation.color_inactive) {
    this_button.color = obj_button_navigation.color_active;
}
