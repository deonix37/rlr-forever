var pos_x_new = x + hspeed;
var pos_y_new = y + vspeed;

var is_colliding_x = check_tile_collision(pos_x_new, y, "CollisionDrones");
var is_colliding_y = check_tile_collision(x, pos_y_new, "CollisionDrones");

if (is_colliding_x) {
    hspeed = -hspeed;
}

if (is_colliding_y) {
    vspeed = -vspeed;
}
