var is_enable = argument0;

if (is_enable) {
    is_invulnerable = true;
    
    image_alpha = abs(sin(current_time / 100));
} else {
    is_invulnerable = false;
    
    image_alpha = 1;
}
