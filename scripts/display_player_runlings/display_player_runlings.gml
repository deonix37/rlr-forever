var runlings = global.save_data[? "Runlings"];
var spawn_x = 0;

for (var i = 0; i < ds_list_size(runlings); i++) {
    var runling = json_decode(runlings[| i]);
    var runling_btn = instance_create_layer(spawn_x, 0, "Instances", obj_runling_option);
    
    runling_btn.runling = runling;
    spawn_x += sprite_get_width(spr_runling_option);
}
