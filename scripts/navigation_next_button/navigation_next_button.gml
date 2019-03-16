var increment;

if (keyboard_check_pressed(vk_down)) {
    increment = 1;
} else if (keyboard_check_pressed(vk_up)) {
    increment = -1;
} else {
    exit;
}

if (current_button.color == color_active) {
    current_button.color = color_inactive;
}

navigation_toggle_arrows_color();

var button_count = ds_list_size(buttons);
var next_index = button_index + increment;

button_index = (next_index % button_count + button_count) % button_count;
current_button = buttons[| button_index];

if (current_button.color == color_inactive) {
    current_button.color = color_active;
}

navigation_toggle_arrows_color();
