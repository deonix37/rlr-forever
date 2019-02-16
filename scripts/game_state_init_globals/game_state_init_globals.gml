#macro ROUND_COUNT 9
#macro EMPTY_SPRITE_SIZE 16
#macro XP_PER_ROUND global.current_round * 2

global.current_round = 1;
global.is_round_transition = false;

global.drones_layer = "Drones";
global.player_layer = "Player";
