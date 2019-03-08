if (chaser_end_zone != noone) {
    var chaser = instance_create_layer(previous_save_zone.x, previous_save_zone.y,
                                       "Drones", obj_drone_chaser_supremo);
    chaser.target = other;
    
    chaser_end_zone.active_chaser = chaser;
}

if (active_chaser != noone) {
    instance_destroy(active_chaser);
}
