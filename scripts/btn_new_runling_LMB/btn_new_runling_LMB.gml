instance_deactivate_layer(layer);
instance_activate_layer("DifficultyButtons");
display_runling_prototypes();

with (instance_find(obj_button_navigation, 0)) {
    ds_list_clear(buttons);
    ds_list_add(buttons, inst_464E5E27, inst_8540188);
    
    alarm[alarm_highlight_first_button] = 1;
}
