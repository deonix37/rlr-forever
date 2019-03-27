if (global.save_data[? "BGM mode"] == "Classic") {
    tracklist = [mus_i_wish_i_was_james_bond, mus_okii_robo_navigation_system, mus_dota,
                 mus_baller, mus_emperor, mus_infinity, mus_whats_up, mus_fireflies,
                 mus_when_can_i_see_you_again, mus_ecuador, mus_yum_yum];
} else {
    tracklist = [];
}

track = -1;
track_index = -1;

volume_gain = global.save_data[? "BGM muted"] ? 0 : global.save_data[? "BGM volume"];

audio_master_gain(volume_gain);
