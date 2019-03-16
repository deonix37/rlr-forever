var runlings = global.runling_prototypes;
var spawn_x = 64;

for (var type = ds_map_find_first(global.runling_prototypes); !is_undefined(type);
     type = ds_map_find_next(global.runling_prototypes, type)) {
    var runling_btn = instance_create_layer(spawn_x, 64, "Instances",
                                            obj_runling_icon_new);
    
    var prototype = global.runling_prototypes[? type];
    var prototype_sprites = prototype[? "Sprites"];
    
    runling_btn.runling_type = type;
    runling_btn.sprite_index = prototype_sprites[0];
    
    spawn_x += 64;
}
