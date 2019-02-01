#macro SAVE_FILENAME "save.win"

global.save_data = ds_map_secure_load(SAVE_FILENAME);

if (!ds_exists(global.save_data, ds_type_map)) {
    global.save_data = ds_map_create();
    global.save_data[? "Nickname"] = generate_nickname();
    global.save_data[? "Color"] = "Red";
    global.save_data[? "BGM mode"] = "Classic";
    global.save_data[? "BGM volume"] = 1;
    global.save_data[? "SFX volume"] = 1;
    global.save_data[? "Camera width"] = 960;
    global.save_data[? "Camera height"] = 540;
    global.save_data[? "Current runling"] = undefined;
    
    ds_map_add_list(global.save_data, "Runlings", ds_list_create());
}