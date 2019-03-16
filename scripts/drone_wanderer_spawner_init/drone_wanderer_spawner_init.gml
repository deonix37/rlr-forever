drone_count = 0;
drone_object = obj_drone_wanderer_small;

switch (global.current_difficulty) {
    case DIFFICULTIES.normal:
        switch (global.current_round) {
            case 4:
                drone_count = 128;
                
                break;
            case 8:
            case 9:
                drone_count = 128;
                drone_object = obj_drone_wanderer_big;
                
                break;
        }
        
        break;
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 3:
                drone_count = 128;
                
                break;
            case 5:
                drone_count = 128;
                drone_object = obj_drone_wanderer_big;
                
                break;
            case 8:
                drone_count = 128;
                drone_object = obj_drone_wanderer_big;
                
                break;
        }
        
        break;
}

repeat (drone_count) {
    var pos_x = random_range(0, room_width);
    var pos_y = random_range(0, room_height);
    
    instance_create_layer(pos_x, pos_y, global.drones_layer, drone_object);
}
