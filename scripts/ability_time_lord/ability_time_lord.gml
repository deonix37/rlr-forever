var is_enable = argument0;

if (is_enable) {
    for (var i = 0; i < instance_number(obj_drone_parent); i++) {
        var drone = instance_find(obj_drone_parent, i);
    
        if (collision_circle(x, y, 256, drone, false, false)) {
            with (drone) {
                x -= hspeed * 0.5;
                y -= vspeed * 0.5;
            }
        }
    }
}
