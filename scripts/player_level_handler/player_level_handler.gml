var runling = global.save_data[? "Current runling"];
        
runling[? "XP current"] += XP_PER_ROUND;
        
while (runling[? "XP current"] >= runling[? "XP level up"]) {
    runling[? "Level"] += 1;
    runling[? "XP current"] -= runling[? "XP level up"];
    runling[? "XP level up"] += ceil(runling[? "XP level up"] / 10);
}
        
save_current_runling();
