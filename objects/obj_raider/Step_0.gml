event_inherited();

if(!instance_exists(obj_ship)) exit;

if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// Turn to look to the ship
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	// Fire
	bulletCount++;
	if (bulletCount >= 60) {
		create_bullet(image_angle, 4, faction);
		bulletCount = 0;
	}
} else {
	image_angle = lerp(image_angle, direction, 0.1)	
}