var move_speed = target.base_speed * relative_speed_rate;

var throbbing = abs(sin(current_time * throbbing_speed)) * throbbing_range;

var diff_distance = growth_distance - distance_to_object(target);
var is_near = diff_distance > 0;

var scale = base_scale + diff_distance / scale_fraction;
var scale_rounded = round(scale * round_fraction) / round_fraction;
var scale_clamped = clamp(scale_rounded, base_scale, max_scale);
var scale_final = scale_clamped + throbbing;

image_xscale = scale_final;
image_yscale = scale_final;

move_towards_point(target.x, target.y, move_speed);

event_inherited();
