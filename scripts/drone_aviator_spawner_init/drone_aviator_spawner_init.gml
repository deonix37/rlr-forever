spawn_frequency = 5;
drones_per_circle = 30;
drone_move_speed = 4;
spiral_count = 1;
drone_object = obj_drone_aviator_small;
spawn_script = drone_aviator_spawner_spawn_random;

switch (global.current_difficulty) {
    case DIFFICULTIES.normal:
        switch (global.current_round) {
            case 3:
                break;
            case 6:
                drone_move_speed = 6;
                drone_object = obj_drone_aviator_big;
                
                break;
            case 7:
                drone_move_speed = 6;
                spawn_frequency = 20;
                drone_object = obj_drone_aviator_big;
                spawn_script = drone_aviator_spawner_spawn_spiral;
                
                break;
            case 9:
                spiral_count = 2;
                drone_move_speed = 6;
                spawn_frequency = 20;
                drone_object = obj_drone_aviator_big;
                spawn_script = drone_aviator_spawner_spawn_spiral;
                
                break;
            default:
                instance_destroy();
                
                break;
        }
        
        break;
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 2:
            case 3:
                drone_move_speed = 8;
                
                break;
            case 4:
                drone_move_speed = 8;
                spawn_frequency = 240;
                drone_object = obj_drone_aviator_big;
                spawn_script = drone_aviator_spawner_spawn_circle;
                
                break;
            case 9:
                spiral_count = 2;
                drone_move_speed = 8;
                spawn_frequency = 20;
                drone_object = obj_drone_aviator_big;
                spawn_script = drone_aviator_spawner_spawn_spiral;
                
                break;
            default:
                instance_destroy();
                
                break;
        }
        
        break;
    default:
        instance_destroy();
                
        break;
}
