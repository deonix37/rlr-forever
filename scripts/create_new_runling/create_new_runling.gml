var type = RUNLING_TYPES.zergling;
var runlings = global.save_data[? "Runlings"];

global.runling_temporary = ds_map_create();
global.runling_temporary[? "Index"] = ds_list_size(runlings);
global.runling_temporary[? "Type"] = type;
global.runling_temporary[? "Level"] = 1;
global.runling_temporary[? "Speed"] = 5;
global.runling_temporary[? "Regen"] = 1;
global.runling_temporary[? "Max energy"] = 20;
global.runling_temporary[? "XP current"] = 0;
global.runling_temporary[? "XP level up"] = 2;

ds_list_add(runlings, json_encode(global.runling_temporary));
