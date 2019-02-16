var collision_layer = layer_get_id("CollisionPlayer");
var collision_tilemap = layer_tilemap_get_id(collision_layer);

var cell_width = tilemap_get_tile_width(collision_tilemap);
var cell_height = tilemap_get_tile_height(collision_tilemap);

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.path_grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

for (var i = 0; i < hcells; i++) {
    for (var j = 0; j < vcells; j++) {
        var cell_x = i * cell_width;
        var cell_y = j * cell_height;
        
        if (tilemap_get_at_pixel(collision_tilemap, cell_x, cell_y)) {
            mp_grid_add_cell(global.path_grid, i, j);
        }
    }
}
