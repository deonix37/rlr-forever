with (instance_create_layer(0, 0, layer, obj_gui_text)) {
    pos_x = argument[0];
    pos_y = argument[1];
    text = argument[2];
    font = argument[3];
    align = argument_count > 4 ? argument[4] : fa_center;
    color = argument_count > 5 ? argument[5] : c_white;
    alpha = argument_count > 6 ? argument[6] : 1;
    
    LMB_script = argument_count > 7 ? argument[7] : undefined;
    RMB_script = argument_count > 8 ? argument[8] : undefined;
    MMB_script = argument_count > 9 ? argument[9] : undefined;
    
    return id;
}
