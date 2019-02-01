if (!ds_queue_empty(save_zones_rects)) {
    var rect = ds_queue_head(save_zones_rects);
    var x1 = rect[0], y1 = rect[1], x2 = rect[2], y2 = rect[3];
    
    if (collision_rectangle(x1, y1, x2, y2, obj_player, false, true)) {
        player_level_handler();
        ds_queue_dequeue(save_zones_rects);
        ds_map_secure_save(global.save_data, SAVE_FILENAME);
    }
}
