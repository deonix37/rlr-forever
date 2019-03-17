instance_deactivate_layer(layer);
instance_activate_layer("DifficultyButtons");
display_player_runlings();

with (instance_find(obj_button_navigation, 0)) {
    event_perform(ev_cleanup, 0);
    event_perform(ev_create, 0);
    ds_list_add(buttons, inst_464E5E27, inst_8540188);
}
