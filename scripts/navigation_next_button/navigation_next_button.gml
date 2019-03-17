var increment;

if (keyboard_check_pressed(vk_down)) {
    increment = 1;
} else if (keyboard_check_pressed(vk_up)) {
    increment = -1;
} else {
    exit;
}

navigation_toggle_arrows_color();

var button_count = ds_list_size(buttons);
var next_index = button_index + increment;

button_index = (next_index % button_count + button_count) % button_count;
current_button = buttons[| button_index];

with (current_button) {
    navigation_toggle_buttons_state();
}

navigation_toggle_arrows_color();
