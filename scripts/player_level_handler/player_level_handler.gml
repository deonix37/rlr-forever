if (runling[? "Level"] >= global.player_max_level) {
    exit;
}

runling[? "XP current"] += XP_PER_ROUND;
        
while (runling[? "XP current"] >= runling[? "XP level up"]
       || runling[? "Level"] == global.player_max_level) {
    runling[? "Level"] += 1;
    runling[? "XP current"] -= runling[? "XP level up"];
    runling[? "XP level up"] += ceil(runling[? "XP level up"] / 10);
    runling[? "Regen"] += 0.2;
}
        
save_current_runling();
