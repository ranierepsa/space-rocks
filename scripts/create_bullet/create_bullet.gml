/// @description create_bullet(direction, speed, faction)
// @param {real} Bullet direction
// @param {real} Bullet speed
// @param {enum} Bullet faction
function create_bullet(_direction, _speed, _faction){
	var _creator = id;
	var inst_id = instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_zap, 1, false);
	with (inst_id) {
		direction = _direction;
		speed = _speed;
		faction = _faction;
		creator = _creator;
		
		if (faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
	}
}