if (!instance_exists(obj_player)) {
    exit;
}

var camera_height = camera_get_view_height(MAIN_CAMERA);
var minimap_scale = view_ratio * camera_height / minimap_spr_size;

var player_radius = player_scale * minimap_scale;
var player_x = obj_player.x * minimap_scale * minimap_spr_ratio - player_radius / 2;
var player_y = obj_player.y * minimap_scale * minimap_spr_ratio - player_radius / 2;

var minimap_x = 0;
var minimap_y = camera_height - minimap_scale * minimap_spr_size;

draw_sprite_ext(spr_minimap, 0, minimap_x, minimap_y, minimap_scale, minimap_scale, 0, c_white, 1);
draw_circle(minimap_x + player_x, minimap_y + player_y, player_radius, false);