var coord1 = argument0;
var coord2 = argument1;
var max_distance = argument2;

var diff = coord2 - coord1;
var offset = min(abs(diff), max_distance) * sign(diff);

return offset;
