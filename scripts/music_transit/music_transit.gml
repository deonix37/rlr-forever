if (!audio_is_playing(track)) {
    track_index = (track_index + 1) % array_length_1d(tracklist);
    track = tracklist[track_index];

    audio_play_sound(track, 1, false);
}
