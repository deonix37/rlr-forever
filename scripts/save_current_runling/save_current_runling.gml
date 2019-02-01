var runlings = global.save_data[? "Runlings"];
var runling = global.save_data[? "Current runling"];

runlings[| runling[? "Index"]] = json_encode(runling);
