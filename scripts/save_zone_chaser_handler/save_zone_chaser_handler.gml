if (chaser_end_zone != noone) {
    var chaser = instance_create_layer(previous_save_zone.x, previous_save_zone.y,
                                       "Drones", obj_drone_chaser_walker);
    chaser.target = other;
    chaser_end_zone.chaser = chaser;
} else if (self.chaser != noone) {
    instance_destroy(self.chaser);
}
