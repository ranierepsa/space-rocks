var len = 500;
var laser_width = 2;

draw_line_width_color(x, y,
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	laser_width, image_blend, image_blend
);
	
var inst = collision_line(x, y,
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	obj_faction, false, false
);
	
if (inst != noone) {
	if (inst.faction != faction) {
		with (inst) {
			if (!immuneToLaser)
				event_perform(ev_other, ev_user1);	
		}
	}
}