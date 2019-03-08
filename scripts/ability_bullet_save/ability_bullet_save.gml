var bullet = instance_create_layer(x, y, "Player", obj_saving_bullet);

with (bullet) {
    image_angle = other.direction;
    
    motion_set(other.direction, 10);
}
