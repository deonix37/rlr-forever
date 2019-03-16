#macro ROUND_COUNT 9
#macro DEFAULT_SPRITE_SIZE 16
#macro XP_PER_ROUND global.current_round * 2

enum DIFFICULTIES {normal, hard, insane}

global.current_round = 1;
global.current_difficulty = DIFFICULTIES.hard;

global.drones_layer = "Drones";
global.player_layer = "Player";

global.is_round_transition = false;
