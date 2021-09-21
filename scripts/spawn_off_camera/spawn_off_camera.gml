/// @function spawn_off_camera(object, number);
/// @param {index} object to be spawn
/// @param {real}  number of objects to spawn
function spawn_off_camera(_object, _number){
	var pad = 64;
	repeat(_number) {
		randomize();
		var xx = choose(
			irandom_range(0, global.cameraX - pad),
			irandom_range(global.cameraX + global.cameraWidth + pad, room_width)
		);
		var yy = choose(
			irandom_range(0, global.cameraY - pad),
			irandom_range(global.cameraY + global.cameraHeight + pad, room_height)
		);
		instance_create_layer(xx, yy, "Instances", _object);
	}
}