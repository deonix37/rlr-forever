var bullet = instance_create_layer(x, y, "Player", obj_freeze_bullet);

with (bullet) {
    image_angle = other.direction;
    
    motion_set(other.direction, 10);
}