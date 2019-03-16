var script = argument0;

draw_set_font(font);

switch (draw_get_halign()) {
    case fa_center:
        var offset_x = string_width(text) / 2;
        
        break;
    case fa_right:
        var offset_x = string_width(text);
        
        break;
}

var x1 = pos_x - offset_x;
var y1 = pos_y;
var x2 = x1 + string_width(text);
var y2 = y1 + string_height(text);

if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
    script_execute(script);
}
