#macro ROUND_COUNT 9
#macro XP_PER_ROUND global.current_round * 2
#macro DELTA delta_time * room_speed / 1000000

global.current_round = 1;
global.is_round_transition = false;
