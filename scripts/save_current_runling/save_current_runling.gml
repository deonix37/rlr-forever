var runlings = global.save_data[? "Runlings"];

runlings[| runling[? "Index"]] = json_encode(runling);
