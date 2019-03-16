spiral_count = 1;
spawn_frequency = 240;
drones_per_circle = 30;
drone_angle_increment = 2;
drone_move_speed = 8;
drone_object = obj_drone_persimmon_big;
drone_move_script = drone_persimmon_move_spiral;
spawn_script = drone_persimmon_spawner_spawn_circle;

switch (global.current_difficulty) {
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 6:
                break;
            case 7:
                spawn_frequency = 5;
                drone_move_script = drone_persimmon_move_wave;
                spawn_script = drone_persimmon_spawner_spawn_random;
                
                break;
            case 8:
                spawn_frequency = 5;
                drone_move_script = drone_persimmon_move_wave;
                spawn_script = drone_persimmon_spawner_spawn_spiral;
                
                break;
            case 9:
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
