var drone_base_speed = 30;
var drone_move_frequency = 240;
var drone_count = 0;
var drone_object = obj_drone_crimson_small;

switch (global.current_difficulty) {
    case DIFFICULTIES.normal:
        switch (global.current_round) {
            case 1:
            case 2:
            case 5:
                drone_count = 9;
                
                break;
        }
        
        break;
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 1:
                drone_count = 9;
                
                break;
            case 2:
                drone_count = 5;
                
                break;
        }
        
        break;
}

repeat (drone_count) {
    var pos_x = random_range(x + spawn_offset_x, x + spawner_size_x - spawn_offset_x);
    var pos_y = random_range(y + spawn_offset_y, y + spawner_size_y - spawn_offset_y);
    
    with (instance_create_layer(pos_x, pos_y, global.drones_layer, drone_object)) {
        base_speed = drone_base_speed;
        move_frequency = drone_move_frequency;
        
        event_perform(ev_alarm, alarm_move);
    }
}
