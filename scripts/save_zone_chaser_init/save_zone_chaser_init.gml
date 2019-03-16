chaser_object = noone;

switch (global.current_difficulty) {
    case DIFFICULTIES.normal:
        switch (global.current_round) {
            case 2:
            case 6:
                chaser_object = obj_drone_chaser_walker;
                
                break;
        }
        
        break;
    case DIFFICULTIES.hard:
        switch (global.current_round) {
            case 1:
            case 2:
            case 3:
            case 8:
                chaser_object = obj_drone_chaser_flyer;
                
                break;
        }
        
        break;
}
