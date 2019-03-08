var move_speed = target.base_speed * relative_speed_rate;

mp_grid_path(global.path_grid, path, x, y, target.x, target.y, true);
path_start(path, move_speed, path_action_stop, true);

event_inherited();
