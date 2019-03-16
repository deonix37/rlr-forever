var arrow_index;

if (keyboard_check_pressed(vk_left)) {
    arrow_index = 0;
} else if (keyboard_check_pressed(vk_right)) {
    arrow_index = 1;
} else {
    exit;
}

var current_arrows = buttons_arrows[? current_button];

if (is_undefined(current_arrows)) {
    exit;
}

var current_arrow = current_arrows[arrow_index];

with (current_arrow) {
    event_perform(ev_mouse, ev_left_press);
}
