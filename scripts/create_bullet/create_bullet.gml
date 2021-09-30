/// @description create_bullet(direction, speed, faction)
// @param {real} Bullet direction
// @param {real} Bullet speed
// @param {enum} Bullet faction
// @param {int}  Gun
function create_bullet(_direction, _speed, _faction, _guns = -1){
	switch (_guns) {
		case powerups.three_bullets:
			var inst_id = instance_create_layer(x, y, "Instances", obj_bullet);
			initialise_bullet(_direction, _speed, _faction, inst_id);
			
		case powerups.two_bullets:
			audio_play_sound(snd_zap, 1, false);
			var gun_offset = 12;
			var inst = instance_create_layer(
				x + lengthdir_x(gun_offset, _direction + 90),
				y + lengthdir_y(gun_offset, _direction + 90), 
				"Instances", obj_bullet);
			initialise_bullet(_direction, _speed, _faction, inst);
			
			var inst = instance_create_layer(
				x + lengthdir_x(gun_offset, _direction - 90),
				y + lengthdir_y(gun_offset, _direction - 90), 
				"Instances", obj_bullet);
			initialise_bullet(_direction, _speed, _faction, inst);
			break;
		
		case powerups.four_bullets:
			audio_play_sound(snd_zap, 1, false);
			var gun_offset = 7, bullet_angle;
			var i = 0; repeat (4) {
				bullet_angle = _direction + (i * 90);
				var inst = instance_create_layer(
					x + lengthdir_x(gun_offset, bullet_angle),
					y + lengthdir_y(gun_offset, bullet_angle), 
					"Instances", obj_bullet);
				initialise_bullet(bullet_angle, _speed, _faction, inst);
				i++;
			}
			break;
			
		case powerups.star_bullets:
			audio_play_sound(snd_zap, 1, false);
			var gun_offset = 7;
			var i = 0; repeat (8) {
				var bullet_angle = _direction + (i * 45);
				var inst = instance_create_layer(
					x + lengthdir_x(gun_offset, bullet_angle),
					y + lengthdir_y(gun_offset, bullet_angle), 
					"Instances", obj_bullet);
				initialise_bullet(bullet_angle, _speed, _faction, inst);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
			audio_play_sound(snd_laser, 1, false);
			var inst_id = instance_create_layer(x, y, "Instances", obj_laser);
			initialise_bullet(_direction, _speed, _faction, inst_id);
			break;
			
		default:
			var inst_id = instance_create_layer(x, y, "Instances", obj_bullet);
			audio_play_sound(snd_zap, 1, false);
			initialise_bullet(_direction, _speed, _faction, inst_id);
			break;
	}
}