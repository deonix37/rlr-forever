var sequence_small = undefined;
var sequence_big = undefined;

drones_per_line_small = 0;
drones_per_line_big = 0;
drone_move_speed = 1;

switch (global.current_difficulty) {
    case DIFFICULTIES.normal:
        switch (global.current_round) {
            case 1:
                sequence_small = [9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
                                  8, 8, 8, 8, 8, 8, 5, 5, 0];
                
                break;
            case 2:
                sequence_small = [9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
                                  8, 8, 8, 8, 8, 8, 5, 5, 0];
                drone_move_speed = 2;
                
                break;
            case 5:
                sequence_small = [9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
                                  8, 8, 8, 8, 8, 8, 5, 5, 0];
                sequence_big = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                1, 1, 1, 1, 1, 1, 1, 1, 0];
                drone_move_speed = 2;
                
                break;
            case 7:
                sequence_big = [7, 7, 7, 7, 7, 7, 7, 7, 6, 6,
                                6, 6, 4, 4, 4, 4, 3, 3, 7];
                drone_move_speed = 2;
            case 8:
            case 9:
                sequence_big = [7, 7, 7, 7, 7, 7, 7, 7, 6, 6,
                                6, 6, 4, 4, 4, 4, 3, 3, 5];
                drone_move_speed = 2;
                
                break;
        }
        
        break;
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 1:
                sequence_small = [9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
                                  8, 8, 8, 8, 8, 8, 8, 8, 0];
                drone_move_speed = 2;
                
                break;
            case 2:
                sequence_small = [5, 5, 5, 5, 5, 5, 5, 5, 4, 4,
                                  4, 4, 4, 4, 4, 4, 3, 3, 0];
                drone_move_speed = 2;
                
                break;
            case 4:
                sequence_big = [7, 7, 7, 7, 7, 7, 7, 7, 6, 6,
                                6, 6, 4, 4, 4, 4, 3, 3, 5];
                drone_move_speed = 3;
                
                break;
            case 5:
            case 6:
            case 7:
            case 9:
                sequence_big = [7, 7, 7, 7, 7, 7, 7, 7, 6, 6,
                                6, 6, 4, 4, 4, 4, 3, 3, 7];
                drone_move_speed = 3;
                
                break;
        }
        
        break;
}

var index = ds_list_find_index(spawners, id);

if (!is_undefined(sequence_small)) {
    drones_per_line_small = sequence_small[index];
}

if (!is_undefined(sequence_big)) {
    drones_per_line_big = sequence_big[index];
}

drone_numpty_spawner_spawn(obj_drone_numpty_small, drones_per_line_small);
drone_numpty_spawner_spawn(obj_drone_numpty_big, drones_per_line_big);
