var player = instance_create_layer(global.player_spawn_x, global.player_spawn_y, "Player", obj_player);

with (player) {
    runling = global.runling_temporary;
    runling_energy = global.runling_temporary[? "Max energy"];
    
    event_perform(ev_alarm, alarm_regen);
}
