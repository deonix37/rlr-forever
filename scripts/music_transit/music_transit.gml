audio_stop_sound(track);

track_index = (track_index + 1) % array_length_1d(tracklist);
track = tracklist[track_index];

audio_play_sound(track, 1, false);

alarm[0] = room_speed * audio_sound_length(track);
