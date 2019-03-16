if (chaser_end_zone != noone && chaser_object != noone) {
    var chaser = instance_create_layer(previous_save_zone.x, previous_save_zone.y,
                                       "Drones", chaser_object);
    chaser.target = other;
    
    chaser_end_zone.active_chaser = chaser;
}

if (active_chaser != noone) {
    instance_destroy(active_chaser);
}
