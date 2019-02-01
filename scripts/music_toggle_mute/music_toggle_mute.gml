if (keyboard_check_pressed(ord("M"))) {
    if (audio_get_master_gain(0) == 0) {
        audio_master_gain(global.save_data[? "BGM volume"]);
    } else {
        audio_master_gain(0);
    }
}
