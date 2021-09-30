/// @description initialise_bullet
// @param {real} Bullet direction
// @param {real} Bullet speed
// @param {enum} Bullet faction
function initialise_bullet(_direction, _speed, _faction, _inst_id){
	var _creator = id;
	with (_inst_id) {
		direction = _direction;
		speed = _speed;
		faction = _faction;
		creator = _creator;
		
		if (faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
	}
}