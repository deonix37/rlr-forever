if (current_button.is_instant) {
    if (!(keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down))) {
        exit;
    }
} else if (!keyboard_check_pressed(vk_enter)) {
    exit;
}

with (current_button) {
    if (!is_undefined(LMB_script) && !keyboard_check(vk_alt)) {
        script_execute(LMB_script);
    }
}
