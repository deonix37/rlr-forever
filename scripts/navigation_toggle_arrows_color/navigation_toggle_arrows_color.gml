var arrows = buttons_arrows[? current_button];

for (var i = 0; i < array_length_1d(arrows); i++) {
    if (arrows[i].image_blend != color_active) {
        arrows[i].image_blend = color_active;
    } else {
        arrows[i].image_blend = color_inactive;
    }
}
