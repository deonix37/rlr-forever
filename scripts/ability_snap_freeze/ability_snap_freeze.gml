for (var i = 0; i < instance_number(obj_drone_parent); i++) {
    var drone = instance_find(obj_drone_parent, i);
    
    if (collision_circle(x, y, 256, drone, false, false)) {
        with (drone) {
            alarm[alarm_unfreeze] = 180;
        }
    }
}
