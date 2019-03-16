var runlings = global.save_data[? "Runlings"];

for (var i = 0; i < ds_list_size(runlings); i++) {
    var spawn_x = 64 * (i + 1);
    
    var runling = json_decode(runlings[| i]);
    var runling_btn = instance_create_layer(spawn_x, 64, "Instances",
                                            obj_runling_icon_load);
    
    var prototype = global.runling_prototypes[? runling[? "Type"]];
    var prototype_sprites = prototype[? "Sprites"];
    
    runling_btn.runling = runling;
    runling_btn.sprite_index = prototype_sprites[0];
}
