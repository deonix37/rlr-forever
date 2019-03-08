if (keyboard_check_pressed(global.key_mute_music)) {
    global.save_data[? "BGM muted"] = !global.save_data[? "BGM muted"];
    
    if (audio_get_master_gain(0) == 0) {
        audio_master_gain(global.save_data[? "BGM volume"]);
    } else {
        audio_master_gain(0);
    }
}
