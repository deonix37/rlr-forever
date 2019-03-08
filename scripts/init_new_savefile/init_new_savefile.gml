var save_data = argument0;

save_data[? "Version"] = GAME_VERSION;
save_data[? "Nickname"] = generate_nickname();
save_data[? "Color"] = "Red";
save_data[? "BGM mode"] = "Classic";
save_data[? "BGM muted"] = false;
save_data[? "BGM volume"] = 1;
save_data[? "SFX volume"] = 1;
save_data[? "Camera width"] = DEFAULT_CAMERA_WIDTH;
save_data[? "Camera height"] = DEFAULT_CAMERA_HEIGHT;
save_data[? "Camera following"] = true;
    
ds_map_add_list(save_data, "Runlings", ds_list_create());
