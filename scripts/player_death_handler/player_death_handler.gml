if (is_dead || is_invulnerable) {
    exit;
}

is_dead = true;
sprite_index = sprites[1];
alarm[alarm_death] = death_timer;

ds_map_secure_save(global.save_data, SAVE_FILENAME);
