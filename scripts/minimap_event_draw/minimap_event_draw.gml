var camera_height = camera_get_view_height(MAIN_CAMERA);
var scale = view_ratio * camera_height / minimap_spr_size;
var player_x = obj_player.x * scale * minimap_spr_ratio - player_radius / 2;
var player_y = obj_player.y * scale * minimap_spr_ratio - player_radius / 2;

minimap_y = camera_height - scale * minimap_spr_size;

draw_sprite_ext(spr_minimap, 0, minimap_x, minimap_y, scale, scale, 0, c_white, 1);
draw_circle(minimap_x + player_x, minimap_y + player_y, player_radius, false);
