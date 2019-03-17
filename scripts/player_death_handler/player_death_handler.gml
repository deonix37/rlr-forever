if (is_dead || is_invulnerable) {
    exit;
}

is_dead = true;
is_moving = false;

speed = 0;
sprite_index = sprites[1];
alarm[alarm_death] = death_timer;
