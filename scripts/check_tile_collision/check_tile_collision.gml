var obj_x_new = argument0;
var obj_y_new = argument1;
var tilemap = layer_tilemap_get_id(argument2);

var obj_x_old = x;
var obj_y_old = y;

x = obj_x_new;
y = obj_y_new;

var is_colliding = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top)
                   || tilemap_get_at_pixel(tilemap, bbox_right, bbox_top)
                   || tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom)
                   || tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom)
                   || tilemap_get_at_pixel(tilemap, bbox_left, y)
                   || tilemap_get_at_pixel(tilemap, bbox_right, y)
                   || tilemap_get_at_pixel(tilemap, x, bbox_top)
                   || tilemap_get_at_pixel(tilemap, x, bbox_bottom);

x = obj_x_old;
y = obj_y_old;

return is_colliding;
