event_inherited();

var pos_x_new = x + hspeed;
var pos_y_new = y + vspeed;
var distance = floor(distance_to_point(dest_x, dest_y));

if (distance == 0 || check_tile_collision(pos_x_new, pos_y_new, "CollisionDrones")) {
    speed = 0;
}
