var runlings = global.save_data[? "Runlings"];
var runling = ds_map_create();

runling[? "Index"] = ds_list_size(runlings);
runling[? "Type"] = RUNLING_TYPES.zergling;
runling[? "Speed"] = 5;
runling[? "Energy"] = 20;
runling[? "Regen"] = 2;
runling[? "Level"] = 1;
runling[? "XP current"] = 0;
runling[? "XP level up"] = 2;

ds_list_add(runlings, json_encode(runling));

return runling;
