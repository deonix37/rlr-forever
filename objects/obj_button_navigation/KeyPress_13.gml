with (current_button) {
    if (!is_undefined(LMB_script) && !keyboard_check(vk_alt)) {
        script_execute(LMB_script);
    }
}
