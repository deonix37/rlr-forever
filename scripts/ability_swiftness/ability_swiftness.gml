for (var i = 0; i < instance_number(obj_player); i++) {
    var player = instance_find(obj_player, i);
    
    if (collision_circle(x, y, 256, player, false, false)) {
        with (player) {
            show_message("no ( ͡° ͜ʖ ͡°)");
        }
    }
}
