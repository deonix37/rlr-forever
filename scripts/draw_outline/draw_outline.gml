var color = argument0;
var thickness = 2;

draw_sprite_ext(sprite_index, -thickness, x - thickness, y, image_xscale,
                image_yscale, image_angle, color, image_alpha);
draw_sprite_ext(sprite_index, -thickness, x + thickness, y, image_xscale,
                image_yscale, image_angle, color, image_alpha);
draw_sprite_ext(sprite_index, -thickness, x, y - thickness, image_xscale,
                image_yscale, image_angle, color, image_alpha);
draw_sprite_ext(sprite_index, -thickness, x, y + thickness, image_xscale,
                image_yscale, image_angle, color, image_alpha);
draw_self();
